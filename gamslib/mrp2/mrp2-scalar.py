#  MIP written by GAMS Convert at 12/13/18 10:32:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        135        1       78       56        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         81       41       40        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        451      451        0        0
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
m.b38 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b39 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b40 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=20)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=20)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=30)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=40)
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
m.x58 = Var(within=Reals,bounds=(0,None),initialize=10)
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
m.x77 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x78 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   8*m.x41 + 7*m.x42 + 6*m.x43 + 5*m.x44 + 4*m.x45 + 3*m.x46 + 2*m.x47 + m.x48 + 8*m.x49
                        + 7*m.x50 + 6*m.x51 + 5*m.x52 + 4*m.x53 + 3*m.x54 + 2*m.x55 + m.x56 + 8*m.x57 + 7*m.x58
                        + 6*m.x59 + 5*m.x60 + 4*m.x61 + 3*m.x62 + 2*m.x63 + m.x64 + 8*m.x65 + 7*m.x66 + 6*m.x67
                        + 5*m.x68 + 4*m.x69 + 3*m.x70 + 2*m.x71 + m.x72 + 8*m.x73 + 7*m.x74 + 6*m.x75 + 5*m.x76
                        + 4*m.x77 + 3*m.x78 + 2*m.x79 + m.x80, sense=minimize)

m.c2 = Constraint(expr=   m.x41 >= -30)

m.c3 = Constraint(expr=   m.x41 + m.x42 >= -10)

m.c4 = Constraint(expr=   m.x41 + m.x42 + m.x43 >= 20)

m.c5 = Constraint(expr=   m.x41 + m.x42 + m.x43 + m.x44 >= 40)

m.c6 = Constraint(expr=   m.x41 + m.x42 + m.x43 + m.x44 + m.x45 >= 70)

m.c7 = Constraint(expr=   m.x41 + m.x42 + m.x43 + m.x44 + m.x45 + m.x46 >= 110)

m.c8 = Constraint(expr= - 2*m.x41 >= -300)

m.c9 = Constraint(expr= - 2*m.x41 - 2*m.x42 >= -300)

m.c10 = Constraint(expr= - 2*m.x41 - 2*m.x42 - 2*m.x43 >= -300)

m.c11 = Constraint(expr= - 2*m.x41 - 2*m.x42 - 2*m.x43 - 2*m.x44 + m.x49 >= -300)

m.c12 = Constraint(expr= - 2*m.x41 - 2*m.x42 - 2*m.x43 - 2*m.x44 - 2*m.x45 + m.x49 + m.x50 >= -300)

m.c13 = Constraint(expr= - 2*m.x41 - 2*m.x42 - 2*m.x43 - 2*m.x44 - 2*m.x45 - 2*m.x46 + m.x49 + m.x50 + m.x51 >= -300)

m.c14 = Constraint(expr= - 2*m.x41 - 2*m.x42 - 2*m.x43 - 2*m.x44 - 2*m.x45 - 2*m.x46 - 2*m.x47 + m.x49 + m.x50 + m.x51
                         + m.x52 >= -300)

m.c15 = Constraint(expr= - 2*m.x41 - 2*m.x42 - 2*m.x43 - 2*m.x44 - 2*m.x45 - 2*m.x46 - 2*m.x47 - 2*m.x48 + m.x49 + m.x50
                         + m.x51 + m.x52 + m.x53 >= -300)

m.c16 = Constraint(expr= - m.x41 >= -100)

m.c17 = Constraint(expr= - m.x41 - m.x42 >= -100)

m.c18 = Constraint(expr= - m.x41 - m.x42 - m.x43 >= -100)

m.c19 = Constraint(expr= - m.x41 - m.x42 - m.x43 - m.x44 >= -100)

m.c20 = Constraint(expr= - m.x41 - m.x42 - m.x43 - m.x44 - m.x45 + m.x57 >= -100)

m.c21 = Constraint(expr= - m.x41 - m.x42 - m.x43 - m.x44 - m.x45 - m.x46 + m.x57 + m.x58 >= -100)

m.c22 = Constraint(expr= - m.x41 - m.x42 - m.x43 - m.x44 - m.x45 - m.x46 - m.x47 + m.x57 + m.x58 + m.x59 >= -100)

m.c23 = Constraint(expr= - m.x41 - m.x42 - m.x43 - m.x44 - m.x45 - m.x46 - m.x47 - m.x48 + m.x57 + m.x58 + m.x59 + m.x60
                         >= -100)

m.c24 = Constraint(expr= - m.x49 >= 0)

m.c25 = Constraint(expr= - m.x49 - m.x50 + m.x65 >= 0)

m.c26 = Constraint(expr= - m.x49 - m.x50 - m.x51 + m.x65 + m.x66 >= 0)

m.c27 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 + m.x65 + m.x66 + m.x67 >= 0)

