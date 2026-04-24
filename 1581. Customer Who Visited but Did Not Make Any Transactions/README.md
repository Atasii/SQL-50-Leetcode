# 🛍️ Customer Who Visited but Did Not Make Any Transactions (LeetCode 1581)

## 📌 Problem Overview

This project solves the **"Customer Who Visited but Did Not Make Any Transactions"** problem using SQL.

We are given two tables:

- `Visits`: records each customer visit
- `Transactions`: records purchases made during visits

The goal is to **identify customers who visited but did not make any transactions**, and count how many such visits they had.

---

## 🗂️ Table Schema

### Visits

| Column Name | Type |
| ----------- | ---- |
| visit_id    | int  |
| customer_id | int  |

- `visit_id` is unique

---

### Transactions

| Column Name    | Type |
| -------------- | ---- |
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |

- Each row represents a transaction linked to a visit

---

## 🎯 Objective

Return:

- `customer_id`
- `count_no_trans` → number of visits with **no transactions**

---

## 💡 Approach

We use a **LEFT JOIN**:

1. Start with `Visits`
2. LEFT JOIN with `Transactions` on `visit_id`
3. Identify visits where:
   - `Transactions.visit_id IS NULL` → no transaction happened

4. Group by `customer_id`
5. Count such visits

---

## 📊 Example

### Input

**Visits**

| visit_id | customer_id |
| -------- | ----------- |
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

**Transactions**

| transaction_id | visit_id | amount |
| -------------- | -------- | ------ |
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

---

### Output

| customer_id | count_no_trans |
| ----------- | -------------- |
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

## 🧠 Key Learnings

- Using **LEFT JOIN** to detect missing matches
- Filtering with `IS NULL` to find unmatched rows
- Aggregating results with `GROUP BY`
- Counting specific conditions using `COUNT(*)`

---

## 🚀 Skills Practiced

- SQL Joins
- Aggregation (`GROUP BY`, `COUNT`)
- NULL Handling
- Real-world query logic

---

## ⚠️ Common Mistakes

❌ Using `INNER JOIN`
➡️ Removes visits without transactions (wrong result)

❌ Not checking `IS NULL`
➡️ Misses customers with no transactions

❌ Forgetting `GROUP BY`
➡️ Incorrect aggregation

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
