<?php
// fonction générique vers la bdd

class Database {

	public function selectAll($sql) {
		include 'config.php';

		$query = $pdo->prepare($sql);

		$query->execute();

		$all = $query->fetchAll(PDO::FETCH_ASSOC);

	}

	

	public function selectOne($sql, $execute) {
		include 'config.php';

		$query = $pdo->prepare($sql);

		$query->execute( $execute );

		return $query->fetch(PDO::FETCH_ASSOC);

	}


	public function executeInSql($sql, $execute) {
		include 'config.php';

		$query = $pdo->prepare($sql);

		$query->execute( $execute );

	}


}





?>
