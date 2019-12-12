option NLP=convert;
option NLP=convert;
option NLP=convert;
$title  Simple Trigonometric Example (TRIG,SEQ=261)
* Simple trigonometric problem from the LGO library
*
*   Solution: x* ~ 2.66695657     f(x*) ~ -3.76250149
*
*
* Janos Pinter, LGO - Users Guide, Pinter Consulting Services, Halifax,
* Canada, 2003.

variables x1, obj; equations objdef, ineq1; model m /all /;

objdef.. obj =e= SIN(11*x1) + COS(13*x1) - SIN(17*x1) - COS(19*x1);

ineq1.. -x1 + 5* SIN(x1) =l= 0;

x1.lo=-2; x1.up=5; x1.l=1;

solve m us nlp min obj;

scalar xdiff,fdiff; xdiff = 2.66695657 - x1.l; fdiff = -3.76250149 - obj.l;

display xdiff,fdiff;
