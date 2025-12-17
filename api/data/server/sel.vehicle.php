<?php
	header('Content-Type: application/json; charset=utf-8');
    
	include_once 'includes/connection.php';
    include_once 'includes/vehicle.php';
	
	if (isset($_GET['type'])){
		$type = $_GET['type'];
	}
	else{
		$type = 'All';
	}
	
	$vehicle = new Vehicle;
	echo $vehicle->get_vehicle(strtoupper($type));
	

?>