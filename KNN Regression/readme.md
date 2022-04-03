Dataset used: BOSTON.CSV

Consists of 14 attributes:<br /><br />
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

<br /><br />

Used Boston.csv to create a KNN Regression model through SAS Enterprise Miner.


FILE IMPORT
- Drop VAR1 variable
- Set 'MEDV' as Target Variable

DATA PARTITION NODE
Partitioned the dataset by 40% training, 40% validation and 20% test

MBR NODE
- Train method used is "SCAN" wherein Number of Buckets property is not relevant. Scan method retrieves a earest neighbor by scanning naively through every observation in the dataset and calculating its distance to probe observation.
- Set number of neighbors = 3

RESULTS:
Score Distribution Chart - plots proportions of events, non events, and other values on the ertical axis. The values on the horizontal axis represent the model score of a bin.<br />
Score Rankings Matrix - displays both train and validate statistics on the same axis.<br />
Fit Statistics (Train/ Validation/ Test):<br />
- MSE = 16.54 / 64.16 / 76.26
- Max Absolute Error = 19.07 / 29.97 / 28.47
- Final Prediction Error = 17.61
