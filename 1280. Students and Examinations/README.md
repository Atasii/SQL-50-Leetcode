# 🎓 1280. Students and Examinations (SQL)

## 📌 Problem

Given three tables:

- `Students`
- `Subjects`
- `Examinations`

Find the number of times each student attended each subject exam.

The result must include:

- Every student
- Every subject
- Even if the student never attended that exam

Return the result ordered by `student_id` and `subject_name`.

---

## 🗂️ Table Schemas

### Students

| Column Name  | Type    |
| ------------ | ------- |
| student_id   | int     |
| student_name | varchar |

---

### Subjects

| Column Name  | Type    |
| ------------ | ------- |
| subject_name | varchar |

---

### Examinations

| Column Name  | Type    |
| ------------ | ------- |
| student_id   | int     |
| subject_name | varchar |

- The table may contain duplicate rows
- Each row represents one exam attendance

---

## 🧠 Approach

### Step 1

Generate all possible combinations of:

- every student
- every subject

using a `CROSS JOIN`.

This ensures even students who never attended an exam appear in the final output.

---

### Step 2

Count how many times each student attended each subject exam.

This is done by grouping the `Examinations` table using:

- `student_id`
- `subject_name`

---

### Step 3

Use a `LEFT JOIN` to combine:

- all student-subject combinations
  with
- the attendance counts

Missing values are replaced with `0`.

---

## 🛠️ Key SQL Concepts

- `CROSS JOIN`
- `LEFT JOIN`
- `GROUP BY`
- `COUNT(*)`
- `IFNULL()`

---

## 📈 Example

### Input

#### Students

| student_id | student_name |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

---

#### Subjects

| subject_name |
| ------------ |
| Math         |
| Physics      |
| Programming  |

---

#### Examinations

| student_id | subject_name |
| ---------- | ------------ |
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

---

### Output

| student_id | student_name | subject_name | attended_exams |
| ---------- | ------------ | ------------ | -------------- |
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## ⏱️ Complexity

- **Time Complexity:** O(S × Sub + E)
- **Space Complexity:** O(S × Sub)

Where:

- `S` = number of students
- `Sub` = number of subjects
- `E` = number of examination records

---

## 🔗 Notes

This problem is useful for practicing:

- Generating combinations using `CROSS JOIN`
- Aggregation with `GROUP BY`
- Handling missing matches using `LEFT JOIN`
- Replacing NULL values using `IFNULL`

---

⭐ If you found this helpful, consider starring the repo!
