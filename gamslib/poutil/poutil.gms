option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Portfolio Optimization for Electric Utilities  (POUTIL,SEQ=342)

$Ontext

   We discuss a portfolio optimization problem occurring in the energy
   market. Energy distributing public services have to decide how much 
   of the requested energy demand has to be produced in their own power 
   plant, and which complementary amount has to be bought from the spot 
   market and from load following contracts.

   This problem is formulated as a mixed-integer linear programming
   problem and implemented in GAMS. The formulation is applied to real data 
   of a German electricity distributor.

   Most equations contain the reference number of the formula in the
   publication.


   Rebennack, S, Kallrath, J, and Pardalos, P M, Energy Portfolio
   Optimization for Electric Utilities: Case Study for Germany. In
   Bjørndal, E, Bjørndal, M, Pardalos, P.M. and Rönnqvist, M Eds,.
   Springer, pp. 221-246, 2010.
$Offtext

$title Energy
Sets
   t          time slices (quarter-hour)   / t1*t96 /

Parameter
   PowerForecast(t)   electric power forecast /
              t1  287, t2  275, t3  262, t4  250, t5  255, t6  260, t7  265,
              t8  270, t9  267, t10 265, t11 262, t12 260, t13 262, t14 265,
              t15 267, t16 270, t17 277, t18 285, t19 292, t20 300, t21 310,
              t22 320, t23 330, t24 340, t25 357, t26 375, t27 392, t28 410,
              t29 405, t30 400, t31 395, t32 390, t33 400, t34 410, t35 420,
              t36 430, t37 428, t38 427, t39 426, t40 425, t41 432, t42 440,
              t43 447, t44 455, t45 458, t46 462, t47 466, t48 470, t49 466,
              t50 462, t51 458, t52 455, t53 446, t54 437, t55 428, t56 420,
              t57 416, t58 412, t59 408, t60 405, t61 396, t62 387, t63 378,
              t64 370, t65 375, t66 380, t67 385, t68 390, t69 383, t70 377,
              t71 371, t72 365, t73 368, t74 372, t75 376, t76 380, t77 386,
              t78 392, t79 398, t80 405, t81 408, t82 412, t83 416, t84 420,
              t85 413, t86 407, t87 401, t88 395, t89 386, t90 377, t91 368,
              t92 360, t93 345, t94 330, t95 315, t96 300 /;

$title Power Plant (PP)

Scalars
   cPPvar     'variable cost of power plant [ euro / MWh ]'   /  25.0 /
   pPPMax     'maximal capacity of power plant [MW]'          / 300.0 /;

Sets
   m          stage of the power plant             / m1*m8 /
   iS         interval for constant PP operation   / iS0*iS8 /
   iI         length of idle time period           / iI0*iI16 /;

$title spot market (SM)

Scalars
   cBL        'cost for one base load contract [ euro / MWh ]' / 32.0 /
   cPL        'cost for one peak load contract [ euro / MWh ]' / 41.0 /;

Parameter
   IPL(t)     indicator function for peak load contracts;
IPL(t) = ord(t)>=33 and ord(t)<=80;


$title load following contract (LFC)

Scalar
   pLFCref    power reference level for the LFC / 400 /

Set
   b          support points of the zone prices / b1*b3 /

Parameter
   eLFCbY(b)  amount of energy at support point b / b1 54750, b2 182500, b3 9000000 /
   cLFCvar(b) specific energy price in segment b  / b1 80.0,  b2 65.0,   b3 52.0 /;

Parameters
   eLFCb(b)   daily border of energy volumes for LFC
   cLFCs(b)   accumulated cost for LFC up to segment b;

* calculate the daily borders of the energy volumes for the zones
eLFCb(b) = eLFCbY(b) / 365;

* calculate the accumulated cost
cLFCs("b1")         = 0;
cLFCs("b2")         = cLFCvar("b1") * eLFCb("b1");
cLFCs(b)$(ord(b)>2) = cLFCs(b-1) + cLFCvar(b-1) * ( eLFCb(b-1) - eLFCb(b-2) );

Variables
   c          total cost
   cPP        cost of PP usage
   pPP(t)     power withdrawn from power plant
   delta(m,t) indicate if the PP is in stage m at time t
   chiS(t)    indicate if there is a PP stage change
   chiI(t)    indicate if the PP left the idle stage
   cSM        cost of energy from SM
   pSM(t)     power from the spot market
   alpha      quantity of base load contracts
   beta       quantity of peak load contracts
   cLFC       cost of LFC which is the enery rate
   eLFCtot    total energy amount of LFC
   eLFCs(b)   energy from LFC in segment b
   pLFC(t)    power from the LFC
   mu(b)      indicator for segment b (for zone prices)

