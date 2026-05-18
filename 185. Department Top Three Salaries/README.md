# 👨‍💼 Department Top Three Salaries (LeetCode 185)

## 📌 Problem

Given the `Employee` and `Department` tables, find employees who earn salaries within the **top 3 unique salaries** of their department.

Return:

- Department name
- Employee name
- Salary

---

## 🗂️ Table Schema

### Employee

| Column Name  | Type    |
| ------------ | ------- |
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

---

### Department

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

---

## 🎯 Goal

Return:

Department | Employee | Salary

for employees whose salary belongs to the **top 3 unique salaries** in their department.

---

## 🧠 Explanation

We use:

- `JOIN` → combine Employee and Department tables
- `DENSE_RANK()` → rank unique salaries
- `PARTITION BY` → restart ranking for each department
- `ORDER BY salary DESC` → highest salary gets rank 1

---

## ⚠️ Common Mistakes

### ❌ Using `RANK()` instead of `DENSE_RANK()`

`RANK()` skips numbers after duplicates.

Example:

| Salary | RANK |
| ------ | ---- |
| 90000  | 1    |
| 85000  | 2    |
| 85000  | 2    |
| 70000  | 4    |

Here, `70000` becomes rank 4 incorrectly.

---

### ✅ Why `DENSE_RANK()` Works

`DENSE_RANK()` does not skip rankings.

| Salary | DENSE_RANK |
| ------ | ---------- |
| 90000  | 1          |
| 85000  | 2          |
| 85000  | 2          |
| 70000  | 3          |

Now `70000` correctly becomes the 3rd unique salary.

---

### ❌ Forgetting `DESC`

Ascending order ranks the lowest salary first.

Always use:

```sql
ORDER BY salary DESC
```

---

### ❌ Using WHERE with Window Functions Directly

Window function aliases cannot be used directly in `WHERE`.

That is why we use a subquery.

---

## 📈 Complexity

- Time Complexity: O(n log n)
- Space Complexity: O(n)

---

## ✅ Example

### Input

### Employee

| id  | name  | salary | departmentId |
| --- | ----- | ------ | ------------ |
| 1   | Joe   | 85000  | 1            |
| 2   | Henry | 80000  | 2            |
| 3   | Sam   | 60000  | 2            |
| 4   | Max   | 90000  | 1            |
| 5   | Janet | 69000  | 1            |
| 6   | Randy | 85000  | 1            |
| 7   | Will  | 70000  | 1            |

---

### Department

| id  | name  |
| --- | ----- |
| 1   | IT    |
| 2   | Sales |

---

### Output

| Department | Employee | Salary |
| ---------- | -------- | ------ |
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

---

## 🚀 Key Takeaways

- `DENSE_RANK()` handles duplicate salaries correctly
- `PARTITION BY` creates rankings within each department
- Window functions do not collapse rows like `GROUP BY`
- Use subqueries when filtering window function results
- Understand the difference between:
  - `RANK()`
  - `DENSE_RANK()`
  - `ROW_NUMBER()`

---

💡 This is a classic **Window Function + Ranking** SQL interview problem.
