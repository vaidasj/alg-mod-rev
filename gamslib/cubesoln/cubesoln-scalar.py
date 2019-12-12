#  MIP written by GAMS Convert at 12/13/18 11:34:19
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        101        2        0       99        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         77       50       27        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        496      496        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.x74 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   m.x28 + m.x29 + m.x30 + m.x31 + m.x32 + m.x33 + m.x34 + m.x35 + m.x36 + m.x37 + m.x38 + m.x39
                        + m.x40 + m.x41 + m.x42 + m.x43 + m.x44 + m.x45 + m.x46 + m.x47 + m.x48 + m.x49 + m.x50 + m.x51
                        + m.x52 + m.x53 + m.x54 + m.x55 + m.x56 + m.x57 + m.x58 + m.x59 + m.x60 + m.x61 + m.x62 + m.x63
                        + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + m.x74 + m.x75
                        + m.x76, sense=minimize)

m.c1 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13
                        + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25
                        + m.b26 + m.b27 == 13)

m.c2 = Constraint(expr=   m.b1 + m.b2 + m.b3 - m.x28 <= 2)

m.c3 = Constraint(expr= - m.b1 - m.b2 - m.b3 - m.x28 <= -1)

m.c4 = Constraint(expr=   m.b4 + m.b5 + m.b6 - m.x29 <= 2)

m.c5 = Constraint(expr= - m.b4 - m.b5 - m.b6 - m.x29 <= -1)

m.c6 = Constraint(expr=   m.b7 + m.b8 + m.b9 - m.x30 <= 2)

m.c7 = Constraint(expr= - m.b7 - m.b8 - m.b9 - m.x30 <= -1)

m.c8 = Constraint(expr=   m.b1 + m.b4 + m.b7 - m.x31 <= 2)

m.c9 = Constraint(expr= - m.b1 - m.b4 - m.b7 - m.x31 <= -1)

m.c10 = Constraint(expr=   m.b2 + m.b5 + m.b8 - m.x32 <= 2)

m.c11 = Constraint(expr= - m.b2 - m.b5 - m.b8 - m.x32 <= -1)

m.c12 = Constraint(expr=   m.b3 + m.b6 + m.b9 - m.x33 <= 2)

m.c13 = Constraint(expr= - m.b3 - m.b6 - m.b9 - m.x33 <= -1)

m.c14 = Constraint(expr=   m.b1 + m.b5 + m.b9 - m.x34 <= 2)

m.c15 = Constraint(expr= - m.b1 - m.b5 - m.b9 - m.x34 <= -1)

m.c16 = Constraint(expr=   m.b3 + m.b5 + m.b7 - m.x35 <= 2)

m.c17 = Constraint(expr= - m.b3 - m.b5 - m.b7 - m.x35 <= -1)

m.c18 = Constraint(expr=   m.b10 + m.b11 + m.b12 - m.x36 <= 2)

m.c19 = Constraint(expr= - m.b10 - m.b11 - m.b12 - m.x36 <= -1)

m.c20 = Constraint(expr=   m.b13 + m.b14 + m.b15 - m.x37 <= 2)

m.c21 = Constraint(expr= - m.b13 - m.b14 - m.b15 - m.x37 <= -1)

m.c22 = Constraint(expr=   m.b16 + m.b17 + m.b18 - m.x38 <= 2)

m.c23 = Constraint(expr= - m.b16 - m.b17 - m.b18 - m.x38 <= -1)

m.c24 = Constraint(expr=   m.b10 + m.b13 + m.b16 - m.x39 <= 2)

m.c25 = Constraint(expr= - m.b10 - m.b13 - m.b16 - m.x39 <= -1)

m.c26 = Constraint(expr=   m.b11 + m.b14 + m.b17 - m.x40 <= 2)

m.c27 = Constraint(expr= - m.b11 - m.b14 - m.b17 - m.x40 <= -1)

m.c28 = Constraint(expr=   m.b12 + m.b15 + m.b18 - m.x41 <= 2)

m.c29 = Constraint(expr= - m.b12 - m.b15 - m.b18 - m.x41 <= -1)

