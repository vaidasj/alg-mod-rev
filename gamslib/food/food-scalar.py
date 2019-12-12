#  MIP written by GAMS Convert at 12/13/18 11:30:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        133       37       36       60        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        127       97       30        0        0        0        0        0
#  FX      5        5        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        493      493        0        0
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
m.b37 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b38 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b39 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b40 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b41 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b42 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b43 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b44 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b45 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b46 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b47 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b48 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b49 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b50 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b51 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b52 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b53 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b54 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b55 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b56 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b57 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b58 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b59 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b60 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b61 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b62 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b63 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b64 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b65 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b66 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.x81 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x90 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x104 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x105 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x108 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x109 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x110 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x111 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x112 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x113 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x114 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x119 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x120 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x121 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x122 = Var(within=Reals,bounds=(500,500),initialize=500)
m.x123 = Var(within=Reals,bounds=(500,500),initialize=500)
m.x124 = Var(within=Reals,bounds=(500,500),initialize=500)
m.x125 = Var(within=Reals,bounds=(500,500),initialize=500)
m.x126 = Var(within=Reals,bounds=(500,500),initialize=500)

m.obj = Objective(expr=   150*m.x1 + 150*m.x2 + 150*m.x3 + 150*m.x4 + 150*m.x5 + 150*m.x6 - 110*m.x67 - 120*m.x68
                        - 130*m.x69 - 110*m.x70 - 115*m.x71 - 130*m.x72 - 130*m.x73 - 110*m.x74 - 90*m.x75 - 115*m.x76
                        - 110*m.x77 - 140*m.x78 - 130*m.x79 - 100*m.x80 - 95*m.x81 - 120*m.x82 - 110*m.x83 - 120*m.x84
                        - 120*m.x85 - 125*m.x86 - 100*m.x87 - 120*m.x88 - 150*m.x89 - 110*m.x90 - 105*m.x91 - 90*m.x92
                        - 100*m.x93 - 140*m.x94 - 80*m.x95 - 135*m.x96 - 5*m.x97 - 5*m.x98 - 5*m.x99 - 5*m.x100
                        - 5*m.x101 - 5*m.x102 - 5*m.x103 - 5*m.x104 - 5*m.x105 - 5*m.x106 - 5*m.x107 - 5*m.x108
                        - 5*m.x109 - 5*m.x110 - 5*m.x111 - 5*m.x112 - 5*m.x113 - 5*m.x114 - 5*m.x115 - 5*m.x116
                        - 5*m.x117 - 5*m.x118 - 5*m.x119 - 5*m.x120 - 5*m.x121 - 5*m.x122 - 5*m.x123 - 5*m.x124
                        - 5*m.x125 - 5*m.x126, sense=maximize)

m.c2 = Constraint(expr=   m.x7 + m.x8 <= 200)

m.c3 = Constraint(expr=   m.x12 + m.x13 <= 200)

m.c4 = Constraint(expr=   m.x17 + m.x18 <= 200)

m.c5 = Constraint(expr=   m.x22 + m.x23 <= 200)

m.c6 = Constraint(expr=   m.x27 + m.x28 <= 200)

m.c7 = Constraint(expr=   m.x32 + m.x33 <= 200)

m.c8 = Constraint(expr=   m.x9 + m.x10 + m.x11 <= 250)

m.c9 = Constraint(expr=   m.x14 + m.x15 + m.x16 <= 250)

m.c10 = Constraint(expr=   m.x19 + m.x20 + m.x21 <= 250)

m.c11 = Constraint(expr=   m.x24 + m.x25 + m.x26 <= 250)

m.c12 = Constraint(expr=   m.x29 + m.x30 + m.x31 <= 250)

m.c13 = Constraint(expr=   m.x34 + m.x35 + m.x36 <= 250)

m.c14 = Constraint(expr=   m.x1 - m.x7 - m.x8 - m.x9 - m.x10 - m.x11 == 0)

m.c15 = Constraint(expr=   m.x2 - m.x12 - m.x13 - m.x14 - m.x15 - m.x16 == 0)

m.c16 = Constraint(expr=   m.x3 - m.x17 - m.x18 - m.x19 - m.x20 - m.x21 == 0)

