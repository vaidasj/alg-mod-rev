option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Minimum Circulation of Railway Stock (railcirc,SEQ=220)
$Ontext

This problem finds a least cost circulation of trainunits that meets
requirements of first and second class passenger demand on all timetable
trips. For a single traintype the MIP model always solves in the root,
for two and more traintypes it is a difficult MIP model.


Schrijver, A, Minimum Circulation of Railway Stock. CWI Quarterly 3
(1993), 205-217.

$Offtext


$eolcom //
$inlinecom /* */
Set    z trains in the timetable / z1*z36 /
       t all minutes of the day /
          0000*0059, 0100*0159, 0200*0259, 0300*0359,
          0400*0459, 0500*0559, 0600*0659, 0700*0759,
          0800*0859, 0900*0959, 1000*1059, 1100*1159,
          1200*1259, 1300*1359, 1400*1459, 1500*1559,
          1600*1659, 1700*1759, 1800*1859, 1900*1959,
          2000*2059, 2100*2159, 2200*2259, 2300*2359
         /
       s stations /
          Asd Amsterdam
          Rtd Rotterdam
          Rsd Roosendaal
          Vl  Vlissingen
         /
       tu trainunit type / tu1*tu2 /
       c service classes / First, Second /

Table trainunitdata (tu,*) train unit type data
         First       Second     NumberCars  Cost
tu1       38           163          3        4
tu2       65           218          4        5
;

Scalar maxcars maximum number of cars on a track / 15 /;

Table timetable(z,s,t,s,t,*)
   /* departure arrival */  First  Second
   z1 .Rtd.0700.Rsd.0740        4      58
   z1 .Rsd.0743.Vl .0838       14     328
   z2 .Asd.0648.Rtd.0755       47     340
   z2 .Rtd.0801.Rsd.0841       35     272
   z2 .Rsd.0843.Vl .0938       19     181
   z3 .Asd.0755.Rtd.0858      100     616
   z3 .Rtd.0902.Rsd.0941       52     396
   z3 .Rsd.0943.Vl .1038       27     270
   z4 .Asd.0856.Rtd.0958       61     407
   z4 .Rtd.1003.Rsd.1043       41     364
   z4 .Rsd.1045.Vl .1138       26     237
   z5 .Asd.0956.Rtd.1058       41     336
   z5 .Rtd.1102.Rsd.1141       26     240
   z5 .Rsd.1143.Vl .1238       24     208
   z6 .Asd.1056.Rtd.1158       31     282
   z6 .Rtd.1203.Rsd.1241       25     221
   z6 .Rsd.1243.Vl .1338       32     188
   z7 .Asd.1156.Rtd.1258       46     287
   z7 .Rtd.1302.Rsd.1341       27     252
   z7 .Rsd.1343.Vl .1438       15     180
   z8 .Asd.1256.Rtd.1358       42     297
   z8 .Rtd.1402.Rsd.1441       27     267
   z8 .Rsd.1443.Vl .1538       21     195
   z9 .Asd.1356.Rtd.1458       33     292
   z9 .Rtd.1502.Rsd.1541       28     287
   z9 .Rsd.1543.Vl .1638       23     290
   z10.Asd.1456.Rtd.1558       39     378
   z10.Rtd.1600.Rsd.1643       52     497
   z10.Rsd.1645.Vl .1740       41     388
   z11.Asd.1556.Rtd.1658       84     527
   z11.Rtd.1701.Rsd.1743      113     749
   z11.Rsd.1745.Vl .1840       76     504
   z12.Asd.1656.Rtd.1758      109     616
   z12.Rtd.1801.Rsd.1842       98     594
   z12.Rsd.1844.Vl .1939       67     381
   z13.Asd.1756.Rtd.1858       78     563
   z13.Rtd.1902.Rsd.1941       51     395
   z13.Rsd.1943.Vl .2038       43     276
   z14.Asd.1856.Rtd.1958       44     320
   z14.Rtd.2002.Rsd.2041       29     254
   z14.Rsd.2043.Vl .2138       20     187
   z15.Asd.1956.Rtd.2058       28     184
   z15.Rtd.2102.Rsd.2141       22     165
   z15.Rsd.2143.Vl .2238       15     136
   z16.Asd.2056.Rtd.2158       21     161
   z16.Rtd.2202.Rsd.2241       13     130
   z17.Asd.2156.Rtd.2258       28     190
   z17.Rtd.2302.Rsd.2354        8      77
   z18.Asd.2256.Rtd.2358       10     123
   z19.Rtd.0531.Asd.0639        7      61
   z20.Rsd.0529.Rtd.0628       16     167
   z20.Rtd.0629.Asd.0738       26     230
   z21.Vl .0530.Rsd.0635       28     138
   z21.Rsd.0643.Rtd.0726       88     449
   z21.Rtd.0732.Asd.0838      106     586
   z22.Vl .0654.Rsd.0748      100     448
   z22.Rsd.0752.Rtd.0832      134     628
   z22.Rtd.0835.Asd.0940      105     545
   z23.Vl .0756.Rsd.0850       48     449
   z23.Rsd.0853.Rtd.0932       57     397
   z23.Rtd.0934.Asd.1038       56     427
   z24.Vl .0856.Rsd.0950       57     436
   z24.Rsd.0953.Rtd.1032       71     521
   z24.Rtd.1034.Asd.1138       75     512
   z25.Vl .0956.Rsd.1050       24     224
   z25.Rsd.1053.Rtd.1132       34     281
   z25.Rtd.1134.Asd.1238       47     344
   z26.Vl .1056.Rsd.1150       19     177
   z26.Rsd.1153.Rtd.1232       26     214
   z26.Rtd.1234.Asd.1338       36     303
   z27.Vl .1156.Rsd.1250       19     184
   z27.Rsd.1253.Rtd.1332       22     218
   z27.Rtd.1335.Asd.1438       32     283
   z28.Vl .1256.Rsd.1350       17     181
   z28.Rsd.1353.Rtd.1432       21     174
   z28.Rtd.1435.Asd.1538       34     330
   z29.Vl .1356.Rsd.1450       19     165
   z29.Rsd.1453.Rtd.1532       25     206
   z29.Rtd.1534.Asd.1640       39     338
   z30.Vl .1456.Rsd.1550       22     225
   z30.Rsd.1553.Rtd.1632       35     298
   z30.Rtd.1634.Asd.1738       67     518
   z31.Vl .1556.Rsd.1650       39     332
   z31.Rsd.1653.Rtd.1733       51     422
   z31.Rtd.1735.Asd.1838       74     606
   z32.Vl .1656.Rsd.1750       30     309
   z32.Rsd.1753.Rtd.1832       32     313
   z32.Rtd.1834.Asd.1938       37     327
   z33.Vl .1756.Rsd.1850       19     164
   z33.Rsd.1853.Rtd.1932       20     156
   z33.Rtd.1934.Asd.2038       23     169
   z34.Vl .1856.Rsd.1950       15     142
   z34.Rsd.1953.Rtd.2032       14     155
   z34.Rtd.2035.Asd.2138       18     157
   z35.Vl .1955.Rsd.2049       11     121
   z35.Rsd.2052.Rtd.2130       14     130
   z35.Rtd.2132.Asd.2238       17     154
   z36.Rsd.2153.Rtd.2232        7      64
   z36.Rtd.2234.Asd.2338       11     143
