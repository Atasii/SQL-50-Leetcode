# 💰 585. Investments in 2016 (SQL)

## 📌 Problem

Given a table `Insurance` containing policyholder investment information:

Find the sum of all `tiv_2016` values for policyholders who satisfy BOTH conditions:

1. Their `tiv_2015` value is shared by at least one other policyholder
2. Their `(lat, lon)` location pair is unique

Return the final sum rounded to 2 decimal places.

---

## 🗂️ Table Schema

| Column Name | Type  |
| ----------- | ----- |
| pid         | int   |
| tiv_2015    | float |
| tiv_2016    | float |
| lat         | float |
| lon         | float |

- `pid` is the primary key
- `(lat, lon)` represents the policyholder’s city location

---

## 🧠 Approach

This problem involves applying two separate filtering conditions.

### Step 1

Find all `tiv_2015` values that appear more than once.

These represent policyholders sharing the same investment value in 2015.

---

### Step 2

Find all `(lat, lon)` pairs that appear exactly once.

These represent unique locations.

---

### Step 3

Keep only rows satisfying BOTH conditions:

- duplicated `tiv_2015`
- unique `(lat, lon)`

Then calculate the sum of their `tiv_2016` values.

Finally, round the result to 2 decimal places.

---

## 🛠️ Key SQL Concepts

- `GROUP BY`
- `HAVING`
- `COUNT(*)`
- Subqueries
- `IN`
- Tuple filtering using `(lat, lon)`
- `ROUND()`
- Aggregation using `SUM()`

---

## 📈 Example

### Input

| pid | tiv_2015 | tiv_2016 | lat | lon |
| --- | -------- | -------- | --- | --- |
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |

---

### Step-by-Step

#### Repeated `tiv_2015`

| tiv_2015 |
| -------- |
| 10       |

So rows with `tiv_2015 = 10` qualify.

---

#### Unique Locations

| lat | lon |
| --- | --- |
| 10  | 10  |
| 40  | 40  |

The pair `(20,20)` is repeated, so those rows fail.

---

#### Valid Rows

| pid | tiv_2016 |
| --- | -------- |
| 1   | 5        |
| 4   | 40       |

---

### Output

| tiv_2016 |
| -------- |
| 45.00    |

---

## ⏱️ Complexity

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

---

## 🔗 Notes

This problem is useful for practicing:

- Multi-condition filtering
- Aggregation with `GROUP BY`
- Finding duplicate and unique groups
- Tuple-based filtering in SQL
- Nested subqueries

---

⭐ If you found this helpful, consider starring the repo!
