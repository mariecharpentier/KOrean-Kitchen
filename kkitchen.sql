-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 20 sep. 2019 à 09:38
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kkitchen`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `Post_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Content` text NOT NULL,
  `Recipe_Id` int(11) NOT NULL,
  PRIMARY KEY (`Post_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`Post_Id`, `Name`, `Content`, `Recipe_Id`) VALUES
(19, 'Marie', 'I love it !!!', 2),
(23, 'Aude', 'So yummi !!!! But what kind of meat could you recomend instead of Spam ? ', 2),
(24, 'Alicia', 'Amazingly delicious', 4),
(25, 'zdeza', 'dzaedza', 2),
(26, 'Kev', 'With cucumber, it\'s so fresh ', 1),
(27, 'Lolo', 'For a movie night ... wonderful !!', 4),
(28, 'Fa', 'It looks so beautiful', 6),
(29, 'Marie', 'I never tried this before, but it looks too good to be avoided', 5);

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `Recipe_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Ingredients` text NOT NULL,
  `Sauces` text NOT NULL,
  `Images` varchar(50) NOT NULL,
  `Cooking_Img` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Instructions` text NOT NULL,
  PRIMARY KEY (`Recipe_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recipes`
--

INSERT INTO `recipes` (`Recipe_Id`, `Title`, `Description`, `Ingredients`, `Sauces`, `Images`, `Cooking_Img`, `Category`, `Instructions`) VALUES
(1, 'Bibimguksu', 'These Korean Spicy Cold Noodles are typically mixed in a sweet and sour sauce.  It\'s really good when you lose your appetite during Summer. This is my best recipe :) <br>Be careful, it can be really spicy and addictive...', '- 1 Serving of noodles<br>\r\n- Boiled eggs<br>\r\n- Vegetables: <br>\r\nlike Yeolmu-kimchi (young summer radish kimchi).\r\n<br>You can add cucumber too !\r\n<br>\r\n<br>\r\n<br>', '- 1T red pepper powder<br>\r\n- 2T red pepper paste<br>\r\n- 3T sugar<br>\r\n- 2T soy sauce<br>\r\n- 1T wasabi<br>\r\n- 1T minced garlic<br>\r\n- 1T chloride<br>\r\n- 1T 1/2 sesame oil', 'bibimguksu.jpg', 'bibimguksu2.jpg', 'main dishes', 'Cut Yeolmu-kimchi into small pieces.<br>\r\nHard boil an egg. Cut it in half. Set it aside.<br>\r\nAdd about 200grams of noodles into a pot of boiling water and stir then with a spoon to prevent them from sticking together.<br>Close to lid.<br>\r\nWhen it starts boiling, open the lid and stir the noodles.<br>Taste one or more.<br>\r\nWhen the noodles are cooked, rinse them in cold water.<br>'),
(2, 'Spam Potato Jjigae', 'Have you heard of jjigae? <br>\r\nIt\'s very similar to stew. <br>\r\nThis jjigae is good for rainy days.\r\n', '- 3 preparation of potatoes<br>\r\n- 1 green onion<br>\r\n- 1 mushroom<br>\r\n- 1 onion<br>\r\n- 2 spicy pepper<br>\r\n- 1 can of Spam (meat)', '- 1T of soybean paste<br>\r\n- 1T of hot pepper paste<br>\r\n- 2T of chili powder<br>\r\n- 3T soy sauce<br>\r\n- 1/3T of sugar<br>\r\n- 1T of minced garlic<br>\r\n- 2 1/2 cup of water', 'potato-jjigae.jpg', 'potato-jjigae2.jpg', 'main dishes', 'Cut potatoes into small pieces.<br>\r\nAlso, cut onions and mushrooms.<br>\r\nTake the Spam out of the can, blanch it in boiling water once and cut the same size.<br>\r\nPut all into the pot.<br>\r\nEven the seasonings and put it all together. <br>Add some water.<br>\r\nBoil them ! And ready to eat !<br>\r\nServe it with rice.'),
(3, 'The Crab Soup', 'If you are a crab lover, you will love this amazing Korean Crab Soup. You can taste not only the sweet crabs but also the spicy soup, which is perfect during the coldest days of the year...<br>\r\n', '- 600g fresh crab <br>\r\n- 6 shrimps<br>\r\n- 1/2 onion<br>\r\n- 1 red pepper<br>\r\n- 1 green onion <br>\r\n- 1/4 radish<br>\r\n- 1 green pepper<br>\r\n- 1/2 zucchini<br>\r\n- 1,5T red pepper powder', '- 1T soybean paste<br>\r\n- 1T red pepper paste<br>\r\n- 1,5T chopped garlic<br>\r\n- 1T Korean fish sauce<br>\r\n- salt (a pinch)<br>\r\n- 1L water<br>\r\nIf you like them,<br>add a few dried anchovies...<br>\r\nSo tasty!!!\r\n\r\n', 'crab.jpg', 'crab2.jpg', '', 'Take the crabs and the shrimps. <br>Cut the tips off the legs into bite size pieces. <br>Rinse them in cold water and strain.<br>\r\nChop the onion, zucchini, green onion, and mushrooms.<br>\r\nPut the anchovies into boiling water. <br>Add chopped radish, soybean paste. <br>Boil it for 15 minutes over medium heat.<br>Remove the anchovies.<br>\r\nPut the crab and the shrimps for 5 minutes.<br>\r\nAdd onion, zucchini, green onion, peppers. Cover with the lid and wait until the crabs are well cooked.<br>\r\nMix the sauce.<br>\r\nAdd some sauce into the boiling soup.<br>\r\nAdd some mushrooms and red peppers on the top.<br>\r\nRemove it from the heat and serve with rice.'),
(4, 'Crispy Fried Shrimps', 'A very easy and simple Korean Street Food Recipe, so you can enjoy delicious deeply-fried shrimps at home !', '- 30 Small shrimps<br>\r\n- 2 cups of frying flour<br>\r\n- 1 cup of water<br>\r\n- a pinch of salt and pepper<br>\r\n- 1T of cooking wine<br>\r\n- oil', 'Savor the shrimps with your favourite sauces:\r\n<br>- Oyster sauce,\r\n<br>- Mayonnaise,\r\n<br>- Soya sauce,\r\n<br>- Chilli sauce...', 'shrimps.jpg', 'shrimps2.jpg', 'main dishes', 'Remove the shrimp\'s aqueous chamber.<br>\r\nRinse and remove the entrails.<br>\r\nDrain well and put dry with a cotton kitchen towel.<br>\r\nThen, spray the cooking wine and sprinkle salt and pepper on the shrimps.<br>\r\nCoat the shrimps with frying flour.<br>\r\nPut a cup of cold water and a cup of flour into a big bowl. <br>\r\nMix them together.<br>\r\nCoat with the frying pan mixture.<br>\r\nPour some oil into a pan.<br>\r\nFry them whan the oil is 180 degrees.<br>\r\nAnother tip : fry them again 2 or 3 minutes later. It will be even more crispy !\r\n'),
(5, 'Seasoned Eggs', 'Also called \"Mayak eggs\", which means \"drug eggs\"... that\'s a very popular Korean dish. Delicious with some rice...', '- Boiled eggs<br>\r\n- 1 green pepper<br>\r\n- 1 red pepper<br>\r\n- 1 T minced garlic<br>\r\n- 1 green onion<br>\r\n- 1/4 onion<br>\r\n- Sesame', '- 100ml Soy sauce<br>\r\n- 100ml water<br>\r\n- Kelp (seaweed)<br>\r\n- 1T cooking wine<br>\r\n- 10g sugar\r\n\r\n', 'eggs.jpg', 'eggs2.jpg', 'main dishes', 'Boil the eggs for 10 minutes, then let them cool.<br>\r\nChop green pepper, red pepper, green onion and onion into very thin slices.<br>\r\nPour some soy sauce, water, sugar into a glass bowl.<br>\r\nAdd pepper, onion, green onion, sesame seeds, kelp.<br>\r\nRefrigerate for 1 day.'),
(6, 'Shiitake mushrooms stir-fried recipe', 'Today\'s recipe is from my mum. Do not miss it !<br>\r\nShiitake mushrooms is the perfect side dish for pork or beef.', '- Beef<br>\r\n- 1 green pepper<br>\r\n- 1/2 onion<br>\r\n- 1/4 green onion<br>\r\n- Carrots<br>\r\n- 1T sesame oil<br>\r\n- 100g shiitake', '- 1T soy sauce<br>\r\n- 1/2 minced garlic<br>\r\n- 1T sesame oil<br>\r\n- 1T cooking wine<br>\r\n- Salt and pepper<br>\r\n- Sugar<br>\r\n- Sesame seeds\r\n', 'shiitake.jpg', 'shiitake2.jpg', '', 'Remove the stem part (bottom), and slice the mushrooms.<br>\r\nUse chopped meat, or chop it.<br>\r\nCut green onion, pepper and carrots.<br>\r\nFry the meat with 1T of sesame oil.<br>\r\nAt medium heat, add cooking wine, soy sauce and some pepper.<br>\r\nAdd carrots, minced garlic, salt and pepper and mushrooms...<br>\r\ngarnish with sliced pepper and sesame seeds.\r\nThen, taste it ! ');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(150) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`User_Id`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(1, 'a', 'a', 'ab@gmail.com', 'azerty'),
(2, 'z', 'z', 'z', 'z'),
(3, 'Xabi', 'Delgado', 'del@hotmail.com', 'azerty'),
(4, 'b', 'b', 'b@gmail.com', '$2y$11$3775ae96fe46dd24f395bOkHeaSaTpoH9LTDx91fzuS1lACWEB1Nq'),
(5, 'e', 'e', 'e@gmail.com', '$2y$11$1497c2010a2cf2340bb67ugWtWNhpm1oqdtl9LsWP6QX5WSy7zyPy'),
(6, 'h', 'herman', 'h', '$2y$11$e9e23e1d99e3ba922ddacuUlup2rBor7u8tFbMfTyJeUJ6gR/j6U.'),
(7, 't', 't', 't@gmail.com', '$2y$11$c7f822cf76e3144fc2a50ux62wTfSZP2NxWKWPEYOH6AAcQ4kFmXK'),
(8, 'w', 'w', 'w@gmail.com', '$2y$11$2001610ee9c2c51f2315cu0Iaw6qeJ6LRb7.sEIfWeAxbdIid5j3C'),
(9, 'n', 'n', 'n@gmail.com', '$2y$11$6316099a3f7049465e37duNlIh.pbzrFCX1iOIrUiCmvyqPHiek8y'),
(10, 'a', 'a', 'a@a.com', '$2y$11$97477f238df4acad8403auY3iY3zOzQ57vtHd6zmuzM/Is3Xm0oai');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
