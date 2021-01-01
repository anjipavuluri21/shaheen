<?php 
	
	$servername = "localhost";
	$username   = "root";
	$password	= "";
	$dbname		= "al-shaheen";
	// session_start();


	$conn = mysqli_connect($servername, $username, $password,$dbname);

	if(!$conn){
    	die('connectoion failed:'. mysqli_connect_errno());
		} 
		else{
		//    echo "wecldfsdf";
		}



?>