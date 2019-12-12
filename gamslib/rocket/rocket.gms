option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Goddard rocket COPS 2.0 #10 (ROCKET,SEQ=238)

$ontext

Maximize the final altitude of a vertically launched rocket, using the
thrust as a control and given the initial mass, the fuel mass, and the
drag characteristics of the rocket.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter. COPS performance tests have been reported for nh = 50,
100, 200, 400


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Bryson, A E, Dynamic Optimization. Addison Wesley, 1999.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

set h intervals / h0 * h%nh%/

scalars
   h_0  Initial height          / 1 /
   v_0  Initial velocity        / 0 /
   m_0  Initial mass            / 1 /
   g_0  Gravity at the surface  / 1 /
   nh   Number of intervals in mesh / %nh% /
   t_c  Thrust constant         /3.5/
   v_c  / 620 /
   h_c  / 500 /
   m_c  / 0.6 /
   D_c
   m_f  final mass
   c ;


variable   final_velocity

positive
variables  step   step size
           v(h)   velocity
           ht(h)  height
           g(h)  gravity
           m(h)  mass
           t(h)  thrust
           d(h)  drag

equations  df(h)  Drag function
           gf(h)  Gravity function
           obj
           h_eqn(h), v_eqn(h), m_eqn(h);


obj.. final_velocity =e= ht('h%nh%');

df(h).. d(h) =e= D_c*sqr(v(h))*exp(-h_c*(ht(h)-h_0)/h_0);

gf(h).. g(h) =e= g_0*sqr(h_0/ht(h));

h_eqn(h-1).. ht(h) =e= ht(h-1) + .5*step*(v(h) + v(h-1));

m_eqn(h-1).. m(h) =e= m(h-1) - .5*step*(T(h) + T(h-1))/c;

v_eqn(h-1).. v(h) =e= v(h-1)
                    + .5*step*((T(h)   - D(h)   - m(h)  *g(h))  /m(h)
                              +(T(h-1) - D(h-1) - m(h-1)*g(h-1))/m(h-1));

c   = 0.5*sqrt(g_0*h_0);
m_f = m_c*m_0;
D_c = 0.5*v_c*(m_0/g_0);

ht.lo(h) = h_0;

t.lo(h)  = 0.0;
t.up(h)  = T_c*(m_0*g_0);

m.lo(h)  = m_f;
m.up(h)  = m_0;

ht.fx('h0')   = h_0;
v.fx('h0')    = v_0;
m.fx('h0')    = m_0;
m.fx('h%nh%') = m_f;

ht.l(h) = 1;
v.l(h)  = ((ord(h)-1)/nh)*(1 - ((ord(h)-1)/nh));
m.l(h)  = (m_f - m_0)*((ord(h)-1)/nh) + m_0;
t.l(h)  = t.up(h)/2;
step.l  = 1/nh;

* Initial values for intermediate variables
d.l(h) = D_c*sqr(v.l(h))*exp(-h_c*(ht.l(h)-h_0)/h_0);
g.l(h) = g_0*sqr(h_0/ht.l(h));

model rocket /all/;

$if set workspace rocket.workspace = %workspace%;

solve rocket using nlp maximizing final_velocity;
