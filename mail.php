<?php

session_start();
include 'classes/Database.class.php';
include 'classes/User.class.php';
include 'config.php';



if (isset($_POST['Message'])) {

  // var_dump($_POST['Email']);
  // var_dump($_POST['Message']);
  // var_dump($_POST['Name']);

// send email
$subject ="Envoi depuis le site";
$message = $_POST['Message'];
$headers = "From:".$_POST['Email'];
$sendingMail = mail('charpmar@hotmail.com',$subject,$message,$headers);


// action after attempt to send

    if ($sendingMail == true){

      header('Location: success.php');
      exit();

    } else {

      header('Location: mail.php');
      exit();
      echo '<p>Ooops! Try it again...</p>';

    }

}






$template = 'mail';
include 'layout.phtml';


 ?>
