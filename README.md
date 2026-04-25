# Generative Modeling for Multimodal Clinical Prediction

## Overview
This repository contains code for predicting progression from mild cognitive impairment (MCI) to dementia of the Alzheimer’s type (DAT) using multimodal clinical data.

The project focuses on handling key challenges in clinical datasets, including:
- Class imbalance
- Missing data
- Heterogeneous (mixed-type) features
- Small sample size

A machine learning pipeline is implemented combining data imputation, feature engineering, and predictive modeling.

## Data Source
Data used in this project were obtained from the Alzheimer's Disease Neuroimaging Initiative (ADNI).

Note: The dataset is not included in this repository due to data usage restrictions.

## Methods

### Missing Data Imputation
- K-Nearest Neighbors (KNN) imputation
- Evaluated for k = 1, 3, 5, 7, 9
- k = 1 selected based on stability and predictive performance :contentReference[oaicite:0]{index=0}

### Synthetic Data Generation
- Tabular Variational Autoencoder (TVAE)
- Used to generate realistic synthetic samples
- Helps address small sample size
- Compare TVAE with CTGAN

### Machine Learning Models
- Random Forest (RF)
- Extreme Gradient Boosting (XGBoost)

### Feature Groups
- Group 1: Demographics and cognitive assessments
- Group 2: Biomarkers
- Group 3: Combined multimodal features
- Group 4: MRI measures

## Key Results
- Best performance achieved using combined multimodal features
- XGBoost achieved high predictive performance (AUC ≈ 0.918) :contentReference[oaicite:1]{index=1}
- TVAE-based augmentation improved model stability and generalization
- Integration of cerebrovascular risk factors improved prediction accuracy

## Requirements

### R packages:
- VIM
- dplyr
- table1

### Python packages:
- scikit-learn
- xgboost
- sdv

## How to Run

### R
Run preprocessing and imputation scripts:
- `R/knn_imputation.R`

### Python
Run modeling pipeline scripts in the `python/` folder.

## Notes
- The study focuses on predicting 3-year progression from MCI to DAT
- Synthetic data are generated only from training data to avoid data leakage
- Results are based on internal validation and require external validation for clinical use
