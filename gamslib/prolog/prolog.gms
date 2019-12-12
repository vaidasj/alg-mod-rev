option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Market Equilibrium and Activity Analysis  (PROLOG,SEQ=41)

$Ontext

A nonlinear programming model is used to find the market
equilibrium for a model with activity analysis containing
multiple production technologies. The calibration or reconciliation
calculations are not shown in this version. In practice it may
be necessary to solve another nlp in order to find a consistent
initial point. Also, the shadow prices on commodity balances
and resource constraints are not always as reported in the reference.
only if some variables (and equations) are substituted out and
all constraints are set to =e= will the reported relationship hold.


Norton, R D, and Scandizzo, P L, Market Equilibrium Computations in
Activity Analysis Models. Operations Research 29, 2 (1981).

$Offtext

 Sets  i     commodities     / food, h-industry, l-industry /
       g(i)  goods demanded  / food, l-industry /
       k     resources       / labor, capital /
       h     households      / workers, enterpr /
       t     technologies    / tech-1, tech-2, tech-3 /

 Alias (i,j), (g,gp) ;

 Table  a(i,j)  input-output matrix

             food  h-industry  l-industry
 food        .060                 .244
 h-industry  .064       .420      .172
 l-industry  .048       .247      .084

 Table d(i,k,t)  resource technology matrix

             labor.tech-1  capital.tech-1  labor.tech-2  capital.tech-2  labor.tech-3  capital.tech-3
 food            1.0            2.0              1.2            1.8           .8           2.2
 h-industry      2.0            3.0              1.8            3.5          2.4           2.3
 l-industry      3.0            3.0              2.7            3.2          3.2           2.7

 Table  bb(h,k)  resource endowment and ownership

           labor  capital
 workers   .900     .100
 enterpr   .100     .900

 Table  x0(i,h)  initial consumption

            workers  enterpr
 food        352.0    430.0
 l-industry  222.0    292.0

 Parameters b(k)   total resource endowment  / labor = 3712, capital = 5000 /
            p0(i)  initial prices            / food = .5942, h-industry = 1.6167, l-industry = 1.31077 /
            y0(h)  initial income
            q0(i)  initial production
            r0     initial marginal product ;

 y0(h) = sum(g, x0(g,h)*p0(g));
 r0    = sum(h, y0(h))/sum(k, b(k));  display y0, r0;

$Stitle calibration of demand system and aggregation tests

 Parameters  gamma(g,h)   les parameter
             beta(g,h)    les parameter
             alpha(g,h)   budget shares
             al(g,h)      linear demand intercept
             cl(g,h)      income demand slope
             s(g,gp,h)    cross price demand slope
             an(g,h)      nonlinear demand constant
             eta(g,gp,h)  price elasticities


 Table epsi(i,h)  income elasticities

             workers  enterpr
 food          .8       .6
 l-industry   1.14     1.26

 Scalar  omega  money flexibility - frish / -2 / ;


  alpha(g,h) = p0(g)*x0(g,h)/y0(h);
  epsi(g,h)  = epsi(g,h)/sum(gp, epsi(gp,h)*alpha(gp,h));
  beta(g,h)  = epsi(g,h)*alpha(g,h);
  gamma(g,h) = x0(g,h) + beta(g,h)*y0(h)/p0(g)/omega;
  eta(g,gp,h) = -gamma(gp,h)*p0(gp)*beta(g,h)/p0(g)/x0(g,h);
  eta(g,g ,h) =  gamma(g ,h)*(1-beta(g,h))/x0(g,h) - 1;

 Display alpha, epsi, beta, gamma, eta;

  an(g,h) = x0(g,h)/prod(gp, p0(gp)**eta(g,gp,h))/y0(h)**epsi(g,h);
  cl(g,h) = epsi(g,h)*x0(g,h)/y0(h);
  s(g,gp,h) = eta(g,gp,h)*x0(g,h)/p0(gp);
  al(g,h) = x0(g,h) - sum(gp, s(g,gp,h)*p0(gp)) - cl(g,h)*y0(h);

 Display an, cl, s, al;

 Parameters etest(h)   engel aggregation test
            htest(g,h) homogeneity test
            ctest(g,h) cournot aggregation test ;

  etest(h) = sum(g, epsi(g,h)*alpha(g,h)) -1 ;
  htest(g,h) = sum(gp, eta(g,gp,h)) + epsi(g,h) ;
  ctest(g,h) = sum(gp, alpha(gp,h)*eta(gp,g,h)) + alpha(g,h) ;

 Display etest, htest, ctest;

