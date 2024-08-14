# **Olympic Medal Count Prediction Using Machine Learning**

## **Project Overview**
This project aims to predict the number of Olympic medals a country will win using machine learning techniques. We compare the performance of two models: Random Forest and Neural Networks, and analyze the factors that most significantly contribute to a country's success in the Olympics.

## **Table of Contents**
- [Project Overview](#project-overview)
- [Data](#data)
- [Methodology](#methodology)
- [Models Used](#models-used)
  - [Random Forest](#random-forest)
  - [Neural Network](#neural-network)
- [Results](#results)
- [Feature Importance](#feature-importance)
- [Challenges and Limitations](#challenges-and-limitations)
- [Conclusion and Next Steps](#conclusion-and-next-steps)
- [How to Run](#how-to-run)
- [Dependencies](#dependencies)
- [Acknowledgments](#acknowledgments)

## **Data**
The dataset includes various features related to each country’s economic, political, and athlete-related factors, sourced from cleaned and preprocessed data. Key features include:
- Total Athletes
- Average Weight (M/F)
- Average Age (M/F)
- GDP per capita
- Military expenditure
- Unemployment rates
- And more

## **Methodology**
1. **Data Preprocessing:**
   - Removed irrelevant columns (e.g., country name, year, individual medal counts).
   - Handled missing data by filling in with the mean.
   - Split the data into training (80%) and testing (20%) sets.
   - Scaled the features to standardize the input data.

2. **Feature Selection:**
   - Used a Random Forest model to identify the most important features, focusing on those with the highest importance scores.

## **Models Used**

### **Random Forest**
- Trained with selected features identified from the feature importance analysis.
- Evaluated using Mean Absolute Error (MAE) and R² score.
- Key metrics:
  - MAE: 2.94
  - R²: 0.70

### **Neural Network**
- A more flexible model that captures complex patterns using two hidden layers and dropout layers to prevent overfitting.
- Implemented early stopping to halt training when validation loss no longer improved.
- Key metrics:
  - MAE: 2.57

## **Results**
- The Neural Network model slightly outperformed the Random Forest model in terms of prediction accuracy, achieving a lower MAE.
- The models generally performed well with lower medal counts but faced challenges predicting countries with higher medal counts.

## **Feature Importance**
- "Total Athletes" was the most dominant feature, strongly correlating with medal counts, followed by athlete physical characteristics like weight and age.
- The dominance of "Total Athletes" suggests a possible overreliance on this feature, potentially at the expense of other important factors.

## **Challenges and Limitations**
- The R² score of 0.70 indicates that while the models explain much of the variance in medal counts, they do not capture all influencing factors.
- The models struggled with predicting outliers, such as countries with a large number of medals.
- Potential missing features (e.g., sports infrastructure, historical trends) and non-linear interactions between variables may have impacted performance.

## **Conclusion and Next Steps**
- The models provide reasonable predictions but could be improved by incorporating more data, advanced feature engineering, and considering external factors like seasonality and global events.
- Future work could involve exploring other machine learning models like XGBoost and investigating more complex interactions between features.