m.c17 = Constraint(expr=   m.x4 - m.x22 - m.x23 - m.x24 - m.x25 - m.x26 == 0)

m.c18 = Constraint(expr=   m.x5 - m.x27 - m.x28 - m.x29 - m.x30 - m.x31 == 0)

m.c19 = Constraint(expr=   m.x6 - m.x32 - m.x33 - m.x34 - m.x35 - m.x36 == 0)

m.c20 = Constraint(expr= - 3*m.x1 + 8.8*m.x7 + 6.1*m.x8 + 2*m.x9 + 4.2*m.x10 + 5*m.x11 >= 0)

m.c21 = Constraint(expr= - 3*m.x2 + 8.8*m.x12 + 6.1*m.x13 + 2*m.x14 + 4.2*m.x15 + 5*m.x16 >= 0)

m.c22 = Constraint(expr= - 3*m.x3 + 8.8*m.x17 + 6.1*m.x18 + 2*m.x19 + 4.2*m.x20 + 5*m.x21 >= 0)

m.c23 = Constraint(expr= - 3*m.x4 + 8.8*m.x22 + 6.1*m.x23 + 2*m.x24 + 4.2*m.x25 + 5*m.x26 >= 0)

m.c24 = Constraint(expr= - 3*m.x5 + 8.8*m.x27 + 6.1*m.x28 + 2*m.x29 + 4.2*m.x30 + 5*m.x31 >= 0)

m.c25 = Constraint(expr= - 3*m.x6 + 8.8*m.x32 + 6.1*m.x33 + 2*m.x34 + 4.2*m.x35 + 5*m.x36 >= 0)

m.c26 = Constraint(expr= - 6*m.x1 + 8.8*m.x7 + 6.1*m.x8 + 2*m.x9 + 4.2*m.x10 + 5*m.x11 <= 0)

m.c27 = Constraint(expr= - 6*m.x2 + 8.8*m.x12 + 6.1*m.x13 + 2*m.x14 + 4.2*m.x15 + 5*m.x16 <= 0)

m.c28 = Constraint(expr= - 6*m.x3 + 8.8*m.x17 + 6.1*m.x18 + 2*m.x19 + 4.2*m.x20 + 5*m.x21 <= 0)

m.c29 = Constraint(expr= - 6*m.x4 + 8.8*m.x22 + 6.1*m.x23 + 2*m.x24 + 4.2*m.x25 + 5*m.x26 <= 0)

m.c30 = Constraint(expr= - 6*m.x5 + 8.8*m.x27 + 6.1*m.x28 + 2*m.x29 + 4.2*m.x30 + 5*m.x31 <= 0)

m.c31 = Constraint(expr= - 6*m.x6 + 8.8*m.x32 + 6.1*m.x33 + 2*m.x34 + 4.2*m.x35 + 5*m.x36 <= 0)

m.c32 = Constraint(expr= - m.x7 + m.x67 - m.x97 + m.x122 == 0)

m.c33 = Constraint(expr= - m.x8 + m.x68 - m.x98 + m.x123 == 0)

m.c34 = Constraint(expr= - m.x9 + m.x69 - m.x99 + m.x124 == 0)

m.c35 = Constraint(expr= - m.x10 + m.x70 - m.x100 + m.x125 == 0)

m.c36 = Constraint(expr= - m.x11 + m.x71 - m.x101 + m.x126 == 0)

m.c37 = Constraint(expr= - m.x12 + m.x72 + m.x97 - m.x102 == 0)

m.c38 = Constraint(expr= - m.x13 + m.x73 + m.x98 - m.x103 == 0)

m.c39 = Constraint(expr= - m.x14 + m.x74 + m.x99 - m.x104 == 0)

m.c40 = Constraint(expr= - m.x15 + m.x75 + m.x100 - m.x105 == 0)

m.c41 = Constraint(expr= - m.x16 + m.x76 + m.x101 - m.x106 == 0)

m.c42 = Constraint(expr= - m.x17 + m.x77 + m.x102 - m.x107 == 0)

m.c43 = Constraint(expr= - m.x18 + m.x78 + m.x103 - m.x108 == 0)

m.c44 = Constraint(expr= - m.x19 + m.x79 + m.x104 - m.x109 == 0)

