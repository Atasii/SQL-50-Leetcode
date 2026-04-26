# 📊 Monthly Transactions I (LeetCode 1193)

## 📌 Problem Overview

This project solves the **"Monthly Transactions I"** problem using SQL.

We are given a `Transactions` table containing information about transactions, including:

- Country
- Transaction state (`approved` or `declined`)
- Amount
- Transaction date

The goal is to **generate monthly statistics per country**.

---

## 🗂️ Table Schema

| Column Name | Type                          |
| ----------- | ----------------------------- |
| id          | int                           |
| country     | varchar                       |
| state       | enum ("approved", "declined") |
| amount      | int                           |
| trans_date  | date                          |

- `id` is the **primary key**

---

## 🎯 Objective

For each **month and country**, compute:

- `trans_count` → total number of transactions
- `approved_count` → number of approved transactions
- `trans_total_amount` → total amount of all transactions
- `approved_total_amount` → total amount of approved transactions

---

## 📊 Example

### Input

| id  | country | state    | amount | trans_date |
| --- | ------- | -------- | ------ | ---------- |
| 121 | US      | approved | 1000   | 2018-12-18 |
| 122 | US      | declined | 2000   | 2018-12-19 |
| 123 | US      | approved | 2000   | 2019-01-01 |
| 124 | DE      | approved | 2000   | 2019-01-07 |

---

### Output

| month   | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
| ------- | ------- | ----------- | -------------- | ------------------ | --------------------- |
| 2018-12 | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01 | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01 | DE      | 1           | 1              | 2000               | 2000                  |

---

## 🧠 Key Learnings

- Extracting **month-year** using `DATE_FORMAT()`
- Grouping by multiple columns
- Using **conditional aggregation** (`CASE WHEN`)
- Counting conditionally with boolean expressions
- Writing clean aggregate queries

---

## 🚀 Skills Practiced

- SQL Aggregation
- GROUP BY
- Conditional Logic
- Date Functions

---

## ⚠️ Common Mistakes

❌ Using subqueries inside `SUM()`
➡️ Not valid for aggregation

❌ Forgetting to group by both `month` and `country`
➡️ Wrong aggregation

❌ Using `COUNT(state)`
➡️ Counts non-null values, not total rows

❌ Not using conditional logic for approved amounts
➡️ Gives incorrect totals

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
