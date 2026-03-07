# Advanced Sales Analytics (SQL)

## 📌 Project Overview
This project demonstrates advanced SQL analysis on a simulated e-commerce sales database.  
The goal of the project is to extract meaningful business insights using advanced SQL techniques such as joins, CTEs, aggregations, and window functions.

The project analyzes customer behavior, product performance, revenue trends, and return patterns.

---

## 🗂 Database Structure
The relational database includes the following core tables:

- **customers** – customer information and signup data  
- **products** – product catalog and pricing  
- **orders** – customer orders and order status  
- **order_items** – individual products included in each order  
- **payments** – payment transactions for orders  
- **returns** – returned products and return reasons  

This structure simulates a typical **e-commerce data model**.

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

## 📈 Analysis Implemented

### 1. Monthly Revenue Analysis
- Calculated monthly revenue using `DATE_TRUNC`
- Compared each month to the previous month using `LAG`
- Measured revenue change and trend direction

### 2. Revenue Trend Classification
- Calculated **percentage change in revenue**
- Classified months as:
  - Increase
  - Decrease
  - No Change
  - No Previous Data

### 3. Customer Revenue Ranking
- Ranked customers by total revenue using `RANK()`
- Identified high-value customers

### 4. Inactive Customers Detection
- Identified customers who have not placed an order in the last 6 months
- Useful for customer retention campaigns

### 5. Product Return Rate Analysis
- Calculated the **return rate for each product**
- Compared returned items to total sold items
- Helps identify potential product quality issues

---

## 📊 Example Business Insights
Examples of insights generated from the analysis:

- Detection of monthly revenue increases or declines
- Identification of high-value customers
- Detection of inactive customers who may require retention actions
- Identification of products with high return rates

---

## 📁 Repository Structure

- **schema.sql** – database schema creation  
- **sample_data.sql** – sample data for testing and analysis  
- **advanced_queries.sql** – SQL analysis queries  

---

## 👤 Author
**Raz Ben-Yehuda**  
B.Sc. Industrial Engineering & Management  
Specialization in Information Systems & Business Analytics

