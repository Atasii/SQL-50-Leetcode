# 📦 1484. Group Sold Products By The Date (SQL)

## 📌 Problem

Given a table `Activities` containing sold products and their selling dates:

For each date:

- Find the number of **distinct** products sold
- Return the product names sorted lexicographically
- Separate product names using commas

Return the result ordered by `sell_date`.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| sell_date   | date    |
| product     | varchar |

- The table may contain duplicate rows
- There is no primary key

---

## 🧠 Approach

We group all rows by `sell_date`.

Then:

- Count unique products using `COUNT(DISTINCT product)`
- Combine product names using `GROUP_CONCAT()`
- Sort product names lexicographically inside `GROUP_CONCAT`
- Remove duplicate product names using `DISTINCT`

---

## 🛠️ Key SQL Concepts

- `GROUP BY`
- `COUNT(DISTINCT ...)`
- `GROUP_CONCAT()`
- `ORDER BY`
- `DISTINCT`

---

## 📈 Example

### Input

| sell_date  | product    |
| ---------- | ---------- |
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |

---

### Output

| sell_date  | num_sold | products                     |
| ---------- | -------- | ---------------------------- |
| 2020-05-30 | 3        | Basketball,Headphone,T-Shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

---

## ⏱️ Complexity

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

---

## 🔗 Notes

This problem is useful for practicing:

- String aggregation in SQL
- Grouping records
- Removing duplicates
- Sorting concatenated values

---

⭐ If you found this helpful, consider starring the repo!
