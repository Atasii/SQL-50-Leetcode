# 💰 176. Second Highest Salary (SQL)

## 📌 Problem

Given a table `Employee` containing employee salaries:

Find the **second highest distinct salary** from the table.

- If a second highest salary does not exist, return `NULL`.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| salary      | int  |

- `id` is the primary key
- Each row contains an employee's salary

---

## 🧠 Approach

We first sort the salaries in descending order.

Then:

- Remove duplicate salaries using `DISTINCT`
- Skip the highest salary using `OFFSET 1`
- Select the next salary using `LIMIT 1`

To handle cases where a second highest salary does not exist, we use a subquery.

---

## 🛠️ Key SQL Concepts

- `DISTINCT`
- `ORDER BY`
- `LIMIT`
- `OFFSET`
- Subqueries

---

## 📈 Example 1

### Input

| id  | salary |
| --- | ------ |
| 1   | 100    |
| 2   | 200    |
| 3   | 300    |

### Output

| SecondHighestSalary |
| ------------------- |
| 200                 |

---

## 📈 Example 2

### Input

| id  | salary |
| --- | ------ |
| 1   | 100    |

### Output

| SecondHighestSalary |
| ------------------- |
| null                |

---

## ⏱️ Complexity

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(1)

---

## 🔗 Notes

This problem is useful for practicing:

- Ranking-style SQL questions
- Handling duplicate values
- Using subqueries effectively
- Understanding `LIMIT` and `OFFSET`

---

⭐ If you found this helpful, consider starring the repo!
