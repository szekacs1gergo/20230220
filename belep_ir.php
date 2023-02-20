<?php

session_start();
?>
<?php
	print_r($_POST);
		include("kapcso.php");
		$users=mysqli_query($dab,"
		SELECT * FROM users
		WHERE
		mail='$_POST[mail]' 
		AND
		upd='$_POST[upd]' 
		");
		if(mysqli_num_rows($users)==0)
		die("<script>alert('Hibás felhasználónév vagy jelszó!')</script>");
		
		else
		{
			$user= mysqli_fetch_array($users);
			$_SESSION['userid']=$user['userid'];
			$_SESSION['usn']=$user['usn'];
			mysqli_query("
			INSERT INTO login 	(lid, luserid, ludatum, lip)
			VALUES 				(NULL, '$user[userid]', NOW(), '$_SERVER[REMOTE_ADDR]')
			");
			print"<script>
			parent.location.href='./'
			</script>
			";
		}
		/*mysqli_query($dab,"
		INSERT INTO users (userid, usn, mail, upd, uip, udatum, ustatus)
		VALUES 			  (NULL, '$_POST[usn]', '$_POST[mail]', '$_POST[upd]', '$_SERVER[REMOTE_ADDR]', NOW(), 'A')
		");
	print"<script>alert('Sikeres regisztráció!')</script>";
	*/
	mysqli_close($dab);
?>