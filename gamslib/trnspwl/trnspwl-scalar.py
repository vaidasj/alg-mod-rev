#  MIP written by GAMS Convert at 12/13/18 11:30:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         66       13        3       50        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         97       55       42        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        313      313        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=25)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=275)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=325)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=275)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.b86 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b87 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b88 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b89 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b90 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b91 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b92 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b93 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b94 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b95 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b96 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b97 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   0.225*m.x8 + 0.153*m.x9 + 0.162*m.x10 + 0.225*m.x11 + 0.162*m.x12 + 0.126*m.x13
                       , sense=minimize)

m.c1 = Constraint(expr=   m.x1 + m.x2 + m.x3 <= 350)

m.c2 = Constraint(expr=   m.x4 + m.x5 + m.x6 <= 600)

m.c3 = Constraint(expr=   m.x1 + m.x4 >= 325)

m.c4 = Constraint(expr=   m.x2 + m.x5 >= 300)

m.c5 = Constraint(expr=   m.x3 + m.x6 >= 275)

m.c6 = Constraint(expr=   m.x1 - 50*m.x14 - 70*m.x15 - 70*m.x16 - 70*m.x17 - 70*m.x18 - 70*m.x19 - 200*m.x20 - 50*m.b57
                        - 120*m.b58 - 190*m.b59 - 260*m.b60 - 330*m.b61 - 400*m.b62 == 0)

m.c7 = Constraint(expr=   m.x2 - 50*m.x21 - 70*m.x22 - 70*m.x23 - 70*m.x24 - 70*m.x25 - 70*m.x26 - 200*m.x27 - 50*m.b64
                        - 120*m.b65 - 190*m.b66 - 260*m.b67 - 330*m.b68 - 400*m.b69 == 0)

m.c8 = Constraint(expr=   m.x3 - 50*m.x28 - 70*m.x29 - 70*m.x30 - 70*m.x31 - 70*m.x32 - 70*m.x33 - 200*m.x34 - 50*m.b71
                        - 120*m.b72 - 190*m.b73 - 260*m.b74 - 330*m.b75 - 400*m.b76 == 0)

m.c9 = Constraint(expr=   m.x4 - 50*m.x35 - 70*m.x36 - 70*m.x37 - 70*m.x38 - 70*m.x39 - 70*m.x40 - 200*m.x41 - 50*m.b78
                        - 120*m.b79 - 190*m.b80 - 260*m.b81 - 330*m.b82 - 400*m.b83 == 0)

m.c10 = Constraint(expr=   m.x5 - 50*m.x42 - 70*m.x43 - 70*m.x44 - 70*m.x45 - 70*m.x46 - 70*m.x47 - 200*m.x48 - 50*m.b85
                         - 120*m.b86 - 190*m.b87 - 260*m.b88 - 330*m.b89 - 400*m.b90 == 0)

m.c11 = Constraint(expr=   m.x6 - 50*m.x49 - 70*m.x50 - 70*m.x51 - 70*m.x52 - 70*m.x53 - 70*m.x54 - 200*m.x55 - 50*m.b92
                         - 120*m.b93 - 190*m.b94 - 260*m.b95 - 330*m.b96 - 400*m.b97 == 0)

m.c12 = Constraint(expr=   m.x8 - 7.07106781186548*m.x14 - 3.88338333823785*m.x15 - 2.8295976019869*m.x16
                         - 2.34046674450688*m.x17 - 2.04138662798785*m.x18 - 1.83409787541505*m.x19
                         - 4.49489742783178*m.x20 - 7.07106781186548*m.b57 - 10.9544511501033*m.b58
                         - 13.7840487520902*m.b59 - 16.1245154965971*m.b60 - 18.1659021245849*m.b61 - 20*m.b62 == 0)

m.c13 = Constraint(expr=   m.x9 - 7.07106781186548*m.x21 - 3.88338333823785*m.x22 - 2.8295976019869*m.x23
                         - 2.34046674450688*m.x24 - 2.04138662798785*m.x25 - 1.83409787541505*m.x26
                         - 4.49489742783178*m.x27 - 7.07106781186548*m.b64 - 10.9544511501033*m.b65
                         - 13.7840487520902*m.b66 - 16.1245154965971*m.b67 - 18.1659021245849*m.b68 - 20*m.b69 == 0)

m.c14 = Constraint(expr=   m.x10 - 7.07106781186548*m.x28 - 3.88338333823785*m.x29 - 2.8295976019869*m.x30
                         - 2.34046674450688*m.x31 - 2.04138662798785*m.x32 - 1.83409787541505*m.x33
                         - 4.49489742783178*m.x34 - 7.07106781186548*m.b71 - 10.9544511501033*m.b72
                         - 13.7840487520902*m.b73 - 16.1245154965971*m.b74 - 18.1659021245849*m.b75 - 20*m.b76 == 0)

m.c15 = Constraint(expr=   m.x11 - 7.07106781186548*m.x35 - 3.88338333823785*m.x36 - 2.8295976019869*m.x37
                         - 2.34046674450688*m.x38 - 2.04138662798785*m.x39 - 1.83409787541505*m.x40
                         - 4.49489742783178*m.x41 - 7.07106781186548*m.b78 - 10.9544511501033*m.b79
                         - 13.7840487520902*m.b80 - 16.1245154965971*m.b81 - 18.1659021245849*m.b82 - 20*m.b83 == 0)

