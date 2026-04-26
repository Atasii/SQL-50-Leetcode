# 👨‍💼 Managers with at Least 5 Direct Reports (LeetCode 570)

## 📌 Problem

Given an `Employee` table, find the **names of managers** who have **at least 5 direct reports**.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

- `id` is unique
- `managerId` refers to another employee’s `id`
- `managerId = NULL` → employee has no manager

---

## 🎯 Goal

Return:

```text
name
```

of employees who are **managers with ≥ 5 direct reports**

---

## 🧠 Explanation

- `GROUP BY managerId` → groups employees under each manager
- `COUNT(*)` → counts direct reports
- `HAVING COUNT(*) >= 5` → filters valid managers
- Join → maps managerId → manager name

---

## ⚠️ Common Mistakes

### ❌ Using `WHERE COUNT(*) >= 5`

```text
Aggregation filters must use HAVING, not WHERE
```

---

### ❌ Grouping by `id`

```text
This counts per employee, not per manager
```

---

### ❌ Counting `managerId`

```text
Works, but COUNT(*) is clearer and safer
```

---

## 📈 Complexity

- Time Complexity: O(n)
- Efficient with indexing on `managerId`

---

## ✅ Example

### Input

| id  | name  | managerId |
| --- | ----- | --------- |
| 101 | John  | NULL      |
| 102 | Dan   | 101       |
| 103 | James | 101       |
| 104 | Amy   | 101       |
| 105 | Anne  | 101       |
| 106 | Ron   | 101       |

---

### Output

| name |
| ---- |
| John |

---

## 🚀 Key Takeaways

- Use `GROUP BY` to aggregate relationships
- Use `HAVING` for filtering aggregated results
- Understand **self-referencing tables** (employee ↔ manager)
- Always group by the **entity you are analyzing**

---

💡 This is a classic **aggregation + self-join pattern** frequently asked in SQL interviews.
