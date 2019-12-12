option LP=convert;
option LP=convert;
option LP=convert;
$Title Simple Portfolio Model  (PORT,SEQ=50)

$Ontext

  This simple portfolio selection model examines
  investment alternatives in the bond market. The selection
  is constrained by rating and maturity considerations.


CDC, IFPS/OPTIMIM - Users Manual, Control Data Corporation, Minneapolis, 1984.

$Offtext

 Sets  b     bonds  / municip-a, municip-b, corporate, us-ser-e, us-ser-f /
       g(b)  grouping / corporate, us-ser-e, us-ser-f /

 Table ydat(b,*)  yield data

             rating  maturity  yield  tax-rate
 municip-a      2        9      4.3
 municip-b      5        2      4.5
 corporate      2       15      5.4      .5
 us-ser-e       1        4      5.0      .5
 us-ser-f       1        3      4.4      .5

 Variables  investment(b)
            tinvest    total investment
            return

 Positive Variable investment

 Equations  groupmin   minimum investment in group g
            rdef       rating definition
            mdef       maturity definition
            idef       total return definition
            tdef       total investment definition ;
$Double

 tinvest.up = 10;
 groupmin.. sum(g, investment(g)) =g=  4;
 rdef..  sum(b, ydat(b,"rating  ")*investment(b)) =l= 1.4*tinvest;
 mdef..  sum(b, ydat(b,"maturity")*investment(b)) =l= 5.0*tinvest;
 tdef..  tinvest =e= sum(b, investment(b));
 idef..  return  =e= sum(b, ydat(b,"yield")/100*(1-ydat(b,"tax-rate"))*investment(b));

 Model port / all / ;
 Solve port maximizing return using lp;

