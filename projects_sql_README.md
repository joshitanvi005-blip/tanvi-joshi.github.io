# SQL Queries — Parks & Recreation HR Database

## 📊 Project Overview

This project demonstrates comprehensive SQL proficiency through a series of progressively complex queries on the **Parks & Recreation HR Database**. The queries cover fundamental to advanced SQL concepts, including JOINs, subqueries, aggregations, string functions, and CASE statements.

## 🎯 Learning Objectives

This project exercises:
- ✅ Data retrieval and filtering
- ✅ Aggregation and grouping
- ✅ Multi-table joins (INNER, OUTER, SELF)
- ✅ Set operations (UNION)
- ✅ String manipulation functions
- ✅ Conditional logic (CASE statements)
- ✅ Nested queries (subqueries)

## 🛠️ Tools & Techniques

- **Database:** MySQL
- **Concepts Covered:**
  - SELECT, WHERE, LIKE
  - ORDER BY, LIMIT, aliasing
  - GROUP BY, HAVING, aggregate functions (COUNT, AVG, MAX, MIN)
  - INNER JOIN, LEFT JOIN, RIGHT JOIN, SELF JOIN
  - Multi-table JOINs
  - UNION, UNION ALL
  - String functions (LENGTH, UPPER, LOWER, SUBSTRING, LEFT, RIGHT, REPLACE, LOCATE, CONCAT)
  - CASE statements
  - Subqueries in FROM and WHERE clauses

## 📁 Files in This Project

### Beginner Queries
1. **1_Select.sql** — Basic SELECT statement from employee tables
2. **2_Select_statement_tutorial.sql** — SELECT with multiple columns, DISTINCT, calculations
3. **3_Where_clause.sql** — Filtering with WHERE, logical operators (AND, OR, NOT), LIKE patterns

### Intermediate Queries
4. **4_Group_By_Order_By.sql** — Aggregation with GROUP BY, ORDER BY sorting
5. **5_Having_VS_Where.sql** — HAVING clause for aggregate filtering vs WHERE for row filtering
6. **6_Limit_and_Aliasing.sql** — LIMIT for result limiting, aliases for columns

### Advanced Queries
7. **1_Joins.sql** — INNER JOIN, OUTER JOIN (LEFT, RIGHT), SELF JOIN, multi-table JOINs
8. **2_Unions.sql** — UNION and UNION ALL for combining result sets
9. **3_String_Functions.sql** — LENGTH, UPPER, LOWER, SUBSTRING, LEFT, RIGHT, REPLACE, LOCATE, CONCAT
10. **4_Case_Statements.sql** — Conditional logic with CASE WHEN statements
11. **5_Sub_Queries.sql** — Nested queries for complex filtering

## 💡 Key Queries Explained

### Query 1: Basic SELECT & Aggregation
```sql
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
```
**Purpose:** Find average, max, and min age by gender

---

### Query 2: WHERE vs HAVING
```sql
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;
```
**Purpose:** Find manager occupations with average salary > 75K
**Key:** WHERE filters rows before grouping; HAVING filters after grouping

---

### Query 3: Multi-Table JOIN
```sql
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
  ON sal.dept_id = pd.department_id;
```
**Purpose:** Join employees with their salary and department info

---

### Query 4: CASE Statement
```sql
SELECT first_name, last_name, salary,
  CASE
    WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
  END AS new_salary,
  CASE
    WHEN dept_id = 6 THEN salary * 0.10
  END AS bonus
FROM employee_salary;
```
**Purpose:** Calculate salary increases and bonuses based on conditions

---

### Query 5: String Functions
```sql
SELECT first_name,
  LENGTH(first_name) AS name_length,
  UPPER(first_name) AS upper_name,
  LEFT(first_name, 4) AS first_4,
  SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;
```
**Purpose:** Extract and transform string data

---

## 📊 Database Schema (HR Example)

| Table | Columns |
|-------|---------|
| `employee_demographics` | employee_id, first_name, last_name, birth_date, age, gender |
| `employee_salary` | employee_id, first_name, last_name, salary, dept_id, occupation |
| `parks_departments` | department_id, department_name |

## 💡 How to Use These Queries

1. **Learn:** Read through the queries to understand SQL syntax
2. **Practice:** Modify queries to ask different questions
3. **Adapt:** Replace table/column names with your own database
4. **Combine:** Mix techniques (JOIN + CASE + aggregation) for complex analysis

## 🔍 Common SQL Patterns Used

### Pattern 1: Filtering & Aggregation
```sql
SELECT [columns], COUNT(*)
FROM [table]
WHERE [condition]
GROUP BY [columns]
HAVING [aggregate_condition]
ORDER BY [column];
```

### Pattern 2: Multi-Table JOIN
```sql
SELECT *
FROM [table1] AS t1
INNER/LEFT/RIGHT JOIN [table2] AS t2
  ON t1.key = t2.key
WHERE [conditions];
```

### Pattern 3: Conditional Logic
```sql
SELECT column1, 
  CASE
    WHEN [condition1] THEN [value1]
    WHEN [condition2] THEN [value2]
    ELSE [value3]
  END AS new_column
FROM [table];
```

## 🎓 What I Learned

- Query structure and execution order (FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY)
- Difference between WHERE (row-level) and HAVING (aggregate-level) filtering
- JOIN mechanics and when to use each type (INNER, LEFT, RIGHT)
- String manipulation for data cleaning and extraction
- CASE statements for business logic in queries
- Subqueries for complex, nested filtering
- Performance considerations (indexes, join order)

## 📌 Practice Exercises

Try modifying these queries to:
1. Find employees who joined after 2015 and earn > $60K
2. List departments with average salary > $55K
3. Join multiple tables to find top earners per department
4. Use string functions to extract month/year from birth_date
5. Create a CASE statement that assigns performance tiers based on salary

## 🏆 Real-World Applications

These SQL skills apply to:
- **HR Analytics:** Employee salaries, tenure, turnover analysis
- **E-Commerce:** Order analysis, customer segmentation, product performance
- **Finance:** Revenue reports, cost analysis, budget tracking
- **Marketing:** Campaign performance, customer demographics, ROI tracking

---

**Project Date:** 2025 | **Status:** Completed | **Database:** Parks & Recreation HR
