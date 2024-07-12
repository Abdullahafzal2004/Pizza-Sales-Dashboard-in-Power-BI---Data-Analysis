select round(sum(total_price),0)
from pizza_sales
select sum(total_price)/count(distinct order_id)  AvgOrderValue
from pizza_sales
select sum(quantity) from pizza_sales
select count(distinct order_id) Total_Orders
from pizza_sales
SELECT CAST((SUM(quantity)) / 
(COUNT(DISTINCT order_id)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales

Select DATENAME (MONTH,ORDER_DATE) "MONTH", COUNT(DISTINCT (ORDER_ID)) "TOTAL ORDERS"
FROM pizza_sales
GROUP BY DATENAME(MONTH,order_date)

SELECT pizza_category,SUM(TOTAL_PRICE) "Total Revenue" ,cast(sum(total_price)*100/ (select sum(total_price) from pizza_sales) as decimal(10,2))
FROM pizza_sales
group by pizza_category

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
