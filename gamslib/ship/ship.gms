option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Structural Optimization    (SHIP,SEQ=22)

$Ontext

This model designs a vertically corrugated transverse bulkhead of an
oil tanker. The objective is to design for minimum weight and
meet stress, moment of inertia and plate thickness constraints.


Bracken, J, and McCormick, G P, Chapter 6. In Selected Applications of
Nonlinear Programming. John Wiley and Sons, New York, 1968.

$Offtext

 Set s bulkhead sections / top, middle, bottom /; alias (s,sp)

 Scalars  gam   specific gravity of water (kg cm-3)  / .001 /
          sig   maximum bending stress    (kg cm-2)  / 1200 /
          dnv   det norske veritas factor            / 3.9 /
          ca    corrosion allowance       (cm)       / na /
          e     flange effectiveness                 / na /
          ha    height above panel         (cm)       / 250 /
          gamsteel specific weight of steel          / .0078 /
          width width of panel            (m)       / na /
          tlow  lower bound on t          (cm)      / na /

 Parameters h(s)  height at the middle of panel (cm)
            hb(s) height at the base of panel   (cm)
            k1(s) constant number one
            k2(s) constant number two
            l(s)  length of panel               (cm)
                  / top 495, middle 385, bottom 315 / ;

  hb(s) = ha + sum(sp$(ord(sp) le ord(s)), l(sp));
  h(s)  = hb(s) - l(s)/2;
  k1(s) = gam*h(s)*l(s)*l(s)/12/sig;
  k2(s) = dnv*1.05e-4*sqrt(hb(s));

 Display l, h, hb, k1, k2;

*  the reference does not contain values for the parameters
*  e, width, ca, and t.lo. from reported optimal solutions and
*  using constraints stress and inertia a value for e can be calculated.
*  the width is only a scaling constant and is set to 500. ca is assumed
*  to be .2 and the lower bound of 1.05 on t was read out from
*  solution values.

 e = .8; width = 500; ca = .2; tlow = 1.05;

 Variables  z(s)      module (cm3)
            t(s)      plate thickness (cm)
            wl        width of flange (cm)
            lw        length of web   (cm)
            d         depth of corrugation (cm)
            wc        width of corrugation (cm)
            w         weight of structure   (tons)

 Equations  zdef(s)      module definition (cm3)
            wdef         width of corrugation - definition (cm)
            stress(s)    bending stress    (kg cm-2)
            inertia(s)   moment of inertia (cm4)
            platew(s)    plate thickness - width of flange (cm)
            platel(s)    plate thickness - length of web   (cm)
            geom         geometric constraint       (cm)
            weight       total weight of structure  (tons) ;

 zdef(s).. z(s) =e= d*t(s)*(lw/3+wl*e)/2;

 wdef..    wc =e= wl + sqrt(lw*lw-d*d);

 stress(s).. z(s) =g= k1(s)*wc;

 inertia(s)..  z(s)*d/2 =g= 2.2*(k1(s)*wc)**(4/3);

 platew(s)..  t(s) =g= k2(s)*wl + ca ;

 platel(s)..  t(s) =g= k2(s)*lw + ca ;

 geom..       lw =g= d ;

 weight.. w =e= gamsteel*width*(wl+lw)*sum(s, t(s)*l(s))/wc/1000;

 t.lo(s) = tlow;

 t.l("top") = 1.2; t.l("middle") = 1.2; t.l("bottom") = 1.3;
 wl.l = 45.8; lw.l = 43.2; d.l = 30.5;
 wc.l = wl.l + sqrt(lw.l**2-d.l**2); display wc.l;
 z.l(s) = d.l*t.l(s)*(lw.l/3+wl.l*e)/2; display z.l;
 wc.lo = 1;

 Model ship structural design of bulkhead / all /;

 Solve ship minimizing w using nlp;
