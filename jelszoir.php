<?php
session_start();
include("kapcso.php");
	print_r($_POST);

	if(strlen($_POST['upd1'])<4)
		die("<script>alert('Nem elég hosszú a jelszavad!')</script>");
	if($_POST['upd1']!=$_POST['upd2'])
		die("<script>alert('Nem egyezik meg a jelszavad a megerősítéssel!')</script>");
	
	$users=mysqli_fetch_array( mysqli_query($dab,"
		SELECT * FROM users WHERE  userid='$_SESSION[userid]'
		"));
		if($users['upd']!=$_POST['upd']) 
			die("<script>alert('A Régi jelszavad nem helyes!')");
		
		mysqli_query($dab,"
		UPDATE users SET upd='$_POST[upd1]' WHERE userid='$_SESSION[userid]'; 
		");
		mysqli_query($dab,"
		INSERT INTO `userarchive` 	(`uaid`, 	`userid`, 			`usn`, 			`mail`, 		`upd`, 			`uip`, 			`udatum`, 			`ustatus`)
		SELECT * FROM users WHERE $user[userid]='$_SESSION[userid]';
		");
		
	print"<script>alert('Sikeres jelszó módosítás!')</script>";
	mysqli_close($dab);
?>