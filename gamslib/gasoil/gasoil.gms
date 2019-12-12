option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Catalytic cracking of gas oil COPS 2.0 #12 (GASOIL,SEQ=240)

$ontext

Determine the reaction coefficients for the catalytic cracking of gas
oil into gas and other byproducts.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 50, 100, 200, 400


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Tjoa, I B, and Biegler, L T, Simultaneous Solution and
Optimization Strategies for Parameter Estimation of
Differential-Algebraic Equations Systems. Ind. Eng. Chem.
Res. 30 (1991), 376-385.

Averick, B M, Carter, R G, More, J J, and Xue, G L, The
MINPACK-2 Test Problem Collection. Tech. rep., Mathematics
and Computer Science Division, Argonne National
Laboratory, 1992.

Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical
Solution of Boundary Value Problems for Ordinary
Differential Equations. SIAM, 1995.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

Set ne differential equations  /ne1*ne2/
    np ODE parameters          /np1*np3/
    nc collocation points      /nc1*nc4/
    nh partition intervals     /nh1*nh%nh%/
    nm measurements            /1*21/;

Parameter bc(ne)  ODE initial conditions / ne1 1, ne2 0 /
          tau(nm) times at which observations made /
           1  0.000,  2  0.025,  3  0.050,  4  0.075,  5  0.100,  6  0.125,
           7  0.150,  8  0.175,  9  0.200, 10  0.225, 11  0.250, 12  0.300,
          13  0.350, 14  0.400, 15  0.450, 16  0.500, 17  0.550, 18  0.650,
          19  0.750, 20  0.850, 21  0.950
                                                   /;

Table z(nm,ne) observation
           ne1       ne2
   1    1.0000         0
   2    0.8105    0.2000
   3    0.6208    0.2886
   4    0.5258    0.3010
   5    0.4345    0.3215
   6    0.3903    0.3123
   7    0.3342    0.2716
   8    0.3034    0.2551
   9    0.2735    0.2258
  10    0.2405    0.1959
  11    0.2283    0.1789
  12    0.2071    0.1457
  13    0.1669    0.1198
  14    0.1530    0.0909
  15    0.1339    0.0719
  16    0.1265    0.0561
  17    0.1200    0.0460
  18    0.0990    0.0280
  19    0.0870    0.0190
  20    0.0770    0.0140
  21    0.0690    0.0100
;

$batinclude copspart.inc nc4 21

Positive variable theta(np) ODE parameters;

Equations collocation_eqn1(nh,nc)
          collocation_eqn2(nh,nc);

collocation_eqn1(i,j)..
  Duc[i,j,'ne1'] =e= - (theta['np1']+theta['np3'])*sqr(uc[i,j,'ne1']);

collocation_eqn2(i,j)..  Duc[i,j,'ne2'] =e=
  theta['np1']*sqr(uc[i,j,'ne1'])-theta['np2']*uc[i,j,'ne2'];

model gasoil /all/;

v.fx['nh1',s] = bc(s);

$if set workspace gasoil.workspace = %workspace%;

solve gasoil minimizing obj using nlp;