m.c45 = Constraint(expr= - m.x20 + m.x80 + m.x105 - m.x110 == 0)

m.c46 = Constraint(expr= - m.x21 + m.x81 + m.x106 - m.x111 == 0)

m.c47 = Constraint(expr= - m.x22 + m.x82 + m.x107 - m.x112 == 0)

m.c48 = Constraint(expr= - m.x23 + m.x83 + m.x108 - m.x113 == 0)

m.c49 = Constraint(expr= - m.x24 + m.x84 + m.x109 - m.x114 == 0)

m.c50 = Constraint(expr= - m.x25 + m.x85 + m.x110 - m.x115 == 0)

m.c51 = Constraint(expr= - m.x26 + m.x86 + m.x111 - m.x116 == 0)

m.c52 = Constraint(expr= - m.x27 + m.x87 + m.x112 - m.x117 == 0)

m.c53 = Constraint(expr= - m.x28 + m.x88 + m.x113 - m.x118 == 0)

m.c54 = Constraint(expr= - m.x29 + m.x89 + m.x114 - m.x119 == 0)

m.c55 = Constraint(expr= - m.x30 + m.x90 + m.x115 - m.x120 == 0)

m.c56 = Constraint(expr= - m.x31 + m.x91 + m.x116 - m.x121 == 0)

m.c57 = Constraint(expr= - m.x32 + m.x92 + m.x117 - m.x122 == 0)

m.c58 = Constraint(expr= - m.x33 + m.x93 + m.x118 - m.x123 == 0)

m.c59 = Constraint(expr= - m.x34 + m.x94 + m.x119 - m.x124 == 0)

m.c60 = Constraint(expr= - m.x35 + m.x95 + m.x120 - m.x125 == 0)

m.c61 = Constraint(expr= - m.x36 + m.x96 + m.x121 - m.x126 == 0)

m.c62 = Constraint(expr=   m.x7 - 20*m.b37 >= 0)

m.c63 = Constraint(expr=   m.x8 - 20*m.b38 >= 0)

m.c64 = Constraint(expr=   m.x9 - 20*m.b39 >= 0)

m.c65 = Constraint(expr=   m.x10 - 20*m.b40 >= 0)

m.c66 = Constraint(expr=   m.x11 - 20*m.b41 >= 0)

m.c67 = Constraint(expr=   m.x12 - 20*m.b42 >= 0)

m.c68 = Constraint(expr=   m.x13 - 20*m.b43 >= 0)

m.c69 = Constraint(expr=   m.x14 - 20*m.b44 >= 0)

m.c70 = Constraint(expr=   m.x15 - 20*m.b45 >= 0)

m.c71 = Constraint(expr=   m.x16 - 20*m.b46 >= 0)

m.c72 = Constraint(expr=   m.x17 - 20*m.b47 >= 0)

m.c73 = Constraint(expr=   m.x18 - 20*m.b48 >= 0)

m.c74 = Constraint(expr=   m.x19 - 20*m.b49 >= 0)

m.c75 = Constraint(expr=   m.x20 - 20*m.b50 >= 0)

m.c76 = Constraint(expr=   m.x21 - 20*m.b51 >= 0)

m.c77 = Constraint(expr=   m.x22 - 20*m.b52 >= 0)

m.c78 = Constraint(expr=   m.x23 - 20*m.b53 >= 0)

m.c79 = Constraint(expr=   m.x24 - 20*m.b54 >= 0)

m.c80 = Constraint(expr=   m.x25 - 20*m.b55 >= 0)

m.c81 = Constraint(expr=   m.x26 - 20*m.b56 >= 0)

m.c82 = Constraint(expr=   m.x27 - 20*m.b57 >= 0)

m.c83 = Constraint(expr=   m.x28 - 20*m.b58 >= 0)

m.c84 = Constraint(expr=   m.x29 - 20*m.b59 >= 0)

m.c85 = Constraint(expr=   m.x30 - 20*m.b60 >= 0)

m.c86 = Constraint(expr=   m.x31 - 20*m.b61 >= 0)

m.c87 = Constraint(expr=   m.x32 - 20*m.b62 >= 0)

m.c88 = Constraint(expr=   m.x33 - 20*m.b63 >= 0)

m.c89 = Constraint(expr=   m.x34 - 20*m.b64 >= 0)

