option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Production Scheduling Model using SOS1 and SOS2 (PRODSCHX,SEQ=109)

$Ontext

   A company specializing in the manufacture of outboard motors faces
   highly seasonal demands and wants to minimize production cost. The
   three main cost categories are:
     1. direct production cost (nonlinear production relations and shift
        operations are possible)
     2. inventory cost (rent or lease option)
     3. workforce fluctuation cost.


CDC, APEX-III Reference Manual Version 1.2, Control Data Corporation,
Minneapolis, 1980. MIP Sample Problem

   This is a revised version of the model PRODSCH (SEQ=9). The GAMS
   SOS definition required to change the index positions of the
   variables ss and SSB. There are three possible ways to use a MIP.

$Offtext

*      Binary variables
*      SOS1 sets
*      SOS2 sets
*
*  Some equations are entered twice with a different name to comply
*  with the strict typing of variables in GAMS.

Sets  q    quarters                   / summer, fall, winter, spring /
      s    shifts                     / first, second /
      l    production levels          / 1*4 /
      i(l) production level intervals / 1*3 /

Parameters  d(q)    demand (motors per season)        / spring = 24000 /
            delt(q) discount factor
            lc(q)   leasing cost (dollars per season) / summer = 15000 /
            ei(q)   initial employment                / summer =    84 /

Scalars  mc     material cost (dollars per motor)  / 100 /
         sr     space rental  (dollars per motor)  /   2 /
         invmax upper bound on inventory (motors)
         hc     hiring cost (dollars per employee) / 900 /
         fc     firing cost (dollars per employee) / 150 / ;

delt(q) = 1/1.03**(ord(q)-1);   invmax = sum(q, d(q));


Table  pr(*,l) production relationship

           1      2      3      4

labor     20     40     50     60
motor   1000   3000   4500   5800


Table sc(*,s)  shift cost  ( dollars per shift )

        first    second

fixed   10000     16000
labor    3500      4100


Variables  cost        total discounted cost per year           (1000 $)
           dpc(q)      direct production cost        (1000 $ per season)
           isc(q)      inventory storage cost        (1000 $ per season)
           wfc(q)      workforce fluctuation cost    (1000 $ per season)
           src(q)      space rental cost             (1000 $ per season)

           p(q)        production                    (motors per season)
           ss(q,s,l)   production segments                   (sos2 type)
           ssb(q,s,l)  0-1 needed for ss sos2 formulation
           ss1(q,s,l)  SOS1 needed for ss sos2
           ss2(q,s,l)  SOS2 formulation
           inv(q)      inventory                     (motors per season)
           lease       lease-rent option

           e(q)        total employment                      (employees)
           se(q,s)     shift employment            (employees per shift)
           shift(q,s)  shift use indicator                      (binary)
           h(q)        hirings per quarter                   (employees)
           f(q)        firings per quarter                   (employees)

Positive Variables p, ss, inv, src, h, f ;
Binary variables lease, shift, ssb; SOS1 variable ss1; SOS2 variable ss2;

Equations  acost        total cost definition                  (1000 $)
           ddpc(q)      direct production cost definition      (1000 $)
           disc(q)      inventory storage cost definition      (1000 $)
           dwfc(q)      workforce fluctuation cost definition  (1000 $)

           sbp(q)       sos product balance                    (motors)
           sbps2(q)     SOS2 product balance                    (motors)
           sbse(q,s)    sos shift employment balance        (employees)
           sbses2(q,s)  SOS2 shift employment balance        (employees)
           scc(q,s)     sos shift link
           sccs2(q,s)   SOS2 shift link
           invb(q)      inventory balance                      (motors)
           dsrc(q)      definition: space rental

           ed(q)        total employment definition         (employees)
           eb1(q)       employment balance type 1           (employees)
           eb2(q)       employment balance type 2           (employees)

           messb(q,s)   mutual exclusivity for ssb
           mess1(q,s)   mutual exclusivity for ss1
           lssb(q,s,l)  ss - ssb linkage
           lss1(q,s,l)  ss - ss1 linkage ;


acost..      cost   =e= sum(q, delt(q)*( dpc(q) + isc(q) + wfc(q) ));

ddpc(q)..    dpc(q) =e= (mc*p(q) + sum(s, sc("fixed",s)*shift(q,s) + sc("labor",s)*se(q,s)))/1000;

