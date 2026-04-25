# Synthetic Data Utility Evaluation

## Overview
This module evaluates the utility of synthetic data generated using a Tabular Variational Autoencoder (TVAE).

The goal is to assess whether synthetic data preserve meaningful relationships in the original dataset and improve predictive performance.

Evaluation is performed using a multimodal feature set (Group 3), which combines:
- Demographics
- Cognitive assessments
- Biomarkers

---

## Utility Evaluation Framework

Synthetic data are evaluated using three standard settings:

### 1. TRTR (Train on Real, Test on Real)
- Baseline performance using original data
- Serves as reference for comparison

### 2. TSTR (Train on Synthetic, Test on Real)
- Measures how well synthetic data capture predictive structure
- Lower performance indicates loss of information in synthetic data

### 3. TRTS (Train on Real, Test on Synthetic)
- Evaluates how well synthetic data reflect the distribution of real data
- High performance indicates good alignment between real and synthetic datasets

---

## Modeling Approach

- Model: XGBoost
- Evaluation metric: ROC-AUC (primary)
- Same training/testing framework used across all settings for fair comparison

---

## Notes

- Evaluation is performed only on the multimodal feature group (Group 3), which showed the strongest predictive performance
- Synthetic data are generated only from the training set to prevent data leakage
- This evaluation focuses on utility rather than exact replication of original data distributions
