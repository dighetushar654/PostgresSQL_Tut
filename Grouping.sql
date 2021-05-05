1) Using PostgreSQL GROUP BY without an aggregate function example
You can use the GROUP BY clause without applying an aggregate function. The following query gets data from the payment table and groups the result by customer id.

SELECT customer_id FROM payment GROUP BY customer_id;

         184
          87
         477
         273
         550
          51
         394
         272
          70
         190
         350
         539
         
  *****************************************************************************************************************************************************************************
  
