# Economic Factors and Subjective Well-Being  
## An Analysis of GDP, Social Support, and Regional Differences  
**Yoshihiro Tsunoda**  
*17/11/2025*

---

## Skills Included
This research project demonstrates the following technical, analytical, and software skills:

### Technical & Analytical Skills
- Data wrangling (cleaning, renaming, filtering, missing-data handling)
- Exploratory data analysis (EDA)
- Correlation analysis
- Simple and multiple linear regression modeling
- Group comparison analysis
- Interpretation of statistical results
- Research structuring and hypothesis testing

### Software & Tools
- R (tidyverse, ggplot2, dplyr)
- Microsoft Excel
- Data visualization

---

## Abstract
This report investigates whether economic prosperity is associated with higher levels of happiness across countries. In particular, it compares Nordic countries with the rest of the world using cross-sectional data from the World Happiness Report. The analysis focuses on two primary predictors—GDP per capita and Social Support—and evaluates their individual and combined effects on national happiness scores. Results indicate strong positive relationships and highlight distinct characteristics of Nordic nations.

---

## 1. Introduction
Understanding what drives national happiness has become a central question in social science and public policy. The World Happiness Report provides a unique dataset that quantifies subjective well-being across countries. Nordic nations are frequently ranked at the top, raising the question of what makes their populations consistently happier.

This study aims to examine:

1. Whether economically wealthy countries tend to have higher happiness scores  
2. Whether social support influences happiness  
3. Whether Nordic countries differ significantly from other regions  
4. How well GDP and social support together explain happiness levels  

---

## 2. Data and Methods

### Dataset
- **Source:** World Happiness Report (2019)  
- **Sample size:** 156 countries  
- **Variables used:**  
  - Happiness Score
  - GDP per Capita  
  - Social Support  
  - Country / Region  
  - Region classification (Nordic / Other)

### Data Processing
- Removal of unnecessary columns  
- Renaming variables for clarity  
- Checking for missing values (none requiring imputation)  
- Creating a “Region” variable to classify Nordic countries  
- Standard exploratory data analysis (EDA)

### Statistical Methods
- Pearson correlation analysis  
- Simple linear regression models  
  - Model 1: Happiness ~ GDP per Capita  
  - Model 2: Happiness ~ Social Support  
- Multiple linear regression  
  - Model 3: Happiness ~ GDP + Social Support  
- Group comparison between Nordic and non-Nordic nations

---

## 3. Results

### 3.1 Descriptive Findings and Bivariate Relationships
The initial analyses examined the associations between happiness scores and two key predictors: GDP per capita and social support. Scatter plots showed clear positive relationships in both cases: countries with higher economic prosperity and stronger social networks tend to report higher happiness scores. A comparison between Nordic and non-Nordic countries further highlighted this pattern, as Nordic countries consistently cluster at the higher end of the happiness scale.

**Figure 1. Relationship Between GDP per Capita and Happiness Score**  
Higher GDP per capita is associated with higher national happiness.

**Figure 2. Relationship Between Social Support and Happiness Score**  
Countries with stronger social support systems tend to report higher happiness.

---

### 3.2 Regression Model Results
To evaluate the relative contributions of GDP per capita and social support, three linear regression models were estimated.

- **Model 1**, which included only GDP per capita as a predictor, explained **63.0%** of the variance in happiness scores (Adjusted R² = 0.628). GDP per capita was a strong and highly significant predictor (p < 0.001), indicating that economic prosperity alone accounts for a substantial portion of cross-country differences in happiness.

- **Model 2**, which included only social support, explained **60.4%** of the variance (Adjusted R² = 0.601). Social support was also a strong and highly significant predictor (p < 0.001), demonstrating that the quality of interpersonal and community relationships is similarly influential.

- **Model 3**, which included both predictors simultaneously, improved the model fit considerably, with **70.4%** of the variance explained (Adjusted R² = 0.700). Both GDP per capita and social support remained significant (p < 0.001), though their coefficients decreased relative to the single-predictor models. This suggests that each variable captures part of the same underlying variance but also contributes unique explanatory power.

---

### 3.3 Model Fit: Predicted vs Actual Values
A scatter plot comparing predicted and actual happiness scores for Model 3 showed that most observations lie close to the identity line, indicating strong model accuracy. The distribution of residuals (Residual Standard Error = 0.610) further supports that the model provides a reliable approximation of real-world happiness levels across countries.

**Figure 3. Predicted vs. Actual Happiness Scores (Model 3)**  
The predicted values lie close to the diagonal line, indicating strong model accuracy.

---

### 3.4 Nordic vs Other Countries
- Nordic countries show significantly higher median happiness scores.  
- Their GDP and Social Support levels are also consistently high.

**Figure 4. Comparison of Happiness Scores: Nordic vs Other Countries**  
Nordic countries consistently show higher happiness levels compared to other nations.

---

## 4. Discussion
The results support the hypothesis that economic and social factors strongly influence national happiness. GDP per capita reflects material well-being and national prosperity, contributing to higher satisfaction. Social Support measures perceived availability of help, which aligns with psychological theories of well-being.

The Nordic countries’ high performance across all indicators suggests that both material wealth and robust social systems create a synergistic effect. The combined regression model (Model 3) further demonstrates that economic prosperity alone is not enough—social structures matter greatly.

---

## 5. Conclusion
This study concludes that:

1. Higher GDP per capita is associated with higher happiness.  
2. Greater social support is also strongly linked to happiness.  
3. Combining both variables explains national happiness more accurately than either one alone.  
4. Nordic countries stand out due to consistently high levels in both GDP and social support.  

These findings highlight the importance of balanced economic and social policies in improving national well-being.

---

## 6. References
John F. Helliwell, Richard Layard and Jeffrey D. Sachs  
*World Happiness Report 2019*
