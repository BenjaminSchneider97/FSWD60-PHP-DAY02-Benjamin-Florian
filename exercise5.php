<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "exercise_4";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
$sql = "CREATE TABLE USER(
		user_id int AUTO_INCREMENT,
		name VARCHAR(55),
		PRIMARY KEY (user_id))";
if (mysqli_query($conn, $sql)) {
   echo "Table successfully created! \n";
} else {
   echo "Error creating table: " . mysqli_error($conn);
}

// your code goes here
mysqli_close($conn);
?>