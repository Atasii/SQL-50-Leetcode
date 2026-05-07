# 👩‍💼 1978. Employees Whose Manager Left the Company

## 🧠 Problem Summary

You are given an `Employees` table containing employee details, including their `manager_id`.

Find the **employee IDs** of employees who:

- Have a **salary less than 30000**, and
- Their **manager is no longer in the company** (i.e., manager_id does not exist in the table)

Return the result **sorted by employee_id**.

---

## ⚙️ Approach

1. Filter employees with **salary < 30000**
2. Check if their `manager_id` **does not exist** in the Employees table
3. Exclude employees with `manager_id IS NULL`
4. Sort the result by `employee_id`

---

## 💡 Key Concept

We use:

- `NOT IN` (or `NOT EXISTS`) to check missing managers
- A subquery to compare against existing employee IDs

---

## 🚀 Key Takeaways

- Use subqueries to compare values across the same table
- `NOT IN` helps identify missing relationships
- Always handle `NULL` values carefully in SQL
