INSERT INTO SHOP (shopID, name, contact, location) VALUES
(4, 'Shop D', '777-888-9999', 'Los Angeles'),
(5, 'Shop E', '888-999-0000', 'İzmir'),
(6, 'Shop F', '999-000-1111', 'Kütahya'),
(7, 'Shop G', '111-222-3333', 'Boston'),
(8, 'Shop H', '222-333-4444', 'Antalya'),
(1, 'Shop A', '123-456-7890', 'New York'),
(2, 'Shop B', '987-654-3210', 'Denizli'),
(3, 'DOLABIMMMMM', '555-666-7777', 'Muş');

INSERT INTO CUSTOMER (customerID, email, passwd, total_point, isElite, phonenum, address, gender, name, surname, bday, weight, height) VALUES
(1, 'beyza.celik@example.com', 'pass123', 200, FALSE, '111-222-3333', '123 Elm St, NY', 'Female', 'beyza', 'çelik', '2002-12-18', 58.0, 165),
(2, 'furkan.iyem@example.com', 'pass456', 105, FALSE, '444-555-6666', '456 Oak St, SF', 'Male', 'furkan', 'iyem', '1985-05-15', 60.0, 165),
(3, 'kamil.kamilcan@example.com', 'securepassword', 515, FALSE, '1234567890', '123 Elm Street', 'Male', 'kamil', 'kamilcan', '1990-01-01', 75.5, 180),
(4, 'gulnaz.karaca@example.com', 'securepassword', 500, FALSE, '1234567890', '123 Elm Street', 'Female', 'gülnaz', 'karaca', '2002-06-26', 41.0, 158),
(5, 'cem.alici@ege.edu.tr', 'alicicem123', 2800, TRUE, '534-447-1940', 'Kazımdirik, Bornova Metro İstasyonu, 35100 Bornova/İzmir', 'Male', 'Cem', 'Alıcı', null, null, null),
(6, 'murat.osman.unalir@ege.edu.tr', 'unalir123', 1200, FALSE, '123-456-7890', 'Bornova, İzmir', 'Male', 'Murat Osman', 'Ünalır', '1980-03-15', 76.0, 182),
(7, 'emine.sezer@ege.edu.tr', 'pass456', 800, FALSE, '234-567-8901', 'Bornova, İzmir', 'Female', 'Emine', 'Sezer', '1975-07-20', 57.0, 160),
(8, 'ozgur.gumus@ege.edu.tr', 'pass789', 1500, FALSE, '345-678-9012', 'Bornova, İzmir', 'Male', 'Özgür', 'Gümüş', '1982-11-05', 95.0, 171),
(9, 'hasan.bulut@ege.edu.tr', 'pass321', 2500, TRUE, '456-789-0123', 'Bornova, İzmir', 'Male', 'Hasan', 'Bulut', '1978-01-25', 85.0, 175),
(10, 'sevtap.duman.kaymaz@ege.edu.tr', 'pass654', 3000, TRUE, '567-890-1234', 'Bornova, İzmir', 'Female', 'Sevtap', 'Kaymaz', '1985-06-10', 62.0, 168);


INSERT INTO PAYMENT_METHOD (customerID, paymentID, currency) VALUES
(1, 10001, 'TRY'),
(1, 10002, 'USD'),
(1, 10003, 'EUR'),
(2, 10004, 'TRY'),
(2, 10005, 'USD'),
(2, 10006, 'EUR'),
(3, 10007, 'TRY'),
(3, 10008, 'USD'),
(3, 10009, 'EUR'),
(4, 10010, 'TRY'),
(4, 10011, 'USD'),
(4, 10012, 'EUR'),
(5, 10013, 'TRY'),
(5, 10014, 'USD'),
(5, 10015, 'EUR'),
(6, 10016, 'TRY'),
(6, 10017, 'USD'),
(6, 10018, 'EUR'),
(7, 10019, 'TRY'),
(7, 10020, 'USD'),
(7, 10021, 'EUR'),
(8, 10022, 'TRY'),
(8, 10023, 'USD'),
(8, 10024, 'EUR'),
(9, 10025, 'TRY'),
(9, 10026, 'USD'),
(9, 10027, 'EUR'),
(10, 10028, 'TRY'),
(10, 10029, 'USD'),
(10, 10030, 'EUR'),
(1, 10031, 'TRY'),
(4, 10032, 'TRY');

