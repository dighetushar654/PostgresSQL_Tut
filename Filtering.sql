1)  Using WHERE clause with the equal (=) operator example
The following statement uses the WHERE clause customers whose first names are Jamie:

SELECT last_name, first_name FROM customer WHERE first_name = 'Jamie';

last_name | first_name
-----------+------------
 Rice      | Jamie
 Waugh     | Jamie
(2 rows)
*******************************************************************************************************************************************************************************

2) Using WHERE clause with the AND operator example
This example finds the customers whose last name is Rodriguez or first name is Adam by using the OR operator:

SELECT first_name, last_name FROM customer WHERE last_name = 'Rodriguez' OR first_name = 'Adam';

Laura      | Rodriguez
 Adam       | Gooch

********************************************************************************************************************************************************************************

3) Using WHERE clause with the IN operator example
If you want to match a string with any string in a list, you can use the IN operator.

For example, the following statement returns customers whose first name is Ann, or Anne, or Annie:

SELECT first_name, last_name FROM customer WHERE first_name IN ('Ann','Anne','Annie');

Ann        | Evans
 Anne       | Powell
 Annie      | Russell
***********************************************************************************************************************************************************************************

4) Using the WHERE clause with the LIKE operator example
To find a string that matches a specified pattern, you use the LIKE operator. The following example returns all customers whose first names start with the string Ann:

SELECT first_name, last_name FROM customer WHERE first_name LIKE 'Ann%';

Anna       | Hill
 Ann        | Evans
 Anne       | Powell
 Annie      | Russell
 Annette    | Olson
************************************************************************************************************************************************************************************
5) Using the WHERE clause with the BETWEEN operator example
The following example finds customers whose first names start with the letter A and contains 3 to 5 characters by using the BETWEEN operator.

The BETWEEN operator returns true if a value is in a range of values.

SELECT first_name, LENGTH(first_name) name_length FROM customer WHERE first_name LIKE 'A%' AND LENGTH(first_name) BETWEEN 3 AND 5 ORDER BY name_length;

Amy        |           3
 Ann        |           3
 Ana        |           3
 Andy       |           4
 Anna       |           4
 Anne       |           4
 Alma       |           4
 Adam       |           4
 Alan       |           4
 Alex       |           4
 Angel      |           5
 Agnes      |           5
 Andre      |           5
 Aaron      |           5
 Allan      |           5
 Allen      |           5
 Alice      |           5
 Alvin      |           5
 Anita      |           5
 Amber      |           5
 April      |           5
 Annie      |           5
****************************************************************************************************************************************************************************
6) Using the WHERE clause with the not equal operator (<>) example
This example finds customers whose first names start with Bra and last names are not Motley

SELECT first_name, last_name FROM customer WHERE first_name LIKE 'Bra%' AND last_name <> 'Motley';

Brandy     | Graves
 Brandon    | Huey
 Brad       | Mccurdy
***********************************************************************************************************************************************************************

7) Using PostgreSQL LIMIT OFFSSET to get top / bottom N rows
Typically, you often use the LIMIT clause to select rows with the highest or lowest values from a table.

For example, to get the top 10 most expensive films in terms of rental, you sort films by the rental rate in descending order and use the LIMIT clause to get the first 10 films. The following query illustrates the idea:

SELECT film_id, title, rental_rate FROM film ORDER BY rental_rate DESC LIMIT 10;

13 | Ali Forever         |        4.99
      20 | Amelie Hellfighters |        4.99
       7 | Airplane Sierra     |        4.99
      10 | Aladdin Calendar    |        4.99
       2 | Ace Goldfinger      |        4.99
       8 | Airport Pollock     |        4.99
      98 | Bright Encounters   |        4.99
     133 | Chamber Italian     |        4.99
     384 | Grosse Wonderful    |        4.99
      21 | American Circus     |        4.99
***************************************************************************************************************************************************************************
FETCH vs. LIMIT
The FETCH clause is functionally equivalent to the LIMIT clause. If you plan to make your application compatible with other database systems, you should use the FETCH clause because it follows the standard SQL.

