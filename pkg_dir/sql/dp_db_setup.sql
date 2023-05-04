-- SQL FILE TO CREATE DATABASE FOR OUR DP PROJECT





-- Dropping existing database to start from scratch
DROP DATABASE IF EXISTS beans_boutique;

-- Creating new database
CREATE DATABASE IF NOT EXISTS beans_boutique;

-- Give access to everyone to the database
GRANT ALL PRIVILEGES ON beans_boutique.* TO 'robperch'@'localhost';

-- Using database
USE beans_boutique;





-- Creating inventory table
CREATE TABLE inventory (
    Inv_ID INT,
    Prod_ID INT,
    Item_condition VARCHAR(15),
    Size VARCHAR(10),
    Color VARCHAR(20),
    List_Price INT,
    Signed_Date DATE,
    Purchase_ID INT,
    Boutique INT,
    Appraiser_ID INT,
    Consignor_ID INT,
    Commission_Rate FLOAT,
    Discount FLOAT
);

-- Populating inventory table
INSERT INTO inventory VALUES
(1, 1, 'Good', 'M', 'Navy Blue', 80, '2020-03-25', 3, 1, 1, 1, 0.8, NULL),
(2, 1, 'Fair', 'L', 'Navy Blue', 50, '2020-04-26', NULL, 2, 3, 2, 0.5, NULL),
(3, 1, 'Excellent', 'S', 'Pink', 100, '2020-02-23', 4, 3, 8, 3, 0.8, NULL),
(4, 2, 'Excellent', 'S', 'Green', 90, '2022-05-25', NULL, 3, 8, 4, 0.8, NULL),
(5, 2, 'Fair', 'XL', 'Green', 40, '2022-01-12', 5, 2, 4, 5, 0.6, NULL),
(6, 2, 'Very Good', 'M', 'Black', 60, '2022-06-13', 6, 2, 4, 6, 0.8, NULL),
(7, 3, 'Fair', 'L', 'Black', 35, '2022-07-18', NULL, 2, 5, 7, 0.7, NULL),
(8, 3, 'Fair', 'S', 'White', 30, '2022-05-07', 7, 2, 5, 8, 0.5, NULL),
(9, 3, 'Fair', 'XS', 'White', 20, '2020-03-02', NULL, 1, 1, 9, 0.5, 0.5),
(10, 4, 'Fair', 'L', 'White', 40, '2020-02-04', 8, 1, 1, 10, 0.6, 0.5),
(11, 4, 'Fair', 'L', 'Red', 40, '2022-10-11', NULL, 3, 9, 11, 0.6, NULL),
(12, 5, 'Good', 'M', 'Red', 50, '2022-11-11', NULL, 3, 9, 12, 0.8, NULL),
(13, 5, 'Very Good', 'M', 'Red', 60, '2020-12-03', NULL, 3, 9, 13, 0.8, NULL),
(14, 5, 'Excellent', 'M', 'Purple', 125, '2020-03-25', NULL, 1, 2, 1, 0.9, NULL),
(15, 6, 'Good', 'M', 'Blue', 45, '2020-05-02', 1, 1, 2, 14, 0.9, 0.5),
(16, 6, 'Fair', 'M', 'Blue', 50, '2020-04-01', NULL, 3, 8, 15, 0.6, NULL),
(17, 6, 'Fair', 'L', 'Blue', 10, '2022-09-17', 9, 2, 6, 16, 0.6, NULL),
(18, 7, 'Very Good', 'S', 'Pink', 25, '2020-08-15', NULL, 2, 6, 17, 0.5, NULL),
(19, 7, 'Good', 'M', 'Pink', 155, '2022-01-12', NULL, 2, 6, 5, 0.7, NULL),
(20, 7, 'Very Good', 'XS', 'Blue', 75, '2020-02-02', 10, 1, 2, 18, 0.8, NULL),
(21, 8, 'Pristine', 'M', 'Black', 140, '2022-09-05', 2, 2, 6, 20, 0.8, NULL),
(22, 8, 'Very Good', 'M', 'Beige', 85, '2022-08-17', NULL, 1, 2, 10, 0.7, 0.1),
(23, 8, 'Excellent', 'S', 'Grey', 200, '2022-10-15', NULL, 3, 9, 11, 0.8, 0.2),
(24, 9, 'Good', 'M', 'White', 170, '2020-01-03', NULL, 2, 5, 2, 0.7, NULL),
(25, 9, 'Fair', 'XS', 'Grey', 120, '2020-02-15', NULL, 2, 3, 5, 0.6, 0.2),
(26, 9, 'Good', 'XL', 'White', 95, '2020-02-23', NULL, 1, 1, 9, 0.5, 0.1),
(27, 9, 'Excellent', 'L', 'Beige', 110, '2020-03-15', NULL, 3, 8, 4, 0.6, 0.15),
(28, 10, 'Pristine', 'M', 'Black', 85, '2020-01-26', NULL, 2, 5, 5, 0.5, NULL),
(29, 10, 'Very Good', 'S', 'Black', 50, '2022-12-22', NULL, 2, 4, 2, 0.5, NULL),
(30, 10, 'Good', 'M', 'White', 150, '2022-12-06', NULL, 1, 2, 14, 0.8, 0.1),
(31, 10, 'Good', '38', 'White', 95, '2020-02-07', NULL, 1, 1, 9, 0.5, 0.1),
(32, 11, 'Excellent', 'One Size', 'Green', 30, '2020-01-25', NULL, 3, 8, 22, 0.8, 0.15),
(33, 12, 'Pristine', '10', 'Black', 85, '2022-10-19', NULL, 2, 5, 23, 0.9, NULL),
(34, 13, 'Fair', '11', 'White', 50, '2022-11-16', NULL, 2, 4, 24, 0.5, NULL),
(35, 14, 'Good', 'L', 'Black', 150, '2022-08-17', NULL, 1, 2, 25, 0.8, 0.1),
(36, 1, 'Very Good', 'L', 'Black', 90, '2022-01-25', 10, 1, 1, 1, 0.8, NULL),
(37, 1, 'Fair', 'L', 'Navy Blue', 50, '2021-04-26', 12, 2, 3, 2, 0.5, NULL),
(38, 1, 'Excellent', 'S', 'Pink', 100, '2022-02-23', 13, 3, 8, 3, 0.8, NULL),
(39, 2, 'Excellent', 'S', 'Green', 90, '2021-05-25', 14, 3, 8, 4, 0.8, NULL),
(40, 2, 'Fair', 'XL', 'Green', 40, '2021-01-12', 15, 2, 4, 5, 0.6, NULL),
(41, 2, 'Very Good', 'M', 'Black', 60, '2022-06-13', 16, 2, 4, 6, 0.8, NULL),
(42, 3, 'Fair', 'L', 'Black', 35, '2022-07-18', 17, 2, 5, 7, 0.7, NULL),
(43, 3, 'Fair', 'S', 'White', 30, '2022-05-07', 18, 2, 5, 8, 0.5, NULL),
(44, 3, 'Fair', 'XS', 'White', 20, '2020-03-02', 19, 1, 1, 9, 0.5, 0.5),
(45, 5, 'Very Good', 'M', 'Red', 60, '2020-12-03', 20, 3, 9, 13, 0.8, NULL),
(46, 5, 'Excellent', 'M', 'Purple', 125, '2020-03-25', 21, 1, 2, 1, 0.9, NULL),
(47, 6, 'Good', 'M', 'Blue', 45, '2020-05-02', 22, 1, 2, 14, 0.9, 0.5),
(48, 6, 'Fair', 'M', 'Blue', 50, '2020-04-01', 23, 3, 8, 15, 0.6, NULL);




