# Comparison with CTGAN

## Overview
This module evaluates the effectiveness of the proposed TVAE-based data augmentation by comparing it with CTGAN.

The comparison focuses on the ability of each model to generate synthetic data that improve downstream predictive performance.

---

## Methods

### Generative Models
- **TVAE
- **CTGAN 

---

## Experimental Setup

- Both TVAE and CTGAN were trained **only on the training set**
- Identical preprocessing and feature engineering were applied
- Class imbalance handling was consistent across both methods
- Synthetic data were generated at the same augmentation levels:
  - 1×
  - 2×
  - 3×

---

## Evaluation

Synthetic datasets were used to train the following models:
- Random Forest (RF)
- XGBoost (XGB)

Performance was evaluated under identical conditions using:
- AUC (primary metric)
- Recall
- Specificity
- F1-score

---

## Key Findings

- **TVAE demonstrates stronger and more stable performance** across all groups and augmentation levels
- Higher and more consistent **AUC**, often exceeding 0.90 in cross-validation
- Improved **recall**, indicating better detection of positive cases
- Comparable or improved **F1-scores** across most settings

In contrast:
- **CTGAN shows higher variability** across groups and multipliers
- Occasionally achieves higher specificity, but with less consistent overall performance

---

## Conclusion

Overall, TVAE provides more reliable and robust synthetic data for downstream predictive modeling compared to CTGAN. The results suggest that TVAE is better suited for clinical tabular data augmentation, particularly in settings with heterogeneous features and class imbalance.
