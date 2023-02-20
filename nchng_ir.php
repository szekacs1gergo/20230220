<?php
session_start();
include("kapcso.php");
	print_r($_POST);

	if(strlen($_POST['usn1'])<4)
		die("<script>alert('Nem elég hosszú a felhasználóneved!')</script>");
	if($_POST['usn1']!=$_POST['usn2'])
		die("<script>alert('Nem egyezik meg a felhasználóneved a megerősítéssel!')</script>");
	
	$users=mysqli_fetch_array( mysqli_query($dab,"
		SELECT * FROM users WHERE  userid='$_SESSION[userid]'
		"));
		if($users['usn']!=$_POST['usn']) 
			die("<script>alert('A régi felhasználóneved nem helyes!')");
		
		mysqli_query($dab,"
		UPDATE users SET usn='$_POST[usn1]' WHERE userid='$_SESSION[userid]'; 
		");
		mysqli_query($dab,"
		INSERT INTO `userarchive` 	(`uaid`, 	`userid`, 			`usn`, 			`mail`, 		`upd`, 			`uip`, 			`udatum`, 			`ustatus`)
		SELECT * FROM users WHERE $user[userid]='$_SESSION[userid]';
		");
		
	print"<script>alert('Sikeres felhasználónév módosítás!')</script>";
	mysqli_close($dab);
?>