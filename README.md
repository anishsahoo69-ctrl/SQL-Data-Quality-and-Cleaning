# SQL Data Quality and Cleaning

## 📌 Project Overview

This project focuses on improving data quality using **SQL and MySQL Workbench**. It involves identifying incomplete, inconsistent, and duplicate records and applying appropriate cleaning and transformation techniques to make data more accurate and reliable.

The project uses the ClassicModels database to perform practical SQL operations related to data cleaning, validation, and standardisation.

## 🎯 Project Objectives

* Identify and handle missing or NULL values.
* Clean and standardise customer names.
* Perform email and phone number cleaning.
* Detect duplicate records.
* Analyse order details and order statuses.
* Transform and validate product information.
* Identify inconsistent data.
* Standardise values across tables.
* Improve overall data quality.

## 🛠️ Technologies Used

* **Database:** MySQL
* **IDE:** MySQL Workbench
* **Language:** SQL
* **Version Control:** Git & GitHub

## 📚 SQL Concepts Covered

| SQL Concept       | Purpose                      |
| ----------------- | ---------------------------- |
| SELECT            | Retrieve data from tables    |
| WHERE             | Filter records               |
| IS NULL           | Identify missing values      |
| COALESCE          | Handle NULL values           |
| DISTINCT          | Find unique values           |
| TRIM()            | Remove unwanted spaces       |
| UPPER() / LOWER() | Standardise text             |
| CONCAT()          | Combine strings              |
| REPLACE()         | Replace unwanted characters  |
| REGEXP_REPLACE()  | Clean text using patterns    |
| GROUP BY          | Group records                |
| HAVING            | Filter grouped results       |
| COUNT()           | Count records                |
| CASE              | Apply conditional logic      |
| UPDATE            | Modify existing records      |
| LIKE              | Search for matching patterns |
| JOIN              | Combine related tables       |

## 📂 Project Tasks

### 1. Missing Value Identification

* Find records containing NULL values.
* Identify missing customer information.
* Count missing values in selected columns.

### 2. Customer Name Cleaning

* Remove unwanted spaces.
* Standardise customer names.
* Convert names into uppercase or lowercase.
* Combine first and last names.

### 3. Email Cleaning

* Identify missing email addresses.
* Convert email addresses into lowercase.
* Check email formats using pattern matching.

### 4. Phone Number Cleaning

* Remove unnecessary spaces and special characters.
* Standardise phone number formats.
* Identify incomplete phone numbers.

### 5. Duplicate Detection

* Identify duplicate customer records.
* Find repeated phone numbers.
* Detect duplicate product names.
* Use GROUP BY and HAVING to identify duplicates.

### 6. Order Data Analysis

* Analyse different order statuses.
* Identify cancelled and unshipped orders.
* Classify orders using CASE statements.
* Check inconsistent order dates.

### 7. Product Data Transformation

* Transform product codes and names.
* Identify missing product descriptions.
* Validate product prices and stock quantities.

### 8. Data Inconsistency Detection

* Identify customers with missing sales representatives.
* Find orders without matching customer records.
* Check invalid quantities and prices.
* Identify negative stock values.

### 9. Data Standardisation

* Standardise text values.
* Remove unwanted spaces.
* Maintain consistent country names and order statuses.

## 📁 Repository Structure

```text
SQL-Data-Quality-and-Cleaning/
│
├── SQL/
│   └── data_cleaning.sql
│
├── Screenshots/
│   ├── missing_values.png
│   ├── name_cleaning.png
│   ├── email_cleaning.png
│   ├── phone_cleaning.png
│   ├── duplicate_detection.png
│   ├── order_analysis.png
│   ├── product_transformation.png
│   └── final_output.png
│
└── README.md
```

## 🚀 How to Run the Project

1. Install MySQL Workbench.
2. Import or open the ClassicModels database.
3. Open the `data_cleaning.sql` file.
4. Select the ClassicModels database:

```sql
USE classicmodels;
```

5. Execute the SQL queries one by one.
6. Check the results in the output section of MySQL Workbench.
7. Save screenshots of the query results.

**Note:** Some cleaning queries, particularly email-related queries, require an email column. The standard ClassicModels customer table does not contain one. Adjust those queries according to your actual database schema. Always inspect and back up data before executing UPDATE statements.


## 🎓 Learning Outcomes

Through this project, I learned how to:

* Work with real-world database records.
* Identify and handle missing data.
* Clean and transform textual information.
* Detect duplicate records.
* Apply conditional SQL logic.
* Validate inconsistent data.
* Improve database quality using SQL.

## 👨‍💻 Author

**Anish Sahoo**

B.Tech Computer Science and Information Technology
SOA University – ITER, Bhubaneswar

* **GitHub:** [anishsahoo69-ctrl](https://github.com/anishsahoo69-ctrl)
* **LinkedIn:** [Anish Sahoo](https://www.linkedin.com/in/anish-sahoo-a68bba367/)

---

⭐ If you find this project useful, feel free to explore the repository!

**Thank you for visiting!**
