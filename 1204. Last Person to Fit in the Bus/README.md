# 🚍 1204. Last Person to Fit in the Bus

## 🧠 Problem Summary

Given a queue of people with their weight and boarding order (`turn`), determine the **last person who can board the bus** without exceeding the total weight limit of **1000 kg**.

---

## ⚙️ Approach

1. Sort people based on `turn`.
2. Calculate **cumulative weight** using a window function.
3. Keep only rows where total weight ≤ 1000.
4. Select the **last person** from those valid rows.

---

## 💡 Key Concept

Use a window function to compute running total:

```
SUM(weight) OVER (ORDER BY turn)
```

---

## 🚀 Key Takeaways

- Window functions help compute cumulative values efficiently
- Use filtering + sorting + LIMIT to extract the final answer
