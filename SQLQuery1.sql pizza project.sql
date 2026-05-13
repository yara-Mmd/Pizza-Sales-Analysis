
SELECT SUM (total_price) AS
Total_Revenue 
FROM [pizza data sql];
--
SELECT (SUM(total_price)/COUNT(DISTINCT order_id))AS
AVG_order_value
FROM [pizza data sql];
--
SELECT SUM (quantity)AS
Total_pizza_Sold FROM [pizza data sql];
--
SELECT COUNT (DISTINCT order_id)
AS Total_orders FROM [pizza data sql];
--
SELECT CAST (SUM(quantity)AS FLOAT)/CAST(COUNT(DISTINCT order_id)AS FLOAT )AS
AVG_pizzas_per_order FROM [pizza data sql];
--
SELECT DATENAME(DW, order_date) AS Order_Day, COUNT(DISTINCT order_id) AS Total_Orders
FROM [pizza data sql]
GROUP BY DATENAME(DW, order_date);
--
SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM [pizza data sql]
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC;
--
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as Total_Revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from [pizza data sql]) AS DECIMAL(10,2)) AS PCT
FROM [pizza data sql]
GROUP BY pizza_category;
--
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM [pizza data sql]
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;
--
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as Total_Revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from [pizza data sql]) AS DECIMAL(10,2)) AS PCT
FROM [pizza data sql]
GROUP BY pizza_size
ORDER BY PCT DESC;
--
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM [pizza data sql]
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;
--