m.c90 = Constraint(expr=   m.x35 - 20*m.b65 >= 0)

m.c91 = Constraint(expr=   m.x36 - 20*m.b66 >= 0)

m.c92 = Constraint(expr=   m.x7 - 200*m.b37 <= 0)

m.c93 = Constraint(expr=   m.x8 - 200*m.b38 <= 0)

m.c94 = Constraint(expr=   m.x9 - 250*m.b39 <= 0)

m.c95 = Constraint(expr=   m.x10 - 250*m.b40 <= 0)

m.c96 = Constraint(expr=   m.x11 - 250*m.b41 <= 0)

m.c97 = Constraint(expr=   m.x12 - 200*m.b42 <= 0)

m.c98 = Constraint(expr=   m.x13 - 200*m.b43 <= 0)

m.c99 = Constraint(expr=   m.x14 - 250*m.b44 <= 0)

m.c100 = Constraint(expr=   m.x15 - 250*m.b45 <= 0)

m.c101 = Constraint(expr=   m.x16 - 250*m.b46 <= 0)

m.c102 = Constraint(expr=   m.x17 - 200*m.b47 <= 0)

m.c103 = Constraint(expr=   m.x18 - 200*m.b48 <= 0)

m.c104 = Constraint(expr=   m.x19 - 250*m.b49 <= 0)

m.c105 = Constraint(expr=   m.x20 - 250*m.b50 <= 0)

m.c106 = Constraint(expr=   m.x21 - 250*m.b51 <= 0)

m.c107 = Constraint(expr=   m.x22 - 200*m.b52 <= 0)

m.c108 = Constraint(expr=   m.x23 - 200*m.b53 <= 0)

m.c109 = Constraint(expr=   m.x24 - 250*m.b54 <= 0)

m.c110 = Constraint(expr=   m.x25 - 250*m.b55 <= 0)

m.c111 = Constraint(expr=   m.x26 - 250*m.b56 <= 0)

m.c112 = Constraint(expr=   m.x27 - 200*m.b57 <= 0)

m.c113 = Constraint(expr=   m.x28 - 200*m.b58 <= 0)

m.c114 = Constraint(expr=   m.x29 - 250*m.b59 <= 0)

m.c115 = Constraint(expr=   m.x30 - 250*m.b60 <= 0)

m.c116 = Constraint(expr=   m.x31 - 250*m.b61 <= 0)

m.c117 = Constraint(expr=   m.x32 - 200*m.b62 <= 0)

m.c118 = Constraint(expr=   m.x33 - 200*m.b63 <= 0)

m.c119 = Constraint(expr=   m.x34 - 250*m.b64 <= 0)

m.c120 = Constraint(expr=   m.x35 - 250*m.b65 <= 0)

m.c121 = Constraint(expr=   m.x36 - 250*m.b66 <= 0)

m.c122 = Constraint(expr=   m.b37 + m.b38 + m.b39 + m.b40 + m.b41 <= 3)

m.c123 = Constraint(expr=   m.b42 + m.b43 + m.b44 + m.b45 + m.b46 <= 3)

m.c124 = Constraint(expr=   m.b47 + m.b48 + m.b49 + m.b50 + m.b51 <= 3)

m.c125 = Constraint(expr=   m.b52 + m.b53 + m.b54 + m.b55 + m.b56 <= 3)

m.c126 = Constraint(expr=   m.b57 + m.b58 + m.b59 + m.b60 + m.b61 <= 3)

m.c127 = Constraint(expr=   m.b62 + m.b63 + m.b64 + m.b65 + m.b66 <= 3)

m.c128 = Constraint(expr=   m.b37 + m.b38 - 2*m.b41 <= 0)

m.c129 = Constraint(expr=   m.b42 + m.b43 - 2*m.b46 <= 0)

m.c130 = Constraint(expr=   m.b47 + m.b48 - 2*m.b51 <= 0)

m.c131 = Constraint(expr=   m.b52 + m.b53 - 2*m.b56 <= 0)

m.c132 = Constraint(expr=   m.b57 + m.b58 - 2*m.b61 <= 0)

m.c133 = Constraint(expr=   m.b62 + m.b63 - 2*m.b66 <= 0)
