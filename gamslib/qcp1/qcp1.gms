option QCP=convert;
option QCP=convert;
option QCP=convert;
$title Standard QCP Model (QCP1,SEQ=283)
$Ontext
This is the gamslib model QP1 expressed as a QCP. Also
note that the full sized data set is used and the
handling of the Q matrix is simplified.

The first in a series of variations on the standard
QP formulation. The subsequent models exploit data
and problem structures to arrive at formulations that
have sensational computational advantages. Additional
information can be found at:

 http://www.gams.com/modlib/adddocs/qp1doc.htm


Kalvelagen, E, Model Building with GAMS. forthcoming

de Wetering, A V, private communication.

$Offtext
$eolcom //
$include qpdata.inc

set d(days)   selected days
    s(stocks) selected stocks
alias(s,t);

* note that we have to drop the first day because of the definition of
* return(stocks,days-1) = val(stocks,days)-val(stocks,days-1);

d(days+1) = yes;   // this will drop the first day
s(stocks) = yes;

parameter mean(stocks)          mean of daily return
          dev(stocks,days)      deviations
          covar(stocks,sstocks) covariance matrix of returns (upper)
          totmean               total mean return;

mean(s)    = sum(d, return(s,d))/card(d);
dev(s,d)   = return(s,d)-mean(s);
covar(s,t) = sum(d, dev(s,d)*dev(t,d))/(card(d)-1);
totmean    = sum(s, mean(s))/(card(s));

variables z          objective variable
          x(stocks)  investments;

positive variables x;

equations obj    objective
          budget
          retcon return constraint ;

obj.. z =e= sum((s,t), x(s)*covar(s,t)*x(t));

budget.. sum(s, x(s)) =e= 1.0;

retcon.. sum(s, mean(s)*x(s)) =g= totmean*1.25;

model qcp1 /all/;

option limcol=0,limrow=0;
qcp1.workfactor = 20;
solve qcp1 using qcp minimizing z;