m.c28 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 + m.x65 + m.x66 + m.x67 + m.x68 >= 0)

m.c29 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 >= 0)

m.c30 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 - m.x55 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69
                         + m.x70 >= 0)

m.c31 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 - m.x55 - m.x56 + m.x65 + m.x66 + m.x67 + m.x68
                         + m.x69 + m.x70 + m.x71 >= 0)

m.c32 = Constraint(expr= - m.x49 >= -900)

m.c33 = Constraint(expr= - m.x49 - m.x50 >= -900)

m.c34 = Constraint(expr= - m.x49 - m.x50 - m.x51 >= -900)

m.c35 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 >= -900)

m.c36 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 >= -900)

m.c37 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 >= -900)

m.c38 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 - m.x55 >= -900)

m.c39 = Constraint(expr= - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 - m.x55 - m.x56 >= -900)

m.c40 = Constraint(expr= - 100*m.b1 + m.x41 >= 0)

m.c41 = Constraint(expr= - 100*m.b2 + m.x42 >= 0)

m.c42 = Constraint(expr= - 100*m.b3 + m.x43 >= 0)

m.c43 = Constraint(expr= - 100*m.b4 + m.x44 >= 0)

m.c44 = Constraint(expr= - 100*m.b5 + m.x45 >= 0)

m.c45 = Constraint(expr= - 100*m.b6 + m.x46 >= 0)

m.c46 = Constraint(expr= - 100*m.b7 + m.x47 >= 0)

m.c47 = Constraint(expr= - 100*m.b8 + m.x48 >= 0)

m.c48 = Constraint(expr= - 400*m.b9 + m.x49 >= 0)

m.c49 = Constraint(expr= - 400*m.b10 + m.x50 >= 0)

m.c50 = Constraint(expr= - 400*m.b11 + m.x51 >= 0)

m.c51 = Constraint(expr= - 400*m.b12 + m.x52 >= 0)

m.c52 = Constraint(expr= - 400*m.b13 + m.x53 >= 0)

m.c53 = Constraint(expr= - 400*m.b14 + m.x54 >= 0)

m.c54 = Constraint(expr= - 400*m.b15 + m.x55 >= 0)

m.c55 = Constraint(expr= - 400*m.b16 + m.x56 >= 0)

m.c56 = Constraint(expr= - 100*m.b17 + m.x57 >= 0)

m.c57 = Constraint(expr= - 100*m.b18 + m.x58 >= 0)

m.c58 = Constraint(expr= - 100*m.b19 + m.x59 >= 0)

m.c59 = Constraint(expr= - 100*m.b20 + m.x60 >= 0)

m.c60 = Constraint(expr= - 100*m.b21 + m.x61 >= 0)

m.c61 = Constraint(expr= - 100*m.b22 + m.x62 >= 0)

m.c62 = Constraint(expr= - 100*m.b23 + m.x63 >= 0)

m.c63 = Constraint(expr= - 100*m.b24 + m.x64 >= 0)

m.c64 = Constraint(expr= - m.b25 + m.x65 >= 0)

m.c65 = Constraint(expr= - m.b26 + m.x66 >= 0)

m.c66 = Constraint(expr= - m.b27 + m.x67 >= 0)

m.c67 = Constraint(expr= - m.b28 + m.x68 >= 0)

m.c68 = Constraint(expr= - m.b29 + m.x69 >= 0)

m.c69 = Constraint(expr= - m.b30 + m.x70 >= 0)

m.c70 = Constraint(expr= - m.b31 + m.x71 >= 0)

m.c71 = Constraint(expr= - m.b32 + m.x72 >= 0)

m.c72 = Constraint(expr= - 1000*m.b33 + m.x73 >= 0)

m.c73 = Constraint(expr= - 1000*m.b34 + m.x74 >= 0)

m.c74 = Constraint(expr= - 1000*m.b35 + m.x75 >= 0)

m.c75 = Constraint(expr= - 1000*m.b36 + m.x76 >= 0)

m.c76 = Constraint(expr= - 1000*m.b37 + m.x77 >= 0)

m.c77 = Constraint(expr= - 1000*m.b38 + m.x78 >= 0)

m.c78 = Constraint(expr= - 1000*m.b39 + m.x79 >= 0)

m.c79 = Constraint(expr= - 1000*m.b40 + m.x80 >= 0)

m.c80 = Constraint(expr= - 200*m.b1 + m.x41 <= 0)

m.c81 = Constraint(expr= - 200*m.b2 + m.x42 <= 0)

m.c82 = Constraint(expr= - 200*m.b3 + m.x43 <= 0)

m.c83 = Constraint(expr= - 200*m.b4 + m.x44 <= 0)

m.c84 = Constraint(expr= - 200*m.b5 + m.x45 <= 0)

m.c85 = Constraint(expr= - 200*m.b6 + m.x46 <= 0)

