<?php 
ob_start();
session_start(); 
if(!isset($_SESSION['admin'])){
  header('location:login.php'); 
}
else{
	include_once('../model/database.php');
	include 'include/menu.php';
	include 'include/header.php';
	include 'controller.php';
	// include 'cocau.php';
	/*echo '<div class="container-fluid">
		aaaaaaaaaaaaaaa
	</div>';*/
	include 'include/footer.php';
	
}
 ?>
