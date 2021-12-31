SELECT * 
FROM customers;

SELECT count(*) 
FROM customers;

SELECT * 
FROM transactions 
WHERE market_code='Mark001';

SELECT distinct product_code 
FROM transactions
WHERE market_code='Mark001';

SELECT * 
FROM transactions
WHERE currency="USD";

SELECT transactions.*, date.* 
FROM transactions 
INNER JOIN date 
          ON transactions.order_date=date.date 
WHERE date.year=2020;

SELECT SUM(transactions.sales_amount) 
FROM transactions 
INNER JOIN date 
          ON transactions.order_date=date.date 
WHERE date.year=2020 
          AND transactions.currency="INR\r" 
          OR transactions.currency="USD\r";
          
SELECT SUM(transactions.sales_amount) 
FROM transactions 
INNER JOIN date 
           ON transactions.order_date=date.date 
WHERE date.year=2020 
           AND date.month_name="January" 
           AND (transactions.currency="INR\r" 
           OR transactions.currency="USD\r");
           
SELECT SUM(transactions.sales_amount) 
FROM transactions 
INNER JOIN date 
		   ON transactions.order_date=date.date
WHERE date.year=2020 
		   AND transactions.market_code="Mark001";
           







