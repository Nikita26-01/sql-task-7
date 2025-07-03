# Task 7 - Creating and Using SQL Views

## Objective
Learn to create and use SQL **views** to simplify complex queries and abstract reusable logic.

##  Tools Used
- MySQL Workbench
-  DB Browser for SQLite

## Files
- `task7.sql`: Contains table creation, sample data insertion, view definitions, and view usage examples in MySQL syntax.

## Key Concepts
- **Views** help abstract complex SQL logic and enhance security.
- A view is a virtual table created using a `SELECT` query.
- Views can include **calculated fields** for on-the-fly computation.

---

## Views Created

### 1. `IT_Employees`
Displays only employees in the IT department.

### 2. `High_Salary_Employees`
Shows all employees earning more than 60,000.

### 3. `Employee_Summary` (**View with Calculated Fields**)
Includes:
- Full name (by concatenating first and last name)
- Years worked (by calculating date difference between today and JoinDate)

**MySQL syntax:**
```sql
CONCAT(FirstName, ' ', LastName) AS FullName,
ROUND(DATEDIFF(CURDATE(), JoinDate) / 365, 2) AS Years_Worked
