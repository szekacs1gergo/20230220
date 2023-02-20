<?php
session_start();
include("kapcso.php");
	print_r($_POST);

	if(strlen($_POST['mail1'])<15)
		die("<script>alert('Nem elég hosszú a e-mail címedet!')</script>");
	if($_POST['mail1']!=$_POST['mail2'])
		die("<script>alert('Nem egyezik meg a e-mail cím a megerősítéssel!')</script>");
	
	$users=mysqli_fetch_array( mysqli_query($dab,"
		SELECT * FROM users WHERE  userid='$_SESSION[userid]'
		"));
		if($users['mail']!=$_POST['mail']) 
			die("<script>alert('A régi e-mail címed nem helyes!')");
		
		mysqli_query($dab,"
		UPDATE users SET mail='$_POST[mail1]' WHERE userid='$_SESSION[userid]'; 
		");
		mysqli_query($dab,"
		INSERT INTO `userarchive` 	(`uaid`, 	`userid`, 			`usn`, 			`mail`, 		`upd`, 			`uip`, 			`udatum`, 			`ustatus`)
		SELECT * FROM users WHERE $user[userid]='$_SESSION[userid]';
		");
		
	print"<script>alert('Sikeresen megváltoztatta az e-mail címét!')</script>";
	mysqli_close($dab);
?>