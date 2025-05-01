-- Achiving first normal form (1NF)
CREATE DATABASE products_DetailDB;

USE products_DetailDB;

CREATE TABLE ProductsDetail(Order_id INT PRIMARY KEY AUTO_INCREMENT, CustomerName VARCHAR(100) NOT NULL, Product_name VARCHAR(100));
INSERT INTO ProductsDetail(Order_id, CustomerName, Product_name)
VALUES (101, "John Doe", "Laptop,Mouse"),
       (102, "Jane Smith", "Tablet,Keyboard,Mouse"),
       (103, "Emily Clark", "Phone");
       
CREATE TABLE Products(
    Product_id INT PRIMARY KEY AUTO_INCREMENT, 
    Product_name VARCHAR(100)
 );
 
INSERT INTO Products(Product_id, Product_name)
VALUES (1, "Laptop"),
       (2, "Mouse"),
       (3, "Tablet"), 
       (4, "Keyboard"),
       (5, "Mouse"),
	   (6, "Phone"); 
 
CREATE TABLE ProductsDetail_Products (
Order_id INT,
CustomerName VARCHAR(100) NOT NULL,
Product_name VARCHAR(100) NOT NULL,
Product_id INT, 
FOREIGN KEY (Order_id) REFERENCES ProductsDetail(Order_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

INSERT INTO ProductsDetail_Products(Order_id, CustomerName, Product_name, Product_id)
VALUES (101, "John Doe", "Laptop", 1),
       (101, "John Doe", "Mouse", 2),
       (102, "Jane Smith", "Tablet", 3),
       (102, "Jane Smith", "Keyboard", 4),
       (102, "Jane Smith", "Mouse", 5),
       (103, "Emily Clark", "Phone", 6);

SELECT * FROM ProductsDetail_Products;

-- Achiving second normal form (2NF)
CREATE TABLE ProductsDetail_Products_2NF (
Order_id INT,   
CustomerName VARCHAR(100) NOT NULL,
Product_name VARCHAR(100) NOT NULL,
Product_id INT,
FOREIGN KEY (Order_id) REFERENCES ProductsDetail(Order_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);


INSERT INTO ProductsDetail_Products_2NF (Order_id, CustomerName,Product_name, Product_id)
VALUES (101, "John Doe", "Laptop", 1),
       (101, "John Doe", "Mouse", 2),
       (102, "Jane Smith", "Tablet", 3),
       (102, "Jane Smith", "Keyboard", 4),
       (102, "Jane Smith", "Mouse", 5),
       (103, "Emily Clark", "Phone", 6);
       
	
CREATE TABLE Customers (
Order_id INT PRIMARY KEY AUTO_INCREMENT,
CustomerName VARCHAR(100) NOT NULL,
);

INSERT INTO Customers (Order_id, CustomerName)
VALUES (101, "John Doe"),
       (102, "Jane Smith"),
       (103, "Emily Clark");
       
SELECT * FROM Customers;

