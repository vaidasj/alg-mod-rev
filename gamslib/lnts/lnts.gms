option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Particle steering COPS 2.0 #9 (LNTS,SEQ=237)

$ontext

Minimize the time take for a particle, acted upon by a thrust of
constant magnitude, to achieve a given altitude and terminal
velocity.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 50, 100, 200, 400


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Betts, J, Eldersveld, S, and Huffman, W, Sparse
Nonlinear Programming Test Problems. Tech. rep.,
Boeing Computer Services, 1993.

Bryson, A, and Ho, Y, Applied Optimal Control:
Optimization, Estimation, and Control. John Wiley and Sons,
1975.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

sets  h intervals    / h0 * h%nh% /
      c coordinates  / y1 first position coordinate
                       y2 second position coordinate
                       y3 first velocity coordinate
                       y4 second velocity coordinate /

scalars
    pi  a famous constant
    nh  number of intervals / %nh%  /
    a   magnitude of force  / 100.0 / ;


variables
    u(h)   control
    y(c,h) coordinates
    tf     final time ;

positive variables
    step   step size

equations tf_eqn, pos_eqn(c,h), velo1_eqn(h), velo2_eqn(h);

tf_eqn.. tf =e= step*nh;

pos_eqn(c+2,h+1).. y(c,h+1) =e= y(c,h) + 0.5*step*(y(c+2,h) + y(c+2,h+1));

velo1_eqn(h+1).. y('y3',h+1) =e=
                           y('y3',h) + 0.5*step*(a*cos(u(h)) + a*cos(u(h+1)));

velo2_eqn(h+1).. y('y4',h+1) =e=
                           y('y4',h) + 0.5*step*(a*sin(u(h)) + a*sin(u(h+1)));


pi = 2*arctan(inf);

u.lo(h) = -pi/2;
u.up(h) =  pi/2;

y.fx(c,'h0')       =  0;
y.fx('y2','h%nh%') =  5;
y.fx('y3','h%nh%') = 45;
y.fx('y4','h%nh%') =  0;

step.l      = 1.0/nh;
y.l('y2',h) =  5*(ord(h)-1)/nh;
y.l('y3',h) = 45*(ord(h)-1)/nh;

model lnts /all/;

$if set workspace lnts.workspace = %workspace%;

solve lnts using nlp minimizing tf;
