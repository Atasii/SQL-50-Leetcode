# 🌍 Big Countries (LeetCode 595)

## 📌 Problem Overview

This project solves the **"Big Countries"** problem using SQL.

We are given a `World` table containing details about different countries such as:

- Name
- Continent
- Area
- Population
- GDP

The task is to identify countries that qualify as **"big"** based on specific conditions.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

- `name` is the **primary key**

---

## 🎯 Objective

A country is considered **big** if:

- 🌐 `area >= 3,000,000`
  **OR**
- 👥 `population >= 25,000,000`

Return:

- `name`
- `population`
- `area`

---

## 💡 Approach

We use a simple SQL query with:

- `SELECT` to retrieve required columns
- `WHERE` clause to apply filtering conditions
- Logical `OR` to capture either condition

---

## 📊 Example

### Input

| name        | continent | area    | population | gdp          |
| ----------- | --------- | ------- | ---------- | ------------ |
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

---

### Output

| name        | population | area    |
| ----------- | ---------- | ------- |
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |

---

## 🧠 Key Learnings

- Using `WHERE` with multiple conditions
- Applying logical operators (`OR`)
- Filtering large datasets efficiently
- Writing clean and readable SQL queries

---

## 🚀 Skills Practiced

- SQL Fundamentals
- Data Filtering
- Logical Conditions
- Query Optimization Basics

---

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