m.c86 = Constraint(expr= - 200*m.b7 + m.x47 <= 0)

m.c87 = Constraint(expr= - 200*m.b8 + m.x48 <= 0)

m.c88 = Constraint(expr= - 400*m.b9 + m.x49 <= 0)

m.c89 = Constraint(expr= - 400*m.b10 + m.x50 <= 0)

m.c90 = Constraint(expr= - 400*m.b11 + m.x51 <= 0)

m.c91 = Constraint(expr= - 400*m.b12 + m.x52 <= 0)

m.c92 = Constraint(expr= - 400*m.b13 + m.x53 <= 0)

m.c93 = Constraint(expr= - 400*m.b14 + m.x54 <= 0)

m.c94 = Constraint(expr= - 400*m.b15 + m.x55 <= 0)

m.c95 = Constraint(expr= - 400*m.b16 + m.x56 <= 0)

m.c96 = Constraint(expr= - 200*m.b17 + m.x57 <= 0)

m.c97 = Constraint(expr= - 200*m.b18 + m.x58 <= 0)

m.c98 = Constraint(expr= - 200*m.b19 + m.x59 <= 0)

m.c99 = Constraint(expr= - 200*m.b20 + m.x60 <= 0)

m.c100 = Constraint(expr= - 200*m.b21 + m.x61 <= 0)

m.c101 = Constraint(expr= - 200*m.b22 + m.x62 <= 0)

m.c102 = Constraint(expr= - 200*m.b23 + m.x63 <= 0)

m.c103 = Constraint(expr= - 200*m.b24 + m.x64 <= 0)

m.c104 = Constraint(expr= - 400*m.b25 + m.x65 <= 0)

m.c105 = Constraint(expr= - 400*m.b26 + m.x66 <= 0)

m.c106 = Constraint(expr= - 400*m.b27 + m.x67 <= 0)

m.c107 = Constraint(expr= - 400*m.b28 + m.x68 <= 0)

m.c108 = Constraint(expr= - 400*m.b29 + m.x69 <= 0)

m.c109 = Constraint(expr= - 400*m.b30 + m.x70 <= 0)

m.c110 = Constraint(expr= - 400*m.b31 + m.x71 <= 0)

m.c111 = Constraint(expr= - 400*m.b32 + m.x72 <= 0)

m.c112 = Constraint(expr= - 1000*m.b33 + m.x73 <= 0)

m.c113 = Constraint(expr= - 1000*m.b34 + m.x74 <= 0)

m.c114 = Constraint(expr= - 1000*m.b35 + m.x75 <= 0)

m.c115 = Constraint(expr= - 1000*m.b36 + m.x76 <= 0)

m.c116 = Constraint(expr= - 1000*m.b37 + m.x77 <= 0)

m.c117 = Constraint(expr= - 1000*m.b38 + m.x78 <= 0)

m.c118 = Constraint(expr= - 1000*m.b39 + m.x79 <= 0)

m.c119 = Constraint(expr= - 1000*m.b40 + m.x80 <= 0)

m.c120 = Constraint(expr=   0.00208333*m.x41 <= 1)

m.c121 = Constraint(expr=   0.000104166*m.x41 + 0.000333333*m.x49 + 1E-6*m.x65 <= 1)

m.c122 = Constraint(expr=   0.00208333*m.x42 <= 1)

m.c123 = Constraint(expr=   0.000104166*m.x42 + 0.000333333*m.x50 + 1E-6*m.x66 <= 1)

m.c124 = Constraint(expr=   0.00208333*m.x43 <= 1)

m.c125 = Constraint(expr=   0.000104166*m.x43 + 0.000333333*m.x51 + 1E-6*m.x67 <= 1)

m.c126 = Constraint(expr=   0.00208333*m.x44 <= 1)

m.c127 = Constraint(expr=   0.000104166*m.x44 + 0.000333333*m.x52 + 1E-6*m.x68 <= 1)

m.c128 = Constraint(expr=   0.00208333*m.x45 <= 1)

m.c129 = Constraint(expr=   0.000104166*m.x45 + 0.000333333*m.x53 + 1E-6*m.x69 <= 1)

m.c130 = Constraint(expr=   0.00208333*m.x46 <= 1)

m.c131 = Constraint(expr=   0.000104166*m.x46 + 0.000333333*m.x54 + 1E-6*m.x70 <= 1)

m.c132 = Constraint(expr=   0.00208333*m.x47 <= 1)

m.c133 = Constraint(expr=   0.000104166*m.x47 + 0.000333333*m.x55 + 1E-6*m.x71 <= 1)

m.c134 = Constraint(expr=   0.00208333*m.x48 <= 1)

m.c135 = Constraint(expr=   0.000104166*m.x48 + 0.000333333*m.x56 + 1E-6*m.x72 <= 1)
