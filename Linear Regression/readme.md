Dataset used: BOSTON.CSV <br />
<br />
Consists of 14 attributes:<br />
CRIM - per capita crime rate by town<br />
ZN - proportion of residential land zoned for lots over 25,000 sq.ft.<br />
INDUS - proportion of non-retail business acres per town.<br />
CHAS - Charles River dummy variable (1 if tract bounds river; 0 otherwise)<br />
NOX - nitric oxides concentration (parts per 10 million)<br />
RM - average number of rooms per dwelling<br />
AGE - proportion of owner-occupied units built prior to 1940<br />
DIS - weighted distances to five Boston employment centres<br />
RAD - index of accessibility to radial highways<br />
TAX - full-value property-tax rate per $10,000<br />
PTRATIO - pupil-teacher ratio by town<br />
BLACK - 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town<br />
LSTAT - % lower status of the population<br />
MEDV - Median value of owner-occupied homes in $1000's<br />
<br />
<br />

Used Boston.cs to create a Linear Regression model through SAS Enterprise Miner to predict house prices.<br />
<br />
1. FILE IMPORT
2. DATA PARTITION NODE
- Partitioned the dataset by 60% training and 30% test <br />
- Set 'CHAS', 'CRIM', 'RM' as Input Variable and 'MEDV' as Target Variable <br />
3. REGRESSION NODE
- Regression type used is LINEAR REGRESSION
- Coding method (Input Coding) used with class variables is GLM (Generalized Linear Model) which specifies how to interpret coefficients for categorical variables. <br />
<br />
RESULTS:<br />
Score Rankings Matrix - displays both train and validate statistics on the same axis<br />
Fit Statistics:<br />
- MSE = 32.45<br />
- Max Absolute Error = 29.25 <br />
- Final Prediction Error = 32.84 <br />
Effects Plot - bar graph of absolute values of the coefficients in the final model

