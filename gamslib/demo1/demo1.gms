option LP=convert;
option LP=convert;
option LP=convert;
$Title Simple Farm Level Model (DEMO1,SEQ=91)
$Stitle Crop Data

$Ontext

   This is the first in a series of single farm models .  This simplest
   version has only 7 principal crops and 2 basic inputs, land and labor,
   which are specified on a monthly basis.


Kutcher, G P, Meeraus, A, and O'Mara, G T, Agriculture Sector and Policy
Models. The World Bank, 1988.

$Offtext


Sets  c crops   / wheat,  clover, beans, onions,
                  cotton, maize,  tomato  /
      t period  / jan, feb, mar, apr, may, jun,
                  jul, aug, sep, oct, nov, dec  /

Table landreq(t,c)  months of land occupation by crop (hectares)

    wheat  clover  beans  onions cotton maize  tomato
jan   1.     1.      1.     1.
feb   1.     1.      1.     1.
mar   1.      .5     1.     1.      .5
apr   1.             1.     1.     1.
may   1.                     .25   1.     .25
jun                                1.    1.
jul                                1.    1.      .75
aug                                1.    1.     1.
sep                                1.    1.     1.
oct                                1.     .5    1.
nov    .5     .25     .25    .5     .75          .75
dec   1.     1.      1.     1.

Table laborreq(t,c) crop labor requirements (man-days per hectare)

     wheat  clover beans  onions cotton maize  tomato
jan   1.72   4.5     .75   5.16
feb    .5    1.      .75   5.
mar   1.     8.      .75   5.      5.
apr   1.           16.    19.58    5.
may  17.16                 2.42    9.    4.3
jun   2.34                         2.    5.04
jul                                1.5   7.16   17.
aug                                2.    7.97   15.
sep                                1.    4.41   12.
oct                               26.    1.12    7.
nov   2.43   2.5    7.5   11.16   12.            6.
dec   1.35   7.5     .75   4.68

$Eject

Parameters yield(c) crop yield (tons per hectare) /
                    wheat  = 1.5, clover = 6.5,  beans  =  1, onions = 3
                    cotton = 1.5, maize  = 2  ,  tomato =  3  /

           price(c) crop prices (dollars per ton)             /
                    wheat  = 100, beans  = 200,  onions = 125
                    cotton = 350, maize  =  70,  tomato = 120 /

           miscost(c) misc cash costs (dollars per hectare)   /
                    wheat  =  10, beans  =   5,  onions =  50
                    cotton =  80, maize  =   5,  tomato =  50 /;
*   farm data, size labor availability etc.

Scalars land    farm size (hectares)                       /  4.  /
        famlab  family labor available (days per month)   / 25   /
        owage   hire-out  wage rate (dollars per day)     /  3.  /
        twage   temporary labor wage  (dollars per day)   /  4   /
        dpm     number of working days per month          / 25   /


$Stitle endogenous variables and equations

Variables  xcrop(c)   cropping activity         (hectares)
           yfarm      farm income               (dollars)
           revenue    value of production       (dollars)
           mcost      misc cash cost            (dollars)
           labcost    labor cost                (dollars)
           labearn    labor income              (dollars)
           flab(t)    family labor use          (days)
           fout(t)    hiring out                (days)
           tlab(t)    temporary labor           (days)

Positive Variable xcrop, flab ,fout, tlab

Equations  landbal(t)   land balance            (hectares)
           laborbal(t)  labor balance           (days)
           flabor(t)    family labor balance    (days)
           arev         revenue accounting      (dollars)
           acost        cash cost accounting    (dollars)
           alab         labor cost accounting   (dollars)
           aout         labor income accounting (dollars)
           income       income definition       (dollars);


landbal(t)..   sum(c, xcrop(c)*landreq(t,c))  =l= land             ;

laborbal(t)..  sum(c, xcrop(c)*laborreq(t,c)) =l= flab(t) + tlab(t);

flabor(t)..    famlab  =e= flab(t) + fout(t)                       ;

arev..         revenue =e= sum(c, xcrop(c)*yield(c)*price(c))      ;

acost..        mcost   =e= sum(c, xcrop(c)*miscost(c))             ;

alab..         labcost =e= sum(t, tlab(t)*twage)                   ;

aout..         labearn =e= sum(t, fout(t)*owage)                   ;

income..       yfarm   =e= revenue + labearn - labcost - mcost     ;


Model demo1 farm labor model / all /

Solve demo1 using lp maximizing yfarm;

$Stitle report on solution

Sets crep    / landuse, output, revenue /
     lrep    / demand,  family, temporary
               unused,  hire-out /

Parameters  croprep crop report summary
            labrep  labor report summary(days);

croprep("landuse",c)  = xcrop.l(c);
croprep("output",c)   = xcrop.l(c)*yield(c);
croprep("revenue",c)  = croprep("output",c)*price(c);
croprep(crep,"total") = sum(c, croprep(crep,c));

labrep(t,"demand")    = sum(c, xcrop.l(c)*laborreq(t,c));
labrep(t,"family")    = flab.l(t);
labrep(t,"temporary") = tlab.l(t);
labrep(t,"unused")    = -laborbal.l(t);
labrep(t,"hire-out")  = fout.l(t);
labrep("total",lrep)  = sum(t, labrep(t,lrep));
Display "landuse -- hectares "
        "output  -- tons     "
        "revenue -- dollars  ", croprep, labrep ;
