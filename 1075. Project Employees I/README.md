# 👨‍💻 Project Employees I (LeetCode 1075)

## 📌 Problem Overview

This project solves the **"Project Employees I"** problem using SQL.

We are given two tables:

- `Project`: maps employees to projects
- `Employee`: contains employee details including experience

The goal is to **calculate the average experience (in years) of employees working on each project**.

---

## 🗂️ Table Schema

### Project

| Column Name | Type |
| ----------- | ---- |
| project_id  | int  |
| employee_id | int  |

- `(project_id, employee_id)` is the **primary key**
- Each row indicates an employee working on a project

---

### Employee

| Column Name      | Type    |
| ---------------- | ------- |
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |

- `employee_id` is the **primary key**

---

## 🎯 Objective

Return:

- `project_id`
- `average_years` → average experience of employees in that project

Requirements:

- Round to **2 decimal places**

---

## 📊 Example

### Input

**Project**

| project_id | employee_id |
| ---------- | ----------- |
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

**Employee**

| employee_id | name   | experience_years |
| ----------- | ------ | ---------------- |
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

---

### Output

| project_id | average_years |
| ---------- | ------------- |
| 1          | 2.00          |
| 2          | 2.50          |

---

## 🧠 Key Learnings

- Using **JOIN** to combine related tables
- Applying **AVG()** for aggregation
- Grouping results using `GROUP BY`
- Formatting output with `ROUND()`

---

## 🚀 Skills Practiced

- SQL Joins
- Aggregation Functions
- Data Grouping
- Query Structuring

---

## ⚠️ Common Mistakes

❌ Forgetting JOIN condition
➡️ Leads to incorrect results

❌ Not grouping by `project_id`
➡️ Aggregation fails

❌ Not rounding output
➡️ Fails expected format

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
