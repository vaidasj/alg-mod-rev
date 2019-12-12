option MCP=convert;
option MCP=convert;
option MCP=convert;
$title Traffic Equilibrium Problem (TRAFFIC,SEQ=169)
$Ontext
  Three different models are used to compute traffic equilibria. These are
  a mixed complementarity formulation and a primal and dual formulation
  using NLPs.


Ferris, M C, Meeraus, A, and Rutherford, T F, Computing Wardropian
Equilibria in a Complementarity Framework. Optimization Methods and
Software 10 (1999), 669-685.

$Offtext

sets n       nodes
     a(n,n)  directed arcs;

parameters trip(n,n)    trip table
           ca  (n,n)    cost coef A
           cb  (n,n)    cost coef B
           ck  (n,n)    cost coef K;

alias(n,i,j,k);

variables  t(i,j)    time to get from node i to node j
           v(i,j)    time to traverse arc form i to j
           y(i,j,k)  flow to k along arc i-j
           x(i,j)    aggregate flow on arc i-j
           objpnlp   objective for nlp formulation
           objdnlp   objective for nlp formulation
positive variable y;

equations  balance(i,j)     material balance
           vdef(i,j)        arc travel time definition
           rational(i,j,k)  cost minimization condition
           xdef(i,j)        aggregate flow definition
           defpnlp          defines objective for primal nlp formulation
           defdnlp          defines objective for dual nlp formulation;


balance(i,k)$(not sameas(i,k))..  sum(a(i,j), y(a,k)) =e= sum(a(j,i), y(a,k)) + trip(i,k);

rational(a(i,j),k)$(not sameas(i,k))..   v(a) + t(j,k) =g= t(i,k);

vdef(a)..  v(a) =e= ca(a) + cb(a)*power(x(a)/ck(a),4);

xdef(a)..  x(a) =e= sum(k, y(a,k));

defpnlp..  objpnlp =e= sum(a, ca(a)*x(a) + cb(a)*power(x(a)/ck(a),5)*ck(a)/5);

defdnlp..  objdnlp =e= sum((i,k), trip(i,k)*t(i,k))
                     - sum(a, (4/5)*(ck(a)/cb(a)**(1/4))*(v(a)-ca(a))**1.25);

model pnlp primal nlp formulation / defpnlp, balance, xdef/
      dnlp dual nlp formulation   / defdnlp, rational /
      mcp  mcp formulation        / rational.y, balance.t, xdef, vdef.v /;

$stitle Sioux Falls Test Data
$eolcom !
set  n node definition / 1*24 / ; alias(i,j,k,n);
set param  arc cost table headers / a, b, k /

table arc_cost(n,n,param)  arc cost data
            a         b         k
1.2         6       .90      25.9002
2.6         5       .75       4.9582
3.12        4       .60      23.4035
4.11        6       .90       4.9088
5.9         5       .75      10.0000
7.8         3       .45       7.8418
8.9        10      1.50       5.0502
9.10        3       .45      13.9158
10.15       6       .90      13.5120
10.17       8      1.20       4.9935
11.14       4       .60       4.8765
13.24       4       .60       5.0913
14.23       4       .60       4.9248
15.22       4       .60      10.3150
16.18       3       .45      19.6799
18.20       4       .60      23.4035
20.21       6       .90       5.0599
21.22       2       .30       5.2299
22.23       4       .60       5.0000
1.3         4       .60      23.4035
3.4         4       .60      17.1105
4.5         2       .30      17.7828
5.6         4       .60       4.9480
6.8         2       .30       4.8986
7.18        2       .30      23.4035
8.16        5       .75       5.0458
10.11       5       .75      10.0000
10.16       5       .75       5.1335
11.12       6       .90       4.9088
12.13       3       .45      25.9002
14.15       5       .75       5.1275
15.19       4       .60      15.6508
16.17       2       .30       5.2299
17.19       2       .30       4.8240
19.20       4       .60       5.0026
20.22       5       .75       5.0757
21.24       3       .45       4.8854
23.24       2       .30       5.0785 ;

arc_cost(i,j,param) $= arc_cost(j,i,param);  ! mirror the values
option arc_cost:4; display arc_cost;         ! check values

parameter ca(i,j), cb(i,j), ck(i,j);
ca(i,j) = arc_cost(i,j,"a");
cb(i,j) = arc_cost(i,j,"b");
ck(i,j) = arc_cost(i,j,"k");

table trip(i,j)  symmetric trip matrix from i to j
  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
1 0  1  1  5  2  3  5  8  5 13  5  2  5  3  5  5  4  1  3  3  1  4  3  1
2    0  1  2  1  4  2  4  2  6  2  1  3  1  1  4  2  0  1  1  0  1  0  0
3       0  2  1  3  1  2  1  3  3  2  1  1  1  2  1  0  0  0  0  1  1  0
4          0  5  4  4  7  7 12 14  6  6  5  5  8  5  1  2  3  2  4  5  2
5             0  2  2  5  8 10  5  2  2  1  2  5  2  0  1  1  1  2  1  0
6                0  4  8  4  8  4  2  2  1  2  9  5  1  2  3  1  2  1  1
7                   0 10  6 19  5  7  4  2  5 14 10  2  4  5  2  5  2  1
8                      0  8 16  8  6  6  4  6 22 14  3  7  9  4  5  3  2
9                         0 28 14  6  6  6  9 14  9  2  4  6  3  7  5  2
10                           0 40 20 19 21 40 44 39  7 18 25 12 26 18  8
11                              0 14 10 16 14 14 10  1  4  6  4 11 13  6
12                                 0 13  7  7  7  6  2  3  4  3  7  7  5
13                                    0  6  7  6  5  1  3  6  6 13  8  8
14                                       0 13  7  7  1  3  5  4 12 11  4
15                                          0 12 15  2  8 11  8 26 10  4
16                                             0 28  5 13 16  6 12  5  3
17                                                0  6 17 17  6 17  6  3
18                                                   0  3  4  1  3  1  0
19                                                      0 12  4 12  3  1
20                                                         0 12 24  7  4
21                                                            0 18  7  5
22                                                               0 21 11
23                                                                  0  7
24                                                                     0 ;

trip(i,j) $= trip(j,i);        !  mirror the values
trip(i,j)  = trip(i,j)*0.11;   !  get it back to original values
option trip:2; display trip;   !  has to match the values in the article

a(i,j) = ca(i,j);              !  identify arcs using flow cost parameter a
display a;
$stitle Bound Definitions and Solutions

t.fx(i,i)      = 0;
v.lo(a)        = ca(a);
y.fx(a(i,j),i) = 0;

option domlim=100000;
pnlp.workfactor=3;

parameter rep(i,k,*) summary report;

solve mcp  using mcp;                    rep(i,j,'mcp   ') =  t.l(i,j);
solve pnlp using nlp minimizing objpnlp; rep(i,j,'primal') =  balance.m(i,j);
solve dnlp using nlp maximizing objdnlp; rep(i,j,'dual  ') =  t.l(i,j);

display rep;
