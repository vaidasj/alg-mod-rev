option MCP=convert;
option MCP=convert;
option MCP=convert;
$TITLE Cross Entropy SAM Estimation (CESAM,SEQ=228)
$Ontext
 CESAM illustrates a cross entropy technique for estimating the cells
 of a consistent SAM assuming that the initial data are inconsistent
 and measured with error. The method is applied to a stylized macro
 SAM for Mozambique. Some macro control totals are assumed known with
 error, and also all the row and column totals are assumed
 known only with error. We assume that the user can specify
 a prior estimate of the standard error of the estimates of the row
 and column sums and of the macro control totals.


Robinson, S, Cattaneo, A, and El-Said, M, Updating and Estimating
a Social Accounting Matrix Using Cross Enthropy Methods. Economic
System Research 13, 1 (2001).

Golan, G, Judge, G, and Miller, D, Maximum Enthropy Econometrics.
John Wiley and Sons, 1996.

 Programmed by Sherman Robinson and Moataz El-Said, November 2000.
 Trade and Macroeconomics Division
 International Food Policy Research Institute (IFPRI)
 2033 K Street, N.W.
 Washington, DC 20006 USA
 Email: S.Robinson@CGIAR.ORG
        M.El-Said@CGIAR.ORG

 Data set is based on a SAM developed by C. Arndt, A. S. Cruz, H. T.
 Jensen, S. Robinson, and F. Tarp, "Social Accounting Matrices
 for Mozambique - 1994 and 1995." TMD Discussion Paper No. 28, IFPRI,
 July 1998.

 Original version programmed by Sherman Robinson and Andrea Cattaneo.

$Offtext


SETS

 i      sam accounts   / ACT     Activities
                         COM     Commodities
                         FAC     Factors
                         ENT     Enterprises
                         HOU     Households
                         GRE     Govt recurrent expenditures
                         GIN     Govt investment
                         CAP     Capital account
                         ROW     Rest of world
                         TOTAL /

 ii(i)  all accounts in i except TOTAL
                       / ACT     Activities
                         COM     Commodities
                         FAC     Factors
                         ENT     Enterprises
                         HOU     Households
                         GRE     Govt recurrent expenditures
                         GIN     Govt investment
                         CAP     Capital account
                         ROW     Rest of world /

 macro  macro controls  /gdpfc2, gdp2 /

* The set jwt defines the dimension of the support set for the error
* distribution and the number of weights that must be estimated for each
* error. In this case, we specify a five parameter error distribution.
* For a three parameter distribution, jwt is set to /1*3/.

 jwt    set of weights for errors in variables
                       / 1*5 /
;

* ii(i)       = YES;
* ii("Total") = NO;

ALIAS (i,j), (ii,jj);

*########################    SAM DATABASE       ########################
TABLE SAM(i,j)  social accounting matrix
                       ACT            COM            FAC            ENT
ACT                    0.0     14827.4240            0.0            0.0
COM              7917.5040            0.0            0.0            0.0
FAC              9805.4140            0.0            0.0            0.0
ENT                    0.0            0.0      3699.7060            0.0
HOU                    0.0            0.0      6031.3080      3417.5060
GRE               733.6000       357.4000        74.4000       165.2000
GIN                    0.0            0.0            0.0            0.0
CAP                    0.0            0.0            0.0       150.0000
ROW                    0.0      5573.8150            0.0            0.0
Total           18456.5180      20758.639       9805.414       3732.706

  +                    HOU            GRE            GIN            CAP
ACT              2101.0490        -0.3270            0.0            0.0
*COM             6753.3320      1764.5000      2118.5000      2197.7980
COM              6953.3320      1564.5000      2518.5000      2597.7980
FAC                    0.0            0.0            0.0            0.0
ENT                    0.0        33.0000            0.0            0.0
HOU                    0.0        29.6000            0.0            0.0
GRE               139.5000            0.0            0.0            0.0
GIN                    0.0            0.0            0.0            0.0
CAP               649.1560      -356.6730      -406.2000            0.0
ROW                    0.0            0.0            0.0            0.0
Total             9643.037         1470.1         1712.3       2197.798

  +                    ROW      Total
ACT              1488.1570      18416.303
COM                    0.0      20751.634
FAC                    0.0       9805.414
ENT                    0.0       3732.706
HOU               209.5010       9687.915
GRE                    0.0         1470.1
GIN              1712.3000         1712.3
CAP              2163.8570        2200.14
ROW                    0.0       5573.815
Total             5573.815
     ;

