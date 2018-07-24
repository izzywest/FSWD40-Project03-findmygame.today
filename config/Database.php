<?php 

	class Database {
		private $host = 'localhost';
		private $user = 'root';
		private $pass = '';
		private $dbname = 'findmygame';

		private $dbh;
		private $stmt;
		private $error;

		// CONSTRUCT DATBASE
		public function __construct(){
			// SET DSN
			$dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->dbname . ';charset=utf8';
			// SET PDO OPTIONS
			$options = array(
				PDO::ATTR_PERSISTENT => true,
				PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
			);

			// CREATE PDO INSTANCE
			try {
				$this->dbh = new PDO($dsn, $this->user, $this->pass, $options);
			} catch(PDOException $e){
				$this->error = $e->getMessage();
				echo 'The following error occoured: ' . $this->error;
			}
		}

		// PREPARE STATEMENT FOR QUERY
		public function query($sql){
			$this->stmt = $this->dbh->prepare($sql);
		}

		// BIND VALUES
		public function bind($param, $value, $type = null){
			if(is_null($type)){
				switch(true){
					case is_int($value):
						$type = PDO::PARAM_INT;
						break;
					case is_bool($value):
						$type = PDO::PARAM_BOOL;
						break;
					case is_null($value):
						$type = PDO::PARAM_NULL;
						break;
					default:
						$type = PDO::PARAM_STR;
						break;
				}
			} else {
				echo "It's not possible to bind values";
			}
			$this->stmt->bindValue($param, $value, $type);
		}

		// EXECUTE THE PREPARED STATEMENT
		public function execute(){
			return $this->stmt->execute();
		}

		// GET RESULT SET AS ARRAY OF OBJECT
		public function getResultSet(){
			$this->execute();
			return $this->stmt->fetchall(PDO::FETCH_ASSOC);
		}

		// GET RESULT OF SINGLE OBJECT
		public function getSingle(){
			$this->execute();
			return $this->stmt->fetch(PDO::FETCH_ASSOC);
		}

		// GET ROWCOUNT
		public function getRowCount(){
			return $this->stmt->rowCount();
		}
	}
?>