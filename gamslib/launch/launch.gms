option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Launch Vehicle Design (LAUNCH,SEQ=161)
$Ontext

  This model designs a three stage launch vehicle, taking into
  account cost-estimation relationships for R&D and production costs
  for airframe, engines and an instrument unit.


Bracken, J, and McCormick, G P, Chapter 7. In Selected Applications
of Nonlinear Programming. John Wiley and Sons, New York, 1968,
pp. 58-82.

$Offtext

sets s stages  / stage-1, stage-2, stage-3 /
     b bound labels / lower, upper /

alias(s,ss);

sets  ge(s,ss)  s is greater than ss; ge(s,ss) = yes$(ord(s) >= ord(ss));

scalars pl    pay load (thousands of pound)  / 20 /
        numl  number of launches             / 10 /
        g     average gravity (est)          / 31.8 /


table pwbound(s,b)  propellant weight
         lower  upper
stage-1   12     16
stage-2   10     12
stage-3    7      9

parameters
   iwf(s)  weight fraction    /  stage-1  .5,  stage-2  .6,  stage-3  .7 /
   nume(s) number of engines  / (stage-1,stage-2)  5,  stage-3  1 /
   rde1(s) Engine R&D cost 1  / (stage-1,stage-2) -257.963, stage-3  32.591 /
   rde2(s) Engine R&D cost 2  / (stage-1,stage-2)  160.990, stage-3 181.806 /
   rde3(s) Engine R&D cost 3  / (stage-1,stage-2)   -0.146, stage-3   0.539 /
   rde4(s) Engine R&D cost 4  / (stage-1,stage-2)  282.874, stage-3 232.570 /
   rde5(s) Engine R&D cost 5  / (stage-1,stage-2)    0.648, stage-3   0.772 /

   pre1(s) Engine cost 1  / (stage-1,stage-2)   0.2085, stage-3   0.0705  /
   pre2(s) Engine cost 2  / (stage-1,stage-2)   2.509 , stage-3  -0.01807 /
   pre3(s) Engine cost 3  / (stage-1,stage-2)   0.736 , stage-3  -1.33   /
   pre4(s) Engine cost 4  / (stage-1,stage-2)   0.9744, stage-3 16.687   /
   pre5(s) Engine cost 5  / (stage-1,stage-2)  -0.229 , stage-3   0.498  / ;

* adjust from  c*(x/100)**b to (c*10**b)*(x/1000)**b for stage-3

   pre2('stage-3') = pre2('stage-3')*10**pre3('stage-3');
   pre4('stage-3') = pre4('stage-3')*10**pre5('stage-3');

variables aweight(s)  airframe weight (thousands of pounds)
          iweight(s)  inert weight (thousands of pounds)
          pweight(s)  propellant weight (thousands of pounds)
          instweight  instrument unit weight (thousands of pounds)
          weight(s)   total initial weight (thousands of pounds)
          length(s)   length of stage (feet)
          thrust(s)   thrust (thousands of pounds)
          ethrust(s)  single engine thrust (thousands of pounds)
          ms(s)       mass fraction
          t2w(s)      thrust to weight ratio
          t(s)        operating time
          vfac(s)     velocity factor
          v(s)        incremental velocity
          vt          total velocity
          cost        total cost;

equations diweight(s) definition of inert weight
          dweight(s)  definition of weight
          dthrust(s)  definition of thrust
          t2wr(s)     thrust to initial weight ratio definition
          msd(s)      mass fraction definition
          pwlower(s)  lower bound of propellant weight
          pwupper(s)  upper bound of propellant weight
          defvfac(s)  velocity factor definition
          defv(s)     definition of velocity
          defvt       definition of total velocity
          costdef     cost definition ;

diweight(s)..   iwf(s)*iweight(s) =e= aweight(s);

dweight(s).. weight(s) =e= sum(ss$ge(ss,s), iweight(ss) + pweight(ss))
                         + instweight + pl;

dthrust(s).. thrust(s) =e= nume(s)*ethrust(s);

