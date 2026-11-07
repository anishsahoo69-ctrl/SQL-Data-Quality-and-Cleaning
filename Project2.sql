-- Select the database
USE classicmodels;

-- Display all tables
SHOW TABLES;

-- Check customer table
SELECT * FROM customers;

-- Check orders table
SELECT * FROM orders;

-- Check products table
SELECT * FROM products;

SELECT *
FROM customers
WHERE contactFirstName IS NULL
   OR TRIM(contactFirstName) = '';
   
   SELECT *
FROM customers
WHERE contactLastName IS NULL
   OR TRIM(contactLastName) = '';
   
   SELECT *
FROM customers
WHERE phone IS NULL
   OR TRIM(phone) = '';
   
   SELECT *
FROM customers
WHERE addressLine1 IS NULL
   OR TRIM(addressLine1) = '';
   
   SELECT
    COUNT(*) AS total_customers,
    SUM(contactFirstName IS NULL OR TRIM(contactFirstName) = '') AS missing_first_names,
    SUM(contactLastName IS NULL OR TRIM(contactLastName) = '') AS missing_last_names,
    SUM(phone IS NULL OR TRIM(phone) = '') AS missing_phones,
    SUM(addressLine1 IS NULL OR TRIM(addressLine1) = '') AS missing_addresses
FROM customers;

SELECT
    customerNumber,
    UPPER(contactFirstName) AS first_name,
    UPPER(contactLastName) AS last_name
FROM customers;

SELECT
    customerNumber,
    TRIM(contactFirstName) AS first_name,
    TRIM(contactLastName) AS last_name
FROM customers;

SELECT
    customerNumber,
    CONCAT(
        TRIM(contactFirstName),
        ' ',
        TRIM(contactLastName)
    ) AS full_name
FROM customers;

SELECT customerNumber, contactFirstName, contactLastName
FROM customers;

UPDATE customers
SET
    contactFirstName = TRIM(contactFirstName),
    contactLastName = TRIM(contactLastName);
    
    SELECT *
FROM customers
WHERE email IS NULL OR TRIM(email) = '';

SELECT
    customerNumber,
    LOWER(TRIM(email)) AS cleaned_email
FROM customers;

SELECT *
FROM customers
WHERE email NOT LIKE '%_@_%._%';

UPDATE customers
SET email = LOWER(TRIM(email))
WHERE email IS NOT NULL;

SELECT
    customerNumber,
    phone,
    REPLACE(phone, ' ', '') AS cleaned_phone
FROM customers;

SELECT
    customerNumber,
    phone,
    REPLACE(
        REPLACE(
            REPLACE(phone, '-', ''),
            '(', ''
        ),
        ')', ''
    ) AS cleaned_phone
FROM customers;

SELECT
    customerNumber,
    phone,
    REGEXP_REPLACE(phone, '[^0-9+]', '') AS cleaned_phone
FROM customers;

UPDATE customers
SET phone = REGEXP_REPLACE(phone, '[^0-9+]', '')
WHERE phone IS NOT NULL;

SELECT
    contactFirstName,
    contactLastName,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY contactFirstName, contactLastName
HAVING COUNT(*) > 1;

SELECT
    contactFirstName,
    contactLastName,
    city,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY contactFirstName, contactLastName, city
HAVING COUNT(*) > 1;

SELECT
    productName,
    COUNT(*) AS duplicate_count
FROM products
GROUP BY productName
HAVING COUNT(*) > 1;

SELECT *
FROM orders
WHERE comments IS NULL
   OR TRIM(comments) = '';
   
   SELECT
    status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY status;

SELECT *
FROM orders
WHERE status = 'Cancelled';

SELECT *
FROM orders
WHERE status <> 'Shipped';

SELECT
    orderNumber,
    status,
    CASE
        WHEN status = 'Shipped' THEN 'Completed'
        WHEN status = 'Cancelled' THEN 'Cancelled'
        WHEN status = 'Resolved' THEN 'Resolved'
        WHEN status = 'On Hold' THEN 'On Hold'
        ELSE 'Pending'
    END AS order_category
FROM orders;

SELECT *
FROM orders
WHERE shippedDate IS NOT NULL
AND shippedDate < orderDate;

SELECT
    productCode,
    productName,
    LEFT(productCode, 3) AS product_category
FROM products;

SELECT
    productCode,
    UPPER(productName) AS product_name
FROM products;

SELECT
    productCode,
    productName,
    productScale,
    productVendor
FROM products;

SELECT *
FROM products
WHERE productDescription IS NULL
   OR TRIM(productDescription) = '';
   
   SELECT *
FROM products
WHERE buyPrice <= 0
   OR MSRP <= 0;
   
   SELECT *
FROM customers
WHERE salesRepEmployeeNumber IS NULL;

SELECT o.*
FROM orders o
LEFT JOIN customers c
ON o.customerNumber = c.customerNumber
WHERE c.customerNumber IS NULL;

SELECT *
FROM orderdetails
WHERE quantityOrdered <= 0;

SELECT *
FROM orderdetails
WHERE priceEach <= 0;

SELECT *
FROM products
WHERE quantityInStock < 0;

SELECT DISTINCT status
FROM orders;

SELECT DISTINCT productVendor
FROM products;

UPDATE products
SET productVendor = TRIM(productVendor);

SELECT DISTINCT country
FROM customers;

UPDATE customers
SET country = TRIM(country);

SELECT *
FROM customers;

SELECT *
FROM orders;

SELECT *
FROM products;

SELECT 'Customers' AS table_name, COUNT(*) AS total_records
FROM customers

UNION ALL

SELECT 'Orders', COUNT(*)
FROM orders

UNION ALL

SELECT 'Products', COUNT(*)
FROM products

UNION ALL

SELECT 'Order Details', COUNT(*)
FROM orderdetails;