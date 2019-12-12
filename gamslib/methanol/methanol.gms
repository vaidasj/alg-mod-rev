option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Methanol to hydrocarbons COPS 2.0 #13 (METHANOL,SEQ=241)

$ontext

Determine the reaction coefficients for the conversion of methanol
into various hydrocarbons.

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
and Computer Science Division, Argonne National Laboratory,
1992.

Maria, G, An Adaptive Strategy for Solving Kinetic Model
Concomitant Estimation - Reduction Problems. Can. J. Chem.
Eng. 67 (1989), 825.

Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical
Solution of Boundary Value Problems for Ordinary
Differential Equations. SIAM, 1995.

Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R,
Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and
Schweiger, C A, Handbook of Test Problems in Local and
Global Optimization. Kluwer Academic Publishers, 1999.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

Set ne differential equations  /ne1*ne3/
    np ODE parameters          /np1*np5/
    nc collocation points      /nc1*nc3/
    nh partition intervals     /nh1*nh%nh%/
    nm measurements            /1*17/;

Parameter bc(ne)  ODE initial conditions / ne1 1, ne2 0, ne3 0/
          tau(nm) times at which observations made /
            1  0.000,   2  0.050,   3  0.065,   4  0.080,   5  0.123,
            6  0.233,   7  0.273,   8  0.354,   9  0.397,  10  0.418,
           11  0.502,  12  0.553,  13  0.681,  14  0.750,  15  0.916,
           16  0.937,  17  1.122
                                                   /;

Table z(nm,ne) observation
           ne1       ne2       ne3
   1    1.0000         0         0
   2    0.7085    0.1621    0.0811
   3    0.5971    0.1855    0.0965
   4    0.5537    0.1989    0.1198
   5    0.3684    0.2845    0.1535
   6    0.1712    0.3491    0.2097
   7    0.1198    0.3098    0.2628
   8    0.0747    0.3576    0.2467
   9    0.0529    0.3347    0.2884
  10    0.0415    0.3388    0.2757
  11    0.0261    0.3557    0.3167
  12    0.0208    0.3483    0.2954
  13    0.0085    0.3836    0.2950
  14    0.0053    0.3611    0.2937
  15    0.0019    0.3609    0.2831
  16    0.0018    0.3485    0.2846
  17    0.0006    0.3698    0.2899
;

$batinclude copspart.inc nc3 17

Positive variable theta(np) ODE parameters;

Equations collocation_eqn1(nh,nc)
          collocation_eqn2(nh,nc)
          collocation_eqn3(nh,nc);

collocation_eqn1(i,j)..
  Duc[i,j,'ne1'] =e= - (2*theta['np2'] - (theta['np1']*uc[i,j,'ne2'])/
       ((theta['np2']+theta['np5'])*uc[i,j,'ne1']+uc[i,j,'ne2']) +
                           theta['np3'] + theta['np4'])*uc[i,j,'ne1'];

collocation_eqn2(i,j)..  Duc[i,j,'ne2'] =e=
  (theta['np1']*uc[i,j,'ne1']*(theta['np2']*uc[i,j,'ne1']-uc[i,j,'ne2']))/
               ((theta['np2']+theta['np5'])*uc[i,j,'ne1']+uc[i,j,'ne2']) +
               theta['np3']*uc[i,j,'ne1'];

collocation_eqn3(i,j)..  Duc[i,j,'ne3'] =e=
  (theta['np1']*uc[i,j,'ne1']*(uc[i,j,'ne2']+theta['np5']*uc[i,j,'ne1']))/
               ((theta['np2']+theta['np5'])*uc[i,j,'ne1']+uc[i,j,'ne2']) +
               theta['np4']*uc[i,j,'ne1'];

model methanol /all/;

theta.l(np) = 1;
v.fx['nh1',s] = bc(s);

$if set workspace methanol.workspace = %workspace%;

solve methanol minimizing obj using nlp;
