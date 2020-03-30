<?php

require_once('bdd.php');
if (isset($_POST['delete']) && isset($_POST['id'])){
	
	
	$id = $_POST['id'];
	
	$sql = "DELETE FROM events WHERE id = $id";
	$query = $bdd->prepare( $sql );
	if ($query == false) {
	 print_r($bdd->errorInfo());
	 die ('Erreur prepare');
	}
	$res = $query->execute();
	if ($res == false) {
	 print_r($query->errorInfo());
	 die ('Erreur execute');
	}
	
}elseif (isset($_POST['title']) && isset($_POST['start']) && isset($_POST['end']) && isset($_POST['sex']) && isset($_POST['name']) && isset($_POST['id'])){
	
	
	$id = $_POST['id'];
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

	$sql = "UPDATE events SET  title = '$title', color = '$color', start = '$start', end = '$end', sex = '$sex', name = '$name' WHERE id = $id ";

	
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
header('Location: index.php');

	
?>
