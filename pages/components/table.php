<?php
include_once "../database/connect.php";
?>

<?php

try {
    // Query that I want to be displayed 
    $sql = "SELECT p.pro      AS SKU,
                p.name     AS Product,
                s.quantity AS Quantity,
                c.type     AS Category,
                su.name    AS Supplier,
                p.width    AS Width,
                p.height   AS Height,
                p.length   AS Length,
                p.weight   AS Weight
            FROM product p
                JOIN stock s ON p.productID = s.productID
                JOIN category c ON p.category = c.categoryID
                JOIN supplier su ON p.supplier = su.supplierID;
             ";

    // Establish a connection with the database and execute the search query 
    $result = mysqli_query($conn, $sql);

    // Get the number of rows from the result
    $rowNumbers = mysqli_num_rows($result);

    // Test if this works 
    if ($rowNumbers > 0) {

        // Display table head
        echo "
            <main>
            <table>
            <caption>Table Displaying The Product Information</caption>
            <thead>
                <tr>
                    <th>PRO</th>
                    <th>Product</th>
                    <th>Quantity</th>
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
            echo "
                <tr>
                    <td>{$row['SKU']}</td>
                    <td>{$row['Product']}</td>
                    <td>{$row['Quantity']}</td>
                    <td>{$row['Category']}</td>
                    <td>{$row['Supplier']}</td>
                    <td>{$row['Width']}</td>
                    <td>{$row['Height']}</td>
                    <td>{$row['Length']}</td>
                    <td>{$row['Weight']}</td>
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