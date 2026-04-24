# 👥 Find Customer Referee (LeetCode 584)

## 📌 Problem Overview

This project solves the **"Find Customer Referee"** problem using SQL.

We are given a `Customer` table that tracks:

- Customer ID
- Customer name
- Referee ID (who referred them)

The task is to **find customers who are either not referred by customer with `id = 2`, or not referred at all**.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id` is the **primary key**
- `referee_id` may contain `NULL` (no referral)

---

## 🎯 Objective

Return names of customers who:

- Are **not referred by customer with `id = 2`**
- OR have **no referee (`NULL`)**

---

## 💡 Approach

We use the `WHERE` clause with:

- A condition to exclude customers referred by `id = 2`
- A condition to include customers with no referee

⚠️ Important SQL concept:

- `NULL` cannot be compared using `=`
- Use `IS NULL` instead

---

## 📊 Example

### Input

| id  | name | referee_id |
| --- | ---- | ---------- |
| 1   | Will | NULL       |
| 2   | Jane | NULL       |
| 3   | Alex | 2          |
| 4   | Bill | NULL       |
| 5   | Zack | 1          |
| 6   | Mark | 2          |

### Output

| name |
| ---- |
| Will |
| Jane |
| Bill |
| Zack |

---

## 🧠 Key Learnings

- Handling `NULL` values correctly using `IS NULL`
- Combining conditions with `OR`
- Understanding filtering logic in SQL
- Avoiding common mistakes like `= NULL`

---

## 🚀 Skills Practiced

- SQL Basics
- Conditional Filtering
- Logical Operators (`AND`, `OR`)
- NULL Handling

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
