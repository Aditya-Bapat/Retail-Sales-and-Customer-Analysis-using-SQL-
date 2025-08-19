-- Customers
INSERT INTO customers (name, city, join_date) VALUES
('Alice Shah', 'Mumbai', '2022-01-15'),
('Rohan Mehta', 'Delhi', '2022-03-20'),
('Priya Singh', 'Bangalore', '2022-05-10'),
('Vikram Rao', 'Pune', '2022-07-25'),
('Sneha Kapoor', 'Hyderabad', '2022-09-12');

-- Products
INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 60000),
('Phone', 'Electronics', 30000),
('Shoes', 'Fashion', 4000),
('Headphones', 'Electronics', 2000),
('Backpack', 'Fashion', 2500);

-- Orders
INSERT INTO orders (customer_id, product_id, order_date, quantity, payment_method) VALUES
(1, 1, '2022-04-05', 1, 'Credit Card'),
(2, 3, '2022-04-07', 2, 'UPI'),
(1, 2, '2022-05-15', 1, 'Debit Card'),
(3, 5, '2022-06-01', 3, 'Net Banking'),
(4, 4, '2022-07-20', 1, 'UPI'),
(5, 2, '2022-08-11', 2, 'Credit Card'),
(3, 1, '2022-09-05', 1, 'Debit Card'),
(2, 5, '2022-09-15', 1, 'UPI'),
(4, 3, '2022-10-01', 2, 'Credit Card'),
(5, 1, '2022-11-10', 1, 'UPI');
