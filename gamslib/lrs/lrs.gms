option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Linear Recursive Sequence Optimization Model  (LRS,SEQ=312)
$ontext
Given a sequence of 0 & 1 observations,  {c(t)},
We wish to find the linear recursive sequence defined by:

   k(t) = k(t-n) xor k(t-(n-r))    (mod 2),   for t = n+1,2, ... t

that minimizes the number of disagreements between c(t) and k(t).

note, once k(1), k(2), ..., k(n) are specified, then
k(n+1), ..., k(t) are uniquely determined by the lrs.

Thus, this model declares k(1), k(2), ..., k(n) as binary
and k(t), t > n as continuous variables that will automatically
assume binary values when k(1) thru k(n) are binary.

This model is based on a client model from the area of cryptography.

The model demonstrates the use of variablename.prior=INF to relax some elements
of a discrete variable to fractional variable elements. Moreover, it shows how
to formulate the logical XOR operator using mixed-integer linear programming.
$offtext

SET t    time horizon  /1*350/,
    f(t) first N steps /1*48/;

PARAMETER c(t);
c(t) = uniform(0,1) > .3 ;

SCALAR n, r /8/, n_minus_r; n = card(f); n_minus_r=n-r;

VARIABLES
  k(t)    recursive sequence
  z       objective min differences

Binary variable k(t)

Equations
  obj        Objective
  modup1(t)  XOR upper bounding constraint for combination false false
  modup2(t)  XOR upper bounding constraint for combination true  false
  modlo1(t)  XOR lower bounding constraint for combination false true
  modlo2(t)  XOR lower bounding constraint for combination true  true
;

obj..      z =e= sum(t, k(t)$(c(t)=0) + (1-k(t))$(c(t)=1)) ;

$ontext
The following four constraints model an k(t) = k(t-n) XOR k(t-(n-r))
Here is a table of possible combinations and the binding constraint:
                              binding constraint
k(t-n) k(t-(n-r)) result XORup1 XORup2 XORlo1 XORlo2
  0        0        0      x
  1        0        1                    x
  0        1        1                           x
  1        1        0             x
$offtext

modup1(t-n) ..  k(t) =l=     k(t-n) + k(t-n_minus_r);
modup2(t-n) ..  k(t) =l= 2 - k(t-n) - k(t-n_minus_r);
modlo1(t-n) ..  k(t) =g=   - k(t-n) + k(t-n_minus_r);
modlo2(t-n) ..  k(t) =g=     k(t-n) - k(t-n_minus_r);

model lrs /all/;

* The first n variables of k are binary, the remaining are fractional.
* We do not need to set prioropt=1 since the relaxation of the binary
* variables is done independently of prioropt
k.prior(t) = inf; k.prior(f) = 1;
option optcr=0.0, optca=0.99, limrow=0, limcol=0;

* In case mod(n,r)=0 we can decompose in r independent subproblems
Equation objsub; scalar modnum;
objsub .. z =e= sum(t$(mod(ord(t)-1,r)=modnum), k(t)$(c(t)=0) + (1-k(t))$(c(t)=1)) ;

model lrssub /objsub, modup1, modup2, modlo1, modlo2/;

if (mod(n,r),
  solve lrs using mip minimizing z;
else
  for(modnum = 0 to r-1,
    solve lrssub using mip minimizing z;
    k.fx(t)$(mod(ord(t)-1,r)=modnum) = k.l(t);
  );
  solve lrs using mip minimizing z;
);
