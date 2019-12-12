option QCP=convert;
option QCP=convert;
option QCP=convert;
$TITLE Standard QP Model - conic formulation (QP7,SEQ=271)

$ONTEXT

 Illustrates the use of conic formulation for quadratic
 programs by implementing rotated quadratic cones.

 For the original model in quadratic programming format

    http://www.gams.com/modlib/adddocs/qp1doc.htm

 The quadratic component x^T*CoVar(s,t)*x is modeled as:

(|d|-1)*x^T*CoVar(s,t)*x = x^Tdev(s,d)^T*dev(t,d)*x = ||Dx||^2
                         = sum(d, w_i^2) with w = Dx
                        := 2*p*q

which leads to the formulation in this model whose last constraint is
a rotated quadratic cone.

 Optional inputs:
   --numdays    investment period in number of days (default: 31).
                Days: 1-100
   --numstocks  number of stocks invested (default: 51)
                Stocks: 1-170


 Andersen, E, MOSEK Optimization Tools Manual, online at
 https://mosek.com/resources/doc

 Kalvelagen, E, Model Building with GAMS. forthcoming

$OFFTEXT


*=== Set default number of days and number of stocks
$if not set numdays    $set numdays   31
$if not set numstocks  $set numstocks 51

$include qpdata.inc

set d(days)   selected days
    s(stocks) selected stocks

alias(s,t);

*=== Select subset of stocks and periods
d(days)   = ord(days) >1 and ord(days) < %numdays%;
s(stocks) = ord(stocks) < %numstocks%;

parameter mean(stocks)     Mean of daily return
          dev(stocks,days) Deviations
          totmean          Total mean return;

mean(s)  = sum(d, return(s,d))/card(d);
dev(s,d) = return(s,d) - mean(s);
totmean  = sum(s, mean(s))/(card(s));

variables z           objective variable
          x(stocks)   investments
          w(days)     intermediate variable for rotated cone
          p           intermediate variable for rotated cone
          q           intermediate variable for rotated cone
positive variables x, p, q

equations obj         objective
          budget
          retcon      return constraint
          wcone(days)
          qone        conic constraint
          rcone       rotated quadratic cone constraint;

obj..       z     =e=  2/(card(d)-1)*p;
wcone(d)..  w(d)  =e=  sum(s, x(s)*dev(s,d));
* This is really awful:
qone..      q     =e=  1;

* Explicit cone syntax for MOSEK
*rcone..  p + q =c=  sum(d, w(d));

rcone..  2*p*q =g= sum(d, sqr(w(d)));

budget.. sum(s, x(s))         =E= 1.0;
retcon.. sum(s, mean(s)*x(s)) =G= totmean*1.25;

model qp7 /all/;

solve qp7 using qcp minimizing z;

Display x.l;

