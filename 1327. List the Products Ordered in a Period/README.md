# 📦 List the Products Ordered in a Period (LeetCode 1327)

## 📌 Problem

Given the `Products` and `Orders` tables, find products that had **at least 100 units ordered in February 2020**.

Return:

- `product_name`
- total ordered `unit`

---

## 🗂️ Table Schema

### Products

| Column Name      | Type    |
| ---------------- | ------- |
| product_id       | int     |
| product_name     | varchar |
| product_category | varchar |

---

### Orders

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| order_date  | date |
| unit        | int  |

---

## 🎯 Goal

Return:

```text
product_name | unit
```

for products whose total ordered units in **February 2020** are **greater than or equal to 100**.

---

## 🧠 Explanation

We use:

- `JOIN` → combine Products and Orders tables
- `WHERE` → filter February 2020 orders
- `GROUP BY` → group records by product
- `SUM(unit)` → calculate total units ordered
- `HAVING` → filter products with total units ≥ 100

---

## ⚠️ Common Mistakes

### ❌ Using `WHERE SUM(unit) >= 100`

```text
Aggregate conditions must use HAVING, not WHERE
```

Incorrect:

```sql
WHERE SUM(unit) >= 100
```

Correct:

```sql
HAVING SUM(unit) >= 100
```

---

### ❌ Forgetting Date Filtering

Without filtering February 2020:

```text
Orders from other months will also be counted
```

Always filter using:

```sql
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
```

---

### ❌ Forgetting GROUP BY

```text
SUM() requires grouping when selecting non-aggregated columns
```

---

## 📈 Complexity

- Time Complexity: O(n)
- Space Complexity: O(n)

---

## ✅ Example

### Input

### Products

| product_id | product_name          | product_category |
| ---------- | --------------------- | ---------------- |
| 1          | Leetcode Solutions    | Book             |
| 2          | Jewels of Stringology | Book             |
| 3          | HP                    | Laptop           |
| 4          | Lenovo                | Laptop           |
| 5          | Leetcode Kit          | T-shirt          |

---

### Orders

| product_id | order_date | unit |
| ---------- | ---------- | ---- |
| 1          | 2020-02-05 | 60   |
| 1          | 2020-02-10 | 70   |
| 2          | 2020-02-11 | 80   |
| 3          | 2020-02-17 | 2    |
| 3          | 2020-02-24 | 3    |
| 5          | 2020-02-25 | 50   |
| 5          | 2020-02-27 | 50   |

---

### Output

| product_name       | unit |
| ------------------ | ---- |
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

---

## 🚀 Key Takeaways

- Use `JOIN` to combine related tables
- Use `SUM()` for aggregation
- Use `GROUP BY` with aggregate functions
- Use `HAVING` to filter aggregated values
- Filter dates carefully using `BETWEEN`

---

💡 This is a classic **JOIN + GROUP BY + HAVING** SQL interview problem.