m.c16 = Constraint(expr=   m.x12 - 7.07106781186548*m.x42 - 3.88338333823785*m.x43 - 2.8295976019869*m.x44
                         - 2.34046674450688*m.x45 - 2.04138662798785*m.x46 - 1.83409787541505*m.x47
                         - 4.49489742783178*m.x48 - 7.07106781186548*m.b85 - 10.9544511501033*m.b86
                         - 13.7840487520902*m.b87 - 16.1245154965971*m.b88 - 18.1659021245849*m.b89 - 20*m.b90 == 0)

m.c17 = Constraint(expr=   m.x13 - 7.07106781186548*m.x49 - 3.88338333823785*m.x50 - 2.8295976019869*m.x51
                         - 2.34046674450688*m.x52 - 2.04138662798785*m.x53 - 1.83409787541505*m.x54
                         - 4.49489742783178*m.x55 - 7.07106781186548*m.b92 - 10.9544511501033*m.b93
                         - 13.7840487520902*m.b94 - 16.1245154965971*m.b95 - 18.1659021245849*m.b96 - 20*m.b97 == 0)

m.c18 = Constraint(expr=   m.x14 - m.b56 <= 0)

m.c19 = Constraint(expr=   m.x15 - m.b57 <= 0)

m.c20 = Constraint(expr=   m.x16 - m.b58 <= 0)

m.c21 = Constraint(expr=   m.x17 - m.b59 <= 0)

m.c22 = Constraint(expr=   m.x18 - m.b60 <= 0)

m.c23 = Constraint(expr=   m.x19 - m.b61 <= 0)

m.c24 = Constraint(expr=   m.x20 - m.b62 <= 0)

m.c25 = Constraint(expr=   m.x21 - m.b63 <= 0)

m.c26 = Constraint(expr=   m.x22 - m.b64 <= 0)

m.c27 = Constraint(expr=   m.x23 - m.b65 <= 0)

m.c28 = Constraint(expr=   m.x24 - m.b66 <= 0)

m.c29 = Constraint(expr=   m.x25 - m.b67 <= 0)

m.c30 = Constraint(expr=   m.x26 - m.b68 <= 0)

m.c31 = Constraint(expr=   m.x27 - m.b69 <= 0)

m.c32 = Constraint(expr=   m.x28 - m.b70 <= 0)

m.c33 = Constraint(expr=   m.x29 - m.b71 <= 0)

m.c34 = Constraint(expr=   m.x30 - m.b72 <= 0)

m.c35 = Constraint(expr=   m.x31 - m.b73 <= 0)

m.c36 = Constraint(expr=   m.x32 - m.b74 <= 0)

m.c37 = Constraint(expr=   m.x33 - m.b75 <= 0)

m.c38 = Constraint(expr=   m.x34 - m.b76 <= 0)

m.c39 = Constraint(expr=   m.x35 - m.b77 <= 0)

m.c40 = Constraint(expr=   m.x36 - m.b78 <= 0)

m.c41 = Constraint(expr=   m.x37 - m.b79 <= 0)

m.c42 = Constraint(expr=   m.x38 - m.b80 <= 0)

m.c43 = Constraint(expr=   m.x39 - m.b81 <= 0)

m.c44 = Constraint(expr=   m.x40 - m.b82 <= 0)

m.c45 = Constraint(expr=   m.x41 - m.b83 <= 0)

m.c46 = Constraint(expr=   m.x42 - m.b84 <= 0)

m.c47 = Constraint(expr=   m.x43 - m.b85 <= 0)

m.c48 = Constraint(expr=   m.x44 - m.b86 <= 0)

m.c49 = Constraint(expr=   m.x45 - m.b87 <= 0)

m.c50 = Constraint(expr=   m.x46 - m.b88 <= 0)

m.c51 = Constraint(expr=   m.x47 - m.b89 <= 0)

m.c52 = Constraint(expr=   m.x48 - m.b90 <= 0)

m.c53 = Constraint(expr=   m.x49 - m.b91 <= 0)

m.c54 = Constraint(expr=   m.x50 - m.b92 <= 0)

m.c55 = Constraint(expr=   m.x51 - m.b93 <= 0)

m.c56 = Constraint(expr=   m.x52 - m.b94 <= 0)

m.c57 = Constraint(expr=   m.x53 - m.b95 <= 0)

m.c58 = Constraint(expr=   m.x54 - m.b96 <= 0)

m.c59 = Constraint(expr=   m.x55 - m.b97 <= 0)

m.c60 = Constraint(expr=   m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61 + m.b62 <= 1)

m.c61 = Constraint(expr=   m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 <= 1)

m.c62 = Constraint(expr=   m.b70 + m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 <= 1)

m.c63 = Constraint(expr=   m.b77 + m.b78 + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 <= 1)

m.c64 = Constraint(expr=   m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 <= 1)

m.c65 = Constraint(expr=   m.b91 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 <= 1)
