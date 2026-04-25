# Data Fidelity Evaluation

## Overview
This module evaluates the statistical fidelity of synthetic data generated using TVAE by comparing it to real data distributions.

The goal is to assess how well the synthetic data replicate the underlying statistical properties of the original dataset.

Evaluation is performed on the multimodal feature set (Group 3) using the 3× synthetic dataset.

---

## Methods

### 1. Kolmogorov–Smirnov (KS) Statistic
- The KS statistic is used to compare the distributions of individual features between real and synthetic datasets
- It measures the maximum difference between the empirical cumulative distribution functions (ECDFs)

Interpretation:
- KS < 0.1 → strong agreement between real and synthetic distributions
- 0.1 ≤ KS < 0.2 → moderate agreement
- KS ≥ 0.2 → noticeable discrepancy between distributions

---

### 2. Distribution Comparison
- Visual comparison of feature distributions is performed
- Methods include:
  - Histograms
  - Density plots

---

## Key Findings
- Synthetic data closely follow the distribution of real data across most features
- Minor differences may appear due to smoothing effects introduced by the generative model
- Overall, synthetic data demonstrate good statistical fidelity

---

## Notes
- Fidelity is evaluated only on Group 3 (multimodal features) using the 3× synthetic dataset
- This step complements utility evaluation (TSTR/TRTS)
- Both fidelity and utility are required to validate synthetic data quality
