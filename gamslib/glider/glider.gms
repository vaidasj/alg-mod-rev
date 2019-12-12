option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Hang glider COPS 2.0 #11 (GLIDER,SEQ=239)

$ontext

Maximize the final horizontal position of a thermal updraft.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the GAMS
user1 parameter. COPS performance tests have been reported for nh =
50, 100, 200, 400


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Bulirsch, R, Nerz, E, Pesch, H J, and von Stryk, O,
Combining Direct and Indirect Methods in Nonlinear Optimal
Control: Range Maximization of a Hang Glider. In Bulirsch,
R, Miele, A, Stoer, J, and Well, K H, Eds, Optimal Control.
Birkhauser Verlag, 1993, pp. 273-288.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50


sets
   c coordinates / x  distance
                   y  altitude /
   h intervals / h0 * h%nh%/ ;

scalars
   nh  Number of intervals in mesh / %nh% /
   cL_min bound on control variable / 0.0 /
   cL_max bound on control variable / 1.4 /
   u_c  / 2.5 /
   r_0  / 100 /
   m    / 100 /
   g    / 9.81 /
   c0   / 0.034 /
   c1   / 0.069662 /
   S    / 14 /
   rho  / 1.13 / ;

parameters
   c_0(c) initial position / x 0, y 1000/
   v_0(c) initial velocity / x 13.23, y -1.288/
   c_f(c) final position / y 900/
   v_f(c) final velocity / x 13.23, y -1.288/

;


variables
   t_f
   pos(c,h)  position x distance  y altitude
   vel(c,h)  velocity x distance  y altitude
   cl(h)   control variables
   r(h)    the r function
   u(h)    the u function
   w(h)    the w function
   v(h)    the v function
   D(h)    the D function
   L(h)    the L function
   v_dot(c,h)
   final_x
   step   step size

positive variables
   step;

equations
   tf_eqn
   rdef(h)
   udef(h)
   wdef(h)
   vdef(h)
   Ddef(h)
   Ldef(h)
   vx_dot_def(h)
   vy_dot_def(h)
   obj
   pos_eqn(c,h)
   vel_eqn(c,h);

alias(h,i);

tf_eqn.. t_f =e= step*nh;

rdef(i).. r[i] =e= sqr(pos['x',i]/r_0 - 2.5);
udef(i).. u[i] =e= u_c*(1-r[i])*exp(-r[i]);

wdef(i).. w[i] =e=          vel['y',i]  -     u[i];
vdef(i).. v[i] =e= sqrt(sqr(vel['x',i]) + sqr(w[i]));

Ddef(i).. D[i] =e= .5*(c0+c1*sqr(cL[i]))*rho*S*sqr(v[i]);
Ldef(i).. L[i] =e= .5*           cL[i]  *rho*S*sqr(v[i]);

vx_dot_def(i).. v_dot['x',i] =e= (-L[i]*w[i]/v[i] - D[i]*vel['x',i]/v[i])/m;
vy_dot_def(i).. v_dot['y',i] =e= ( L[i]*vel['x',i]/v[i] - D[i]*w[i]/v[i])/m - g;


obj.. final_x =e= pos('x','h%nh%');


pos_eqn(c,i-1).. pos[c,i] =e= pos[c,i-1] + .5*step*(vel[c,i]   + vel[c,i-1]);

vel_eqn(c,i-1).. vel[c,i] =e= vel[c,i-1] + .5*step*(v_dot[c,i] + v_dot[c,i-1]);

cl.lo(h) = cL_min; cl.up(h) = cL_max;
pos.lo('x',h) = 0;
vel.lo('x',h) = 0;
v.lo(h) = 0.01;

* Boundary Conditions

pos.fx(c,'h0') = c_0(c);
pos.fx('y','h%nh%') = c_f('y');
vel.fx(c,'h0') = v_0(c);
vel.fx(c,'h%nh%') = v_f(c);

* initial point
pos.l('x',h) = c_0('x') + v_0('x')*((ord(h)-1)/nh);
pos.l('y',h) = c_0('y') + ((ord(h)-1)/nh)*(c_f('y') - c_0('y'));
vel.l(c,h) = v_0(c);
cL.l(h) = cL_max/2;

step.l = 1.0/nh;

* Initial values for intermediate variables
t_f.l  = step.l*nh;
r.l[i] = sqr(pos.l['x',i]/r_0 - 2.5);
u.l[i] = u_c*(1-r.l[i])*exp(-r.l[i]);
w.l[i] =        vel.l['y',i]  -     u.l[i];
v.l[i] = sqrt(sqr(vel.l['x',i]) + sqr(w.l[i]));
D.l[i] = .5*(c0+c1*sqr(cL.l[i]))*rho*S*sqr(v.l[i]);
L.l[i] = .5*           cL.l[i]  *rho*S*sqr(v.l[i]);
v_dot.l['x',i] = (-L.l[i]*w.l[i]/v.l[i] - D.l[i]*vel.l['x',i]/v.l[i])/m;
v_dot.l['y',i] = ( L.l[i]*vel.l['x',i]/v.l[i] - D.l[i]*w.l[i]/v.l[i])/m - g;

model glider /all/;

glider.workspace = 5;

solve glider maximizing final_x using nlp;
