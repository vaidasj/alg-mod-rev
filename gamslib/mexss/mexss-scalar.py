#  LP written by GAMS Convert at 12/13/18 10:24:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         74        5       43       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         78       78        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        230      230        0        0
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
m.x58 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x62 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x63 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x64 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x65 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x66 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x67 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x68 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x69 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x70 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x73 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x77 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x78 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x75 + m.x76 + m.x77 - m.x78, sense=minimize)

m.c1 = Constraint(expr=   m.x11 + m.x16 + m.x21 - m.x26 - m.x27 - m.x28 - m.x69 >= 0)

m.c2 = Constraint(expr=   m.x12 + m.x17 + m.x22 - m.x29 - m.x30 - m.x31 - m.x70 >= 0)

m.c3 = Constraint(expr=   m.x13 + m.x18 + m.x23 - m.x32 - m.x33 - m.x34 - m.x71 >= 0)

m.c4 = Constraint(expr=   m.x14 + m.x19 + m.x24 - m.x35 - m.x36 - m.x37 - m.x72 >= 0)

m.c5 = Constraint(expr=   m.x15 + m.x20 + m.x25 - m.x38 - m.x39 - m.x40 - m.x73 >= 0)

m.c6 = Constraint(expr=   m.x1 - 0.77*m.x11 - 0.95*m.x21 >= 0)

m.c7 = Constraint(expr=   m.x2 - 0.77*m.x12 - 0.95*m.x22 >= 0)

m.c8 = Constraint(expr=   m.x3 - 0.77*m.x13 - 0.95*m.x23 >= 0)

m.c9 = Constraint(expr=   m.x4 - 0.77*m.x14 - 0.95*m.x24 >= 0)

m.c10 = Constraint(expr=   m.x5 - 0.77*m.x15 - 0.95*m.x25 >= 0)

m.c11 = Constraint(expr=   m.x6 - 1.09*m.x16 >= 0)

m.c12 = Constraint(expr=   m.x7 - 1.09*m.x17 >= 0)

m.c13 = Constraint(expr=   m.x8 - 1.09*m.x18 >= 0)

m.c14 = Constraint(expr=   m.x9 - 1.09*m.x19 >= 0)

m.c15 = Constraint(expr=   m.x10 - 1.09*m.x20 >= 0)

m.c16 = Constraint(expr= - 1.58*m.x1 - 1.38*m.x6 + m.x41 >= 0)

m.c17 = Constraint(expr= - 1.58*m.x2 - 1.38*m.x7 + m.x42 >= 0)

m.c18 = Constraint(expr= - 1.58*m.x3 - 1.38*m.x8 + m.x43 >= 0)

m.c19 = Constraint(expr= - 1.58*m.x4 - 1.38*m.x9 + m.x44 >= 0)

m.c20 = Constraint(expr= - 1.58*m.x5 - 1.38*m.x10 + m.x45 >= 0)

m.c21 = Constraint(expr= - 0.63*m.x1 + m.x46 >= 0)

m.c22 = Constraint(expr= - 0.63*m.x2 + m.x47 >= 0)

m.c23 = Constraint(expr= - 0.63*m.x3 + m.x48 >= 0)

m.c24 = Constraint(expr= - 0.63*m.x4 + m.x49 >= 0)

m.c25 = Constraint(expr= - 0.63*m.x5 + m.x50 >= 0)

m.c26 = Constraint(expr= - 0.57*m.x6 + m.x51 >= 0)

m.c27 = Constraint(expr= - 0.57*m.x7 + m.x52 >= 0)

m.c28 = Constraint(expr= - 0.57*m.x8 + m.x53 >= 0)

m.c29 = Constraint(expr= - 0.57*m.x9 + m.x54 >= 0)

m.c30 = Constraint(expr= - 0.57*m.x10 + m.x55 >= 0)

m.c31 = Constraint(expr= - 0.58*m.x16 + m.x56 >= 0)

m.c32 = Constraint(expr= - 0.58*m.x17 + m.x57 >= 0)

m.c33 = Constraint(expr= - 0.58*m.x18 + m.x58 >= 0)

m.c34 = Constraint(expr= - 0.58*m.x19 + m.x59 >= 0)

m.c35 = Constraint(expr= - 0.58*m.x20 + m.x60 >= 0)

m.c36 = Constraint(expr= - 0.33*m.x11 - 0.12*m.x21 + m.x61 >= 0)

