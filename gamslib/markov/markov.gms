option LP=convert;
option LP=convert;
option LP=convert;
$Title Strategic Petroleum Reserve  (MARKOV,SEQ=82)

$Ontext

   This is a linear programming formulation for optimal petroleum
   stockpile policy based on a stochastic dynamic programming approach.
   Each state of the Markov process is a pair (s,i) where s is the size
   of the inventory and i is the state of the world (normal or disrupted).
   However, we assume the probability of entering state (s',j) from
   state (s,i) is independent of the stockpile levels.


Teisberg, T J, A Dynamic Programming Model of the U.S. Strategic
Petroleum Reserve. Bell Journal of Economics (1981).

$Offtext


Sets  s    level of the reserve     / empty, 3, 6, 9, 12, 15, 18, 21 /
      i    state of the oil market  / normal, disrupted /

Alias(s,sp,spp), (i,j)

* remember that supply is fixed at q = 110 million barrel per year
* and the shape of the demand curve is : d(p) = d + k*p**-e

Scalars  b   discount factor             /   .95   /
         beta                            /   .0625 /
         g   u.s. demand                 /   .25   /
         e                               /    .1   /
         q   supply                      / 110     /
         d                               /-130     /
         k                               / 342     /
         pn  normal price (us$ per bbl)  /  34.526 /
         h   storage cost                /    .32  /

Table  pr(i,j)  transition probability of the word oil market

             normal  disrupted
normal         .8       .2
disrupted      .5       .5

Parameters  lev(s)      level of reserve
            dis(i)      disruption           / disrupted  11 /
            p(s,sp,i)   price affected by action a
            c(s,sp,i)   cost of taking action a
            pi(s,i,sp,j,spp) probability matrix for problem;

lev(s)    = 3*(ord(s)-1);
p(s,sp,i) = ( k / (q - dis(i) - d - (lev(sp)-lev(s)) ))**(1/e);
c(s,sp,i) = g*(d*(p(s,sp,i)-pn) + k*(p(s,sp,i)**(1-e) - pn**(1-e))/(1-e))
            + p(s,sp,i)*(lev(sp)-lev(s)) + h*lev(sp) ;

pi(s,i,sp,j,sp) = pr(i,j);

Display lev, dis, p, c, pi;

Variables  z(s,i,sp)  multiple of joint probability
           pvcost     present value of expected cost

Positive variable z

Equations  constr(s,i)
           equil(s,sp)
           cost           cost definition;

constr(sp,j)..  sum(spp, z(sp,j,spp)) - b*sum((s,i,spp),
                         pi(s,i,sp,j,spp)*z(s,i,spp)) =e= beta;

equil(s,spp).. z(s,"disrupted",spp)*(ord(spp)-ord(s)) =l= 0;

cost..   pvcost =e= sum((s,i,spp), c(s,spp,i)*z(s,i,spp));

Model strategic / all /;
Solve strategic using lp minimizing pvcost;