INSERT INTO PRODUCT (productID, name, description) VALUES
(1, 'Laptop', 'High performance laptop'),
(2, 'Smartphone', 'Latest model smartphone'),
(3, 'Headphones', 'Noise-cancelling headphones'),
(4, 'Tablet', 'High-resolution display tablet'),
(5, 'Smartwatch', 'Advanced fitness tracking smartwatch'),
(6, 'Keyboard', 'Mechanical keyboard with RGB lighting'),
(7, 'Monitor', 'Ultra-wide curved monitor'),
(8, 'Router', 'High-speed wireless router');

INSERT INTO CATEGORY (category_name) VALUES
('Electronics'),
('Accessories'),
('Gadgets');

INSERT INTO LOGISTICS_COMPANY (company_name) VALUES
('Logistics A'),
('Logistics B'),
('Logistics C');

INSERT INTO GIFTCARD (customerID, paymentID, card_code, balance) VALUES
(1, 10031, 'GC123', 50.0),
(4, 10032, 'GC456', 30.0);


INSERT INTO WISHLIST (customerID, listID, name, num_products) VALUES
(1, 101, 'favourites', 0),
(2, 102, 'pc', 0),
(8, 105, 'favourites', 0),
(9, 106, 'favourites', 0),
(4, 103, 'Shared Wishlist A', 0),
(7, 104, 'Shared Wishlist B', 0),
(5, 201, 'Private Wishlist A', 0),
(10, 202, 'Private Wishlist B', 0),
(3, 301, 'Public Wishlist A', 0),
(6, 302, 'Public Wishlist B', 0);

INSERT INTO FAVOURITE (customerID, listID, name, num_products) VALUES
(1, 101, 'favourites', 3),
(2, 102, 'pc', 2);

INSERT INTO SHARED_WISHLIST (customerID, listID, num_views) VALUES
(4, 103, 10),
(7, 104, 5);

INSERT INTO PRIVATE_WISHLIST (customerID, listID) VALUES
(5, 201),
(10, 202);

INSERT INTO PUBLIC_WISHLIST (customerID, listID, num_views, num_followers, public_type) VALUES
(3, 301, 15, 3, 'my_collections'),
(6, 302, 20, 5, 'followed');

INSERT INTO `ORDER` (customerID, orderID, status, final_price) VALUES
(1, 1001, 'Completed', 120.50),
(2, 1002, 'Processing', 200.00),
(3, 1003, 'Shipped', 350.00),
(4, 1004, 'Completed', 450.75),
(5, 1005, 'Canceled', 75.00),
(6, 1006, 'Processing', 150.50),
(7, 1007, 'Completed', 220.00),
(8, 1008, 'Returned', 95.00),
(9, 1009, 'Shipped', 305.00),
(10, 1010, 'Completed', 500.00),
(1, 1011, 'Processing', 100.25),
(3, 1012, 'Completed', 250.00),
(4, 1013, 'Shipped', 175.50),
(5, 1014, 'Completed', 120.75),
(6, 1015, 'Canceled', 80.00),
(7, 1016, 'Completed', 260.00),
(8, 1017, 'Processing', 180.50),
(9, 1018, 'Shipped', 340.00),
(10, 1019, 'Completed', 550.25),
(2, 1020, 'Completed', 275.00);


INSERT INTO CART (customerID, total_price, discount, num_products) VALUES
(1, 1500.0, 10.0, 5),
(2, 750.0, 5.0, 3),
(3, 1200.0, 8.0, 4),
(4, 500.0, 3.0, 2),
(5, 950.0, 7.5, 3),
(6, 1800.0, 12.0, 6),
(7, 2500.0, 15.0, 8),
(8, 1100.0, 9.0, 4),
(9, 2000.0, 20.0, 7),
(10, 1350.0, 10.0, 5);

