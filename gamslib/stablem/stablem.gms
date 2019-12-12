option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title  Stable Marriage Problem (STABLEM,SEQ=389)
$ontext

Given a set of n men and n women, marry them off in pairs after each
man has ranked the women in order of preference from 1 to n,
{w_1,...,w_n} and each women has done likewise, {m_1,...,m_n}. If the
resulting set of marriages contains no pairs of the form {m_i,w_j},
{m_k,w_l} such that m_i prefers w_l to w_j and w_l prefers m_i to m_k,
the marriage is said to be stable. Gale and Shapley (1962) showed that
a stable marriage exists for any choice of rankings (Skiena 1990,
p. 245). In the United States, the algorithm of Gale and Shapley
(1962) is used to match hospitals to medical interns (Skiena 1990,
p. 245). 

This model generates multiple/all solution by introducing MIP cuts 
and resolving the MIP.


Gale, D, and Shapley, L S, College admissions and the stability of
marriage. American Mathematical Monthly 69, 1 (1962), 9-15.

Gusfield, D, and Irving, R W, The stable marriage problem: structure
and algorithms. MIT Press, Cambridge, MA, USA, 1989.

Skiena, S, 6.4.4. Stable Marriages. In Implementing discrete mathematics: 
combinatorics and graph theory with Mathematica. Addison-Wesley Longman 
Publishing Co., Inc., Boston, MA, USA, 1991.

Weisstein, E W, Stable Marriage Problem. From MathWorld-A Wolfram Web
Resource. http://mathworld.wolfram.com/StableMarriageProblem.html

Sethuraman, V J, and Teo, C P, Linear programming brings marital
bliss. Mathematical Medley, Singapore Mathematical Society 25, 2
(1998). 

$offtext

*  use gams ... --data=xxx
$if not set data   $set data premer
$if not set maxsol $set maxsol 100

$iftheni %data%==premer

sets m / Alan, Bob, Carl, Dan /
     w / Alice, Brenda, Cindy, Debbie /

table wp(w,m) Woman Preferences
        Alan Bob Carl Dan
Alice      3   4    2   1
Brenda     3   4    1   2
Cindy      3   2    1   4
Debbie     4   2    3   1

table mp(m,w) Man Preferences
     Alice Brenda Cindy Debbie
Alan     2      4     1      3
Bob      1      4     2      3
Carl     3      4     2      1
Dan      3      2     1      4

$elseifi %data%==minizinc

sets m / m1*m5 /
     w / w1*w5 /

table wp(w,m) Woman Preferences
   m1 m2 m3 m4 m5
w1  1  2  4  3  5
w2  3  5  1  2  4
w3  5  4  2  1  3
w4  1  3  5  4  2
w5  4  2  3  5  1

table mp(m,w) Man Preferences
   w1 w2 w3 w4 w5
m1  5  1  2  4  3
m2  4  1  3  2  5
m3  5  3  2  4  1
m4  1  5  4  3  2
m5  4  3  2  1  5

$elseifi %data%==five

sets m /Joe,Brian,George,Matt,Jim/
     w /Amy,Sarah,Susan,Kelly,Dianne/

table wp(w,m) Woman Preferences
       Joe Brian George Matt Jim
Amy      1     2      4    3   5
Sarah    3     5      1    2   4
Susan    5     4      2    1   3
Kelly    1     3      5    4   2
Dianne   4     2      3    5   1

table mp(m,w) Man Preferences
        Amy Sarah Susan Kelly Dianne
Joe       5     1     2     4      3
Brian     4     1     3     2      5
George    5     3     2     4      1
Matt      1     5     4     3      2
Jim       4     3     2     1      5

$elseifi %data%==mathworld

sets m / m1*m9 /
     w / w1*w9 /

table wp(w,m) Woman Preferences
   m1 m2 m3 m4 m5 m6 m7 m8 m9
w1  3  9  3  8  6  2  9  6  8
w2  1  4  1  7  9  4  3  3  2
w3  5  8  8  5  2  5  8  2  6
w4  2  1  9  3  5  1  2  1  4
w5  8  7  5  2  1  6  7  8  9
w6  7  6  4  6  4  8  5  4  1
w7  6  3  2  4  7  3  4  5  3
w8  9  2  6  9  3  9  6  9  7
w9  4  5  7  1  8  7  1  7  5

table mp(m,w) Man Preferences
   w1 w2 w3 w4 w5 w6 w7 w8 w9
m1  7  5  4  9  2  2  1  5  6
m2  3  4  8  7  6  7  6  6  1
m3  8  8  3  4  4  8  2  9  4
m4  9  3  9  2  9  6  3  1  7
m5  6  1  7  5  8  5  8  2  5
m6  4  2  5  8  7  3  5  8  8
m7  2  6  6  3  5  4  4  4  3
m8  1  7  1  1  1  1  9  3  9
m9  5  9  2  6  3  9  7  7  2

$else
$abort dataset "%data%" does not exist, use: premer,five,minizinc
$endif

alias (m,mm) ,(w,ww);

binary variable match(w,m); variable rank;

equations onem(w),onew(m),stable(w,m),defrank;

defrank.. rank =e= sum((w,m), wp(w,m)*match(w,m));

onem(w).. sum(m, match(w,m)) =e= 1;
onew(m).. sum(w, match(w,m)) =e= 1;

stable(w,m).. sum(mm$(wp(w,mm) > wp(w,m)), match(w,mm))
            + sum(ww$(mp(m,ww) > mp(m,w)), match(ww,m)) =l= 1;

model sm / all /;

solve sm us mip min rank;

set nn number of solutions / sol-1*sol-%maxsol% /, n(nn);
set sol(nn,w,m);

equation cut(nn);

cut(n).. sum(sol(n,w,m), match(w,m)) =l= card(w)-1;

model new / sm, cut /;

new.modelstat=sm.modelstat; 
option limrow=0,limcol=0,solprint=off,optcr=0,solvelink=5;

loop(nn$(new.modelstat=1),
   n(nn) = yes;
   sol(nn,w,m) = round(match.l(w,m));
   solve new us mip min rank);

option sol:0:0:1; display sol;