t2wr(s)..    t2w(s)*weight(s) =e= thrust(s);

msd(s)..     (1-ms(s))*weight(s) =e= pweight(s);

pwlower(s).. pwbound(s,'lower')*iweight(s) =l= pweight(s);
pwupper(s).. pweight(s) =l= pwbound(s,'upper')*iweight(s);

defvfac(s).. vfac(s)*pweight(s) =e= thrust(s)*t(s);

defv(s).. v(s) =e= vfac(s)*g*log(1/ms(s));

defvt.. vt =e= sum(s, v(s));

costdef..  cost =e=

*  airframe R&D cost

    + 5272.77*sum(s, aweight(s)**1.2781*iweight(s)**(-0.1959)*
                        ms(s)**2.4242*thrust(s)**0.38745*pweight(s)**(-0.9904))

*  airframe production cost

    + .185214*sum(s, aweight(s)**0.3322*ms(s)**(-1.5935)*pweight(s)**0.2362*
                        length(s)**0.1079*nume(s)**0.1616*numl**0.9)

*  engine R&D cost

    + sum(s, rde1(s) + rde2(s)*(ethrust(s)/1000)**rde3(s) + rde4(s)*(ethrust(s)/1000)**rde5(s))

*   engine production cost

    + sum(s, ( pre1(s)*(ethrust(s)/1000) + pre2(s)*(ethrust(s)/1000)**pre3(s)
             + pre4(s)*(ethrust(s)/1000)**pre5(s))*(nume(s)*numl)**0.93)

*  instrument unit

    + 10.35*(15822e-6*(instweight*1000)**0.786 - 35.5)

    + numl**0.9*15822e-6*(instweight*1000)**0.786

*  launch operations

    + 8.5*numl*(3*sum(s, pweight(s))/1000)**0.460;

model launch / all /;

t2w.lo('stage-1') = 1.2;   t2w.up('stage-1') = 1.4 ;
t2w.lo('stage-2') =  .6;   t2w.up('stage-2') =  .75;
t2w.lo('stage-3') =  .7;   t2w.up('stage-3') =  .9 ;

ms.lo('stage-1')  = .25;   ms.up('stage-1') = .30;
ms.lo('stage-2')  = .24;   ms.up('stage-2') = .29;
ms.lo('stage-3')  = .16;   ms.up('stage-3') = .21;

length.lo('stage-1') = 125;  length.up('stage-1') = 150;
length.lo('stage-2') =  75;  length.up('stage-2') = 100;
length.lo('stage-3') =  50;  length.up('stage-3') =  70;

vfac.lo('stage-1') = 240;   vfac.up('stage-1') = 290;
vfac.lo('stage-2') = 240;   vfac.up('stage-2') = 290;
vfac.lo('stage-3') = 340;   vfac.up('stage-3') = 375;

vt.lo         = 35000;  vt.up         = 50000;
instweight.lo =   2.5;  instweight.up =   4.0;

v.lo(s) = 1000;
t.lo(s) =  100;

thrust.lo(s)  = 1;
aweight.lo(s) = 1;
iweight.lo(s) = 5;
pweight.lo(s) = 50;
ethrust.lo(s) = 20;

* this are the solution values the book
t.l ('stage-1') = 155;
t.l ('stage-2') = 314;
t.l ('stage-3') = 403;

iweight.l ('stage-1') = 136;
iweight.l ('stage-2') =  47;
iweight.l ('stage-3') =  16;

pweight.l ('stage-1') = 2176;
pweight.l ('stage-2') =  564;
pweight.l ('stage-3') =  144;

ethrust.l('stage-1') = 746;
ethrust.l('stage-2') =  96;
ethrust.l('stage-3') = 129;

length.l('stage-1') = 125;
length.l('stage-2') =  75;
length.l('stage-3') =  50;

ms.l('stage-1') = .3;
ms.l('stage-2') = .29;
ms.l('stage-3') = .21;

instweight.l = 2.5;
vt.l         = 38632;

solve launch using nlp minmizing cost;

