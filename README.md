# Sales-Data-Analysis

This project analyzes sales data received from Kaggle. The project takes on three parts which are cleaning in Python, answering common business questions in SQL, and lastly making a dashboard in Tableau. My main motivation behind this project was communicating to executives opportunities for growth in sales. In SQL, we discovered the top-selling products in each region, what products have the most revenue, and other important information. The Tableau dashboard tells a story to executives by showing them what products have low sales, and where we need to focus marketing. Also, it shows that sales are ____ over time, as well as, what times of the year are the company's most successful.

## Cleaning in Python

The project started by loading the data into Python to get a feel for the data and create a few calculated columns. Using seaborn, I got a feel for the distribution of each numeric column.

![image](https://github.com/user-attachments/assets/801a0854-8d03-4f6c-af24-70b00c48aee4)

As seen in the graph above, many of the columns that have to deal with price are skewed due to high products, but there are a significant amount of these. Further investigation would have to occur into the source of the, but for this project, it was assumed these numbers were accurate, so they were left in for analysis. 

In this step, columns like profit and discount were added to aid in the analysis.

## Analysis in SQL

Uses SQL I answered five common business questions that were

1. Find the top 10 highest revenue-generating products
2. Find the top 5 highest-selling products in each region
3. Find month-over-month growth comparison for 2022 and 2023 sales
4. For each category find which month had the highest sales
5. Find which subcategory had the highest growth in sales

This data allows people to access which products are selling the best, and what categories though products fall under. It also shows which months were the most successful.

## Tableau Dashboard
