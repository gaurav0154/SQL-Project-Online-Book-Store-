📚 Online Bookstore SQL Project
📝 Overview
Welcome to the Online Bookstore SQL Project, a simulation of a real-world e-commerce backend built entirely with SQL. This project models the core operations of an online bookstore — managing books, customers, and orders — through a normalized relational database.
Designed for Data Analysts, MIS Executives, and SQL enthusiasts, this project showcases advanced query logic, schema design, and business insight generation.

🛠️ Tools & Technologies
- SQL (PostgreSQL / MySQL)
- Relational Schema Design
- Joins, Subqueries, Aggregate Functions, CTEs
- Query Optimization & Reporting

📦 Database Schema
The project consists of three main entities:
- Books: Contains details like title, author, genre, published year, price, and stock quantity.
- Customers: Stores customer information including name, email, phone number, city, and country.
- Orders: Tracks purchases using customer ID, book ID, order date, quantity, and total amount (calculated as quantity × book price).
All tables are connected via primary and foreign keys to maintain relational integrity.

🔍 Key Functionalities
- Retrieve books by genre, publication year, or price range
- Track orders by date, quantity, and customer location
- Calculate total stock, revenue, and sales per genre or author
- Identify best-selling books and frequent customers
- Monitor inventory levels after order fulfillment

📈 Sample Business Insights
- Top-selling genres and authors based on quantity sold
- Most expensive books in a specific genre (e.g., Fantasy)
- Cities with high-value customers (spending above a threshold)
- Loyal customers who placed two or more orders
- Remaining stock after fulfilling all orders

🧠 Advanced SQL Queries Demonstrated
- Aggregate sales by genre and author
- Find the most frequently ordered book
- Calculate average book price by genre
- Track revenue and segment customers based on spending
- Implement inventory depletion logic using COALESCE and LEFT JOIN

🎓 Learnings & Skills Applied
- Designed a normalized schema with proper key relationships
- Wrote complex SQL queries using SELECT, JOIN, GROUP BY, HAVING, ORDER BY
- Translated business logic into actionable SQL queries
- Summarized and analyzed data for business reporting
- Simulated real-world backend operations including inventory and customer management

📌 Why This Project Matters
This project is more than just a database — it's a miniature e-commerce engine. It reflects:
- Real-world business logic
- Analytical thinking
- Technical precision
- Portfolio-ready presentation
Perfect for:
- Internship applications
- Technical interviews
- Skill demonstrations
