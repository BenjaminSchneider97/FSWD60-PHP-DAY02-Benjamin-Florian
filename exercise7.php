<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Record to User Table Form</title>
</head>
<body>
<form action="exercise7.php" method="post">
   <p>
       <label for="name">Name:</label>
       <input type="text" name="name" id="name">
   </p>
   <input type="submit" value="Submit" name="submit">
</form>
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
   echo "Connected successfully";
   if(isset($_POST["submit"])){
   $name = mysqli_real_escape_string($conn, $_POST['name']);
   // attempt insert query execution
   $sql = "INSERT INTO `user` (name) VALUES ('$name')";
   if (mysqli_query($conn, $sql)) {
      echo "<h1>New record created.<h1>";
   } else {
      echo "<h1>Record creation error for: </h1>" . 
            "<p>" . $sql . "</p>" . mysqli_error($conn);
   }
    mysqli_close($conn);
   }
   ?>
</body>
</html>