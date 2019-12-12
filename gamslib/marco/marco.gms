option LP=convert;
option LP=convert;
option LP=convert;
$Title Mini Oil Refinery Model    (MARCO,SEQ=32)

$Ontext

This model describes the scheduling problem of a small
owner operated refinery.


Kendrick, D, Meeraus, A, and Suh, J S, Oil Refinery Modeling with the
GAMS language. Tech. rep., Center of Energy Studies, University of
Texas, 1981.

Aronofsky, J S, Dutton, J M, and Tayyabkhan, M T, Managerial Planning
with Linear Programming. John Wiley and Sons, New York, 1978.

$Offtext

 Sets c   all commodities / crude       crude oil (any)
                            butane      purchased butane
                            mid-c       mid continent crude
                            w-tex       west texas crude

                            sr-gas      straight-run gasoline
                            sr-naphtha  straight-run naphtha
                            sr-dist     straight-run distillate
                            sr-gas-oil  straight-run gas oil
                            sr-res      straight-run residuum
                            rf-gas      reformed gasoline
                            fuel-gas
                            cc-gas      cracked gasoline
                            cc-gas-oil  cracked gas oil
                            hydro-res   hydrotreated residuum
                            premium     premium gasoline
                            regular     regular gasoline
                            distillate
                            fuel-oil    blended fuel oil /

      cf(c) final product / premium, regular, distillate, fuel-oil, fuel-gas /

      cr(c)  crude oils   / mid-c, w-tex /

      ci(c) intermediates / butane, sr-gas, sr-naphtha, sr-dist, sr-gas-oil, sr-res, rf-gas
                            fuel-gas, cc-gas, cc-gas-oil, hydro-res  /

      cd(ci) domestic products / butane /

      p   processes       / a-dist      atmospheric distillation
                            n-reform    naphtha reforming
                            cc-dist     catalytic cracking of distillates
                            cc-gas-oil  catalytic cracking of gas oil
                            hydro       hydrotreating of residuum /

      m   productive units/ a-still     atmospheric distillation
                            reformer
                            c-crack     catalytic cracker
                            hydro       hydrotreater             /

$Stitle technology and cost data

 Table a(cr,c,p)  input output coefficients

                   a-dist  n-reform  cc-dist  cc-gas-oil  hydro
 mid-c.crude       -1.0
 mid-c.sr-gas        .236
 mid-c.sr-naphtha    .223  -1.0
 mid-c.sr-dist       .087            -1.0
 mid-c.sr-gas-oil    .111                     -1.0
 mid-c.sr-res        .315
 mid-c.rf-gas                .807
 mid-c.fuel-gas      .029    .129      .30      .31
 mid-c.cc-gas                          .59      .59
 mid-c.cc-gas-oil                      .21      .22

 w-tex.crude       -1.0
 w-tex.sr-gas        .180
 w-tex.sr-naphtha    .196  -1.0
 w-tex.sr-dist       .073            -1.0
 w-tex.sr-gas-oil    .091                     -1.0
 w-tex.sr-res        .443                                 -1.0
 w-tex.rf-gas                .836
 w-tex.fuel-gas      .017    .099      .36      .38
 w-tex.cc-gas                          .58      .60
 w-tex.cc-gas-oil                      .15      .15
 w-tex.hydro-res                                            .97


 Table  b(m,p)  capacity utilization

             a-dist  n-reform  cc-dist  cc-gas-oil
 a-still      1.0
 reformer             1.0
 c-crack                        1.0      1.0

 Parameters

   k(m)   initial capacity (1000 bpd)        / a-still    100,  reformer   20,  c-crack   30 /
   pd(cd) prices of domestic products ($ pb) / butane  6.75 /
   pr(cr) prices of crude oils ($ pb)        / mid-c   7.50, w-tex   6.50 /
   pf(cf) prices of final products ($ pb)    / premium 10.5, regular 9.1, distillate 7.7, fuel-gas 1.5, fuel-oil 6.65 /
   ur(cr) upper bnd on crude oil (1000 bpd)  / (mid-c,w-tex)  200 /
   op(p)  operating cost ($ pb)              / a-dist  .1, n-reform  .15, cc-dist  .8, cc-gas-oil  .08, hydro  .1 /

