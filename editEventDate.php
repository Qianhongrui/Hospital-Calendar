<?php

// Connexion à la base de données
require_once('bdd.php');

if (isset($_POST['Event'][0]) && isset($_POST['Event'][1]) && isset($_POST['Event'][2])){
	
	
	$id = $_POST['Event'][0];
	$start = $_POST['Event'][1];
	$end = $_POST['Event'][2];
	
	if(substr( $start , -5 , -3 )<12)
		$color ="#FF8C00";
	elseif(substr( $start , -5 , -3 )>=12 &&substr( $start , -5 , -3 )<18)
		$color ="#40E0D0";
	elseif(substr( $start , -5 , -3 )>=18 &&substr( $start , -5 , -3 )<=24)
		$color ="#f76bef";

	$sql = "UPDATE events SET  start = '$start', end = '$end', color = '$color' WHERE id = $id ";

	
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Erreur prepare');
	}
	$sth = $query->execute();
	if ($sth == false) {
	 print_r($query->errorInfo());
	 die ('Erreur execute');
	}else{
		die ('OK');
	}

}
//header('Location: index.php');
//header('Location: '.$_SERVER['HTTP_REFERER']);

	
?>
