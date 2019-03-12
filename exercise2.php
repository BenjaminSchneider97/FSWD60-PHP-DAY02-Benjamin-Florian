<!DOCTYPE html>
<html>
<head>
       <title>PHP form example: POST</title>
</head>
<body>
	<form action="exercise2.php" method="POST">
		Fist Name: <input type="text" name="first_name" />
		Last Name: <input type="text" name="last_name" />
		<input type="submit" name="submit" />
	</form>
	<?php
	/*
	if(isset($_POST['submit']))
	{
	if ($_POST["first_name"] == '' || $_POST["last_name"] == '')
	{
	   echo "Please insert your full name";
	}
	elseif( $_POST["first_name"] || $_POST["last_name"] ) ///or just make else statement deleting ()
	{
	echo "Welcome ". $_POST['first_name']. " " . $_POST['last_name'] . "!";
	}
	}
	*/

	if(isset($_POST['submit']))
	{
	if( $_POST["first_name"] && $_POST["last_name"] )
	{
		echo "Welcome ". $_POST['first_name']. " " . $_POST['last_name'] . "!";
	}
	else
	{
	   echo "Please insert your full name";
	}
	}
	?>
</body>
</html>