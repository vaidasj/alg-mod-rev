option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Parts Supply Problem w/ 2 Types w/o Asymmetric Information (PS2_F,SEQ=359)

* Hideo Hashimoto, Kojun Hamada, and Nobuhiro Hosoe, "A Numerical Approach
*   to the Contract Theory: the Case of Adverse Selection", GRIPS Discussion
*   Paper 11-27, National Graduate Institute for Policy Studies, Tokyo, Japan,
*   March 2012.
*
*  http://r-center.grips.ac.jp/DiscussionPapersDetails/247/#

Option limcol=0,limrow=0;

* Definition of Set
Set     i       type of supplier        /eff, inf/;
Alias (i,j);
* Definition of Parameters
Parameter
        theta(i)        efficiency      /eff    0.2
                                        inf     0.3/
        p(i)            probability of type
                                        /eff    0.2
                                        inf     0.8/;
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
        pc(i)           participation constraint;

* Specification of Equations
obj..   Util =e= sum(i, p(i)*(b(i)-w(i)));
rev(i)..b(i) =e= x(i)**(0.5);
pc(i).. w(i)-theta(i)*x(i) =g= ru;

* Setting Lower Bounds on Variables to Avoid Division by Zero
x.lo(i)=0.0001;

* Defining and Solving the Model
Model FB1 /all/;
Solve FB1 maximizing Util using NLP;

* End of Model
