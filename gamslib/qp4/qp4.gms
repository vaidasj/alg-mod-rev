option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Standard QP Model - no covariance matrix (QP4,SEQ=174)
$Ontext
 Instead of using the covariances, but operate
 directly on the data. Additional information can be found at:

 http://www.gams.com/modlib/adddocs/qp4doc.htm


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
          x(stocks)  investments
          w(days)    intermediate variables
          ;
positive variables x;

equations obj    objective
          budget
          retcon return constraint
          wdef(days)
          ;


obj..      z =e= sum(d, sqr(w(d)))/(card(d)-1);
wdef(d)..  w(d) =e= sum(s, x(s)*dev(s,d));
budget.. sum(s, x(s)) =e= 1.0;
retcon.. sum(s, mean(s)*x(s)) =g= totmean*1.25;

model qp4 / all /;

solve qp4 using nlp minimizing z;
display x.l;


