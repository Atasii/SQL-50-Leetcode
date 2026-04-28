# 🛒 Customers Who Bought All Products (LeetCode 1045)

## 📌 Problem Overview

This project solves the **"Customers Who Bought All Products"** problem using SQL.

We are given two tables:

- `Customer` → contains customer purchases
- `Product` → contains all available products

The goal is to **find customers who purchased every product listed in the Product table**.

---

## 🗂️ Table Schema

### Customer

| Column Name | Type |
| ----------- | ---- |
| customer_id | int  |
| product_key | int  |

- May contain **duplicate rows**
- Each row represents a purchase

---

### Product

| Column Name | Type |
| ----------- | ---- |
| product_key | int  |

- `product_key` is the **primary key**
- Contains all unique products

---

## 🎯 Objective

Return all `customer_id` who:

- Bought **all products** present in the `Product` table

---

## 💡 Approach

We use:

- `GROUP BY` to group purchases by customer
- `COUNT(DISTINCT product_key)` to count unique products per customer
- A subquery to count total products
- `HAVING` to compare both counts

---

## 📊 Example

### Input

#### Customer

| customer_id | product_key |
| ----------- | ----------- |
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

#### Product

| product_key |
| ----------- |
| 5           |
| 6           |

---

### Output

| customer_id |
| ----------- |
| 1           |
| 3           |

---

### Explanation

- Total products = **2 (5 and 6)**
- Customer 1 bought → 5, 6 ✅
- Customer 3 bought → 5, 6 ✅
- Customer 2 bought → only 6 ❌

---

## 🧠 Key Learnings

- Using `COUNT(DISTINCT ...)` to avoid duplicates
- Comparing aggregated results with subqueries
- Identifying “has all items” patterns

---

## 🚀 Skills Practiced

- SQL Aggregation
- Subqueries
- Filtering Groups
- Logical Problem Solving

---

## ⚠️ Common Mistakes

❌ Using `COUNT(product_key)`  
➡️ Counts duplicates, gives wrong result

❌ Forgetting `DISTINCT`  
➡️ Same product counted multiple times

❌ Using `WHERE` instead of `HAVING`  
➡️ Aggregation filters must use `HAVING`

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
