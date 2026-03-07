# Advanced Sales Analytics (SQL)

## 📌 Project Overview
This project demonstrates advanced SQL analysis on a simulated e-commerce sales database.

The goal of the project is to extract meaningful business insights using advanced SQL techniques such as joins, CTEs, aggregations, and window functions.

The analysis focuses on customer behavior, product performance, revenue trends, and product return patterns.

---

## 🗂 Database Structure

The relational database includes the following core tables:

- **customers** – customer information and signup data  
- **products** – product catalog and pricing  
- **orders** – customer orders and order status  
- **order_items** – individual products within each order  
- **payments** – payment transactions for orders  
- **returns** – returned products and return reasons  

This schema simulates a typical **e-commerce sales database**.

---

## 🖥 Technologies

- PostgreSQL
- SQL
- pgAdmin

### SQL Techniques Used

- JOINs
- Aggregations
- CTEs (Common Table Expressions)
- Window Functions (`LAG`, `RANK`)
- CASE WHEN logic

---

# 📈 Analysis Implemented

## 1. Monthly Revenue Analysis
- Calculated monthly revenue using `DATE_TRUNC`
- Compared revenue to the previous month using `LAG`
- Identified revenue growth and decline trends

## 2. Revenue Trend Classification
- Calculated **percentage change in revenue**
- Classified revenue trends using `CASE WHEN`

Trend categories:
- Increase
- Decrease
- No Change
- No Previous Data

## 3. Customer Revenue Ranking
- Ranked customers by total revenue using `RANK()`
- Identified high-value customers

## 4. Inactive Customers Detection
- Identified customers who have not placed an order in the last 6 months
- Useful for customer retention analysis

## 5. Product Return Rate Analysis
- Calculated **return rate per product**
- Compared number of returned items to total items sold
- Helps identify potential product quality issues

## 6. Top Products per Category
- Calculated total revenue per product
- Ranked products **within each category** using `RANK()`
- Identified the best-performing products in each category

---

# 📊 Example Business Insights

The analysis enables insights such as:

- Detecting monthly revenue increases or declines
- Identifying high-value customers
- Detecting inactive customers that may require retention actions
- Identifying products with high return rates
- Finding top-performing products within each category

---

# 📁 Repository Structure

- **schema.sql** – database schema creation  
- **sample_data.sql** – sample data used for analysis  
- **advanced_queries.sql** – SQL analysis queries

---

# 👤 Author

**Raz Ben-Yehuda**  
B.Sc. Industrial Engineering & Management  
Specialization in Information Systems & Business Analytics

