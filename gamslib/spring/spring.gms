option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Coil Compression String Design (SPRING,SEQ=206)
$Ontext
  Coil compression spring design problem, finds minimum volume
  of wire for the production of a coil compression spring


Sangren, E, Nonlinear Integer and Discrete Programming in Mechanical
Design Optimization. Journal of Mechanical Design, Trans.
ASME 112 (1990), 223-229.

$Offtext

Set i possible wire types / g-1 * g-11 /;

Parameters

   b(i)  Allowable wire diameters (in) / g-1    0.207
                                         g-2    0.225
                                         g-3    0.244
                                         g-4    0.263
                                         g-5    0.283
                                         g-6    0.307
                                         g-7    0.331
                                         g-8    0.362
                                         g-9    0.394
                                         g-10   0.4375
                                         g-11   0.500 /

   Pload  preload (lb)                     /   300           /
   Pmax   max working load (lb)            /  1000           /
   delm   max deflection (in)              /     6           /
   delw   deflection from preload (in)     /     1.25        /
   lmax   max free length of spring (in)   /    14           /
   coilmax   max coil diameter (in)        /     3           /
   pi     pi                               /     3.141592654 /
   S      max shear stress                 / 189e3           /
   G      shear modulus of material        / 11.5e6          /


variables coil   coil diameter
          wire   wire diameter
          del    deflection
          N      number of coils
          C      constant
          K      constant
          y(i)   wire choice
          volume

binary variable y; integer variable n;

Equations voldef   definition of total volume of coil spring
          defC, defK, shear, defdel, freel, CoilWidth, defWire, selectWire;


voldef..  volume =e=  (N+2)/2*PI*coil*wire**2;

DefC..    C =e= coil/wire;

DefK..    K =e= (4*C - 1) / (4*C - 4) + 0.615 / C;

shear..   8*Pmax/PI*K*C/wire**2 =l= S;

Defdel..  del =e= 8*N/G*power(C,3)/wire;

freel..   Pmax*del + 1.05*(N+2)*wire =l= lmax;

CoilWidth..  coil + wire =l= coilmax;

DefWire..    wire =e= SUM(i, b(i)*y(i));

SelectWire.. SUM(i, y(i)) =e= 1;

model spring / all /;

* set some bounds

del.up  = delm/Pload;
del.lo  = delw/(Pmax - Pload);
wire.lo = smin(i, b(i));
c.lo    = 1.1;
coil.lo = 2*wire.lo;
n.lo    = 1;

* Starting point
y.l(i) = 1/card(i);
wire.l = SUM(i, b(i)*y.l(i));
coil.l = coilmax - wire.l;
c.l    = coil.l/wire.l;

solve spring using minlp minimizing volume;
