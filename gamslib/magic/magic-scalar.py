#  MIP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         56        1       40       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         46       31        0       15        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        181      181        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(None,None),initialize=0)
m.i16 = Var(within=Integers,bounds=(0,12),initialize=0)
m.i17 = Var(within=Integers,bounds=(0,12),initialize=0)
m.i18 = Var(within=Integers,bounds=(0,12),initialize=0)
m.i19 = Var(within=Integers,bounds=(0,12),initialize=0)
m.i20 = Var(within=Integers,bounds=(0,12),initialize=0)
m.i21 = Var(within=Integers,bounds=(0,10),initialize=0)
m.i22 = Var(within=Integers,bounds=(0,10),initialize=0)
m.i23 = Var(within=Integers,bounds=(0,10),initialize=0)
m.i24 = Var(within=Integers,bounds=(0,10),initialize=0)
m.i25 = Var(within=Integers,bounds=(0,10),initialize=0)
m.i26 = Var(within=Integers,bounds=(0,5),initialize=0)
m.i27 = Var(within=Integers,bounds=(0,5),initialize=0)
m.i28 = Var(within=Integers,bounds=(0,5),initialize=0)
m.i29 = Var(within=Integers,bounds=(0,5),initialize=0)
m.i30 = Var(within=Integers,bounds=(0,5),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   12000*m.x1 + 6000*m.x2 + 12000*m.x3 + 6000*m.x4 + 12000*m.x5 + 7800*m.x6 + 3900*m.x7
                        + 7800*m.x8 + 3900*m.x9 + 7800*m.x10 + 18000*m.x11 + 9000*m.x12 + 18000*m.x13 + 9000*m.x14
                        + 18000*m.x15 - 4200*m.i16 - 2100*m.i17 - 4200*m.i18 - 2100*m.i19 - 4200*m.i20 + 5850*m.i21
                        + 2925*m.i22 + 5850*m.i23 + 2925*m.i24 + 5850*m.i25 - 9000*m.i26 - 4500*m.i27 - 9000*m.i28
                        - 4500*m.i29 - 9000*m.i30 + 2000*m.x31 + 2000*m.x32 + 2000*m.x33 + 2000*m.x34 + 2000*m.x35
                        + 1000*m.x36 + 1000*m.x37 + 1000*m.x38 + 1000*m.x39 + 1000*m.x40 + 500*m.x41 + 500*m.x42
                        + 500*m.x43 + 500*m.x44 + 500*m.x45, sense=minimize)

m.c1 = Constraint(expr=   m.x1 + m.x6 + m.x11 >= 15)

m.c2 = Constraint(expr=   m.x2 + m.x7 + m.x12 >= 30)

m.c3 = Constraint(expr=   m.x3 + m.x8 + m.x13 >= 25)

m.c4 = Constraint(expr=   m.x4 + m.x9 + m.x14 >= 40)

m.c5 = Constraint(expr=   m.x5 + m.x10 + m.x15 >= 27)

m.c6 = Constraint(expr=   2*m.i16 + 1.75*m.i21 + 4*m.i26 >= 17.25)

m.c7 = Constraint(expr=   2*m.i17 + 1.75*m.i22 + 4*m.i27 >= 34.5)

m.c8 = Constraint(expr=   2*m.i18 + 1.75*m.i23 + 4*m.i28 >= 28.75)

m.c9 = Constraint(expr=   2*m.i19 + 1.75*m.i24 + 4*m.i29 >= 46)

m.c10 = Constraint(expr=   2*m.i20 + 1.75*m.i25 + 4*m.i30 >= 31.05)

m.c11 = Constraint(expr= - m.i16 + m.i20 + m.x31 >= 0)

m.c12 = Constraint(expr=   m.i16 - m.i17 + m.x32 >= 0)

m.c13 = Constraint(expr=   m.i17 - m.i18 + m.x33 >= 0)

