#  LP written by GAMS Convert at 12/13/18 10:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         46        9       26       11        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         61       61        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        237      237        0        0
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
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x46 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x59 - m.x60 - m.x61, sense=maximize)

m.c1 = Constraint(expr=   m.x18 - m.x20 - m.x21 >= 0)

m.c2 = Constraint(expr=   0.236*m.x2 - m.x22 - m.x23 >= 0)

m.c3 = Constraint(expr=   0.223*m.x2 - m.x3 - m.x24 - m.x25 - m.x26 >= 0)

m.c4 = Constraint(expr=   0.087*m.x2 - m.x4 - m.x27 >= 0)

m.c5 = Constraint(expr= - m.x1 + 0.111*m.x2 - m.x28 - m.x29 >= 0)

m.c6 = Constraint(expr=   0.315*m.x2 - m.x30 >= 0)

m.c7 = Constraint(expr=   0.807*m.x3 - m.x31 - m.x32 >= 0)

m.c8 = Constraint(expr=   0.31*m.x1 + 0.029*m.x2 + 0.129*m.x3 + 0.3*m.x4 - m.x33 >= 0)

m.c9 = Constraint(expr=   0.59*m.x1 + 0.59*m.x4 - m.x34 - m.x35 >= 0)

m.c10 = Constraint(expr=   0.22*m.x1 + 0.21*m.x4 - m.x36 - m.x37 >= 0)

m.c11 = Constraint(expr= - m.x38 >= 0)

m.c12 = Constraint(expr=   m.x19 - m.x39 - m.x40 >= 0)

m.c13 = Constraint(expr=   0.18*m.x7 - m.x41 - m.x42 >= 0)

m.c14 = Constraint(expr=   0.196*m.x7 - m.x8 - m.x43 - m.x44 - m.x45 >= 0)

m.c15 = Constraint(expr=   0.073*m.x7 - m.x9 - m.x46 >= 0)

m.c16 = Constraint(expr= - m.x6 + 0.091*m.x7 - m.x47 - m.x48 >= 0)

m.c17 = Constraint(expr=   0.443*m.x7 - m.x10 - m.x49 >= 0)

m.c18 = Constraint(expr=   0.836*m.x8 - m.x50 - m.x51 >= 0)

m.c19 = Constraint(expr=   0.38*m.x6 + 0.017*m.x7 + 0.099*m.x8 + 0.36*m.x9 - m.x52 >= 0)

m.c20 = Constraint(expr=   0.6*m.x6 + 0.58*m.x9 - m.x53 - m.x54 >= 0)

m.c21 = Constraint(expr=   0.15*m.x6 + 0.15*m.x9 - m.x55 - m.x56 >= 0)

m.c22 = Constraint(expr=   0.97*m.x10 - m.x57 >= 0)

m.c23 = Constraint(expr= - m.x2 + m.x16 >= 0)

m.c24 = Constraint(expr= - m.x7 + m.x17 >= 0)

m.c25 = Constraint(expr=   m.x2 + m.x7 <= 100)

m.c26 = Constraint(expr=   m.x3 + m.x8 <= 20)

m.c27 = Constraint(expr=   m.x1 + m.x4 + m.x6 + m.x9 <= 30)

m.c28 = Constraint(expr=   m.x16 <= 200)

m.c29 = Constraint(expr=   m.x17 <= 200)

m.c30 = Constraint(expr=   m.x11 - m.x33 - m.x52 == 0)

m.c31 = Constraint(expr=   m.x12 - m.x20 - m.x22 - m.x24 - m.x31 - m.x34 - m.x39 - m.x41 - m.x43 - m.x50 - m.x53 == 0)

m.c32 = Constraint(expr=   m.x13 - m.x21 - m.x23 - m.x25 - m.x32 - m.x35 - m.x40 - m.x42 - m.x44 - m.x51 - m.x54 == 0)

m.c33 = Constraint(expr=   m.x14 - m.x26 - m.x27 - m.x28 - m.x36 - m.x45 - m.x46 - m.x47 - m.x55 == 0)

m.c34 = Constraint(expr=   m.x15 - m.x29 - m.x30 - m.x37 - m.x38 - m.x48 - m.x49 - m.x56 - m.x57 == 0)

m.c35 = Constraint(expr= - 90*m.x12 + 91.8*m.x20 + 78.5*m.x22 + 65*m.x24 + 104*m.x31 + 93.7*m.x34 + 91.8*m.x39
                         + 78.5*m.x41 + 65*m.x43 + 104*m.x50 + 93.7*m.x53 >= 0)

m.c36 = Constraint(expr= - 86*m.x13 + 91.8*m.x21 + 78.5*m.x23 + 65*m.x25 + 104*m.x32 + 93.7*m.x35 + 91.8*m.x40
                         + 78.5*m.x42 + 65*m.x44 + 104*m.x51 + 93.7*m.x54 >= 0)

m.c37 = Constraint(expr= - 12.7*m.x12 + 199.2*m.x20 + 18.4*m.x22 + 6.54*m.x24 + 2.57*m.x31 + 6.9*m.x34 + 199.2*m.x39
                         + 18.4*m.x41 + 6.54*m.x43 + 2.57*m.x50 + 6.9*m.x53 <= 0)

m.c38 = Constraint(expr= - 12.7*m.x13 + 199.2*m.x21 + 18.4*m.x23 + 6.54*m.x25 + 2.57*m.x32 + 6.9*m.x35 + 199.2*m.x40
                         + 18.4*m.x42 + 6.54*m.x44 + 2.57*m.x51 + 6.9*m.x54 <= 0)

m.c39 = Constraint(expr= - 306*m.x14 + 272*m.x26 + 292*m.x27 + 295*m.x28 + 294.4*m.x36 + 272*m.x45 + 297.6*m.x46
                         + 303.3*m.x47 + 299.1*m.x55 <= 0)

m.c40 = Constraint(expr= - 0.5*m.x14 + 0.283*m.x26 + 0.526*m.x27 + 0.98*m.x28 + 0.353*m.x36 + 1.48*m.x45 + 2.83*m.x46
                         + 5.05*m.x47 + 1.31*m.x55 <= 0)

m.c41 = Constraint(expr= - 352*m.x15 + 295*m.x29 + 343*m.x30 + 294.4*m.x37 + 303.3*m.x48 + 365*m.x49 + 299.1*m.x56
                         + 365*m.x57 <= 0)

m.c42 = Constraint(expr= - 3.4*m.x15 + 0.98*m.x29 + 4.7*m.x30 + 0.353*m.x37 + 5.05*m.x48 + 11*m.x49 + 1.31*m.x56
                         + 6*m.x57 <= 0)

m.c44 = Constraint(expr= - 1.5*m.x11 - 10.5*m.x12 - 9.1*m.x13 - 7.7*m.x14 - 6.65*m.x15 + m.x59 == 0)

m.c45 = Constraint(expr= - 7.5*m.x16 - 6.5*m.x17 - 6.75*m.x18 - 6.75*m.x19 + m.x60 == 0)

m.c46 = Constraint(expr= - 0.08*m.x1 - 0.1*m.x2 - 0.15*m.x3 - 0.8*m.x4 - 0.1*m.x5 - 0.08*m.x6 - 0.1*m.x7 - 0.15*m.x8
                         - 0.8*m.x9 - 0.1*m.x10 + m.x61 == 0)
