<?php 
include_once('../model/database.php');
	if(isset($_GET['view'])){
		$view=$_GET['view'];
		switch ($view) {
			case 'themsize':
					 include_once('them.php');	
				break;
			case 'suasize':
					include_once('sua.php');
				break;
		
			case 'xoasize':
					$masize=$_GET['masize'];
					header('location:xuly.php?xoa=1&masize='.$masize);
				break;
			default:
					include_once('them.php');
				break;
		}
	}
	else{
		include_once('them.php');
	}

?>