<h1>Regisztrációs írás</h1>
<?php
	print_r($_POST);
	
	if($_POST['usn']=="")
		die("<script>alert('Nem adtad meg a felhasználónevedet!')</script>");
	if($_POST['mail']=="")
		die("<script>alert('Nem adtad meg az e-mail címed!')</script>");
	if(strlen($_POST['upd'])<4)
		die("<script>alert('Nem elég hosszú a jelszavad!')</script>");
	if($_POST['upd']!=$_POST['upd2'])
		die("<script>alert('Nem egyezik meg a jelszavad a megerősítéssel!')</script>");
		include("kapcso.php");
		mysqli_query($dab,"
		INSERT INTO users (userid, usn, mail, upd, uip, udatum, ustatus)
		VALUES 			  (NULL, '$_POST[usn]', '$_POST[mail]', '$_POST[upd]', '$_SERVER[REMOTE_ADDR]', NOW(), 'A')
		");
	print"<script>alert('Sikeres regisztráció!')</script>";
	mysqli_close($dab);
?>