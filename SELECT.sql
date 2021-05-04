1) Using PostgreSQL SELECT statement to query data from one column example
This example uses the SELECT statement to find the first names of all customers from the customer table:
SELECT first_name FROM customer;
OUTPUT:
first_name
-------------
 Jared
 Mary
 Patricia
 Linda
 Barbara
 Elizabeth
 Jennifer
 Maria
 Susan
 Margaret
 
 *****************************************************************************************************************************************************************
 2) Using PostgreSQL SELECT statement to query data from multiple columns example
Suppose you just want to know the first name, last name and email of customers, you can specify these column names in the SELECT clause as shown in the following query:

SELECT first_name, last_name, email FROM customer;

OUTPUT:
first_name  |  last_name   |                  email
-------------+--------------+------------------------------------------
 Jared       | Ely          | jared.ely@sakilacustomer.org
 Mary        | Smith        | mary.smith@sakilacustomer.org
 Patricia    | Johnson      | patricia.johnson@sakilacustomer.org
 Linda       | Williams     | linda.williams@sakilacustomer.org
 Barbara     | Jones        | barbara.jones@sakilacustomer.org
 Elizabeth   | Brown        | elizabeth.brown@sakilacustomer.org
 Jennifer    | Davis        | jennifer.davis@sakilacustomer.org
 Maria       | Miller       | maria.miller@sakilacustomer.org
 Susan       | Wilson       | susan.wilson@sakilacustomer.org
 Margaret    | Moore        | margaret.moore@sakilacustomer.org
 Dorothy     | Taylor       | dorothy.taylor@sakilacustomer.org
 Lisa        | Anderson     | lisa.anderson@sakilacustomer.org
 Nancy       | Thomas       | nancy.thomas@sakilacustomer.org
 Karen       | Jackson      | karen.jackson@sakilacustomer.org
 
 **********************************************************************************************************************************************************
 3) Using PostgreSQL SELECT statement to query data from all columns of a table example
The following query uses the SELECT statement to select data from all columns of the customer table:

SELECT * FROM customer;

OUTPUT:
customer_id | store_id | first_name  |  last_name   |                  email                   | address_id | activebool | create_date |       last_update       | active
-------------+----------+-------------+--------------+------------------------------------------+------------+------------+-------------+-------------------------+--------
         524 |        1 | Jared       | Ely          | jared.ely@sakilacustomer.org             |        530 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           1 |        1 | Mary        | Smith        | mary.smith@sakilacustomer.org            |          5 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           2 |        1 | Patricia    | Johnson      | patricia.johnson@sakilacustomer.org      |          6 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           3 |        1 | Linda       | Williams     | linda.williams@sakilacustomer.org        |          7 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           4 |        2 | Barbara     | Jones        | barbara.jones@sakilacustomer.org         |          8 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           5 |        1 | Elizabeth   | Brown        | elizabeth.brown@sakilacustomer.org       |          9 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           6 |        2 | Jennifer    | Davis        | jennifer.davis@sakilacustomer.org        |         10 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           7 |        1 | Maria       | Miller       | maria.miller@sakilacustomer.org          |         11 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
           8 |        2 | Susan       | Wilson       | susan.wilson@sakilacustomer.org          |         12 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1
 ****************************************************************************************************************************************************************
 4) Using PostgreSQL SELECT statement with expressions example
The following example uses the SELECT statement to return full names and emails of all customers:

SELECT first_name || ' ' || last_name, email FROM customer;

OUTPUT:
    ?column?        |                  email
-----------------------+------------------------------------------
 Jared Ely             | jared.ely@sakilacustomer.org
 Mary Smith            | mary.smith@sakilacustomer.org
 Patricia Johnson      | patricia.johnson@sakilacustomer.org
 Linda Williams        | linda.williams@sakilacustomer.org
 Barbara Jones         | barbara.jones@sakilacustomer.org
 Elizabeth Brown       | elizabeth.brown@sakilacustomer.org
 Jennifer Davis        | jennifer.davis@sakilacustomer.org
 Maria Miller          | maria.miller@sakilacustomer.org
 Susan Wilson          | susan.wilson@sakilacustomer.org
 Margaret Moore        | margaret.moore@sakilacustomer.org
 Dorothy Taylor        | dorothy.taylor@sakilacustomer.org
 Lisa Anderson         | lisa.anderson@sakilacustomer.org
 
 **************************************************************************************************************************************************************************
 5) Using PostgreSQL SELECT statement with expressions example
The following example uses the SELECT statement with an expression. It omits the FROM clause:

SELECT 5 * 3;

OUTPUT:
?column?
----------
       15
(1 row)
*************************************************************************************************************************************************************************
