#  MIP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         89       53        4       32        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        118       77       41        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        384      384        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


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
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,9280),initialize=0)
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
m.b67 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b68 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b69 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b70 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b71 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b72 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b73 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b74 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b75 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b76 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b77 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b78 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b79 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b80 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b81 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b82 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b83 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b84 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b85 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b90 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x91 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(None,None),initialize=0)
m.b103 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b104 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b105 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b106 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b107 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b108 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b109 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b110 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x111 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x112 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x113 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x114 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   m.x2 + 0.970873786407767*m.x3 + 0.942595909133754*m.x4 + 0.91514165935316*m.x5 + m.x6
                        + 0.970873786407767*m.x7 + 0.942595909133754*m.x8 + 0.91514165935316*m.x9 + m.x10
                        + 0.970873786407767*m.x11 + 0.942595909133754*m.x12 + 0.91514165935316*m.x13, sense=minimize)

m.c2 = Constraint(expr=   m.x2 - 0.1*m.x18 - 3.5*m.x95 - 4.1*m.x96 - 10*m.b103 - 16*m.b104 == 0)

m.c3 = Constraint(expr=   m.x3 - 0.1*m.x19 - 3.5*m.x97 - 4.1*m.x98 - 10*m.b105 - 16*m.b106 == 0)

m.c4 = Constraint(expr=   m.x4 - 0.1*m.x20 - 3.5*m.x99 - 4.1*m.x100 - 10*m.b107 - 16*m.b108 == 0)

m.c5 = Constraint(expr=   m.x5 - 0.1*m.x21 - 3.5*m.x101 - 4.1*m.x102 - 10*m.b109 - 16*m.b110 == 0)

m.c6 = Constraint(expr=   m.x18 - 1000*m.x22 - 1000*m.x23 - 3000*m.x30 - 3000*m.x31 - 4500*m.x38 - 4500*m.x39
                        - 5800*m.x46 - 5800*m.x47 == 0)

m.c7 = Constraint(expr=   m.x19 - 1000*m.x24 - 1000*m.x25 - 3000*m.x32 - 3000*m.x33 - 4500*m.x40 - 4500*m.x41
                        - 5800*m.x48 - 5800*m.x49 == 0)

m.c8 = Constraint(expr=   m.x20 - 1000*m.x26 - 1000*m.x27 - 3000*m.x34 - 3000*m.x35 - 4500*m.x42 - 4500*m.x43
                        - 5800*m.x50 - 5800*m.x51 == 0)

m.c9 = Constraint(expr=   m.x21 - 1000*m.x28 - 1000*m.x29 - 3000*m.x36 - 3000*m.x37 - 4500*m.x44 - 4500*m.x45
                        - 5800*m.x52 - 5800*m.x53 == 0)

m.c10 = Constraint(expr= - 20*m.x22 - 40*m.x30 - 50*m.x38 - 60*m.x46 + m.x95 == 0)

m.c11 = Constraint(expr= - 20*m.x23 - 40*m.x31 - 50*m.x39 - 60*m.x47 + m.x96 == 0)

m.c12 = Constraint(expr= - 20*m.x24 - 40*m.x32 - 50*m.x40 - 60*m.x48 + m.x97 == 0)

m.c13 = Constraint(expr= - 20*m.x25 - 40*m.x33 - 50*m.x41 - 60*m.x49 + m.x98 == 0)

m.c14 = Constraint(expr= - 20*m.x26 - 40*m.x34 - 50*m.x42 - 60*m.x50 + m.x99 == 0)

m.c15 = Constraint(expr= - 20*m.x27 - 40*m.x35 - 50*m.x43 - 60*m.x51 + m.x100 == 0)

m.c16 = Constraint(expr= - 20*m.x28 - 40*m.x36 - 50*m.x44 - 60*m.x52 + m.x101 == 0)

m.c17 = Constraint(expr= - 20*m.x29 - 40*m.x37 - 50*m.x45 - 60*m.x53 + m.x102 == 0)

