option LP=convert;
option LP=convert;
option LP=convert;
$Title The shortest route problem (SROUTE,SEQ=6)

$Ontext

The problem is to find the shortest route or lowest transport
cost from each city to all others.


Dantzig, G B, Chapter 17.3. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

 Set  i  cities  / boston, chicago, dallas, kansas-cty, losangeles
                   memphis, portland, salt-lake, wash-dc           /
      r(i,i) routes

 Alias(i,ip,ipp)

 Parameter uarc(i,ip) undirected arcs  /

    boston  .chicago      58,     kansas-cty .memphis       27
    boston  .wash-dc      25,     kansas-cty .salt-lake     66
    chicago .kansas-cty   29,     kansas-cty .wash-dc       62
    chicago .memphis      32,     losangeles .portland      58
    chicago .portland    130,     losangeles .salt-lake     43
    chicago .salt-lake    85,     memphis    .wash-dc       53
    dallas  .kansas-cty   29,     portland   .salt-lake     48
    dallas  .losangeles   85
    dallas  .memphis      28
    dallas  .salt-lake    75    /

 Parameters darc(i,ip)  directed arcs
            orig(i,i)   origin mapping ;

   darc(i,ip) = max(uarc(i,ip),uarc(ip,i));
   r(i,ip)    = yes$darc(i,ip);
   orig(i,i)  = 1 ;

 Display darc, orig;

 Variables x(i,ip,ipp)  arcs taken
           cost         total cost or length

 Positive Variable x;

 Equations nb(i,ip)  node balance
           cd        cost definition ;

nb(i,ip)$(not orig(i,ip))..

 sum(ipp$darc(ipp,ip), x(i,ipp,ip)) =g= sum(ipp$darc(ip,ipp), x(i,ip,ipp)) + 1;

cd.. cost =e= sum((i,ip,ipp), darc(ip,ipp)*x(i,ip,ipp));

Model route shortest route / all /; Solve route minimizing cost using lp;

Parameter sroute(i,ip); sroute(i,ip) = -nb.m(i,ip); display sroute;