*#########################  Parameters and Scalars #####################
PARAMETER

 SAM0(i,j)        Base SAM transactions matrix
 T0(i,j)          Matrix of SAM transactions (flow matrix)
 T1(i,j)          SAM transactions Adjusted to eliminate negative entries
 Abar0(i,j)       Prior SAM coefficient matrix
 Abar1(i,j)       Prior SAM adjusted to eliminate negative coefficients
 Target0(i)       Targets for macro SAM column totals
 vbar1(i,jwt)     Error support set 1
 vbar2(macro,jwt) Error support set 2
 wbar1(i,jwt)     Weights on error support set 1
 wbar2(macro,jwt) Weights on error support set 2
 sigmay1(i)       Prior standard error of column sums
 sigmay2(macro)   Prior standard error of macro aggregates
 epsilon          Tolerance to allow zero entries in SAM
;

SCALARS

 gdp0          base GDP
 gdp00         GDP from final SAM
 gdpfc0        GDP at factor cost
;

*################# Initializing Parameters
 SAM("TOTAL",jj)      = sum(ii, SAM(ii,jj));
 SAM(ii,"TOTAL")      = sum(jj, SAM(ii,jj));
 sam0(i,j)            = sam(i,j);

*#################
* Divide SAM entries by 1000 for better scaling.
* The SAM is scaled to enhance solver efficiency. Nonlinear solvers are
* more efficient if variables are scaled similarly. In this case,
* coefficients to be estimated range between 0 and 1, so SAM values
* are also scaled.

 Scalar scalesam Scaling value  /1000/ ;

 sam(i,j)                 = sam(i,j)/scalesam ;
 Abar0(ii,jj)$SAM(ii,jj)  = SAM(ii,jj)/SAM("TOTAL",jj) ;

 T0(ii,jj)                = SAM(ii,jj);
 T0("TOTAL",jj)           = sum(ii, SAM(ii,jj));
 T0(ii,"TOTAL")           = sum(jj, SAM(ii,jj));

 epsilon                  = .00001;

 Display T0, Abar0 ;
*########################  CROSS ENTROPY  ##############################


*########################  RED ALERT!!!   ##############################

* The ENTROPY DIFFERENCE procedure uses LOGARITHMS: negative flows in
* the SAM are NOT GOOD!!!
*
* The option used here is to detect any negative flows and net them out
* of their respective symmetric cells, e.g.
*     negative flow column to row is set to zero
*     and added to corresponding row to column as a positive number.
* The entropy difference method can then be implemented.
* After balancing, the negative SAM values are returned to their
* original cells for printing.

SET
 red(i,j)           Set of negative SAM flows
;

Parameter
 redsam(i,j)        Negative SAM values only
 rtot(i)            Row total
 ctot(i)            Column total
;

 rtot(ii)                            = sum(jj, T0(ii,jj));
 ctot(jj)                            = sum(ii, T0(ii,jj));

 red(ii,jj)$(T0(ii,jj) LT 0)         = yes ;
 redsam(ii,jj)                       = 0;
 redsam(ii,jj)$red(ii,jj)            = T0(ii,jj);
 redsam(jj,ii)$red(ii,jj)            = T0(ii,jj);

*Note that redsam includes each entry twice, in corresponding row
*and column. So, redsam need only be subtracted from T0.
 T1(ii,jj)                           = T0(ii,jj) - redsam(ii,jj);
 T1("Total",jj)                      = sum(ii, T1(ii,jj));
 T1(ii,"Total")                      = sum(jj, T1(ii,jj));

 redsam("total",jj)                  = sum(ii, redsam(ii,jj));
 redsam(ii,"total")                  = sum(jj, redsam(ii,jj));

 sam(ii,"total")                     = sum(jj, T1(ii,jj));
 sam("total",jj)                     = sum(ii, T1(ii,jj));

 rtot(ii)                            = sum(jj, T1(ii,jj));
 ctot(jj)                            = sum(ii, T1(ii,jj));

 Abar1(ii,jj)                        = T1(ii,jj)/sam("total",jj);

 display "NON-NEGATIVE SAM" ;
 display redsam, T1, Abar0, Abar1, rtot, ctot ;

* Define set of elements of SAM that can be nonzero. In this case, only
* elements which are nonzero in initial SAM.
 SET NONZERO(i,j)  SAM elements that can be nonzero ;

 NONZERO(ii,jj)$(Abar1(ii,jj)) = yes ;

