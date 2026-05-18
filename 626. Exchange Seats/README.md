# 🔄 626. Exchange Seats (SQL)

## 📌 Problem

Given a table `Seat` containing student names and their seat IDs:

Swap the seat IDs of every two consecutive students.

- If the number of students is odd, the last student's seat remains unchanged.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| student     | varchar |

- `id` is the primary key
- IDs start from `1` and increase continuously

---

## 🧠 Approach

We use a `CASE` statement to dynamically calculate the new seat IDs.

### Rules Used

- If the ID is odd and not the last row → `id + 1`
- If the ID is even → `id - 1`
- If the ID is the last odd row → remains unchanged

---

## 🛠️ Key SQL Concepts

- `CASE WHEN`
- Modulus Operator `%`
- Subquery using `COUNT(*)`
- `ORDER BY`

---

## 📈 Example

### Input

| id  | student |
| --- | ------- |
| 1   | Abbot   |
| 2   | Doris   |
| 3   | Emerson |
| 4   | Green   |
| 5   | Jeames  |

### Output

| id  | student |
| --- | ------- |
| 1   | Doris   |
| 2   | Abbot   |
| 3   | Green   |
| 4   | Emerson |
| 5   | Jeames  |

---

## ⏱️ Complexity

- **Time Complexity:** O(n)
- **Space Complexity:** O(1)

---

## 🔗 Notes

This problem is useful for practicing:

- Conditional logic in SQL
- Handling odd/even rows
- Using `CASE` expressions effectively

---

⭐ If you found this helpful, consider starring the repo!
