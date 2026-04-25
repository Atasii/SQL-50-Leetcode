# 🌡️ Rising Temperature (LeetCode 197)

## 📌 Problem

Given a `Weather` table, find all `id`s where the temperature is **higher than the previous day (yesterday)**.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| recordDate  | date |
| temperature | int  |

- `id` is unique
- No duplicate `recordDate` values

---

## 🎯 Goal

Return all `id`s such that:

```
temperature(today) > temperature(yesterday)
```

---

## 🧠 Explanation

- `w1` → current day
- `w2` → previous day
- `DATEDIFF(w1.recordDate, w2.recordDate) = 1` ensures:
  - `w1` is exactly one day after `w2`

- We then check if:
  - current temperature > previous day's temperature

---

## ⚠️ Important Note

Using window functions like `LAG()` **alone is not enough**, because:

- Previous row ≠ Previous day (if dates are missing)

Always ensure date continuity using `DATEDIFF`.

---

## 📈 Complexity

- Time Complexity: O(n²) (due to self join)
- Can be optimized using indexing on `recordDate`

---

## ✅ Example

**Input:**

| id  | recordDate | temperature |
| --- | ---------- | ----------- |
| 1   | 2015-01-01 | 10          |
| 2   | 2015-01-02 | 25          |
| 3   | 2015-01-03 | 20          |
| 4   | 2015-01-04 | 30          |

**Output:**

| id  |
| --- |
| 2   |
| 4   |
