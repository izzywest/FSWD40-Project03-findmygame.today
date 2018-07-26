<?php
	include_once('../config/config.php');

    //define vars
	$error  = array();
	$response = array();
	$success = "";
    //validation
    #username
    if(empty($_POST['username'])){
        $error[] = "Name is required";	
    }
    #password
    if(empty($_POST['password'])){
        $error[] = "Password field is required";	
    }
    
    //if there is an error, set response to error and status = false | encode to json
    if(count($error)>0){
        $response['msg']    = $error;
        $response['status'] = false;	
        echo json_encode($response);
        exit;
    }
    //check if combination matches
    $statement = $db_con->prepare("select * from user where U_Username = :username AND U_Pass = :password" );
    //submit to database
    $statement->execute(array(':username' => $_POST['username'],':password' => md5($_POST['password'])));
    //get matching rows
    $row = $statement->fetchAll(PDO::FETCH_ASSOC);
    //when row found set session; redirect to offices.php; set status = true; encode message 
    if(count($row)>0){
        session_start();
        $_SESSION['user_id'] = $row[0]['U_Username'];
        $_SESSION['role'] = $row[0]['U_Role'];

        //if logged in but not admin = redirect
        if($_SESSION['role']=='admin'){
            header('location: ../dashboard');
        }
        //if logged in but not admin = redirect
        if($_SESSION['role']=='user'){
            header('location: ../posts.php');
        }
        $response['status'] = true;	
        echo json_encode($response);
        exit;	
    } 
    //if no row was found encode error msg to json; set status = false
    else{
        $error[] = "Email and password does not match";
        $response['msg'] = $error;
        $response['status'] = false;	
        echo json_encode($response);
        exit;	
    } 
?>