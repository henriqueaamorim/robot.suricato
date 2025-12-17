<?php
    include_once 'includes/connection.php';
    include_once 'includes/audit.php';

	
	if (isset($_POST['STATUS']) && isset($_POST['DATE']) && isset($_POST['APP']) && isset($_POST['SUITE']) && isset($_POST['GOAL']) && isset($_POST['USERNAME']) && isset($_POST['LANGUAGE']) && isset($_POST['SERVER']) && isset($_POST['TESTER']) && isset($_POST['BROWSER']) && isset($_POST['MODE'])){

		$status = $_POST['STATUS'];
		$date = $_POST['DATE'];
		$app = $_POST['APP'];
		$suite = $_POST['SUITE'];
		$goal = $_POST['GOAL'];
		$username = $_POST['USERNAME'];
		$language = $_POST['LANGUAGE'];
		$server = $_POST['SERVER'];
		$tester = $_POST['TESTER'];
		$browser = $_POST['BROWSER'];
		$mode = $_POST['MODE'];

		$object = new Audit;
		$object->insert_or_update_audit($status, $date, $app, $suite, $goal, $username, $language, $server, $tester, $browser, $mode);
    }	
?>
