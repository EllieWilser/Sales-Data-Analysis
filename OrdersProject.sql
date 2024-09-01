--Find the top 10 highest revenue generating products
select top 10 product_id, sum(sale_price) as sales
from ProductOrders
group by product_ID
order by sales desc

--Find the top 5 highest selling products in each region
with cte as (
select region, product_id, sum(sale_price) as sales
from ProductOrders
group by region, product_id
)
select * FROM (
select * 
, row_number() over(partition by region order by sales desc) as rank
from cte
) A
where rank<=5

-- Find month over month growth comparison for 2022 and 2023 sales
with cte as (
select year(order_date) as order_year ,
month(order_date) as order_month,  
sum(sale_price) as sales
from ProductOrders
group by  year(order_date), month(order_date)
)

select order_month
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte
group by order_month
order by order_month

-- For each category find which month had the highest sales
with cte as (
select category, order_date, sum(sale_price) as sales
from ProductOrders
group by category, order_date
)
select * from(
select *,
row_number() over(partition by category order by sales desc) as rank
from cte
) A 
where rank=1

--Which subcategory had the highest growth in sales
with cte as (
select sub_category, year(order_date) as order_year ,  
sum(sale_price) as sales
from ProductOrders
group by sub_category, year(order_date)
)
, cte2 as(
select sub_category
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte
group by sub_category
)
select top 3 *
,(sales_2023-sales_2022)*100/sales_2022
from cte2
order by (sales_2023-sales_2022)*100/sales_2022 desc