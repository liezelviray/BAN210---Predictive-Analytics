*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

drop _Y;
_Y = medv ;

drop _DM_BAD;
_DM_BAD=0;

*** Check chas for missing values ;
if missing( chas ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check crim for missing values ;
if missing( crim ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check rm for missing values ;
if missing( rm ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _LP0 =     22.1851632047477;
   goto REGDR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: chas ;
_TEMP = chas ;
_LP0 = _LP0 + (    3.28356684301195 * _TEMP);

***  Effect: crim ;
_TEMP = crim ;
_LP0 = _LP0 + (   -0.26454658791454 * _TEMP);

***  Effect: rm ;
_TEMP = rm ;
_LP0 = _LP0 + (    8.05921542775134 * _TEMP);
*--- Intercept ---*;
_LP0 = _LP0 + (   -27.7090318980604);

REGDR1:

*** Predicted Value, Error, and Residual;
label P_medv = 'Predicted: medv' ;
P_medv = _LP0;

drop _R;
if _Y = . then do;
   R_medv = .;
end;
else do;
   _R = _Y - _LP0;
    label R_medv = 'Residual: medv' ;
   R_medv = _R;
end;

*************************************;
***** end scoring code for regression;
*************************************;
