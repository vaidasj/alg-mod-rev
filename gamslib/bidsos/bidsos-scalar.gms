*  MIP written by GAMS Convert at 12/13/18 10:30:51
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          7        7        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         20        1        0        0        0       19        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         42       42        0        0
*
*  Solve m using MIP minimizing x1;


Sets  s1 /2*4/,s2 /5*10/,s3 /11*13/,s4 /14*16/,s5 /17*20/;

Variables  x1,s2s1(s1),s2s2(s2),s2s3(s3),s2s4(s4),s2s5(s5);

SOS2 Variables  s2s1(s1),s2s2(s2),s2s3(s3),s2s4(s4),s2s5(s5);

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - 33000*s2s1('4') - 70000*s2s2('7') - 100000*s2s2('8') - 150000*s2s2('9')
      - 160000*s2s2('10') - 165600*s2s3('13') - 12000*s2s4('16')
      - 42000*s2s5('19') - 77000*s2s5('20') =E= -239600.48;

e2..    x1 - 3855.84*s2s1('3') - 2021805.84*s2s1('4') - 1623982.84*s2s2('6')
      - 4892734.84*s2s2('7') - 6874204.84*s2s2('8') - 10079154.84*s2s2('9')
      - 10700344.84*s2s2('10') - 13456*s2s3('12') - 10312120*s2s3('13')
      - 6583.98*s2s4('15') - 876439.98*s2s4('16') - 2946300*s2s5('19')
      - 5331550*s2s5('20') =E= 0;

e3..    s2s1('2') + s2s1('3') + s2s1('4') =E= 1;

e4..    s2s2('5') + s2s2('6') + s2s2('7') + s2s2('8') + s2s2('9') + s2s2('10')
      =E= 1;

e5..    s2s3('11') + s2s3('12') + s2s3('13') =E= 1;

e6..    s2s4('14') + s2s4('15') + s2s4('16') =E= 1;

e7..    s2s5('17') + s2s5('18') + s2s5('19') + s2s5('20') =E= 1;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIP minimizing x1;
