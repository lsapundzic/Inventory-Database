<?php

$productQuery = "SELECT p.pro      AS SKU,
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

$stockQuery = "SELECT p.name AS 'Product', s.quantity AS 'Warehouse 3 Stock'
                FROM product p
                JOIN stock s ON p.productID = s.productID
                WHERE s.warehouseID = 3;";

$arrivalsQuery = "";


?>