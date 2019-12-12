option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Hydrothermal Scheduling Problem  (HYDRO,SEQ=167)
$Ontext
  Hydrothermal scheduling problem involves allocating the total power demand
  and losses among the hydro and thermal generators in a least-cost way. The
  scheduling period is typically a few days long. The hydraulic flow
  constraints and the limits on generator outputs have to be observed in the
  scheduling problem.


Wood, A J, and Wollenberg, B F, Example Problem 7b. In Power Generation,
Operation and Control. John Wiley and Sons, 1984, p. 202.

$Offtext

sets tt     periods (12 hours long) / 0,1*6 /
     t(tt)  periods (12 hours long) /   1*6 /

parameter load   mw load for the t-th period  / 1  1200, 2 1500, 3 1100
                                                4  1800, 5  950, 6 1300 /

scalars  losscof   loss coeff for hydro generation  / 0.00008 /
         n         number of hours in each period   / 12 /


variables
   thermal(t) output from the steam thermal plant (MW)
   hydro(t)   output from hydro plant             (MW)
   loss(t)    total loss                          (MW)
   q(tt)      hydro flow rate in acre-ft per hour
   v(tt)      reservoir storage volume at the end of t
   cost       total steam plant generation cost
positive variables thermal, hydro, loss, q, v ;

v.fx(tt)$(ord(tt) eq 1) = 100e3;
v.up(t)       = 120e3;
v.lo(t)       =  60e3;
thermal.up(t) = 1500 ;
thermal.lo(t) =  150 ;
hydro.up(t)   = 1000 ;

equations
   costfn       total cost calculation
   demcons(t)   demand plus loss must be met from hydro and thermal
   flow(tt)     hydraulic continuity equation
   losseq(t)    loss calculated as function of hydro output
   dischar(t)   calculation of hydro discharge ;


costfn..     cost =e= 1.15*n*card(t)*sum(t,
                                 500 + 8*thermal(t) + 0.0016*sqr(thermal(t)));

losseq(t)..  loss(t) =e= losscof*power(hydro(t),2) ;

demcons(t).. thermal(t) + hydro(t) =g= load(t) + loss(t) ;

flow(tt-1).. v(tt) =e= v(tt-1) + (2000 - q(tt))*n ;

dischar(t).. q(t) =e= 330 +4.97*hydro(t) ;

model hydther /all/ ;

solve hydther using nlp minimizing cost ;

