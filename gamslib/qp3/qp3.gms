option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Standard QP Model - intermediate variables (QP3,SEQ=173)
$Ontext

 Further speedup by simplifying the nonlinear terms.
 Additional information can be found at:

 http://www.gams.com/modlib/adddocs/qp3doc.htm


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
          covar(stocks,sstocks)  covariance matrix of returns  (upper)
          covarx(stocks,sstocks) covariance matrix - variation (upper)
          totmean                total mean return;

mean(s)  = sum(d, return(s,d))/card(d);
dev(s,d) = return(s,d)-mean(s);

* calculate covariance
* to save memory and time we only compute the uppertriangular
* part as the covariance matrix is symmetric
covar(upper(s,t)) = sum(d, dev(s,d)*dev(t,d))/(card(d)-1);
covarx(s,t) = 2*covar(s,t);
covarx(s,s) =   covar(s,s);

totmean = sum(s, mean(s))/(card(s));

variables z          objective variable
          x(stocks)  investments
          y(stocks)  intermediate variable
          ;
positive variables x;

equations obj    objective
          budget
          retcon return constraint
          ydefa(stocks)  not exploiting symmetry
          ydefb(stocks)  exploiting symmetry
          ;


obj..      z =e= sum(s, y(s)*x(s));
ydefa(t).. y(t) =e= sum(upper(s,t), x(s)*covar(s,t)) +
                    sum(lower(s,t), x(s)*covar(t,s));
ydefb(t).. y(t) =e= sum(s, x(s)*covarx(s,t));
budget.. sum(s, x(s)) =e= 1.0;
retcon.. sum(s, mean(s)*x(s)) =g= totmean*1.25;

model qp3a /obj,ydefa,budget,retcon/;
model qp3b /obj,ydefb,budget,retcon/;

solve qp3a using nlp minimizing z;
display x.l;

ydefb.m(t) = ydefa.m(t);
solve qp3b using nlp minimizing z;
display x.l;