INSERT INTO SHOP_PRODUCT (shopID, productID, stock_level, price) VALUES
(1, 1, 25, 999.99),
(1, 2, 15, 799.99),
(1, 3, 20, 199.99),
(1, 4, 10, 299.99),
(1, 5, 5, 399.99),
(1, 6, 12, 150.00),
(1, 7, 18, 1195.00),
(1, 8, 20, 200.00),
(2, 1, 30, 950.00),
(2, 2, 10, 850.00),
(2, 3, 15, 180.00),
(2, 4, 18, 275.50),
(2, 5, 14, 400.00),
(2, 6, 20, 145.00),
(2, 7, 22, 1220.00),
(2, 8, 25, 210.00),
(3, 1, 50, 1000.00),
(3, 2, 18, 785.00),
(3, 3, 22, 190.00),
(3, 4, 15, 290.00),
(3, 5, 20, 450.00),
(3, 6, 30, 160.00),
(3, 7, 12, 1240.00),
(3, 8, 18, 225.00),
(4, 1, 22, 945.00),
(4, 2, 27, 850.00),
(4, 3, 14, 185.00),
(4, 4, 17, 300.00),
(4, 5, 10, 285.00),
(4, 6, 20, 175.00),
(4, 7, 24, 1210.00),
(4, 8, 20, 230.00),
(5, 1, 35, 980.00),
(5, 2, 18, 810.00),
(5, 3, 22, 195.00),
(5, 4, 14, 275.00),
(5, 5, 16, 405.00),
(5, 6, 25, 425.00),
(5, 7, 20, 1235.00),
(5, 8, 30, 205.00),
(6, 1, 28, 970.00),
(6, 2, 35, 835.00),
(6, 3, 14, 200.00),
(6, 4, 18, 295.00),
(6, 5, 25, 420.00),
(6, 6, 30, 185.00),
(6, 7, 22, 1190.00),
(6, 8, 26, 215.00),
(7, 1, 24, 960.00),
(7, 2, 22, 820.00),
(7, 3, 21, 205.00),
(7, 4, 20, 280.00),
(7, 5, 15, 410.00),
(7, 6, 20, 190.00),
(7, 7, 18, 1240.00),
(7, 8, 25, 195.00),
(8, 1, 32, 980.00),
(8, 2, 26, 795.00),
(8, 3, 20, 190.00),
(8, 4, 14, 275.00),
(8, 5, 22, 435.00),
(8, 6, 15, 175.00),
(8, 7, 12, 1170.00),
(8, 8, 23, 230.00);


INSERT INTO PRODUCT_REVIEW (comment, rating, productID, customerID) VALUES
('Excellent product!', 5, 1, 1),
('Good value for money.', 4, 2, 2),
('Not bad, but expected better.', 3, 3, 3),
('Amazing quality!', 5, 4, 4),
('Very durable and lightweight.', 4, 5, 5),
('Fast delivery and great product.', 5, 6, 6),
('Comfortable to use.', 4, 7, 7),
('Not worth the price.', 2, 8, 8),
('Highly recommended!', 5, 1, 9),
('Satisfied with my purchase.', 4, 2, 10),
('Average experience.', 3, 3, 1),
('Impressive performance.', 5, 4, 2),
('Decent quality.', 3, 5, 3),
('Exceeded expectations.', 5, 6, 4),
('Affordable and efficient.', 4, 7, 5),
('Could be better.', 3, 8, 6),
('Fantastic build quality.', 5, 1, 7),
('Works as described.', 4, 2, 8),
('Disappointed with the performance.', 2, 3, 9),
('Smooth experience.', 5, 4, 10);


INSERT INTO SHOPIER_REVIEW (comment, rating, point, shopID, customerID) VALUES
('Great service!', 5, 10, 1, 1),
('Friendly staff and fast delivery.', 4, 9, 2, 2),
('Clean and well-organized shop.', 5, 10, 3, 3),
('Average experience.', 3, 6, 4, 4),
('Delivery could be faster.', 3, 7, 5, 5);


