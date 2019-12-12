#  MIP written by GAMS Convert at 12/13/18 10:30:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         20        1        0        0        0       19        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         42       42        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var s2s2 >= 0;
var s2s3 >= 0;
var s2s4 >= 0;
var s2s5 >= 0;
var s2s6 >= 0;
var s2s7 >= 0;
var s2s8 >= 0;
var s2s9 >= 0;
var s2s10 >= 0;
var s2s11 >= 0;
var s2s12 >= 0;
var s2s13 >= 0;
var s2s14 >= 0;
var s2s15 >= 0;
var s2s16 >= 0;
var s2s17 >= 0;
var s2s18 >= 0;
var s2s19 >= 0;
var s2s20 >= 0;

suffix sosno integer IN;
suffix ref integer IN;
let s2s2.sosno := -1;
let s2s2.ref   := 1;
let s2s3.sosno := -1;
let s2s3.ref   := 2;
let s2s4.sosno := -1;
let s2s4.ref   := 3;
let s2s5.sosno := -2;
let s2s5.ref   := 1;
let s2s6.sosno := -2;
let s2s6.ref   := 2;
let s2s7.sosno := -2;
let s2s7.ref   := 3;
let s2s8.sosno := -2;
let s2s8.ref   := 4;
let s2s9.sosno := -2;
let s2s9.ref   := 5;
let s2s10.sosno := -2;
let s2s10.ref   := 6;
let s2s11.sosno := -3;
let s2s11.ref   := 1;
let s2s12.sosno := -3;
let s2s12.ref   := 2;
let s2s13.sosno := -3;
let s2s13.ref   := 3;
let s2s14.sosno := -4;
let s2s14.ref   := 1;
let s2s15.sosno := -4;
let s2s15.ref   := 2;
let s2s16.sosno := -4;
let s2s16.ref   := 3;
let s2s17.sosno := -5;
let s2s17.ref   := 1;
let s2s18.sosno := -5;
let s2s18.ref   := 2;
let s2s19.sosno := -5;
let s2s19.ref   := 3;
let s2s20.sosno := -5;
let s2s20.ref   := 4;

minimize obj:    3855.84*s2s3 + 2021805.84*s2s4 + 1623982.84*s2s6
     + 4892734.84*s2s7 + 6874204.84*s2s8 + 10079154.84*s2s9 + 10700344.84*s2s10
     + 13456*s2s12 + 10312120*s2s13 + 6583.98*s2s15 + 876439.98*s2s16
     + 2946300*s2s19 + 5331550*s2s20;

subject to

e1:  - 33000*s2s4 - 70000*s2s7 - 100000*s2s8 - 150000*s2s9 - 160000*s2s10
     - 165600*s2s13 - 12000*s2s16 - 42000*s2s19 - 77000*s2s20 = -239600.48;

e3:    s2s2 + s2s3 + s2s4 = 1;

e4:    s2s5 + s2s6 + s2s7 + s2s8 + s2s9 + s2s10 = 1;

e5:    s2s11 + s2s12 + s2s13 = 1;

e6:    s2s14 + s2s15 + s2s16 = 1;

e7:    s2s17 + s2s18 + s2s19 + s2s20 = 1;
