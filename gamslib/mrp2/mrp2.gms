option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Materials Requirement Planning (MRP) Formulations (MRP2,SEQ=207)

$ontext
Materials Requirement Planning Model.


Voss, S, and Woodruff, D L, Introduction to Computational
Optimization Models for Production Planning in a Supply Chain.

$offtext

set PP SKU Numbers  / AJ8172, LQ8811, RN0098, NN1100, WN7342 /
    TT Time Buckets / 1jan01*8jan01 /
    KK Resources / HR-101, MT-402 /;

alias (TT,TTp)
      (PP,PPp);

table     R(PP,PP) number of i to make one j

        AJ8172 LQ8811 RN0098 NN1100 WN7342
AJ8172
LQ8811  2
RN0098  1
NN1100         1
WN7342         1
;

table     demand(PP,TT) External Demand for an item in a period

        1jan01 2jan01 3jan01 4jan01 5jan01 6jan01 7jan01 8jan01
AJ8172      20     30     10     20     30     20     30     40
LQ8811
RN0098
NN1100
WN7342
;

parameter lev(PP) Level in the production tree
          TD(PP)  total demand extern plus implicit;
scalar runlev level iteration / 0 /;

* Root node get level 0, all other get -1
lev(PP)$(sum(PPp,R(PP,PPp))) = -1;
TD(PP)$(lev(PP) = 0) = sum(TT,demand(PP,TT));
loop(PP$(lev(PP) = runlev),
  runlev = runlev + 1;
  lev(PPp)$R(PPp,PP) = runlev;
  TD(PPp)$R(PPp,PP) = sum(TT,demand(PPp,TT)) + R(PPp,PP)*TD(PP);
);

parameter LT(PP) Lead Time
          I(PP)  Beginning Inventory
          LS(PP) Lot size;

table SKUdata
           LT     LS     I
AJ8172      2    100    90
LQ8811      3    400   300
RN0098      4    100   100
NN1100      1      1     0
WN7342     12   1000   900
;

LT(PP) = SKUdata(PP,'LT');
LS(PP) = SKUdata(PP,'LS');
I(PP)  = SKUdata(PP, 'I');


table U(PP,KK) fraction of resource k needed by one i
        HR-101      MT-402
AJ8172  0.00208333  0.000104166
LQ8811              0.000333333
RN0098
NN1100              0.000001000
WN7342
;

parameter M(PP) big M for equation defprod;
M(PP) = max(TD(PP),LS(PP));

binary variable d(PP,TT)   production indicator
positive variable x(PP,TT) number of SKUs to produce
variable obj;

equation defobj             objective function
         defreq(PP,TT)      material requirement
         deflot(PP,TT)      lot size
         defprod(PP,TT)     production indicator
         defcap(TT,KK)      capacity;

defobj.. obj =E= sum((PP,TT), (card(TT)-ord(TT)+1)*x(PP,TT));

defreq(PP,TT).. sum(TTp$(ord(TTp)<=ord(TT)-LT(PP)), x(PP,TTp)) + I(PP)
   =G= sum(TTp$(ord(TTp)<=ord(TT)), demand(PP,TTp)
                                    + sum(PPp, R(PP,PPp)*x(PPp,TTp)));

deflot(PP,TT).. x(PP,TT) =G= d(PP,TT)*LS(PP);

defprod(PP,TT).. x(PP,TT) =L= d(PP,TT)*M(PP);

defcap(TT,KK).. sum(PP, U(PP,KK)*x(PP,TT)) =L= 1;

model mrp   / defobj, defreq, deflot, defprod /;
model mrp2  / defobj, defreq,                  defcap /;
model mrp2l / defobj, defreq, deflot, defprod, defcap /;

option optcr=0.0;
solve mrp   minimizing obj using mip;
solve mrp2  minimizing obj using lp;
solve mrp2l minimizing obj using mip;