;

Set g(s,t,s,t) timetable graph
   is(s,t,s,t) in-service arcs
   on(s,t,s,t) overnight arcs
      ste(s,t) station timetable events
first_ste(s,t) first station timetable event of the day
 last_ste(s,t) last station timetable event of the day
       tup(tu) subset of train units in the model

Alias (t,tt), (s,ss);

* Construct the timetable graph

loop((z,s,t,ss,tt)$sum(c,timetable(z,s,t,ss,tt,c)),
  ste(s,t) = yes; ste(ss,tt) = yes;  // station timetable events
  is(s,t,ss,tt) = yes;               // in-service arcs
  g(s,t,ss,tt) = yes;
);

loop(s,
* The first station time event of the day
  first_ste(ss,tt) = no;
  loop(ste(s,t)$(not card(first_ste)), first_ste(ste) = yes);

* All adjacent station time events are the in-station arcs
  last_ste(first_ste)  = yes;
  loop(ste(s,t)$(not first_ste(ste)),
    g(last_ste(s,tt),ste) = yes;
    last_ste(ss,tt) = no;
    last_ste(ste)   = yes;
  );

* Don't forget the overnight arc
  on(last_ste,first_ste) = yes;
  g(on) = yes;
);


Variable  f(tu,s,t,s,t)         the flow of train units
          obj                   the objective variable
Integer Variable f;

Equations circulation(tu,s,t)   inflow is equal outflow at each node
          demand(s,t,s,t,c)     demand of first and second class seats
          defmaxcars(s,t,s,t)   maximum cars on in-service arcs
          defobj                objective function;

circulation(tup,ste(s,t)).. sum(g(ss,tt,ste),f(tup,g)) =e=
                            sum(g(ste,ss,tt),f(tup,g));

demand(is,c)..     sum(z,timetable(z,is,c)) =l=
                   sum(tup, f(tup,is)*trainunitdata(tup,c));

defmaxcars(is)..   maxcars =g=
                   sum(tup, f(tup,is)*trainunitdata(tup,'NumberCars'));

defobj..           obj =e= sum((tup,on), f(tup,on)*trainunitdata(tup,'Cost'));

Model nscirc /all/ ;
option optcr=0;

* If we do one type of trainunit at a time, we can tighten the demand equation
f.lo(tu,is) = smax(c,ceil(sum(z,timetable(z,is,c)/trainunitdata(tu,c))));

Parameter rep solution report;

* Now trainunit tu1
tup('tu1') = yes; tup('tu2') = no;
solve nscirc using mip minimizing obj;

rep('tu1 only',tup) = sum(on, f.l(tup,on));
rep('tu1 only','Total cost') = obj.l;
rep('tu1 only','maxcars') = maxcars;

* Now trainunit tu2
tup('tu1') = no; tup('tu2') = yes;

* We have to reset maxcars to 16 because of service Rtd.1701 to Rsd.1743
* which requires 4 trains units of type tu2 and therefore 16 cars.
maxcars = 16;
solve nscirc using mip minimizing obj;

rep('tu2 only',tup) = sum(on, f.l(tup,on));
rep('tu2 only','maxcars') = maxcars;
rep('tu2 only','Total cost') = obj.l;

* Now both trainunits
tup('tu1') = yes; tup('tu2') = yes;

* Undo the tightening and go back to the original maxcars
maxcars = 15;
f.lo(tu,is) = 0;

* Take the 'tu1 only' single trainunit solution as a start
f.l("tu2",g) = 0;
nscirc.tryint = 0.1;

solve nscirc using mip minimizing obj; // this is a real MIP

rep('tu1+tu2 ',tup) = sum(on, f.l(tup,on));
rep('tu1+tu2 ','maxcars') = maxcars;
rep('tu1+tu2 ','Total cost') = obj.l;

display rep;
