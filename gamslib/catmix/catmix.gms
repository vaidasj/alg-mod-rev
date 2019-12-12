option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Catalyst Mixing COPS 2.0 #14 (CATMIX,SEQ=242)

$ontext

Determine the optimal policy of two catalysts along the length of a
tubular plug flow reactor involving several reactions.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 100, 200, 400, 800


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

von Stryk, O, User's Guide for DIRCOL (Version 2.1):
A Direct Collocation Method for the Numerical Solution of
Optimal Control Problems. Tech. rep., Technische Universität
München, 1999.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 100

Set nh  Number of subintervals / 0*%nh% /;
Alias (nh,i);

Scalar tf    Final time               /1/
       x1_0  Initial condition for x1 /1/
       x2_0  Initial condition for x2 /0/
       alpha smoothing parameter      /0/
       h;

h = tf/%nh%;

Variable u(nh), x1(nh), x2(nh), obj;
Positive variable u; u.up(nh) = 1;

Equations  defobj   objective function
           ode1(nh)
           ode2(nh);

defobj.. obj =e= -1 + x1['%nh%'] + x2['%nh%']
                     + alpha*h*sum{nh(i+1), sqr(u[i+1] - u[i])};

ode1(nh(i+1))..  x1[i+1] =e= x1[i] + (h/2)*(u[i]*(10*x2[i]-x1[i])
                                          + u[i+1]*(10*x2[i+1]-x1[i+1]));

ode2(nh(i+1))..  x2[i+1] =e= x2[i] + (h/2)*(u[i]*(x1[i]-10*x2[i])
                   - (1-u[i])*x2[i] + u[i+1]*(x1[i+1]-10*x2[i+1])
                   - (1-u[i+1])*x2[i+1]);


x1.l[nh] = 1;
x1.fx['0'] = x1_0;
x2.fx['0'] = x2_0;

model catmix /all/;

$if set workspace catmix.workspace = %workspace%;

solve catmix minimizing obj using nlp;
