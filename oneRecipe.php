<?php

session_start();
include 'classes/Database.class.php';
include 'classes/User.class.php';
include 'config.php';

$recipeId = $_GET['id'];

$query = $pdo->prepare
(
	'SELECT Recipe_Id, Title, Ingredients, Sauces, Images, Cooking_Img, Category, Instructions
	FROM recipes
	WHERE Recipe_Id = ?
	'
);

$query->execute([$recipeId]);

$recipeDetails = $query->fetchAll(PDO::FETCH_ASSOC);

/*********************/

$query = $pdo->prepare
(
	'SELECT Recipe_Id, Name, Content, Post_Id
	FROM post
	WHERE Recipe_Id = ?
	'
);

$query->execute([$recipeId]);

$comments = $query->fetchAll(PDO::FETCH_ASSOC);

$template = 'oneRecipe';
include 'layout.phtml';

 ?>
