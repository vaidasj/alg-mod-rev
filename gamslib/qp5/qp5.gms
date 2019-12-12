option LP=convert;
option LP=convert;
option LP=convert;
$title Standard QP Model- linear approximation (QP5,SEQ=175)
$Ontext
 Linear approximation of qp4 operate directly on the data.
 Additional information can be found at:

 http://www.gams.com/modlib/adddocs/qp5doc.htm


Kalvelagen, E, Model Building with GAMS. forthcoming

de Wetering, A V, private communication.

$Offtext

$include qpdata.inc

set d(days)   selected days
    s(stocks) selected stocks
alias(s,t);

* select subset of stocks and periods
d(days)   = ord(days) >1 and ord(days) < 31;
s(stocks) = ord(stocks) < 51;

parameter mean(stocks)           mean of daily return
          dev(stocks,days)       deviations
          totmean                total mean return;

mean(s)  = sum(d, return(s,d))/card(d);
dev(s,d) = return(s,d)-mean(s);
totmean  = sum(s, mean(s))/(card(s));

variables z          objective variable
          x(stocks)   investments
          wplus(days) intermediate variables
          wmin(days)  intermediate variables
          ;
positive variables x,wplus,wmin;

equations obj    objective
          budget
          retcon return constraint
          wdef(days)
          ;


obj..      z =e= sum(d, wplus(d)+wmin(d));
wdef(d)..  wplus(d)-wmin(d) =e= sum(s, x(s)*dev(s,d));
budget.. sum(s, x(s)) =e= 1.0;
retcon.. sum(s, mean(s)*x(s)) =g= totmean*1.25;

model qp5 / all /;

solve qp5 using lp minimizing z;
display x.l;

