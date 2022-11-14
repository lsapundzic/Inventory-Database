<?php
// Code for connecting to the database
$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "logistics";

// Connection
$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);