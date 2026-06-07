# Motor Trend Car Analysis — Multiple Linear Regression

## 📊 Project Overview

This project performs exploratory data analysis (EDA) on the **mtcars dataset** using R and RStudio. The analysis builds a multiple linear regression model to predict fuel efficiency (MPG) based on horsepower (HP) and weight (WT), and creates visualizations to understand relationships in the data.

## 🎯 Research Question

**What factors most influence a car's fuel efficiency (miles per gallon)?**

Specifically:
- How much does horsepower affect MPG?
- How much does weight affect MPG?
- What's the predictive power of these two variables combined?

## 📊 Key Findings

✅ **Regression Model:** `MPG = Intercept + β₁(HP) + β₂(WT)`

✅ **Coefficients:** 
- Intercept ≈ [value from model]
- β₁ (HP coefficient) ≈ [negative, indicating higher HP → lower MPG]
- β₂ (WT coefficient) ≈ [negative, indicating heavier cars → lower MPG]

✅ **Interpretation:** For every unit increase in horsepower, MPG decreases by ~[value]. For every 1000 lb increase in weight, MPG decreases by ~[value].

✅ **Visualizations reveal:**
- MPG distribution is relatively normal (histogram)
- Weight varies widely across cars (boxplot)
- Strong negative correlation between HP/WT and MPG

## 🛠️ Tools & Techniques Used

- **Language:** R / RStudio
- **Techniques:**
  - Exploratory Data Analysis (EDA)
  - Descriptive statistics (mean, median, standard deviation)
  - Multiple linear regression (lm function)
  - Data visualization (histogram, barplot, boxplot)
  - Model coefficient extraction and interpretation

## 📁 Files in This Project

- `motor_trend_analysis.R` — Complete R script with all code
- `README.md` — This file

## 💡 How to Run

1. Open RStudio
2. Open the `motor_trend_analysis.R` file
3. Run the script line-by-line or all at once (Ctrl+A, then Ctrl+Enter)
4. View the plots in the RStudio Plots pane
5. Check the console for regression coefficients

## 📈 Code Breakdown

### Step 1: Load and Explore Data
```r
data1 <- mtcars
head(data1)
mean(data1$mpg)
median(data1$mpg)
sd(data1$mpg)
```

### Step 2: Visualizations
```r
# Histogram of MPG
hist(data1$mpg, col = "pink", border = "blue", 
     xlab = "mpg", ylab = "frequency", 
     main = "HISTOGRAM OF MPG")

# Barplot of displacement
barplot(data1$disp, col = "yellow", border = "green",
        xlab = "disp", ylab = "frequency",
        main = "BARPLOT OF DISP")

# Boxplot of weight
boxplot(data1$wt, col = "skyblue", border = "purple",
        xlab = "cyl", ylab = "frequency",
        main = "BOXPLOT OF WT")
```

### Step 3: Multiple Linear Regression
```r
rm <- lm(mpg ~ hp + wt, data = data1)
coef(rm)

# Extract coefficients
intercept <- round(coef(rm)[1], 2)
slope1 <- round(coef(rm)[2], 2)  # HP coefficient
slope2 <- round(coef(rm)[3], 2)  # Weight coefficient
```

## 🔍 Dataset Information

- **Name:** mtcars (Motor Trend Car Road Tests)
- **Rows:** 32 cars
- **Key Variables:**
  - `mpg` — Miles per gallon (dependent variable)
  - `hp` — Gross horsepower
  - `wt` — Weight (1000 lbs)
  - `cyl` — Number of cylinders
  - `disp` — Displacement (cu.in.)

## 💡 Insights & Interpretation

1. **Horsepower impact:** Higher HP cars consume more fuel (lower MPG)
2. **Weight impact:** Heavier cars are less fuel-efficient (lower MPG)
3. **Trade-off:** Manufacturers face a trade-off between performance (HP) and efficiency (MPG)
4. **Practical use:** This model could predict MPG for new car designs

## 🎓 What I Learned

- Setting up an R environment and data analysis workflow
- Descriptive statistics and distribution analysis
- Linear regression modeling and interpretation
- Visualizing relationships in data effectively
- Extracting and rounding model coefficients
- Communicating statistical findings in plain language

## 📌 How to Adapt This

If working with different data:
1. Replace `mtcars` with your dataset: `data1 <- read.csv("your_file.csv")`
2. Change variable names in lm() to match your data
3. Adjust plot colors and labels as needed
4. Add more variables to the regression model: `lm(y ~ x1 + x2 + x3, data = data1)`

---

**Project Date:** 2025 | **Status:** Completed | **Dataset:** mtcars
