# 🧠 180. Consecutive Numbers

## 📌 Problem Summary

We are given a table `Logs` with:

- `id` → auto-incremented (represents order)
- `num` → value

Find all numbers that appear **at least 3 times consecutively**.

---

## 📊 Example

### Input

| id  | num |
| --- | --- |
| 1   | 1   |
| 2   | 1   |
| 3   | 1   |
| 4   | 2   |
| 5   | 1   |
| 6   | 2   |
| 7   | 2   |

### Output

| ConsecutiveNums |
| --------------- |
| 1               |

---

## ⚙️ Logic Breakdown

1. Use `LAG()` to access previous values
2. Ensure correct order using `ORDER BY id`
3. Check:
   - current = previous
   - previous = previous_previous

4. Remove duplicates

---

## 🚀 Complexity

- Time: O(n)
- Space: O(n)

---

## 🧩 Key Takeaway

This problem is about **sequence of rows**, not frequency of values.
