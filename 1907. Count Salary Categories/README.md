# 💰 1907. Count Salary Categories

## 🧠 Problem Summary

You are given an `Accounts` table containing account incomes.

Your task is to count how many accounts fall into each of the following salary categories:

- **Low Salary** → income < 20000
- **Average Salary** → 20000 ≤ income ≤ 50000
- **High Salary** → income > 50000

⚠️ The result must **always include all three categories**, even if the count is 0.

---

## ⚙️ Approach

1. Create a **fixed list of all categories** (Low, Average, High).
2. Categorize each account using a `CASE` statement.
3. Count accounts per category.
4. Use a **LEFT JOIN** to ensure all categories appear.
5. Replace missing counts with `0`.

---

## 💡 Key Concepts

- `CASE` → to classify income into categories
- `GROUP BY` → to count accounts per category
- `LEFT JOIN` → to include categories with no data
- `COUNT()` ignores `NULL`, which helps return 0 automatically

---

## 📊 Example

### Input

| account_id | income |
| ---------- | ------ |
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |

### Output

| category       | accounts_count |
| -------------- | -------------- |
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |

---

## 🚀 Key Takeaways

- `GROUP BY` alone won’t show missing categories
- Manually create categories to ensure completeness
- Combine `CASE + JOIN` for flexible categorization
