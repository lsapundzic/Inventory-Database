-- 1 POPULATE ADDRESS TABLE

INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (1, 'North Hebei Road', 'Changsha', 'Hunan', 'China');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (2, '32 Block East', 'Tianjin', 'Hexi', 'China');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (3, 'Wall Avenue 77', 'Hong Kong', 'SAR Hong Kong', 'China');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (4, 'Steklarska 1A', 'Rogaska Slatina', null, 'Slovenia');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (5, 'Presernov Trg 9', 'Novo Mesto', null, 'Slovenia');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (6, 'Njegoseva 53', 'Ljubljana', null, 'Slovenia');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (7, 'Nishikata 2771', 'Saitama', null, 'Japan');
INSERT INTO logistics.address (addressID, street, city, province, country) VALUES (8, 'South River Road 551', 'Chongqing', 'Sichuan', 'China');

-- 2 POPULATE CATEGORY TABLE

INSERT INTO logistics.category (categoryID, type, tariff) VALUES (1, 'Microscope', '9011 80 00');
INSERT INTO logistics.category (categoryID, type, tariff) VALUES (2, 'Centrifuge', '8421 29 00');
INSERT INTO logistics.category (categoryID, type, tariff) VALUES (3, 'Balance', '9016 00 40');
INSERT INTO logistics.category (categoryID, type, tariff) VALUES (4, 'Drying Oven', '8419 80 00');
INSERT INTO logistics.category (categoryID, type, tariff) VALUES (5, 'Incubator', '8423 75 71');
INSERT INTO logistics.category (categoryID, type, tariff) VALUES (6, 'Makler Chamber', '9018 90 99');
INSERT INTO logistics.category (categoryID, type, tariff) VALUES (7, 'Pipette', '8479 89 90');

-- 3 POPULATE CONTACT TABLE

INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (1, 'Celine', 'Tan', 'Celine@ch-centrifuge.cn', '+83215577');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (2, 'Steven', 'Chi', 'steven.chi@tianjin.cn', '+83665774');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (3, 'Mark', 'Xuo', 'sales@micro.com', '+83211441');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (4, 'Mirko', 'Ljubovic', 'sales@colo.si', '+3866441');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (5, 'Luka', 'Sapundzic', 'logistics@colo.si', '064247593');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (6, 'David', 'Cvetkov', 'teams@colo.si', '064247582');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (7, 'Ashiyako', 'Yamata', 'sales@nichiryo.jp', '05517443');
INSERT INTO logistics.contact (contactID, name, surname, email, phone) VALUES (8, 'Mike', 'Woo', 'mikew@mscp.cn', '055178275');


-- 4 POPULATE PRODUCT TABLE

INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (1, 'SKU331152', 'MICE8 Centrifuge', 2, 1, 330, 25, 30, 35, 9);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (2, 'SKU331153', 'LACE24 Centrifuge', 2, 1, 330, 45, 50, 65, 22);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (3, 'SKU331154', 'LACE32 Centrifuge', 2, 1, 930, 50, 60, 60, 47);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (4, 'SKU331155', 'LACE16W Centrifuge', 2, 1, 510, 20, 30, 30, 18);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (5, 'SKU331156', 'LACE2T Centrifuge', 2, 1, 2200, 70, 90, 60, 85);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (6, 'SKU331157', 'LACE8X Centrifuge', 2, 1, 1830, 50, 35, 72, 64);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (7, 'SKU2881', 'OPTIC900BL', 1, 5, 660, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (8, 'SKU2882', 'OPTIC900BH', 1, 5, 660, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (9, 'SKU2883', 'OPTIC900TL', 1, 5, 660, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (10, 'SKU2889', 'OPTIC900TH', 1, 5, 660, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (11, 'SKU2884', 'OPTIC600BH', 1, 5, 400, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (12, 'SKU2885', 'OPTIC600BL', 1, 5, 400, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (13, 'SKU2886', 'OPTIC600TL', 1, 5, 400, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (14, 'SKU2887', 'OPTIC600TH', 1, 5, 400, 40, 45, 40, 15);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (15, 'SKU4551', 'DRYSA18', 4, 2, 250, 50, 70, 90, 20);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (16, 'SKU4552', 'DRYSA30', 4, 2, 290, 50, 70, 90, 30);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (17, 'SKU4555', 'DRYSA45', 4, 2, 330, 55, 80, 90, 38);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (18, 'SKU4553', 'DRYSC43', 4, 2, 500, 55, 80, 90, 45);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (19, 'SKU4554', 'DRYSC65', 4, 2, 480, 60, 70, 90, 50);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (20, 'SKU4556', 'DRYSC85', 4, 2, 655, 75, 70, 70, 60);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (21, 'SKU1K31', 'MBIN18', 5, 2, 180, 30, 35, 40, 10);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (24, 'SKU1K32', 'MBIN32', 5, 2, 230, 40, 40, 50, 20);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (25, 'SKU1K33', 'MBIN43', 5, 2, 530, 45, 47, 60, 28);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (26, 'SKU1K34', 'MBIN65', 5, 2, 590, 55, 87, 65, 40);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (27, 'SKU1516', 'SXY-II-A1', 7, 4, 80, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (28, 'SKU1517', 'SXY-II-A2', 7, 4, 80, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (29, 'SKU1518', 'SXY-II-A3', 7, 4, 80, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (30, 'SKU1519', 'SXY-II-A4', 7, 4, 80, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (31, 'SKU1520', 'SXY-II-B1', 7, 4, 110, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (32, 'SKU1521', 'SXY-II-B2', 7, 4, 110, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (33, 'SKU1522', 'SXY-C-A', 7, 4, 130, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (34, 'SKU1523', 'SXY-C-B', 7, 4, 130, 30, 5, 5, 1);
INSERT INTO logistics.product (productID, pro, name, category, supplier, price, width, height, length, weight) VALUES (35, 'SKU1524', 'SXY-C-C', 7, 4, 130, 30, 5, 5, 1);

-- 5 POPULATE STOCK TABLE

INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (1, 1, 25);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (1, 2, 5);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (1, 3, 2);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (2, 1, 10);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (3, 1, 4);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (4, 1, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (4, 2, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (4, 3, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (5, 1, 3);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (7, 1, 8);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (8, 1, 10);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (8, 2, 5);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (8, 3, 5);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (9, 1, 10);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (9, 2, 3);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (10, 1, 4);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (10, 2, 5);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (10, 3, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (11, 1, 11);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (11, 2, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (11, 3, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (12, 1, 2);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (12, 2, 3);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (12, 3, 4);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (13, 1, 5);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (13, 2, 6);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (13, 3, 2);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (15, 1, 5);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (16, 1, 7);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (17, 1, 8);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (18, 1, 10);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (20, 1, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (20, 2, 1);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (31, 1, 20);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (31, 2, 21);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (31, 3, 22);
INSERT INTO logistics.stock (productID, warehouseID, quantity) VALUES (35, 2, 7);

-- 6 POPULATE SUPPLIER TABLE

INSERT INTO logistics.supplier (supplierID, name, contact, address) VALUES (1, 'Changsha Yingtai Centrifuge', 1, 1);
INSERT INTO logistics.supplier (supplierID, name, contact, address) VALUES (2, 'Taisite Industrial Corporation', 2, 2);
INSERT INTO logistics.supplier (supplierID, name, contact, address) VALUES (3, 'HK Fine Electronics and Engineering', 3, 3);
INSERT INTO logistics.supplier (supplierID, name, contact, address) VALUES (4, 'Nichiryo Fine Instruments', 7, 7);
INSERT INTO logistics.supplier (supplierID, name, contact, address) VALUES (5, 'UOP Microscopes', 8, 8);

-- 7 POPULATE WAREHOUSE TABLE

INSERT INTO logistics.warehouse (warehouseID, address) VALUES (1, 4);
INSERT INTO logistics.warehouse (warehouseID, address) VALUES (2, 5);
INSERT INTO logistics.warehouse (warehouseID, address) VALUES (3, 6);
