# 1731. The Number of Employees Which Report to Each Employee

## 📌 Problem

Given an `Employees` table, the goal is to generate a report showing:

- `employee_id` (manager ID)
- `name` (manager name)
- `reports_count` (number of direct reports)
- `average_age` (average age of direct reports)

⚠️ Employees with no manager (`reports_to IS NULL`) should be ignored.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |

---

## 📈 Output Example

| employee_id | name  | reports_count | average_age |
| ----------- | ----- | ------------- | ----------- |
| 9           | Hercy | 2             | 38.5        |

---

## 🔗 Notes

This is a common **SQL interview problem** that tests:

- Data grouping
- Aggregations
- Join logic
- Edge case handling

---

⭐ If you found this helpful, feel free to star the repo!