*#### Initializing Parameters after accounting for negative values #####
*   Note that target column sums are being set to average of initial
*   row and column sums. Initial column sums or other values
*   could have been used instead, depending on knowledge of data quality
*   and any other prior information.

 target0(ii)         = (sam(ii,"total") +  sam("total",ii))/2 ;
 gdpfc0              = T1("fac","act");
 gdp0                = T1("fac","act") + T1("gre","act")
                        - T1("act","gre") + T1("gre","com") ;
Display gdpfc0, gdp0;

*############### Define variable bounds on errors #####################
* Start from assumed prior knowledge of the standard error (perhaps due
* to measurement error) of the column sums. Below, we assume that all
* column sums have a standard error of 5%. This is a Bayesian prior,
* not a maintained hypothesis.
* The estimated error is weighted sum of elements in an error support
* set:
*   ERR(ii) = SUM(jwt, W(ii,jwt)*VBAR(ii,jwt))
* where the W's are estimated in the CE procedure.
* The prior variance of these errors is given by:
*   (sigmay(ii))**2 = SUM(jwt, WBAR(ii,jwt)*(VBAR(ii,jwt))**2 )
* where the WBAR's are the prior on the weights.
* The VBARs are chosen to define a domain for the support set of +/- 3
* standard errors. The prior on the weights, WBAR, are then calculated
* to yield the specified prior on the standard error, sigmay.
* In Robinson, Cattaneo, and El-Said (2001), we specify prior weights
* (WBAR) that are uniform and set the prior standard error by the
* choice of support set, VBAR. In that paper, we use a three-weight
* specification (jwt /1*3/);
*
* We define two sets of errors with separate weights, W1 and W2. The
* first is for specifying errors on column sums, the second for errors
* on macro aggregates (defined in the set macro).

* First, define standard error for errors on column sums.

  sigmay1(ii)    = 0.05 * target0(ii) ;

* This code assumes a prior mean of zero and a two-parameter
* distribution with specified prior standard error. There are three
* weights, W(ii,jwt), to be estimated. The actual moments are estimated
* as part of the estimation procedure.
$ontext
* Set constants for 3-weight error distribution
  vbar1(ii,"1")  = -3 * sigmay1(ii);
  vbar1(ii,"2")  =  0             ;
  vbar1(ii,"3")  = -3 * sigmay1(ii);

  wbar1(ii,"1")  =  1/18  ;
  wbar1(ii,"2")  = 16/18  ;
  wbar1(ii,"3")  =  1/18  ;
$offtext

* This code assumes a prior mean of zero and a prior value of kurtosis
* consistent with a prior normal distribution with mean zero, variance
* sigmay**2, and kurtosis equal to 3*sigmay**4. The addition of a prior
* on kurtosis requires estimation of 5 weights (jwt = 5);
* The prior weights wbar are specified so that:
* SUM(jwt, wbar(ii,jwt)*vbar(ii,jwt)**4) = 3*sigmay(ii,jwt)**4
* as well as defining the variance as above.
* The prior weights and support set are also symmetric, so the prior
* on all odd moments is zero. The choice of +/- 1 standard error
* for vbar(ii,"2") and vbar(ii,"4") is arbitrary.
* The actual moments are estimated as part of the estimation procedure.

* Set constants for 5-weight error distribution
  vbar1(ii,"1")  = -3 * sigmay1(ii) ;
  vbar1(ii,"2")  = -1 * sigmay1(ii) ;
  vbar1(ii,"3")  =  0              ;
  vbar1(ii,"4")  = +1 * sigmay1(ii) ;
  vbar1(ii,"5")  = +3 * sigmay1(ii) ;

  wbar1(ii,"1")  =   1/72        ;
  wbar1(ii,"2")  =  27/72        ;
  wbar1(ii,"3")  =  16/72        ;
  wbar1(ii,"4")  =  27/72        ;
  wbar1(ii,"5")  =   1/72        ;

* Second, define standard errors for errors on macro aggregates

  sigmay2("gdpfc2")  = 0.05*gdpfc0  ;
  sigmay2("gdp2")    = 0.05*gdp0 ;

$ontext
* Set constants for 3-weight error distribution
  vbar2(ii,"1")  = -3 * sigmay2(ii);
  vbar2(ii,"2")  =  0             ;
  vbar2(ii,"3")  = -3 * sigmay2(ii);

  wbar2(ii,"1")  =  1/18  ;
  wbar2(ii,"2")  = 16/18  ;
  wbar2(ii,"3")  =  1/18  ;
