option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Haverly's pooling problem example (HAVERLY,SEQ=214)
$ontext

   Haverly's pooling problem example. This is a non-convex problem.
   Setting initial levels for the nonlinear variables is a good
   approach to find the global optimum.


Haverly, C A, Studies of the Behavior of Recursion for the Pooling
Problem. ACM SIGMAP Bull 25 (1978), 29-32.

Adhya, N, Tawaralani, M, and Sahinidis, N, A Lagrangian Approach to
the Pooling Problem. Independent Engineering Chemical Research 38
(1999), 1956-1972.


----- crudeA ------/--- pool --|
                  /            |--- finalX
----- crudeB ----/             |
                               |--- finalY
----- crudeC ------------------|

$offtext

sets s supplies (crudes) / crudeA, crudeB, crudeC /
     f final products    / finalX, finalY /
     i intermediate sources for final products / Pool, CrudeC /
     poolin(s) crudes going into pool tank / crudeA, crudeB /

table data_S(s,*) supply data summary

         price  sulfur
crudeA     6     3
crudeB    16     1
crudeC    10     2

table data_f(f,*) final product data

         price  sulfur demand
finalX     9     2.5    100
finalY    15     1.5    200

parameters sulfur_content(s) supply quality in (percent)
           req_sulfur(f)     required max sulfur content (percentage)
           demand(f)         final product demand;

sulfur_content(s) = data_S(s,'sulfur');
req_sulfur(f)     = data_F(f,'sulfur');
demand(f)         = data_F(f,'demand');

equations
   costdef       cost equation
   incomedef     income equation
   blend(f)      blending of final products
   poolbal       pool tank balance
   crudeCbal     balance for crudeC
   poolqualbal   pool quality balance
   blendqualbal  quality balance for blending
   profitdef     profit equation

positive variables
   crude(s)    amount of crudes being used
   stream(i,f) streams
   q           pool quality
variables
   profit      total profit
   cost        total costs
   income      total income
   final(f)    amount of final products sold;


profitdef.. profit =e= income - cost;

costdef..   cost   =e= sum(s, data_S(s,'price')*crude(s));

incomedef.. income =e= sum(f, data_F(f,'price')*final(f));

blend(f)..  final(f) =e=  sum(i, stream(i,f));

poolbal..   sum(poolin, crude(poolin)) =e= sum(f, stream('pool',f));

crudeCbal.. crude('crudeC') =e= sum(f, stream('crudeC',f));

poolqualbal.. q*sum(f, stream('pool', f)) =e=
                   sum(poolin, sulfur_content(poolin)*crude(poolin));

blendqualbal(f)..
            q*stream('pool',f) + sulfur_content('CrudeC')*stream('CrudeC',f)
                     =l=  req_sulfur(f)*sum(i,stream(i,f));

final.up(f) = demand(f);

model m /all/;

* Because of the product terms, some local solver may get
* trapped at 0*0, we therefore set an initial value for q.
q.l=1;

solve m maximizing profit using nlp;
