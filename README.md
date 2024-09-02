# Sales-Data-Analysis

This project analyzes sales data received from Kaggle. The project takes on three parts: cleaning in Python, answering common business questions in SQL, and making a dashboard in Tableau. My main motivation behind this project was communicating opportunities for sales growth to executives. In SQL, we discovered the top-selling products in each region, what products have the most revenue, and other important information. The Tableau dashboard tells a story to executives by showing what states generated the most profits, and which categories of products are selling the most. Also, it shows that profits are stagnant over time, as well as, what times of the year are the company's most successful.

## Cleaning in Python

The project started by loading the data into Python to get a feel for the data and create a few calculated columns. Using seaborn, I got a feel for the distribution of each numeric column.

![image](https://github.com/user-attachments/assets/801a0854-8d03-4f6c-af24-70b00c48aee4)

As seen in the graph above, many of the columns that deal with price are skewed due to highly-priced products, but there are a significant amount of these. Further investigation would have to occur into the source of the skewed data points, but for this project, it was assumed these numbers were accurate, so they were left in for analysis. 

In this step, the columns like profit and discount were added to aid analysis.

## Analysis in SQL

Uses SQL I answered five common business questions that were

1. Find the top 10 highest revenue-generating products
2. Find the top 5 highest-selling products in each region
3. Find month-over-month growth comparison for 2022 and 2023 sales
4. For each category find which month had the highest sales
5. Find which subcategory had the highest growth in sales

This data allows people to access which products are selling the best, and what categories though products fall under. It also shows which months were the most successful.

## Tableau Dashboard

The last part of the project was making a dashboard in Tableau, and I focused on showing profits. This was my first time working in Tableau because I mainly work with PowerBi, but I want to start learning another program. The dashboard has 4 main visuals with slicers that allow the user to see the orders month and month and slice on the different categories. 
