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

$stockQuery = "SELECT p.pro as SKU, 
                      p.name AS 'Product', 
                      s.quantity AS 'Quantity'
                FROM product p
                JOIN stock s ON p.productID = s.productID
                WHERE s.warehouseID = 3;";

$arrivalsQuery = "SELECT p.name AS Product,
                         p.price AS Price,
                         c.type AS Category,
                         c.tariff AS 'HS Code',
                         s.name AS Supplier
                  FROM product p
                  JOIN category c ON c.categoryID = p.category
                  JOIN supplier s ON p.supplier = s.supplierID
                  WHERE s.name LIKE 'Taisite%';";
?>