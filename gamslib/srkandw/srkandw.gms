option LP=convert;
option LP=convert;
option LP=convert;
$Title Stochastic Programming Scenario Reduction (SRKANDW,SEQ=248)

$ontext
A refinery can blend raw materials into different products. At present,
the management is trying to decide how much of each of the raw materials
to purchase and stock, so that they can be blended to satisfy the demand
for the products in future time periods. The demand has to be completely
satisfied, and in case of raw material shortage the products can be
outsourced at a higher cost. There is an inventory constraint on how much
raw material can be stocked in total.

Kall, P, and Wallace, S W, Stochastic Programming. John Wiley and Sons,
Chichester, England, 1994.

$offtext


sets i raw materials / raw-1, raw-2 /
     j products      / p-1,p-2 /
     t time periods  / time-1, time-2 /
     n nodes         / n-0*n-12 /;
alias(n,nn);

Parameters c(i) present cost of raw materials / raw-1 2, raw-2 3/;

table a(j,i) yields

       raw-1 raw-2
p-1     2    6
p-2     3    3.4        ;

table f(j,t) cost of outsourcing
      time-1  time-2
p-1     7       10
p-2    12       15      ;

scalar b inventory capacity / 50 /;


table stdat(n,*) scenario tree data
     prob   p-1  p-2
n-1   .3    200  180
n-2   .4    180  160
n-3   .3    160  140

n-4   .2    200  180
n-5   .5    180  160
n-6   .3    160  140

n-7   .3    200  180
n-8   .4    180  160
n-9   .3    160  140

n-10  .4    200  180
n-11  .4    180  160
n-12  .2    160  140    ;

set tn(t,n) time node mapping /
        time-1.(n-1*n-3),
        time-2.(n-4*n-12) /,
    tree(n,n) /
        n-0.(n-1*n-3),
        n-1.(n-4*n-6),
        n-2.(n-7*n-9),
        n-3.(n-10*n-12) /;
set sn(n) 'subset of nodes in reduced subtree',
    leaf(n) 'leaf nodes in original tree';

leaf(n)$[sum{tn('time-2',n), 1}] = YES;
display leaf;

parameter dem(j,n) stochastic demand
          prob(n)  node probability
          sprob(n) node probability in reduced tree;

dem(j,n) = stdat(n,j);

prob('n-0') = 1;
prob(n)$tn('time-1',n) = stdat(n,'prob');
prob(n)$tn('time-2',n) = sum(tree(nn,n), stdat(nn,'prob')*stdat(n,'prob'));

display prob;

variables x(i,t) raw material purchased for use in time t
          y(j,t,n) outsourced products
          cost
positive variables x,y;

equations obj   total cost definition
          bal   purchase limit
          dembal(j,t,n) demand balance;

obj.. cost =e= sum((i,t), c(i)*x(i,t))
             + sum((j,tn(t,sn)), sprob(sn)*f(j,t)*y(j,tn));

bal.. sum((i,t), x(i,t)) =l= b;

dembal(j,tn(t,sn))..
        sum(i, a(j,i)*x(i,t)) + y(j,tn) =g= dem(j,sn);

*  In order to use the SPOSL system we need to insert some dummy links
*  between stages two and three. Without these links, the SPOSL system will
*  identify only a two stage problem with different subproblem structures.
*  The value EPS is used to insert a constraint entry with numerical values
*  of zero.

equation dembalx(j,t,n) demand balance modified to include back link;

dembalx(j,tn(t,sn))..
        sum(i, a(j,i)*x(i,t)) + y(j,tn) =g= dem(j,sn)
                    + eps*sum(tree(nn,sn), y(j,t-1,nn));

model srkandw / obj, bal, dembalx /;

$if set noscenred $goto noscenreduction

* now we prepare to run ScenRed

* this includes some sets & parameters used for scenred I/O
$libinclude scenred2.gms

scalar    psum, rc, runCount, runMax;
set       run  / run1 * run9 /;
set       method  'reduction method used' /
        '0-default',
        '1-fastback',
        '2-fastback+forw',
        '3-fastback+back'       /;
parameter report(method,run,*);
set       rleaf(method,run,n) 'leaf set of reduced tree';

runMax = INF;
$if set runmax runMax = %runmax%;

ScenRedParms('report_level') = 0;
runCount = 0;
loop {method$(runCount < runMax),
    ScenRedParms('reduction_method') = ord(method)-1;
    loop {run$(runCount < runMax),
*       these parms control the tree output from ScenRed
*       at least one of the following two parameters is required
        ScenRedParms('red_num_leaves') = ord(run);
*       ScenRedParms('red_percentage') = 0.5;

$libinclude runscenred2 kandw scen_red n tree prob na sprob dem

        sn(n) = sprob(n);
        display ScenRedParms, ScenRedReport;
        display sprob, sn;

        psum = sum {leaf(sn), sprob(sn)};
        abort$[abs(psum-1) gt 1e-8]
          "Error in reduced tree: leaf probabilities do not sum to 1";

        solve srkandw min cost us lp;
        runCount = runCount + 1;

        report(method,run, 'obj') = srkandw.objval;
        report(method,run, 'red_percentage') =
             ScenRedReport('red_percentage');
        report(method,run, 'reduction_method') =
             ScenRedReport('reduction_method');
        report(method,run, 'run_time') =
             ScenRedReport('run_time');
        rleaf (method,run, leaf(sn)) = YES;
    };
};

display report;
display rleaf;



$ontext

* experiment with a different strategy here
* set the desired reduction in terms of distance, not the size
* also, there's really no need to dump the original tree more than once
ScenRedParms('red_num_leaves') = 0;

parameter report2(method,run,*);
set       rleaf2(method,run,n) 'leaf set of reduced tree';

runCount = 0;
loop {method$(runCount < runMax),
    ScenRedParms('reduction_method') = ord(method)-1;
    loop {run$((runCount < runMax) and (ord(run) <= 5)),
        ScenRedParms('red_percentage') = ord(run)/4;

$libinclude runscenred2 kandw scen_red n tree prob na sprob dem

        sn(n) = sprob(n);
        display ScenRedParms, ScenRedReport;
        display sprob, sn;

        psum = sum {leaf(sn), sprob(sn)};
        abort$[abs(psum-1) gt 1e-8]
          "Error in reduced tree: leaf probabilities do not sum to 1";

        solve srkandw min cost us lp;
        runCount = runCount + 1;

        report2(method,run, 'obj') = srkandw.objval;
        report2(method,run, 'red_percentage') =
              ScenRedReport('red_percentage');
        report2(method,run, 'red_leaves') =
              ScenRedReport('red_leaves');
        report2(method,run, 'reduction_method') =
              ScenRedReport('reduction_method');
        report2(method,run, 'run_time') =
              ScenRedReport('run_time');
        rleaf2 (method,run, leaf(sn)) = YES;
    };
};


display report2;
display rleaf2;
$offtext

$goto alldone

$label noscenreduction
* set "reduced tree" to be the whole tree
sn(n) = yes;
sprob(n) = prob(n);
solve srkandw min cost us lp;

$label alldone
