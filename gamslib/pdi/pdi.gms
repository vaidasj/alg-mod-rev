option LP=convert;
option LP=convert;
option LP=convert;
$Title ARCNET - Production Distribution and Inventory  (PDI,SEQ=10)

$Ontext

This example of a typical two echelon production, distribution and inventory
problem (pdi) is taken from the arcnet user guide.


ARCNET, ARCNET User Guide, Analysis, Research and Computation,
Austin, Texas, 1982.

$Offtext


 Sets  p   production facilities   / one, two, three /
       d   distribution centers    / east, south, west, north /
       c   customer zones          / 1, 2, 3, 4, 5 /
       m   month                   / january, february, march, april /

 Table pfd(p,*)  production facility data (table 12.1)

          min-prod  max-prod  over-prod "prod-cost" over-cost
*         (units)   (units)   (units)    ($/unit)   ($/unit)
 one                 5000       1000       35         45
 two        1200     3000        500       40         43
 three       700     1500                  38

  Table fdec(p,d) first distribution echelon cost ($ per unit)

           east  south  west  north
 one        10    12
 two               8      4     5
 three                    6     8

  Table sdec(d,c) second distribution echelon cost ($ per unit)

            1   2   3   4   5
 east      15  19
 south         20  22  18
 west          16      18  19
 north                 15  21

 Set pd(p,d), dc(d,c); pd(p,d) = yes$fdec(p,d); dc(d,c) = yes$sdec(d,c);

 Display pd,dc,sdec;


 Table dcd(d,*)  distribution center data (table 12.3)

         max-invent  hold-cost
*         (units)     ($/unit)
 east      3000          2
 south     2500          2
 west      4000          1
 north     2500          3

 Table czd(c,*)  customer zone data (table 12.5)

         min-demand  max-demand  revenue
*         (units)     (units)     ($/unit)
 1      2000         2500        70
 2                   2500        68
 3      2000         3000        65
 4      1500         2000        72
 5      1500         3000        71


 Parameter pc(p,m)   production cost normal shift
           pco(p,m)  production cost overtime
           revfac(m) revenue factor / (january,february) = 1,  (march,april) = 1.1 /;

    pc(p,m) = pfd(p,"prod-cost") + floor(2**(ord(m)-1)/2);
    pco(p,m)= pfd(p,"over-cost") + ord(m) - (ord(m) lt card(m));

 Display pc, pco, revfac;

 Variables  x(p,d,m)  shipments from production to distribution
            y(d,c,m)  shipments from distribution centers to markets
            pn(p,m)   production
            po(p,m)   production: overtime
            s(d,m)    storage level
            dm(c)     demand level
            h(d,m)    handling
            profit, revenue, transport, production, holding

 Positive Variables x, y, pn, po, s, h;

 Equations  ib(d,m) inventory balance
            pb(p,m) production balance
            hb(d,m) handling balance
            db(c,m) demand balance
            ar      revenue balance
            at      transport balance
            ap      production cost balance
            ah      inventory holding cost definition
            apr     profit definition ;

 ib(d,m)..  h(d,m) =e= s(d,m-1) + sum(p$pd(p,d), x(p,d,m));

 pb(p,m)..  pn(p,m) + po(p,m) =e= sum(d$pd(p,d), x(p,d,m));

 hb(d,m)..  s(d,m) =e= h(d,m) - sum(c$dc(d,c), y(d,c,m)) ;

 db(c,m)..  sum(d$dc(d,c), y(d,c,m)) =e= dm(c);

 ar.. revenue    =e= sum((d,c,m)$dc(d,c), revfac(m)*czd(c,"revenue")*y(d,c,m));

 at.. transport  =e= sum((d,m), sum(p$pd(p,d), fdec(p,d)*x(p,d,m)) + sum(c$dc(d,c), sdec(d,c)*y(d,c,m)));

 ap.. production =e= sum((p,m), pc(p,m)*pn(p,m) + pco(p,m)*po(p,m));

 ah.. holding    =e= sum((d,m), dcd(d,"hold-cost")*s(d,m));

 apr..profit     =e= revenue - transport - production - holding + 10 ;

 Model pdi / all /;

 s.lo(d,"april") = 200; h.up(d,m) = dcd(d,"max-invent");
 pn.lo(p,m) = pfd(p,"min-prod"); pn.up(p,m) = pfd(p,"max-prod");
 po.up(p,m) = pfd(p,"over-prod"); dm.lo(c) = czd(c,"min-demand"); dm.up(c) = czd(c,"max-demand");

 Display h.up, pn.lo;

 Solve pdi maximizing profit using lp;
