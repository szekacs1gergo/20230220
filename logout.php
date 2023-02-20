<?php
session_start();
?>
<form action="regist.php" method="post">
<input type="submit" value="Vissza">
</form>
<?php
			unset($_SESSION['userid']);
			unset($_SESSION['usn']);

print"
<script>
parent.location.href='./'
</script>
";
?>