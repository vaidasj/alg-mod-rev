#  MIP written by GAMS Convert at 12/13/18 10:32:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         87       28        0       59        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         68       38       30        0        0        0        0        0
#  FX      3        0        3        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        239      239        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b29 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
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

m.obj = Objective(expr=   m.x58 + m.x59 + m.x60 + m.x61 + m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67, sense=maximize)

m.c1 = Constraint(expr= - m.b1 + m.x58 <= 0)

m.c2 = Constraint(expr= - m.b2 + m.x59 <= 0)

m.c3 = Constraint(expr= - m.b3 + m.x60 <= 0)

m.c4 = Constraint(expr= - m.b4 + m.x61 <= 0)

m.c5 = Constraint(expr= - m.b5 + m.x62 <= 0)

m.c6 = Constraint(expr= - m.b6 + m.x63 <= 0)

m.c7 = Constraint(expr= - m.b7 + m.x64 <= 0)

m.c8 = Constraint(expr= - m.b8 + m.x65 <= 0)

m.c9 = Constraint(expr= - m.b9 + m.x66 <= 0)

m.c10 = Constraint(expr= - m.b10 + m.x67 <= 0)

m.c11 = Constraint(expr= - m.b11 + m.x58 <= 0)

m.c12 = Constraint(expr= - m.b12 + m.x59 <= 0)

m.c13 = Constraint(expr= - m.b13 + m.x60 <= 0)

m.c14 = Constraint(expr= - m.b14 + m.x61 <= 0)

m.c15 = Constraint(expr= - m.b15 + m.x62 <= 0)

m.c16 = Constraint(expr= - m.b16 + m.x63 <= 0)

m.c17 = Constraint(expr= - m.b17 + m.x64 <= 0)

m.c18 = Constraint(expr= - m.b18 + m.x65 <= 0)

m.c19 = Constraint(expr= - m.b19 + m.x66 <= 0)

m.c20 = Constraint(expr= - m.b20 + m.x67 <= 0)

m.c21 = Constraint(expr= - m.b21 + m.x58 <= 0)

m.c22 = Constraint(expr= - m.b22 + m.x59 <= 0)

m.c23 = Constraint(expr= - m.b23 + m.x60 <= 0)

m.c24 = Constraint(expr= - m.b24 + m.x61 <= 0)

m.c25 = Constraint(expr= - m.b25 + m.x62 <= 0)

m.c26 = Constraint(expr= - m.b26 + m.x63 <= 0)

m.c27 = Constraint(expr= - m.b27 + m.x64 <= 0)

m.c28 = Constraint(expr= - m.b28 + m.x65 <= 0)

m.c29 = Constraint(expr= - m.b29 + m.x66 <= 0)

m.c30 = Constraint(expr= - m.b30 + m.x67 <= 0)

m.c31 = Constraint(expr= - m.b1 + m.b2 - m.x31 == 0)

m.c32 = Constraint(expr= - m.b2 + m.b3 + m.x32 == 0)

m.c33 = Constraint(expr= - m.b3 + m.b4 - m.x33 == 0)

m.c34 = Constraint(expr= - m.b4 + m.b5 + m.x34 == 0)

m.c35 = Constraint(expr= - m.b5 + m.b6 - m.x35 == 0)

m.c36 = Constraint(expr= - m.b6 + m.b7 + m.x36 == 0)

m.c37 = Constraint(expr= - m.b7 + m.b8 - m.x37 == 0)

m.c38 = Constraint(expr= - m.b8 + m.b9 + m.x38 == 0)

m.c39 = Constraint(expr= - m.b9 + m.b10 - m.x39 == 0)

m.c40 = Constraint(expr= - m.b11 + m.b12 - m.x40 == 0)

m.c41 = Constraint(expr= - m.b12 + m.b13 + m.x41 == 0)

m.c42 = Constraint(expr= - m.b13 + m.b14 - m.x42 == 0)

m.c43 = Constraint(expr= - m.b14 + m.b15 + m.x43 == 0)

