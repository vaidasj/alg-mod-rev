option LP=convert;
option LP=convert;
option LP=convert;
$Title Simple Warehouse Problem (WHOUSE,SEQ=4)

$Ontext

A warehouse can store limited units of a commodity. Given an
initial stock, the manager has to decide when to buy or sell in
order to minimize total cost.


Dantzig, G B, Chapter 3.6. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

Set t  time in quarters / q-1 * q-4 /

Parameters
   price(t)  selling price ($ per unit) / q-1 10, q-2 12, q-3 8, q-4 9 /
   istock(t) initial stock (units)      / q-1 50 /

Scalars
   storecost storage cost ($ per quarter per unit)   /  1 /
   storecap  stocking capacity of warehouse (units) / 100 /

Variables
   stock(t)    stock stored at time t     (units)
   sell(t)     stock sold at time t       (units)
   buy(t)      stock bought at time t     (units)
   cost        total cost                   ( $ )

Positive Variables stock,sell,buy

Equations
   sb(t)       stock balance at time t    (units)
   at          accounting: total cost       ( $ );

sb(t)..    stock(t) =e= stock(t-1) + buy(t) - sell(t) + istock(t);

at..  cost =e= sum(t, price(t)*(buy(t)-sell(t)) + storecost*stock(t));

stock.up(t) = storecap;

Model swp simple warehouse problem / all /;

Solve swp minimizing cost using lp;
