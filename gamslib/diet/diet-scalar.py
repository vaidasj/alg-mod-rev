#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        1        9        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         21       21        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        180      180        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10 + m.x11 + m.x12 + m.x13
                        + m.x14 + m.x15 + m.x16 + m.x17 + m.x18 + m.x19 + m.x20, sense=minimize)

m.c1 = Constraint(expr=   44.7*m.x1 + 36*m.x2 + 8.4*m.x3 + 20.6*m.x4 + 7.4*m.x5 + 15.7*m.x6 + 41.7*m.x7 + 2.2*m.x8
                        + 4.4*m.x9 + 5.8*m.x10 + 2.4*m.x11 + 2.6*m.x12 + 5.8*m.x13 + 14.3*m.x14 + 1.1*m.x15 + 9.6*m.x16
                        + 8.5*m.x17 + 12.8*m.x18 + 17.4*m.x19 + 26.9*m.x20 >= 3)

m.c2 = Constraint(expr=   1411*m.x1 + 897*m.x2 + 422*m.x3 + 17*m.x4 + 448*m.x5 + 661*m.x6 + 333*m.x8 + 249*m.x9
                        + 705*m.x10 + 138*m.x11 + 125*m.x12 + 166*m.x13 + 336*m.x14 + 106*m.x15 + 138*m.x16 + 87*m.x17
                        + 99*m.x18 + 1055*m.x19 + 1691*m.x20 >= 70)

m.c3 = Constraint(expr=   2*m.x1 + 1.7*m.x2 + 15.1*m.x3 + 0.6*m.x4 + 16.4*m.x5 + m.x6 + 0.2*m.x8 + 0.3*m.x9 + 6.8*m.x10
                        + 3.7*m.x11 + 4*m.x12 + 3.8*m.x13 + 1.8*m.x14 + 2.7*m.x16 + 1.7*m.x17 + 2.5*m.x18 + 3.7*m.x19
                        + 11.4*m.x20 >= 0.8)

m.c4 = Constraint(expr=   365*m.x1 + 99*m.x2 + 9*m.x3 + 6*m.x4 + 19*m.x5 + 48*m.x6 + 139*m.x8 + 37*m.x9 + 45*m.x10
                        + 80*m.x11 + 36*m.x12 + 59*m.x13 + 118*m.x14 + 138*m.x15 + 54*m.x16 + 173*m.x17 + 154*m.x18
                        + 459*m.x19 + 792*m.x20 >= 12)

m.c5 = Constraint(expr=   30.9*m.x2 + 26*m.x3 + 55.8*m.x4 + 28.1*m.x5 + 0.2*m.x7 + 169.2*m.x8 + 3.5*m.x10 + 69*m.x11
                        + 7.2*m.x12 + 16.6*m.x13 + 6.7*m.x14 + 918.4*m.x15 + 290.7*m.x16 + 86.8*m.x17 + 85.7*m.x18
                        + 5.1*m.x19 >= 5)

m.c6 = Constraint(expr=   55.4*m.x1 + 17.4*m.x2 + 3*m.x3 + 0.2*m.x4 + 0.8*m.x5 + 9.6*m.x6 + 6.4*m.x8 + 18.2*m.x9 + m.x10
                        + 4.3*m.x11 + 9*m.x12 + 4.7*m.x13 + 29.4*m.x14 + 5.7*m.x15 + 8.4*m.x16 + 1.2*m.x17 + 3.9*m.x18
                        + 26.9*m.x19 + 38.4*m.x20 >= 1.8)

m.c7 = Constraint(expr=   33.3*m.x1 + 7.9*m.x2 + 23.5*m.x3 + 10.3*m.x5 + 8.1*m.x6 + 0.5*m.x7 + 50.8*m.x8 + 3.6*m.x9
                        + 4.9*m.x10 + 5.8*m.x11 + 4.5*m.x12 + 5.9*m.x13 + 7.1*m.x14 + 13.8*m.x15 + 5.4*m.x16 + 4.3*m.x17
                        + 4.3*m.x18 + 38.2*m.x19 + 24.6*m.x20 >= 2.7)

m.c8 = Constraint(expr=   441*m.x1 + 106*m.x2 + 11*m.x3 + 4*m.x5 + 471*m.x6 + 5*m.x7 + 316*m.x8 + 79*m.x9 + 209*m.x10
                        + 37*m.x11 + 26*m.x12 + 21*m.x13 + 198*m.x14 + 33*m.x15 + 83*m.x16 + 55*m.x17 + 65*m.x18
                        + 93*m.x19 + 217*m.x20 >= 18)

m.c9 = Constraint(expr=   60*m.x3 + 525*m.x8 + 862*m.x11 + 5369*m.x12 + 1184*m.x13 + 2522*m.x14 + 2755*m.x15
                        + 1912*m.x16 + 57*m.x17 + 257*m.x18 >= 75)
