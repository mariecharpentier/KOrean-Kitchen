<?php

session_start();
include 'classes/Database.class.php';
include 'classes/User.class.php';
include 'config.php';




$query = $pdo->prepare
(
	'SELECT *
  FROM recipes
  '
);

$query->execute();

$recipes = $query->fetchAll(PDO::FETCH_ASSOC);

$template = 'recipes';
include 'layout.phtml';

 ?>
