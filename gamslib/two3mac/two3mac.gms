option MCP=convert;
option MCP=convert;
option MCP=convert;
$stitle Simple 2 x 2 x 2 General Equilibrium Model Using Macros (TWO3MAC,SEQ=341)

$ontext
This is the TWO3MCP model written using macros. The documentation
of GAMS-F uses this model as example 7.

Reference:  Shoven and Whalley: "Applied G.E. Models"
            Journal of Economic Literature, XXII (1984)
$offtext

sets
        f  factors    /labor, capital/
        s  sectors    /mfrs,  nonmfrs/
        h  households /rich,  poor/;

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

$macro PF(f,s)    (W[f]*(1+t[f,s]))
$macro COST(s)     sum{f.local, delta[f,s]**sigma[s]*PF(f,s)**(1-sigma[s])}**(1/(1-sigma[s]))/phi[s]
$macro FD(f,s)    (delta[f,s]*COST(s)/PF(f,s))**sigma[s]
$macro TAX(s)      sum{f.local, t[f,s]*W[f]*Y[s]*FD(f,s)}
$macro INCOME(h)  (sum{f, e[f,h]*W[f]} + tshr[h]*sum{s.local, TAX(s)})
$macro D(s,h)      INCOME(h)*alpha[s,h]*sum{s.local, alpha[s,h]*P[s]**(sigmac[h]-1)}*P[s]**(-sigmac[h])

positive
variables
        W(f)    factor price,
        P(s)    commodity price,
        Y(s)    production level;



equations
        fmkt(f)         factor market,
        cmkt(s)         commodity market,
        profit(s)       zero profit;

*       Factor supply (endowments) equals factor demand:

fmkt(f)..       sum(h, e(f,h)) =g= sum(s, FD(f,s)*Y(s));

*       Commodity output equals commodity demand:

cmkt(s)..       Y(s) =g= sum(h, D(s,h));

*       Unit cost equals market price:

profit(s)..  COST(s) =g= P(s);

parameter DL(s,h);


model jel / fmkt.W, cmkt.P, profit.Y/;

*       compute solution for this dimension problem:

W.lo(f) = 0.0001;
P.lo(s) = 0.0001;

W.l(f) = 1;
P.l(s) = 1;
Y.l(s) = 10;

*       solve the reference case:

W.fx("labor") = 1;
solve jel using mcp;

$onDotL

dl(s,h) = d(s,h); display dl;

*       apply tax in test problem:
tshr("rich") = 0.4;
tshr("poor") = 1 - tshr("rich");
t("capital","mfrs") = 0.5;
solve jel using mcp;

dl(s,h) = d(s,h); display dl;

