option MCP=convert;
option MCP=convert;
option MCP=convert;
$title Simple 2 x 2 x 2 General Equilibrium Model (TWO3MCP,SEQ=131)

$ontext
Simple 2 x 2 x 2 General Equilibrium Model

Shoven, J, and Whalley, J, Applied G.E. Models. Journal of Economic
Literature 22 (1984).
$offtext

sets
        f  factors    /labor, capital/
        s  sectors    /mfrs,  nonmfrs/
        h  households /rich,  poor/;

alias (s,ss), (f,ff);
*
*       demand function parameters.
*
parameter sigmac(h)
       / rich    1.5 ,  poor    0.75/;

table alpha(s,h)
                rich    poor
        mfrs    0.5     0.3
        nonmfrs 0.5     0.7;

table e(f,h)
                rich    poor
        labor             60
        capital   25
*
*       production function parameters.
*
parameter phi(s)
        / mfrs 1.5,  nonmfrs 2.0 /;

table delta(f,s)        factor share coefficients
                        mfrs    nonmfrs
        labor           0.6     0.7
        capital         0.4     0.3;

parameter sigma(s)      elasticities of factor substitution
      /  mfrs 2.0,   nonmfrs 0.5/;

parameter       tshr(h) share of tax revenue,
                t(f,s)  ad-valorem tax rates;

tshr(h) = 0;
t(f,s) = 0;

positive
variables
        W(f)    factor price,
        P(s)    commodity price,
        Y(s)    production level,
        I(h)    income;

equations
        fmkt(f)         factor market,
        cmkt(s)         commodity market,
        profit(s)       zero profit,
        income(h)       income equation;

fmkt(f)..       sum(h, e(f,h)) =g=
                sum(s, Y(s) * phi(s)**(sigma(s)-1) *
                (delta(f,s) * (sum(ff, delta(ff,s)**sigma(s) *
                (W(ff)*(1 + t(ff,s)))**(1 - sigma(s)))
                **(1/(1-sigma(s)))/phi(s))
                / (W(f) * (1 + t(f,s))))**sigma(s));

cmkt(s)..       Y(s) =g= sum(h,
                (i(h)/sum(ss, alpha(ss,h) * P(ss)**(1-sigmac(h)))) *
                alpha(s,h) * (1 /P(s))**sigmac(h));

profit(s)..     sum(f, delta(f,s)**sigma(s) *
                (W(f)*(1 + t(f,s)))**(1 - sigma(s)))**(1/(1-sigma(s)))/phi(s)
                =g= P(s);

income(h)..     I(h) =g= sum(f, E(f,h) * W(f)) + tshr(h) *
                sum((s,f), t(f,s) * W(f) * Y(s) * phi(s)**(sigma(s)-1) *
                (delta(f,s) * (sum(ff, delta(ff,s)**sigma(s) *
                (W(ff)*(1 + t(ff,s)))**(1 - sigma(s)))
                **(1/(1-sigma(s)))/phi(s))/(W(f) * (1 + t(f,s))))**sigma(s));

model jel / fmkt.W, cmkt.P, profit.Y, income.I/;

*       compute solution for this dimension problem:

W.lo(f) = 0.0001;
P.lo(s) = 0.0001;

W.l(f) = 1;
P.l(s) = 1;
Y.l(s) = 10;
I.l(h) = sum(f, W.l(f) * E(f,h));

*       solve the reference case:

W.fx("labor") = 1;
solve jel using mcp;

*       apply tax in test problem:
tshr("rich") = 0.4;
tshr("poor") = 1 - tshr("rich");
t("capital","mfrs") = 0.5;
solve jel using mcp;