$Stitle blending data

 Sets lim  upper and lower limits / lower, upper /

      bp(cf,ci)  blending possibility  /

                    (premium, regular).(butane, sr-gas, rf-gas, cc-gas, sr-naphtha)
                     distillate.(      sr-dist, sr-naphtha, sr-gas-oil, cc-gas-oil)
                     fuel-oil.(        sr-gas-oil, sr-res, cc-gas-oil, hydro-res )
                     fuel-gas.(        fuel-gas )   /

      q  quality attributes / octane   octane level
                              vapor-pr vapor pressure
                              density
                              sulfur   sulfur content  /

 Table  qs(lim,cf,q)  product quality specifications

                    octane  vapor-pr  density  sulfur
 lower.premium       90
 lower.regular       86
 upper.premium               12.7
 upper.regular               12.7
 upper.distillate                      306      0.5
 upper.fuel-oil                        352      3.5

 Table  at(ci,q)  attributes for blending

              octane   vapor-pr
 sr-gas        78.5     18.4
 sr-naphtha    65.0      6.54
 rf-gas       104.0      2.57
 cc-gas        93.7      6.9
 butane        91.8    199.2


 Table atc(cr,ci,q)  attributes for blending by crude

                    density   sulfur
 mid-c.sr-naphtha    272.0      .283
 mid-c.sr-dist       292.0      .526
 mid-c.sr-gas-oil    295.0      .980
 mid-c.cc-gas-oil    294.4      .353
 mid-c.sr-res        343.0     4.7
 w-tex.sr-naphtha    272.0     1.48
 w-tex.sr-dist       297.6     2.83
 w-tex.sr-gas-oil    303.3     5.05
 w-tex.sr-res        365.0    11.00
 w-tex.cc-gas-oil    299.1     1.31
 w-tex.hydro-res     365.0     6.00

 Display atc; atc(cr,ci,q)$at(ci,q) = at(ci,q); Display atc;

$Stitle model specification

 Variables  z(cr,p)     process level
            x(cf)       final sales
            u(cr)       purchase of crude oil
            ui(cr,ci)   purchases of intermediate materials
            w(cr,ci,cf) blending process level

            phi         total income
            phir        revenue from final product sales
            phip        input material cost
            phiw        operating cost

 Positive Variables z, x, u, ui, w;

 Equations  mb(cr,ci)   material balances for intermediates
            mbr(cr)     material balances for crudes
            cc(m)       capacity constraint
            lcp(cr)     limits on crude oil purchases
            bb(cf)      blending balance
            qlb(cf,q)   quality constraints lower bounds
            qub(cf,q)   quality constraints upper bounds

            aprof       profit accounting
            arev        revenue accounting
            amat        material cost accounting
            aoper       operating cost accounting;

$Double

 mbr(cr)..   sum(p, a(cr,"crude",p)*z(cr,p)) + u(cr) =g= 0 ;
 mb(cr,ci).. sum(p, a(cr,ci,p)*z(cr,p)) + ui(cr,ci)$cd(ci) =g= sum(cf$bp(cf,ci), w(cr,ci,cf));
 cc(m)..     sum(p, b(m,p)*sum(cr,z(cr,p))) =l= k(m) ;
 lcp(cr)..   u(cr) =l= ur(cr);
 bb(cf) ..   x(cf) =e= sum((cr,ci)$bp(cf,ci), w(cr,ci,cf)) ;
 qlb(cf,q)$qs("lower",cf,q)..  sum((cr,bp(cf,ci)), atc(cr,ci,q)*w(cr,ci,cf)) =g= qs("lower",cf,q)*x(cf);
 qub(cf,q)$qs("upper",cf,q)..  sum((cr,bp(cf,ci)), atc(cr,ci,q)*w(cr,ci,cf)) =l= qs("upper",cf,q)*x(cf);

 arev ..     phir =e= sum(cf, pf(cf)*x(cf)) ;
 amat ..     phip =e= sum(cr,pr(cr)*u(cr))+sum((cd,cr),pd(cd)*ui(cr,cd));
 aoper..     phiw =e= sum(p,op(p)*sum(cr, z(cr,p))) ;
 aprof..     phi  =e= phir - phip - phiw ;

$Single

 Model oil marco oil refinery model / all /

 Solve oil using lp maximizing phi; Display z.l, w.l, x.l, u.l;

 qs("upper","fuel-oil","sulfur") = 3.4;
 Solve oil using lp maximizing phi; Display z.l, w.l, x.l, u.l;