Positive variables cPP, pPP, chiS, chiI, cSM, pSM, cLFC, eLFCtot, eLFCs, pLFC;
Binary variables delta, mu;
Integer variables alpha, beta;

alpha.up = smax(t, PowerForecast(t));
beta.up  = alpha.up;

pLFC.up(t) = pLFCref;
Equations
   obj                  objective function
   demand(t)            demand constraint for energy forcast
   PPcost               power plant cost
   PPpower(t)           power of power plant at time t
   PPstage(t)           exactly one stage of power plant at any time
   PPchiS1(t,m)         relate chi and delta variables first constraint
   PPchiS2(t,m)         relate chi and delta variables second constraint
   PPstageChange(t)     restrict the number of stage changes
   PPstarted(t)         connect chiZ and chi variables
   PPidleTime(t)        control the idle time of the plant
   SMcost               cost associated with spot market
   SMpower              power from the spot market
   LFCcost              cost for the LFC
   LFCenergy            total energy from the LFC
   LFCmu                exactly one price segment b
   LFCenergyS           connect the mu variables with the total energy
   LFCemuo              accumulated energy amount for segement b1
   LFCemug(b)           accumulated energy amount for all other segements;

* the objective function: total cost; eq. (6)
obj..          c =e= cPP + cSM + cLFC;

* meet the power demand for each time period exactly; eq. (23)
demand(t)..    pPP(t) + pSM(t) + pLFC(t) =e= PowerForecast(t);

* (fix cost +) variable cost * energy amount produced; eq. (7) & (8)
PPcost..       cPP =e= cPPVar * sum(t, 0.25 * pPP(t) );

* power produced by the power plant; eq. (26)
PPpower(t)..   pPP(t) =e= pPPMax * sum(m$(ord(m)>1), 0.1*(ord(m) + 2)*delta(m,t));

* the power plant is in exactly one stage at any time; eq. (25)
PPstage(t)..   sum(m, delta(m,t)) =e= 1;

* next constraints model the minimum time period a power plant is in the
* same state and the constraint of the minimum idle time
* we need variable 'chiS' to find out when a status change takes place
* eq. (27)
PPchiS1(t,m)$(ord(t)>1)..    chiS(t) =g= delta(m,t) - delta(m,t-1);

* second constraint for 'chiS' variable; eq. (28)
PPchiS2(t,m)$(ord(t)>1)..    chiS(t) =g= delta(m,t-1) - delta(m,t);

* control the minimum change time period; eq. (29)
PPstageChange(t)$(ord(t) < card(t)-card(iS)+2).. sum(iS, chiS(t+ord(iS))) =l= 1;

* indicate if the plant left the idle state; eq. (30)
PPstarted(t).. chiI(t) =g= delta("m1",t-1) - delta("m1",t);

* control the minimum idle time period:
* it has to be at least Nk2 time periods long; eq. (31)
PPidleTime(t)$(ord(t) < card(t)-card(iI)+2).. sum(iI, chiI(t+ord(iI))) =l= 1;

* cost for the spot market; eq. (12)
* consistent of the base load (alpha) and peak load (beta) contracts
SMcost..       cSM =e= 24 * cBL * alpha + 12 * cPL * beta;

* Spot Market power contribution; eq. (9)
SMpower(t)..   pSM(t) =e= alpha + IPL(t) * beta;

* cost of the LFC is given by the energy rate; eq. (14) & (21)
LFCcost..      cLFC =e= sum(b, cLFCs(b) * mu(b) + cLFCvar(b) * eLFCs(b));

* total energy from the LFC; eq. (16)
* connect the eLFC(t) variables with eLFCtot
LFCenergy..    eLFCtot =e= sum(t, 0.25 * pLFC(t));

* indicator variable 'mu':
* we are in exactly one price segment b; eq. (18)
LFCmu..        sum(b, mu(b)) =e= 1;

* connect the 'mu' variables with the total energy amount; eq. (19)
LFCenergyS..   eLFCtot =e= sum(b$(ord(b)>1), eLFCb(b-1) * mu(b)) + sum(b, eLFCs(b));

* accumulated energy amount for segment "b1"; eq. (20)
LFCemuo..      eLFCs("b1") =l= eLFCb("b1") * mu("b1");

* accumulated energy amount for all other segments (then "b1"); eq. (20)
LFCemug(b)$(ord(b)>1)..  eLFCs(b) =l= (eLFCb(b) - eLFCb(b-1)) * mu(b);

model energy / all /;

* relative termination criterion for MIP (relative gap)
Option optcr = 0.000001;

solve energy using MIP minimizing c;
