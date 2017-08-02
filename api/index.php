<?php

require 'Slim/Slim.php';

\Slim\Slim::registerAutoloader();

use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;


$app = new \Slim\Slim();
$body = $app->request->getBody();


//connect to database
function getConnection() {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "api";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    mysqli_select_db($conn, $dbname);
    return $conn;
}

$dbh = getConnection();


// POST route

$app->post(
    '/post-data/:username/:password',
    function ($username, $password) use ($dbh) {
        $query = "SELECT * FROM `users` WHERE `username` LIKE '".$username."' AND `password` LIKE '".$password."'";      
        $result = mysqli_query($dbh, $query);
        $info = mysqli_fetch_assoc($result);
        if($info != NULL) {
            echo "{Successfully logged in}";
        } else {
            echo "{Try again!}";
        }
    }
);

$app->post(
    '/register-data',
    function () use ($app, $dbh) {
        $json = $app->request->getBody();
            
        $result = json_decode($json, true);
        
        $query = "INSERT INTO `users`
        ( `username`, `email`, `password`, `address`, `date_of_birth`, `phone`, `country`, `city`, `firstname`, `lastname`, `gender`, `occupation`) 
    VALUES ('".$result['username']."','".$result['email']."','".$result['password']."','".$result['address']."','".$result['date_of_birth']."','".$result['phone']."','".$result['country']."','".$result['city']."','".$result['firstname']."','".$result['lastname']."','".$result['gender']."','".$result['occupation']."')"; 
        $result1 = mysqli_query($dbh, $query);
     
        if(!$result1) {
         
           echo json_encode( array('error' => true, 'message'=>'Try again!!!!'));
        }else {
            echo json_encode( array('success' => true, 'message'=>'Te-ai inregistrat cu succes !'));
        }
    }
);

$app->post(
    '/login-data',
    function () use ($app, $dbh) {
        $json = $app->request->getBody();
        $result = json_decode($json, true);
        
        $query = "SELECT * FROM `users` WHERE `password`='" .$result['password']."' AND (`username`='".$result['username']."' OR `email`='".$result['username']."')";
        $result = mysqli_query($dbh, $query);
        $userdata = mysqli_fetch_assoc($result);
        if($userdata != NULL) {
            echo json_encode( array('success' => true, 'userdata'=> json_encode($userdata),'message'=>'Successfully logged in'));
        } else {
            echo json_encode( array('error' => true, 'message'=> 'Try again!'));

        }

    }
);

/**
 * Step 4: Run the Slim application
 *
 * This method should be called last. This executes the Slim application
 * and returns the HTTP response to the HTTP client.
 */
$app->run();