$offtext

* Set constants for 5-weight error distribution
  vbar2(macro,"1")  = -3 * sigmay2(macro) ;
  vbar2(macro,"2")  = -1 * sigmay2(macro) ;
  vbar2(macro,"3")  =  0                  ;
  vbar2(macro,"4")  = +1 * sigmay2(macro) ;
  vbar2(macro,"5")  = +3 * sigmay2(macro) ;

  wbar2(macro,"1")  =   1/72        ;
  wbar2(macro,"2")  =  27/72        ;
  wbar2(macro,"3")  =  16/72        ;
  wbar2(macro,"4")  =  27/72        ;
  wbar2(macro,"5")  =   1/72        ;

 Display vbar1, vbar2, sigmay1, sigmay2 ;

*###################### VARIABLES #################################
 VARIABLES
 A(ii,jj)       Post SAM coefficient matrix
 TSAM(ii,jj)    Post matrix of SAM transactions
 Y(ii)          row sum of SAM
 X(ii)          column sum of SAM
 ERR1(ii)       Error value on column sums
 ERR2(macro)    Error value for macro aggregates
 W1(ii,jwt)     Error weights
 W2(macro,jwt)  Error weights
 DENTROPY       Entropy difference (objective)
 GDPFC          GDP at factor cost
 GDP            GDP at market prices
  ;

*########################## INITIALIZE VARIABLES ##################

 A.L(ii,jj)          = Abar1(ii,jj) ;
 TSAM.L(ii,jj)       = T1(ii,jj)    ;
 Y.L(ii)             = target0(ii)  ;
 X.L(ii)             = target0(ii)  ;
 ERR1.L(ii)          = 0.0          ;
 ERR2.L(macro)       = 0.0          ;
 W1.L(ii,jwt)        = wbar1(ii,jwt) ;
 W2.L(macro,jwt)     = wbar2(macro,jwt) ;
 DENTROPY.L          = 0            ;
 GDPFC.L             = gdpfc0       ;
 GDP.L               = gdp0         ;

*############ CORE EQUATIONS
 EQUATIONS

 SAMEQ(i)        row and column sum constraint
 SAMMAKE(i,j)    make SAM flows
 ERROR1EQ(i)     definition of error term 1
 ERROR2EQ(macro) definition of error term 2
 SUMW1(i)        Sum of weights 1
 SUMW2(macro)    Sum of weights 2
 ENTROPY         Entropy difference definition
 ROWSUM(i)       row target
 COLSUM(j)       column target
 GDPFCDEF        define GDP at factor cost
 GDPDEF          define GDP
 ;

*CORE EQUATIONS====================================================

 SAMEQ(ii)..   Y(ii)       =E= X(ii) + ERR1(ii) ;

 SAMMAKE(ii,jj)$nonzero(ii,jj)..
                  TSAM(ii,jj) =E= A(ii,jj) * (X(jj) + ERR1(jj)) ;

 ERROR1EQ(ii).. ERR1(ii)    =E= SUM(jwt, W1(ii,jwt)*vbar1(ii,jwt)) ;

 SUMW1(ii)..   SUM(jwt, W1(ii,jwt)) =E= 1 ;

 ENTROPY..     DENTROPY    =E= SUM((ii,jj)$nonzero(ii,jj),
                               A(ii,jj)*(LOG(A(ii,jj) + epsilon)
                             - LOG(Abar1(ii,jj) + epsilon)))
                             +
                               SUM((ii,jwt), W1(ii,jwt)
                             * (LOG(W1(ii,jwt) + epsilon)
                             - LOG(wbar1(ii,jwt) + epsilon)))
                             +
                               SUM((macro,jwt), W2(macro,jwt)
                             * (LOG(W2(macro,jwt) + epsilon)
                             - LOG(wbar2(macro,jwt) + epsilon))) ;

* Note that we exclude one rowsum equation since if all but one column
* and rowsum are equal, the last one must also be equal. Walras' Law
* at work.

 ROWSUM(ii)$(NOT SAMEAS(ii,"ROW"))..   SUM(jj, TSAM(ii,jj)) =E= Y(ii) ;

 COLSUM(jj)..     SUM(ii, TSAM(ii,jj)) =E= (X(jj) + ERR1(jj)) ;

