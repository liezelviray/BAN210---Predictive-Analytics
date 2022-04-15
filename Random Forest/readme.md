Dataset used: sampsio.dmagecr <b/>

1,000 rows , 21 columns<b/><b/>


Used dmagecr to create a Random Forest model through SAS Enterprise Miner. <b/>

Import Dataset from SAS - SAMPSIO <b/>

Create Diagram and drag data source <b/>

Set good_bad as Target Variable <b/>

Under HPDM, Import HP Forest node for Random Forest <b/>
<b/>

RESULTS:<b/>
- Iteration Plot: <b/>
Misclassification Rate <b/>
flattens after20 trees are added to the forest. This means adding more trees after 20 does not hae a significant effect on the misclassification rate of the model. Use this information to specify a reasonable value for the Maximum Number of Trees property.
<b/>


Set maximum number of trees to 20
<b/>
Connect Data Source node to Data Partition then to HP Forest <b/>

Set Data Partition: 70% training, 15% validation, 15% test then run HP Forest node <b/>

See difference in iteration plot after <b/>

Fit Statistics result:,b/> 
- ASE : 0.17
- SSE: Train - 234.94 , Validation - 52.59 <b/>

Leaf plot <b/>
- displays total number of leaes in the forest plotted against the number of trees in the forest <b/>

Leaf Statistics <b/>
- highest distribution of leaes is between 4.8 to 7.2<b/>

Statistics history on each iteration can be seen in the Iteration History <b/>
Score ranking oerlay displays both train and validate statistics on the same axis. 
