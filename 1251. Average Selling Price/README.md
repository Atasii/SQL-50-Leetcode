# 💰 Average Selling Price (LeetCode 1251)

## 📌 Problem Overview

This project solves the **"Average Selling Price"** problem using SQL.

We are given two tables:

- `Prices`: contains price ranges for each product over time
- `UnitsSold`: contains records of product sales

The goal is to compute the **average selling price for each product**, weighted by the number of units sold.

---

## 🗂️ Table Schema

### Prices

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

- Each row represents a **price valid within a date range**
- No overlapping date ranges per product

---

### UnitsSold

| Column Name   | Type |
| ------------- | ---- |
| product_id    | int  |
| purchase_date | date |
| units         | int  |

- Each row represents units sold on a specific date
- May contain duplicates

---

## 🎯 Objective

For each `product_id`, calculate:

> **Average Selling Price = (Total Revenue) / (Total Units Sold)**

Where:

- Revenue = `price × units`
- Match each sale to the correct price based on date

If a product has **no sales**, return `0`.

---

## 📊 Example

### Input

**Prices**

| product_id | start_date | end_date   | price |
| ---------- | ---------- | ---------- | ----- |
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

**UnitsSold**

| product_id | purchase_date | units |
| ---------- | ------------- | ----- |
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

---

### Output

| product_id | average_price |
| ---------- | ------------- |
| 1          | 6.96          |
| 2          | 16.96         |

---

## 🧠 Key Learnings

- Joining tables using **range conditions (`BETWEEN`)**
- Computing **weighted averages**
- Handling missing data using `IFNULL`
- Using `LEFT JOIN` to include all products
- Aggregation with `SUM()`

---

## 🚀 Skills Practiced

- SQL Joins
- Aggregation
- Date Filtering
- Conditional Handling

---

## ⚠️ Common Mistakes

❌ Joining only on `product_id`
➡️ Leads to incorrect price matching

❌ Ignoring date range condition
➡️ Wrong revenue calculation

❌ Using `INNER JOIN`
➡️ Drops products with no sales

❌ Not handling division by NULL
➡️ Results in NULL instead of 0

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
