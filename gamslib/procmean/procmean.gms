option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title  Optimal Process Mean (PROCMEAN,SEQ=301)
$ontext

Find the optimal process mean when the quality characteristic
follows a Beta distribution and using a linear quality loss.


Erwin Kalvelagen, April 2004

Chen, C H, and Chou, C Y, Determining the Optimum Process Mean under a
Beta Distribution. Journal of the Chinese Institute of Industrial
Engineers 18 (3) (2003), 27--32.

Phillips, M D, and Cho, B R, Determining the Optimum Process Mean
under a Beta Distribution. A Nonlinear model for determining the most
economic process mean under a beta distribution 7 (2000), 61--74.

$offtext

scalars
   a 'minimum value of quality characteristic'   /113/
   b 'maximum value of quality characteristic'   /119/
   alpha 'shape parameter' /2/
   beta  'shape parameter' /4/
   T 'target value' /115/
   k1 'quality loss coefficient when x<T' /2/
   k2 'quality loss coefficient when x>T' /3/
;


scalars g1,g2,g3;

g1 = gamma(alpha+beta)/(gamma(alpha)*gamma(beta));
g2 = gamma(alpha+1)*gamma(beta)/gamma(alpha+beta+1);
g3 = g1*g2;


variables
   TC    'Total expected cost per unit'
   delta 'location parameter'
   y     'transformation'
;

equations
   tcdef 'cost model'
   ydef
;

tcdef..  tc =e= k1*T*betareg(y,alpha,beta)
                - k1*{(delta+a)*betareg(y,alpha,beta)
                      +(b-a)*betareg(y,alpha+1,beta)*g3}
                + k2*{(delta+a)*[1-betareg(y,alpha,beta)]
                      +(b-a)*[1-betareg(y,alpha+1,beta)*g3]}
                - k2*T*[1-betareg(y,alpha,beta)];

ydef..   y =e= (T-delta-a)/(b-a);

y.lo = 0.0001;
y.up = 0.9999;

y.l = 0.5;

model m /all/;
solve m using nlp minimizing tc;