INSERT INTO LOGISTICS (company_name, shopID, customerID, orderID, logisticsID, phonenum, delivery_address, receiver_name, delivery_date) VALUES
('Logistics A', 1, 1, 1001, 1, '111-222-3333', '123 Elm St, NY', 'Beyza Çelik', '2025-01-14'),
('Logistics B', 2, 2, 1002, 2, '444-555-6666', '456 Oak St, SF', 'Furkan İyem', '2025-01-15'),
('Logistics C', 3, 3, 1003, 3, '1234567890', '123 Elm Street', 'Kamil Kamilcan', '2025-01-16'),
('Logistics C', 4, 4, 1004, 4, '1234567890', '123 Elm Street', 'Gülnaz Karaca', '2025-01-17'),
('Logistics B', 5, 5, 1005, 5, '534-447-1940', 'Kazımdirik, Bornova Metro İstasyonu, 35100 Bornova/İzmir', 'Cem Alıcı', '2025-01-18'),
('Logistics A', 6, 6, 1006, 6, '123-456-7890', 'Bornova, İzmir', 'Murat Osman Ünalır', '2025-01-19'),
('Logistics B', 7, 7, 1007, 7, '234-567-8901', 'Bornova, İzmir', 'Emine Sezer', '2025-01-20'),
('Logistics B', 8, 8, 1008, 8, '345-678-9012', 'Bornova, İzmir', 'Özgür Gümüş', '2025-01-21'),
('Logistics C', 1, 1, 1011, 11, '111-222-3333', '123 Elm St, NY', 'Beyza Çelik', '2025-01-24'),
('Logistics C', 2, 2, 1020, 12, '444-555-6666', '456 Oak St, SF', 'Furkan İyem', '2025-01-25'),
('Logistics B', 3, 3, 1012, 13, '1234567890', '123 Elm Street', 'Kamil Kamilcan', '2025-01-26'),
('Logistics A', 4, 4, 1013, 14, '1234567890', '123 Elm Street', 'Gülnaz Karaca', '2025-01-27'),
('Logistics A', 5, 5, 1014, 15, '534-447-1940', 'Kazımdirik, Bornova Metro İstasyonu, 35100 Bornova/İzmir', 'Cem Alıcı', '2025-01-28'),
('Logistics A', 6, 6, 1015, 16, '123-456-7890', 'Bornova, İzmir', 'Murat Osman Ünalır', '2025-01-29'),
('Logistics B', 7, 7, 1016, 17, '234-567-8901', 'Bornova, İzmir', 'Emine Sezer', '2025-01-30'),
('Logistics A', 8, 8, 1017, 18, '345-678-9012', 'Bornova, İzmir', 'Özgür Gümüş', '2025-01-31');



INSERT INTO REFUND_TO (shopID, customerID, paymentID, money_amount) VALUES
(1, 1, 10001, 999.99),
(2, 2, 10004, 180.0);

INSERT INTO LIST_SPRODUCT (customerID, listID, shopID, productID) VALUES
(1, 101, 1, 1),
(1, 101, 1, 2),
(1, 101, 1, 3),
(2, 102, 2, 1),
(2, 102, 2, 4),
(8, 105, 4, 5),
(9, 106, 4, 6),
(4, 103, 3, 7),
(4, 103, 3, 8),
(4, 103, 2, 5),
(7, 104, 5, 2),
(7, 104, 5, 3),
(5, 201, 6, 1),
(5, 201, 6, 4),
(5, 201, 6, 7),
(5, 201, 6, 8),
(10, 202, 7, 2),
(10, 202, 7, 3),
(10, 202, 7, 5),
(3, 301, 1, 1),
(3, 301, 1, 2),
(3, 301, 1, 3),
(3, 301, 1, 4),
(3, 301, 1, 5),
(6, 302, 2, 6),
(6, 302, 2, 7),
(6, 302, 2, 8),
(6, 302, 3, 5),
(6, 302, 3, 6),
(6, 302, 3, 7);


