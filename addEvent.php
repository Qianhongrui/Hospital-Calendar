<?php

// Connexion à la base de données
require_once('bdd.php');
//echo $_POST['title'];
if (isset($_POST['title']) && isset($_POST['start']) && isset($_POST['end']) && isset($_POST['sex']) && isset($_POST['name'])){
	
	$title = $_POST['title'];
	$start = $_POST['start'];
	$end = $_POST['end'];
	$sex = $_POST['sex'];
	$name = $_POST['name'];
	if(substr( $start , -5 , -3 )<12)
		$color ="#FF8C00";
	elseif(substr( $start , -5 , -3 )>=12 &&substr( $start , -5 , -3 )<18)
		$color ="#40E0D0";
	elseif(substr( $start , -5 , -3 )>=18 &&substr( $start , -5 , -3 )<=24)
		$color ="#f76bef";
	
	$sql = "INSERT INTO events(title, start, end, color, sex, name) values ('$title', '$start', '$end', '$color', '$sex', '$name')";
	//$req = $bdd->prepare($sql);
	//$req->execute();
	
	echo $sql;
	
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Erreur prepare');
	}
	$sth = $query->execute();
	if ($sth == false) {
	 print_r($query->errorInfo());
	 die ('Erreur execute');
	}

}
header('Location: '.$_SERVER['HTTP_REFERER']);

	
?>
