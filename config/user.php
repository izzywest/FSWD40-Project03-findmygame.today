
<?php 
// INCLUDES
include_once('Database.php');

class USER {
	// DECLARE VARIABLES
	private $connection;

	// CONSTRUCT TO GET DB connectionECTION
	public function __construct($conn){
		$this->connection = $conn;
	}

	// PREPARE STATEMENT FOR QUERY
	public function getQuery($sql){
		$statement = $this->connection->prepare($sql);
		return $statement;
	}

	// GET LAST ADDED ID
	public function getLastID(){
		$statement = $this->connection->lastInsertId();
		return $statement;
	}

	// REGISTER
	public function register($email,$username, $pass, $firstname, $lastname, $age, $address, $city, $region){
		try{
			$pass = password_hash($pass, PASSWORD_DEFAULT);
			// PASSWORD ENCRYPTION
			$statement = $this->connection->prepare('INSERT INTO user(U_Email, U_Username, U_Pass, U_Firstname, U_Lastname, U_Age, U_Address, U_City, U_Region ) VALUES ( :email, :username, :password,  :firstname, :lastname, :age, :address, :city, :region) ');
			// BIND PLACEHOLDERS TO VARIABLES
			$statement->bindparam(':email', $email);
			$statement->bindparam(':username', $username);
			$statement->bindparam(':password', $pass);
			$statement->bindparam(':firstname', $firstname);
			$statement->bindparam(':lastname', $lastname);
			$statement->bindparam(':age', $age);
			$statement->bindparam(':address', $address);
			$statement->bindparam(':city', $city);
			$statement->bindparam(':region', $region);

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
			$statement = $this->connection->prepare('SELECT U_Username, U_Pass FROM `user` WHERE U_Username=:username_id');
			$statement->execute(array(':username_id' => $username));
			$userRow = $statement->fetch(PDO::FETCH_ASSOC);

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
}

?>