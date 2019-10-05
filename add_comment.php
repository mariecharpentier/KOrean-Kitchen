<?php

session_start();
include 'classes/Database.class.php';
include 'classes/User.class.php';
include 'config.php';

$recipeId = $_GET['id'];

/**********ENREGISTREMENT DES COMMENTAIRES***********/
$name = $_POST['name'];
$content = $_POST['content'];
$recipeId = $_GET['id'];
// var_dump($recipeId);
// var_dump($_POST);

$query = $pdo->prepare
(
	'INSERT INTO post(Name, Content, Recipe_Id) VALUES (?,?,?)'
);

$query->execute([$name, $content, $recipeId]);

header('Location: oneRecipe.php?id='.$recipeId);
	exit();

$template = 'oneRecipe';
include 'layout.phtml';

?>
