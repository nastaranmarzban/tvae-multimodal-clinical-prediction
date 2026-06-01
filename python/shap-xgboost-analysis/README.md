## Explainability Analysis (SHAP)

To improve model interpretability and clinical trust, SHAP (SHapley Additive exPlanations) was used to explain predictions from the XGBoost model.

### Global Feature Importance
SHAP summary analysis was used to identify the most influential features across all predictions. The most important features included cognitive scores (CDRSB, ADAS-13, RAVLT) and biomarkers (PTAU, ABETA), which are consistent with known clinical markers of Alzheimer’s disease progression.

### SHAP Beeswarm Plot
Beeswarm plots were used to analyze both the magnitude and direction of feature effects. Higher values of biomarker and cognitive impairment-related features were associated with increased risk of conversion, aligning with established clinical understanding.

### Local Explainability (Waterfall Plots)
SHAP waterfall plots were generated for individual cases, including true positives, true negatives, and false negatives. These plots provide case-level explanations, showing how each feature contributes to a specific prediction.

### Model Comparison (XGBoost vs Random Forest)
SHAP was applied to both XGBoost and Random Forest models. Both models showed consistent top predictive features, supporting the robustness and clinical validity of the findings.

### Effect of TVAE Augmentation on SHAP Values
To evaluate the impact of synthetic data, SHAP values were compared between models trained with and without TVAE augmentation. Results showed that feature importance rankings remained stable, indicating that TVAE augmentation preserves clinically meaningful relationships without distorting model interpretability.

### Clinical Interpretation
SHAP analysis demonstrates that the model relies on clinically meaningful features for prediction, including cognitive scores and biomarkers. This enhances trust in the model and supports its potential use in clinical decision support systems.
