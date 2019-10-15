<?php
// enregistrer l'utilisateur, login, création de session


class User extends Database {

  public function saveUser($firstname, $lastname, $email, $password)
  {

    $hashPassword = $this->hashPassword($password);

    $sql = ' INSERT INTO
    users
    (FirstName, LastName, Email, Password)
    VALUES
    (?, ?, ?, ?)';

    $execute = [$firstname, $lastname, $email, $hashPassword];

    $this->executeInSql($sql, $execute);

  }


  public function createSession($mail, $password) {
    $executeVar = [ $mail ];

    $user =  $this->selectOne(
        ' SELECT
            *
          FROM
            users
          WHERE Email = ?',
          $executeVar
      );


    if ($this->verifyPassword($password, $user['Password']) == true && $user != false ) {

      $_SESSION['user']['FirstName'] = $user['FirstName'];
      $_SESSION['user']['LastName'] = $user['LastName'];
      $_SESSION['user']['Email'] = $user['Email'];

        // echo 'Connecté';

        // var_dump($_SESSION);

        header('Location: index.php');
        exit();

    }
  }


  public function logoutSession()
  {
    session_destroy();

    header('Location: index.php');
    exit();

  }

  private function hashPassword($password)
  {
    $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);

    return crypt($password, $salt);
  }


  private function verifyPassword($password, $hashedPassword)
  {
    return crypt($password, $hashedPassword) == $hashedPassword;
  }

}


?>
