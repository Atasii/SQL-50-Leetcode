# 👥 Find Followers Count (LeetCode 1729)

## 📌 Problem Overview

This project solves the **"Find Followers Count"** problem using SQL.

We are given a `Followers` table that represents a social media relationship:

- `user_id` → the person being followed
- `follower_id` → the person who follows

The goal is to **calculate how many followers each user has**.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| user_id     | int  |
| follower_id | int  |

- `(user_id, follower_id)` is the **primary key**
- Each row represents a follower relationship

---

## 🎯 Objective

Return a table with:

- `user_id`
- Number of followers (`followers_count`)

Constraints:

- Results must be **ordered by user_id (ascending)**

---

## 💡 Approach

We use:

- `GROUP BY` to group rows by user
- `COUNT()` to count followers per user
- `ORDER BY` to sort results

---

## 📊 Example

### Input

| user_id | follower_id |
| ------- | ----------- |
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

---

### Output

| user_id | followers_count |
| ------- | --------------- |
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

---

### Explanation

- User 0 → follower: {1} → count = 1
- User 1 → follower: {0} → count = 1
- User 2 → followers: {0, 1} → count = 2

---

## 🧠 Key Learnings

- Grouping data using `GROUP BY`
- Counting rows using `COUNT()`
- Sorting results using `ORDER BY`

---

## 🚀 Skills Practiced

- SQL Aggregation
- Data Grouping
- Sorting Results
- Query Structuring

---

## ⚠️ Common Mistakes

❌ Forgetting `GROUP BY user_id`  
➡️ Results will be incorrect

❌ Using `COUNT(DISTINCT ...)` unnecessarily  
➡️ Not needed since `(user_id, follower_id)` is unique

❌ Missing `ORDER BY user_id`  
➡️ Output order will be wrong

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
