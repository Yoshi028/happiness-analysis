# ----------------------------
# 1. Install Libraries
# ----------------------------
install.packages("tidyverse")

# ----------------------------
# 2. Load Data
# ----------------------------
library(tidyverse)
library(readr)
data <- read_csv("happiness_2019.csv")

# ----------------------------
# 3. Data Cleaning
# ----------------------------
df <- data %>%
          rename(
                  happiness = "Score",
                  gdp = "GDP per capita",
                  support = "Social support",
                  region = "Country or region"
              ) %>%
          mutate(
                  nordic = ifelse(region %in% c(
                          "Finland", "Denmark", "Sweden", "Norway", "Iceland"
                      ), "Nordic", "Other")
              )

# ----------------------------
# 4. Summary Statistics
# ----------------------------
summary_stats <- df %>%
  summarise(
    mean_happiness = mean(happiness, na.rm = TRUE),
    mean_gdp = mean(gdp, na.rm = TRUE),
    mean_support = mean(support, na.rm = TRUE)
  )

print(summary_stats)

# ----------------------------
# 5. Regression Models
# ----------------------------
model1 <- lm(happiness ~ gdp, data = df)
 summary(model1)

model2 <- lm(happiness ~ support, data = df)
summary(model2)

model3 <- lm(happiness ~ gdp + support, data = df)
summary(model3)

# ----------------------------
# 6. Predictions for Model Fit Plot
# ----------------------------
df$predicted <- predict(model3)

# ----------------------------
# 7. Output Directory for Figures
# ----------------------------
if (!dir.exists("report/figures")) dir.create("report/figures")

# ----------------------------
# 8. Plots
# ----------------------------
library(ggplot2)
# 8-1 GDP vs Happines
ggplot(df, aes(x = gdp, y = happiness)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    x = "GDP per Capita",
    y = "Happiness Score"
  )

ggsave("gdp_vs_happiness.png", width = 6, height = 4, dpi = 300)

# 8-2 Social Support vs Happiness
ggplot(df, aes(x = support, y = happiness)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    x = "Social Support",
    y = "Happiness Score"
  )

ggsave("support_vs_happiness.png", width = 6, height = 4, dpi = 300)

# 8-3 Nordic vs Other
ggplot(df, aes(x = nordic, y = happiness, fill = nordic)) +
  geom_boxplot() +
  labs(
    x = "Region",
    y = "Happiness Score"
  ) +
  theme(legend.position = "none")

ggsave("nordic_vs_other.png", width = 6, height = 4, dpi = 300)

# 8-4 Predicted vs Actual
p4 <- ggplot(df, aes(x = predicted, y = happiness)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    x = "Predicted Happiness",
    y = "Actual Happiness"
  )

ggsave("predicted_vs_actual.png", width = 6, height = 4, dpi = 300)

# ----------------------------
# 9. End of Script
# ----------------------------
cat("Analysis completed. Figures saved in report/figures/\n")
