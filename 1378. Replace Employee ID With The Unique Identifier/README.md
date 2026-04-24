# 🆔 Replace Employee ID With The Unique Identifier (LeetCode 1378)

## 📌 Problem Overview

This project solves the **"Replace Employee ID With The Unique Identifier"** problem using SQL.

We are given two tables:

- `Employees`: contains employee IDs and names
- `EmployeeUNI`: maps employee IDs to unique identifiers

The goal is to **display each employee’s unique ID along with their name**.
If an employee does not have a unique ID, we return `NULL`.

---

## 🗂️ Table Schema

### Employees

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

- `id` is the **primary key**

---

### EmployeeUNI

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| unique_id   | int  |

- `(id, unique_id)` is the **composite primary key**

---

## 🎯 Objective

Return:

- `unique_id`
- `name`

Rules:

- Include **all employees**
- If no matching `unique_id` exists → return `NULL`

---

## 💡 Approach

We use a **LEFT JOIN**:

- Start from `Employees` (so all employees are included)
- Join with `EmployeeUNI` on `id`
- Missing matches automatically return `NULL`

---

## 📊 Example

### Input

**Employees**

| id  | name     |
| --- | -------- |
| 1   | Alice    |
| 7   | Bob      |
| 11  | Meir     |
| 90  | Winston  |
| 3   | Jonathan |

**EmployeeUNI**

| id  | unique_id |
| --- | --------- |
| 3   | 1         |
| 11  | 2         |
| 90  | 3         |

---

### Output

| unique_id | name     |
| --------- | -------- |
| NULL      | Alice    |
| NULL      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

---

## 🧠 Key Learnings

- Using **LEFT JOIN** to retain all rows from the left table
- Handling missing values (`NULL`)
- Combining data from multiple tables
- Understanding primary and composite keys

---

## 🚀 Skills Practiced

- SQL Joins
- Data Merging
- NULL Handling
- Query Structuring

---

## ⚠️ Common Mistakes

❌ Using `INNER JOIN`
➡️ Drops employees without a `unique_id`

❌ Joining on wrong column
➡️ Always join on `id`

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
