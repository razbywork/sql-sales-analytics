-- Customers
INSERT INTO customers VALUES
(1, 'Daniel Cohen', 'Israel', '2023-01-15'),
(2, 'Noa Levi', 'Israel', '2023-03-22'),
(3, 'John Smith', 'USA', '2022-11-10'),
(4, 'Emily Brown', 'UK', '2023-06-05'),
(5, 'Michael Green', 'Canada', '2022-09-18');

-- Products
INSERT INTO products VALUES
(1, 'Laptop Pro', 'Electronics', 5200.00),
(2, 'Wireless Headphones', 'Electronics', 850.00),
(3, 'Office Chair', 'Furniture', 1300.00),
(4, 'Standing Desk', 'Furniture', 2400.00),
(5, 'Smart Watch', 'Electronics', 1100.00);

-- Orders
INSERT INTO orders VALUES
(101, 1, '2023-07-01', 'Completed'),
(102, 2, '2023-07-03', 'Completed'),
(103, 3, '2023-07-10', 'Completed'),
(104, 1, '2023-08-02', 'Cancelled'),
(105, 4, '2023-08-15', 'Completed');

-- Order Items
INSERT INTO order_items VALUES
(1001, 101, 1, 1),
(1002, 101, 2, 2),
(1003, 102, 5, 1),
(1004, 103, 3, 1),
(1005, 105, 4, 1);

-- Payments
INSERT INTO payments VALUES
(5001, 101, '2023-07-01', 6900.00, 'Credit Card'),
(5002, 102, '2023-07-03', 1100.00, 'PayPal'),
(5003, 103, '2023-07-10', 1300.00, 'Credit Card'),
(5004, 105, '2023-08-15', 2400.00, 'Bank Transfer');

-- Returns
INSERT INTO returns VALUES
(9001, 1002, '2023-07-05', 'Defective product');
