# 🏆 Percentage of Users Attended a Contest (LeetCode 1633)

## 📌 Problem Overview

This project solves the **"Percentage of Users Attended a Contest"** problem using SQL.

We are given:

- `Users`: contains all platform users
- `Register`: contains contest registrations

The goal is to **calculate what percentage of total users registered for each contest**.

---

## 🗂️ Table Schema

### Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| user_name   | varchar |

- `user_id` is the **primary key**

---

### Register

| Column Name | Type |
| ----------- | ---- |
| contest_id  | int  |
| user_id     | int  |

- `(contest_id, user_id)` is the **composite primary key**

---

## 🎯 Objective

For each `contest_id`, compute:

> **percentage = (number of users registered in contest / total users) × 100**

Requirements:

- Round to **2 decimal places**
- Sort by:
  - `percentage` **DESC**
  - `contest_id` **ASC** (tie-breaker)

---

## 📊 Example

### Input

**Users**

| user_id | user_name |
| ------- | --------- |
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

**Register**

| contest_id | user_id |
| ---------- | ------- |
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

---

### Output

| contest_id | percentage |
| ---------- | ---------- |
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |

---

## 🧠 Key Learnings

- Using `COUNT(DISTINCT ...)` to count unique users
- Avoiding **integer division pitfalls** in SQL
- Writing **subqueries for global aggregates**
- Applying multi-level sorting using `ORDER BY`
- Proper rounding using `ROUND()`

---

## 🚀 Skills Practiced

- SQL Aggregation
- Subqueries
- DISTINCT operations
- Sorting with multiple conditions

---

## ⚠️ Common Mistakes

❌ Using `COUNT(user_id)` instead of `DISTINCT`
➡️ Leads to duplicate counting

❌ Integer division (`2/3 = 0`)
➡️ Must use `* 100.0`

❌ Writing multiple `ORDER BY` clauses
➡️ Use comma instead

❌ Unnecessary JOIN with `Users`
➡️ Slows query and complicates logic

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
