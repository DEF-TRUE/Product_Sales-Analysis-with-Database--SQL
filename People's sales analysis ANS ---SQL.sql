USE PRODUCT_SALES;

SELECT *FROM sales_data_sample;

ALTER TABLE sales_data_sample
RENAME column CUSTOMERNAME TO Customer_Name ;


-- Which country sold the most product ?
SELECT COUNTRY ,count(PRODUCTCODE) as product
FROM sales_data_sample
  GROUP BY COUNTRY
   ORDER BY product DESC
   limit 1;
   
   -- WHO IS THE BEST CUSTOMER?
   SELECT  Customer_Name, SALES 
   FROM sales_data_sample
   ORDER BY SALES DESC
      LIMIT 1;
      
	
	-- Across all their products, which one is the bestselling?

SELECT PRODUCTLINE,round(sum(SALES),3) as Sales
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY Sales DESC
limit 1;
 
 
 --   	What was the best year for sales?
 
SELECT YEAR_ID,round(sum(SALES),2) AS SALES
FROM sales_data_sample
GROUP BY YEAR_ID
ORDER BY SALES DESC
limit 1;



    -- 	What was the best month for sales?
    
SELECT  MONTH_ID ,sum(SALES) as SALES
FROM sales_data_sample
GROUP BY MONTH_ID
ORDER BY SALES DESC
  limit 1;

