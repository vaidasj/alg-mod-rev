option LP=convert;
option LP=convert;
option LP=convert;
$Title Aluminum Alloy Smelter Sample Problem  (IBM1,SEQ=79)

$Ontext

   This simple alloy smelter blending problem is used as an introductory
   example in several mpsx manuals.


IBM, MPSX/370 Primer. Tech. rep., IBM, 1979.

$Offtext


 Sets  s     scrap metals for blending / bin-1*bin-5, aluminum, silicon /
       sl(s) locally available blends  / bin-1*bin-5 /
       e     chemical elements         / iron, copper, manganese, magnesium
                                         aluminum, silicon /

 Table bspec(e,*) blending specs (lb for 2000 lb ingot)

             maximum  minimum
 iron          60
 copper       100
 manganese     40
 magnesium     30
 aluminum     inf      1500
 silicon      300       250


 Table prop(e,s)  chemical properties (proportions)

           bin-1  bin-2  bin-3  bin-4  bin-5  aluminum  silicon
 iron        .15   .04    .02    .04    .02      .01       .03
 copper      .03   .05    .08    .02    .06      .01
 manganese   .02   .04    .01    .02    .02
 magnesium   .02   .03                  .01
 aluminum    .70   .75    .80    .75    .80      .97
 silicon     .02   .06    .08    .12    .02      .01       .97

 Parameter dcheck(s) other elements in prop (prop);
           dcheck(s) = 1 - sum(e, prop(e,s)) ; display dcheck;

 Table sup(s,*) supply and cost data

            inventory  min-use   cost
*              (lb)      (lb)   ($/lb)
 bin-1        200                .03
 bin-2        750                .08
 bin-3        800        400     .17
 bin-4        700        100     .12
 bin-5       1500                .15
 aluminum     inf                .21
 silicon      inf                .38


 Variables  x(s)  blending components  (lb)
            bc(e) elements in blend    (lb)
            cost  total material cost  ($)

 Equations  yield   final blend requirements (lb)
            ebal(e) element balance          (lb)
            cdef    cost definition          ($) ;

 yield.. sum(s, x(s)) =e= 2000 ;

 ebal(e).. bc(e) =e= sum(s, prop(e,s)*x(s)) ;

 cdef.. cost =e= sum(s, sup(s,"cost")*x(s));

 Model alloy alloy blending model / all / ;

 x.lo(s) = sup(s,"min-use"); x.up(s) = sup(s,"inventory");
 bc.lo(e) = bspec(e,"minimum"); bc.up(e) = bspec(e,"maximum");

 Parameter report(s,*) blending results ;


 Solve alloy minimizing cost using lp;
 report(s,"run-1") = x.l(s);

 Option solprint=off;
 Options limcol=0, limrow=0;

 prop("iron","silicon") = .02; prop("silicon","silicon") = .98;
 Solve alloy minimizing cost using lp;
 report(s,"run-2") = x.l(s);

 prop("iron","silicon") = .01; prop("silicon","silicon") = .99;
 Solve alloy minimizing cost using lp;
 report(s,"run-3") = x.l(s);

 prop("iron","silicon") = 0; prop("silicon","silicon") = 1.0;
 Option solprint=on;
 Solve alloy minimizing cost using lp;
 report(s,"run-4") = x.l(s);

 Display report;

 Parameter costrep example cost report for 2000lb batch;

 costrep(s          ,"cost    ") = sup(s,"cost");
 costrep(s          ,"quantity") = x.l(s);
 costrep(s          ,"c-cost  ") = costrep(s,"cost")*costrep(s,"quantity");
 costrep("**total**","c-cost  ") = sum(s, costrep(s,"c-cost"));

 Display costrep;
* demonstrates GAMS' rounding capabilities according to ecl manual

 Parameters xr(s)  rounded solution value
            xr3(s) numerical error rounding at third decimal
            num    rounded solution counter ;

 xr(s)  = round(x.l(s));
 xr3(s) = round(x.l(s),3);
 num = 0; loop(s$(xr(s) ne xr3(s) and num lt 2),
             x.lo(s)$(xr(s) gt xr3(s)) = xr(s);
             x.up(s)$(xr(s) lt xr3(s)) = xr(s); num = num + 1 ) ;
 Solve alloy minimizing cost using lp;
