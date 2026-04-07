-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
INSERT ALL
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001)
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001)
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002)
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002)
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006)
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007)
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005)
SELECT 1 FROM DUAL;


--Write an SQL statement to know which salesman are working for which customer.

select customers.customer_name,salesman.salesman_name
from CUSTOMERS 
inner join SALESMAN ON  customers.SALESMAN_ID=salesman.SALESMAN_ID;

--Write an SQL statement to make a list of customers in ascending order with a salesman that have a grade less than 300.


select customers.customer_name,salesman.salesman_name
from salesman
inner join customers on salesman.SALESMAN_ID=customers.SALESMAN_ID
WHERE salesman.GRADE <= 300
ORDER BY CUSTOMERS.CUSTOMER_NAME ASC;


--Write an SQL statement to find the list of customers who appointed a salesman who gets a commission of more than 12%.

SELECT CUSTOMERS.CUSTOMER_NAME,SALESMAN.SALESMAN_NAME,SALESMAN.COMMISSION
FROM CUSTOMERS
INNER JOIN SALESMAN ON CUSTOMERS.SALESMAN_ID=SALESMAN.SALESMAN_ID
WHERE SALESMAN.COMMISSION > 12;

SELECT * FROM CUSTOMERS;
SELECT *FROM SALESMAN;
SELECT * FROM ORDERS;


--Write an SQL statement to find the following details of an order - order number, order date, purchase amount of order, which customer gives the order and which salesman works for that customer and commission rate they get for the order.

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.salesman_name AS "Salesman", c.commission FROM orders a 
INNER JOIN customers b ON a.customer_id=b.customer_id 
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;


--Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007.

select orders.order_no,salesman.salesman_name
from salesman
inner join orders on orders.salesman_id=salesman.salesman_id;
where orders.customer_id= 3007;

--Write a query to find all orders attributed to a salesman in New York.

select order_no,salesman_id
from orders
where salesman_id=(select salesman_id from salesman where salesman_city='new york');

--Write a query to count the customers with grades above New York's average.

select count(customer_id) as total_customers
from CUSTOMERS
where grade > (select avg(grade) from salesman where salesman_city='new york');