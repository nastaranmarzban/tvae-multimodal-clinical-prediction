# Imputation Evaluation

## Overview
This module evaluates the impact of different KNN imputation settings on downstream predictive performance.

Missing values were imputed using K-Nearest Neighbors (K-NN) with different values of k (k= 1, 3, 5, 7, 9), and the resulting datasets were compared based on their utility for machine learning models.


### Utility Definition
Utility is defined as the effectiveness of the imputed dataset for predictive modeling.

It is evaluated using:
- ROC-AUC (primary metric)
- Model performance stabilit

---

## Evaluation Process

1. Generate imputed datasets for each k
2. Train models on each dataset:
   - Random Forest (RF)
   - XGBoost (XGB)
3. Compare model performance across k values
4. Select the optimal k based on predictive performance and stability

---

## Key Findings
- k = 1 provided the best balance between:
- preserving original data distribution
- achieving high predictive performance
- Larger k values introduced smoothing and reduced variability
