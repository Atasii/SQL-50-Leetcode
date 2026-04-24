# 🎬 Not Boring Movies (LeetCode 620)

## 📌 Problem Overview

This project solves the **"Not Boring Movies"** problem using SQL.

We are given a `Cinema` table containing details about movies, including:

- Movie ID
- Name
- Description
- Rating

The goal is to **filter and return movies that meet specific conditions**.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |

- `id` is the **primary key**
- `rating` ranges from 0 to 10

---

## 🎯 Objective

Return movies that:

- Have an **odd-numbered ID**
- Have a **description not equal to "boring"**

Sort the result:

- By `rating` in **descending order**

---

## 💡 Approach

We use:

- `WHERE` clause for filtering
- `MOD(id, 2)` to check odd IDs
- `!=` to exclude "boring" descriptions
- `ORDER BY` to sort results

---

## 📊 Example

### Input

| id  | movie      | description | rating |
| --- | ---------- | ----------- | ------ |
| 1   | War        | great 3D    | 8.9    |
| 2   | Science    | fiction     | 8.5    |
| 3   | irish      | boring      | 6.2    |
| 4   | Ice song   | Fantacy     | 8.6    |
| 5   | House card | Interesting | 9.1    |

---

### Output

| id  | movie      | description | rating |
| --- | ---------- | ----------- | ------ |
| 5   | House card | Interesting | 9.1    |
| 1   | War        | great 3D    | 8.9    |

---

## 🧠 Key Learnings

- Filtering using `WHERE` conditions
- Checking odd/even numbers using `MOD()`
- Excluding values using `!=`
- Sorting results with `ORDER BY DESC`

---

## 🚀 Skills Practiced

- SQL Filtering
- Logical Conditions
- Sorting Data
- Query Structuring

---

## ⚠️ Common Mistakes

❌ Using `id % 2 = 0`
➡️ This gives **even IDs**, not odd

❌ Forgetting `ORDER BY rating DESC`
➡️ Results won’t match expected output

❌ Case sensitivity issues (`boring` vs `Boring`)
➡️ Depends on SQL engine

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
