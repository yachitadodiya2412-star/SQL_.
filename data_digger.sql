create database customers;
show databases;
use customers;
create table customer (
id int primary key auto_increment,
name varchar (100) not null,
email varchar (100) not null,
address varchar (100) not null
 );
insert into customer(customer_id , name , email , address)
		    values(101 , "mital parmar" , "mitalparmar@gmali.com" , "surat"),
                  (102 , "jigar dodiya" , "jigardodiya@gmail.com" , "ahedabad"),
                  (103 , "minal parmar" , "minalparmar23@gmail.com" , "vapi"),
                  (104 , "uttam dodiya" , "uttamdodiya@gmail.com" ,"baroda" ),
                  (105 , "neha dodiya" , "nahedodiya@gmil.com" , "vadodara"),
                  (106 , "mayank dodiya" , "mayankdodiya123@gmail.com" ,"amreli");

select * from customers
where customers;

create table orders (
     order_id int PRIMARY key,
     customers_id int,
     orderdata data,
     totalamount decimal(10,2)
);

update customers
set address="gadhinagar"
where address=102;

delete from customers
where customer_id=105;


INSERT INTO Orders
(OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 101, '2026-10-10', 1500),
(2, 102, '2026-10-15', 2500),
(3, 101, '2026-10-20', 3000),
(4, 103, '2026-11-01', 1200),
(5, 102, '2026-11-05', 4000);

SELECT * FROM Orders
WHERE CustomersID = 101;

UPDATE Orders
SET TotalAmount = 3000
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 5;

SELECT *FROM Orders
WHERE OrderDate >= CURRENT_DATE - INTERVAL 30 DAY;


CREATR TABLE ProductID (
       productID int primary key,
       productname varchar (50)
       price decimal (10, 2)
       stock int
);

INSERT INTO Product (Produuct_name) values
    (1, 'laptop', 55000, 11),
    (2, 'mouse', 700, 3),
    (3, 'keyboard' , 1000 , 2),
    (4, 'tv' , 50000 , 8),
    (5, 'mobaile', 40000 , 10);
 
 UPDATE Products
SET Price = 20000
WHERE ProductID = 4;

DELETE FROM Products
WHERE Stock = 0;

SELECT *FROM Products
WHERE Price BETWEEN 500 AND 2000;

SELECT *FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);

SELECT * FROM Products
WHERE Price = (SELECT MIN(Price) FROM Products);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2)
);

INSERT INTO OrderDetails VALUES
(1, 101, 1, 2, 94000),
(2, 101, 2, 3, 6500),
(3, 102, 3, 2, 2400),
(4, 103, 1, 1, 55000),
(5, 104, 4, 3, 44000);

SELECT * FROM OrderDetails
WHERE OrderID = 101;

SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;

SELECT ProductID, COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 1
GROUP BY ProductID;
                  
                   