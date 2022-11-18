-- Create a database
CREATE DATABASE logistics;

-- Use this database
USE `logistics`;

-- -----------------------------------------------------
-- Create table address
-- -----------------------------------------------------
CREATE TABLE `address`
(
    `addressID` INT         NOT NULL AUTO_INCREMENT,
    `street`    VARCHAR(70) NULL DEFAULT NULL,
    `city`      VARCHAR(70) NULL DEFAULT NULL,
    `province`  VARCHAR(90) NULL DEFAULT NULL,
    `country`   VARCHAR(90) NULL DEFAULT NULL,
    PRIMARY KEY (`addressID`)
);


-- -----------------------------------------------------
-- Create table category
-- -----------------------------------------------------
CREATE TABLE `category`
(
    `categoryID` INT         NOT NULL AUTO_INCREMENT,
    `type`       VARCHAR(30) NOT NULL,
    `tariff`     VARCHAR(12) NULL DEFAULT NULL,
    PRIMARY KEY (`categoryID`)
);


-- -----------------------------------------------------
-- Create table contact
-- -----------------------------------------------------
CREATE TABLE `contact`
(
    `contactID` INT         NOT NULL AUTO_INCREMENT,
    `name`      VARCHAR(46) NOT NULL,
    `surname`   VARCHAR(46) NULL DEFAULT NULL,
    `email`     VARCHAR(62) NULL DEFAULT NULL,
    `phone`     VARCHAR(20) NULL DEFAULT NULL,
    PRIMARY KEY (`contactID`)
);


-- -----------------------------------------------------
-- Table `logistics`.`supplier`
-- -----------------------------------------------------
CREATE TABLE `supplier`
(
    `supplierID` INT         NOT NULL AUTO_INCREMENT,
    `name`       VARCHAR(65) NOT NULL,
    `contact`    INT         NOT NULL,
    `address`    INT         NOT NULL,
    PRIMARY KEY (`supplierID`),
    FOREIGN KEY (`contact`)
        REFERENCES `logistics`.`contact` (`contactID`),
    FOREIGN KEY (`address`)
        REFERENCES `logistics`.`address` (`addressID`)
);

-- -----------------------------------------------------
-- Create table product
-- -----------------------------------------------------
CREATE TABLE `product`
(
    `productID` INT         NOT NULL AUTO_INCREMENT,
    `pro`       VARCHAR(10) NOT NULL,
    `name`      VARCHAR(65) NOT NULL,
    `category`  INT         NOT NULL,
    `supplier`  INT         NOT NULL,
    `price`     FLOAT       NULL DEFAULT NULL,
    `width`     FLOAT       NULL DEFAULT NULL,
    `height`    FLOAT       NULL DEFAULT NULL,
    `length`    FLOAT       NULL DEFAULT NULL,
    `weight`    FLOAT       NULL DEFAULT NULL,
    PRIMARY KEY (`productID`),
    FOREIGN KEY (`category`)
        REFERENCES `logistics`.`category` (`categoryID`),
    FOREIGN KEY (`supplier`)
        REFERENCES `logistics`.`supplier` (`supplierID`)
);

ALTER TABLE product
    ADD UNIQUE (pro);
ALTER TABLE product
    ADD UNIQUE (name);


-- -----------------------------------------------------
-- Create table warehosue
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `warehouse`
(
    `warehouseID` INT NOT NULL AUTO_INCREMENT,
    `address`     INT NULL DEFAULT NULL,
    PRIMARY KEY (`warehouseID`),
    FOREIGN KEY (`address`)
        REFERENCES `logistics`.`address` (`addressID`)
);


-- -----------------------------------------------------
-- Create table stock
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`
(
    `productID`   INT NOT NULL,
    `warehouseID` INT NOT NULL,
    `quantity`    INT NULL DEFAULT NULL,
    PRIMARY KEY (`productID`, `warehouseID`),
    FOREIGN KEY (`productID`)
        REFERENCES `logistics`.`product` (`productID`),
    FOREIGN KEY (`warehouseID`)
        REFERENCES `logistics`.`warehouse` (`warehouseID`)
);


