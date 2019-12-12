option MCP=convert;
option MCP=convert;
option MCP=convert;
$title  Multi-Region Growth Model Based on Global 2100 (MR5MCP,SEQ=134)
$Ontext

  This multi-region growth model used data from the Global 2100
  model used to analyze the economic cost of carbon dioxide emissions.


Manne, A S, and Richels, R, Buying Greenhouse Insurance - the Economic
Cost of Dioxide Emission Limits. MIT Press Cambridge, 1992.

$Offtext


set   tp /t0*t11/;

set     iter    iterations      /it1*it10/;

scalar  dev     current deviation (%),
        contol  convergence tolerance (%) /0.001/;


scalar  ny      number of years per period
        nyb2    ny over 2;
        ny = 110 / (card(tp)-1);
        nyb2 = ny/2;

sets    rg              regions /usa, ooecd, ussr, china, row/,
        tlast(tp)       last projection year,
        tbase(tp)       base year,
        tfirst(tp)      first projection year,
        tnext(tp,tp)    subsequent period indicator,
        pp(tp)          projection period;

alias (t,tp), (r,rg);
parameter nper(tp);  nper(t) = ord(t);
tnext(t,t+1) = yes;
tbase(t)  = yes$(ord(t) eq 1);
tfirst(t) = yes$(ord(t) eq 2);
tlast(t)  = yes$(ord(t) eq card(t));
pp(t)     = yes$(not tbase(t));

*       read the global 2100 data:

table macro(*, rg)  macroeconomic and other parameters

               usa      ooecd      ussr     china     row

gdp           5.6       10.2       2.68      1.1      3.34
kgdp          2.4        2.8       3.0       3.0      3.0
depr          5.00       5.00      5.00      5.00     5.00
kpvs          0.24       0.28      0.30      0.30     0.30

$ontext

gdp     initial gdp ($ trillions)
kgdp    initial capital-gdp ratio
depr    annual percent depreciation
kpvs    capital value share parameter

$offtext

set decade /1990,2000,2010,2020,2030,2040,2050,2060,2070,2080,2090,2100/;
parameter weight(decade,tp);

table grow(*, *)  potential gdp growth rates - annual percent

                usa     ooecd   ussr    china   row


   1990         2.50     2.70    2.50    4.50   3.75
   2000         2.00     2.00    2.00    4.00   3.30
   2010         2.00     2.00    2.00    4.00   3.30
   2020         1.75     1.75    1.75    3.75   3.05
   2030         1.50     1.50    1.50    3.50   2.80
   2040         1.50     1.50    1.50    3.50   2.80
   2050         1.25     1.25    1.25    3.25   2.55
   2060         1.25     1.25    1.25    3.25   2.55
   2070         1.125    1.125   1.125   3.125  2.425
   2080         1.00     1.00    1.00    3.00   2.30
   2090         1.00     1.00    1.00    3.00   2.30
   2100         1.00     1.00    1.00    3.00   2.30;

*       convert growth rates from dates to time periods:

        grow(tp,"year") = 1990 + 110 * (ord(tp)-1)/(card(tp)-1);
        weight(decade,tp) = abs(grow(tp,"year") -
                            (1990 + 10 * (ord(decade)-1)));
        weight(decade,tp) = ((10 - weight(decade,tp))/10
                             )$(weight(decade,tp) le 10);
        grow(tp,rg) = sum(decade, weight(decade,tp)*grow(decade,rg));
        grow(decade,rg) = 0;
        display grow;