m.c14 = Constraint(expr=   m.i18 - m.i19 + m.x34 >= 0)

m.c15 = Constraint(expr=   m.i19 - m.i20 + m.x35 >= 0)

m.c16 = Constraint(expr= - m.i21 + m.i25 + m.x36 >= 0)

m.c17 = Constraint(expr=   m.i21 - m.i22 + m.x37 >= 0)

m.c18 = Constraint(expr=   m.i22 - m.i23 + m.x38 >= 0)

m.c19 = Constraint(expr=   m.i23 - m.i24 + m.x39 >= 0)

m.c20 = Constraint(expr=   m.i24 - m.i25 + m.x40 >= 0)

m.c21 = Constraint(expr= - m.i26 + m.i30 + m.x41 >= 0)

m.c22 = Constraint(expr=   m.i26 - m.i27 + m.x42 >= 0)

m.c23 = Constraint(expr=   m.i27 - m.i28 + m.x43 >= 0)

m.c24 = Constraint(expr=   m.i28 - m.i29 + m.x44 >= 0)

m.c25 = Constraint(expr=   m.i29 - m.i30 + m.x45 >= 0)

m.c26 = Constraint(expr=   m.x1 - 0.85*m.i16 >= 0)

m.c27 = Constraint(expr=   m.x2 - 0.85*m.i17 >= 0)

m.c28 = Constraint(expr=   m.x3 - 0.85*m.i18 >= 0)

m.c29 = Constraint(expr=   m.x4 - 0.85*m.i19 >= 0)

m.c30 = Constraint(expr=   m.x5 - 0.85*m.i20 >= 0)

m.c31 = Constraint(expr=   m.x6 - 1.25*m.i21 >= 0)

m.c32 = Constraint(expr=   m.x7 - 1.25*m.i22 >= 0)

m.c33 = Constraint(expr=   m.x8 - 1.25*m.i23 >= 0)

m.c34 = Constraint(expr=   m.x9 - 1.25*m.i24 >= 0)

m.c35 = Constraint(expr=   m.x10 - 1.25*m.i25 >= 0)

m.c36 = Constraint(expr=   m.x11 - 1.5*m.i26 >= 0)

m.c37 = Constraint(expr=   m.x12 - 1.5*m.i27 >= 0)

m.c38 = Constraint(expr=   m.x13 - 1.5*m.i28 >= 0)

m.c39 = Constraint(expr=   m.x14 - 1.5*m.i29 >= 0)

m.c40 = Constraint(expr=   m.x15 - 1.5*m.i30 >= 0)

m.c41 = Constraint(expr=   m.x1 - 2*m.i16 <= 0)

m.c42 = Constraint(expr=   m.x2 - 2*m.i17 <= 0)

m.c43 = Constraint(expr=   m.x3 - 2*m.i18 <= 0)

m.c44 = Constraint(expr=   m.x4 - 2*m.i19 <= 0)

m.c45 = Constraint(expr=   m.x5 - 2*m.i20 <= 0)

m.c46 = Constraint(expr=   m.x6 - 1.75*m.i21 <= 0)

m.c47 = Constraint(expr=   m.x7 - 1.75*m.i22 <= 0)

m.c48 = Constraint(expr=   m.x8 - 1.75*m.i23 <= 0)

m.c49 = Constraint(expr=   m.x9 - 1.75*m.i24 <= 0)

m.c50 = Constraint(expr=   m.x10 - 1.75*m.i25 <= 0)

m.c51 = Constraint(expr=   m.x11 - 4*m.i26 <= 0)

m.c52 = Constraint(expr=   m.x12 - 4*m.i27 <= 0)

m.c53 = Constraint(expr=   m.x13 - 4*m.i28 <= 0)

m.c54 = Constraint(expr=   m.x14 - 4*m.i29 <= 0)

m.c55 = Constraint(expr=   m.x15 - 4*m.i30 <= 0)
