option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Alphametics -  A Mathematical Puzzle (ALPHAMET,SEQ=170)
$ontext
Alphametics are a type of mathematical puzzle. Given a set of
words, written down as a long-hand addition, find the mapping
between letters and digits (values). For example:

    G E O R G I A             8 4 6 5 8 0 2
      O R E G O N     ->        6 5 4 8 6 3
    V E R M O N T             1 4 5 9 6 3 7
    -------------           ---------------
  V I R G I N I A           1 0 5 8 0 3 0 2

Additional information can be found at:

http://www.gams.com/modlib/adddocs/alphametdoc.htm


Brooke, A, Kendrick, D, and Meeraus, A, GAMS: A User's Guide. The
Scientific Press, Redwood City, California, 1988.

$offtext



set i letters /g,e,o,r,i,a,n,v,m,t/;
alias (i,j);

abort$(card(i) <> 10) "set i should contain 10 letters";

set k slices /1*8/
    lead(i)  /g,o,v/;

parameter lhs(k,i) input count for each letter in slice /
  1.(a,n,t)    1
  2.(i,o,n)    1
  3.g          2 , 3.o          1
  4.(r,e,m)    1
  5.o          1 , 5.r          2
  6.e          2 , 6.o          1
  7.(g,v)      1
                                                   /;

parameter rhs(i,k) result / (v.8,i.7,r.6,g.5,i.4,n.3,i.2,a.1) 1.0 /


variables  z      sum of carries - some objective
           x(i,j) assignment of digits or values to letters
           y(i)   assigned value
           c(k)   carry;

binary variables x; integer variables c;

equations obj     some objective
          eq(k)   defines addition for each slice
          ydef(i) assigned value
          x1(i)   assignment constraint one
          x2(j)   assignment constraint two
          ld(i)   bound on lead letters;

obj..   z =e= sum(k, c(k-1));

eq(k)..   c(k-1) + sum(i, lhs(k,i)*y(i)) =e=
          sum(i, rhs(i,k)*y(i)) + 10*c(k)$(ord(k)<>card(k));

ydef(i).. y(i) =e= sum(j, (ord(j) - 1)*x(i,j));

x1(i).. sum(j, x(i,j)) =e= 1;
x2(j).. sum(i, x(i,j)) =e= 1;

ld(lead).. y(lead) =g= 1;

model m /all/;

option optcr=1,optca=100;
solve m using mip minimizing z;