m.c30 = Constraint(expr=   m.b10 + m.b14 + m.b18 - m.x42 <= 2)

m.c31 = Constraint(expr= - m.b10 - m.b14 - m.b18 - m.x42 <= -1)

m.c32 = Constraint(expr=   m.b12 + m.b14 + m.b16 - m.x43 <= 2)

m.c33 = Constraint(expr= - m.b12 - m.b14 - m.b16 - m.x43 <= -1)

m.c34 = Constraint(expr=   m.b19 + m.b20 + m.b21 - m.x44 <= 2)

m.c35 = Constraint(expr= - m.b19 - m.b20 - m.b21 - m.x44 <= -1)

m.c36 = Constraint(expr=   m.b22 + m.b23 + m.b24 - m.x45 <= 2)

m.c37 = Constraint(expr= - m.b22 - m.b23 - m.b24 - m.x45 <= -1)

m.c38 = Constraint(expr=   m.b25 + m.b26 + m.b27 - m.x46 <= 2)

m.c39 = Constraint(expr= - m.b25 - m.b26 - m.b27 - m.x46 <= -1)

m.c40 = Constraint(expr=   m.b19 + m.b22 + m.b25 - m.x47 <= 2)

m.c41 = Constraint(expr= - m.b19 - m.b22 - m.b25 - m.x47 <= -1)

m.c42 = Constraint(expr=   m.b20 + m.b23 + m.b26 - m.x48 <= 2)

m.c43 = Constraint(expr= - m.b20 - m.b23 - m.b26 - m.x48 <= -1)

m.c44 = Constraint(expr=   m.b21 + m.b24 + m.b27 - m.x49 <= 2)

m.c45 = Constraint(expr= - m.b21 - m.b24 - m.b27 - m.x49 <= -1)

m.c46 = Constraint(expr=   m.b19 + m.b23 + m.b27 - m.x50 <= 2)

m.c47 = Constraint(expr= - m.b19 - m.b23 - m.b27 - m.x50 <= -1)

m.c48 = Constraint(expr=   m.b21 + m.b23 + m.b25 - m.x51 <= 2)

m.c49 = Constraint(expr= - m.b21 - m.b23 - m.b25 - m.x51 <= -1)

m.c50 = Constraint(expr=   m.b1 + m.b10 + m.b19 - m.x52 <= 2)

m.c51 = Constraint(expr= - m.b1 - m.b10 - m.b19 - m.x52 <= -1)

m.c52 = Constraint(expr=   m.b2 + m.b11 + m.b20 - m.x53 <= 2)

m.c53 = Constraint(expr= - m.b2 - m.b11 - m.b20 - m.x53 <= -1)

m.c54 = Constraint(expr=   m.b3 + m.b12 + m.b21 - m.x54 <= 2)

m.c55 = Constraint(expr= - m.b3 - m.b12 - m.b21 - m.x54 <= -1)

m.c56 = Constraint(expr=   m.b1 + m.b11 + m.b21 - m.x55 <= 2)

m.c57 = Constraint(expr= - m.b1 - m.b11 - m.b21 - m.x55 <= -1)

m.c58 = Constraint(expr=   m.b4 + m.b13 + m.b22 - m.x56 <= 2)

m.c59 = Constraint(expr= - m.b4 - m.b13 - m.b22 - m.x56 <= -1)

m.c60 = Constraint(expr=   m.b5 + m.b14 + m.b23 - m.x57 <= 2)

m.c61 = Constraint(expr= - m.b5 - m.b14 - m.b23 - m.x57 <= -1)

m.c62 = Constraint(expr=   m.b6 + m.b15 + m.b24 - m.x58 <= 2)

m.c63 = Constraint(expr= - m.b6 - m.b15 - m.b24 - m.x58 <= -1)

m.c64 = Constraint(expr=   m.b4 + m.b14 + m.b24 - m.x59 <= 2)

m.c65 = Constraint(expr= - m.b4 - m.b14 - m.b24 - m.x59 <= -1)

m.c66 = Constraint(expr=   m.b7 + m.b16 + m.b25 - m.x60 <= 2)