*ADDITIONAL MACRO CONTROL-TOTAL EQUATIONS===========================

 GDPFCDEF..         GDPFC =E= TSAM("fac","act") + ERR2("gdpfc2") ;

 GDPDEF..           GDP   =E= TSAM("fac","act") + TSAM("gre","act")
                             - TSAM("act","gre") + TSAM("gre","com")
                             + ERR2("gdp2") ;

 ERROR2EQ(macro)..  ERR2(macro)
                          =E= SUM(jwt, W2(macro,jwt)*vbar2(macro,jwt)) ;

 SUMW2(macro)..     SUM(jwt, W2(macro,jwt)) =E= 1 ;

*###############  Define bounds for cell values  ####################

* Defining equation SAMMAKE over non-zero elements of A ($Abar1(ii,jj))
* guarantees that the zero structure of the original SAM is maintained
* in the estimated SAM. Fixing all the zero entries to zero greatly
* reduces the size of the estimation problem. If it is desired to
* allow a zero entry to become nonzero in the estimated SAM, then
* the condition $ABAR1(ii,jj) must be replaced with a new set that
* does not include cells which are currently zero but may be nonzero.

 A.LO(ii,jj)$nonzero(ii,jj)          = 0 ;
 A.UP(ii,jj)$nonzero(ii,jj)          = 1 ;
 A.FX(ii,jj)$(NOT nonzero(ii,jj))    = 0;

 TSAM.lo(ii,jj)                      = 0.0 ;
 TSAM.up(ii,jj)                      = +inf ;
 TSAM.FX(ii,jj)$(NOT nonzero(ii,jj)) = 0 ;

* Upper and lower bounds on the error weights
 W1.LO(ii,jwt)                       = 0   ;
 W1.UP(ii,jwt)                       = 1   ;
 W2.LO(macro,jwt)                    = 0   ;
 W2.UP(macro,jwt)                    = 1   ;

* Set target column sums, X. If these are not fixed, then the column sum
* constraints will not be binding and the solution values or ERR1 will
* be 0.

  X.FX(ii)                            = TARGET0(ii) ;

* Fix Macro aggregates.
* If these are not fixed, then the macro constraints will not be binding
* and the solution values of ERR2 will be zero.
  GDP.FX                = GDP0 ;
  GDPFC.FX              = GDPFC0 ;

*######################## DEFINE MODEL ############################

 MODEL SAMENTROP / ALL /

*######################## SOLVE MODEL #############################

 OPTION ITERLIM       = 5000;
 OPTION LIMROW        = 0,   LIMCOL    = 0;
 OPTION SOLPRINT      = ON;


* SAMENTROP.optfile   = 1 ;
  SAMENTROP.HOLDFIXED = 1 ;
* OPTION NLP          = CONOPT;
* SAMENTROP.WORKSPACE = 25.0;

*########################### Solve statenment ######################

  SOLVE SAMENTROP using NLP minimizing dentropy ;

*###################################################################



*##(alternative formulation)#### MCP Formulation ##################

* Add code restating the nonlinear-programming (NLP) minimization
* problem as an MCP problem solved using the MCP solver.
*
* The code below is a translation of the NLP problem into a
* mixed complementarity problem (MCP), which can be solved
* using an MCP solver in GAMS. The translation was done using
* a preliminary version of a program called NLP2MCP written
* by Michael Ferris and Jeffrey Horn (1998) at the University
* of Wisconsin. The translation adds "shadow price" or
* complementarity variables for all constraint equations and
* also provides equations for all the first-order conditions
* for minimizing the objective function. The resulting model
* is square with as many variables as equations.

alias(macro,a_macro);
alias(ii,a_ii);
alias(jj,a_jj);
alias(jwt,a_jwt);


*#####  "SHADOW PRICE" OR COMPLEMENTARITY VARIABLES OR   ##########
*##### LAGRANGE MULTIPLIERS FOR ALL CONSTRAINT EQUATIONS ##########

variables
  m_SAMEQ(i)         Multiplier for row and column sum constraint
  m_SAMMAKE(i,j)     Multiplier for make SAM flows constraint
  m_ERROR1EQ(i)      Multiplier for definition of error term 1
  m_ERROR2EQ(macro)  Multiplier for definition of error term 2
  m_SUMW1(i)         Multiplier for Sum of weights 1 constraint
  m_SUMW2(macro)     Multiplier for Sum of weights 1 constraint
  m_ROWSUM(i)        Multiplier for row target constraint
  m_COLSUM(j)        Multiplier for column target constraint
  m_GDPFCDEF         Multiplier for GDP at factor cost constraint
  m_GDPDEF           Multiplier for GDP at market pricesconstraint
