option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Standard QP Model with GDX data input (QP1X,SEQ=246)
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

* From StockMaster at MIT

sets       days    100 days from 95-11-27 to 96-04-29
           stocks  170 selected stocks
           upper(stocks,stocks)
           lower(stocks,stocks);
alias (stocks,sstocks);

parameters val(stocks,days)    closing value
           return(stocks,days) daily returns - derived;

* We use the (hopefully Posix-compliant) utility test to check if
* qpdata.gdx is more recent than qpdata.inc. If that's the case we can
* skip the processing of qpdata.inc. test can do more checks. Run test
* --help for a brief overview.
*
* WINDOWS ONLY: From within a GAMS program test and
* other Posix utilities are automatically available. From other
* environments, you need to add the gbin subdirectory of the GAMS
* system directory to your PATH (Windows only).

* test on AIX and AXU do not have flag -nt so we always regenerate qpdata.gdx
$set test test
$ifi %system.platform% == axu $set test false
$ifi %system.platform% == aix $set test false

$call =%test% qpdata.gdx -nt qpdata.inc
$if errorlevel 1 $call =gams qpdata.inc lo=0 a=c gdx=qpdata
$if errorlevel 1 $abort problems creating qpdata.gdx
$gdxin qpdata
$load days stocks

* Execution time load of closing value
execute_load 'qpdata', val;

return(stocks,days-1) = val(stocks,days)-val(stocks,days-1);

upper(stocks,sstocks) = ord(stocks) <= ord(sstocks);
lower(stocks,sstocks) = not upper(stocks,sstocks);

set d(days)   selected days
    s(stocks) selected stocks
alias(s,t);

* setect subset of stocks and periods
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

* Dump solution into GDX file
execute_unload 'qp1xsol',x=xsol;

* Lets see if the solution was stored correctly
x.l(s) = 0;
execute_load 'qp1xsol',x=xsol;
qp1.iterlim=20;
solve qp1 using nlp minimizing z;

* Dump reoptimized solution into GDX file
execute_unload 'qp1xso2',x=xsol;

* Compare both GDX files
execute 'gdxdiff qp1xsol qp1xso2 %system.redirlog%';

* Dump the diff GDX file
execute 'gdxdump diffile %system.redirlog%';
