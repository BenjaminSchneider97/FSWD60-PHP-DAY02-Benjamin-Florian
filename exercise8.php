<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Record to User Table Form</title>
</head>
<body>
 <?php
     $servername = "localhost";
     $username = "root";
     $password = "";
     $dbname = "exercise_4";
   // Create connection
 $conn = mysqli_connect($servername, $username, $password, $dbname);
 if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
 }
 // attempt insert query execution
 $sql = "SELECT user_id, name FROM `user`";
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result)) {
        printf("ID= %s Name= %s <br>",
            $row["user_id"], $row["name"]);
    }
    echo "Fetched data successfully\n";
    // Free result set
    mysqli_free_result($result);
    // Close connection
    mysqli_close($conn);
 ?>
</body>
</html>