# 📧 196. Delete Duplicate Emails (SQL)

## 📌 Problem

Given a table `Person` containing email addresses:

Delete all duplicate emails while keeping only the row with the smallest `id`.

The final table should contain only unique email addresses.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| email       | varchar |

- `id` is the primary key
- Emails contain only lowercase letters

---

## 🧠 Approach

For each email:

1. Identify duplicate email groups
2. Rank rows by `id` in ascending order
3. Keep the row with the smallest `id`
4. Delete all remaining duplicate rows

Window functions can be used to assign rankings within each email group.

---

## 🛠️ Key SQL Concepts

- `DELETE`
- Window Functions
- `ROW_NUMBER()`
- `PARTITION BY`
- Subqueries
- `IN`

---

## 📈 Example

### Input

| id  | email            |
| --- | ---------------- |
| 1   | john@example.com |
| 2   | bob@example.com  |
| 3   | john@example.com |

---

### Output

| id  | email            |
| --- | ---------------- |
| 1   | john@example.com |
| 2   | bob@example.com  |

---

## 🧾 Explanation

- `john@example.com` appears multiple times.
- The row with the smallest `id = 1` is kept.
- The duplicate row with `id = 3` is deleted.

---

## ⏱️ Complexity

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

---

## 🔗 Notes

This problem is useful for practicing:

- Deleting duplicate records
- Window functions in SQL
- Ranking rows within groups
- Using subqueries inside `DELETE`

---

⭐ If you found this helpful, consider starring the repo!
