Suppose you have two tables called basket_a and basket_b that store fruits:

CREATE TABLE basket_a (a INT PRIMARY KEY, fruit_a VARCHAR (100) NOT NULL);

CREATE TABLE basket_b (b INT PRIMARY KEY, fruit_b VARCHAR (100) NOT NULL);

INSERT INTO basket_a (a, fruit_a) VALUES (1, 'Apple'), (2, 'Orange'), (3, 'Banana'), (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b) VALUES (1, 'Orange'), (2, 'Apple'), (3, 'Watermelon'), (4, 'Pear');

The tables have some common fruits such as apple and orange.
******************************************************************************************************************************************************************************
PostgreSQL inner join
The following statement joins the first table (basket_a) with the second table (basket_b) by matching the values in the fruit_a and fruit_b columns:

SELECT a, fruit_a, b, fruit_b FROM basket_a INNER JOIN basket_b ON fruit_a = fruit_b;

 a | fruit_a | b | fruit_b
---+---------+---+---------
 1 | Apple   | 2 | Apple
 2 | Orange  | 1 | Orange
(2 rows)
*******************************************************************************************************************************************************************************

PostgreSQL left join
The following statement uses the left join clause to join the basket_a table with the basket_b table. In the left join context, the first table is called the left table and the second table is called the right table.

SELECT a, fruit_a, b, fruit_b FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b;

a | fruit_a  | b | fruit_b
---+----------+---+---------
 1 | Apple    | 2 | Apple
 2 | Orange   | 1 | Orange
 3 | Banana   |   |
 4 | Cucumber |   |
(4 rows)
************************************************************************************************************************************************************************************
PostgreSQL right join
The right join is a reversed version of the left join. The right join starts selecting data from the right table. It compares each value in the fruit_b column of every row in the right table with each value in the fruit_a column of every row in the fruit_a table.

If these values are equal, the right join creates a new row that contains columns from both tables.

In case these values are not equal, the right join also creates a new row that contains columns from both tables. However, it fills the columns in the left table with NULL.

The following statement uses the right join to join the basket_a table with the basket_b table:

SELECT a, fruit_a, b, fruit_b FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b;

a | fruit_a | b |  fruit_b
---+---------+---+------------
 2 | Orange  | 1 | Orange
 1 | Apple   | 2 | Apple
   |         | 3 | Watermelon
   |         | 4 | Pear
(4 rows)
******************************************************************************************************************************************************************************
PostgreSQL full outer join
The full outer join or full join returns a result set that contains all rows from both left and right tables, with the matching rows from both sides if available. In case there is no match, the columns of the table will be filled with NULL.

SELECT a, fruit_a, b, fruit_b FROM basket_a FULL OUTER JOIN basket_b ON fruit_a = fruit_b;

a | fruit_a  | b |  fruit_b
---+----------+---+------------
 1 | Apple    | 2 | Apple
 2 | Orange   | 1 | Orange
 3 | Banana   |   |
 4 | Cucumber |   |
   |          | 3 | Watermelon
   |          | 4 | Pear
(6 rows)
*******************************************************************************************************************************************************************************
