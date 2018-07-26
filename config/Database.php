<?php 

	class Database {
		private $host = 'localhost';
		private $user = 'cf';
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
				PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
				PDO::ATTR_EMULATE_PREPARES => true
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

		// REGISTER
		public function register($email,$username, $pass, $firstname, $lastname, $age, $address, $city, $region, $role){
			try{
				$pass = password_hash($pass, PASSWORD_DEFAULT);
				// PASSWORD ENCRYPTION
				$statement = $this->dbh->prepare('INSERT INTO `user`(U_Email, U_Username, U_Pass, U_Firstname, U_Lastname, U_Age, U_Address, U_City, U_Region, U_Role ) VALUES ( :email, :username, :password, :firstname, :lastname, :age, :address, :city, :region, :role) ');
				// BIND PLACEHOLDERS TO VARIABLES
				$statement->bindparam(':email', $email, PDO::PARAM_STR);
				$statement->bindparam(':username', $username, PDO::PARAM_STR);
				$statement->bindparam(':password', $pass, PDO::PARAM_STR);
				$statement->bindparam(':firstname', $firstname, PDO::PARAM_STR);
				$statement->bindparam(':lastname', $lastname, PDO::PARAM_STR);
				$statement->bindparam(':age', $age, PDO::PARAM_INT);
				$statement->bindparam(':address', $address, PDO::PARAM_STR);
				$statement->bindparam(':city', $city, PDO::PARAM_STR);
				$statement->bindparam(':region', $region, PDO::PARAM_STR);
				$statement->bindparam(':role', $role, PDO::PARAM_STR);

				$statement->execute();

				return true;

			} catch(PDOException $exception) {

				// ERROR HANDLING
				echo $exception->getMessage();
			}
		}

		// LOGIN
		public function login($username, $pass){
			try {
				$statement = $this->dbh->prepare("SELECT * FROM `user` WHERE U_Username = :username AND U_Pass=:password");
				$statement->bindparam(':username', $username, PDO::PARAM_STR);
				$statement->bindparam(':password', $pass, PDO::PARAM_STR);
				$statement->execute();
				$row = $statement->fetch(PDO::FETCH_ASSOC);

			} catch(PDOException $e) {
				echo $e->getMessage();
			}
		}

		// IS LOGGED IN
		public function isLoggedIn(){
			if(isset($_SESSION['U_Session'])){
				return true;
			}
		}

		// REDIRECT
		public function redirect($url){
			header('Location: '.$url);
		}

		// Logout
		public function logout(){
			session_destroy();
			$_SESSION['U_Session'] = false;
		}

		public function getUserById($id){
			$statement = $this->dbh->prepare("SELECT U_ID FROM `user` WHERE U_ID=:userId");
			$statement->bindparam(':userId', $id, PDO::PARAM_INT);
			$statement->execute();
			$row = $statement->fetch(PDO::FETCH_ASSOC);
		}

		public function getUserRole($userRole){
			$statement = $this->dbh->prepare("SELECT U_Role FROM `user` WHERE u_Role=:userRole");
			$statement->bindparam(':userRole', $userRole, PDO::PARAM_INT);
			$statement->execute();
			$row = $statement->fetch(PDO::FETCH_ASSOC);

			return $row;
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