The following query use the FETCH clause to select the first five films sorted by titles:'

SELECT film_id, title FROM film ORDER BY title FETCH FIRST 5 ROW ONLY;

1 | Academy Dinosaur
       2 | Ace Goldfinger
       3 | Adaptation Holes
       4 | Affair Prejudice
       5 | African Egg

The following statement returns the next five films after the first five films sorted by titles:

SELECT film_id, title FROM film ORDER BY title OFFSET 5 ROWS FETCH FIRST 5 ROW ONLY;
    
       6 | Agent Truman
       7 | Airplane Sierra
       8 | Airport Pollock
       9 | Alabama Devil
      10 | Aladdin Calendar
*********************************************************************************************************************************************************************************
PostgreSQL IN operator examples
Suppose you want to know the rental information of customer id 1 and 2, you can use the IN operator in the WHERE clause as follows:

SELECT customer_id, rental_id, return_date FROM rental WHERE customer_id IN (1, 2) ORDER BY return_date DESC;
    
    2 |     15145 | 2005-08-31 15:51:04
           1 |     15315 | 2005-08-30 01:51:46
           2 |     14743 | 2005-08-29 00:18:56
           1 |     15298 | 2005-08-28 22:49:37
           2 |     14475 | 2005-08-27 08:59:32
           1 |     14825 | 2005-08-27 07:01:57
           2 |     15907 | 2005-08-25 23:23:35
           2 |     12963 | 2005-08-23 11:37:04
           1 |     13176 | 2005-08-23 08:50:54
           1 |     14762 | 2005-08-23 01:30:57
           1 |     12250 | 2005-08-22 23:05:29
           1 |     13068 | 2005-08-20 14:44:16
           2 |     11614 | 2005-08-20 07:04:18
           1 |     11824 | 2005-08-19 10:11:54
           1 |     11299 | 2005-08-10 16:40:52
           1 |     10437 | 2005-08-10 12:12:04
           2 |     11177 | 2005-08-10 10:55:48
           2 |     11087 | 2005-08-10 10:37:41
           2 |      9236 | 2005-08-08 18:52:43
           2 |      9296 | 2005-08-08 11:57:13
           2 |      8230 | 2005-08-06 19:52:59
           2 |      9465 | 2005-08-06 16:43:53
           2 |     10466 | 2005-08-06 06:28:26
           2 |      9248 | 2005-08-05 11:19:11
           2 |     11256 | 2005-08-04 16:39:53
           1 |     11367 | 2005-08-04 13:19:38
           2 |      9031 | 2005-08-04 10:45:10
           2 |      7376 | 2005-08-04 10:35:02
           2 |     10136 | 2005-08-03 19:44:56
-- More  --
******************************************************************************************************************************************************************************

PostgreSQL BETWEEN operator examples
The following query use the BETWEEN operator to select payments whose amount is between 8 and 9 (USD):

SELECT customer_id, payment_id, amount FROM payment WHERE amount BETWEEN 8 AND 9;
    
    343 |      17517 |   8.99
         347 |      17529 |   8.99
         347 |      17532 |   8.99
         348 |      17535 |   8.99
         349 |      17540 |   8.99
         379 |      17648 |   8.99
         403 |      17747 |   8.99
         409 |      17775 |   8.99
         423 |      17817 |   8.99
         431 |      17853 |   8.99
         442 |      17886 |   8.99
         465 |      17990 |   8.99
         466 |      17993 |   8.99
         467 |      17997 |   8.99
         468 |      18002 |   8.99
         474 |      18027 |   8.99
         478 |      18040 |   8.99
         483 |      18059 |   8.99
         485 |      18065 |   8.99
         497 |      18099 |   8.99
         510 |      18146 |   8.99
         510 |      18149 |   8.99
         517 |      18180 |   8.99
         519 |      18187 |   8.99
         522 |      18195 |   8.99
         523 |      18199 |   8.99
         537 |      18248 |   8.99
         537 |      18249 |   8.99
   *****************************************************************************************************************************************************************************
    
