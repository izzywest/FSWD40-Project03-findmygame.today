<?php 

		// DECLARE VARIABLES
		$host = 'localhost';
		$user = 'root';
		$pass = '';
		$dbname = 'findmygame';
		$error;
		$conn;		

		// SET DSN
		$dsn = 'mysql:host=' . $host . ';dbname=' . $dbname . ';charset=utf8';
		// SET PDO OPTIONS
		$options = array(
			PDO::ATTR_PERSISTENT => true,
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
		);

		// CREATE PDO INSTANCE
		try {
			$conn = new PDO($dsn, $user, $pass, $options);
		} catch(PDOException $e){
			$error = $e->getMessage();
			echo 'The following error occoured: ' . $error;
		}

		include_once('user.php');
		$user = new User($conn);
?>