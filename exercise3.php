<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Exercise 3</title>
</head>
<body>
	<form action="exercise3.php" method="POST">
		<input type="number" name="first_number" placeholder="First Number">
		<input type="number" name="divisor" placeholder="Divisor">
		<input type="submit" name="submit">
	</form>

	<?php
	if(isset($_POST['submit']))
	{
		$a = $_POST["first_number"];
		$b = $_POST["divisor"];
	if ($a == "" && $b =="")
	{
		echo "Both numbers are missing";
	}
	elseif ($a == "") {
		echo "First Number is missing";
	}
	elseif ($b =="")
	{
		echo "Divisor is missing";
	}
	else
	{ 
	 function divide($a, $b){
		$result = $a/$b;
		echo $a. " divided by ". $b. " is ". $result;
	 }
	 divide($a, $b);
	}
	}
	 ?>
</body>
</html>