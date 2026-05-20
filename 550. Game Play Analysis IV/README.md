# 🎮 550. Game Play Analysis IV (SQL)

## 📌 Problem

Given a table `Activity` containing game login records:

Find the fraction of players who logged in again exactly one day after their first login.

Return the result rounded to 2 decimal places.

---

## 🗂️ Table Schema

| Column Name  | Type |
| ------------ | ---- |
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

- `(player_id, event_date)` is the primary key
- Each row represents a player's activity on a specific day

---

## 🧠 Approach

For each player:

1. Identify their first login date
2. Check whether they logged in again on the next day
3. Count such players
4. Divide by the total number of distinct players

Finally, round the result to 2 decimal places.

---

## 🛠️ Key SQL Concepts

- Window Functions
- `ROW_NUMBER()`
- `LEAD()`
- `DATEDIFF()`
- `COUNT(DISTINCT ...)`
- Subqueries
- `ROUND()`

---

## 📈 Example

### Input

| player_id | device_id | event_date | games_played |
| --------- | --------- | ---------- | ------------ |
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

---

### Output

| fraction |
| -------- |
| 0.33     |

---

## 🧾 Explanation

- Player `1` logged in on:
  - `2016-03-01`
  - `2016-03-02`

  The second login happened exactly one day later, so this player qualifies.

- Player `2` logged in only once.

- Player `3` did not log in on the next consecutive day after the first login.

So:

```text
1 qualifying player / 3 total players = 0.33
```
