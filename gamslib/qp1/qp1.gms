option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Standard QP Model (QP1,SEQ=171)
$Ontext
 The first in a series of variations on the standard
 QP formulation. The subsequent models exploit data
 and problem structures to arrive at formulations that
 have sensational computational advantages. Additional
 information can be found at:

 http://www.gams.com/modlib/adddocs/qp1doc.htm


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

parameter mean(stocks)          mean of daily return
          dev(stocks,days)      deviations
          covar(stocks,sstocks) covariance matrix of returns (upper)
          totmean               total mean return;

mean(s)  = sum(d, return(s,d))/card(d);
dev(s,d) = return(s,d)-mean(s);

* calculate covariance
* to save memory and time we only compute the uppertriangular
* part as the covariance matrix is symmetric
covar(upper(s,t)) = sum(d, dev(s,d)*dev(t,d))/(card(d)-1);

totmean = sum(s, mean(s))/(card(s));

variables z          objective variable
          x(stocks)  investments;

positive variables x;

equations obj    objective
          budget
          retcon return constraint
          ;


obj.. z =e= sum(upper(s,t), x(s)*covar(s,t)*x(t)) +
            sum(lower(s,t), x(s)*covar(t,s)*x(t));
budget.. sum(s, x(s)) =e= 1.0;
retcon.. sum(s, mean(s)*x(s)) =g= totmean*1.25;

model qp1 /all/;

* Some solvers need more memory
qp1.workfactor = 10;
solve qp1 using nlp minimizing z;

display x.l;
