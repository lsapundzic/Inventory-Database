<?php
include_once "../database/connect.php";
include_once "../database/queries.php";
?>

<?php

try {

    // Establish a connection with the database and execute the search query 
    // The search query is from the queries.php
    $result = mysqli_query($conn, $stockQuery);

    // Get the number of rows from the result
    $rowNumbers = mysqli_num_rows($result);

    // Test if this works 
    if ($rowNumbers > 0) {
        echo "
            <main>
            <table>
            <caption>Table Displaying The Stock in Warehosue 3</caption>
            <thead>
                <tr>
                    <th>PRO</th>
                    <th>Product</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody> ";

        while ($row = mysqli_fetch_assoc($result)) {
            echo "
                <tr>
                    <td>{$row['SKU']}</td>
                    <td>{$row['Product']}</td>
                    <td>{$row['Quantity']}</td>
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
    echo "Unable to display database info. Caught exception in table-stock.php";
}


?>