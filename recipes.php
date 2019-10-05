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


// var_dump($recipes);

// $recipes = new Recipes();
// $recipes->listAllRecipes();
// var_dump($recipes);
// return ['recipes'  => $recipes];


$template = 'recipes';
include 'layout.phtml';

 ?>
