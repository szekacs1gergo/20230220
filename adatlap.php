<?php
	$user=mysqli_fetch_array(
		mysqli_query($dab,"
		SELECT * FROM users
		WHERE
		userid='$_SESSION[userid]'
		"));
		$loginok=mysqli_query($dab,"
		SELECT * FROM login
		WHERE
		luserid='$user[userid]'
		ORDER BY ludatum DESC
		LIMIT 0,5
		");
		$utolso5="";
		while($login=mysqli_fetch_array($loginok))
		{
			$utolso5.=$login['ludatum'] . "<br>";
			
		}
		
		
		$pics=mysqli_query($dab,"
		SELECT * FROM kep
		WHERE
		kuserid='$user[userid]'
		ORDER BY udatum DESC
	");
	$gallery="";
	while($pic=mysqli_fetch_array($pics))
	{
		$gallery.="<a href='./upload/$pic[knev]'><img src='./s/$pic[knev]' title='$pic[kstat]'></a>";
	}
	
	
	print"
	<table border=2 align=center>
	<tr><td>Felhasználó neve:$user[usn]			</td></tr>
	<tr><td>Felhasználó e-mail címe:$user[mail]	</td></tr>
	<tr><td>Felhasználó jelszava:$user[upd]		</td></tr>
	<tr><td>Regisztráció dátuma:$user[udatum]	</td></tr>
	<tr><td>Felhasználó státusza:$user[ustatus]	</td></tr>
	<tr><td>Utolsó belépés dátuma:$utolso5		</td></tr>
	</table>
	<input type='button' value='Jelszó módosítása' onclick='location.href=\"?p=jelszomodositas\"'>
	<input type='button' value='Felhasználónév módosítása' onclick='location.href=\"?p=felhmodositas\"'>
	<input type='button' value='E-mail cím módosítása' onclick='location.href=\"?p=emmodositas\"'>
	
	<div id='gallery'>
		$gallery
	</div>
	
	<input type='button' value='Profilkép módosítása' onclick='location.href=\"?p=profmod\"'>
	
	";
?>