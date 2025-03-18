-- insert
INSERT INTO CUSTOMER (customerID, email, passwd, total_point, isElite, phonenum, address, gender, name, surname, bday, weight, height) 
VALUES (11, 'aliveli@example.com', 'aliveli', 700, FALSE, '2384778528', 'balçova', 'Male', 'ali', 'veli', '2002-09-23', 99.0, 155);

INSERT INTO PRODUCT (productID, name, description) 
VALUES (101, 'Wireless Mouse', 'A sleek and ergonomic wireless mouse.');

INSERT INTO `ORDER` (customerID, orderID, status, final_price) 
VALUES (3, 1021, 'Processing', 150.75);


-- delete
DELETE FROM CUSTOMER 
WHERE customerID = 11;

DELETE FROM PRODUCT
WHERE productID = 101;

DELETE FROM `ORDER` 
WHERE orderID = 1021;


-- update
UPDATE CUSTOMER 
SET total_point = total_point + 100 
WHERE customerID = 1;

UPDATE PRODUCT 
SET description = 'çok akıllı' 
WHERE productID = 2;

UPDATE `ORDER` 
SET status = 'Concluded' 
WHERE orderID = 1001;

-- select statements

-- retrieve order status for each customer (2 tables)
SELECT C.name, C.surname, O.orderID, O.status 
FROM CUSTOMER C 
JOIN `ORDER` O ON C.customerID = O.customerID;

-- display each product belongs to which category (2 tables)
SELECT P.name AS ProductName, C.category_name 
FROM PRODUCT P 
JOIN PRODUCT_CATEGORY C ON P.productID = C.productID;

-- display shops, their products (3 tables)
SELECT S.name AS ShopName, P.name AS ProductName, sp.price as price
FROM SHOP S
JOIN SHOP_PRODUCT SP ON S.shopID = SP.shopID
JOIN PRODUCT P ON SP.productID = P.productID;

-- display logistics and shop contract details (3 tables)
SELECT S.name, LC.company_name, WW.due_date
FROM SHOP S
JOIN WORKS_WITH WW ON S.shopID = WW.shopID
JOIN LOGISTICS_COMPANY LC ON LC.company_name = WW.company_name;

-- list orders receiver namesi delivery addresses and companies handles logistics (3 tables)
SELECT L.company_name, L.delivery_address, C.name, C.surname
FROM LOGISTICS L
JOIN `ORDER` as O ON L.orderID = O.orderID
JOIN CUSTOMER AS C ON C.customerID = O.customerID;

-- originals

-- display customers and their products and their prices (5 tables)
SELECT O.orderID, C.name as customer_name, C.surname as customer_surname, P.name as product_name, OS.quantity, O.final_price
FROM CUSTOMER C
JOIN `ORDER` O ON C.customerID = O.customerID
JOIN ORDER_SPRODUCT OS ON O.customerID = OS.customerID AND O.orderID = OS.orderID
JOIN PRODUCT P ON OS.productID = P.productID
JOIN SHOP_PRODUCT SP ON OS.productID = SP.productID AND SP.shopID = OS.shopID ;

-- retrieve top customers by total points
SELECT customerID, name, surname, total_point, isElite
FROM CUSTOMER
ORDER BY total_point DESC;

-- retrieve orders and their logistics details (3 tables)
SELECT O.orderID, C.name as receiver_name, C.surname as receiver_surname, C.phonenum as phonenumber, L.delivery_address, L.delivery_date
FROM `ORDER` O
JOIN LOGISTICS L ON O.customerID = L.customerID AND O.orderID = L.orderID
JOIN CUSTOMER C ON C.customerID = O.customerID;

-- display list names and products stock status (3 tables)
SELECT WL.name, SP.productID, SUM(SP.stock_level) as stock_level, AVG(sp.price)
FROM WISHLIST WL
JOIN LIST_SPRODUCT LP ON WL.listID = LP.listID
JOIN SHOP_PRODUCT SP ON LP.productID = SP.productID
GROUP BY WL.name, SP.productID;

-- number of products that customers wishlists have (3 tables)
SELECT C.name as name, C.surname as surname, WL.name AS wishlist_name, COUNT(LP.productID) AS total_products
FROM WISHLIST WL
JOIN LIST_SPRODUCT LP ON WL.listID = LP.listID
JOIN CUSTOMER C ON C.customerID = WL.customerID
GROUP BY C.customerID, WL.listID;

-- end of project --

select * from shop_product;
select * from product;
select * from customer;
alter table customer
alter column total_point set default 0;
delete from wishlist;
select * from wishlist;
delete from public_wishlist;
delete from private_wishlist;
delete from shared_wishlist;

delete from shared_wishlist_collaborator;
delete from favourite;
select * from favourite;
delete from list_sproduct;



update customer
set total_point = 2600
where customerID = 2;
show create table customer;
delete from order_sproduct;


ALTER TABLE customer ALTER COLUMN total_point DROP DEFAULT;
DROP TRIGGER IF EXISTS check_isElite_before_total_point_update;

INSERT INTO PRODUCT (name) 
VALUES ( 089, 'tyest');

select * 
from product
left join shop_product on product.productID = shop_product.productID;

delete from logistics_company;
update customer
set total_point = 2700
where name = 'furkan';

insert into product_review(comment, rating, productID, customerID) VALUES
('COKII', 5, 8, 3);

select c.name, w.name, num_products
from wishlist w
join customer c on c.customerID = w.customerID;
show triggers;




