*  MCP written by GAMS Convert at 12/13/18 11:26:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         50       50        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        500      500        0        0
*
*  Solve m using MCP;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;
Variables
  fxe1 / fx 0 /
  fxe2 / fx 0 /
  fxe3 / fx 0 /
  fxe4 / fx 0 /
  fxe5 / fx 0 /
  fxe6 / fx 0 /
  fxe7 / fx 0 /
  fxe8 / fx 0 /
  fxe9 / fx 0 /
  fxe10 / fx 0 /
  fxe11 / fx 0 /
  fxe12 / fx 0 /
  fxe13 / fx 0 /
  fxe14 / fx 0 /
  fxe15 / fx 0 /
  fxe16 / fx 0 /
  fxe17 / fx 0 /
  fxe18 / fx 0 /
  fxe19 / fx 0 /
  fxe20 / fx 0 /
  fxe21 / fx 0 /
  fxe22 / fx 0 /
  fxe23 / fx 0 /
  fxe24 / fx 0 /
  fxe25 / fx 0 /
  fxe26 / fx 0 /
  fxe27 / fx 0 /
  fxe28 / fx 0 /
  fxe29 / fx 0 /
  fxe30 / fx 0 /
  fxe31 / fx 0 /
  fxe32 / fx 0 /
  fxe33 / fx 0 /
  fxe34 / fx 0 /
  fxe35 / fx 0 /
  fxe36 / fx 0 /
  fxe37 / fx 0 /
  fxe38 / fx 0 /
  fxe39 / fx 0 /
  fxe40 / fx 0 /
  ;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50;


* equation below was matched to a holdfixed variable
e1..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe1 =N= 1;

* equation below was matched to a holdfixed variable
e2..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe2 =N= 1;

* equation below was matched to a holdfixed variable
e3..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe3 =N= 1;

* equation below was matched to a holdfixed variable
e4..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe4 =N= 1;

* equation below was matched to a holdfixed variable
e5..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe5 =N= 1;

* equation below was matched to a holdfixed variable
e6..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe6 =N= 1;

* equation below was matched to a holdfixed variable
e7..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe7 =N= 1;

* equation below was matched to a holdfixed variable
e8..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe8 =N= 1;

* equation below was matched to a holdfixed variable
e9..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
      + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe9 =N= 1;

* equation below was matched to a holdfixed variable
e10..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe10 =N= 1;

* equation below was matched to a holdfixed variable
e11..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe11 =N= 1;

* equation below was matched to a holdfixed variable
e12..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe12 =N= 1;

* equation below was matched to a holdfixed variable
e13..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe13 =N= 1;

* equation below was matched to a holdfixed variable
e14..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe14 =N= 1;

* equation below was matched to a holdfixed variable
e15..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe15 =N= 1;

* equation below was matched to a holdfixed variable
e16..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe16 =N= 1;

* equation below was matched to a holdfixed variable
e17..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe17 =N= 1;

* equation below was matched to a holdfixed variable
e18..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe18 =N= 1;

* equation below was matched to a holdfixed variable
e19..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe19 =N= 1;

* equation below was matched to a holdfixed variable
e20..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe20 =N= 1;

* equation below was matched to a holdfixed variable
e21..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe21 =N= 1;

* equation below was matched to a holdfixed variable
e22..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe22 =N= 1;

* equation below was matched to a holdfixed variable
e23..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe23 =N= 1;

* equation below was matched to a holdfixed variable
e24..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe24 =N= 1;

* equation below was matched to a holdfixed variable
e25..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe25 =N= 1;

* equation below was matched to a holdfixed variable
e26..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe26 =N= 1;

* equation below was matched to a holdfixed variable
e27..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe27 =N= 1;

* equation below was matched to a holdfixed variable
e28..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe28 =N= 1;

* equation below was matched to a holdfixed variable
e29..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe29 =N= 1;

* equation below was matched to a holdfixed variable
e30..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe30 =N= 1;

* equation below was matched to a holdfixed variable
e31..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe31 =N= 1;

* equation below was matched to a holdfixed variable
e32..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe32 =N= 1;

* equation below was matched to a holdfixed variable
e33..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe33 =N= 1;

* equation below was matched to a holdfixed variable
e34..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe34 =N= 1;

* equation below was matched to a holdfixed variable
e35..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe35 =N= 1;

* equation below was matched to a holdfixed variable
e36..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe36 =N= 1;

* equation below was matched to a holdfixed variable
e37..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe37 =N= 1;

* equation below was matched to a holdfixed variable
e38..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe38 =N= 1;

* equation below was matched to a holdfixed variable
e39..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe39 =N= 1;

* equation below was matched to a holdfixed variable
e40..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10 + fxe40 =N= 1;

e41..    x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e42..    0.001*x1 + x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e43..    0.001*x1 + 0.001*x2 + x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e44..    0.001*x1 + 0.001*x2 + 0.001*x3 + x4 + 0.001*x5 + 0.001*x6 + 0.001*x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e45..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + x5 + 0.001*x6 + 0.001*x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e46..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + x6 + 0.001*x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e47..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + x7
       + 0.001*x8 + 0.001*x9 + 0.001*x10 =E= 1;

e48..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + x8 + 0.001*x9 + 0.001*x10 =E= 1;

e49..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + x9 + 0.001*x10 =E= 1;

e50..    0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6
       + 0.001*x7 + 0.001*x8 + 0.001*x9 + x10 =E= 1;

Model m / e1.fxe1,e2.fxe2,e3.fxe3,e4.fxe4,e5.fxe5,e6.fxe6,e7.fxe7,e8.fxe8
         ,e9.fxe9,e10.fxe10,e11.fxe11,e12.fxe12,e13.fxe13,e14.fxe14
         ,e15.fxe15,e16.fxe16,e17.fxe17,e18.fxe18,e19.fxe19,e20.fxe20
         ,e21.fxe21,e22.fxe22,e23.fxe23,e24.fxe24,e25.fxe25,e26.fxe26
         ,e27.fxe27,e28.fxe28,e29.fxe29,e30.fxe30,e31.fxe31,e32.fxe32
         ,e33.fxe33,e34.fxe34,e35.fxe35,e36.fxe36,e37.fxe37,e38.fxe38
         ,e39.fxe39,e40.fxe40,e41.x1,e42.x2,e43.x3,e44.x4,e45.x5,e46.x6
         ,e47.x7,e48.x8,e49.x9,e50.x10 /;

m.limrow=0; m.limcol=0;
m.holdfixed = 1;

Solve m using MCP;
