## 📌 1789. Primary Department for Each Employee

### 🧾 Problem Summary

You are given an `Employee` table with the following columns:

- `employee_id`: ID of the employee
- `department_id`: Department the employee belongs to
- `primary_flag`:
  - `'Y'` → Primary department
  - `'N'` → Not primary

### 🧠 Key Rules

- An employee can belong to **multiple departments**
- If an employee has **multiple departments**, exactly one will have `primary_flag = 'Y'`
- If an employee has **only one department**, its `primary_flag` will be `'N'`, but it should still be treated as the primary department

---

### 🎯 Objective

Return each employee along with their **primary department**.

---

## 💡 Approach

We break the problem into two cases:

### ✅ Case 1: Employees with multiple departments

- Select rows where `primary_flag = 'Y'`

### ✅ Case 2: Employees with only one department

- Use `GROUP BY` + `HAVING COUNT(*) = 1`

## 🔍 Explanation

- The first query ensures we get the **explicit primary departments**
- The second query handles employees with **only one department**
- `UNION` merges both results and removes duplicates