parameter
        udr(rg,tp)      utility discount rate
        kpvs(rg)        capital value share
        kgdp(rg)        capital-gdp ratio
        depr(rg)        depreciation rate
        k0(rg)          initial capital
        rk0(rg)         benchmark capital rental price
        l0(rg)          initial labor
        y0(rg)          initial gdp
        i0(rg)          initial investment
        c0(rg)          initial consumption,
        wb(rg)          baseline welfare index,
        ksrv(rg)        n-year capital survival factor
        udf(rg,t)       utility discount factor - period t
        l(rg,t)         labor supply quantity,
        qref(t,rg)      reference (balanced growth) quantity path
        pref(t,rg)      reference (steady state) price path
        pkbar(rg)       steady-state rate of return;

        depr(rg) = macro("depr",rg)/100;
        kpvs(rg) = macro("kpvs",rg);
        y0(rg)   = macro("gdp",rg);
        kgdp(rg) = macro("kgdp",rg);
        k0(rg)   = kgdp(rg) * y0(rg);

*       convert growth rates from percentages to fractions:

        grow(t,rg) = grow(t,rg) / 100;
        ksrv(rg) = 1/(1+depr(rg))**ny;
        l0(rg) = y0(rg) - kpvs(rg) * y0(rg);
        qref(tbase,rg) = 1;
        loop(t, qref(t+1,rg) = qref(t,rg) * (1 + grow(t,rg))**ny;);
        rk0(rg) = kpvs(rg) / kgdp(rg);
        udr(rg,t) = rk0(rg) - depr(rg) - grow(t,rg);
        pref(tbase,rg) = 1;
        pref(tfirst,rg) = 1;
        loop(t$(ord(t) gt 1),
          pref(t+1,rg) = pref(t,rg) /((1+udr(rg,t))*(1+grow(t,rg)))**ny );
        display pref, qref;

        l(rg,pp)   = l0(rg) * qref(pp,rg);
        loop(tbase, i0(rg) = k0(rg)*(grow(tbase,rg)+depr(rg)); );
        c0(rg) = y0(rg) - i0(rg);
        wb(rg) = c0(rg)*sum(pp, pref(pp,"usa")*qref(pp,rg));

*       compute the utility discount factor:

        udf(rg,tbase) = 1;
        loop(t,   udf(rg,t+1)  = udf(rg,t) /(1+udr(rg,t))**ny; );
        udf(rg,tlast) = udf(rg,tlast) / (1-1/(1+udr(rg,tlast))**ny);
        udf(rg,t) = udf(rg,t) / sum(pp, udf(rg,pp));
        display udr, udf;

parameter wage, rent, income;
        wage(pp,rg) = pref(pp,rg);
        rent(pp,rg) = rk0(rg) * pref(pp,rg);
        income(rg) =    sum(pp, wage(pp,rg) * l(rg,pp)) +
                sum(tfirst, rent(tfirst,rg) * (k0(rg)+nyb2*i0(rg))*ksrv(rg));


positive
variables       y(rg,t)         new vintage production
                inv(rg,t)       investment
                k(rg,t)         capital stock
                p(t)            future price
                ptc(rg,t)       terminal capital price
                w(rg,t)         wage rate
                pk(rg,t)        capital return
                rk(rg,t)        rental price on capital
                i(rg)           income;

equations       mkt_c(t)        output balance,
                capstk(rg,t)    capital stock,
                mkt_k(rg,t)     capital use,
                mkt_l(rg,t)     labor supply,
                tc(rg,t)        terminal investment,
                prf_y(rg,t)     producer profit,
                prf_i(rg,t)     investment profit,
                prf_k(rg,t)     capital stock profit,
                incdef(rg)      income definition;

mkt_c(t)$pp(t)..
                sum(rg, y(rg,t)) =g=
                sum(rg, udf(rg,t)*i(rg)/p(t) + inv(rg,t));

capstk(rg,t)$pp(t)..
                nyb2 * inv(rg,t) + nyb2 * ksrv(rg) * inv(rg,t-1) =g=
                k(rg,t) - k(rg,t-1)*ksrv(rg);

