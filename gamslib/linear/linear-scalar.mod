#  DNLP written by GAMS Convert at 12/13/18 10:24:31
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21       21        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         25       25        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        121      101       20        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2 := -1.02381947242853, >= -100, <= 100;
var x3 := -6.05329345864239, >= -100, <= 100;
var x4 := 7.23007776827267, >= -100, <= 100;
var x5 := 8.23564448625883, >= -100, <= 100;
var x6 := -1.80033036241163, >= -100, <= 100;
var x7 := 9.33150145182802, >= -100, <= 100;
var x8 := 7.33756941056047, >= -100, <= 100;
var x9 := 10.9114379444987, >= -100, <= 100;
var x10 := 2.02600002701089, >= -100, <= 100;
var x11 := -3.61788157830573, >= -100, <= 100;
var x12 := -5.81340042434707, >= -100, <= 100;
var x13 := -0.825103438087781, >= -100, <= 100;
var x14 := 0.0734045413351992, >= -100, <= 100;
var x15 := -1.06063724695418, >= -100, <= 100;
var x16 := -8.81390166509325, >= -100, <= 100;
var x17 := -2.89618732798059, >= -100, <= 100;
var x18 := -1.73700789731236, >= -100, <= 100;
var x19 := -2.76648188352623, >= -100, <= 100;
var x20 := 10.8516470462157, >= -100, <= 100;
var x21 := -4.89488861680761, >= -100, <= 100;
var x22 := 53.7754635743162;
var x23 := 1.00606795873256;
var x24 := 0.0481791031574926;
var x25 := -0.975659828048153;

minimize obj: abs(0.0101010101010101*x2)^3 + abs(0.010752688172043*x3)^3 + abs(
    0.0101010101010101*x4)^3 + abs(0.0103092783505155*x5)^3 + abs(
    0.0111111111111111*x6)^3 + abs(0.0104166666666667*x7)^3 + abs(
    0.010752688172043*x8)^3 + abs(0.00769230769230769*x9)^3 + abs(
    0.00847457627118644*x10)^3 + abs(0.0113636363636364*x11)^3 + abs(
    0.0112359550561798*x12)^3 + abs(0.010752688172043*x13)^3 + abs(
    0.0106382978723404*x14)^3 + abs(0.0133333333333333*x15)^3 + abs(
    0.0119047619047619*x16)^3 + abs(0.010989010989011*x17)^3 + abs(0.01*x18)^3
     + abs(0.0102040816326531*x19)^3 + abs(0.0099009900990099*x20)^3 + abs(
    0.0125*x21)^3;

subject to

e1:    x2 + x22 + 85*x23 + 76*x24 + 44*x25 = 99;

e2:    x3 + x22 + 82*x23 + 78*x24 + 42*x25 = 93;

e3:    x4 + x22 + 75*x23 + 73*x24 + 42*x25 = 99;

e4:    x5 + x22 + 74*x23 + 72*x24 + 44*x25 = 97;

e5:    x6 + x22 + 76*x23 + 73*x24 + 43*x25 = 90;

e6:    x7 + x22 + 74*x23 + 69*x24 + 46*x25 = 96;

e7:    x8 + x22 + 73*x23 + 69*x24 + 46*x25 = 93;

e8:    x9 + x22 + 96*x23 + 80*x24 + 36*x25 = 130;

e9:    x10 + x22 + 93*x23 + 78*x24 + 36*x25 = 118;

e10:    x11 + x22 + 70*x23 + 73*x24 + 37*x25 = 88;

e11:    x12 + x22 + 82*x23 + 71*x24 + 46*x25 = 89;

e12:    x13 + x22 + 80*x23 + 72*x24 + 45*x25 = 93;

e13:    x14 + x22 + 77*x23 + 76*x24 + 42*x25 = 94;

e14:    x15 + x22 + 67*x23 + 76*x24 + 50*x25 = 75;

e15:    x16 + x22 + 82*x23 + 70*x24 + 48*x25 = 84;

e16:    x17 + x22 + 76*x23 + 76*x24 + 41*x25 = 91;

e17:    x18 + x22 + 74*x23 + 78*x24 + 31*x25 = 100;

e18:    x19 + x22 + 71*x23 + 80*x24 + 29*x25 = 98;

e19:    x20 + x22 + 70*x23 + 83*x24 + 39*x25 = 101;

e20:    x21 + x22 + 64*x23 + 79*x24 + 38*x25 = 80;