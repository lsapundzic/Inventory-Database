<?php
// Code for connecting to the database

// Set up for MAMP
$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "logistics";

// Connection
$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);