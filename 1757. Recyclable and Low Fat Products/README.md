# 🥗 Recyclable and Low Fat Products (LeetCode 1757)

## 📌 Problem Overview

This project solves the **"Recyclable and Low Fat Products"** problem using SQL.

We are given a `Products` table containing information about whether a product is:

- Low fat (`low_fats`)
- Recyclable (`recyclable`)

The goal is to **retrieve the IDs of products that satisfy both conditions**.

---

## 🗂️ Table Schema

| Column Name | Type            |
| ----------- | --------------- |
| product_id  | int             |
| low_fats    | enum ('Y', 'N') |
| recyclable  | enum ('Y', 'N') |

- `product_id` is the **primary key**
- `'Y'` = Yes, `'N'` = No

---

## 🎯 Objective

Find all `product_id`s where:

- `low_fats = 'Y'`
- `recyclable = 'Y'`

---

## 💡 Approach

We use a simple **filtering query** with the `WHERE` clause:

- Select only the `product_id`
- Apply conditions for both columns
- Use logical `AND` to ensure both requirements are met

---

## 📊 Example

### Input

| product_id | low_fats | recyclable |
| ---------- | -------- | ---------- |
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

### Output

| product_id |
| ---------- |
| 1          |
| 3          |

---

## 🧠 Key Learnings

- Use `WHERE` for filtering rows
- Combine conditions using `AND`
- Understand ENUM values in SQL
- Avoid using reserved keywords (like `table`) as table names

---

## 🚀 Skills Practiced

- SQL Basics
- Data Filtering
- Logical Conditions
- Query Writing for Interviews

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
