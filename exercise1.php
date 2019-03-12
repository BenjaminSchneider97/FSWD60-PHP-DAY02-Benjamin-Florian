<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Exercise 1</title>
</head>
<body>
	
	<?php
	$viewer = getenv( "HTTP_USER_AGENT" );
	$browser = "An unidentified browser";
	if( preg_match( "/MSIE/i", "$viewer" ) )
	{
	$browser = "Internet Explorer";
	}
	else if( preg_match( "/Netscape/i", "$viewer" ) )
	{
	$browser = "Netscape";
	}
	elseif(preg_match('/Chrome/i', "$viewer"))
	{
	$browser = 'Google Chrome';
	?>
	<style>
	<?php include 'chrome.css'; ?>
	</style>
	<?php
	}
	else if( preg_match( "/Mozilla/i", "$viewer" ))
	{
	$browser = "Mozilla";
	?>
	<style>
	<?php include 'mozilla.css'; ?>
	</style>
	<?php
	}
	elseif(preg_match('/Safari/i',"$viewer"))
	{
	$browser = 'Apple Safari';
	}
	$platform = "An unidentified OS!";
	if( preg_match( "/Windows/i", "$viewer" ) )
	{
	$platform = "Windows!";
	}
	else if ( preg_match( "/Linux/i", "$viewer" ) )
	{
	$platform = "Linux!";
	}
	else if ( preg_match( "/Mac/i", "$viewer" ) )
	{
	$platform = "Mac!";
	}
	echo("<p>You are using $browser on $platform</p>");
	?>

</body>
</html>