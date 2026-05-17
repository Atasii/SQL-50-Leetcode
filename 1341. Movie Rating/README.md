# 🎬 Movie Rating (LeetCode 1341)

## 📌 Problem Overview

This project solves the **"Movie Rating"** problem using SQL.

We are given three tables:

- `Movies`: contains movie details
- `Users`: contains user details
- `MovieRating`: contains ratings given by users to movies

The goal is to:

1. Find the user who rated the greatest number of movies
2. Find the movie with the highest average rating in February 2020

In case of ties, return the **lexicographically smaller** name/title.

---

## 🗂️ Table Schema

### Movies

| Column Name | Type    |
| ----------- | ------- |
| movie_id    | int     |
| title       | varchar |

- `movie_id` is the primary key
- Each movie has a unique title

---

### Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key
- Each user has a unique name

---

### MovieRating

| Column Name | Type |
| ----------- | ---- |
| movie_id    | int  |
| user_id     | int  |
| rating      | int  |
| created_at  | date |

- `(movie_id, user_id)` is the primary key
- Stores ratings given by users to movies

---

## 🎯 Objective

### Part 1

Find the user who rated the maximum number of movies.

- If multiple users have the same count,
  return the lexicographically smaller name.

---

### Part 2

Find the movie with the highest average rating in **February 2020**.

- If multiple movies have the same average rating,
  return the lexicographically smaller title.

---

## 📊 Example

### Input

### Movies

| movie_id | title    |
| -------- | -------- |
| 1        | Avengers |
| 2        | Frozen 2 |
| 3        | Joker    |

---

### Users

| user_id | name   |
| ------- | ------ |
| 1       | Daniel |
| 2       | Monica |
| 3       | Maria  |
| 4       | James  |

---

### MovieRating

| movie_id | user_id | rating | created_at |
| -------- | ------- | ------ | ---------- |
| 1        | 1       | 3      | 2020-01-12 |
| 1        | 2       | 4      | 2020-02-11 |
| 1        | 3       | 2      | 2020-02-12 |
| 1        | 4       | 1      | 2020-01-01 |
| 2        | 1       | 5      | 2020-02-17 |
| 2        | 2       | 2      | 2020-02-01 |
| 2        | 3       | 2      | 2020-03-01 |
| 3        | 1       | 3      | 2020-02-22 |
| 3        | 2       | 4      | 2020-02-25 |

---

### Output

| results  |
| -------- |
| Daniel   |
| Frozen 2 |

---

## 🧠 Key Learnings

- Using `GROUP BY` with aggregation
- Sorting using multiple conditions in `ORDER BY`
- Using `AVG()` and `COUNT()`
- Filtering dates using `MONTH()` and `YEAR()`
- Combining results using `UNION ALL`
- Handling tie-breaking lexicographically

---

## 🚀 Skills Practiced

- SQL Joins
- Aggregation Functions
- Date Filtering
- Sorting & Ranking
- UNION ALL

---

## ⚠️ Common Mistakes

❌ Using `UNION`
➡️ Removes duplicate rows unexpectedly

❌ Forgetting `GROUP BY`
➡️ Causes aggregation errors

❌ Missing tie-breaking condition
➡️ Wrong lexicographical output

❌ Filtering only by month
➡️ Includes other years unintentionally

❌ Using `INNER ORDER BY` without parentheses in UNION
➡️ Causes SQL syntax errors

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
