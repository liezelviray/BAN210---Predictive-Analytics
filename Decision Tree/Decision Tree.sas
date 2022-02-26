****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_species  $   15;
LENGTH I_species  $   15;
LENGTH U_species  $   15;
LENGTH _WARN_  $    4;
 
******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_speciesIris_setosa = 'Predicted: species=Iris-setosa' ;
label P_speciesIris_versicolor = 'Predicted: species=Iris-versicolor' ;
label P_speciesIris_virginica = 'Predicted: species=Iris-virginica' ;
label Q_speciesIris_setosa = 'Unadjusted P: species=Iris-setosa' ;
label Q_speciesIris_versicolor = 'Unadjusted P: species=Iris-versicolor' ;
label Q_speciesIris_virginica = 'Unadjusted P: species=Iris-virginica' ;
label V_speciesIris_setosa = 'Validated: species=Iris-setosa' ;
label V_speciesIris_versicolor = 'Validated: species=Iris-versicolor' ;
label V_speciesIris_virginica = 'Validated: species=Iris-virginica' ;
label R_speciesIris_setosa = 'Residual: species=Iris-setosa' ;
label R_speciesIris_versicolor = 'Residual: species=Iris-versicolor' ;
label R_speciesIris_virginica = 'Residual: species=Iris-virginica' ;
label F_species = 'From: species' ;
label I_species = 'Into: species' ;
label U_species = 'Unnormalized Into: species' ;
label _WARN_ = 'Warnings' ;
 
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_15 $     15; DROP _ARBFMT_15;
_ARBFMT_15 = ' '; /* Initialize to avoid warning. */
 
 
_ARBFMT_15 = PUT( species , $15.);
 %DMNORMCP( _ARBFMT_15, F_species );
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(petal_width ) AND
  petal_width  <                  0.8 THEN DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_speciesIris_setosa  =                    1;
  P_speciesIris_versicolor  =                    0;
  P_speciesIris_virginica  =                    0;
  Q_speciesIris_setosa  =                    1;
  Q_speciesIris_versicolor  =                    0;
  Q_speciesIris_virginica  =                    0;
  V_speciesIris_setosa  =                    1;
  V_speciesIris_versicolor  =                    0;
  V_speciesIris_virginica  =                    0;
  I_species  = 'IRIS-SETOSA' ;
  U_species  = 'Iris-setosa' ;
  END;
ELSE DO;
  IF  NOT MISSING(petal_width ) AND
                    1.65 <= petal_width  THEN DO;
    _NODE_  =                    5;
    _LEAF_  =                    3;
    P_speciesIris_setosa  =                    0;
    P_speciesIris_versicolor  =                    0;
    P_speciesIris_virginica  =                    1;
    Q_speciesIris_setosa  =                    0;
    Q_speciesIris_versicolor  =                    0;
    Q_speciesIris_virginica  =                    1;
    V_speciesIris_setosa  =                    0;
    V_speciesIris_versicolor  =     0.09523809523809;
    V_speciesIris_virginica  =      0.9047619047619;
    I_species  = 'IRIS-VIRGINICA' ;
    U_species  = 'Iris-virginica' ;
    END;
  ELSE DO;
    _NODE_  =                    4;
    _LEAF_  =                    2;
    P_speciesIris_setosa  =                    0;
    P_speciesIris_versicolor  =      0.9047619047619;
    P_speciesIris_virginica  =     0.09523809523809;
    Q_speciesIris_setosa  =                    0;
    Q_speciesIris_versicolor  =      0.9047619047619;
    Q_speciesIris_virginica  =     0.09523809523809;
    V_speciesIris_setosa  =                    0;
    V_speciesIris_versicolor  =     0.94736842105263;
    V_speciesIris_virginica  =     0.05263157894736;
    I_species  = 'IRIS-VERSICOLOR' ;
    U_species  = 'Iris-versicolor' ;
    END;
  END;
 
*****  RESIDUALS R_ *************;
IF  F_species  NE 'IRIS-SETOSA'
AND F_species  NE 'IRIS-VERSICOLOR'
AND F_species  NE 'IRIS-VIRGINICA'  THEN DO;
        R_speciesIris_setosa  = .;
        R_speciesIris_versicolor  = .;
        R_speciesIris_virginica  = .;
 END;
 ELSE DO;
       R_speciesIris_setosa  =  -P_speciesIris_setosa ;
       R_speciesIris_versicolor  =  -P_speciesIris_versicolor ;
       R_speciesIris_virginica  =  -P_speciesIris_virginica ;
       SELECT( F_species  );
          WHEN( 'IRIS-SETOSA'  ) R_speciesIris_setosa  = R_speciesIris_setosa
          +1;
          WHEN( 'IRIS-VERSICOLOR'  ) R_speciesIris_versicolor  =
        R_speciesIris_versicolor  +1;
          WHEN( 'IRIS-VIRGINICA'  ) R_speciesIris_virginica  =
        R_speciesIris_virginica  +1;
       END;
 END;
 
****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
 
drop _LEAF_;
