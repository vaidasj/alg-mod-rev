#  DNLP written by GAMS Convert at 12/13/18 10:24:33
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


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(-100,100),initialize=-1.02381947242853)
m.x3 = Var(within=Reals,bounds=(-100,100),initialize=-6.05329345864239)
m.x4 = Var(within=Reals,bounds=(-100,100),initialize=7.23007776827267)
m.x5 = Var(within=Reals,bounds=(-100,100),initialize=8.23564448625883)
m.x6 = Var(within=Reals,bounds=(-100,100),initialize=-1.80033036241163)
m.x7 = Var(within=Reals,bounds=(-100,100),initialize=9.33150145182802)
m.x8 = Var(within=Reals,bounds=(-100,100),initialize=7.33756941056047)
m.x9 = Var(within=Reals,bounds=(-100,100),initialize=10.9114379444987)
m.x10 = Var(within=Reals,bounds=(-100,100),initialize=2.02600002701089)
m.x11 = Var(within=Reals,bounds=(-100,100),initialize=-3.61788157830573)
m.x12 = Var(within=Reals,bounds=(-100,100),initialize=-5.81340042434707)
m.x13 = Var(within=Reals,bounds=(-100,100),initialize=-0.825103438087781)
m.x14 = Var(within=Reals,bounds=(-100,100),initialize=0.0734045413351992)
m.x15 = Var(within=Reals,bounds=(-100,100),initialize=-1.06063724695418)
m.x16 = Var(within=Reals,bounds=(-100,100),initialize=-8.81390166509325)
m.x17 = Var(within=Reals,bounds=(-100,100),initialize=-2.89618732798059)
m.x18 = Var(within=Reals,bounds=(-100,100),initialize=-1.73700789731236)
m.x19 = Var(within=Reals,bounds=(-100,100),initialize=-2.76648188352623)
m.x20 = Var(within=Reals,bounds=(-100,100),initialize=10.8516470462157)
m.x21 = Var(within=Reals,bounds=(-100,100),initialize=-4.89488861680761)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=53.7754635743162)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=1.00606795873256)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=0.0481791031574926)
m.x25 = Var(within=Reals,bounds=(None,None),initialize=-0.975659828048153)

m.obj = Objective(expr=abs(0.0101010101010101*m.x2)**3 + abs(0.010752688172043*m.x3)**3 + abs(0.0101010101010101*m.x4)**
                       3 + abs(0.0103092783505155*m.x5)**3 + abs(0.0111111111111111*m.x6)**3 + abs(0.0104166666666667*
                       m.x7)**3 + abs(0.010752688172043*m.x8)**3 + abs(0.00769230769230769*m.x9)**3 + abs(
                       0.00847457627118644*m.x10)**3 + abs(0.0113636363636364*m.x11)**3 + abs(0.0112359550561798*m.x12)
                       **3 + abs(0.010752688172043*m.x13)**3 + abs(0.0106382978723404*m.x14)**3 + abs(0.0133333333333333
                       *m.x15)**3 + abs(0.0119047619047619*m.x16)**3 + abs(0.010989010989011*m.x17)**3 + abs(0.01*m.x18)
                       **3 + abs(0.0102040816326531*m.x19)**3 + abs(0.0099009900990099*m.x20)**3 + abs(0.0125*m.x21)**3
                       , sense=minimize)

m.c1 = Constraint(expr=   m.x2 + m.x22 + 85*m.x23 + 76*m.x24 + 44*m.x25 == 99)

m.c2 = Constraint(expr=   m.x3 + m.x22 + 82*m.x23 + 78*m.x24 + 42*m.x25 == 93)

m.c3 = Constraint(expr=   m.x4 + m.x22 + 75*m.x23 + 73*m.x24 + 42*m.x25 == 99)

m.c4 = Constraint(expr=   m.x5 + m.x22 + 74*m.x23 + 72*m.x24 + 44*m.x25 == 97)

m.c5 = Constraint(expr=   m.x6 + m.x22 + 76*m.x23 + 73*m.x24 + 43*m.x25 == 90)

m.c6 = Constraint(expr=   m.x7 + m.x22 + 74*m.x23 + 69*m.x24 + 46*m.x25 == 96)

m.c7 = Constraint(expr=   m.x8 + m.x22 + 73*m.x23 + 69*m.x24 + 46*m.x25 == 93)

m.c8 = Constraint(expr=   m.x9 + m.x22 + 96*m.x23 + 80*m.x24 + 36*m.x25 == 130)

m.c9 = Constraint(expr=   m.x10 + m.x22 + 93*m.x23 + 78*m.x24 + 36*m.x25 == 118)

m.c10 = Constraint(expr=   m.x11 + m.x22 + 70*m.x23 + 73*m.x24 + 37*m.x25 == 88)

m.c11 = Constraint(expr=   m.x12 + m.x22 + 82*m.x23 + 71*m.x24 + 46*m.x25 == 89)

m.c12 = Constraint(expr=   m.x13 + m.x22 + 80*m.x23 + 72*m.x24 + 45*m.x25 == 93)

m.c13 = Constraint(expr=   m.x14 + m.x22 + 77*m.x23 + 76*m.x24 + 42*m.x25 == 94)

m.c14 = Constraint(expr=   m.x15 + m.x22 + 67*m.x23 + 76*m.x24 + 50*m.x25 == 75)

m.c15 = Constraint(expr=   m.x16 + m.x22 + 82*m.x23 + 70*m.x24 + 48*m.x25 == 84)

m.c16 = Constraint(expr=   m.x17 + m.x22 + 76*m.x23 + 76*m.x24 + 41*m.x25 == 91)

m.c17 = Constraint(expr=   m.x18 + m.x22 + 74*m.x23 + 78*m.x24 + 31*m.x25 == 100)

m.c18 = Constraint(expr=   m.x19 + m.x22 + 71*m.x23 + 80*m.x24 + 29*m.x25 == 98)

m.c19 = Constraint(expr=   m.x20 + m.x22 + 70*m.x23 + 83*m.x24 + 39*m.x25 == 101)

m.c20 = Constraint(expr=   m.x21 + m.x22 + 64*m.x23 + 79*m.x24 + 38*m.x25 == 80)