;

*############# EQUATIONS FOR THE FIRST ORDER CONDITIONS ############
*############# FOR MINIMIZING THE OBJECTIVE FUNCTION    ############

EQUATIONS
  d_A(a_ii,a_jj)        FOC wrt the choice variable A
  d_TSAM(a_ii,a_jj)     FOC wrt the variable TSAM
  d_Y(a_ii)             FOC wrt the variable Y
  d_X(a_ii)             FOC wrt the variable X
  d_ERR1(a_ii)          FOC wrt the variable ERR1
  d_ERR2(a_macro)       FOC wrt the variable ERR2
  d_W1(a_ii,a_jwt)      FOC wrt the choice variable W1
  d_W2(a_macro,a_jwt)   FOC wrt the choice variable W2
  d_GDPFC               FOC wrt the macro control variable GDPFC
  d_GDP                 FOC wrt the macro control variable GDP
;


*##### EQUATION: FOC wrt the choice variable A  #################
d_A(a_ii,a_jj) ..

 ((log(a(a_ii,a_jj)+epsilon)-log(abar1(a_ii,a_jj)+epsilon))
 $(nonzero(a_ii,a_jj)) + a(a_ii,a_jj)*(1/(a(a_ii,a_jj)+epsilon))
 $(nonzero(a_ii,a_jj)))-

 SUM((ii,jj)$(nonzero(ii,jj)),m_sammake(ii,jj)*(-(1$((sameas
 (a_ii,ii) and sameas(a_jj,jj))))*(x(jj)+err1(jj)))) =e= 0;


*##### EQUATION: FOC wrt the variable TSAM ######################
d_TSAM(a_ii,a_jj) .. -

 m_gdpfcdef*(-(1$((sameas(a_ii,"fac") and sameas(a_jj,"act"
 )))))-

 m_colsum(a_jj)-

 m_gdpdef*(-(1$((sameas(a_ii,"fac") and sameas(a_jj,"act"))
 )+1$((sameas(a_ii,"gre") and sameas(a_jj,"act")))-(1$((sameas
 (a_ii,"act") and sameas(a_jj,"gre"))))+1$((sameas(a_ii,"gre"
 ) and sameas(a_jj,"com")))))-

 m_rowsum(a_ii)$((not sameas(a_ii,"ROW")))-

 m_sammake(a_ii,a_jj)$(nonzero(a_ii,a_jj)) =e= 0;


*##### EQUATION: FOC wrt the variable Y #########################
d_Y(a_ii) .. -

 m_sameq(a_ii)-

 SUM((ii)$((not sameas(ii,"ROW"))),m_rowsum(ii)*(-(1$((sameas
 (a_ii,ii))))))

 =e= 0;

*##### EQUATION FOC wrt the variable X ##########################
d_X(a_ii) .. -

 SUM(jj,m_colsum(jj)*(-(1$((sameas(a_ii,jj))))))-

 SUM(ii,m_sameq(ii)*(-(1$((sameas(a_ii,ii))))))-

 SUM((ii,jj)$(nonzero(ii,jj)),m_sammake(ii,jj)*(-a(ii,jj)*(1
 $((sameas(a_ii,jj)))))) =e= 0;

*##### EQUATION: FOC wrt the variable ERR1 ######################
d_ERR1(a_ii) .. -

 m_error1eq(a_ii)-

 SUM(jj,m_colsum(jj)*(-(1$((sameas(a_ii,jj))))))-

 SUM(ii,m_sameq(ii)*(-(1$((sameas(a_ii,ii))))))-

 SUM((ii,jj)$(nonzero(ii,jj)),m_sammake(ii,jj)*(-a(ii,jj)*(1
 $((sameas(a_ii,jj))))))

 =e= 0;

*##### EQUATION: FOC wrt the variable ERR2 ######################
d_ERR2(a_macro) .. -

 m_error2eq(a_macro)-

 m_gdpfcdef*(-(1$((sameas(a_macro,"gdpfc2")))))-

 m_gdpdef*(-(1$((sameas(a_macro,"gdp2")))))

 =e= 0;

