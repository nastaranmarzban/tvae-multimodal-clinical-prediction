# KNN Imputation for Clinical Data

## Overview
This project performs missing data imputation using the K-Nearest Neighbors (K-NN) method on a clinical dataset.

## Data Source
The dataset used in this project is derived from the Alzheimer's Disease Neuroimaging Initiative (ADNI).

The dataset used is:
`final_data_withoutEcog.csv`, which contains missing values.

Note: The dataset is not publicly shared in this repository due to data usage restrictions.

## Methodology
- Missing values are handled using K-NN imputation
- Multiple k values are tested: 1, 3, 5, 7, 9
- Each imputed dataset is saved separately for further analysis
- Variable types are preserved after imputation

## Requirements
The following R packages are required:
- VIM
- dplyr
- table1
