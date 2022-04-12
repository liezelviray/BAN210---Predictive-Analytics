Dataset used: HMEQ from SAS sample table SAMPSIO.HMEQ <br />
<br />
Contains observations for 5,960 mortgage applicants. A variable named Bad indicates whether the customer has paid on the loan or has defaulted on it <br />
<br />
Bad	- 1 = customer defaulted on the loan or is seriously delinquent /0 = customer is current on loan payments<br />
CLAge	-	Age of oldest credit line in months <br />
CLNo	-	Number of credit lines <br />
DebtInc	-	Debt-to-income ratio <br />
Delinq -	Number of delinquent credit lines <br />
Derog	-	Number of major derogatory reports <br />
Job	- Occupational category <br />
Loan	-	Requested loan amount<br />
MortDue	-	Amount due on existing mortgage<br />
nInq	-	Number of recent credit inquiries<br />
Reason	- DebtCon = debt consolidation<br />
Value	-	Value of current property <br />
YoJ	-	Years at present job <br />
<br />
Conducted PCA in HMEQ dataset using SAS Enterprise Miner to reduce dimension <br />
1. Use Data Source to create raw data source named HMEQ from SAS Data table<br />
2. In the Data Source Wizard, set 'Bad' as Target variable <br />
3. Drag SAMPSIO.HMEQ data source and connect to PRINCIPAL COMPONENTS node
4. In the PCA node property, changed the following: <br />
    Cumulative = 0.97<br />
    Maximum Number = 7 <br />
<br />
RESULTS:<br />
Principal Components Coefficient plot <br />
- PC1 : 'Value' and 'Mortdue' has the highest coefficient value <br />
![image](https://user-images.githubusercontent.com/98596551/163026922-ed2c2348-7397-4b42-a612-66dfaacdb473.png)
<br />

- PC4 : 'Derog' has the highest coefficient value <br />
Principal Components Matrix - scatter plots for all pairs of the selected principal components <br />

    
    
