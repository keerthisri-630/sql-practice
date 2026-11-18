use school_db;

CREATE TABLE orders (
    order_id       INT AUTO_INCREMENT PRIMARY KEY,
    customer_name  VARCHAR(100) NOT NULL,
    city           VARCHAR(50) NOT NULL,
    store_code     VARCHAR(10) NOT NULL,
    order_value    DECIMAL(10,2),
    order_date     DATE NOT NULL,
    delivery_date  DATE,
    rating         INT,
    status         VARCHAR(20) NOT NULL
);

INSERT INTO orders (customer_name, city, store_code, order_value, order_date, delivery_date, rating, status) VALUES
('Uma S', 'Madurai', '012', NULL, '2025-04-16', NULL, NULL, 'Cancelled'),
('Prakash N', 'Salem', '034', NULL, '2025-04-15', NULL, NULL, 'Cancelled'),
('Revathi B', 'Coimbatore', '003', NULL, '2025-04-15', '2025-04-18', NULL, 'Delivered'),
('Manoj K', 'Chennai', '007', NULL, '2025-04-14', '2025-04-17', NULL, 'Delivered'),
('Sneha D', 'Trichy', '021', NULL, '2025-04-13', '2025-04-16', NULL, 'Delivered'),
('Arun J', 'Chennai', '007', NULL, '2025-04-12', '2025-04-16', NULL, 'Delivered'),
('Bhavani S', 'Madurai', '012', NULL, '2025-04-12', '2025-04-16', NULL, 'Delivered'),
('Sri Balaji Traders', 'Chennai', '007', NULL, '2025-04-11', '2025-04-14', NULL, 'Delivered'),
('Shanti V', 'Coimbatore', '003', NULL, '2025-04-10', '2025-04-14', NULL, 'Delivered'),
('Kumar R', 'Salem', '034', NULL, '2025-04-10', '2025-04-13', NULL, 'Delivered'),
('Divya M', 'Chennai', '007', NULL, '2025-04-09', '2025-04-15', NULL, 'Delivered'),
('Rajesh T', 'Trichy', '021', NULL, '2025-04-08', NULL, NULL, 'Cancelled'),
('Nithya P', 'Chennai', '007', NULL, '2025-04-08', '2025-04-11', NULL, 'Delivered'),
('Gopal S', 'Madurai', '012', NULL, '2025-04-07', '2025-04-10', NULL, 'Delivered'),
('Ravi Kumar', 'Chennai', '007', NULL, '2025-04-07', '2025-04-11', NULL, 'Delivered'),
('Anitha K', 'Coimbatore', '003', NULL, '2025-04-06', '2025-04-09', NULL, 'Delivered'),
('Vijay A', 'Salem', '034', NULL, '2025-04-05', '2025-04-11', NULL, 'Delivered'),
('Lakshmi N', 'Chennai', '007', NULL, '2025-04-05', '2025-04-08', NULL, 'Delivered'),
('Suresh B', 'Madurai', '012', NULL, '2025-04-04', NULL, NULL, 'Cancelled'),
('Meena L', 'Trichy', '021', NULL, '2025-04-03', '2025-04-07', NULL, 'Delivered'),
('Karthik V', 'Chennai', '007', NULL, '2025-04-03', '2025-04-08', NULL, 'Delivered'),
('Deepa R', 'Coimbatore', '003', NULL, '2025-04-02', '2025-04-06', NULL, 'Delivered'),
('Anand M', 'Chennai', '007', NULL, '2025-04-02', '2025-04-05', NULL, 'Delivered'),
('Priya S', 'Madurai', '012', NULL, '2025-04-01', '2025-04-06', NULL, 'Delivered'),
('Ravi Kumar', 'Chennai', '007', NULL, '2025-04-01', '2025-04-05', NULL, 'Delivered'),
('Hari S', 'Coimbatore', '003', NULL, '2025-03-17', '2025-03-20', NULL, 'Delivered'),
('Latha K', 'Trichy', '021', NULL, '2025-03-17', '2025-03-20', NULL, 'Delivered'),
('Padma V', 'Madurai', '012', NULL, '2025-03-16', '2025-03-22', NULL, 'Delivered'),
('Sathish L', 'Salem', '034', NULL, '2025-03-15', '2025-03-19', NULL, 'Delivered'),
('Ravi Kumar', 'Chennai', '007', NULL, '2025-03-30', NULL, NULL, 'Cancelled'),
('Kavya M', 'Chennai', '003', NULL, '2025-03-14', '2025-03-17', NULL, 'Delivered'),
('Ramesh P', 'Chennai', '007', NULL, '2025-03-14', NULL, NULL, 'Cancelled'),
('Geetha R', 'Trichy', '021', NULL, '2025-03-14', '2025-03-19', NULL, 'Delivered'),
('Vinod C', 'Chennai', '007', NULL, '2025-03-13', '2025-03-20', NULL, 'Delivered'),
('Uma S', 'Madurai', '012', NULL, '2025-03-13', NULL, NULL, 'Cancelled'),
('Prakash N', 'Salem', '034', NULL, '2025-03-12', '2025-03-17', NULL, 'Delivered'),
('Ravi Kumar', 'Chennai', '007', NULL, '2025-03-25', '2025-03-28', NULL, 'Delivered'),
('Revathi B', 'Coimbatore', '003', NULL, '2025-03-12', '2025-03-17', NULL, 'Delivered'),
('Naveen G', 'Chennai', '007', NULL, '2025-03-16', '2025-03-20', NULL, 'Delivered'),
('Manoj K', 'Chennai', '007', NULL, '2025-03-11', '2025-03-14', NULL, 'Delivered'),
('Sneha D', 'Trichy', '021', NULL, '2025-03-11', '2025-03-14', NULL, 'Delivered'),
('Arun J', 'Chennai', '007', NULL, '2025-03-10', NULL, NULL, 'Cancelled'),
('Bhavani S', 'Chennai', '012', NULL, '2025-03-10', '2025-03-15', NULL, 'Delivered'),
('Ravi Kumar', 'Chennai', '007', NULL, '2025-03-20', '2025-03-23', NULL, 'Delivered'),
('Shanti V', 'Coimbatore', '003', NULL, '2025-03-09', '2025-03-13', NULL, 'Delivered');

