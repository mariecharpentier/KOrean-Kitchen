<?php

//config.php
$pdo = new PDO('mysql:host=localhost;dbname=kkitchen', 'root', '');
// $pdo = new PDO('mysql:host=jessicastymarie.mysql.db;dbname=jessicastymarie', 'jessicastymarie', 'Australia2016');

// Paramétrage de la liaison PHP <-> MySQL, les données sont encodées en UTF-8.
$pdo->exec('SET NAMES UTF8');



?>