*##### EQUATION: FOC wrt the choice variable W1 #################
d_W1(a_ii,a_jwt) .. ((log(w1(a_ii,a_jwt)+epsilon)-log(wbar1(a_ii
 ,a_jwt)+epsilon))+w1(a_ii,a_jwt)*(1/(w1(a_ii,a_jwt)+epsilon)))-

 SUM(ii,m_error1eq(ii)*(-(vbar1(ii,a_jwt)$(sameas(a_ii,ii))
 )))-

 m_sumw1(a_ii)

 =e= 0;

*##### EQUATION: FOC wrt the choice variable W2 #################
d_W2(a_macro,a_jwt) .. ((log(w2(a_macro,a_jwt)+epsilon)-log(wbar2
 (a_macro,a_jwt)+epsilon))+w2(a_macro,a_jwt)*(1/(w2(a_macro,a_jwt
 )+epsilon)))-

 SUM(macro,m_error2eq(macro)*(-(vbar2(macro,a_jwt)$(sameas(a_macro
 ,macro)))))-

 m_sumw2(a_macro)

 =e= 0;

*##### EQUATION: FOC wrt the macro control variable GDPFC #######
d_GDPFC .. -

 m_gdpfcdef =e= 0;

*##### EQUATION: FOC wrt the macro control variable GDP #########
d_GDP .. -

 m_gdpdef =e= 0;

*######################## DEFINE MODEL ############################
* In GAMS the "." is used for pairing the complementarity variables
* and equations for the MCP solver. For example the equation
* defined by d_A is complementary to the variable A and must be
* defined over the same sets.

 MODEL m_SAMENTROP /
    d_A.A
    d_TSAM.TSAM
    d_Y.Y
    d_X.X
    d_ERR1.ERR1
    d_ERR2.ERR2
    d_W1.W1
    d_W2.W2
    d_GDPFC.GDPFC
    d_GDP.GDP
    ERROR1EQ.m_ERROR1EQ
    ERROR2EQ.m_ERROR2EQ
    GDPFCDEF.m_GDPFCDEF
    COLSUM.m_COLSUM
    SAMEQ.m_SAMEQ
    GDPDEF.m_GDPDEF
    SUMW1.m_SUMW1
    ROWSUM.m_ROWSUM
    SUMW2.m_SUMW2
    SAMMAKE.m_SAMMAKE
                    /
 ;

*############################ SOLVE MODEL #########################

*Shock the NLP solution
 A.L(ii,jj) = 0.9*A.l(ii,jj) ;

*########################### Solve statenment #####################

  SOLVE m_SAMENTROP using mcp;

**#################################################################

*Compare NLP and MCP results.
 Scalar savedent ;
 savedent = dentropy.l ;

DENTROPY.l   = SUM((ii,jj)$nonzero(ii,jj),
                              A.l(ii,jj)*(LOG(A.l(ii,jj) + epsilon)
                             - LOG(Abar1(ii,jj) + epsilon)))
                             +
                               SUM((ii,jwt), W1.l(ii,jwt)
                             * (LOG(W1.l(ii,jwt) + epsilon)
                             - LOG(wbar1(ii,jwt) + epsilon)))
                             +
                               SUM((macro,jwt), W2.l(macro,jwt)
                             * (LOG(W2.l(macro,jwt) + epsilon)
                             - LOG(wbar2(macro,jwt) + epsilon))) ;

 option decimals=8 ;
 display dentropy.l, savedent ;
 option decimals=3 ;

*###################### END MCP INCLUDE FILE ######################




*###### NOTE ON THE USE OF "SAMEAS" GAMS COMMAND ##################
*######   Undocumented Feature IN GAMS Manual    ##################
$ontext
Matching Set Elements

New features in GAMS allow one to introduce conditional statements
controlling execution in cases where certain items match up . The
syntax involves using the commands

  SAMEAS(setelement1,setelement2)
              or
  DIAG(setelement,setelement)

the SAMEAS command returns a true false indicator which is true
if the text string defining the name of set element 1 equals that
for setelement 2 and false otherwise. DIAG returns a 1 under
equality and a zero otherwise.

For example
  x=sum((i,j)$(not SAMEAS(i,j)),z(i)*z(j));
                   or
  x=sum((i,j)$(DIAG(i,j) eq 0),z(i)*z(j));

would exclude the cases where i=j from the sum

while
  x=sum((i,j)$(SAME AS(i,"case1") or SAME AS(j,"case2")),z(i)+z(j));

would only include cases where the text for i equaled the string
"case1" or the text for j corresponded to "case2."

If interested check the following web address Undocumented Features
and Usage Tips

 http://agrinet.tamu.edu/mccarl/gamstip.htm

