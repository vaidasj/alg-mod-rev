#  MIP written by GAMS Convert at 12/13/18 11:34:20
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         58       30       28        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         73       37       36        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        272      272        0        0


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
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b29 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b31 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b32 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b33 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b34 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b35 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b36 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.x73 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=m.x73, sense=minimize)

m.c1 = Constraint(expr=   m.b1 + m.b7 + m.b13 + m.b19 + m.b25 + m.b31 == 1)

m.c2 = Constraint(expr=   m.b2 + m.b8 + m.b14 + m.b20 + m.b26 + m.b32 == 1)

m.c3 = Constraint(expr=   m.b3 + m.b9 + m.b15 + m.b21 + m.b27 + m.b33 == 1)

m.c4 = Constraint(expr=   m.b4 + m.b10 + m.b16 + m.b22 + m.b28 + m.b34 == 1)

m.c5 = Constraint(expr=   m.b5 + m.b11 + m.b17 + m.b23 + m.b29 + m.b35 == 1)

m.c6 = Constraint(expr=   m.b6 + m.b12 + m.b18 + m.b24 + m.b30 + m.b36 == 1)

m.c7 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 == 1)

m.c8 = Constraint(expr=   m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 == 1)

m.c9 = Constraint(expr=   m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 == 1)

m.c10 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 == 1)

m.c11 = Constraint(expr=   m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 == 1)

m.c12 = Constraint(expr=   m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 == 1)

m.c13 = Constraint(expr=   m.x38 - m.x55 >= 0)

m.c14 = Constraint(expr=   m.x39 - m.x56 >= 0)

m.c15 = Constraint(expr=   m.x40 - m.x57 >= 0)

m.c16 = Constraint(expr=   m.x41 - m.x58 >= 0)

m.c17 = Constraint(expr=   m.x42 - m.x59 >= 0)

m.c18 = Constraint(expr=   m.x44 - m.x61 >= 0)

m.c19 = Constraint(expr=   m.x45 - m.x62 >= 0)

m.c20 = Constraint(expr=   m.x46 - m.x63 >= 0)

m.c21 = Constraint(expr=   m.x47 - m.x64 >= 0)

m.c22 = Constraint(expr=   m.x48 - m.x65 >= 0)

m.c23 = Constraint(expr=   m.x50 - m.x67 >= 0)

m.c24 = Constraint(expr=   m.x51 - m.x68 >= 0)

m.c25 = Constraint(expr=   m.x52 - m.x69 >= 0)

m.c26 = Constraint(expr=   m.x53 - m.x70 >= 0)

m.c27 = Constraint(expr=   m.x54 - m.x71 >= 0)

m.c28 = Constraint(expr=   m.x43 - m.x55 >= 0)

m.c29 = Constraint(expr=   m.x44 - m.x56 >= 0)

m.c30 = Constraint(expr=   m.x45 - m.x57 >= 0)

m.c31 = Constraint(expr=   m.x46 - m.x58 >= 0)

m.c32 = Constraint(expr=   m.x47 - m.x59 >= 0)

m.c33 = Constraint(expr=   m.x48 - m.x60 >= 0)

m.c34 = Constraint(expr=   m.x49 - m.x61 >= 0)

m.c35 = Constraint(expr=   m.x50 - m.x62 >= 0)

m.c36 = Constraint(expr=   m.x51 - m.x63 >= 0)

m.c37 = Constraint(expr=   m.x52 - m.x64 >= 0)

m.c38 = Constraint(expr=   m.x53 - m.x65 >= 0)

m.c39 = Constraint(expr=   m.x54 - m.x66 >= 0)

m.c40 = Constraint(expr= - 3*m.b1 - 6*m.b7 - 3*m.b13 - 5*m.b19 - 5*m.b25 - 7*m.b31 - m.x37 + m.x55 == 0)

m.c41 = Constraint(expr= - 3*m.b2 - 6*m.b8 - 3*m.b14 - 5*m.b20 - 5*m.b26 - 7*m.b32 - m.x38 + m.x56 == 0)

m.c42 = Constraint(expr= - 3*m.b3 - 6*m.b9 - 3*m.b15 - 5*m.b21 - 5*m.b27 - 7*m.b33 - m.x39 + m.x57 == 0)

m.c43 = Constraint(expr= - 3*m.b4 - 6*m.b10 - 3*m.b16 - 5*m.b22 - 5*m.b28 - 7*m.b34 - m.x40 + m.x58 == 0)

m.c44 = Constraint(expr= - 3*m.b5 - 6*m.b11 - 3*m.b17 - 5*m.b23 - 5*m.b29 - 7*m.b35 - m.x41 + m.x59 == 0)

m.c45 = Constraint(expr= - 3*m.b6 - 6*m.b12 - 3*m.b18 - 5*m.b24 - 5*m.b30 - 7*m.b36 - m.x42 + m.x60 == 0)

m.c46 = Constraint(expr= - 5*m.b1 - 4*m.b7 - 2*m.b13 - 4*m.b19 - 4*m.b25 - 5*m.b31 - m.x43 + m.x61 == 0)

m.c47 = Constraint(expr= - 5*m.b2 - 4*m.b8 - 2*m.b14 - 4*m.b20 - 4*m.b26 - 5*m.b32 - m.x44 + m.x62 == 0)

m.c48 = Constraint(expr= - 5*m.b3 - 4*m.b9 - 2*m.b15 - 4*m.b21 - 4*m.b27 - 5*m.b33 - m.x45 + m.x63 == 0)

m.c49 = Constraint(expr= - 5*m.b4 - 4*m.b10 - 2*m.b16 - 4*m.b22 - 4*m.b28 - 5*m.b34 - m.x46 + m.x64 == 0)

m.c50 = Constraint(expr= - 5*m.b5 - 4*m.b11 - 2*m.b17 - 4*m.b23 - 4*m.b29 - 5*m.b35 - m.x47 + m.x65 == 0)

m.c51 = Constraint(expr= - 5*m.b6 - 4*m.b12 - 2*m.b18 - 4*m.b24 - 4*m.b30 - 5*m.b36 - m.x48 + m.x66 == 0)

m.c52 = Constraint(expr= - 5*m.b1 - 2*m.b7 - 4*m.b13 - 6*m.b19 - 3*m.b25 - 6*m.b31 - m.x49 + m.x67 == 0)

m.c53 = Constraint(expr= - 5*m.b2 - 2*m.b8 - 4*m.b14 - 6*m.b20 - 3*m.b26 - 6*m.b32 - m.x50 + m.x68 == 0)

m.c54 = Constraint(expr= - 5*m.b3 - 2*m.b9 - 4*m.b15 - 6*m.b21 - 3*m.b27 - 6*m.b33 - m.x51 + m.x69 == 0)

m.c55 = Constraint(expr= - 5*m.b4 - 2*m.b10 - 4*m.b16 - 6*m.b22 - 3*m.b28 - 6*m.b34 - m.x52 + m.x70 == 0)

m.c56 = Constraint(expr= - 5*m.b5 - 2*m.b11 - 4*m.b17 - 6*m.b23 - 3*m.b29 - 6*m.b35 - m.x53 + m.x71 == 0)

m.c57 = Constraint(expr= - 5*m.b6 - 2*m.b12 - 4*m.b18 - 6*m.b24 - 3*m.b30 - 6*m.b36 - m.x54 + m.x72 == 0)

m.c58 = Constraint(expr= - m.x72 + m.x73 >= 0)
