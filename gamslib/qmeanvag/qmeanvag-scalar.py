#  MIQCP written by GAMS Convert at 12/13/18 11:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         46       10       14       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         37       23       14        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        119      112        7        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b29 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b31 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b32 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b33 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b34 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b35 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b36 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b37 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=42.18*m.x3*m.x3 + 40.36*m.x3*m.x4 + 21.76*m.x3*m.x5 + 10.6*m.x3*m.x6 + 24.64*m.x3*m.x7 + 47.68*
                       m.x3*m.x8 + 34.82*m.x3*m.x9 + 70.89*m.x4*m.x4 + 43.16*m.x4*m.x5 + 30.82*m.x4*m.x6 + 46.48*m.x4*
                       m.x7 + 47.6*m.x4*m.x8 + 25.24*m.x4*m.x9 + 25.51*m.x5*m.x5 + 19.2*m.x5*m.x6 + 45.26*m.x5*m.x7 + 
                       26.44*m.x5*m.x8 + 9.4*m.x5*m.x9 + 22.33*m.x6*m.x6 + 20.64*m.x6*m.x7 + 20.92*m.x6*m.x8 + 2*m.x6*
                       m.x9 + 30.01*m.x7*m.x7 + 32.72*m.x7*m.x8 + 14.4*m.x7*m.x9 + 42.23*m.x8*m.x8 + 19.8*m.x8*m.x9 + 
                       16.42*m.x9*m.x9, sense=minimize)

m.c1 = Constraint(expr=   m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 == 1)

m.c2 = Constraint(expr=   m.x3 - m.x10 + m.x17 == 0.2)

m.c3 = Constraint(expr=   m.x4 - m.x11 + m.x18 == 0.2)

m.c4 = Constraint(expr=   m.x5 - m.x12 + m.x19 == 0)

m.c5 = Constraint(expr=   m.x6 - m.x13 + m.x20 == 0)

m.c6 = Constraint(expr=   m.x7 - m.x14 + m.x21 == 0.2)

m.c7 = Constraint(expr=   m.x8 - m.x15 + m.x22 == 0.2)

m.c8 = Constraint(expr=   m.x9 - m.x16 + m.x23 == 0.2)

m.c9 = Constraint(expr=   m.x10 + m.x11 + m.x12 + m.x13 + m.x14 + m.x15 + m.x16 <= 0.3)

m.c10 = Constraint(expr=   m.x10 - 0.11*m.b24 <= 0)

m.c11 = Constraint(expr=   m.x11 - 0.1*m.b25 <= 0)

m.c12 = Constraint(expr=   m.x12 - 0.07*m.b26 <= 0)

m.c13 = Constraint(expr=   m.x13 - 0.11*m.b27 <= 0)

m.c14 = Constraint(expr=   m.x14 - 0.2*m.b28 <= 0)

m.c15 = Constraint(expr=   m.x15 - 0.1*m.b29 <= 0)

m.c16 = Constraint(expr=   m.x16 - 0.1*m.b30 <= 0)

m.c17 = Constraint(expr=   m.x10 - 0.03*m.b24 >= 0)

m.c18 = Constraint(expr=   m.x11 - 0.04*m.b25 >= 0)

m.c19 = Constraint(expr=   m.x12 - 0.04*m.b26 >= 0)

m.c20 = Constraint(expr=   m.x13 - 0.03*m.b27 >= 0)

m.c21 = Constraint(expr=   m.x14 - 0.03*m.b28 >= 0)

m.c22 = Constraint(expr=   m.x15 - 0.03*m.b29 >= 0)

m.c23 = Constraint(expr=   m.x16 - 0.03*m.b30 >= 0)

m.c24 = Constraint(expr=   m.x17 - 0.2*m.b31 <= 0)

m.c25 = Constraint(expr=   m.x18 - 0.15*m.b32 <= 0)

m.c26 = Constraint(expr=   m.x19 <= 0)

m.c27 = Constraint(expr=   m.x20 <= 0)

m.c28 = Constraint(expr=   m.x21 - 0.1*m.b35 <= 0)

m.c29 = Constraint(expr=   m.x22 - 0.15*m.b36 <= 0)

m.c30 = Constraint(expr=   m.x23 - 0.2*m.b37 <= 0)

m.c31 = Constraint(expr=   m.x17 - 0.02*m.b31 >= 0)

m.c32 = Constraint(expr=   m.x18 - 0.02*m.b32 >= 0)

m.c33 = Constraint(expr=   m.x19 - 0.04*m.b33 >= 0)

m.c34 = Constraint(expr=   m.x20 - 0.04*m.b34 >= 0)

m.c35 = Constraint(expr=   m.x21 - 0.04*m.b35 >= 0)

m.c36 = Constraint(expr=   m.x22 - 0.04*m.b36 >= 0)

m.c37 = Constraint(expr=   m.x23 - 0.04*m.b37 >= 0)

m.c38 = Constraint(expr=   m.b24 + m.b31 <= 1)

m.c39 = Constraint(expr=   m.b25 + m.b32 <= 1)

m.c40 = Constraint(expr=   m.b26 + m.b33 <= 1)

m.c41 = Constraint(expr=   m.b27 + m.b34 <= 1)

m.c42 = Constraint(expr=   m.b28 + m.b35 <= 1)

m.c43 = Constraint(expr=   m.b29 + m.b36 <= 1)

m.c44 = Constraint(expr=   m.b30 + m.b37 <= 1)

m.c45 = Constraint(expr=   m.x2 - 0.1287*m.x3 - 0.1096*m.x4 - 0.0501*m.x5 - 0.1524*m.x6 - 0.0763*m.x7 - 0.1854*m.x8
                         - 0.062*m.x9 == 0)
