# Matrix Operations & Linear Algebra in Excel

## 📊 Project Overview

This project demonstrates advanced Excel proficiency through implementation of **core linear algebra concepts** using Excel's array functions and formulas. It covers matrix operations including multiplication, inversion, transposition, determinants, and solving systems of linear equations.

## 🎯 Learning Objectives

This project exercises:
- ✅ Matrix multiplication using MMULT
- ✅ Matrix inversion using MINVERSE
- ✅ Matrix transposition using TRANSPOSE
- ✅ Determinant calculation
- ✅ Solving systems of linear equations using matrix methods
- ✅ Array formulas and complex calculations in Excel
- ✅ Advanced mathematical modeling

## 🛠️ Tools & Techniques

- **Tool:** Microsoft Excel
- **Functions Used:**
  - `MMULT()` — Matrix multiplication
  - `MINVERSE()` — Matrix inversion
  - `TRANSPOSE()` — Matrix transposition
  - `MDETERM()` — Matrix determinant
  - Array formulas (Ctrl+Shift+Enter)
  - Mathematical operations on matrices

## 📁 Files in This Project

- `matrix_operations.xlsx` — Complete workbook with all operations and examples
- `README.md` — This file

### Workbook Sheets

1. **Sheet 1 — Matrix Multiplication**
   - Example A (3×2) × B (2×3) = AB (3×3)
   - Example BA (2×2)
   - Demonstrates MMULT function and non-commutative property

2. **Sheet 2 — Matrix Inversion**
   - Example 3×3 matrix inverse using MINVERSE
   - Example 2×2 matrix inverse
   - Demonstrates A⁻¹ where A·A⁻¹ = Identity matrix

3. **Sheet 3 — Matrix Transposition**
   - Example A (3×3) transpose = A' (3×3)
   - Example B (3×2) transpose = B' (2×3)
   - Demonstrates swapping rows and columns

4. **Sheet 4 — Matrix Determinant**
   - Calculate |A| (determinant of 3×3 matrix)
   - Result: 6 (shown as 1×1 scalar)
   - Used for determining matrix invertibility

5. **Sheet 5 — System of Linear Equations**
   - Solve: x+y+z=6, 2x-y+3z=9, 3x+2y-z=4
   - Matrix form: AX = B, solve X = A⁻¹·B
   - Solution: x≈1, y≈2, z≈3

## 💡 How to Use This Workbook

### Opening the File
1. Open `matrix_operations.xlsx` in Excel
2. Navigate through each sheet to see different operations
3. View the formulas in the formula bar to understand syntax

### Key Formulas Explained

#### Matrix Multiplication (MMULT)
```excel
=MMULT(A1:B3, D1:E4)
```
- Multiplies a 3×2 matrix by a 2×3 matrix
- Result is a 3×3 matrix
- Must be entered as an array formula (Ctrl+Shift+Enter)

#### Matrix Inversion (MINVERSE)
```excel
=MINVERSE(A1:C3)
```
- Inverts a square matrix (3×3 in this example)
- Useful for solving linear systems
- Returns an error if matrix is singular (non-invertible)

#### Matrix Transpose (TRANSPOSE)
```excel
=TRANSPOSE(A1:C3)
```
- Swaps rows and columns
- A 3×3 matrix transposed = 3×3 matrix
- A 3×2 matrix transposed = 2×3 matrix

#### Determinant (MDETERM)
```excel
=MDETERM(A1:C3)
```
- Calculates scalar determinant of square matrix
- Non-zero determinant = matrix is invertible
- Used in Cramer's rule for solving linear systems

#### Solving Linear System (A⁻¹ × B)
```excel
=MMULT(MINVERSE(A1:C3), E1:E3)
```
- To solve AX = B: X = A⁻¹·B
- MINVERSE finds A⁻¹
- MMULT multiplies A⁻¹ by the B column vector
- Result is the solution vector X

## 📊 Examples & Solutions

### Example 1: Matrix Multiplication
**A (3×2):**
```
| 1   2 |
| 2   5 |
| 4  -2 |
```

**B (2×3):**
```
| 3   2   4 |
| -1  8   7 |
```

**A×B (3×3):**
```
| 1   18  18 |
| 1   44  43 |
| 14  -8   2 |
```

---

### Example 2: Solving System of Equations
**System:**
```
x + y + z = 6
2x - y + 3z = 9
3x + 2y - z = 4
```

**Matrix Form (AX = B):**
```
A = | 1   1   1  |    B = | 6 |
    | 2  -1   3  |        | 9 |
    | 3   2  -1  |        | 4 |
```

**Solution (X = A⁻¹B):**
```
x ≈ 1
y ≈ 2
z ≈ 3
```

---

## 🔍 Mathematical Concepts

### Matrix Multiplication
- Not commutative: AB ≠ BA
- Dimensions: (m×n) × (n×p) = (m×p)
- Formula: (AB)ᵢⱼ = Σₖ Aᵢₖ × Bₖⱼ

### Matrix Inversion
- A⁻¹ exists only if det(A) ≠ 0
- A × A⁻¹ = I (identity matrix)
- Used to solve linear systems: X = A⁻¹B

### Determinant
- Scalar value describing matrix properties
- Non-zero determinant = invertible matrix
- Used in Cramer's rule and volume calculations

### Transpose
- Swap rows and columns: (A')ᵢⱼ = Aⱼᵢ
- (A')' = A (transpose of transpose = original)
- Used in linear algebra and statistics

---

## 🎓 What I Learned

- Excel's powerful array function capabilities
- How to perform complex mathematical operations without programming
- Practical application of linear algebra in business
- Solving real-world problems (systems of equations)
- Matrix operations and their properties
- Array formulas in Excel (Ctrl+Shift+Enter)
- Mathematical notation and verification

## 📌 Real-World Applications

These skills apply to:
- **Finance:** Portfolio optimization, risk modeling
- **Engineering:** System simulations, structural analysis
- **Data Science:** Regression models, data transformations
- **Operations:** Supply chain optimization, resource allocation
- **Manufacturing:** Production scheduling, cost analysis

## 🏆 Extension Ideas

Try these modifications:
1. **Larger matrices:** Scale up to 5×5 or larger
2. **Complex numbers:** Include imaginary units (requires additional setup)
3. **Eigenvalues:** Calculate eigenvectors (advanced Excel)
4. **Regression:** Use matrices to solve linear regression problems
5. **3D transformations:** Apply matrices to 3D coordinate rotations

---

## 💡 Tips for Excel Matrix Operations

1. **Array formulas:** Always press Ctrl+Shift+Enter, not just Enter
2. **Dimensions matter:** Check that matrix dimensions are compatible
3. **Error checking:** Use IFERROR() to handle singular matrices gracefully
4. **Performance:** Large matrices (>10×10) may slow down calculations
5. **Verification:** Multiply A × A⁻¹ to verify inversion worked

---

**Project Date:** 2025 | **Status:** Completed | **Skill Level:** Advanced
