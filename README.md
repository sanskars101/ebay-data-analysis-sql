# ebay-data-analysis-sql
SQL project simulating an e-commerce database with users, products, orders, payments, and feedback, including analytical queries for insights

# Ebay Data Analysis (SQL Project)

## 📌 Project Overview
This project is a **SQL-based simulation of an E-commerce (Ebay-like) database**.  
It includes database schema design, sample data insertion, and analytical queries to extract business insights such as revenue trends, order statuses, and user purchase behavior.

## 🗂️ Database Schema
The project contains the following tables:
- **Users** → Buyers & Sellers
- **Products** → Items listed for sale
- **Orders** → Purchases made by users
- **Payments** → Payment transactions linked to orders
- **Feedback** → Reviews & ratings for products

Relationships:
- Users ↔ Products (seller–product link)  
- Users ↔ Orders (buyer–order link)  
- Orders ↔ Payments (one-to-one)  
- Orders ↔ Feedback (reviews)

## ✨ Key Features
- Create and populate database with realistic sample data  
- Run analytical SQL queries for insights:
  - Unique product categories
  - Top 5 most expensive products
  - Revenue trends by month
  - Percentage distribution of order statuses
  - Users who spent the most
  - Products with average ratings

## ⚙️ Technologies Used
- MySQL / SQL Workbench
- SQL (DDL & DML commands, joins, subqueries, aggregations)

## 🚀 How to Run
1. Clone this repository  
   ```bash
   git clone https://github.com/yourusername/ebay-data-analysis-sql.git
Open Ebay data analysis.sql in MySQL Workbench (or any SQL IDE).

Execute the script to:

Create database and tables

Insert sample data

Run analysis queries

📊 Example Query
sql
Copy code
-- Find total revenue by month (descending order)
SELECT SUM(TotalAmount) AS total_revenue, 
       DATE_FORMAT(OrderDate, '%M') AS month
FROM Orders
GROUP BY month
ORDER BY total_revenue DESC;
📈 Future Enhancements
Add stored procedures and triggers

Create database views for reporting

Visualize insights in Power BI / Tableau
