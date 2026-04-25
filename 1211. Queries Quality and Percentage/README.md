# 📊 1211. Queries Quality and Percentage

## 🧠 Problem Summary

You are given a table `Queries` containing information about search queries, including:

- `query_name`
- `result`
- `position`
- `rating`

Your task is to compute, for each `query_name`:

### 1. **Query Quality**

- Defined as the **average of (rating / position)**

### 2. **Poor Query Percentage**

- Percentage of queries where **rating < 3**

Both values should be rounded to **2 decimal places**.

---

## 🛠️ Approach

We solve this using **SQL aggregation**:

- Use `SUM(rating / position)` to compute total quality score
- Divide by total queries using `COUNT(*)`
- Use `SUM(rating < 3)` to count poor queries (since condition evaluates to 1 or 0)
- Convert to percentage by dividing by total and multiplying by 100
- Use `ROUND(..., 2)` for formatting

---

## 🔍 Key Concepts

- **Boolean expressions in MySQL**
  `rating < 3` returns:
  - `1` (true)
  - `0` (false)

- **SUM vs COUNT**
  - `COUNT(condition)` ❌ counts all rows
  - `SUM(condition)` ✅ counts only true cases

- **Aggregation**
  - `GROUP BY query_name` ensures results per query

---

## ⚠️ Common Mistake

```sql
COUNT(rating < 3) ❌
```

This counts all rows because both `0` and `1` are non-NULL.

✔️ Use instead:

```sql
SUM(rating < 3)
```

---

## 📈 Example

| query_name | quality | poor_query_percentage |
| ---------- | ------- | --------------------- |
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

---

## 🚀 Takeaways

- Use `SUM(condition)` to count filtered rows
- Always verify how boolean expressions behave in SQL
- Aggregation + grouping is key for analytics-style problems

---

## 🏷️ Tags

`SQL` `Aggregation` `Group By` `LeetCode Easy`

---
