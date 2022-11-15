<?php

try {
    $user = 'root';
    $password = 'root';
    $db = 'logistics';
    $host = 'localhost';
    $port = 3306;

    $conn = mysqli_init();
    $success = mysqli_real_connect(
        $conn,
        $host,
        $user,
        $password,
        $db,
        $port
    );
} catch (\Throwable $th) {
    echo "Unable to connect to the database. Caught exception in connect.php";
}

?>