# 💰 Employee Bonus (LeetCode 577)

## 📌 Problem

Given two tables `Employee` and `Bonus`, return the **name and bonus** of employees who:

- Have a bonus **less than 1000**, OR
- **Did not receive any bonus**

---

## 🗂️ Table Schema

### Employee

| Column Name | Type    |
| ----------- | ------- |
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is unique

---

### Bonus

| Column Name | Type |
| ----------- | ---- |
| empId       | int  |
| bonus       | int  |

- `empId` is a foreign key referencing `Employee.empId`

---

## 🎯 Goal

Return:

```id="m9l5hf"
name, bonus
```

Where:

- `bonus < 1000` OR
- `bonus IS NULL`

---

## 🧠 Explanation

- `LEFT JOIN` ensures:
  - Employees **without bonus** still appear (with `NULL`)

- Condition:
  - `b.bonus < 1000` → low bonus
  - `b.bonus IS NULL` → no bonus

---

## ⚠️ Important Insight

- Using `INNER JOIN` would **exclude employees without bonus**
- That would miss part of the requirement ❌

---

## 🚀 Key Takeaways

- Use **LEFT JOIN** when you need unmatched rows
- Always check for `NULL` when dealing with missing data
- Combine conditions using `OR` carefully

---

## 📈 Complexity

- Time Complexity: O(n)
- Efficient with proper indexing on `empId`

---

## ✅ Example

### Input

**Employee**

| empId | name   | supervisor | salary |
| ----- | ------ | ---------- | ------ |
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus**

| empId | bonus |
| ----- | ----- |
| 2     | 500   |
| 4     | 2000  |

---

### Output

| name | bonus |
| ---- | ----- |
| Brad | null  |
| John | null  |
| Dan  | 500   |

---

💡 This is a classic **LEFT JOIN + NULL handling** problem and very common in SQL interviews.
