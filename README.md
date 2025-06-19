# 🏥 Hospital Management System – DBMS Project

## 📋 Overview

This project is a **Database Management System (DBMS)** designed for managing hospital operations such as patient records, doctor assignments, medicine distribution, and billing using **Oracle SQL** and **PL/SQL**.

It demonstrates the creation and manipulation of relational tables, use of PL/SQL for procedural operations, and database triggers for automating real-time tasks.

---

## 🗂️ Project Structure

### 🔹 Tables
- `patient`: Stores patient information.
- `doctor`: Stores doctor details.
- `medicine`: Stores information about available medicines and their stock.
- `bill`: Maintains billing details for patients.
- `patient_doctor`: Associates patients with doctors (many-to-many).
- `patient_medicine`: Tracks medicines assigned to patients.

### 🔹 Relationships
- `bill.patient_id → patient.patient_id`
- `patient_doctor.patient_id → patient.patient_id`
- `patient_doctor.doctor_id → doctor.doctor_id`
- `patient_medicine.patient_id → patient.patient_id`
- `patient_medicine.medicine_id → medicine.medicine_id`

---

## 💾 SQL Features Demonstrated

### ✅ Table Creation with Constraints
- Primary keys
- Foreign keys

### ✅ DML Operations
- `INSERT`, `SELECT`, `UPDATE`, `DELETE`
- Use of `ROWTYPE` and `%TYPE`

### ✅ Triggers
- `AFTER INSERT` trigger to auto-decrement medicine stock
- `BEFORE INSERT` trigger to auto-calculate bill amount
- `BEFORE INSERT` trigger to validate patient age

### ✅ PL/SQL Blocks
- Anonymous blocks for:
  - Data insertion
  - Row fetching
  - Cursor iteration
  - Arrays (VARRAY)
  - IF/ELSE logic
- Procedure to update medicine stock

---

## 🚀 Sample PL/SQL Programs

- **Insert a new medicine** with default values.
- **Fetch and display** medicine details using `ROWTYPE`.
- **Cursor-based loop** to show all medicines with row count.
- **Array (VARRAY)** to manage and display a set of medicine names.
- **Conditional (IF-ELSE)** block to categorize medicines.
- **Stored procedure** to update stock based on ID.

---

## ⚙️ Triggers Explained

### 🧮 `update_stock` – Auto-update medicine stock
```sql
AFTER INSERT ON patient_medicine