mkt_k(rg,t)$pp(t)..
                k(rg,t) =g= (y(rg,t)/y0(rg)) * k0(rg) *
                (w(rg,t)/pref(t,rg))**(1-kpvs(rg)) *
                (rk(rg,t)/(rk0(rg)*pref(t,rg)))**kpvs(rg)
                /(rk(rg,t)/(rk0(rg)*pref(t,rg)));

mkt_l(rg,t)$pp(t)..
                l(rg,t) =g= (y(rg,t)/y0(rg)) * l0(rg) *
                (w(rg,t)/pref(t,rg))**(1-kpvs(rg)) *
                (rk(rg,t)/(rk0(rg)*pref(t,rg)))**kpvs(rg)
                /(w(rg,t)/pref(t,rg));

tc(rg,t)$tlast(t)..

                inv(rg,t) =g= k(rg,t) * (grow(t,rg) + depr(rg));

prf_y(rg,t)$pp(t)..
                (1-kpvs(rg)) * log(w(rg,t)/pref(t,rg)) +
                kpvs(rg) * log(rk(rg,t)/(rk0(rg)*pref(t,rg)))
                 =g= log(p(t)/pref(t,rg));

prf_i(rg,t)$pp(t)..
                p(t) =g= nyb2*pk(rg,t) + nyb2*ksrv(rg)*pk(rg,t+1)
                                + ptc(rg,t)$tlast(t);

prf_k(rg,t)$pp(t)..

                pk(rg,t) + (ptc(rg,t)*(grow(t,rg)+depr(rg)))$tlast(t)
                        =g= rk(rg,t) + ksrv(rg) * pk(rg,t+1);

incdef(rg)..
                i(rg) =g=
                sum(pp, w(rg,pp) * l(rg,pp)) +
                sum(tfirst, (nyb2*i0(rg) + k0(rg)) * ksrv(rg) * pk(rg,tfirst));

model mrg /     mkt_c.p, capstk.pk, mkt_k.rk, mkt_l.w, tc.ptc,
                prf_y.y, prf_i.inv, prf_k.k, incdef.i /;

*       work on the full horizon model:

        tlast(t)  = yes$(ord(t) eq card(t));
        pp(t) = yes$(not tbase(t));

*       install bounds to avoid bad function calls:

  p.lo(t)       = 0.0001 * pref(t,"usa");
  rk.lo(rg,t)   = 0.0001 * rk0(rg) * pref(t,rg);
  w.lo(rg,t)    = 0.0001 * pref(t,rg);

*       install some scale factors:

  y.scale(rg,pp)   = y0(rg) * qref(pp,rg);
  inv.scale(rg,pp) = i0(rg) * qref(pp,rg);
  k.scale(rg,pp)   = k0(rg) * qref(pp,rg);
  p.scale(t)       = pref(t,"usa");
  ptc.scale(rg,tlast) = pref(tlast,rg);
  w.scale(rg,t)  = pref(t,rg);
  pk.scale(rg,t) = pref(t,rg);
  rk.scale(rg,t) = rk0(rg)*pref(t,rg);
  i.scale(rg)    = income(rg);
  mrg.scaleopt = 1;

*       install default starting point:

  y.l(rg,pp)   = qref(pp,rg) * y0(rg);
  inv.l(rg,pp) = qref(pp,rg) * i0(rg);
  k.l(rg,pp)   = qref(pp,rg) * k0(rg);
  p.l(pp)      = pref(pp,"usa");
  ptc.l(rg,tlast) = pref(tlast,rg);
  w.l(rg,pp)   = pref(pp,rg);
  pk.l(rg,pp)  = pref(pp,rg);
  rk.l(rg,pp)  = rk0(rg) * pref(pp,rg);
  i.l(rg)      = income(rg);

  inv.fx(rg,tbase) = i0(rg);
  k.fx(rg,tbase)   = k0(rg);

*       fix one income level to normalize the price system:

  i.fx(rg)$(ord(rg) eq 1) = income(rg);

  solve mrg using mcp;

