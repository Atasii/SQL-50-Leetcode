# 🔢 Biggest Single Number (LeetCode 619)

## 📌 Problem Overview

This project solves the **"Biggest Single Number"** problem using SQL.

We are given a `MyNumbers` table that contains integers.  
The table may contain **duplicate values**.

The goal is to **find the largest number that appears only once**.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| num         | int  |

- The table **does not have a primary key**
- Duplicate values are allowed

---

## 🎯 Objective

Return the **largest single number**, where:

- A **single number** = appears exactly once
- If no such number exists → return `NULL`

---

## 💡 Approach

We use:

- `GROUP BY` to group identical numbers
- `COUNT()` to find frequency
- `HAVING COUNT(num) = 1` to filter single numbers
- `MAX()` to get the largest among them

---

## 📊 Example

### Input

| num |
| --- |
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

---

### Output

| num |
| --- |
| 6   |

---

### Explanation

Single numbers are: **1, 4, 5, 6**  
Largest among them = **6**

---

## 📊 Example 2

### Input

| num |
| --- |
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

---

### Output

| num  |
| ---- |
| NULL |

---

### Explanation

No number appears exactly once → result is `NULL`

---

## 🧠 Key Learnings

- Identifying unique values using `GROUP BY + HAVING`
- Using aggregate functions like `COUNT()` and `MAX()`
- Handling edge cases (no valid result → `NULL`)

---

## 🚀 Skills Practiced

- SQL Aggregation
- Filtering Groups
- Subqueries
- Data Analysis Logic

---

## ⚠️ Common Mistakes

❌ Using `WHERE COUNT(num) = 1`  
➡️ `WHERE` cannot be used with aggregate functions

❌ Forgetting subquery when using `MAX()`  
➡️ Leads to multiple rows instead of one

❌ Not handling NULL case  
➡️ If no rows match, result should be `NULL`

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
