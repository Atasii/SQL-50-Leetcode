# 🎓 Number of Unique Subjects Taught by Each Teacher (LeetCode 2356)

## 📌 Problem Overview

This project solves the **"Number of Unique Subjects Taught by Each Teacher"** problem using SQL.

We are given a `Teacher` table that records which subject a teacher teaches in different departments.

The goal is to **count how many unique subjects each teacher teaches**, regardless of department.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

- `(subject_id, dept_id)` is the **composite primary key**
- A subject may appear multiple times for the same teacher across different departments

---

## 🎯 Objective

Return:

- `teacher_id`
- `cnt` → number of **unique subjects** taught by each teacher

---

## 💡 Approach

We use:

- `GROUP BY` to group rows by `teacher_id`
- `COUNT(DISTINCT subject_id)` to count unique subjects

👉 Important:
Same subject in different departments should be counted **only once**

---

## 📊 Example

### Input

| teacher_id | subject_id | dept_id |
| ---------- | ---------- | ------- |
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

---

### Output

| teacher_id | cnt |
| ---------- | --- |
| 1          | 2   |
| 2          | 4   |

---

## 🧠 Key Learnings

- Using `GROUP BY` for grouping data
- Counting unique values with `COUNT(DISTINCT ...)`
- Avoiding duplicate counting across multiple rows
- Understanding composite keys

---

## 🚀 Skills Practiced

- SQL Aggregation
- DISTINCT Operations
- Data Grouping
- Query Optimization Basics

---

## ⚠️ Common Mistakes

❌ Using `COUNT(subject_id)`
➡️ Counts duplicates (wrong result)

❌ Grouping by multiple columns unnecessarily
➡️ Breaks aggregation logic

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
