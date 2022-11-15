<?php
$servername = "localhost";
$username = "root";
$password = "root";

// Create connection
$connn = new mysqli($servername, $username, $password);

// Check connection
if ($connn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected successfully from connect.php";
}

?>