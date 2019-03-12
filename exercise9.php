<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Exercise 9</title>
</head>
<body>
	<form action="exercise9.php" method="post">
	   <p>
	       <label for="name">Name:</label>
	       <input type="text" name="name" id="name">
	       <input type="submit" name="submit" value="submit">
	   </p>
	</form>
	<?php
	    $servername = "localhost";
	    $username = "root";
	    $password = "";
	    $dbname = "exercise_4";
		$conn = mysqli_connect($servername, $username, $password, $dbname);

		$sql = "SELECT user_id, name FROM `user`";
		   $result = mysqli_query($conn, $sql);
		   while($row = mysqli_fetch_assoc($result)) {
		       printf("ID= %s Name= %s <button><a href='exercise9.php?id=%s'>edit</a></button><br>",
		           $row["user_id"], $row["name"],$row["user_id"]);
		   }
		   mysqli_free_result($result);

		if(isset($_POST["submit"])){
			$name = mysqli_real_escape_string($conn, $_POST['name']);
			$sql = "INSERT INTO `user` (name) VALUES ('$name')";
			if (mysqli_query($conn, $sql)) {
			   echo "<h1>New record created.<h1>";
			} else {
			   echo "<h1>Record creation error for: </h1>" . 
			         "<p>" . $sql . "</p>" . mysqli_error($conn);
			}
		}
		if (isset($_GET["id"])) {
			$id = $_GET["id"];

			$sql = "SELECT * from `user` WHERE user_id = $id";
			$res = mysqli_query($conn, $sql);

			$row = mysqli_fetch_assoc($res);

			echo "firstname :" . $row["name"];
		}
		?>
	<form action="exercise9.php" method="POST">
	   <p>
	       <label for="name">Name:</label>
	       <?php 
	       echo'<input type="text" name="newname" id="name" value="'. $row['name'].'">';
	       echo'<input type="hidden" name="id" id="name" value="'. $row['user_id'].'">';
	       ?>
	       <input type="submit" name="update" value="update">
	   </p>
	</form>
		<?php
		if (isset($_POST["update"])){
			$id= $_POST["id"];
			$name = mysqli_real_escape_string($conn, $_POST['newname']);
			$sql = "UPDATE `user` SET name = '$name' WHERE user_id = $id"; 
			if (mysqli_query($conn, $sql)) {
			   echo "<h1>record updated.<h1>";
			} else {
			   echo "<h1>Update error for: </h1>" . 
			         "<p>" . $sql . "</p>" . mysqli_error($conn);
				}	
		}
	?>
</body>
</html>