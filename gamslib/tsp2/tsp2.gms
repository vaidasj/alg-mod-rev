option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Traveling Salesman Problem - Two (TSP2,SEQ=178)
$eolcom //
$Ontext
 This is the second problem in a series of traveling salesman
 problems. The formulation in this model uses subtour elimination
 constraints of the form

        u(i)-u(j)+n*x(i,j) <= n-1

 Additional information can be found at:

 http://www.gams.com/modlib/adddocs/tsp2doc.htm


Kalvelagen, E, Model Building with GAMS. forthcoming

de Wetering, A V, private communication.

$Offtext

$include br17.inc

set ij(ii,jj) exclude first row and column; ij(ii,jj) = ord(ii)>1 and ord(jj)>1;

variable u(ii) subtour elimination strategy 3

equation se(ii,jj) subtour elimination constraints;

se(ij(i,j)).. u(i) - u(j) + card(i)*x(i,j) =l= card(i) - 1;

model tsp / objective, rowsum, colsum, se /;

* Try a small problem first - first six cities
i(ii) = ord(ii) <= 6;

option optcr=0.05;
solve tsp min z using mip; display x.l;

* Try a bit larger problem - 10 cities
i(ii) = ord(ii) <= 10;

option limcol=0,limrow=0;
solve tsp min z using mip;