m.c67 = Constraint(expr= - m.b7 - m.b16 - m.b25 - m.x60 <= -1)

m.c68 = Constraint(expr=   m.b8 + m.b17 + m.b26 - m.x61 <= 2)

m.c69 = Constraint(expr= - m.b8 - m.b17 - m.b26 - m.x61 <= -1)

m.c70 = Constraint(expr=   m.b9 + m.b18 + m.b27 - m.x62 <= 2)

m.c71 = Constraint(expr= - m.b9 - m.b18 - m.b27 - m.x62 <= -1)

m.c72 = Constraint(expr=   m.b7 + m.b17 + m.b27 - m.x63 <= 2)

m.c73 = Constraint(expr= - m.b7 - m.b17 - m.b27 - m.x63 <= -1)

m.c74 = Constraint(expr=   m.b1 + m.b13 + m.b25 - m.x64 <= 2)

m.c75 = Constraint(expr= - m.b1 - m.b13 - m.b25 - m.x64 <= -1)

m.c76 = Constraint(expr=   m.b2 + m.b14 + m.b26 - m.x65 <= 2)

m.c77 = Constraint(expr= - m.b2 - m.b14 - m.b26 - m.x65 <= -1)

m.c78 = Constraint(expr=   m.b3 + m.b15 + m.b27 - m.x66 <= 2)

m.c79 = Constraint(expr= - m.b3 - m.b15 - m.b27 - m.x66 <= -1)

m.c80 = Constraint(expr=   m.b1 + m.b14 + m.b27 - m.x67 <= 2)

m.c81 = Constraint(expr= - m.b1 - m.b14 - m.b27 - m.x67 <= -1)

m.c82 = Constraint(expr=   m.b3 + m.b14 + m.b25 - m.x68 <= 2)

m.c83 = Constraint(expr= - m.b3 - m.b14 - m.b25 - m.x68 <= -1)

m.c84 = Constraint(expr=   m.b7 + m.b13 + m.b19 - m.x69 <= 2)

m.c85 = Constraint(expr= - m.b7 - m.b13 - m.b19 - m.x69 <= -1)

m.c86 = Constraint(expr=   m.b8 + m.b14 + m.b20 - m.x70 <= 2)

m.c87 = Constraint(expr= - m.b8 - m.b14 - m.b20 - m.x70 <= -1)

m.c88 = Constraint(expr=   m.b9 + m.b15 + m.b21 - m.x71 <= 2)

m.c89 = Constraint(expr= - m.b9 - m.b15 - m.b21 - m.x71 <= -1)

m.c90 = Constraint(expr=   m.b7 + m.b14 + m.b21 - m.x72 <= 2)

m.c91 = Constraint(expr= - m.b7 - m.b14 - m.b21 - m.x72 <= -1)

m.c92 = Constraint(expr=   m.b9 + m.b14 + m.b19 - m.x73 <= 2)

m.c93 = Constraint(expr= - m.b9 - m.b14 - m.b19 - m.x73 <= -1)

m.c94 = Constraint(expr=   m.b3 + m.b11 + m.b19 - m.x74 <= 2)

m.c95 = Constraint(expr= - m.b3 - m.b11 - m.b19 - m.x74 <= -1)

m.c96 = Constraint(expr=   m.b6 + m.b14 + m.b22 - m.x75 <= 2)

m.c97 = Constraint(expr= - m.b6 - m.b14 - m.b22 - m.x75 <= -1)

m.c98 = Constraint(expr=   m.b9 + m.b17 + m.b25 - m.x76 <= 2)

m.c99 = Constraint(expr= - m.b9 - m.b17 - m.b25 - m.x76 <= -1)

m.c101 = Constraint(expr= - m.b1 - m.b2 - m.b3 - m.b4 - m.b5 - m.b6 - m.b7 - m.b8 - m.b9 - m.b10 - m.b11 - m.b12 - m.b13
                          - m.b14 - m.b15 - m.b16 - m.b17 - m.b18 - m.b19 - m.b20 - m.b21 - m.b22 - m.b23 - m.b24
                          - m.b25 - m.b26 - m.b27 <= -1)
