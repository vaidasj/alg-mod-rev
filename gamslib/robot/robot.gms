option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Robot arm COPS 2.0 #8 (ROBOT,SEQ=236)

$ontext

Minimize the time taken for a robot arm to
travel between two points.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 50, 100, 200, 400


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Vanderbei, R, Nonlinear Optimization Models.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

sets  h intervals / h0 * h%nh%/

scalars
    pi a famous constant
    nh number of intervals / %nh% /
    L  total length of arm / 5 /
    max_u_rho  / 1 /
    max_u_the  / 1 /
    max_u_phi  / 1 /;

pi = 2*arctan(inf);

variables
    rho(h)
    the(h)
    phi(h)
    rho_dot(h)
    the_dot(h)
    phi_dot(h)
    u_rho(h)
    u_the(h)
    u_phi(h)
    step
    tf
    i_the(h)
    i_phi(h)

equations
     tf_eqn
     rho_eqn(h)
     the_eqn(h)
     phi_eqn(h)
     u_rho_eqn(h)
     u_the_eqn(h)
     u_phi_eqn(h)
     i_the_eqn(h)
     i_phi_eqn(h);


tf_eqn.. tf =e= step*nh;

i_phi_eqn(h).. i_phi(h) =e= (power(L-rho(h),3)+power(rho(h),3))/3.0;

i_the_eqn(h).. i_the(h) =e= i_phi(h)*sqr(sin(phi(h)));

rho_eqn(h-1)..  rho(h) =e= rho(h-1) + 0.5*step*(rho_dot(h) + rho_dot(h-1));

the_eqn(h-1)..  the(h) =e= the(h-1) + 0.5*step*(the_dot(h) + the_dot(h-1));

phi_eqn(h-1)..  phi(h) =e= phi(h-1) + 0.5*step*(phi_dot(h) + phi_dot(h-1));

u_rho_eqn(h-1)..  rho_dot(h) =e=
                    rho_dot(h-1) + 0.5*step*(u_rho(h) + u_rho(h-1))/L;

u_the_eqn(h-1)..  the_dot(h) =e=
          the_dot(h-1) + 0.5*step*(u_the(h)/i_the(h) + u_the(h-1)/i_the(h-1));

u_phi_eqn(h-1)..  phi_dot(h) =e=
          phi_dot(h-1) + 0.5*step*(u_phi(h)/i_phi(h) + u_phi(h-1)/i_phi(h-1));


rho.lo(h) = 0;    rho.up(h) = L;
the.lo(h) = -pi;  the.up(h) = pi;
phi.lo(h) = 0;    phi.up(h) = pi;

u_rho.lo(h) = -max_u_rho;  u_rho.up(h) = max_u_rho;
u_the.lo(h) = -max_u_the;  u_the.up(h) = max_u_the;
u_phi.lo(h) = -max_u_phi;  u_phi.up(h) = max_u_phi;

i_the.lo(h) = 0.0001;
i_phi.lo(h) = 0.0001;

set firstlast(h) / h0, h%nh% /;

the.fx('h0')    = 0;
the.fx('h%nh%') = 2*pi/3;

rho.fx(firstlast)      = 4.5;
phi.fx(firstlast)      = pi/4;
rho_dot.fx(firstlast)  = 0;
the_dot.fx(firstlast)  = 0;
phi_dot.fx(firstlast)  = 0;
i_phi.fx(firstlast(h)) = (power(L-rho.l(h),3)+power(rho.l(h),3))/3.0;
i_the.fx(firstlast(h)) = i_phi.l(h)*sqr(sin(phi.l(h)));

rho.l(h) = 4.5;
the.l(h) = (2*pi/3)*sqr(ord(h)/nh);
phi.l(h) = pi/4;

rho_dot.l(h) = 0.0;
the_dot.l(h) = (4*pi/3)*(ord(h)/nh);
phi_dot.l(h) = 0.0;

step.l = 1/nh;

i_phi.l(h) = (power(L-rho.l(h),3)+power(rho.l(h),3))/3.0;
i_the.l(h) = i_phi.l(h)*sqr(sin(phi.l(h)));


model robot /all/;

$if set workspace robot.workspace = %workspace%;

solve robot miniziming tf using nlp;
