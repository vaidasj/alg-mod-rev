option NLP=convert;
option NLP=convert;
option NLP=convert;
$ Title A Household's Utility Max. Model in Ch. 3 (HHMAX,SEQ=274)

$Ontext
No description.


Hosoe, N, Gasawa, K, and Hashimoto, H
Handbook of Computible General Equilibrium Modeling
University of Tokyo Press, Tokyo, Japan, 2004
$Offtext


* Definition of the Index Sets ---------------------------------------
Set     i       goods                   /BRD    bread,
                                         MLK    milk/
        h       factors                 /CAP    capital,
                                         LAB    labor/;

* Definition of Parameters -------------------------------------------
Parameter       alpha(i)        share parameter in utility function
                /BRD   0.2
                 MLK   0.8/;

Parameter       px(i)           price of the i-th good
                /BRD   1
                 MLK   2/;

Parameter       pf(h)           price of the h-th factor
                /CAP    2
                 LAB    1/;

Parameter       FF(h)           factor endowment
                /CAP    10
                 LAB    20/;

* Definition of Primal/Dual Variables --------------------------------
Positive Variable X(i)          consumption of the i-th good
;
Variable        UU              utility
;
Equation        eqX(i)          household demand function
                obj             utility function
;
* Specification of Equations ------------------------------------------

eqX(i)..        X(i)      =e= alpha(i)*sum(h, pf(h)*FF(h))/px(i);
obj..           UU        =e= prod(i, X(i)**alpha(i));

* Setting Lower Bounds on Variables to Avoid Division by Zero ---------
X.lo(i)=0.001;

* Defining the Model --------------------------------------------------
Model HHmax /all/;

* Solving the Model ---------------------------------------------------
Solve HHmax maximizing UU using NLP;
* ---------------------------------------------------------------------
* end of model --------------------------------------------------------
* ---------------------------------------------------------------------