INSERT INTO CART_SPRODUCT (customerID, shopID, productID) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(1, 2, 4),
(1, 2, 5),
(1, 3, 6),
(1, 3, 7),
(1, 4, 8),
(2, 1, 1),
(2, 1, 2),
(2, 2, 3),
(2, 2, 4),
(2, 3, 5),
(2, 3, 6),
(2, 4, 7),
(2, 4, 8),
(3, 5, 1),
(3, 5, 2),
(3, 5, 3),
(3, 6, 4),
(3, 6, 5),
(3, 6, 6),
(3, 7, 7),
(3, 7, 8),
(4, 1, 1),
(4, 1, 2),
(4, 2, 3),
(4, 2, 4),
(4, 3, 5),
(4, 3, 6),
(4, 4, 7),
(4, 4, 8),
(5, 5, 1),
(5, 5, 2),
(5, 6, 3),
(5, 6, 4),
(5, 7, 5),
(5, 7, 6),
(5, 8, 7),
(5, 8, 8),
(6, 1, 1),
(6, 1, 2),
(6, 2, 3),
(6, 2, 4),
(6, 3, 5),
(6, 3, 6),
(6, 4, 7),
(6, 4, 8),
(7, 5, 1),
(7, 5, 2),
(7, 6, 3),
(7, 6, 4);

INSERT INTO PRODUCT_CATEGORY (productID, category_name) VALUES
(1, 'Electronics'),
(2, 'Electronics'),
(3, 'Accessories'),
(4, 'Electronics'),
(5, 'Gadgets'),
(6, 'Accessories'),
(7, 'Electronics'),
(8, 'Electronics');


INSERT INTO WORKS_WITH (company_name, shopID, due_date) VALUES
('Logistics A', 1, '2035-01-14'),
('Logistics A', 2, '2035-01-15'),
('Logistics C', 3, '2035-01-16'),
('Logistics A', 4, '2035-01-17'),
('Logistics C', 5, '2035-01-18'),
('Logistics B', 6, '2035-01-19'),
('Logistics B', 7, '2035-01-20'),
('Logistics C', 8, '2035-01-21');

INSERT INTO PRODUCT_PHOTO (productID, photourl) VALUES
(1, 'https://example.com/photos/laptop_1.jpg'),
(1, 'https://example.com/photos/laptop_2.jpg'),
(1, 'https://example.com/photos/laptop_3.jpg'),
(2, 'https://example.com/photos/smartphone_1.jpg'),
(2, 'https://example.com/photos/smartphone_2.jpg'),
(2, 'https://example.com/photos/smartphone_3.jpg'),
(3, 'https://example.com/photos/headphones_1.jpg'),
(3, 'https://example.com/photos/headphones_2.jpg'),
(3, 'https://example.com/photos/headphones_3.jpg'),
(4, 'https://example.com/photos/tablet_1.jpg'),
(4, 'https://example.com/photos/tablet_2.jpg'),
(4, 'https://example.com/photos/tablet_3.jpg'),
(5, 'https://example.com/photos/smartwatch_1.jpg'),
(5, 'https://example.com/photos/smartwatch_2.jpg'),
(5, 'https://example.com/photos/smartwatch_3.jpg'),
(6, 'https://example.com/photos/keyboard_1.jpg'),
(6, 'https://example.com/photos/keyboard_2.jpg'),
(6, 'https://example.com/photos/keyboard_3.jpg'),
(7, 'https://example.com/photos/monitor_1.jpg'),
(7, 'https://example.com/photos/monitor_2.jpg'),
(7, 'https://example.com/photos/monitor_3.jpg'),
(8, 'https://example.com/photos/router_1.jpg'),
(8, 'https://example.com/photos/router_2.jpg'),
(8, 'https://example.com/photos/router_3.jpg');


INSERT INTO PRODUCT_REVIEW_PHOTO (productID, customerID, photourl) VALUES
(1, 1, 'http://example.com/review1.jpg'),
(2, 2, 'http://example.com/review2.jpg');

INSERT INTO GLOBAL_LOGISTICS_COMPANY_COUNTRIES (company_name, country) VALUES
('Logistics A', 'USA'),
('Logistics B', 'Germany');

INSERT INTO PACKET_SERVICE_LOGISTICS_COMPANY_TYPE (company_name, type) VALUES
('Logistics C', 'Express'),
('Logistics C', 'Standard');

INSERT INTO ORDER_SPRODUCT (customerID, orderID, shopID, productID, quantity) VALUES
(1, 1001, 1, 1, 1),
(1, 1011, 1, 2, 1),
(2, 1002, 2, 1, 1),
(2, 1020, 2, 4, 1),
(3, 1003, 3, 3, 1),
(3, 1012, 3, 4, 1),
(3, 1012, 3, 5, 1),
(4, 1004, 4, 3, 1),
(4, 1013, 4, 6, 1),
(5, 1005, 3, 5, 1),
(5, 1014, 5, 4, 1),
(6, 1006, 3, 8, 2),
(6, 1015, 6, 6, 1),
(7, 1007, 6, 2, 1),
(7, 1016, 2, 5, 1),
(8, 1008, 7, 5, 1),
(8, 1017, 8, 5, 1);

