option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Isometrization of alpha-pinene COPS 2.0 #5 (PINENE,SEQ=233)

$ontext

Determine the reaction coefficients in the thermal isometrization of
alpha-pinene.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 25, 50, 100, 200


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Box, G E P, Hunter, W G, MacGregor, J F, and Erjavec, J,
Some Problems Associated with the Analysis of
Multiresponse Data. Technometrics 15 (1973), 33-51.

Tjoa, I B, and Biegler, L T, Simultaneous Solution and
Optimization Strategies for Parameter Estimation of
Differential-Algebraic Equations Systems. Ind. Eng.
Chem. Res. 30 (1991), 376-385.

Averick, B M, Carter, R G, More, J J, and Xue, G L,
The MINPACK-2 Test Problem Collection. Tech. rep.,
Mathematics and Computer Science Division,
Argonne National Laboratory, 1992.

Ascher, U M, Mattheij, R M M, and Russell, R D,
Numerical Solution of Boundary Value Problems
for Ordinary Differential Equations. SIAM, 1995.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

Set ne differential equations  /ne1*ne5/
    np ODE parameters          /np1*np5/
    nc collocation points      /nc1*nc3/
    nh partition intervals     /nh1*nh%nh%/
    nm measurements            /1*8/;

Parameter bc(ne)  ODE initial conditions / ne1 100, (ne2*ne5) 0/
          tau(nm) times at which observations made /
            1  1230.0,  2  3060.0,  3  4920.0,  4  7800.0,  5 10680.0,
            6 15030.0,  7 22620.0,  8 36420.0
                                                   /;

Table z(nm,ne) observation
       ne1     ne2     ne3     ne4     ne5
  1   88.35    7.3     2.3     0.4     1.75
  2   76.4    15.6     4.5     0.7     2.8
  3   65.1    23.1     5.3     1.1     5.8
  4   50.4    32.9     6.0     1.5     9.3
  5   37.5    42.7     6.0     1.9    12.0
  6   25.9    49.1     5.9     2.2    17.0
  7   14.0    57.4     5.1     2.6    21.0
  8    4.5    63.1     3.8     2.9    25.7
;

$batinclude copspart.inc nc3 8

Positive variable theta(np) ODE parameters;

Equations collocation_eqn1(nh,nc)
          collocation_eqn2(nh,nc)
          collocation_eqn3(nh,nc)
          collocation_eqn4(nh,nc)
          collocation_eqn5(nh,nc);

collocation_eqn1(i,j)..
  Duc[i,j,'ne1'] =e= - (theta['np1']+theta['np2'])*uc[i,j,'ne1'];

collocation_eqn2(i,j)..  Duc[i,j,'ne2'] =e= theta['np1']*uc[i,j,'ne1'];

collocation_eqn3(i,j)..  Duc[i,j,'ne3'] =e= theta['np2']*uc[i,j,'ne1'] -
  (theta['np3']+theta['np4'])*uc[i,j,'ne3'] + theta['np5']*uc[i,j,'ne5'];

collocation_eqn4(i,j)..  Duc[i,j,'ne4'] =e= theta['np3']*uc[i,j,'ne3'];

collocation_eqn5(i,j)..
  Duc[i,j,'ne5'] =e= theta['np4']*uc[i,j,'ne3'] - theta['np5']*uc[i,j,'ne5'];

model pinene /all/;

v.fx['nh1',s] = bc(s);

$if set workspace pinene.workspace = %workspace%;

solve pinene minimizing obj using nlp;
