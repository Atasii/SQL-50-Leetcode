# 🤝 Friend Requests II: Who Has the Most Friends (LeetCode 602)

## 📌 Problem Overview

This project solves the **"Friend Requests II: Who Has the Most Friends"** problem using SQL.

We are given a `RequestAccepted` table containing accepted friend requests between users.

Each row represents:

- The user who sent the friend request
- The user who accepted it
- The date the request was accepted

The goal is to find the user with the **highest number of friends**.

---

## 🗂️ Table Schema

| Column Name  | Type |
| ------------ | ---- |
| requester_id | int  |
| accepter_id  | int  |
| accept_date  | date |

- `(requester_id, accepter_id)` is the **primary key**
- Each row represents a successful friendship connection

---

## 🎯 Objective

Return:

- The `id` of the person with the most friends
- The total number of friends they have

The test cases guarantee that only one user has the highest count.

---

## 💡 Approach

Each accepted request creates a friendship between **two users**:

- `requester_id`
- `accepter_id`

To calculate total friends for each user:

1. Extract all requester IDs
2. Extract all accepter IDs
3. Combine them using `UNION ALL`
4. Count occurrences of each ID
5. Sort by highest count
6. Return the top result

---

## 📊 Example

### Input

| requester_id | accepter_id | accept_date |
| ------------ | ----------- | ----------- |
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |

---

### Output

| id  | num |
| --- | --- |
| 3   | 3   |

---

### Explanation

User `3` is friends with:

- User `1`
- User `2`
- User `4`

So user `3` has the highest total number of friends.

---

## 🧠 Key Learnings

- Combining datasets using `UNION ALL`
- Aggregating data using `COUNT()`
- Grouping records using `GROUP BY`
- Sorting aggregated results using `ORDER BY`

---

## 🚀 Skills Practiced

- SQL Aggregation
- Data Transformation
- Grouping and Counting
- Subqueries
- SQL Query Optimization

---

## ⚠️ Common Mistakes

❌ Using `UNION` instead of `UNION ALL`  
➡️ `UNION` removes duplicates and gives incorrect friend counts

❌ Forgetting to count both requester and accepter  
➡️ Friendship involves both users

❌ Missing `GROUP BY id`  
➡️ Counts cannot be calculated correctly

❌ Applying `LIMIT` before sorting  
➡️ Always sort first using `ORDER BY`

---

## ⏱️ Complexity Analysis

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

Where `n` is the number of rows in the table.

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
