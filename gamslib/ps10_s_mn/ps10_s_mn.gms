option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Parts Supply Problem w/ 10 Types w/ Random p(i) (PS10_S_MN,SEQ=369)

* Hideo Hashimoto, Kojun Hamada, and Nobuhiro Hosoe, "A Numerical Approach
*   to the Contract Theory: the Case of Adverse Selection", GRIPS Discussion
*   Paper 11-27, National Graduate Institute for Policy Studies, Tokyo, Japan,
*   March 2012.
*
*  http://r-center.grips.ac.jp/DiscussionPapersDetails/247/#

Option limcol=0,limrow=0,solprint=off;

* Definition of Set
Set     i       type of supplier                /0*9/
        t       no. of Monte-Carlo draws        /1*1000/;
Alias (i,j);
* Definition of Parameters
Parameter
        theta(i)        efficiency
        pt(i,t)         probability of type
        p(i)            probability of type;
theta(i)        =ord(i)/card(i);

* Generating probability
loop(t,pt(i,t)  =uniform(0,1););
pt(i,t)         =pt(i,t)/sum(j,pt(j,t));
*pt(i,"1")=1/card(i);
Parameter
        F(i,t)          "cumulative probability (Itho p. 42)"
        noMHRC0(i,t)    "no MHRC combination between i and i-1"
*                       (MHRC: monotone hazard rate condition)
        noMHRC(t)       ">=1: no MHRC case";
F(i,t)  =sum(j$(ord(j) le ord(i)), pt(j,t));
noMHRC0(i,t)$(ord(i) lt card(i))
        =1$(F(i,t)/pt(i+1,t) lt F(i-1,t)/pt(i,t));
noMHRC(t)$(sum(i, noMHRC0(i,t)) ge 1)=1;

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
        licu(i)         incentive compatibility constraint
        ic(i,j)         global incentive compatibility constraint
        mn(i)           monotonicity constraint;

* Specification of Equations
obj..   Util =e= sum(i, p(i)*(b(i)-w(i)));
rev(i)..b(i) =e= x(i)**(0.5);
pc(i)..  w(i)-theta(i)*x(i) =g= ru;
licd(i)..w(i)-theta(i)*x(i) =g= w(i+1)-theta(i)*x(i+1);
licu(i)..w(i)-theta(i)*x(i) =g= w(i-1)-theta(i)*x(i-1);
ic(i,j)..w(i)-theta(i)*x(i) =g= w(j)-theta(i)*x(j);
mn(i).. x(i) =g= x(i+1);

* Setting Lower Bounds on Variables to Avoid Division by Zero
x.lo(i)=0.0001;

* Defining and Solving the Model
Model SB_lic    /obj,rev,pc,licd/;
Model SB_lic2   /obj,rev,pc,licd,mn/;

* Options to solve models quickly
SB_lic.solvelink=5;
SB_lic2.solvelink=5;

Parameter       Util_lic(t)     "Util solved w/o MN"
                Util_lic2(t)    "Util solved w/ MN"
                Util_gap(t)     "Gap between these two Util"
                x_lic(i,t)      "x solved in w/o MN"
                x_lic2(i,t)     "x solved in w/ MN"
                MN_lic(t)       "Monotonicity of x solved w/o MN"
                MN_lic2(t)      "Monotonicity of x solved w/ MN"

loop(t,
p(i)=pt(i,t);

* Solving the model w/o MN
Solve SB_lic maximizing Util using NLP;
Util_lic(t)=util.l;
x_lic(i,t)=x.l(i);
MN_lic(t)=sum(i, 1$(round(x.l(i),10) lt round(x.l(i+1),10)));

* Solving the model w/ MN
Solve SB_lic2 maximizing Util using NLP;
Util_lic2(t)=util.l;
x_lic2(i,t)=x.l(i);
MN_lic2(t)=sum(i, 1$(round(x.l(i),10) lt round(x.l(i+1),10)));
);

Util_gap(t)=1$(round(Util_lic(t),10) ne round(Util_Lic2(t),10));

* Computing probability that MHRC and MN holds.
Parameter
        p_noMHRC        no MHRC case [%]
        p_noMN_lic      no MN case [%]
        p_Util_gap      no Util-equality case [%]
;
p_noMHRC        =sum(t$(noMHRC(t) gt 0),        1)      /card(t)*100;
p_noMN_lic      =sum(t$(MN_lic(t) gt 0),        1)      /card(t)*100;
p_Util_gap      =sum(t$(Util_gap(t) gt 0),      1)      /card(t)*100;

Display p_noMHRC,p_noMN_LIC,p_Util_gap;
* End of Model

* Generating CSV file for summary
File sol /solution_lic.csv/;
put sol;
sol.pc=5;
sol.pw=32767;

put ""; loop(i, put "pt(i,t)";); put "" "" "" ""; loop(i, put "x: w/o MN";); loop(i, put  "x: w/ MN";); put /;
put ""; loop(i, put i.tl;); put ">=1: no MHRC" "Util: w/o MN" "Util: w/ MN" "Util_gap: =1: not equal";
        loop(i, put i.tl;); loop(i, put i.tl;); put "MN_lic: >=1: no MN" "MN_lic2: >=1: no MN"/;
loop(t, put t.tl; loop(i, put pt(i,t):10:5;); put noMHRC(t) Util_lic(t):20:10 Util_Lic2(t):20:10 Util_gap(t);
        loop(i, put X_lic(i,t);); loop(i, put X_lic2(i,t);); put MN_lic(t) MN_lic2(t)/;);
put /;
* End of CSV file generation
