# 🍽️ Restaurant Growth (LeetCode 1321)

## 📌 Problem Overview

This project solves the **"Restaurant Growth"** problem using SQL.

We are given a `Customer` table containing daily restaurant transactions.

Each row represents:

- A customer
- The date they visited the restaurant
- The amount they paid

The goal is to calculate the **7-day moving total** and **7-day moving average** of restaurant revenue.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| customer_id | int     |
| name        | varchar |
| visited_on  | date    |
| amount      | int     |

- `(customer_id, visited_on)` is the **primary key**
- Each row represents one customer transaction on a specific day

---

## 🎯 Objective

For each day:

- Calculate the total revenue earned over:
  - the current day
  - plus the previous 6 days
- Compute the average revenue for this 7-day window
- Round the average to **2 decimal places**

Return:

- `visited_on`
- `amount` → 7-day total revenue
- `average_amount` → 7-day moving average

---

## 💡 Approach

The solution uses **window functions** to calculate rolling totals and averages.

### Steps

1. First aggregate daily revenue using `GROUP BY visited_on`
2. Use window functions to create a rolling 7-day window
3. Calculate:
   - Moving sum using `SUM() OVER()`
   - Moving average using `AVG() OVER()`
4. Use `COUNT()` to ensure only complete 7-day windows are included
5. Filter rows where the window size equals 7

---

## 📊 Example

### Input

| customer_id | name    | visited_on | amount |
| ----------- | ------- | ---------- | ------ |
| 1           | Jhon    | 2019-01-01 | 100    |
| 2           | Daniel  | 2019-01-02 | 110    |
| 3           | Jade    | 2019-01-03 | 120    |
| 4           | Khaled  | 2019-01-04 | 130    |
| 5           | Winston | 2019-01-05 | 110    |
| 6           | Elvis   | 2019-01-06 | 140    |
| 7           | Anna    | 2019-01-07 | 150    |

---

### Output

| visited_on | amount | average_amount |
| ---------- | ------ | -------------- |
| 2019-01-07 | 860    | 122.86         |

---

### Explanation

For `2019-01-07`:

7-day revenue =
100 + 110 + 120 + 130 + 110 + 140 + 150 = 860

Average revenue =
860 / 7 = 122.86

---

## 🧠 Key Learnings

- Window Functions in SQL
- Rolling Window Calculations
- Aggregation using `SUM()` and `AVG()`
- Using `OVER()` with frame clauses
- Filtering window results using `COUNT()`

---

## 🚀 Skills Practiced

- SQL Window Functions
- Rolling Aggregation
- Data Analysis Queries
- Query Optimization
- Time-based Calculations

---

## ⚠️ Common Mistakes

❌ Using `7 PRECEDING`  
➡️ This creates an 8-row window instead of 7

❌ Applying window functions directly on raw table rows  
➡️ Multiple transactions on the same date will produce incorrect results

❌ Forgetting to aggregate daily revenue first  
➡️ Always group by `visited_on` before applying window functions

❌ Returning incomplete windows  
➡️ First 6 days should not appear in the result

---

## ⏱️ Complexity Analysis

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

Where `n` is the number of unique dates.

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
