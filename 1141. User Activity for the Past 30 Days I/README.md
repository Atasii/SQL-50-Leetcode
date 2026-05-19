# 👥 1141. User Activity for the Past 30 Days I (SQL)

## 📌 Problem

Given a table `Activity` containing user activities on a social media platform:

Find the number of daily active users for the 30-day period ending on `2019-07-27` (inclusive).

A user is considered active on a day if they performed at least one activity.

---

## 🗂️ Table Schema

| Column Name   | Type |
| ------------- | ---- |
| user_id       | int  |
| session_id    | int  |
| activity_date | date |
| activity_type | enum |

- The table may contain duplicate rows
- Each session belongs to exactly one user

---

## 🧠 Approach

We filter records within the required 30-day date range:

- Start Date → `2019-06-28`
- End Date → `2019-07-27`

Then:

- Group records by `activity_date`
- Count distinct users active on each day

---

## 🛠️ Key SQL Concepts

- `WHERE BETWEEN`
- `COUNT(DISTINCT ...)`
- `GROUP BY`
- `ORDER BY`

---

## 📈 Example

### Input

| user_id | session_id | activity_date | activity_type |
| ------- | ---------- | ------------- | ------------- |
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |

---

### Output

| day        | active_users |
| ---------- | ------------ |
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

---

## ⏱️ Complexity

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

---

## 🔗 Notes

This problem is useful for practicing:

- Date filtering in SQL
- Aggregation queries
- Counting unique values
- Grouping records by date

---

⭐ If you found this helpful, consider starring the repo!
