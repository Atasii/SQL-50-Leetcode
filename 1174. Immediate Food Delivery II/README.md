# 🚚 Immediate Food Delivery II (LeetCode 1174)

## 📌 Problem Overview

This project solves the **"Immediate Food Delivery II"** problem using SQL.

We are given a `Delivery` table containing customer orders along with:

- Order date
- Preferred delivery date

The goal is to compute the **percentage of customers whose _first order_ was immediate**.

---

## 🗂️ Table Schema

| Column Name                 | Type |
| --------------------------- | ---- |
| delivery_id                 | int  |
| customer_id                 | int  |
| order_date                  | date |
| customer_pref_delivery_date | date |

- `delivery_id` is the **primary key**

---

## 🎯 Objective

- Identify the **first order for each customer** (earliest `order_date`)
- An order is:
  - **Immediate** → `order_date = customer_pref_delivery_date`
  - **Scheduled** → otherwise

Compute:

> **(Number of immediate first orders / Total customers) × 100**

- Round result to **2 decimal places**

---

## 📊 Example

### Input

| delivery_id | customer_id | order_date | customer_pref_delivery_date |
| ----------- | ----------- | ---------- | --------------------------- |
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 2           | 2019-08-02 | 2019-08-02                  |
| 3           | 1           | 2019-08-11 | 2019-08-12                  |
| 4           | 3           | 2019-08-24 | 2019-08-24                  |
| 5           | 3           | 2019-08-21 | 2019-08-22                  |
| 6           | 2           | 2019-08-11 | 2019-08-13                  |
| 7           | 4           | 2019-08-09 | 2019-08-09                  |

---

### Output

| immediate_percentage |
| -------------------- |
| 50.00                |

---

## 🧠 Key Learnings

- Using **window functions (`ROW_NUMBER`)** to find first row per group
- Applying **conditional aggregation**
- Avoiding incorrect use of `MIN()` with non-grouped columns
- Writing clean and readable SQL queries

---

## 🚀 Skills Practiced

- Window Functions
- Aggregation
- Conditional Logic
- Query Optimization

---

## ⚠️ Common Mistakes

❌ Using `MIN(order_date)` directly in `WHERE`
➡️ Not valid without subquery

❌ Using `GROUP BY customer_id`
➡️ Gives per-customer results, not overall percentage

❌ Forgetting to filter first orders
➡️ Includes all orders → wrong result

❌ Integer division (`2/4 = 0`)
➡️ Must use `* 100.0`

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
