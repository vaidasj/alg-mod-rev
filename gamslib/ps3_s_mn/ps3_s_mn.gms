option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Parts Supply Problem w/ 3 Types w/ Monotonicity Constraint (PS3_S_MN,SEQ=366)

* Hideo Hashimoto, Kojun Hamada, and Nobuhiro Hosoe, "A Numerical Approach
*   to the Contract Theory: the Case of Adverse Selection", GRIPS Discussion
*   Paper 11-27, National Graduate Institute for Policy Studies, Tokyo, Japan,
*   March 2012.
*
*  http://r-center.grips.ac.jp/DiscussionPapersDetails/247/#

Option limcol=0,limrow=0;

* Definition of Set
Set     i       type of supplier        /0,1,2/;
Alias (i,j);
* Definition of Parameters
Parameter
        theta(i)        efficiency      /0      0.1
                                        1       0.2
                                        2       0.3/
        p(i)            probability of type
                                        /0      0.2
                                        1       0.5
                                        2       0.3/;
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
        licd(i)         incentive compatibility constraint
        mn(i)           monotonicity constraint;

* Specification of Equations
obj..   Util =e= sum(i, p(i)*(b(i)-w(i)));
rev(i)..b(i) =e= x(i)**(0.5);
pc(i).. w(i)-theta(i)*x(i) =g= ru;
licd(i)..w(i)-theta(i)*x(i) =g= w(i+1)-theta(i)*x(i+1);
mn(i).. x(i) =g= x(i+1);

* Setting Lower Bounds on Variables to Avoid Division by Zero
x.lo(i)=0.0001;

* Defining and Solving the Model
Model SB4 /all/;
Solve SB4 maximizing Util using NLP;

* The Case w/ alternative p(i)
p("0")  =0.30;
p("1")  =0.10;
p("2")  =0.60;
Solve SB4 maximizing Util using NLP;

* The Case w/ alternative theta(i)
* Assumning the original p(i)
p("0")  =0.20;
p("1")  =0.50;
p("2")  =0.30;
* Assumning alternative theta(i)
theta("0")=0.10;
theta("1")=0.30;
theta("2")=0.31;
Solve SB4 maximizing Util using NLP;

* End of Model
