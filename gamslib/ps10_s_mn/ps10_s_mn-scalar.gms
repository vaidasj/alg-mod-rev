*  NLP written by GAMS Convert at 12/13/18 11:30:51
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         41       11       30        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        118      108       10        0
*
*  Solve m using NLP maximizing x31;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31;

Positive Variables  x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24
          ,x25,x26,x27,x28,x29,x30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41;


e1..  - 0.0483885699475918*x11 - 0.0111072443765899*x12
      - 0.0410200007574789*x13 - 0.150028368059464*x14 - 0.180270475757508*x15
      - 0.00364568394136257*x16 - 0.0780046969156387*x17
      - 0.227090054008436*x18 - 0.104605623849374*x19 - 0.155839282386557*x20
      + 0.0483885699475918*x21 + 0.0111072443765899*x22
      + 0.0410200007574789*x23 + 0.150028368059464*x24 + 0.180270475757508*x25
      + 0.00364568394136257*x26 + 0.0780046969156387*x27
      + 0.227090054008436*x28 + 0.104605623849374*x29 + 0.155839282386557*x30
      + x31 =E= 0;

e2.. -x1**0.5 + x11 =E= 0;

e3.. -x2**0.5 + x12 =E= 0;

e4.. -x3**0.5 + x13 =E= 0;

e5.. -x4**0.5 + x14 =E= 0;

e6.. -x5**0.5 + x15 =E= 0;

e7.. -x6**0.5 + x16 =E= 0;

e8.. -x7**0.5 + x17 =E= 0;

e9.. -x8**0.5 + x18 =E= 0;

e10.. -x9**0.5 + x19 =E= 0;

e11.. -x10**0.5 + x20 =E= 0;

e12..  - 0.1*x1 + x21 =G= 0;

e13..  - 0.2*x2 + x22 =G= 0;

e14..  - 0.3*x3 + x23 =G= 0;

e15..  - 0.4*x4 + x24 =G= 0;

e16..  - 0.5*x5 + x25 =G= 0;

e17..  - 0.6*x6 + x26 =G= 0;

e18..  - 0.7*x7 + x27 =G= 0;

e19..  - 0.8*x8 + x28 =G= 0;

e20..  - 0.9*x9 + x29 =G= 0;

e21..  - x10 + x30 =G= 0;

e22..  - 0.1*x1 + 0.1*x2 + x21 - x22 =G= 0;

e23..  - 0.2*x2 + 0.2*x3 + x22 - x23 =G= 0;

e24..  - 0.3*x3 + 0.3*x4 + x23 - x24 =G= 0;

e25..  - 0.4*x4 + 0.4*x5 + x24 - x25 =G= 0;

e26..  - 0.5*x5 + 0.5*x6 + x25 - x26 =G= 0;

e27..  - 0.6*x6 + 0.6*x7 + x26 - x27 =G= 0;

e28..  - 0.7*x7 + 0.7*x8 + x27 - x28 =G= 0;

e29..  - 0.8*x8 + 0.8*x9 + x28 - x29 =G= 0;

e30..  - 0.9*x9 + 0.9*x10 + x29 - x30 =G= 0;

e31..  - x10 + x30 =G= 0;

e32..    x1 - x2 =G= 0;

e33..    x2 - x3 =G= 0;

e34..    x3 - x4 =G= 0;

e35..    x4 - x5 =G= 0;

e36..    x5 - x6 =G= 0;

e37..    x6 - x7 =G= 0;

e38..    x7 - x8 =G= 0;

e39..    x8 - x9 =G= 0;

e40..    x9 - x10 =G= 0;

e41..    x10 =G= 0;

* set non-default bounds
x1.lo = 0.0001;
x2.lo = 0.0001;
x3.lo = 0.0001;
x4.lo = 0.0001;
x5.lo = 0.0001;
x6.lo = 0.0001;
x7.lo = 0.0001;
x8.lo = 0.0001;
x9.lo = 0.0001;
x10.lo = 0.0001;

* set non-default levels
x1.l = 0.0001;
x2.l = 0.0001;
x3.l = 0.0001;
x4.l = 0.0001;
x5.l = 0.0001;
x6.l = 0.0001;
x7.l = 0.0001;
x8.l = 0.0001;
x9.l = 0.0001;
x10.l = 0.0001;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x31;
