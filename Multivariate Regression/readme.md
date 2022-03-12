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

Used Boston.csv to apply Feature Selection for Multivariate Regression model using SAS Enterprise Miner.<br />
1. Use FILE IMPORT node to import Boston dataset
2. In the Property tab of FILE IMPORT node, select input features ('VAR1', 'CHAS', 'RAD') by selecting "Yes" in Drop column and set 'MEDV' as Target variable 
3. In DATA PARTITION node, split data to 50% Training, 40% Validation and 10% Test Set
4. In REGRESSION node, select 'Linear Regression' as regression type, 'GLM' as input coding.
5. Checked the results using 'Backward' ,'Forward' or 'Stepwise' as selection model<br /><br />


RESULT:<br />
1. Estimate Selection Plot shows the selected variables with their effect. The Plot using Backward selection models largely differs from the other 2 models. <br />
2. Features Selected using the ff.: selection model:
- Backward Selection
Intercept, Age, black, dis, lstat, nox, pratio, rm, zn <br />
- Forward Selection
Intercept, Age, black, dis, lstat, nox, pratio, rm, zn <br />
- Stepwise Selection
Intercept, Age, black, dis, lstat, nox, pratio, rm, zn <br />
3. MSE of Training Set for each selection model:<br />
- Backward Selection = 21.48
- Forward Selection = 21.48
- Stepwise Selection = 21.48
