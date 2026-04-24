# 📰 Article Views I (LeetCode 1148)

## 📌 Problem Overview

This project solves the **"Article Views I"** problem using SQL.

We are given a `Views` table that tracks which user viewed which article and when. Each article is written by an author, and viewers can include the author themselves.

The goal is to **identify authors who have viewed at least one of their own articles**.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| article_id  | int  |
| author_id   | int  |
| viewer_id   | int  |
| view_date   | date |

- The table may contain **duplicate rows**
- If `author_id = viewer_id`, it means the **author viewed their own article**

---

## 🎯 Objective

Find all unique authors (`author_id`) who:

- Viewed at least one of their own articles

Return:

- Column name as `id`
- Results sorted in **ascending order**

---

## 💡 Approach

We use:

- A `WHERE` condition to check when `author_id = viewer_id`
- `DISTINCT` to remove duplicate author IDs
- `ORDER BY` to sort the results

---

## 📊 Example

### Input

| article_id | author_id | viewer_id | view_date  |
| ---------- | --------- | --------- | ---------- |
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

---

### Output

| id  |
| --- |
| 4   |
| 7   |

---

## 🧠 Key Learnings

- Identifying relationships within the same table
- Using `DISTINCT` to eliminate duplicates
- Filtering rows with column comparisons (`author_id = viewer_id`)
- Sorting results with `ORDER BY`

---

## 🚀 Skills Practiced

- SQL Filtering
- Handling Duplicates
- Column Comparison Logic
- Query Optimization Basics

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
