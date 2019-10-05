<?php

session_start();
include 'classes/Database.class.php';
include 'classes/User.class.php';



if(empty($_POST) == false ) {
  $user = new User();
  $user->createSession($_POST['Email'], $_POST['Password']);

}




$template = 'login';
include 'layout.phtml';

?>
