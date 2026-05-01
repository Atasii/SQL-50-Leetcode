## 📌 1661. Average Time of Process per Machine

### 🧾 Problem Summary

You are given an `Activity` table with:

- `machine_id`: ID of the machine
- `process_id`: ID of the process
- `activity_type`: `'start'` or `'end'`
- `timestamp`: time in seconds

Each `(machine_id, process_id)` has:

- exactly **one `start`**
- exactly **one `end`**

---

### 🎯 Objective

For each machine:

- Compute **processing time per process** = `end - start`
- Return the **average processing time**
- Round to **3 decimal places**

---

## 🔍 Explanation

- `CASE WHEN` separates start and end timestamps
- `MIN(start)` and `MAX(end)` ensure correct pairing
- Inner query computes **time per process**
- Outer query calculates **average per machine**

---

## ⚠️ Note on Alternative

- Works because each process has exactly **2 rows**
- Not ideal if data is messy or in interviews

---

## 🚀 Key Learnings

- Use **CASE WHEN inside aggregates** for conditional logic
- Always **pair related rows** (start & end) before calculations
- Prefer **AVG over manual division** when possible
- Be careful with **COUNT(\*) when rows represent pairs**

---

## ✅ Final Tip

Whenever you see:

> “start” and “end” in SQL

👉 Think: **pair rows first, then compute**