sbp(q)..     p(q) =e= sum((s,l), pr("motor",l)*ss (q,s,l)) ;
sbps2(q)..   p(q) =e= sum((s,l), pr("motor",l)*ss2(q,s,l)) ;

sbse(q,s)..  se(q,s) =e= sum(l, pr("labor",l)*ss (q,s,l)) ;
sbses2(q,s)..se(q,s) =e= sum(l, pr("labor",l)*ss2(q,s,l)) ;

scc(q,s)..   sum(l, ss (q,s,l)) =e= shift(q,s) ;
sccs2(q,s).. sum(l, ss2(q,s,l)) =e= shift(q,s) ;

invb(q)..    inv(q) =e= inv(q-1) + p(q) - d(q) ;

disc(q)..    isc(q) =e= (lc(q)*lease + src(q))/1000 ;

dsrc(q)..    src(q) =g= sr*( inv(q) - invmax*lease ) ;

dwfc(q)..    wfc(q) =e= (hc*h(q) + fc*f(q))/1000 ;

ed(q)..      e(q)   =e= sum(s, se(q,s));

eb1(q)..     e(q)   =e= e(q-1) + h(q) - f(q) + ei(q) ;

eb2(q)..     e(q)   =e= e(q--1) + h(q) - f(q) ;

messb(q,s).. sum(l, ssb(q,s,l)) =e= 1;
mess1(q,s).. sum(l, ss1(q,s,l)) =e= 1;

lssb(q,s,l).. ss(q,s,l-1) + ss(q,s,l) =l= ssb(q,s,l-2) + ssb(q,s,l-1) + ssb(q,s,l);
lss1(q,s,l).. ss(q,s,l-1) + ss(q,s,l) =l= ss1(q,s,l-2) + ss1(q,s,l-1) + ss1(q,s,l);

p.up("spring") = .8*card(s)*smax(l, pr("motor",l));

Model prod1B  initial employment / acost, ddpc, sbp, sbse, scc, disc, invb, dsrc, dwfc, ed, eb1, messb, lssb /
      prod2B  steady state       / acost, ddpc, sbp, sbse, scc, disc, invb, dsrc, dwfc, ed, eb2, messb, lssb /
      prod1S1 initial employment / acost, ddpc, sbp, sbse, scc, disc, invb, dsrc, dwfc, ed, eb1, mess1, lss1 /
      prod2S1 steady state       / acost, ddpc, sbp, sbse, scc, disc, invb, dsrc, dwfc, ed, eb2, mess1, lss1 /
      prod1S2 initial employment / acost, ddpc, sbps2, sbses2, sccs2, disc, invb, dsrc, dwfc, ed, eb1 /
      prod2S2 steady state       / acost, ddpc, sbps2, sbses2, sccs2, disc, invb, dsrc, dwfc, ed, eb2 /;

* get global optimum (OPTCR) and force each solve to start from scratch (BRATIO)

Option optcr=0,limcol=0,limrow=0,bratio=1;

Parameter report summary performance report;

Solve prod1b  minimizing cost using mip;
report('prod1b','objval')  = prod1b.objval;
report('prod1b','iterusd') = prod1b.iterusd;
report('prod1b','nodusd')  = prod1b.nodusd;

Solve prod1s1 minimizing cost using mip;
report('prod1s1','objval')  = prod1s1.objval;
report('prod1s1','iterusd') = prod1s1.iterusd;
report('prod1s1','nodusd')  = prod1s1.nodusd;

Solve prod1s2 minimizing cost using mip;
report('prod1s2','objval')  = prod1s2.objval;
report('prod1s2','iterusd') = prod1s2.iterusd;
report('prod1s2','nodusd')  = prod1s2.nodusd;

Solve prod2b  minimizing cost using mip;
report('prod2b','objval')  = prod2b.objval;
report('prod2b','iterusd') = prod2b.iterusd;
report('prod2b','nodusd')  = prod2b.nodusd;

Solve prod2s1 minimizing cost using mip;
report('prod2s1','objval')  = prod2s1.objval;
report('prod2s1','iterusd') = prod2s1.iterusd;
report('prod2s1','nodusd')  = prod2s1.nodusd;

Solve prod2s2 minimizing cost using mip;
report('prod2s2','objval')  = prod2s2.objval;
report('prod2s2','iterusd') = prod2s2.iterusd;
report('prod2s2','nodusd')  = prod2s2.nodusd;

Display report;

