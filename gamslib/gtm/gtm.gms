option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title An International Gas Trade Model (GTM,SEQ=53)

$Ontext

   The Gas Trade Model (GTM) models interrelated gas markets.
   Prices may be free to move as to equilibrate supplies and
   demand. Disequilibria can be introduced with controls over
   prices and/or quantities traded.


Manne, A S, and Beltramo, M A, GTM: An International Gas Trade Model ,
International Energy Program Report. Stanford University, 1984.

$Offtext

 Sets i   supply regions  / mexico, alberta-bc, atlantic, appalacia, us-gulf, mid-cont, permian-b, rockies, pacific
                            alaska  /
      j   demand regions  / mexico, west-can, ont-quebec, atlantic, new-engl, ny-nj, mid-atl, south-atl, midwest
                            south-west, central, n-central, west, n-west /

      jfx(j) regions with fixed demand  / mexico, west-can, ont-quebec, atlantic /

      ij(i,j)  feasible links


 Table  sdat(i,*)  supply data

             ref-p1   ref-q1   ref-p2   ref-q2   limit
*           ($/mcf)   (tcf)   ($/mcf)   (tcf)    (tcf)
 mexico                2.0                .5     2.5
 alberta-bc            3.0               1.6     3.75
 atlantic               .25                .03     .3
 appalacia    3.5       .58      7.0      .65     .72
 us-gulf      3.5      7.88      7.0     8.82    9.75
 mid-cont     3.5      2.07      7.0     2.31    2.55
 permian-b    3.5      1.39      7.0     1.55    1.72
 rockies      3.5      1.16      7.0     1.30    1.44
 pacific      3.5       .42      7.0      .47     .52
 alaska       2.0       .80      2.0      .1       inf


 Table ddat(j,*)  demand data

             ref-p   ref-q   elas   tax     ex-dem
*           ($/mcf)  (tcf)         ($/mcf)  (tcf)
 mexico      1.0     2.2    -.5
 west-can    3.0     1.47   -.5
 ont-quebec  3.5     1.38   -.5
 atlantic    3.5      .20   -.5
 new-engl    9.37     .76   -.60
 ny-nj       8.33    1.18   -.66
 mid-atl     8.26     .89   -.65
 south-atl   8.07    1.62   -.89
 midwest     8.01    2.96   -.65
 south-west  7.29    6.04   -.84
 central     7.79    1.17   -.67
 n-central   8.06    1.51   -.54
 west        8.18    2.10   -.43
 n-west      9.39     .36   -.57

$Eject

 Parameters  supa(i)  supply constant a
             supb(i)  supply constant b
             supc(i)  supply capacity
             dema(j)  demand constant a
             demb(j)  demand constant b ;

  supc(i)  =  sdat(i,"limit");
  supb(i)  =  ((sdat(i,"ref-p1")-sdat(i,"ref-p2"))/(1/(supc(i)-sdat(i,"ref-q1"))-1/(supc(i)-sdat(i,"ref-q2"))))
             $(supc(i) ne inf);
  supa(i)  =  sdat(i,"ref-p1") - supb(i)/(supc(i)-sdat(i,"ref-q1"));
*                                     we rely on supa(i) evaluating to exactly zero in some cases
  supa(i)  =  round(supa(i),4);
  supc(i)$(supc(i) eq inf) = 100;
  sdat(i,"sup-a") = supa(i); sdat(i,"sup-b") = supb(i); display sdat;

  demb(j) = 1/ddat(j,"elas") + 1;
  dema(j) = ddat(j,"ref-p")/demb(j)/ddat(j,"ref-q")**(demb(j)-1);
  ddat(j,"dem-a") = dema(j); ddat(j,"dem-b") = demb(j); display ddat;


 Table  utc(i,j)  unit transport cost  ($ per mcf)

             mexico  west-can  ont-quebec  atlantic  new-engl  ny-nj  mid-atl  south-atl  midwest  south-west
 mexico       .25                                               2.29   2.22      2.03       1.96     1.25
 alberta-bc            .40        .90                  1.15     1.10   1.10      1.55        .80     1.25
 atlantic                                              1.50
 appalacia                                                              .72                  .46
 us-gulf                                               2.12     1.08   1.01       .82        .75      .04
 mid-cont                                                                                    .86      .14
 permian-b                                                                        .83        .77      .05
 rockies                                                                                     .53
 alaska                                                                                     6.0

 +           central  n-central  west  n-west
 mexico                          2.13
 alberta-bc    .80      .65       .70    .65
 us-gulf       .54
 mid-cont      .64
 permian-b     .55                .94
 rockies       .31      .58       .70   1.91
 pacific                          .43

$Eject

 Table  pc(i,j)   pipeline capacities (tcf)

             mexico  west-can  ont-quebec  atlantic  new-engl  ny-nj  mid-atl  south-atl  midwest  south-west
 mexico        inf                                              .067   .067     .067       .067
 alberta-bc            inf       inf                   .30      .150   .10                  inf
 atlantic                                    inf        inf
 appalacia                                                             .34                 .35
 us-gulf                                                inf    1.390  1.060    2.0        2.62       3.73
 mid-cont                                                                                  .62       2.30
 permian-b                                                                                 .12       1.45
 rockies                                                                                   .48
 alaska                                                                                    .80

 +           central  n-central  west  n-west
 mexico                          .033
 alberta-bc    inf       inf      inf    inf
 mid-cont    1.03
 permian-b                      1.46
 rockies      .14        inf     .10     inf
 pacific                         .48

 Sets  check1(i,j)  supply links with zero cost and non-zero capacity
       check2(i,j)  supply links with nonzero cost but zero capacity ;

  check1(i,j) = yes$(utc(i,j) eq 0 and pc(i,j) ne 0);
  check2(i,j) = yes$(utc(i,j) ne 0 and pc(i,j) eq 0);

  ij(i,j) = yes$pc(i,j);

  Display check1, check2;

 Variables  x(i,j)  shipment of natural gas (tcf)
            s(i)    regional supply         (tcf)
            d(j)    regional demand         (tcf)
            benefit consumers benefits minus cost

 Positive Variables x, s, d;

 Equations sb(i)    supply balance          (tcf)
           db(j)    demand balance          (tcf)
           bdef     benefit definition ;

 sb(i)..   sum(j$ij(i,j), x(i,j)) =l= s(i) ;

 db(j)..   sum(i$ij(i,j), x(i,j)) =g= d(j) ;

 bdef..    benefit =e= sum(j, dema(j)*d(j)**demb(j)) - sum(i, supa(i)*s(i) - supb(i)*log((supc(i)-s(i))/supc(i)))
                     - sum((i,j)$ij(i,j), utc(i,j)*x(i,j));

 x.up(i,j) = pc(i,j); d.lo(j) = .2; d.fx(jfx) = ddat(jfx,"ref-q"); s.up(i) = 0.99*supc(i);

 Model gtm gas transport model / all /;  solve gtm maximizing benefit using nlp;

$Eject

 Parameter report1(i,*) supply summary report
           report2(j,*) demand summary report ;

 report1(i,"supply") = s.l(i); report1(i,"capacity") = s.up(i); report1(i,"price") = sb.m(i);
 report2(j,"demand") = d.l(j); report2(j,"price") = -db.m(j);

 Display report1, report2, x.l;
