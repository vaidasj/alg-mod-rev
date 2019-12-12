option LP=convert;
option LP=convert;
option LP=convert;
$Title Piecewise Linear Approximations (IMSL,SEQ=59)

$Ontext

   This sample problem finds the best piecewise linear approximation in terms
   of the sum of absolute deviations from the sampled observation. The
   calculation of the interpolation weights relies on equal intervals of the
   approximation function. The sine function is also implemented as a power
   series expansion to demonstrate certain language features. The problem is
   solved in its primal and dual version.


IMSL, LP/PROTRAN - A Problem Solving System for Linear Programming .
Tech. rep., IMSL INC, 1984.

$Offtext


 Sets n   x-coordinate labels for data           / d-00 * d-60 /
      m   x-coordinate labels for approximation  / a-00 * a-10 /

 Parameters y(n)   data values
            t(n)   x-coordinate values for data
            s(m)   x-coordinate values for approximation
            w(m,n) interpolation weights

 Scalars deltn  data increments
         deltm  approximation increment ;

 t(n)  = (ord(n)-1)/(card(n)-1); s(m)  = (ord(m)-1)/(card(m)-1) ;
 deltm = 1/(card(m)-1);          deltn = 1/(card(n)-1);

 w(m+floor(t(n)/deltm),n)$(ord(m) eq 1) = 1 - mod(t(n),deltm)/deltm;
 w(m+1,n)$w(m,n) = 1-w(m,n) ;

*  the function sin(x) is evaluated for x between 0 and pi.
*  the sets l and r are only used for the power series approximation of sin(x).

 Sets l   length of power series               / 0*6 /
      r   set needed for factorial calculation / 0*14 / ;

 Abort$(card(l) gt 2*card(r)-1) "incorrect approximation sets",l,r;

$Offdigit
Scalar   pi  / 3.1415926538979 /;
$Ondigit

 y(n) = sum(l, power(-1,ord(l)-1)*power(t(n)*pi,2*ord(l)-1) / prod(r$(ord(r) le 2*ord(l)-1), ord(r)) );
 y(n) = round(y(n),6);

 Display y,t,s,deltm,deltn,w;

 Parameter test(n,*)  comparison of approximating sin() ;

           test(n,"power-ser") = y(n);
           test(n,"sinus-fun") = sin(t(n)*pi);
           test(n,"error")     = test(n,"sinus-fun") - test(n,"power-ser");

           Display test;

 Variables ym(m)  approximation values
           dp(n)  positive deviation
           dn(n)  negative deviation
           tdev   total deviation
           tdual  total dual value
           z(n)   dual values of deviations ;

 Positive variables dp, dn;

 Equations ddev(n)  deviation definitions
           ddual(m) dual definition
           dtdev    total dev definition
           dtdual   total dual definition ;

 ddev(n)..  sum(m, w(m,n)*ym(m)) - y(n) =e= dp(n) - dn(n);

 ddual(m).. sum(n, w(m,n)*z(n)) =e= 0;

 dtdev..  tdev =e= sum(n, dp(n) + dn(n));

 dtdual.. tdual =e= sum(n, y(n)*z(n)) + 1;

 Model primal / ddev, dtdev /
       dual   / ddual, dtdual /;

 Solve primal using lp minimizing tdev;

 Parameter prep(n,*) primal solution report
           primaldev sum of absolute deviations from primal solution;

  prep(n,"t")    = t(n);
  prep(n,"y")    = y(n);
  prep(n,"dev")  = dp.l(n) - dn.l(n) ;
  primaldev = sum(n, abs(prep(n,"dev")));

 Display prep,primaldev;


 z.lo(n) = -1; z.up(n) = 1;
 Solve dual using lp maximizing tdual ;

 Parameter drep(n,*) dual solution report
           dualdev   sum of absolute deviations from dual solution;

 drep(n,"t")  = t(n);
 drep(n,"y")  = y(n);
 drep(n,"dev")= sum(m, -ddual.m(m)*w(m,n)) - y(n);
 dualdev = sum(n, abs(drep(n,"dev")));

 Display drep,dualdev;
