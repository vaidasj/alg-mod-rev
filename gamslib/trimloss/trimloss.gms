option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Trim Loss Minimization (TRIMLOSS,SEQ=204)
$ONtext
 The task is to cut out some paper products of different sizes from a
 large raw paper roll, in order to meet a customer's order.


Harjunkoski, I, Application of MINLP Methods on a Scheduling Problem
in the Paper Converting Industry. PhD thesis, Abo Akademi University,
1997.

Harjunkoski, I, Westerlund, T, Porn, R, and Skrifvars, H,
Different Transformations for Solving Non-Convex Trim Loss Problems by
MINLP. European Journal of Operational Research 105, 3 (1998), 594-603.

Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H,
Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook
of Test Problems in Local and Global Optimization. Kluwer Academic
Publishers, 1999.

The entire collection of models can found at
   http://titan.princeton.edu/TestProblems/

$Offtext

SET i product roll /1*6/
    j pattern number /1*6/;

SCALAR Bmax width of entire roll / 2200 /
       delta maximum loss in pattern / 100 /
       Nkmax maximum number of knives / 5 /;

PARAMETER n(i)  number of orders of each product roll
         / 1  8, 2 16, 3 12, 4  7, 5 14, 6 16 /;

PARAMETER b(i)  width of each roll
         / 1  330, 2  360, 3  380, 4  430, 5  490, 6  530 /;

PARAMETER mupp(j)   upper bound on repeats of pattern j
         / 1 15, 2 12, 3  8, 4  7, 5  4, 6  2 /;

VARIABLES
         r(i,j)    number of products of type i in pattern j
         y(j)      existence of pattern j
         m(j)      repeats of pattern j
         objval    objective function variable;

FREE VARIABLES    objval;
BINARY VARIABLE   y;
INTEGER VARIABLE  r, m;

EQUATIONS
         f           objective function
         numroll(i)  order constraints ensuring sufficient production
         widthL(j)   width lower bound constraint
         widthU(j)   width upper bound constraint
         rL(j)       logical constraint on r
         sumr(j)     logical constraint on r
         mL(j)       logical constraint on m
         mU(j)       logical constraint on m
         sumbil      lower bound on total number of patterns made
         yy(j)       ordering of y variables to reduce degeneracy
         lmm(j)      ordering of m variables to reduce degeneracy
;

f.. objval =e= SUM(j, m(j) + ord(j)/10 * y(j));

numroll(i).. SUM(j, m(j) * r(i,j)) =g= n(i);

widthL(j).. SUM(i,b(i) * r(i,j)) =g= (Bmax - delta) * y(j);
widthU(j).. SUM(i,b(i) * r(i,j)) =l= Bmax * y(j);

rL(j).. y(j) =l= SUM(i,r(i,j));

sumr(j).. SUM(i,r(i,j)) =l=  Nkmax * y(j);

mL(j).. y(j) =l= m(j);
mU(j).. m(j) - mupp(j) * y(j) =l= 0;

sumbil  .. SUM(j, m(j)) =g=
              max(ceil(sum(i,n(i))/Nkmax), ceil(sum(i,b(i)*n(i))/Bmax))+1;

yy(j+1).. y(j+1) =l= y(j);

lmm(j+1).. m(j+1) =l= m(j);


* Bounds
r.UP(i,j) = Nkmax;
m.UP(j) = mupp(j);

MODEL trimloss /ALL/;

OPTION optcr=0.0;

SOLVE trimloss USING MINLP MINIMIZING objval;
execerror=0;

* Did we find the global solution?
PARAMETER rep solution report;

rep(i,j,'local') = r.L(i,j);
rep('y',j,'local') = y.L(j);
rep('m',j,'local') = m.L(j);

TABLE gs(j,*) global solution
              1   2   3   4   5   6   y   m
        1         2       1   1   1   1   8
        2     1       2       1   1   1   8
;
rep(i,j,'global') = gs(j,i);
rep('y',j,'global') = gs(j,'y');
rep('m',j,'global') = gs(j,'m');

rep(i,j,'diff') = rep(i,j,'global') - rep(i,j,'local');
rep('y',j,'diff') = rep('y',j,'global') - rep('y',j,'local');
rep('m',j,'diff') = rep('m',j,'global') - rep('m',j,'local');

option rep:8:2:1;
display rep;