$offtext

*############### END Note on "SAMEAS" GAMS command ################
*###################################################################


*---------------- Parameters for reporting results
Parameters
 Macsam1(i,j)       Assigned new balanced SAM flows from CE
 Macsam2(i,j)       Balanced SAM flows from entropy diff x scalesam
 SEM                Squared Error Measure
 percent1(i,j)      percent change of new SAM from original SAM
 PosUnbal(i,j)      Positive unbalanced SAM
 PosBalan(i,j)      Positive balanced SAM
 Diffrnce(i,j)      Differnce btw original SAM and Final SAM in values
 NormEntrop         Normalized Entropy a measure of total uncertainty
 ;

 macsam1(ii,jj)         = TSAM.l(ii,jj);
 macsam1("total",jj)    = SUM(ii, macsam1(ii,jj)) ;
 macsam1(ii,"total")    = SUM(jj, macsam1(ii,jj)) ;
 macsam2(i,j)           = macsam1(i,j) * scalesam ;
 SEM                    = Sum((ii,jj), SQR(A.L(ii,jj)
                                      - Abar1(ii,jj)))/SQR(card(ii));
 percent1(i,j)$(T1(i,j))= 100*(macsam1(i,j)-T1(i,j))/T1(i,j);
 PosUnbal(i,j)          = T1(i,j) * scalesam;
 PosBalan(i,j)          = macsam2(i,j);
 Diffrnce(i,j)          = PosBalan(i,j) - PosUnbal(i,j);
 NormEntrop             = SUM((ii,jj)$(Abar1(ii,jj)), A.L(ii,jj)*
                          LOG (A.L(ii,jj))) / SUM((ii,jj)$(Abar1(ii,jj)),
                          Abar1(ii,jj)* LOG (Abar1(ii,jj)))
 ;
 display macsam1, macsam2, percent1, sem, dentropy.l, PosUnbal,
         PosBalan, NormEntrop, Diffrnce ;

*########### Return negative flows to initial cell position ############

 macsam1(ii,jj)         = macsam1(ii,jj) + redsam(ii,jj) ;
 macsam1("total",jj)    = SUM(ii, macsam1(ii,jj)) ;
 macsam1(ii,"total")    = SUM(jj, macsam1(ii,jj)) ;
 macsam2(i,j)           = macsam1(i,j) * scalesam ;

 gdp00                  = macsam1("fac","act") + macsam1("gre","act")
                          - macsam1("act","gre") + macsam1("gre","com") ;

 display macsam1, macsam2 ;
 display gdp0, gdp00, gdp.l, gdpfc0, gdpfc.l ;

*#######
 Parameter ANEW(i,j) ;
* print some stuff
 ANEW("total",jj)   = SUM(ii, A.L(ii,jj)) ;
 ANEW(ii,"total")   = SUM(jj, A.L(ii,jj)) ;

 ABAR1("total",jj) = SUM(ii, ABAR1(ii,jj)) ;
 ABAR1(ii,"total") = SUM(jj, ABAR1(ii,jj)) ;

 Display ANEW, ABAR1 ;

 scalar meanerr1, meanerr2 ;
 meanerr1 = SUM(ii, abs(err1.l(ii)))/card(ii) ;
 meanerr2 = SUM(macro, abs(err2.l(macro)))/card(macro) ;
 display meanerr1, meanerr2 ;

* Use the following code to specify that the column sums are known
* exactly. The errors are thus fixed to zero and two equations are
* dropped from the estimation procedure. The computational gains are
* that the constraints are all linear and the estimation problem is
* considerably smaller.

*######
$ontext
*######

 ERR1.FX(ii)       = 0.0 ;
 W1.FX(ii,jwt)     = WBAR1(ii,jwt) ;

 MODEL SAMENTROP2 /SAMEQ
                  SAMMAKE
*                 ERROR1EQ
*                 SUMW1
                  ERROR2EQ
                  SUMW2
                  ENTROPY
                  ROWSUM
                  COLSUM
                  GDPFCDEF
                  GDPDEF
                           /
;
 SAMENTROP2.holdfixed = 1 ;

*######################### Solve statenment ###################

 SOLVE SAMENTROP2 using nlp minimizing dentropy ;

*##############################################################

*#######
$offtext
*#######

*#*#*#*#*#*#*#*#*#*#*#*#* THE END *#*#*#*#*#*#*#*#*#*#*#*#*#*#*
