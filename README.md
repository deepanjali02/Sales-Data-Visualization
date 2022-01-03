# Sales-Data-Visualization
Sales data exploration with SQL and data visualization in PowerBI.
## Sales-Data-Viz in PowerBI 
![](https://github.com/deepanjali02/Sales-Data-Visualization/blob/main/Sales%20Insight%20POWERBI%20Reprots%20IMG.jpg)
## This is a portfolio project I made with a datasets of a computer hardware company. <br />
### *Problem Statement* - Computer Hardware manufacturer is facing issues in terms of their sales. <br/> <br/>
I've done the data analysis and data cleaning in SQL and made a dashboard in Microsoft PowerBI. <br/>
PowerBI dashboard where stakeholders can- <br/>
1. Track revenue numbers <br/>
2. Track sales quantity number year over year. <br/>
3. Revenue breakdown by regions and by products. <br/>
4. Track the revenue trends. <br/>

### Data Analysis Using SQL
Skills used: Joins, Aggregate Functions, Creating Views, Converting Data Types, Distinct function </br>

-- Show all customer records

`SELECT *
 FROM customers;`

-- Show total number of customers

`SELECT count(*) 
 FROM customers;`

-- Show transactions for Chennai market (market code for chennai is Mark001

`SELECT * 
 FROM transactions where market_code='Mark001';`

-- Show distrinct product codes that were sold in chennai

`SELECT distinct product_code 
 FROM transactions 
 WHERE market_code='Mark001';`

-- Show transactions where currency is US dollars

`SELECT * 
FROM transactions 
WHERE currency="USD";`

-- Show transactions in 2020 join by date table

`SELECT transactions.*, date.* 
 FROM transactions 
      INNER JOIN date 
           ON transactions.order_date=date.date 
 WHERE date.year=2020;`

-- Show total revenue in year 2020

`SELECT SUM(transactions.sales_amount) 
 FROM transactions 
      INNER JOIN date 
            ON transactions.order_date=date.date 
 WHERE date.year=2020 and transactions.currency="INR\r" OR transactions.currency="USD\r";`

-- Show total revenue in year 2020, January Month

`SELECT SUM(transactions.sales_amount) 
 FROM transactions 
      INNER JOIN date 
           ON transactions.order_date=date.date 
 WHERE date.year=2020 and and date.month_name="January" AND (transactions.currency="INR\r" or transactions.currency="USD\r");`

-- Show total revenue in year 2020 in Chennai

`SELECT SUM(transactions.sales_amount) 
 FROM transactions 
      INNER JOIN date 
            ON transactions.order_date=date.date 
 WHERE date.year=2020 AND transactions.market_code="Mark001";`
