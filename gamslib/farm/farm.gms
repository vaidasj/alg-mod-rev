option LP=convert;
option LP=convert;
option LP=convert;
$title The Farmer's Problem formulated for GAMS/DECIS (FARM,SEQ=199)

$ontext

This model helps a farmer to decide how to allocate
his or her land. The yields are uncertain.


Birge, R, and Louveaux, F V, Introduction to Stochastic Programming.
Springer, 1997.

$offtext

$if not set decisalg $set decisalg decism

set crop / wheat, corn, sugarbeets /;
set cropr(crop) crops required for feeding cattle /wheat, corn/;
set cropx /wheat,
           corn,
           beets1 up to 6000 ton,
           beets2 in excess of 6000 ton/;

parameter yield(crop) tons per acre /
          wheat        2.5
          corn         3
          sugarbeets  20
/;

parameter plantcost(crop) dollars per acre /
          wheat        150
          corn         230
          sugarbeets   260
/;

parameter sellprice(cropx)  dollars per ton /
          wheat        170
          corn         150
          beets1        36
          beets2        10
/;

parameter purchprice(cropr) dollars per ton /
          wheat        238
          corn         210
/;

parameter minreq(cropr) minimum requirements in ton /
          wheat        200
          corn         240
/;

scalar land available land /500/;
scalar maxbeets1 max allowed /6000/;

*--------------------------------------------------------------------------
* First a non-stochastic version
*--------------------------------------------------------------------------
variables
  x(crop)  acres of land
  w(cropx) crops sold
  y(cropr) crops purchased
  yld(crop) yield
  profit   objective variable
;
positive variables x,w,y;

equations
  profitdef  objective function
  landuse    capacity
  req(cropr) crop requirements for cattle feed
  ylddef     calc yields
  beets      total beet production
;

$ontext
  The YLD variable and YLDDEF equation isolate the stochastic
  YIELD parameter into one equation, making the DECIS setup
  somewhat easier than if we would substitute YLD out of
  the model.
$offtext

profitdef.. profit =e= -sum(crop, plantcost(crop)*x(crop)) - sum(cropr, purchprice(cropr)*y(cropr))
                   + sum(cropx, sellprice(cropx)*w(cropx));

landuse.. sum(crop, x(crop)) =l= land;

ylddef(crop).. yld(crop) =e= yield(crop)*x(crop);

req(cropr).. yld(cropr) + y(cropr) - sum(sameas(cropx,cropr),w(cropx)) =g= minreq(cropr);

beets.. w('beets1')+w('beets2') =l= yld('sugarbeets');
w.up('beets1') = maxbeets1;

model simple /profitdef,landuse,req,beets,ylddef/;
solve simple using lp maximizing profit;


*--------------------------------------------------------------------------
* Extensive form stochastic model
* This is a standard LP.
*--------------------------------------------------------------------------

set s scenarios / above, avg, below /;

variables
  ws(cropx, s) crops sold under scenario s
  ys(cropr, s) crops purchased under scenario s;
positive variable ws, ys;

parameter p(s) probability;
p(s) = 1/3;
abort$(abs( sum(s,p(s)) - 1.0 ) > 0.001) "probabilities don't add up";

parameter syield(crop,s);
syield(crop,'below') = 0.8*yield(crop);
syield(crop,'avg') = yield(crop);
syield(crop,'above') = 1.2*yield(crop);

equations
  sprofitdef    objective function extensive form stochastic model
  sreq(cropr,s)
  sbeets(s)
;

sprofitdef.. profit =e= -sum(crop, plantcost(crop)*x(crop))
                        +sum(s, p(s)*(
                               -sum(cropr, purchprice(cropr)*ys(cropr,s))
                               +sum(cropx, sellprice(cropx)*ws(cropx,s))
                             ));

sreq(cropr,s).. syield(cropr,s)*x(cropr) + ys(cropr,s) - sum(sameas(cropx,cropr),ws(cropx,s)) =g= minreq(cropr);

sbeets(s).. ws('beets1',s)+ws('beets2',s) =l= syield('sugarbeets',s)*x('sugarbeets');
ws.up('beets1',s) = maxbeets1;

model extform /sprofitdef,landuse,sreq,sbeets/;
solve extform using lp maximizing profit;


* collect results for x for different runs

set runs / extform      extensive form
           decisapprox  default decis
           decisexact   stochastic universe option
         /;

parameter px(runs,crop) results for stage 1 variables;

* store stage 1 results
px('extform',crop) = x.l(crop);

*--------------------------------------------------------------------------
* Default DECIS setup
* Based upon the non-stochastic (core) model.
*--------------------------------------------------------------------------

* output the stochastic file
file stg / MODEL.STG /;
stg.nd = 8;
put stg;
put 'BLOCKS DISCRETE'/;
loop(s,
   put 'BL BLOCK1 PERIOD2 ',p(s)/;
   loop(crop,
       put 'x ',crop.tl,' ylddef ',crop.tl,' ',(-syield(crop,s))/;
       );
);
putclose;

$ontext
   Notice the (-yield) expression in for the coefficient for x in
   equation ylddef. The row listing for YLDDEF shows that the expression
   yield(crop)*x(crop) is moved by GAMS to the left-hand side causing a
   minus sign. The parentheses are needed as the PUT syntax does
   not allow expressions there.
$offtext

*output a MINOS option file

file mopt / MINOS.SPC /;
put mopt;
put "begin"/;
put "rows 250"/;
put "columns 250"/;
put "elements 10000"/;
put "end"/;
putclose;

* assign stages
x.stage(cropr) = 1;
y.stage(cropr) = 2;
w.stage(cropx) = 2;
yld.stage(crop) = 2;
landuse.stage = 1;
ylddef.stage(crop) = 2;
req.stage(cropr)=2;
beets.stage=2;

option lp=%decisalg%;
solve simple using lp maximizing profit;

* store stage 1 results
px('decisapprox',crop) = x.l(crop);

*--------------------------------------------------------------------------
* Let DECIS solve the model exactly
* Stochastic Universe option: 4 "ISTRAT"
*--------------------------------------------------------------------------

file decopt / %decisalg%.opt /;
put decopt;
put '4 "ISTRAT"'/;
putclose;

simple.optfile=1;
solve simple using lp maximizing profit;

* store stage 1 results
px('decisexact',crop) = x.l(crop);

display px;
