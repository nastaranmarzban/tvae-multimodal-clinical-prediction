# --------------------------------------------------
# KNN Imputation for Missing Data
# Author: Nastaran Marzban
# Description:
# Performs KNN imputation on missing data using multiple k values.
# Data in use: 'final_data_withoutEcog.csv'
# --------------------------------------------------

rm(list = ls())

# My directory
#setwd("D:\\Singapore\\Alzheimer\\R files\\final data_new")


# Load libraries
library(VIM)
library(table1)
library(dplyr)

# ---------------------------
# Load data
# ---------------------------
final_data_withoutEcog <- read.csv("final_data_withoutEcog.csv")

# Inspect data
glimpse(data)
cat("Missing values:", sum(is.na(data)), "\n")
cat("Dimensions:", dim(data), "\n")
sum(is.na(final_data_withoutEcog))


# ---------------------------
# Convert categorical variables to factors
# ---------------------------
final_data_withoutEcog$FLDSTRENG <- as.factor(final_data_withoutEcog$FLDSTRENG)
final_data_withoutEcog$FSVERSION <- as.factor(final_data_withoutEcog$FSVERSION)
final_data_withoutEcog$PTGENDER <- as.factor(final_data_withoutEcog$PTGENDER)
final_data_withoutEcog$PTRACCAT <- as.factor(final_data_withoutEcog$PTRACCAT)
final_data_withoutEcog$PTMARRY <- as.factor(final_data_withoutEcog$PTMARRY)
final_data_withoutEcog$APOE4 <- as.factor(final_data_withoutEcog$APOE4)
final_data_withoutEcog$vascular <- as.factor(final_data_withoutEcog$vascular)
final_data_withoutEcog$convert_Within_3Years <- as.factor(final_data_withoutEcog$convert_Within_3Years)

# Transforming all variables (except the factor) to numeric, because
# the KNN method generates numeric values (with decimal) for some
# variables that are originally integer. So, some warnings appear because of this
# difference. Therefore, all variables (except the factor) should be converted 
# to numeric.
final_data_withoutEcog <- final_data_withoutEcog %>%
  mutate(across(where(is.factor), as.factor), # Keep factors as factors
         across(where(is.numeric), as.numeric))



str(final_data_withoutEcog)
summary(final_data_withoutEcog)

# considering the type of each variable
original_types <- sapply(final_data_withoutEcog, class)


# ---------------------------
# KNN Imputation Loop
# ---------------------------
for (k in seq(1, 10, by = 2)) {
  set.seed(0)
  df_imputed <- kNN(final_data_withoutEcog, k = k)
  
  # Ensuring that the type of all variables remains the same before and after imputation
  for (col in names(df_imputed)) {
    class(df_imputed[[col]]) <- original_types[col]
  }
  
  # Check if missing values remain
  missing_count <- sum(is.na(df_imputed))
  print(paste("For k =", k, "Missing values count:", missing_count))
  
  df_imputed <- df_imputed %>% select(-ends_with("_imp"))
  
  # Save the imputed dataset for each k
  write.csv(df_imputed, paste0("final_data_imputed_k", k, ".csv"), row.names = FALSE)
  
  # Summary table
  print(table1(~ ., data = df_imputed))
}
