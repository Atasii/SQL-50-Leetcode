# 🐦 Invalid Tweets (LeetCode 1683)

## 📌 Problem Overview

This project solves the **"Invalid Tweets"** problem using SQL.

We are given a `Tweets` table that stores tweet content. The goal is to **identify tweets that exceed the allowed character limit**.

A tweet is considered **invalid** if:

- Its content length is **strictly greater than 15 characters**

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the **primary key**
- `content` contains letters, spaces, and `!`

---

## 🎯 Objective

Return the `tweet_id` of all tweets where:

- `content` length > 15

---

## 💡 Approach

We use:

- `CHAR_LENGTH()` to count the number of characters
- `WHERE` clause to filter tweets exceeding the limit

⚠️ Important:

- Use `CHAR_LENGTH()` instead of `LENGTH()` to correctly handle character counts

---

## 📊 Example

### Input

| tweet_id | content                           |
| -------- | --------------------------------- |
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

---

### Output

| tweet_id |
| -------- |
| 2        |

---

## 🧠 Key Learnings

- Using string functions like `CHAR_LENGTH()`
- Filtering data based on character limits
- Understanding difference between `LENGTH()` and `CHAR_LENGTH()`

---

## 🚀 Skills Practiced

- SQL String Functions
- Conditional Filtering
- Writing Clean Queries

## 🔗 Author

Built as part of SQL practice for data analytics and interview preparation.
