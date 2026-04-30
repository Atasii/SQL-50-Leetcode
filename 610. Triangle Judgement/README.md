# 🔺 610. Triangle Judgement (SQL)

## 📌 Problem

Given a table `Triangle` with three columns `x`, `y`, and `z` representing the lengths of three line segments:

Determine whether these three lengths can form a **valid triangle**.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| x           | int  |
| y           | int  |
| z           | int  |

- `(x, y, z)` is the primary key
- Each row represents three side lengths

---

## 🧠 Triangle Rule

A triangle is valid **only if the sum of any two sides is greater than the third side**:

- `x + y > z`
- `x + z > y`
- `y + z > x`

---

## 📈 Output Example

| x   | y   | z   | triangle |
| --- | --- | --- | -------- |
| 13  | 15  | 30  | No       |
| 10  | 20  | 15  | Yes      |

---

## 🔗 Notes

This is a beginner-friendly SQL problem that helps build intuition for:

- Conditional statements
- Logical operators
- Translating mathematical rules into SQL queries

---

⭐ If you found this helpful, consider starring the repo!
