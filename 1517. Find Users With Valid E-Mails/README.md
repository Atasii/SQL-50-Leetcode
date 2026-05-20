# 📧 1517. Find Users With Valid E-Mails (SQL)

## 📌 Problem

Given a table `Users` containing user email addresses:

Find all users whose emails are valid.

A valid email must satisfy:

- The prefix:
  - starts with a letter
  - may contain:
    - uppercase letters
    - lowercase letters
    - digits
    - underscore `_`
    - period `.`
    - dash `-`

- The domain must be exactly:

```text
@leetcode.com
```

Return the result table in any order.

---

## 🗂️ Table Schema

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |
| mail        | varchar |

- `user_id` is the primary key

---

## 🧠 Approach

This problem is solved using regular expressions.

We check whether:

1. The email starts with a letter
2. The prefix contains only allowed characters
3. The email ends exactly with:

```text
@leetcode.com
```

Regex functions such as:

- `REGEXP`
- `REGEXP_LIKE()`

can be used for pattern matching.

Case-sensitive matching is important for validating the exact domain.

---

## 🛠️ Key SQL Concepts

- Regular Expressions (Regex)
- `REGEXP`
- `REGEXP_LIKE()`
- Pattern Matching
- Case-sensitive flags

---

## 📈 Example

### Input

| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |

---

### Output

| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |

---

## 🧾 Explanation

### Valid Emails

- `winston@leetcode.com`
  - Starts with a letter
  - Uses allowed characters
  - Correct domain

- `bella-@leetcode.com`
  - Dash `-` is allowed

- `sally.come@leetcode.com`
  - Period `.` is allowed

---

### Invalid Emails

- `jonathanisgreat`
  - Missing domain

- `quarz#2020@leetcode.com`
  - `#` is not allowed

- `david69@gmail.com`
  - Wrong domain

- `.shapo@leetcode.com`
  - Prefix does not start with a letter

---

## ⏱️ Complexity

- **Time Complexity:** O(n)
- **Space Complexity:** O(1)

---

## 🔗 Notes

This problem is useful for practicing:

- Regex pattern matching
- Email validation
- SQL string filtering
- Case-sensitive regex handling

---

⭐ If you found this helpful, consider starring the repo!
