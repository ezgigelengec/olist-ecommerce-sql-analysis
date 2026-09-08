# Olist E-Commerce SQL Analysis

## Project Overview

This project analyzes the Brazilian E-Commerce Public Dataset by Olist using SQLite. The analysis focuses on customers, sales, products, payment methods, and customer reviews.

The goal of this project is to practice SQL with a real e-commerce dataset and find useful patterns in the data.

## Dataset

The project uses the Brazilian E-Commerce Public Dataset by Olist. The dataset contains information about customers, orders, products, payments, sellers, and customer reviews.

The data is stored in multiple related tables, which makes it suitable for practicing SQL joins and e-commerce analysis.

## Tools & SQL Skills

- SQLite
- DB Browser for SQLite
- JOIN
- WHERE
- GROUP BY and HAVING
- Aggregate functions: COUNT, SUM, AVG
- DISTINCT
- Date grouping with strftime()

## Analysis

The project includes five main analysis areas:

- Customer Analysis: customer distribution by state and repeat customers
- Sales Analysis: total product sales value and monthly sales performance
- Product Analysis: top product categories by sales value, number of items sold, and average price
- Payment Analysis: payment method usage
- Review Analysis: customer review score distribution

## Key Findings

- São Paulo (SP) has the highest number of customer records with 41,746.
- There are 96,096 unique customers, and 2,802 of them have more than one delivered order. This represents about 2.9% of unique customers.
- The total product sales value from delivered orders is approximately BRL 13.22 million.
- November 2017 has the highest monthly product sales value among delivered orders, with approximately BRL 987.77 thousand and 7,289 orders.
- Health & Beauty has the highest product sales value among the product categories.
- Credit card is the most common payment method among delivered orders, with 74,586 payment records.
- 5-star reviews are the most common, with 57,328 reviews.

## Data Notes

- Sales, product category, repeat customer, and payment analyses use delivered orders.
- Product sales value is calculated using the `price` column and does not represent Olist's net revenue or profit.
- Payment counts represent payment records, not unique orders.
- The first and last months in the dataset contain limited data, so they should be interpreted carefully.
