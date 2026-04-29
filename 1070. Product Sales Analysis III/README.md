# 📦 Product Sales Analysis III (LeetCode 1070)

## 📌 Problem Overview

This project solves the **"Product Sales Analysis III"** problem using SQL.

We are given a `Sales` table that records product sales across different years.

Each row contains:

- Product ID
- Year of sale
- Quantity sold
- Price

The goal is to **identify the first year each product was sold and return all sales entries for that year**.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

- `(sale_id, year)` is the **primary key**
- A product may have **multiple entries in the same year**

---

## 🎯 Objective

For each `product_id`:

- Find the **earliest year** it was sold
- Return **all rows** for that product in that year

---

## 📊 Example

### Input

| sale_id | product_id | year | quantity | price |
| ------- | ---------- | ---- | -------- | ----- |
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

---

### Output

| product_id | first_year | quantity | price |
| ---------- | ---------- | -------- | ----- |
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
