option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title   M A G I C   Power Scheduling Problem   (MAGIC,SEQ=12)

$Ontext

A number of power stations are committed to meet demand for a particular
day. three types of generators having different operating characteristics
are available.  Generating units can be shut down or operate between
minimum and maximum output levels.  Units can be started up or closed down
in every demand block.


Garver, L L, Power Scheduling by Integer Programming,
Tariff-Rates-Power-Generation-Problem, IEEE Trans. Power Apparatus
and Systems, 81, 730-735, 1963

Day, R E, and Williams, H P, MAGIC: The design and use of an interactive
modeling language for mathematical programming. Tech. rep., Department
Business Studies, University of Edinburgh, 1982.

Williams, H P, Model Building in Mathematical Programming. John Wiley
and Sons, 1978.

$Offtext


 Sets  t  demand blocks / 12pm-6am, 6am-9am, 9am-3pm, 3pm-6pm, 6pm-12pm /
       g  generators    / type-1, type-2, type-3 /

 Parameters dem(t)  demand (1000mw)   / 12pm-6am  15, 6am-9am   30, 9am-3pm   25, 3pm-6pm  40, 6pm-12pm   27 /
            dur(t)  duration (hours)  / 12pm-6am   6, 6am-9am    3, 9am-3pm    6, 3pm-6pm    3, 6pm-12pm   6 /

 Table data(g,*)  generation data

         min-pow  max-pow  cost-min  cost-inc  start    number
*        (1000mw) (1000mw)  (l/h)    (l/h/mw)   (l)     (units)

 type-1    .85      2.0      1000       2.0     2000      12
 type-2   1.25      1.75     2600       1.3     1000      10
 type-3   1.5       4.0      3000       3.0      500       5

 Parameters peak     peak power (1000mw)
            ener(t)  energy demand in load block (1000mwh)
            tener    total energy demanded (1000mwh)
            lf       load factor ;

  peak = smax(t, dem(t));  ener(t) = dur(t)*dem(t);  tener = sum(t, ener(t));  lf = tener/(peak*24);
  display peak, tener, lf, ener;

$eject
 Variables  x(g,t)  generator output (1000mw)
            n(g,t)  number of generators in use
            s(g,t)  number of generators started up
            cost    total operating cost (l)

 Integer Variables n; Positive Variable s;

 Equations pow(t)    demand for power (1000mw)
           res(t)    spinning reserve requirements (1000mw)
           st(g,t)   start-up definition
           minu(g,t) minimum generation level (1000mw)
           maxu(g,t) maximum generation level (1000mw)
           cdef      cost definition (l);

 pow(t)..  sum(g, x(g,t)) =g= dem(t);

 res(t)..  sum(g, data(g,"max-pow")*n(g,t)) =g= 1.15*dem(t);

 st(g,t).. s(g,t) =g= n(g,t) - n(g,t--1);

 minu(g,t)..  x(g,t) =g= data(g,"min-pow")*n(g,t);

 maxu(g,t)..  x(g,t) =l= data(g,"max-pow")*n(g,t);

 cdef.. cost =e= sum((g,t), dur(t)*data(g,"cost-min")*n(g,t) + data(g,"start")*s(g,t)
               + 1000*dur(t)*data(g,"cost-inc")*(x(g,t)-data(g,"min-pow")*n(g,t)) );

  n.up(g,t) = data(g,"number");

 Model william / all /; william.optcr = 0;

 Solve william minimizing cost using mip;

 Parameter rep  summary report;

    rep(t,"demand")    =  dem(t);
    rep(t,"spinning")  =  sum(g, data(g,"max-pow")*n.l(g,t));
    rep(t,"start-ups") =  sum(g, s.l(g,t));
    rep(t,"m-cost")    = -pow.m(t)/dur(t)/1000;

 Display rep;

