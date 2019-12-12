option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Household Optimization Model by Fair (HHFAIR,SEQ=69)

$Ontext

   This is a theoretical optimizing model of a typical household.
   a detailed description can be found in Chapter 3 of Ray Fair's book.


Fair, R, Specification, Estimation, and Analysis of Macroeconomic
Models. Harvard University Press, Cambridge, Mass, 1984.

$Offtext

Sets  tl     long time horizon  / 0, 1, 2, 3 /
      t(tl)  optimizing horizon /    1, 2, 3 /
      tt(t)  terminal year      /          3 /

Scalars
  p       price of goods                              /    1.0     /
  r       one period interest rate                    /     .07    /
  tr      transfer payment                            /    0       /
  th      total number of hours in the period         / 1004.72366 /
  w       wage rate                                   /    1.0     /
  d       income tax rate                             /     .2     /
  a1      distribution coefficient in ces function    /     .5     /
  a2      elasticity coefficient in ces function      /    -.5     /
  am      terminal assets target                      / 1100       /
  lambda  discount rate                               /     .944   /
  lstar   maximum labor available in each time period /  400       /
  gamma1  coefficient 1 in money holding function     /     .255905/
  gamma2  coefficient 2 in money holding function     /    1.0     /

Parameter ufact(t) utility function factor ;

          ufact(t) = power(lambda,ord(t)-1) ; Display ufact;

Variables
  a(tl)       assets
  c(t)        consumption
  l(t)        labor supplied
  m(tl)       money holdings
  n(t)        time spent on money holdings
  obj         objective function value
  s(tl)       savings
  tax(t)      net taxes paid
  u(t)        utility
  y(t)        income

Equations
  objective     objective function
  utility(t)    utility in each period
  income(t)     before tax income
  taxes(t)      net taxes
  savings(t)    savings
  budget(tl)    budget constraint
  timemoney(t)  time spent taking care of money holdings
  terminal(t)   terminal condition for assets
  dom1(t)       domain constraint on timemoney equation
  dom2(t)       domain constraint on utility equation ;

objective..   obj =e= prod(t, u(t)**ufact(t)) ;

utility(t)..

u(t) =e= (a1*c(t)**(-a2) + (1-a1)*(th-l(t)-n(t))**(-a2))**(-1/a2)/100 ;

income(t)..    y(t) =e= w*l(t) + r*a(t) ;

taxes(t)..     tax(t) =e= d*y(t) - tr;

savings(t)..   s(t) =e= y(t) - tax(t) - p*c(t) ;

budget(tl-1).. s(tl) =e= a(tl) - a(tl-1) + m(tl) - m(tl-1) ;

timemoney(t).. n(t)*(m(t) - gamma1*p*c(t)) =e= gamma2 ;

terminal(tt).. a(tt) + m(tt) =e=  am ;

dom1(t).. m(t) =g= 1.01*gamma1*p*c(t) ;

dom2(t).. l(t) + n(t) =l= .9*th ;


Model hh household optimization model / all / ;

l.up(t) = lstar;   a.fx("0") = 1000;   m.fx("0") = 100;
c.lo(t) = 100;     l.lo(t) = 100;      u.lo(t)   = .01;

a.l(t) = 1000; m.l(t) = 100; l.l(t) = 400;  u.l(t) = 1;

Solve hh maximizing obj using nlp;

