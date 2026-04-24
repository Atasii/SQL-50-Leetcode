# 📦 Product Sales Analysis I (LeetCode 1068)

## 📌 Problem Overview

This project solves the **"Product Sales Analysis I"** problem using SQL.

We are given two tables:

- `Sales`: contains sales transactions
- `Product`: contains product details

The goal is to **retrieve product name, year, and price for each sale**.

---

## 🗂️ Table Schema

### Sales

| Column Name | Type |
| ----------- | ---- |
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

- `(sale_id, year)` is the **composite primary key**
- `product_id` is a **foreign key**

---

### Product

| Column Name  | Type    |
| ------------ | ------- |
| product_id   | int     |
| product_name | varchar |

- `product_id` is the **primary key**

---

## 🎯 Objective

Return:

- `product_name`
- `year`
- `price`

For each record in the `Sales` table.

---

## 💡 Approach

We use an **INNER JOIN**:

- Join `Sales` and `Product` using `product_id`
- Extract required columns from both tables

Since every `product_id` in `Sales` exists in `Product`, `INNER JOIN` works perfectly.

---

## 📊 Example

### Input

**Sales**

| sale_id | product_id | year | quantity | price |
| ------- | ---------- | ---- | -------- | ----- |
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

**Product**

| product_id | product_name |
| ---------- | ------------ |
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |

---

### Output

| product_name | year | price |
| ------------ | ---- | ----- |
| Nokia        | 2008 | 5000  |
| Nokia        | 2009 | 5000  |
| Apple        | 2011 | 9000  |

---

## 🧠 Key Learnings

- Using **INNER JOIN** to combine related tables
- Understanding **foreign key relationships**
- Selecting specific columns from multiple tables
- Writing clean join conditions

---

## 🚀 Skills Practed

- SQL Joins
- Data Retrieval
- Relational Database Concepts

---

## ⚠️ Common Mistakes

❌ Forgetting JOIN condition
➡️ Leads to Cartesian product (wrong results)

❌ Using wrong join type
➡️ `LEFT JOIN` not needed here

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
