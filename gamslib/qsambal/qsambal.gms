option QCP=convert;
option QCP=convert;
option QCP=convert;
$Title Social Accounting Matrix Balancing Problem (QSAMBAL,SEQ=285)

$Ontext
   This is a QCP version of the gamslib model SAMBAL.

   A Social Accounting Matrix captures all the circular flows in an
   economy and is called balanced if the row totals equal the column
   totals. A sample problem illustrates the use of Nonlinear Programming
   to balance such matrices.


Zenios, S A, Drud, A S, and Mulvey, J, Balancing some large Social
Accounting Matrices with Nonlinear Programming. Tech. rep.,
Department of Civil Engineering, Princeton University, 1986.

$Offtext

Set i accounts / lab, h1, h2, p1, p2 / ; alias (i,j);

Table xb(i,j) original estimate

      lab   h1   h2   p1   p2
lab         15    3  130   80
h1     na
h2     na
p1          15  130        20
p2          25   40   55

Parameter tb(i) original totals / lab 220, (h1,h2)  na, p1 190, p2 105 /
          tw(i) weights for totals
          xw(i,j) weights for cells;

tw(i) = 1; tw(i)$(tb(i)=na) = 0;
xw(i,j) = 1$xb(i,j); xw(i,j)$(xb(i,j)=na) = 0;

Display tw, xw;
Variables x(i,j) estimated cells
          t(i)   estimated totals
          dev    deviations;

Equations rbal(i) row balance
          cbal(j) column balance
          devsqr  definition of square deviations;

rbal(i).. t(i) =e= sum(j$xb(i,j), x(i,j));

cbal(j).. t(j) =e= sum(i$xb(i,j), x(i,j));

devsqr..  dev  =e= sum((i,j)$xw(i,j), xw(i,j)*sqr(xb(i,j) - x(i,j))/xb(i,j))
                 + sum(i$tw(i), tw(i)*sqr(tb(i) - t(i))/tb(i));

Model bal / all /;

x.l(i,j) = xb(i,j)$xw(i,j); t.l(i) = tb(i)$tw(i);

Solve bal using qcp minimizing dev;

parameter rep balancing summary report;

rep(i,j,'original') = xb(i,j); rep(i,j,'estimate') = x.l(i,j);

display rep;