m.c37 = Constraint(expr= - 0.33*m.x12 - 0.12*m.x22 + m.x62 >= 0)

m.c38 = Constraint(expr= - 0.33*m.x13 - 0.12*m.x23 + m.x63 >= 0)

m.c39 = Constraint(expr= - 0.33*m.x14 - 0.12*m.x24 + m.x64 >= 0)

m.c40 = Constraint(expr= - 0.33*m.x15 - 0.12*m.x25 + m.x65 >= 0)

m.c41 = Constraint(expr=   m.x1 <= 3.25)

m.c42 = Constraint(expr=   m.x2 <= 1.4)

m.c43 = Constraint(expr=   m.x3 <= 1.1)

m.c44 = Constraint(expr=   m.x4 <= 0)

m.c45 = Constraint(expr=   m.x5 <= 0)

m.c46 = Constraint(expr=   m.x11 <= 1.5)

m.c47 = Constraint(expr=   m.x12 <= 0.85)

m.c48 = Constraint(expr=   m.x13 <= 0)

m.c49 = Constraint(expr=   m.x14 <= 0)

m.c50 = Constraint(expr=   m.x15 <= 0)

m.c51 = Constraint(expr=   m.x21 <= 2.07)

m.c52 = Constraint(expr=   m.x22 <= 1.5)

m.c53 = Constraint(expr=   m.x23 <= 1.3)

m.c54 = Constraint(expr=   m.x24 <= 0)

m.c55 = Constraint(expr=   m.x25 <= 0)

m.c56 = Constraint(expr=   m.x6 <= 0)

m.c57 = Constraint(expr=   m.x7 <= 0)

m.c58 = Constraint(expr=   m.x8 <= 0)

m.c59 = Constraint(expr=   m.x9 <= 0.98)

m.c60 = Constraint(expr=   m.x10 <= 1)

m.c61 = Constraint(expr=   m.x16 <= 0)

m.c62 = Constraint(expr=   m.x17 <= 0)

m.c63 = Constraint(expr=   m.x18 <= 0)

m.c64 = Constraint(expr=   m.x19 <= 1.13)

m.c65 = Constraint(expr=   m.x20 <= 0.56)

m.c66 = Constraint(expr=   m.x26 + m.x29 + m.x32 + m.x35 + m.x38 + m.x66 >= 4.01093)

m.c67 = Constraint(expr=   m.x27 + m.x30 + m.x33 + m.x36 + m.x39 + m.x67 >= 2.18778)

m.c68 = Constraint(expr=   m.x28 + m.x31 + m.x34 + m.x37 + m.x40 + m.x68 >= 1.09389)

m.c69 = Constraint(expr=   m.x69 + m.x70 + m.x71 + m.x72 + m.x73 <= 1)

m.c71 = Constraint(expr= - 18.7*m.x41 - 18.7*m.x42 - 18.7*m.x43 - 18.7*m.x44 - 18.7*m.x45 - 52.17*m.x46 - 52.17*m.x47
                         - 52.17*m.x48 - 52.17*m.x49 - 52.17*m.x50 - 14*m.x51 - 14*m.x52 - 14*m.x53 - 14*m.x54
                         - 14*m.x55 - 24*m.x56 - 24*m.x57 - 24*m.x58 - 24*m.x59 - 24*m.x60 - 105*m.x61 - 105*m.x62
                         - 105*m.x63 - 105*m.x64 - 105*m.x65 + m.x75 == 0)

m.c72 = Constraint(expr= - 12.5936*m.x26 - 4.3112*m.x27 - 11.93*m.x28 - 11.0228*m.x29 - 11.132*m.x31 - 9.3596*m.x32
                         - 13.442*m.x33 - 8.3936*m.x34 - 11.0228*m.x35 - 11.132*m.x37 - 4.034*m.x38 - 11.594*m.x39
                         - 8.864*m.x40 - 6.0752*m.x66 - 6.8564*m.x67 - 5*m.x68 - 8.6876*m.x69 - 6.8564*m.x70
                         - 6.8564*m.x72 - 5.126*m.x73 + m.x76 == 0)

m.c73 = Constraint(expr= - 150*m.x66 - 150*m.x67 - 150*m.x68 + m.x77 == 0)

m.c74 = Constraint(expr= - 140*m.x69 - 140*m.x70 - 140*m.x71 - 140*m.x72 - 140*m.x73 + m.x78 == 0)
