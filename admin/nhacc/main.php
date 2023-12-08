<?php 
	include_once('../model/database.php');
	if(isset($_GET['view'])){
		$view=$_GET['view'];
		switch ($view) {
			case 'themNCC':
					 include_once('them.php');	
				break;
			case 'suaNCC':
					include_once('sua.php');
				break;
		
			case 'xoaNCC':
					$maNCC=$_GET['maNCC'];
					header('location:xuly.php?xoa=1&maNCC='.$maNCC);
				break;
			default:
					include_once('them.php');
				break;
		}
	}
	

?>