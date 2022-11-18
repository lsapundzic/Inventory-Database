use logistics;

-- 1 Packing List Overview
select name, width, height, length, weight
from product;

-- 2 Packing List by Product
select name, width, height, length, weight
from product
where name like 'LACE%';

-- 3 Sales Department List by Type
select p.name as Product, p.price as Price, c.type as Category, s.name as Supplier
from product p
         join category c on c.categoryID = p.category
         join supplier s on p.supplier = s.supplierID;

-- 4 Sales info
select p.name as 'Product', s.name as Supplier, p.price as 'Price (EUR)'
from product p
         left join supplier s on p.supplier = s.supplierID;

-- 5 Display stock as-is
select p.name as Product, s.quantity as Quantity
from product p
         join stock s on p.productID = s.productID;

-- 6 Display as-is with location
select p.name as Product, s.quantity as Quantity, a.city as Location
from product p
         join stock s on p.productID = s.productID
         join warehouse w on w.warehouseID = s.warehouseID
         join address a on a.addressID = w.address;

-- 7 Display stock according to the warehouse location
select p.name as 'Product', s.quantity as 'Warehouse 3 Stock'
from product p
         join stock s on p.productID = s.productID
where s.warehouseID = 3;

-- 8 Import Disposition
select p.name as Product, p.price as Price, c.type as Category, c.tariff as 'HS Code', s.name as Supplier
from product p
         join category c on c.categoryID = p.category
         join supplier s on p.supplier = s.supplierID
where s.name like 'Taisite%';

select *
from product;

-- 9 Supplier information
select distinct c2.type      'Product Type',
                s.name    as 'Supplier',
                c.name       'Contact Name',
                c.surname as 'Contact Surname',
                c.email   as Email
from supplier s
         join address a on a.addressID = s.address
         join contact c on c.contactID = s.contact
         join product p on s.supplierID = p.supplier
         join category c2 on p.category = c2.categoryID;

-- Queries for the thesis project 
select p.name as Product, s.quantity as Quantity, c.type as Category, su.name as Supplier, p.width as Width, p.height as Height, p.length as Length, p.weight as Weight
from product p
         join stock s on p.productID = s.productID
         join category c on p.category = c.categoryID
         join supplier su on p.supplier = su.supplierID;
         
         
         
         
-- Reverse engineering
show create table product;