-- Creating products table
CREATE TABLE products (
  Prod_ID INT NOT NULL,
  Category VARCHAR(255),
  Style1 VARCHAR(255),
  Style2 VARCHAR(255),
  Style3 VARCHAR(255),
  Collection VARCHAR(255),
  PRIMARY KEY (Prod_ID)
);

-- Populating products table
INSERT INTO products (Prod_ID, Category, Style1, Style2, Style3, Collection) VALUES
(1, 'coat', 'trench', 'classic', NULL, 'winter 2021'),
(2, 'coat', 'wrap', 'classic', NULL, 'fall 2021'),
(3, 'coat', 'trench', 'modern', NULL, 'winter 2020'),
(4, 'coat', 'wrap', 'modern', NULL, 'winter 2021'),
(5, 'coat', 'parka', 'modern', NULL, 'fall 2022'),
(6, 'dress', 'midi', 'bohemian', 'formal', 'summer 2020'),
(7, 'dress', 'mini', 'bohemian', 'casual', 'spring 2021'),
(8, 'dress', 'mini', 'floral', 'casual', 'spring 2019'),
(9, 'dress', 'mini', 'floral', 'casual', 'spring 2021'),
(10, 'dress', 'midi', 'floral', 'casual', 'spring 2020'),
(11, 'tie', 'mexican', 'traditional', 'vintage', 'spring 2020'),
(12, 'shoes', 'sandals', 'vintage', 'casual', 'spring 2021'),
(13, 'shoes', 'sneaker', 'classic', NULL, 'fall 2020'),
(14, 'jacket', 'leather', 'natural', NULL, 'fall 2021');





-- Creating person table
CREATE TABLE person (
  PID INT PRIMARY KEY,
  FName VARCHAR(50),
  MI CHAR(1),
  LName VARCHAR(50),
  Address VARCHAR(100),
  Email_Addr VARCHAR(100),
  Phone VARCHAR(20)
);

