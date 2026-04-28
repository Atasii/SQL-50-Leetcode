# 🎓 Classes With at Least 5 Students (LeetCode 596)

## 📌 Problem Overview

This project solves the **"Classes With at Least 5 Students"** problem using SQL.

We are given a `Courses` table containing student enrollments.

Each row represents:

- A student
- The class they are enrolled in

The goal is to **identify classes with sufficient student count**.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| student     | varchar |
| class       | varchar |

- `(student, class)` is the **primary key**
- Each record represents a student enrolled in a class

---

## 🎯 Objective

Return all classes that:

- Have **at least 5 students enrolled**

---

## 💡 Approach

We use:

- `GROUP BY` to group students by class
- `COUNT()` to count number of students
- `HAVING` to filter groups based on count

---

## 📊 Example

### Input

| student | class    |
| ------- | -------- |
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

---

### Output

| class |
| ----- |
| Math  |

---

## 🧠 Key Learnings

- Grouping data using `GROUP BY`
- Filtering aggregated results using `HAVING`
- Using `COUNT()` for aggregation

---

## 🚀 Skills Practiced

- SQL Aggregation
- Data Grouping
- Filtering Groups
- Query Optimization

---

## ⚠️ Common Mistakes

❌ Using `WHERE COUNT(student) >= 5`  
➡️ `WHERE` cannot be used with aggregate functions

❌ Forgetting `GROUP BY class`  
➡️ Aggregation won’t work correctly

❌ Misunderstanding aggregation logic  
➡️ Always apply filters after grouping using `HAVING`

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
