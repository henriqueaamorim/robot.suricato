<?php
	header('Content-Type: application/json; charset=utf-8');
    
	include_once 'includes/connection.php';
    include_once 'includes/company.php';
	
	if (isset($_GET['type'])){
		$type = $_GET['type'];
	}
	else{
		$type = 'All';
	}
	
	$company = new Company;
	echo $company->get_company(strtoupper($type));
	

?>