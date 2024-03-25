--IMPORT AND PREVIEW DATA
select * from pizza_sales

--TO FIND TOTAL REVENUE
SELECT SUM(TOTAL_PRICE) AS Total_revenue FROM pizza_sales


--to find average order value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) as avg_order_value from pizza_sales


--to find the sum of total orders
select count(distinct order_id) as total_orders from pizza_sales

--to fnd average pizza per order
select CAST (CAST (sum(quantity) AS DECIMAL(10,2)) / CAST (count(distinct order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS AVG_PIZZAS_PER_ORDER from pizza_sales

--to find total orders by day
SELECT DATENAME (DW, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
GROUP BY DATENAME(DW, order_date)
 
SELECT DATENAME (MONTH, order_date) as Month_Name, COUNT (DISTINCT order_id) as Total_orders from pizza_sales
GROUP  BY DATENAME (MONTH, Order_date)
ORDER BY Total_orders


--to find percentage of each pizza category order
select pizza_category, sum(total_price) *100 / (select sum (total_price) from pizza_sales) as total_sales_per_category
from pizza_sales 
Group by pizza_category

select pizza_size, sum(total_price) *100 / (select sum (total_price) from pizza_sales) as total_sales_per_size
from pizza_sales 
Group by pizza_size
order by total_sales_per_size desc

--to find top 5 pizza by revenue
select Top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name 
order by Total_revenue desc

--to find least 5 pizza by revenue
select Top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by Total_revenue asc


