# TVAE-Based Data Augmentation for Clinical Tabular Data

## Overview
TVAE is used to perform data augmentation on a limited clinical dataset. The goal is to improve predictive performance and model stability in small-sample settings.



## Objectives
- Apply TVAE for synthetic data generation
- Improve performance of downstream predictive models
- Analyze latent space structure for interpretability
- Investigate whether learned representations capture clinical patterns


## Methodology
- TVAE was trained on clinical tabular data
- Synthetic samples were generated to augment the dataset
- A predictive model was trained on both original and augmented data
- Latent space was analyzed to explore clustering patterns


## Key Results
- Data augmentation using TVAE improved predictive performance
- Model stability increased in low-data settings
- Latent space showed partial clustering by:
  - Disease severity
  - Conversion status
- Results suggest that TVAE learns clinically meaningful representations beyond statistical correlations