INSERT INTO SHARED_WISHLIST_COLLABORATOR (customerID, listID, collaborator) VALUES
(4, 103, 'Beyza Çelik'),
(7, 104, 'Özgür Gümüş');

INSERT INTO INSTITUTIONAL_SHOP (shopID) VALUES
(1),
(2),
(4),
(5),
(6),
(7),
(8);

INSERT INTO INDEPENDENT_SHOP (shopID, customerID) VALUES
(3, 1);

INSERT INTO CREDIT_CARD (customerID, paymentID, card_number, card_holder, cvv) VALUES
(1, 10001, '4111111111111111', 'Beyza Çelik', '123'),
(2, 10004, '4222222222222222', 'Furkan İyem', '234'),
(3, 10007, '4333333333333333', 'Kamil Kamilcan', '345'),
(4, 10010, '4444444444444444', 'Gülnaz Karaca', '456'),
(5, 10013, '4555555555555555', 'Cem Alıcı', '567'),
(6, 10016, '4666666666666666', 'Murat Osman Ünalır', '678'),
(7, 10019, '4777777777777777', 'Emine Sezer', '789'),
(8, 10022, '4888888888888888', 'Özgür Gümüş', '890'),
(9, 10025, '4999999999999999', 'Hasan Bulut', '901'),
(10, 10028, '5000000000000000', 'Sevtap Kaymaz', '012'),
(1, 10002, '5111111111111111', 'Beyza Çelik', '123'),
(2, 10005, '5222222222222222', 'Furkan İyem', '234'),
(3, 10008, '5333333333333333', 'Kamil Kamilcan', '345'),
(4, 10011, '5444444444444444', 'Gülnaz Karaca', '456'),
(5, 10014, '5555555555555555', 'Cem Alıcı', '567'),
(6, 10017, '5666666666666666', 'Murat Osman Ünalır', '678'),
(7, 10020, '5777777777777777', 'Emine Sezer', '789'),
(8, 10023, '5888888888888888', 'Özgür Gümüş', '890'),
(9, 10026, '5999999999999999', 'Hasan Bulut', '901'),
(10, 10029, '6000000000000000', 'Sevtap Kaymaz', '012');


INSERT INTO SHOPPING_CREDIT (customerID, paymentID, interest_rate, type, loan_term) VALUES
(1, 10001, 0.15, 'Personal', 12);

INSERT INTO HEPSI_PAY (customerID, paymentID, hepsipayID, balance) VALUES
(1, 10001, 1001, 1500.00),
(2, 10004, 1002, 2000.00),
(3, 10007, 1003, 1000.00),
(4, 10010, 1004, 2500.00),
(5, 10013, 1005, 3000.00),
(6, 10016, 1006, 1200.00);

INSERT INTO LOCAL_LOGISTICS_COMPANY (company_name) VALUES
('Logistics C');

INSERT INTO GLOBAL_LOGISTICS_COMPANY (company_name, duty) VALUES
('Logistics A', 7.0),
('Logistics B', 5.0);

INSERT INTO PACKET_SERVICE_LOGISTICS_COMPANY (company_name) VALUES
('Logistics C');

INSERT INTO PAZARYERI (shopID) VALUES
(1),
(2),
(4);

INSERT INTO TRENDYOL_GO (shopID, min_price, arrival_time, opening_hour, closing_hour, tgo_type, market_type, cuisine) VALUES
(5, 50.00, 25, '08:00', '22:00', 'Hızlı Market', 'Grocery', NULL),
(6, 30.00, 35, '09:00', '21:00', 'Su Damacana', NULL, NULL),
(7, 20.00, 40, '10:00', '20:00', 'Yemek', NULL, 'hamburger'),
(8, 40.00, 20, '07:00', '23:00', 'Hızlı Market', 'Grocery', NULL);


