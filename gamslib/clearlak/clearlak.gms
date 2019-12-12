option LP=convert;
option LP=convert;
option LP=convert;
$TITLE Scenario Reduction: ClearLake exercise (CLEARLAK,SEQ=249)

$ontext

Exercise, p. 44:

The Clear Lake Dam controls the water level in Clear Lake, a
well-known resort in Dreamland.  The Dam Commission is trying to
decide how much water to release in each of the next four months.
The Lake is currently 150 mm below flood stage.  The dam is capable
of lowering the water level 200 mm each month, but additional
precipitation and evaporation affect the dam.  The weather near Clear
Lake is highly variable.  The Dam Commission has divided the months
into two two-month blocks of similar weather.  The months within each
block have the same probabilities for weather, which are assumed
independent of one another.  In each month of the first block, they
assign a probability of 1/2 to having a natural 100-mm increase in
water levels and probabilities of 1/4 to having a 50-mm decrease or a
250-mm increase in water levels.  All these figures correspond to
natural changes in water level without dam releases.  In each month
of the second block, they assign a probability of 1/2 to having a
natural 150-mm increase in water levels and probabilities of 1/4 to
having a 50-mm increase or a 350-mm increase in water levels.  If a
flood occurs, then damage is assessed at $10,000 per mm above flood
level.  A water level too low leads to costly importation of water.
These costs are $5000 per mm less than 250 mm below flood stage.  The
commission first considers an overall goal of minimizing expected
costs.  This model only considers this first objective.


Birge, R, and Louveaux, F V, Introduction to Stochastic Programming.
Springer, 1997.

$offtext


SET     p       Precipitation levels in each month /low, normal, high/
        t       Time periods /dec,jan,feb,mar,apr/
        baset(t) / dec /
        w       Weather conditions /wet, dry/;
SET     tw(t,w)        relates months to weather conditions /
                (jan,feb).wet
                (mar,apr).dry
                /;

SET     n       nodes / n1 * n121 /;
ALIAS   (n,parent,child);
SET     root(n)        root node / n1 /
        tn(t,n) map nodes to time periods
        anc(child,parent) ancestor mapping
        np(n,p)           maps nodes to precipitation level
        leaf(n);

np(n,p)$[mod(ord(n)-2,card(p)) eq ord(p)-1] = yes;
np(root,p) = no;
* display np;

scalar tmp1, tmp2;
tmp1 = 0;
loop {t,
    tmp2 = (power[card(p), ord(t)]) / (card(p)-1);
    tn(t,n)$[ord(n) ge tmp1  and  ord(n) lt tmp2] = yes;
    tmp1 = tmp2;
};
* display tn;
anc(child,parent)$[floor((ord(child)+1)/card(p)) eq ord(parent)] = yes;
* display anc;
leaf(n)$[ord(n) gt (power[card(p), card(t)-1] - 1) / (card(p)-1)] =  yes;
* display leaf;

TABLE  delta(w,p)  Changes in reservoir level for each season
                        low     normal  high
                dry     -50     100     250
                wet     50      150     350     ;

PARAMETER       pr(p)  Probability distribution /
low     0.25,
normal         0.50,
high    0.25
/;

PARAMETER nprob(n)      probability of being at any node;
nprob(root) = 1;
loop {anc(child,parent),
    nprob(child) = sum {np(child,p), pr(p)} * nprob(parent);
};
* display nprob;

* ndelta required for current scenRed implementation
PARAMETER ndelta(n)     water delta at each node;
ndelta(n) = sum {(tw(t,w), np(n,p))$[tn(t,n)], delta(w,p)};
* display ndelta;

tmp1 = sum {leaf, nprob(leaf)};
abort$[abs(tmp1-1) gt 1e-8] "Error in tree: leaf probabilities do not sum to 1";


SCALAR floodCost        'K$/mm for amounts over flood level' / 10 /;
SCALAR lowCost          'K$/mm for amounts 250mm below flood level' / 5 /;
SCALAR l0               'initial water level' /100/;

VARIABLE                ec      'Expected value of cost';
POSITIVE VARIABLE       l(t,n)  'level of water in dam, EOP'
                        r(t,n)  'mm released normally'
                        f(t,n)  'mm of floodwater released'
                        z(t,n)  'mm of water imported';

r.up(t,n) = 200;
* water level l is relative to 250mm below flood stage
l.up(t,n) = 250;
l.fx(baset,n) = l0;

SET     nn(n)              nodes in reduced tree
        sanc(child,parent) ancestor mapping for reduced tree
        canc(child,parent) computed ancestor mapping for reduced tree;
PARAMETER snprob(n)        probabilities for reduced tree;

EQUATIONS               ecdef, ldef(t,n);

ecdef..         ec =e= sum {tn(t,nn), snprob(nn) *
                             [floodCost * f(t,nn) + lowCost * z(t,nn)]};

ldef(tn(t,nn))$[not root(nn)]..
                l(t,nn) =e= sum {anc(nn,parent), l(t-1,parent)}
                         + ndelta(nn) + z(t,nn)
                         - r(t,nn) - f(t,nn);

model mincost / ecdef, ldef /;

$if set noscenred $goto noscenreduction

* now let's shrink the node set
$libinclude scenred.gms

ScenRedParms('num_leaves') =  sum {leaf, 1};
ScenRedParms('num_random') = 1;
ScenRedParms('num_nodes') = card(n);
ScenRedParms('num_time_steps') = card(t);
* typically, one of the following two parameters is set
ScenRedParms('red_percentage') = 0.5;

* optional SCENRED input parameters: defaults are commented
* ScenRedParms('num_stages') = ScenRedParms('num_time_steps');
* ScenRedParms('reduction_method') = 0;
* ScenRedParms('where_random') = 10;
* ScenRedParms('report_level') = 0;
ScenRedParms('run_time_limit') = 60;

execute_unload 'lakein.gdx',  ScenRedParms, n, anc, nprob, ndelta;
execute 'rm -f lakeout.gdx';
file opts / 'scenred.opt' /;
putclose opts   'log_file =    lakelog.txt'
              / 'input_gdx     lakein.gdx'
              / 'output_gdx =  lakeout.gdx';
execute 'scenred scenred.opt %system.redirlog%';
execute_load   'lakeout.gdx', ScenRedReport, snprob=red_prob,
                              sanc=red_ancestor;
display ScenRedReport;
display snprob;

nn(n) = snprob(n);
display nn;


* -- BEGIN consistency check of output -- *
canc(anc(child,parent))$[nn(child)] = YES;
display canc, sanc;

SET     chk(child,parent);
chk(child,parent) = NO;
chk(canc(child,parent)) = YES;
chk(sanc(child,parent)) = NO;
abort$[sum{chk, 1}] "Error in reduced tree: inconsistent output", chk;

chk(sanc(child,parent)) = YES;
chk(canc(child,parent)) = NO;
abort$[sum{chk, 1}] "Error in reduced tree: inconsistent output", chk;

tmp1 = sum {leaf(nn), snprob(leaf)} - 1;
abort$[abs(tmp1) gt 1e-8]
 "Error in tree: leaf probabilities do not sum to 1", tmp1;
* -- END consistency check of output -- *

$goto donered


$label noscenreduction
* if no reduction done, assign entire tree to subsets
nn(n) = yes;
snprob(nn) = nprob(nn);

$label donered

solve mincost using lp min ec;
