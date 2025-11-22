# 🌍 Happiness Analysis (World Happiness Report 2019)

This repository contains an exploratory data analysis (EDA) of the 2019 World Happiness Report.  
The goal of this project is to examine how key national-level factors relate to overall happiness scores across 156 countries.

---


## 📊 Research Questions

1. **Are wealthier countries happier?**  
   → Examined using GDP per capita.

2. **Does stronger social support relate to higher happiness?**

3. **Which predicts happiness more strongly?**  
   - GDP  
   - Social Support  
   - Both combined

4. **Do Nordic countries (Finland, Sweden, Denmark, Norway, Iceland) differ from others?**

---

## 🔍 Methods & Techniques

- Descriptive statistics
- Pearson correlations
- Simple linear regression
  - Model 1: Happiness ~ GDP  
  - Model 2: Happiness ~ Social Support
- Multiple regression
  - Model 3: Happiness ~ GDP + Social Support
- Group comparison:
  - Nordic vs Non-Nordic countries
- Visualizations using **ggplot2**

---

## 📈 Key Findings

### ✔ GDP per Capita
- Strong positive relationship with happiness  
- Adjusted R² ≈ 0.628 (Model 1)

### ✔ Social Support
- Also strongly associated  
- Adjusted R² ≈ 0.601 (Model 2)

### ✔ Combined Model
- GDP + Social Support  
- Highest explanatory power  
- Adjusted R² ≈ 0.700  (Model 3)
- Both predictors remain statistically significant

### ✔ Nordic Countries
- Average happiness noticeably higher  
- Consistently strong performance on both GDP and social support

---

## 🧠 Interpretation

Economic prosperity matters for national happiness,  
but **social structure and community support add significant additional explanatory power**.

Nordic nations score well because they combine:

- High material well-being  
- Strong social systems and trust

---

## 📂 Figures

All figures are available in:

report/figures/

Includes:

- `gdp_vs_happiness.png`
- `support_vs_happiness.png`
- `nordic_vs_other.png`
- `predicted_vs_actual.png`

---

## 🧪 Reproducing the Analysis

Ensure R and required libraries are installed:

   install.packages("tidyverse")
   install.packages("ggplot2")

---

## 📜 Reports

[English version(PDF)](01_report/happiness_report_en.pdf)  

[Japanese version (PDF)](01_report/happiness_report_ja.pdf)

---

## 📦 Data Source

World Happiness Report (2019)

---

## 🏷 License

MIT License
