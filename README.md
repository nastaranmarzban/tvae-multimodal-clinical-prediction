# Generative Modeling for Multimodal Clinical Prediction

## Overview
This repository contains code for predicting progression from mild cognitive impairment (MCI) to dementia of the Alzheimer’s type (DAT) using multimodal clinical data.

The project focuses on handling key challenges in clinical datasets, including:
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
- Helps address class imbalance and small sample size

### Machine Learning Models
- Random Forest (RF)
- Extreme Gradient Boosting (XGBoost)

### Feature Groups
- Demographics and cognitive assessments
- Biomarkers
- Combined multimodal features
- MRI measures

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


## Notes
- The study focuses on predicting 3-year progression from MCI to DAT
- Synthetic data are generated only from training data to avoid data leakage
- Results are based on internal validation and require external validation for clinical use
