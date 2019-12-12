option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Parts Supply Problem w/ 10 Types & w/ Asymmetric Information (PS10_S,SEQ=368)

* Hideo Hashimoto, Kojun Hamada, and Nobuhiro Hosoe, "A Numerical Approach
*   to the Contract Theory: the Case of Adverse Selection", GRIPS Discussion
*   Paper 11-27, National Graduate Institute for Policy Studies, Tokyo, Japan,
*   March 2012.
*
*  http://r-center.grips.ac.jp/DiscussionPapersDetails/247/#

Option limcol=0,limrow=0;

* Definition of Set
Set     i       type of supplier        /0*9/;
Alias (i,j);
* Definition of Parameters
Parameter
        theta(i)        efficiency
        p(i)            probability of type;
theta(i)=ord(i) /card(i);
p(i)    =1      /card(i);

Scalar  ru              reservation utility     /0/;

* Definition of Primal/Dual Variables
Positive Variable
        x(i)            quality
        b(i)            maker's revenue
        w(i)            price;
Variable
        Util            maker's utility;
Equation
        obj             maker's utility function
        rev(i)          maker's revenue function
        pc(i)           participation constraint
        licd(i)         incentive compatibility constraint;

* Specification of Equations
obj..   Util =e= sum(i, p(i)*(b(i)-w(i)));
rev(i)..b(i) =e= x(i)**(0.5);
pc(i).. w(i)-theta(i)*x(i) =g= ru;
licd(i)..w(i)-theta(i)*x(i) =g= w(i+1)-theta(i)*x(i+1);

* Setting Lower Bounds on Variables to Avoid Division by Zero
x.lo(i)=0.0001;

* Defining and Solving the Model
Model SB_lic /all/;
Solve SB_lic maximizing Util using NLP;

* End of Model
File sol /solution_lic.csv/;
put sol;
sol.pc=5;
sol.pw=32767;

put "type" "x.l" "w.l" "b.l" "prob" "theta"/;
loop(i,
put i.tl x.l(i):20:10 w.l(i):20:10 b.l(i):20:10 p(i):20:10 theta(i):20:10/;
);
put "Util" Util.l:20:10 //;

put "Shadow price of IC(i,j)" /;
put "True type"; put "LICD" /;
loop(i, put i.tl licd.m(i):20:10; put /;);

* end
