option NLP=convert;
option NLP=convert;
option NLP=convert;
$title LGO Test t1000_10 (T1000,SEQ=266)
* This test problem is due to J Pinter. A Drud has pointed out that
* solvers using derivatives will have a hard time with this model.
* There is a primal solution but the dual does not exist and the global
* solution does not satisfy the Kuhn-Tucker conditions. sqr(x) = 0
* implies x=0, but the marginal on this constraint is usually infinite and the
* solution depends wildly on any finite tolerance. This model can be
* reformulated as shown by Drud. His reformulation is given below.
*
* The global solutions is x(i) = 0.
*
*
* Janos Pinter, LGO - Users Guide, Pinter Consulting Services, Halifax,
* Canada, 2003.
*
* needs include file t1000d.inc


set i      / 1*1000 /
    i10(i) / 2*  10 /

variables objf,sum_sq,sum_noise,x(i);

equations objdef,defsq,defnoise,
          con0,con1,con2,con3,con4,con5,con6,con7,con8,con9

parameter scal,tol;

scal = 100; tol = 0.001;

objdef.. objf =e= sum_sq + scal*sum_noise;

defsq..     sum_sq    =e= sum(i, sqr(x(i)));
defnoise..  sum_noise =e= sum(i, sqr(sin(sqr(x(i)))));

con0.. sqr(sum(i10(i), (x(i)-x(i-1))*(x(i+1)-x(i-1)))) =l= tol;

con1.. sqr(x('111')+x('122')-x('133')-x('144')-x('155')+x('166')-x('177')+x('188')) =l= tol;

con2.. sqr(x('199')-x('203')*x('215')-x('227')*x('239')-x('242')*x('254')+x('266')) =l= tol;

con3.. sqr(x('279')-x('283')*x('295')-x('7')*x('23')-x('42')*x('54')+x('66')) =l= tol;

con4.. sqr(x('311')+x('322')-x('333')-x('344')-x('355')+x('366')-x('377')+x('388')) =e= 0;;

con5.. sqr(x('599')-x('603')*x('615')-x('627')*x('539')-x('542')*x('654')+x('666')) =l= tol ;

con6.. sqr(x('679')-x('783')*x('795')-x('7')*x('23')-x('742')*x('754')+x('666')) =l= tol;

con7.. sqr(x('811')+x('322')-x('833')-x('344')-x('855')+x('366')-x('387')+x('888')) =e= 0;

con8.. sqr(x('899')-x('903')*x('915')-x('627')*x('939')-x('942')*x('654')+x('966')) =e= 0;

con9.. sqr(x('679')-x('783')*x('795')-x('7')*x('23')-x('742')*x('754')+x('666')) =e= 0;

model t1000 / all /;

$include t1000d.inc

x.lo(i) = xinit(i,'lower');
x.up(i) = xinit(i,'upper');
x.l (i) = xinit(i,'level');

option limcol=0, limrow=0, solprint=off;

solve t1000 min objf using nlp;

parameter report(i,*) summary report showing non optimal variables;

report(i,'t1000')$(abs(x.l(i)) > 1e-5)  = x.l(i);


* The following is an alternative formulation that produces
* a proper dual at the optimal point (suggested by A Drud).

equations con0a,con1a,con2a,con3a,con4a,con5a,con6a,con7a,con8a,con9a
          con0b,con1b,con2b,con3b      ,con5b,con6b                  ;


con0a..    (sum(i10(i), (x(i)-x(i-1))*(x(i+1)-x(i-1)))) =l= sqrt(tol);
con0b..    (sum(i10(i), (x(i)-x(i-1))*(x(i+1)-x(i-1)))) =g= -sqrt(tol);

con1a..    (x('111')+x('122')-x('133')-x('144')-x('155')+x('166')-x('177')+x('188')) =l= sqrt(tol);
con1b..    (x('111')+x('122')-x('133')-x('144')-x('155')+x('166')-x('177')+x('188')) =g= -sqrt(tol);

con2a..    (x('199')-x('203')*x('215')-x('227')*x('239')-x('242')*x('254')+x('266')) =l= sqrt(tol);
con2b..    (x('199')-x('203')*x('215')-x('227')*x('239')-x('242')*x('254')+x('266')) =g= -sqrt(tol);

con3a..    (x('279')-x('283')*x('295')-x('7')*x('23')-x('42')*x('54')+x('66')) =l= sqrt(tol);
con3b..    (x('279')-x('283')*x('295')-x('7')*x('23')-x('42')*x('54')+x('66')) =g= -sqrt(tol);

con4a..    (x('311')+x('322')-x('333')-x('344')-x('355')+x('366')-x('377')+x('388')) =e= 0;;

con5a..    (x('599')-x('603')*x('615')-x('627')*x('539')-x('542')*x('654')+x('666')) =l= sqrt(tol) ;
con5b..    (x('599')-x('603')*x('615')-x('627')*x('539')-x('542')*x('654')+x('666')) =g= -sqrt(tol) ;

con6a..    (x('679')-x('783')*x('795')-x('7')*x('23')-x('742')*x('754')+x('666')) =l= sqrt(tol);
con6b..    (x('679')-x('783')*x('795')-x('7')*x('23')-x('742')*x('754')+x('666')) =g= -sqrt(tol);

con7a..    (x('811')+x('322')-x('833')-x('344')-x('855')+x('366')-x('387')+x('888')) =e= 0;

con8a..    (x('899')-x('903')*x('915')-x('627')*x('939')-x('942')*x('654')+x('966')) =e= 0;

con9a..    (x('679')-x('783')*x('795')-x('7')*x('23')-x('742')*x('754')+x('666')) =e= 0;

model t1000a / objdef,defsq,defnoise
               con0a,con1a,con2a,con3a,con4a,con5a,con6a,con7a,con8a,con9a
               con0b,con1b,con2b,con3b      ,con5b,con6b /;

x.l (i) = xinit(i,'level');

solve t1000a min objf using nlp;


report(i,'t1000a')$(abs(x.l(i)) > 1e-5)  = x.l(i);

display report;
