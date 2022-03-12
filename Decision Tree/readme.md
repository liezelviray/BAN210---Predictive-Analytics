Dataset used: Iris.xlsx <br /><br />
The data set contains 3 classes of 50 instances each, where each class refers to a type of iris plant. 
<br /><br />
Consists of 5 attributes:<br />
sepal_length -  sepal length in cm<br />
sepal_width - sepal width in cm<br />
petal_length - petal length in cm<br />
petal_width -  petal width in cm<br />
class:<br />
-- Iris Setosa<br />
-- Iris Versicolour<br />
-- Iris Virginica<br /><br />
The Iris dataset was used to try training a decision tree classifier in SAS Enterprise Miner<br />
1. FILE IMPORT node<br />
- import dataset and edit variables to select 'class' as target variable<br />
2. DATA PARTITION node
- split dataset to 40% Training, 40% Validation, 20% Test Set<br />
3. DECISION TREE node to create decision tree<br />

RESULT:<br />
- Tree created had the petal width as the root node<br />
- As seen in Fit Statistics Table: <br />
TRAIN SET( SSE is 3.62, ASE is 0.02 and Misclassification Rate is 0.03<br />
VALIDATION SET( SSE is 5.96, ASE is 0.03 and Misclassification Rate is 0.05<br />
TEST SET( SSE is 1.84, ASE is 0.02 and Misclassification Rate is 0.03<br />
- Event Classification Table seen in the Output is as follows: <br />
TRAIN<br />
FN (2), TN (39), FP (0), TP (18)<br />
VALIDATION<br />
FN (1), TN (37), FP (2), TP (19)<br />
- Key Metrics<br />
Recall = TP / (TP+FN) , TRAIN (0.9), VALIDATION (0.95)<br />
Precision = TP / (TP + FP), TRAIN (1), VALIDATION (0.90)<br />
Accuracy = TP + TN/ Total , TRAIN (0.97), VALIDATION (0.95)