$Stitle model definitions

 Variables  z      expenditure minus factor income
            p(i)   prices of goods
            x(i,h) quantities consumed
            r(k)   marginal product
            q(i,t) quantities produced
            y(h)   income

 Positive variables x, q, p, r, y;

 Equations  cb(i)    commodity balances
            rc(k)    resource constraint
            de(g,h)  demand - linear expenditure system
            dl(g,h)  demand - linear demand function
            dn(g,h)  demand - nonlinear demand function
            bc(h)    budget constraint
            id(h)    income definition
            mp(i,t)  marginal pricing condition
            zdef     objective definition ;

 cb(i)..   sum(h$g(i), x(i,h)) =l= sum(t, q(i,t) - sum(j, a(i,j)*q(j,t)));

 rc(k)..   sum((i,t), d(i,k,t)*q(i,t)) =l= b(k);

 de(g,h).. x(g,h) =l= gamma(g,h) + beta(g,h)*( y(h) - sum(gp, gamma(gp,h)*p(gp)) )/p(g);

 dl(g,h).. x(g,h) =l= al(g,h) + sum(gp, s(g,gp,h)*p(gp)) + cl(g,h)*y(h);

 dn(g,h).. x(g,h) =l= an(g,h)*prod(gp, p(gp)**eta(g,gp,h))*y(h)**epsi(g,h);

 bc(h)..   sum(g, x(g,h)*p(g)) =l= y(h);

 id(h)..   y(h) =l= sum(k, bb(h,k)*b(k)*r(k));

 mp(i,t).. p(i) =l= sum(j, a(j,i)*p(j)) + sum(k, d(i,k,t)*r(k));

 zdef..    z =e= sum((g,h), x(g,h)*p(g)) - sum(k, b(k)*r(k));

 Model nortone  eles version      / cb, rc, de, bc, id, mp, zdef /
       nortonl  linear version    / cb, rc, dl, bc, id, mp, zdef /
       nortonn  nonlinear version / cb, rc, dn, bc, id, mp, zdef / ;

 x.l(i,h) = x0(i,h); p.l(i) = p0(i); y.l(h) = y0(h); r.l(k) = r0;

*  lower bounds are placed on price to avoid the trivial solution p=0.

  p.lo(i) = .2;

 Parameters  wp(g)   weights for price index
             pi      price index
             yp      real income;

  wp(g) = sum(h, x0(g,h)*p0(g))/sum(h, y0(h)); display wp;

 Solve nortonl maximizing z using nlp;

  pi("linear")   = sum(g, wp(g)*p.l(g))/sum(g, wp(g)*p0(g));
  yp("linear")   = sum(h, y.l(h))/pi("linear");

  Display pi, yp;

 Solve nortone maximizing z using nlp;

  pi("les")   = sum(g, wp(g)*p.l(g))/sum(g, wp(g)*p0(g));
  yp("les")   = sum(h, y.l(h))/pi("les");

    Display pi, yp;

 Solve nortonn maximizing z using nlp;

  pi("nonlin")   = sum(g, wp(g)*p.l(g))/sum(g, wp(g)*p0(g));
  yp("nonlin")   = sum(h, y.l(h))/pi("nonlin");

    Display pi, yp;
