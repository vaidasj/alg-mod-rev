#  DNLP written by GAMS Convert at 10/11/20 12:17:24
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, -100 <= x2 <= 100, start=-1.02381947218099)
@variable(m, -100 <= x3 <= 100, start=-6.0532934561349)
@variable(m, -100 <= x4 <= 100, start=7.23007777194228)
@variable(m, -100 <= x5 <= 100, start=8.23564448877877)
@variable(m, -100 <= x6 <= 100, start=-1.80033035963208)
@variable(m, -100 <= x7 <= 100, start=9.33150145271789)
@variable(m, -100 <= x8 <= 100, start=7.337569411699)
@variable(m, -100 <= x9 <= 100, start=10.9114379476054)
@variable(m, -100 <= x10 <= 100, start=2.02600003063252)
@variable(m, -100 <= x11 <= 100, start=-3.61788157018581)
@variable(m, -100 <= x12 <= 100, start=-5.81340042521476)
@variable(m, -100 <= x13 <= 100, start=-0.825103437701167)
@variable(m, -100 <= x14 <= 100, start=0.0734045448544206)
@variable(m, -100 <= x15 <= 100, start=-1.06063724608067)
@variable(m, -100 <= x16 <= 100, start=-8.81390166735943)
@variable(m, -100 <= x17 <= 100, start=-2.89618732357122)
@variable(m, -100 <= x18 <= 100, start=-1.73700788576005)
@variable(m, -100 <= x19 <= 100, start=-2.76648186971397)
@variable(m, -100 <= x20 <= 100, start=10.8516470542088)
@variable(m, -100 <= x21 <= 100, start=-4.89488860714376)
@variable(m, x22, start=53.7754635334993)
@variable(m, x23, start=1.00606795898111)
@variable(m, x24, start=0.0481791030418888)
@variable(m, x25, start=-0.975659827406731)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(abs(0.0101010101010101*$(x2))^3 + abs(0.010752688172043*$(x3))^3 + abs(
    0.0101010101010101*$(x4))^3 + abs(0.0103092783505155*$(x5))^3 + abs(0.0111111111111111*$(x6))^3 + abs(
    0.0104166666666667*$(x7))^3 + abs(0.010752688172043*$(x8))^3 + abs(0.00769230769230769*$(x9))^3 + abs(
    0.00847457627118644*$(x10))^3 + abs(0.0113636363636364*$(x11))^3 + abs(0.0112359550561798*$(x12))^3 + abs(
    0.010752688172043*$(x13))^3 + abs(0.0106382978723404*$(x14))^3 + abs(0.0133333333333333*$(x15))^3 + abs(
    0.0119047619047619*$(x16))^3 + abs(0.010989010989011*$(x17))^3 + abs(0.01*$(x18))^3 + abs(0.0102040816326531*$(x19))
    ^3 + abs(0.0099009900990099*$(x20))^3 + abs(0.0125*$(x21))^3))

@constraint(m, x2 + x22 + 85*x23 + 76*x24 + 44*x25 == 99)

@constraint(m, x3 + x22 + 82*x23 + 78*x24 + 42*x25 == 93)

@constraint(m, x4 + x22 + 75*x23 + 73*x24 + 42*x25 == 99)

@constraint(m, x5 + x22 + 74*x23 + 72*x24 + 44*x25 == 97)

@constraint(m, x6 + x22 + 76*x23 + 73*x24 + 43*x25 == 90)

@constraint(m, x7 + x22 + 74*x23 + 69*x24 + 46*x25 == 96)

@constraint(m, x8 + x22 + 73*x23 + 69*x24 + 46*x25 == 93)

@constraint(m, x9 + x22 + 96*x23 + 80*x24 + 36*x25 == 130)

@constraint(m, x10 + x22 + 93*x23 + 78*x24 + 36*x25 == 118)

@constraint(m, x11 + x22 + 70*x23 + 73*x24 + 37*x25 == 88)

@constraint(m, x12 + x22 + 82*x23 + 71*x24 + 46*x25 == 89)

@constraint(m, x13 + x22 + 80*x23 + 72*x24 + 45*x25 == 93)

@constraint(m, x14 + x22 + 77*x23 + 76*x24 + 42*x25 == 94)

@constraint(m, x15 + x22 + 67*x23 + 76*x24 + 50*x25 == 75)

@constraint(m, x16 + x22 + 82*x23 + 70*x24 + 48*x25 == 84)

@constraint(m, x17 + x22 + 76*x23 + 76*x24 + 41*x25 == 91)

@constraint(m, x18 + x22 + 74*x23 + 78*x24 + 31*x25 == 100)

@constraint(m, x19 + x22 + 71*x23 + 80*x24 + 29*x25 == 98)

@constraint(m, x20 + x22 + 70*x23 + 83*x24 + 39*x25 == 101)

@constraint(m, x21 + x22 + 64*x23 + 79*x24 + 38*x25 == 80)