m.c44 = Constraint(expr= - m.b15 + m.b16 - m.x44 == 0)

m.c45 = Constraint(expr= - m.b16 + m.b17 + m.x45 == 0)

m.c46 = Constraint(expr= - m.b17 + m.b18 - m.x46 == 0)

m.c47 = Constraint(expr= - m.b18 + m.b19 + m.x47 == 0)

m.c48 = Constraint(expr= - m.b19 + m.b20 - m.x48 == 0)

m.c49 = Constraint(expr= - m.b21 + m.b22 - m.x49 == 0)

m.c50 = Constraint(expr= - m.b22 + m.b23 + m.x50 == 0)

m.c51 = Constraint(expr= - m.b23 + m.b24 - m.x51 == 0)

m.c52 = Constraint(expr= - m.b24 + m.b25 + m.x52 == 0)

m.c53 = Constraint(expr= - m.b25 + m.b26 - m.x53 == 0)

m.c54 = Constraint(expr= - m.b26 + m.b27 + m.x54 == 0)

m.c55 = Constraint(expr= - m.b27 + m.b28 - m.x55 == 0)

m.c56 = Constraint(expr= - m.b28 + m.b29 + m.x56 == 0)

m.c57 = Constraint(expr= - m.b29 + m.b30 - m.x57 == 0)

m.c58 = Constraint(expr=   m.x31 + m.x40 + m.x49 <= 1)

m.c59 = Constraint(expr=   m.x32 + m.x41 + m.x50 <= 1)

m.c60 = Constraint(expr=   m.x33 + m.x42 + m.x51 <= 1)

m.c61 = Constraint(expr=   m.x34 + m.x43 + m.x52 <= 1)

m.c62 = Constraint(expr=   m.x35 + m.x44 + m.x53 <= 1)

m.c63 = Constraint(expr=   m.x36 + m.x45 + m.x54 <= 1)

m.c64 = Constraint(expr=   m.x37 + m.x46 + m.x55 <= 1)

m.c65 = Constraint(expr=   m.x38 + m.x47 + m.x56 <= 1)

m.c66 = Constraint(expr=   m.x39 + m.x48 + m.x57 <= 1)

m.c67 = Constraint(expr=   m.b1 + m.b11 - m.x58 <= 1)

m.c68 = Constraint(expr= - m.b2 - m.b12 - m.x59 <= -1)

m.c69 = Constraint(expr=   m.b3 + m.b13 - m.x60 <= 1)

m.c70 = Constraint(expr= - m.b4 - m.b14 - m.x61 <= -1)

m.c71 = Constraint(expr=   m.b5 + m.b15 - m.x62 <= 1)

m.c72 = Constraint(expr= - m.b6 - m.b16 - m.x63 <= -1)

m.c73 = Constraint(expr=   m.b7 + m.b17 - m.x64 <= 1)

m.c74 = Constraint(expr= - m.b8 - m.b18 - m.x65 <= -1)

m.c75 = Constraint(expr=   m.b9 + m.b19 - m.x66 <= 1)

m.c76 = Constraint(expr= - m.b10 - m.b20 - m.x67 <= -1)

m.c77 = Constraint(expr=   m.b1 + m.b21 - m.x58 <= 1)

m.c78 = Constraint(expr= - m.b2 - m.b22 - m.x59 <= -1)

m.c79 = Constraint(expr=   m.b3 + m.b23 - m.x60 <= 1)

m.c80 = Constraint(expr= - m.b4 - m.b24 - m.x61 <= -1)

m.c81 = Constraint(expr=   m.b5 + m.b25 - m.x62 <= 1)

m.c82 = Constraint(expr= - m.b6 - m.b26 - m.x63 <= -1)

m.c83 = Constraint(expr=   m.b7 + m.b27 - m.x64 <= 1)

m.c84 = Constraint(expr= - m.b8 - m.b28 - m.x65 <= -1)

m.c85 = Constraint(expr=   m.b9 + m.b29 - m.x66 <= 1)

m.c86 = Constraint(expr= - m.b10 - m.b30 - m.x67 <= -1)
