option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Economic Load Dispatch Including Transmission Losses (DISPATCH,SEQ=166)
$Ontext
  The economic dispatch problem can be defined as determining the
  least-cost power generation schedule from a set of on-line generating
  units to meet the total power demand at a given point of time. The
  generating unit cost and the network transmission losses are modeled
  as quadratic function of the power generation.

  In the present problem, both the cost-minimizing and loss-minimizing
  solutions have been obtained.


Wood, A J, and Wollenberg, B F, Example Problem 4e. In Power Generation,
Operation and Control. John Wiley and Sons, 1984, pp. 85-88.

$Offtext

sets  i        generators                 / p1*p3 /
      genchar  generator characteristics  / a,b,c,upplim,lowlim /
      cg(genchar) cost categories         / a,b,c /

alias (i,j) ;

table gendata(i,genchar) generator cost characteristics and limits

              a        b         c         upplim      lowlim
p1        213.1   11.669   0.00533            200          50
p2        200.0   10.333   0.00889            150        37.5
p3        240.0   10.833   0.00741            180          45

parameter pexp(cg) exponent for cost function / a 0, b 1, c 2 /;

table b(i,j)  the b-matrix loss coefficients - squared components

              p1            p2           p3
   p1     0.0676       0.00953     -0.00507
   p2    0.00953        0.0521      0.00901
   p3   -0.00507       0.00901      0.0294

parameter b0(i) linear loss coefficients /
   p1   -0.0766
   p2   -0.00342
   p3    0.0189 /;

scalar b00  loss equation constant / 0.040357 / ;

scalar  demand    total power demand in MW / 210 / ;

variables
   p(i)     power generation level in MW
   loss     total transmission loss in MW
   cost     total generation cost - the objective function
positive variables p;

p.up(i) = gendata(i,"upplim") ;
p.lo(i) = gendata(i,"lowlim") ;

equations
   costfn        total cost calculation
   lossfn        total loss calculation
   demcons       total generation must equal demand and loss ;


costfn.. cost =e= sum((i,cg), gendata(i,cg)*power(p(i),pexp(cg)));

lossfn.. loss =e= b00 + sum(i, b0(i)*p(i))/100
                      + sum((i,j), p(i)*b(i,j)*p(j))/100;

demcons.. sum(i, p(i)) =g= demand + loss ;

model edc /all/ ;

solve edc minimizing cost using nlp ;

*  trace a trade-off frontier

set s      trade-off points  / min-loss, s1*s4, min-cost /
    st(s)  in between points / s1*s4 /

parameter trace  trace report ;

trace('cost','min-cost') = cost.l;
trace('loss','min-cost') = loss.l;

option limrow=0,limcol=0;
solve edc minimizing loss using nlp ;

trace('cost','min-loss') = cost.l;
trace('loss','min-loss') = loss.l;

edc.solprint=%solprint.Quiet%;

loop(st,
   loss.fx = trace('loss','min-loss')
           + ord(st)/(card(st)+1)*(trace('loss','min-cost')
                                  -trace('loss','min-loss'));
   solve edc minimizing cost using nlp ;
   trace('cost',st) = cost.l;
   trace('loss',st) = loss.l);

display trace;
