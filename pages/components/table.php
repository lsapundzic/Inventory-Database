<?php
include_once "../database/connect.php";
?>

<?php

try {
    // Query that I want to be displayed 
    $sql = "SELECT p.pro AS SKU, p.name AS Product, s.quantity AS Quantity, c.type AS Category, su.name AS Supplier, p.width AS Width, p.height AS Height, p.length AS Length, p.weight AS Weight
    FROM product p
             JOIN stock s ON p.productID = s.productID
             JOIN category c ON p.category = c.categoryID
             JOIN supplier su ON p.supplier = su.supplierID;
             ";

    // Establish a connection with the database and execute the search query 
    $result = mysqli_query($conn, $sql);

    // Check if the connection actually returns anything 
    $resultCheck = mysqli_num_rows($result);

    // Test if this works 
    if ($resultCheck > 0) {

        // Display table head
        echo "
            <main>
            <table>
            <caption>Table Displaying The Product Information</caption>
            <thead>
                <tr>
                    <th>PRO</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Supplier</th>
                    <th>Width</th>
                    <th>Height</th>
                    <th>Length</th>
                    <th>Weight</th>
                </tr>
            </thead>
            <tbody> ";

        while ($row = mysqli_fetch_assoc($result)) {
            // echo "<div>{$row['name']}</div>";

            echo "
                <tr>
                    <td>{$row['pro']}</td>
                    <td>{$row['name']}</td>
                    <td>{$row['category']}</td>
                    <td>{$row['supplier']}</td>
                    <td>{$row['width']}</td>
                    <td>{$row['height']}</td>
                    <td>{$row['length']}</td>
                    <td>{$row['width']}</td>
                </tr>  ";

        }

        echo "
            </tbody>
            </table>
            </main> ";
    } else {
        echo "Error: the table is probably empty";
    }

} catch (\Throwable $th) {
    echo "Unable to display database info. Caught exception in table.php";
}


?>