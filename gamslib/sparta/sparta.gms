option LP=convert;
option LP=convert;
option LP=convert;
$Title Military Manpower Planning from Wagner (SPARTA,SEQ=108)

$Ontext

   Soldiers can be enlisted for 1, 2, 3 or 4 years, and the decision
   is how many soldiers to enlist for each enlistment period in each
   year.

   This problem can be formulated using stock or flow variables. Four
   different formulations are presented here. The most readable
   formulation is the one using a stock variable. Although requiring
   more variables, the stock formulation has fewer nonzero entries in
   the matrix and is also preferred from a computational point of view.


Wagner, H M, Military Manpower Planning Example. In Principles of
Operations Research with Applications to Managerial Decisions,
Second Edition. Prentice-Hall, 1975, p. 66.

$Offtext

Sets  t  time periods (years)         / 1*10 /
      l  length of enlistment (years) / len-1*len-4 /

Alias (l,lp),(t,tp)

Set ttl(t,tp,l) variable map representing enlistment schedules;

ttl(t,tp,l) = yes$(ord(tp) le ord(t) and ord(tp)+ord(l) gt ord(t));
Display ttl;

Parameters
  infl(t) inflation index   / 1 1.00, 2 1.05, 3 1.12, 4 1.71, 5 1.80
                              6 1.90, 7 1.97, 8 2.10, 9 2.22,10 2.38 /
  req(t)  troop requirement / 1    5, 2    6, 3    7, 4    6, 5    4
                              6    9, 7    8, 8    8, 9    6, 10   4 /
  clen(l) cost of service   / len-1 50, len-2 85, len-3 115, len-4 143 /

Variables x(t,l) recruits by year and length of enlistment
          e(t)   enlisted men
          z      total cost
Positive Variable x;

Equations cost      cost definition
          bal1(t)  troop balance - flow balance using lag operators
          bal2(t)  troop balance - flow balance with explicit conditions
          bal3(t)  troop balance - flow balance with intermediate cond
          bal4(t)  troop balance - stock balance;

cost.. z =e= sum((t,l), infl(t)*clen(l)*x(t,l));

bal1(t).. sum((l,lp), x(t-(ord(l)-1),lp+(ord(l)-1))) =g= req(t);

bal2(t).. sum((tp,l)$(ord(tp)        le ord(t) and
                      ord(tp)+ord(l) gt ord(t)), x(tp,l)) =g= req(t);

bal3(t).. sum(ttl(t,tp,l), x(tp,l)) =g= req(t);

bal4(t).. e(t) =e= e(t-1) + sum(l, x(t,l) - x(t-ord(l),l));

e.lo(t) = req(t);

Model sparta1 / cost, bal1 /
      sparta2 / cost, bal2 /
      sparta3 / cost, bal3 /
      sparta4 / cost, bal4 /;

Solve sparta1 using lp minimizing z;
Solve sparta2 using lp minimizing z;
Solve sparta3 using lp minimizing z;
Solve sparta4 using lp minimizing z;

Parameter rep  summary report;

rep('required',' ',t) = req(t);
rep('enlisted',' ',t) = e.l(t);
rep('m-cost',' ',t)   = e.m(t);
rep('recruits',l,t)   = x.l(t,l);

Display rep;
