<?php

include 'classes/Database.class.php';
include 'classes/User.class.php';

session_start();

if(empty($_POST) == false) {

  $user = new User();

	$user->saveUser($_POST['FirstName'], $_POST['LastName'], $_POST['Email'], $_POST['Password']);

	header('Location: login.php');
  exit();

}



$template = 'register';
include 'layout.phtml';

 ?>