m.c18 = Constraint(expr=   m.x22 + m.x30 + m.x38 + m.x46 - m.b103 == 0)

m.c19 = Constraint(expr=   m.x23 + m.x31 + m.x39 + m.x47 - m.b104 == 0)

m.c20 = Constraint(expr=   m.x24 + m.x32 + m.x40 + m.x48 - m.b105 == 0)

m.c21 = Constraint(expr=   m.x25 + m.x33 + m.x41 + m.x49 - m.b106 == 0)

m.c22 = Constraint(expr=   m.x26 + m.x34 + m.x42 + m.x50 - m.b107 == 0)

m.c23 = Constraint(expr=   m.x27 + m.x35 + m.x43 + m.x51 - m.b108 == 0)

m.c24 = Constraint(expr=   m.x28 + m.x36 + m.x44 + m.x52 - m.b109 == 0)

m.c25 = Constraint(expr=   m.x29 + m.x37 + m.x45 + m.x53 - m.b110 == 0)

m.c26 = Constraint(expr=   m.x6 - 0.001*m.x14 - 15*m.b90 == 0)

m.c27 = Constraint(expr=   m.x7 - 0.001*m.x15 == 0)

m.c28 = Constraint(expr=   m.x8 - 0.001*m.x16 == 0)

m.c29 = Constraint(expr=   m.x9 - 0.001*m.x17 == 0)

m.c30 = Constraint(expr= - m.x18 + m.x86 == 0)

m.c31 = Constraint(expr= - m.x19 - m.x86 + m.x87 == 0)

m.c32 = Constraint(expr= - m.x20 - m.x87 + m.x88 == 0)

m.c33 = Constraint(expr= - m.x21 - m.x88 + m.x89 == -24000)

m.c34 = Constraint(expr=   m.x14 - 2*m.x86 + 48000*m.b90 >= 0)

m.c35 = Constraint(expr=   m.x15 - 2*m.x87 + 48000*m.b90 >= 0)

m.c36 = Constraint(expr=   m.x16 - 2*m.x88 + 48000*m.b90 >= 0)

m.c37 = Constraint(expr=   m.x17 - 2*m.x89 + 48000*m.b90 >= 0)

m.c38 = Constraint(expr=   m.x10 - 0.9*m.x111 - 0.15*m.x115 == 0)

m.c39 = Constraint(expr=   m.x11 - 0.9*m.x112 - 0.15*m.x116 == 0)

m.c40 = Constraint(expr=   m.x12 - 0.9*m.x113 - 0.15*m.x117 == 0)

m.c41 = Constraint(expr=   m.x13 - 0.9*m.x114 - 0.15*m.x118 == 0)

m.c42 = Constraint(expr=   m.x91 - m.x95 - m.x96 == 0)

m.c43 = Constraint(expr=   m.x92 - m.x97 - m.x98 == 0)

m.c44 = Constraint(expr=   m.x93 - m.x99 - m.x100 == 0)

m.c45 = Constraint(expr=   m.x94 - m.x101 - m.x102 == 0)

m.c46 = Constraint(expr=   m.x91 - m.x111 + m.x115 == 84)

m.c47 = Constraint(expr= - m.x91 + m.x92 - m.x112 + m.x116 == 0)

m.c48 = Constraint(expr= - m.x92 + m.x93 - m.x113 + m.x117 == 0)

m.c49 = Constraint(expr= - m.x93 + m.x94 - m.x114 + m.x118 == 0)

m.c50 = Constraint(expr=   m.b54 + m.b62 + m.b70 + m.b78 == 1)

m.c51 = Constraint(expr=   m.b55 + m.b63 + m.b71 + m.b79 == 1)

m.c52 = Constraint(expr=   m.b56 + m.b64 + m.b72 + m.b80 == 1)

m.c53 = Constraint(expr=   m.b57 + m.b65 + m.b73 + m.b81 == 1)

