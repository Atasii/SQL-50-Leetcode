# 🛒 1164. Product Price at a Given Date (SQL)

## 📌 Problem

Given a table `Products` containing product price changes over time:

Find the price of every product on the date `2019-08-16`.

Rules:

- Each row represents a price update for a product
- If a product has no price change before or on `2019-08-16`, its price is considered `10`

Return the result table in any order.

---

## 🗂️ Table Schema

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| new_price   | int  |
| change_date | date |

- `(product_id, change_date)` is the primary key
- Each row records a new product price on a specific date

---

## 🧠 Approach

For each product:

1. Consider only price changes on or before `2019-08-16`
2. Find the latest valid change date
3. Use the corresponding price as the product’s current price
4. If no valid price change exists, use the default price `10`

Window functions or grouped subqueries can be used to identify the latest valid record.

---

## 🛠️ Key SQL Concepts

- `WHERE`
- Date filtering
- Window Functions
- `RANK()` / `ROW_NUMBER()`
- `LEFT JOIN`
- `IFNULL()`

---

## 📈 Example

### Input

| product_id | new_price | change_date |
| ---------- | --------- | ----------- |
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |

---

### Output

| product_id | price |
| ---------- | ----- |
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |

---

## 🧾 Explanation

### Product 1

Price changes before or on `2019-08-16`:

- 20 → `2019-08-14`
- 30 → `2019-08-15`
- 35 → `2019-08-16`

Latest valid price = `35`

---

### Product 2

Price changes before or on `2019-08-16`:

- 50 → `2019-08-14`

The change on `2019-08-17` is ignored.

Latest valid price = `50`

---

### Product 3

No price change exists before or on `2019-08-16`.

Default price = `10`

---

## ⏱️ Complexity

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

---

## 🔗 Notes

This problem is useful for practicing:

- Filtering records by date
- Selecting latest records per group
- Window functions in SQL
- Handling missing values using default logic

---

⭐ If you found this helpful, consider starring the repo!
