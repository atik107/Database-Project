# 🏥 Hospital Management System – RDBMS Project

## 📌 Project Description
This project is a comprehensive **Database Management System (DBMS)** for a hospital, built using **Oracle SQL** and **PL/SQL**. It manages patients, doctors, medicines, billing, and their relationships, automating critical processes like billing and stock updates through triggers and stored procedures.

---

## 🗃️ Database Schema

### 1. **Tables & Keys**
| Table Name         | Description                          | Primary Key          | Foreign Keys                             |
|--------------------|--------------------------------------|----------------------|-------------------------------------------|
| `patient`          | Stores patient details               | `patient_id`         | –                                         |
| `doctor`           | Stores doctor details                | `doctor_id`          | –                                         |
| `medicine`         | Stores medicine info and stock       | `medicine_id`        | –                                         |
| `bill`             | Stores billing information           | `bill_id`            | `patient_id → patient.patient_id`         |
| `patient_doctor`   | Maps patients to doctors             | –                    | `patient_id`, `doctor_id` (both FKs)     |
| `patient_medicine` | Maps patients to medicines           | –                    | `patient_id`, `medicine_id` (both FKs)   |

---

## 🛠️ Core Features

### ✅ Table Operations
- Normalized structure with `PRIMARY` and `FOREIGN` keys
- Data types chosen for scalability and integrity

### ✅ PL/SQL Programs
- **Anonymous blocks** for:
  - Data retrieval
  - Row-level manipulation
  - Cursor iteration
  - Conditional logic
  - VARRAY usage
- **Stored Procedure**: `update_stock(med_id, new_stock)`

### ✅ Triggers
| Trigger Name          | Timing & Event      | Description                                      |
|-----------------------|---------------------|--------------------------------------------------|
| `update_stock`        | AFTER INSERT         | Decrements medicine stock on assigning to patient |
| `calculate_bill_amount` | BEFORE INSERT       | Calculates bill as `SUM(stock) * 10`             |
| `validate_age`        | BEFORE INSERT         | Restricts patient age between 0 and 150          |

---

## 💻 Sample Outputs (PL/SQL)
