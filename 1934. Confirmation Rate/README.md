# ✅ Confirmation Rate (LeetCode 1934)

## 📌 Problem

Given two tables `Signups` and `Confirmations`, calculate the **confirmation rate** for each user.

The confirmation rate is defined as:

```text
confirmed requests / total requests
```

If a user has **no confirmation requests**, their rate should be:

```text
0.00
```

---

## 🗂️ Table Schema

### Signups

| Column Name | Type     |
| ----------- | -------- |
| user_id     | int      |
| time_stamp  | datetime |

- Each user appears exactly once

---

### Confirmations

| Column Name | Type     |
| ----------- | -------- |
| user_id     | int      |
| time_stamp  | datetime |
| action      | ENUM     |

- `action` ∈ ('confirmed', 'timeout')
- A user can have multiple confirmation requests

---

## 🎯 Goal

Return:

```text
user_id, confirmation_rate
```

- Rounded to **2 decimal places**
- Include users with **no confirmations**

---

## 🧠 Explanation

- `LEFT JOIN` → keeps all users
- `SUM(c.action = 'confirmed')` → counts confirmed actions
- `COUNT(c.user_id)` → total requests
- Division → confirmation rate
- `IFNULL(..., 0)` → handles users with no requests

---

## ⚠️ Common Mistakes

### ❌ Using `COUNT(s.user_id)`

```text
Gives wrong denominator (always ≥ 1 due to LEFT JOIN)
```

---

### ❌ Forgetting NULL handling

```text
Leads to NULL instead of 0
```

---

### ❌ Using INNER JOIN

```text
Excludes users with no confirmations
```

---

## 📈 Complexity

- Time Complexity: O(n)
- Efficient with indexing on `user_id`

---

## ✅ Example

### Input

**Signups**

| user_id |
| ------- |
| 3       |
| 7       |
| 2       |
| 6       |

**Confirmations**

| user_id | action    |
| ------- | --------- |
| 3       | timeout   |
| 3       | timeout   |
| 7       | confirmed |
| 7       | confirmed |
| 7       | confirmed |
| 2       | confirmed |
| 2       | timeout   |

---

### Output

| user_id | confirmation_rate |
| ------- | ----------------- |
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |

---

## 🚀 Key Takeaways

- Use **LEFT JOIN** to include missing data
- Use boolean expressions inside `SUM()`
- Handle `NULL` carefully with `IFNULL`
- Always verify denominator in ratios

---

💡 This is a classic **aggregation + LEFT JOIN + NULL handling** problem frequently asked in SQL interviews.
