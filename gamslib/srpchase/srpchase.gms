option LP=convert;
option LP=convert;
option LP=convert;
$Title  Scenario Tree Construction Example (SRPCHASE,SEQ=344)
$Ontext

SCENRED2 - Scenario Tree Construction Example
3-stage stochastic purchase example problem

Analytical solution:
    OPT  = 4.167 (Optimal value)
    VOPI = 3.667 (Value of perfect information)

H. Heitsch, W. Roemisch, and C. Strugarek 
Stability of Multistage Stochastic Programs
SIAM Journal on Optimization 17 (2006), 511-525

$Offtext

* Dimension (even number)
$if not set DIM $set DIM 1000
$ife mod(%DIM%,2)=1 $eval DIM %DIM%+1

Sets n              nodes            / n0*n%DIM% /
     t              time periods     / t1*t3 /
     stage(n,t)     stage mapping
     ancestor(n,n)  ancestor matrix
     leaf(n)        leaf nodes;

* Build a fan

* Assign stage mapping and leaf nodes
stage('n0','t1') = yes;
stage( n  ,'t2') = ord(n)>1 and ord(n)<=%DIM%/2+1;
stage( n  ,'t3') = ord(n)>%DIM%/2+1;

leaf(n) = stage(n,'t3');

* Build ancenstor relations to represent the fan
ancestor(n,'n0')$stage(n,'t2') = yes;
ancestor(n,n-card(leaf))$stage(n,'t3') = yes;

* Random variables (price) and probabilities
Parameters
     price(n)       node prices
     prob(n)        node probabilities;
prob(n) = 1/card(leaf);

* First stage
price('n0') = 1; prob('n0') = 1;

* Second stage - price is uniformly distributed in [0,1]
price(n)$stage(n,'t2') = uniform(0,1);

* Third stage - price is conditional linearly distributed
Scalar alpha, beta;
loop(stage(n,'t3'),
    alpha    = 1-price(n-card(leaf));
    beta     = 1-2*price(n-card(leaf));
    price(n) = uniform(0,1);
    price(n)$beta = alpha/beta
               - sign(beta)*sqrt(sqr(alpha/beta) - price(n)/beta);
);

* Initialize ScenRed2
$set sr2prefix srpchase
$libinclude scenred2

file fopts Scenred option file / 'sr2%sr2prefix%.opt' /;
putclose fopts 'order           1'
             / 'section   epsilon'
             / ' 2           0.05'
             / ' 3           0.05'
             / 'end';

* Scenred2 method choice
ScenRedParms('construction_method') = 2;
ScenRedParms('reduction_method'   ) = 2;
ScenRedParms('sroption'           ) = 1;

* Scenred2 call
$libinclude runscenred2 %sr2prefix% tree_con n ancestor prob ancestor prob price

Variables
    x(n)       amount of purchase
    y(n)       slack variable
    cost       objective value;

Positive variables x,y;

Equations
    objective  expected cost
    slack(n)   slack equation
    demand(n)  demand inequality;

Set srn(n)     subset of nodes after tree construction;
srn(n) = prob(n);

objective..
    cost   =e= sum(srn, prob(srn)*price(srn)*x(srn));

slack(srn)$(not leaf(srn))..
    y(srn) =e= x(srn) + sum(ancestor(srn,n), y(n));

demand(leaf(srn))..
    x(srn) + sum(ancestor(srn,n), y(n)) =g= 1;

Model purchase / all /;

Solve purchase minimizing cost using lp;