-- Populating person table
INSERT INTO person (PID, FName, MI, LName, Address, Email_Addr, Phone) VALUES
(1, 'Sara', 'G', 'Eckert', 'Milvia 234 Berkeley CA', 'sg@hotmail.com', NULL),
(2, 'Raul', 'G', 'Hernandez', 'Shattuck 444 Berkeley CA', 'rgh@gmail.com', '673-374-3722'),
(3, 'Don', 'D', 'Perez', 'Shattuck 434 Berkeley CA', 'don@yahoo.com', NULL),
(4, 'Albert', 'E', 'Spivak', NULL, NULL, NULL),
(5, 'Jack', 'T', 'Mendez', 'Milvia 433 Berkeley CA', 'jt@gmail.com', '673-374-3453'),
(6, 'John', 'Z', 'Holz', 'Milvia 452 Berkeley CA', NULL, NULL),
(7, 'Liv', 'C', 'Rin', 'Shattuck 213 Berkeley CA', 'lc@gmail.com', NULL),
(8, 'Sara', 'G', 'Eckert', NULL, 'sg@hotmail.com', '673-374-5821'),
(9, 'Menes', 'H', 'Millward', NULL, NULL, '673-374-9276');





-- Creating online purchase table
CREATE TABLE online_purchase (
  purchase_id INT,
  customer INT,
  purchase_date DATE,
  delivery_status VARCHAR(10),
  ship_date DATE,
  arrival_date DATE,
  shipping_addr VARCHAR(100),
  distributor_id INT
);

-- Populating online purchase  table
INSERT INTO online_purchase (Purchase_ID, Customer, Purchase_Date, Delivery_Status, Ship_Date, Arrival_Date, Shipping_Addr, Distributor_ID)
VALUES
(1, 1, '2023-3-16', 'Arrived', '2023-3-24', '2023-4-10', '2443 Sierra Nevada Road, Mammoth Lakes CA 93546', 3),
(2, 1, '2022-4-15', 'Arrived', '2022-4-20', '2022-5-10', '2443 Sierra Nevada Road, Mammoth Lakes CA 93546', 3),
(3, 3, '2022-9-6', 'Arrived', '2022-9-14', '2022-10-2', '1300 Lemos Lane, Fremont CA 94539', 3),
(4, 4, '2022-10-7', 'Arrived', '2022-10-14', '2022-10-31', '6214 Herzog Street, Oakland CA 94608', 2),
(5, 5, '2022-12-12', 'Arrived', '2022-12-14', '2022-12-21', '1238 Roanwood Way, Concord CA 94521', 3),
(6, 6, '2022-9-23', 'Arrived', '2022-9-26', '2022-10-3', '25538 Calaroga Avenue, Hayward CA 94545', 1),
(7, 7, '2022-10-24', 'Arrived', '2022-10-26', '2022-11-2', '2313 Vegas Avenue, Castro Valley CA 94546', 3),
(8, 8, '2022-9-10', 'Arrived', '2022-9-17', '2022-10-5', '1732 27th Avenue, Oakland CA 94601', 3),
(9, 8, '2023-4-13', 'Arrived', '2023-4-21', '2023-5-12', '1732 27th Avenue, Oakland CA 94601', 1),
(10, 10, '2022-9-10', 'Arrived', '2022-9-17', '2022-10-5', '1732 27th Avenue, Oakland CA 94601', 3),
(12, 11, '2023-4-13', 'Arrived', '2023-4-21', '2023-5-12', '1732 27th Avenue, Oakland CA 94601', 1),
(13, 12, '2022-5-9', 'Arrived', '2022-5-11', '2022-5-18', '19 Heritage, Oakland CA 94605', 3),
(14, 13, '2022-10-7', 'Arrived', '2022-10-14', '2022-10-31', '6214 Herzog Street, Oakland CA 94608', 2),
(15, 14, '2022-12-12', 'Arrived', '2022-12-14', '2022-12-21', '1238 Roanwood Way, Concord CA 94521', 3),
(16, 15, '2022-9-10', 'Arrived', '2022-9-17', '2022-10-5', '1732 27th Avenue, Oakland CA 94601', 3),
(17, 16, '2023-4-13', 'Arrived', '2023-4-21', '2023-5-12', '1732 27th Avenue, Oakland CA 94601', 1),
(18, 17, '2022-5-9', 'Arrived', '2022-5-11', '2022-5-18', '19 Heritage, Oakland CA 94605', 3),
(19, 18, '2022-10-7', 'Arrived', '2022-10-14', '2022-10-31', '6214 Herzog Street, Oakland CA 94608', 2),
(20, 19, '2023-3-16', 'Arrived', '2023-3-24', '2023-4-10', '2443 Sierra Nevada Road, Mammoth Lakes CA 93546', 3),
(21, 20, '2022-5-15', 'Arrived', '2022-5-20', '2022-6-10', '2443 Sierra Nevada Road, Mammoth Lakes CA 93546', 3),
(22, 21, '2022-4-6', 'Arrived', '2022-4-14', '2022-5-2', '1300 Lemos Lane, Fremont CA 94539', 3),
(23, 22, '2022-4-7', 'Arrived', '2022-4-14', '2022-4-30', '6214 Herzog Street, Oakland CA 94608', 2);


-- END OF FILE --
