option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Stratified Sample Design  (SAMPLE,SEQ=27)
$Ontext

The problem is to find a sampling plan that minimizes cost
and yields variances of the population less than an upper bound.
Table 10.1 in the book is not consistent with the equation
statements and the objective function value must be a misprint.


Bracken, J, and McCormick, G P, Chapter 10.2. In Selected Applications
of Nonlinear Programming. John Wiley and Sons, New York, 1968.

$Offtext

Sets  h  stratum  / 1*4 /,  j  variate  / a,b /

Table data(h,*)

     pop    a     b    cost
 1  400000  25    1     1
 2  300000  25    4     1
 3  200000  25   16     1
 4  100000  25   64     1

Parameter vmax(j) maximum variance  / a .04, b .01 /
          w(h)    stratum weight
          tpop    total population
          k1(h,j) constant one
          k2(j)   constant two;

 tpop = sum(h, data(h,"pop"));
 w(h) = data(h,"pop")/tpop;
 k1(h,j) = sqr(w(h))*data(h,j);
 k2(j)   = sum(h, w(h)*data(h,j)/data(h,"pop"));

Display tpop, w, k1,k2;

Variables  n(h)  sample - original formulation
           nr(h) reciprocal of sample size
           c     cost

Equations  vbal(j)  variance balance - original formulation
           vbalr(j) reciprocal variance balance
           cbal     cost balance - original formulation
           cbalr    reciprocal formulation of cost balance;

vbal(j)..  sum(h, k1(h,j)/n(h)) - k2(j) =l= vmax(j);

vbalr(j).. sum(h, k1(h,j)*nr(h)) - k2(j) =l= vmax(j);

cbal..     c =e= sum(h, data(h,"cost")*n(h));

cbalr..    c =e= sum(h, data(h,"cost")/nr(h));

Models sample  original formulation      / vbal,cbal /
       sampler reciprocal formulation    / vbalr,cbalr / ;

n.lo(h) = 100; n.up(h) = data(h,"pop");
n.l(h) = 200; c.l = sum(h, data(h,"cost")*n.l(h));
Solve sample minimizing c using nlp;

nr.lo(h) = 1/data(h,"pop"); nr.up(h) = 1/100; nr.l(h) = 1/n.l(h);
Solve sampler minimizing c using nlp;