--------------------------------------------------------------------------------------------

/**"1.Total revenue delivered orders only, alias it total_revenue"
syntax 1:-SELECT column1, column2 
FROM tablename 
WHERE condition;

syntax 2:-select sum(column_name)
from tablename 
where condition;

syntax3:-select column_name AS alias_name
from tablename;

**/


select sum(order_value) AS total_revenue  
from orders
where status='delivered'; 

-----------------------------------------------------------------------------------------------------------------

/**2.how many distinct rating values were actually given ->(count ,not count)

**/
select distinct column1,column2 from tablename;
select distinct rating from orders;

----------------------------------------------------------------------------------------------------------------

/**Q3: Average order value for Chennai orders under ₹10,000, rounded to 2 decimals
syntax:-select avg(column_name) from table_name
**/
SELECT ROUND(AVG(order_value), 2) AS avg_order_value
FROM orders
WHERE city = 'Chennai' AND order_value < 10000;


------------------------------------------------------------------------------------------------------------------------

/**4: The smallest and largest order from Madurai, in one query
sql
SELECT MAX(column_name) AS alias_name FROM tablename;
SELECT MIN(COLUMN_NAME) AS ALIAS_NAME FROM TABLENAME;
**/
SELECT 
    MIN(order_value) AS smallest_order,
    MAX(order_value) AS largest_order
FROM orders
WHERE city = 'Madurai';

select max(column_name) from tablename;
select min(column_name) from tablename;
select max(order_value) from orders where city='madurai';

select * from orders;
--------------------------------------------------------------------------------------------------------------------

/**5: Total revenue from orders that are either cancelled or worth over ₹5,000
SYNTAX;-SELECT AVG(column_name) AS alias_name FROM tablename;
ROUND(number, decimal_places)
sql**/
SELECT SUM(order_value) AS total_revenue
FROM orders
WHERE status = 'Cancelled' OR order_value > 5000;

-------------------------------------------------------------------------------------------------------------------------------

