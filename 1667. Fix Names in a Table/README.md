# 📝 Fix Names in a Table (LeetCode 1667)

## 📌 Problem Overview

This project solves the **"Fix Names in a Table"** problem using SQL.

We are given a `Users` table containing user names written in random uppercase and lowercase combinations.

The goal is to format each name such that:

- The **first character is uppercase**
- The **remaining characters are lowercase**

Finally, return the result ordered by `user_id`.

---

## 🗂️ Table Schema

### Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key
- `name` contains uppercase and lowercase letters

---

## 🎯 Objective

Format every user name into proper capitalization.

### Rules

✅ First letter → Uppercase  
✅ Remaining letters → Lowercase

Return the result ordered by `user_id`.

---

## 📊 Example

### Input

| user_id | name  |
| ------- | ----- |
| 1       | aLice |
| 2       | bOB   |

---

### Output

| user_id | name  |
| ------- | ----- |
| 1       | Alice |
| 2       | Bob   |

---

## 🧠 Key Learnings

- Using `UPPER()` and `LOWER()`
- Extracting characters using `LEFT()`
- Using `SUBSTRING()` for string slicing
- Combining strings using `CONCAT()`
- Sorting results using `ORDER BY`

---

## 🚀 Skills Practiced

- SQL String Functions
- String Manipulation
- Data Formatting
- Ordering Results

---

## ⚠️ Common Mistakes

❌ Using only `UPPER(name)`
➡️ Converts the whole name to uppercase

❌ Using only `LOWER(name)`
➡️ Converts the whole name to lowercase

❌ Forgetting `SUBSTRING(name, 2)`
➡️ First character gets duplicated

❌ Not ordering by `user_id`
➡️ Output order becomes incorrect

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
