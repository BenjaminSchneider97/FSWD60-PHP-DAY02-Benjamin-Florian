<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "exercise_4";
// Create connection
$conn = mysqli_connect($servername, $username, $password);
$sql = "CREATE DATABASE $dbname";
if (mysqli_query($conn, $sql)) {
   echo "Database $dbname created successfully! \n";
} else {
   echo "Error creating database $dbname: " . mysqli_error($conn);
}

// your code goes here
mysqli_close($conn);
?>