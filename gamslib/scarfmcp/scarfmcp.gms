option MCP=convert;
option MCP=convert;
option MCP=convert;
$title  Scarf's Activity Analysis Example (SCARFMCP,SEQ=132)
$Ontext

Scarf's Activity Analysis Example


Scarf, H, and Hansen, T, The Computation of Economic Equilibria.
Yale University Press, 1973.

$Offtext

$include scarfdata.inc

positive
variables

        p(c)    commodity price,
        y(s)    production,
        i(h)    income;

equations
        mkt(c)          commodity market,
        profit(s)       zero profit,
        income(h)       income index;

*       distinguish ces and cobb-douglas demand functions:

mkt(c)..        sum(s, a(c,s) * y(s)) + sum(h, e(c,h)) =g=

                sum(h$(esub(h) ne 1),
                (i(h)/sum(cc, alpha(cc,h) * p(cc)**(1-esub(h)))) *
                alpha(c,h) * (1/p(c))**esub(h)) +

                sum(h$(esub(h) eq 1),
                i(h) * alpha(c,h) / p(c));

profit(s)..     -sum(c, a(c,s) * p(c)) =g= 0;

income(h)..     i(h) =g= sum(c, p(c) * e(c,h));

model scarf / mkt.p, profit.y, income.i/;

p.l(c) = 1;
y.l(s) = 1;
i.l(h) = sum(c, p.l(c) * e(c,h));

p.lo(c)  = 0.00001$(smax(h, alpha(c,h)) gt eps);

*       fix the price of numeraire commodity:

i.fx(h)$(ord(h) eq 1) = i.l(h);

solve scarf using mcp;