m.c54 = Constraint(expr=   m.b58 + m.b66 + m.b74 + m.b82 == 1)

m.c55 = Constraint(expr=   m.b59 + m.b67 + m.b75 + m.b83 == 1)

m.c56 = Constraint(expr=   m.b60 + m.b68 + m.b76 + m.b84 == 1)

m.c57 = Constraint(expr=   m.b61 + m.b69 + m.b77 + m.b85 == 1)

m.c58 = Constraint(expr=   m.x22 - m.b54 <= 0)

m.c59 = Constraint(expr=   m.x23 - m.b55 <= 0)

m.c60 = Constraint(expr=   m.x24 - m.b56 <= 0)

m.c61 = Constraint(expr=   m.x25 - m.b57 <= 0)

m.c62 = Constraint(expr=   m.x26 - m.b58 <= 0)

m.c63 = Constraint(expr=   m.x27 - m.b59 <= 0)

m.c64 = Constraint(expr=   m.x28 - m.b60 <= 0)

m.c65 = Constraint(expr=   m.x29 - m.b61 <= 0)

m.c66 = Constraint(expr=   m.x22 + m.x30 - m.b54 - m.b62 <= 0)

m.c67 = Constraint(expr=   m.x23 + m.x31 - m.b55 - m.b63 <= 0)

m.c68 = Constraint(expr=   m.x24 + m.x32 - m.b56 - m.b64 <= 0)

m.c69 = Constraint(expr=   m.x25 + m.x33 - m.b57 - m.b65 <= 0)

m.c70 = Constraint(expr=   m.x26 + m.x34 - m.b58 - m.b66 <= 0)

m.c71 = Constraint(expr=   m.x27 + m.x35 - m.b59 - m.b67 <= 0)

m.c72 = Constraint(expr=   m.x28 + m.x36 - m.b60 - m.b68 <= 0)

m.c73 = Constraint(expr=   m.x29 + m.x37 - m.b61 - m.b69 <= 0)

m.c74 = Constraint(expr=   m.x30 + m.x38 - m.b54 - m.b62 - m.b70 <= 0)

m.c75 = Constraint(expr=   m.x31 + m.x39 - m.b55 - m.b63 - m.b71 <= 0)

m.c76 = Constraint(expr=   m.x32 + m.x40 - m.b56 - m.b64 - m.b72 <= 0)

m.c77 = Constraint(expr=   m.x33 + m.x41 - m.b57 - m.b65 - m.b73 <= 0)

m.c78 = Constraint(expr=   m.x34 + m.x42 - m.b58 - m.b66 - m.b74 <= 0)

m.c79 = Constraint(expr=   m.x35 + m.x43 - m.b59 - m.b67 - m.b75 <= 0)

m.c80 = Constraint(expr=   m.x36 + m.x44 - m.b60 - m.b68 - m.b76 <= 0)

m.c81 = Constraint(expr=   m.x37 + m.x45 - m.b61 - m.b69 - m.b77 <= 0)

m.c82 = Constraint(expr=   m.x38 + m.x46 - m.b62 - m.b70 - m.b78 <= 0)

m.c83 = Constraint(expr=   m.x39 + m.x47 - m.b63 - m.b71 - m.b79 <= 0)

m.c84 = Constraint(expr=   m.x40 + m.x48 - m.b64 - m.b72 - m.b80 <= 0)

m.c85 = Constraint(expr=   m.x41 + m.x49 - m.b65 - m.b73 - m.b81 <= 0)

m.c86 = Constraint(expr=   m.x42 + m.x50 - m.b66 - m.b74 - m.b82 <= 0)

m.c87 = Constraint(expr=   m.x43 + m.x51 - m.b67 - m.b75 - m.b83 <= 0)

m.c88 = Constraint(expr=   m.x44 + m.x52 - m.b68 - m.b76 - m.b84 <= 0)

m.c89 = Constraint(expr=   m.x45 + m.x53 - m.b69 - m.b77 - m.b85 <= 0)