/**Function	:-
1.WHERE- WHERE condition->Rows ni filter cheyyadam means based on the questions conditions applied
2.SUM()- SUM(column)->Values ni add cheyyadam 
3.COUNT()-> COUNT(column)->Rows/values yenni unnayo count cheyyadam
4.DISTINCT->COUNT(DISTINCT column)->Repeat values ni okasare ay count cheyyadam
5.AVG()->AVG(column)->find the avg values
6.MAX()->MAX(column)->find the biggest values
7.MIN()->MIN(column)->find the smallest value
8.ROUND()->	ROUND(number, decimals)->Rounds a number to a specified number of decimal places
9.AND->condition1 AND condition2->Both conditions must be true
10.OR->condition1 OR condition2->At least one condition must be true
11.AS->column AS alias_name->Renames a column/result in the output


**conclusions:-  (Never use = NULL, it doesn't work — always use IS NULL / IS NOT NULL)
-----------------------------------------------------------------------------------------------------
1.NULL/NOT NULL = Table design  chesetappudu use chesevi(rule pettadaniki)
NULL: value ivvakapothe okay (empty undochu). Idi default.
NOT NULL: value kachitanga ivvali, lekapothe error.
CREATE TABLE employees (
    id INT NOT NULL,        -- value compulsory
    name VARCHAR(50) NOT NULL,  -- value compulsory
    phone VARCHAR(15) NULL  -- value ivvakapoyina parvaledu
);

2.IS NULL/IS NOT NULL = Data vethiketappudu (query lo use chesevi)
Value unna rows ni matrame teeskovadaniki. -> is not null
SELECT * FROM employees WHERE phone IS NOT NULL;
Oka column lo value lekapothe (NULL unte) rows ni find cheyadaniki vaadatam.-> is null
SELECT * FROM employees WHERE manager_id IS NULL;

-----------------------------------------------------------------------------------------------------
ex:SELECT * FROM orders WHERE rating IS NULL;
ex:SELECT * FROM orders WHERE rating IS NOT NULL;
--------------------------------------------------------------------------------------------------
ex:CREATE TABLE orders (
    customer_name  VARCHAR(100) NOT NULL,   -- idhe must should used
    rating         INT                       --null (optional)
);
ex:CREATE TABLE orders (
    order_id       INT AUTO_INCREMENT PRIMARY KEY,
    customer_name  VARCHAR(100) NOT NULL,
    city           VARCHAR(50) NOT NULL,
    store_code     VARCHAR(10) NOT NULL,
    order_value    DECIMAL(10,2),
    order_date     DATE NOT NULL,
    delivery_date  DATE,
    rating         INT,
    status         VARCHAR(20) NOT NULL
);
---------------------------------------------------------------------------------------------------------------
IMPORTANT : Your understanding: Since all the order_value and rating data was inserted as NULL,
 when we run aggregate functions (SUM, AVG, MIN, MAX) on these columns, the output comes as NULL. 
 
1.SUM, AVG, MIN, MAX → IVE "numbers meeda math chestay" — numbers lekapothe ay null estay

2.COUNT → idhe yenni unnayo count chesthundhi — numbers lekapoyina 0 esthundhi(NULL ivvadhu).

SO SUM,AVG,MIN,MAX,COUNT ALL AGGREGATE FUNCTIONS -> THIS MEANS MANY ROWS ,RESULT ONE->PERFORMS A CALCULATIONS ON MULTIPLE ROWS RETURN 
A SINGLE ROWS


select

**/
select * from orders;
SELECT status, COUNT(*) AS total_orders, SUM(order_value) AS total_value
FROM orders
GROUP BY status;

SELECT city, COUNT(*) AS total_orders, SUM(order_value) AS total_value
FROM orders
GROUP BY city;

SELECT customer_name, COUNT(*) AS total_orders, SUM(order_value) AS total_value
FROM orders
GROUP BY customer_name;

SELECT city, status, COUNT(*) AS total_orders
FROM orders
GROUP BY city, status;


SELECT city, SUM(order_value) AS total_value
FROM orders
GROUP BY city
HAVING SUM(order_value) > 50000
ORDER BY total_value DESC;

SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city
HAVING COUNT(*) > 100;

SELECT city, status, COUNT(*) as total
FROM orders
GROUP BY city, status;   -- rendu columns group lo unnayi










select * from orders;