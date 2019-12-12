option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Marine population dynamics COPS 2.0 #6 (POPDYNM,SEQ=234)

$ontext

Given estimates of the abundance of the population of a marine species
at each stage (for example, nauplius, juvenile, adult) as a function
of time, determine stage specific growth and mortality rates.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 25, 50, 100, 200


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Rothschild, B J, Sharov, A F, and Bondarenko, A S,
Estimating Growth and Mortality in Stage-Structured
Populations. Journal of Plankton Research 19 (1997),
1913-1928.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 25

Set ne differential equations  /ne1*ne8/
    nc collocation points      /nc1*nc2/
    nh partition intervals     /nh1*nh%nh%/
    nm measurements            /1*21/;

Parameter tau(nm) times at which observations made
          bc(ne);
tau(nm) = (ord(nm)-1)/2;

Table z(nm,ne) observation
        ne1     ne2     ne3     ne4     ne5     ne6     ne7     ne8
  1  20000.0 17000.0 10000.0 15000.0 12000.0  9000.0  7000.0  3000.0
  2  12445.0 15411.0 13040.0 13338.0 13484.0  8426.0  6615.0  4022.0
  3   7705.0 13074.0 14623.0 11976.0 12453.0  9272.0  6891.0  5020.0
  4   4664.0  8579.0 12434.0 12603.0 11738.0  9710.0  6821.0  5722.0
  5   2977.0  7053.0 11219.0 11340.0 13665.0  8534.0  6242.0  5695.0
  6   1769.0  5054.0 10065.0 11232.0 12112.0  9600.0  6647.0  7034.0
  7    943.0  3907.0  9473.0 10334.0 11115.0  8826.0  6842.0  7348.0
  8    581.0  2624.0  7421.0 10297.0 12427.0  8747.0  7199.0  7684.0
  9    355.0  1744.0  5369.0  7748.0 10057.0  8698.0  6542.0  7410.0
 10    223.0  1272.0  4713.0  6869.0  9564.0  8766.0  6810.0  6961.0
 11    137.0   821.0  3451.0  6050.0  8671.0  8291.0  6827.0  7525.0
 12     87.0   577.0  2649.0  5454.0  8430.0  7411.0  6423.0  8388.0
 13     49.0   337.0  2058.0  4115.0  7435.0  7627.0  6268.0  7189.0
 14     32.0   228.0  1440.0  3790.0  6474.0  6658.0  5859.0  7467.0
 15     17.0   168.0  1178.0  3087.0  6524.0  5880.0  5562.0  7144.0
 16     11.0    99.0   919.0  2596.0  5360.0  5762.0  4480.0  7256.0
 17      7.0    65.0   647.0  1873.0  4556.0  5058.0  4944.0  7538.0
 18      4.0    44.0   509.0  1571.0  4009.0  4527.0  4233.0  6649.0
 19      2.0    27.0   345.0  1227.0  3677.0  4229.0  3805.0  6378.0
 20      1.0    20.0   231.0   934.0  3197.0  3695.0  3159.0  6454.0
 21      1.0    12.0   198.0   707.0  2562.0  3163.0  3232.0  5566.0
;

bc(ne) = z('1',ne);

$batinclude copspart.inc nc2 21

Set nfl(ne) all but the first and last element of ne;
nfl(ne) = not sameas(ne,'ne1') and not sameas(ne,'ne8');    display nfl;

Positive variables   g(ne)  'growth rates'
                     m(ne)  'mortality rates';

Equations  collocation_eqn1(i,j)
           collocation_eqns(i,j,s)
           collocation_ne(i,j);

collocation_eqn1(i,j)..
  Duc[i,j,'ne1'] =e= -(m['ne1']+g['ne1'])*uc[i,j,'ne1'];

collocation_eqns(i,j,nfl(s))..
  Duc[i,j,s] =e= g[s-1]*uc[i,j,s-1] - (m[s]+g[s])*uc[i,j,s];

collocation_ne(i,j)..
  Duc[i,j,'ne8'] =e= g['ne7']*uc[i,j,'ne7'] - m['ne8']*uc[i,j,'ne8'];

model popdynm /all/;
popdynm.scaleopt = 1;
obj.scale = 1000;

$if set workspace popdynm.workspace = %workspace%;

solve popdynm minimizing obj using nlp;
