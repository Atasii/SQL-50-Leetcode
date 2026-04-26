# 🧩 1527. Patients With a Condition

## 📌 Problem Summary

Given a table `Patients`, each row contains a list of medical condition codes separated by spaces.

We need to identify patients who have **Type I Diabetes**, where:

> A condition is considered Type I Diabetes if it **starts with the prefix `DIAB1`**

---

## 🧠 Key Challenge

The `conditions` column:

- contains **multiple codes in one string**
- codes are **space-separated**
- we must match `DIAB1` as a **prefix of a code**, not as part of another word

### ❌ Incorrect approach

Using:

```sql
LIKE '%DIAB1%'
```

This is too broad — it will also match:

- `SADIAB100` ❌ (invalid)

---

## ✅ Correct Approach

We need to ensure:

- `DIAB1` appears at the **start of the string**, OR
- appears **after a space**

### ✔ Logic:

```text
Start of string → DIAB1%
OR
Space before → % DIAB1%
```

---

## 🔍 Example

| conditions   | Match? |
| ------------ | ------ |
| DIAB100 MYOP | ✅     |
| ACNE DIAB100 | ✅     |
| SADIAB100    | ❌     |
| DIAB201      | ❌     |

---

## 🧠 Key Insight

This problem tests your understanding of:

- string pattern matching in SQL
- handling **space-separated values**
- avoiding **false positives**

---

## 🚀 Takeaway

Whenever dealing with word-like patterns in SQL:

- avoid overly broad `%keyword%`
- think about **word boundaries** (start or space)

---

## 🏁 Final Output

Returns all patients who have at least one condition code starting with `DIAB1`.
