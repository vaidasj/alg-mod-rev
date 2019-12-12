#  MCP written by GAMS Convert at 12/13/18 10:30:50
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         44        0       44        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         44       44        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        367      334       33        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x2 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x7 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=1)

m.c1 = Complementarity(expr=(-(0.1*m.x41/m.x1 + 0.2*m.x42/m.x1 + 0.3*m.x43/m.x1 + 0.1*m.x44/m.x1) + 5*m.x15 - 3.5*m.x16
                              - 0.1*m.x17 - 0.7*m.x19 + m.x27 - m.x34 - 0, m.x1 == 1))

m.c2 = Complementarity(expr=(-(0.2*m.x41/m.x2 + 0.2*m.x42/m.x2 + 0.2*m.x43/m.x2 + 0.2*m.x44/m.x2) - 0.9*m.x15 + 5*m.x16
                              - 0.1*m.x17 - 0.8*m.x19 + m.x28 - m.x35 >= 0, m.x2 >= 1E-5))

m.c3 = Complementarity(expr=(-(0.1*m.x41/m.x3 + 0.1*m.x42/m.x3 + 0.3*m.x43/m.x3 + 0.1*m.x44/m.x3) - 0.2*m.x15
                              - 0.5*m.x16 + 2*m.x17 - 0.1*m.x18 - 0.1*m.x19 - 0.8*m.x20 - 0.4*m.x21 - 0.1*m.x22
                              - 0.1*m.x23 - 0.1*m.x24 + m.x29 - m.x36 >= 0, m.x3 >= 1E-5))

m.c4 = Complementarity(expr=(-(0.1*m.x41/m.x4 + 0.1*m.x42/m.x4 + 0.1*m.x43/m.x4 + 0.1*m.x44/m.x4) - m.x15 - 2*m.x16
                              - 2*m.x17 + 2*m.x18 - 2*m.x19 - 0.4*m.x20 - 1.8*m.x21 - 1.6*m.x22 - 0.8*m.x23 - 0.2*m.x24
                              - 0.4*m.x27 - 0.2*m.x28 - 0.2*m.x29 - 0.4*m.x30 - 0.4*m.x31 - 0.4*m.x32 - 0.4*m.x33
                              - 0.2*m.x34 - 0.2*m.x35 - 0.2*m.x36 - 0.4*m.x37 - 0.4*m.x38 - 0.4*m.x39 - 0.4*m.x40
                              >= 0, m.x4 >= 1E-5))

m.c5 = Complementarity(expr=(-(0.1*m.x41/m.x5 + 0.1*m.x42/m.x5 + 0.1*m.x43/m.x5 + 0.1*m.x44/m.x5) + 4*m.x19
                              >= 0, m.x5 >= 1E-5))

m.c6 = Complementarity(expr=(-(0.3*m.x41/m.x6 + 0.1*m.x42/m.x6 + 0.1*m.x44/m.x6) + 0.32*m.x18 + 0.8*m.x20 + 0.36*m.x26
                              >= 0, m.x6 >= 1E-5))

m.c7 = Complementarity(expr=(-(0.1*m.x41/m.x7 + 0.2*m.x42/m.x7 + 0.3*m.x44/m.x7) + 0.4*m.x15 + 1.3*m.x16 + 1.2*m.x17
                              + 1.1*m.x20 + 6*m.x21 + 1.8*m.x22 + 1.2*m.x23 + 0.4*m.x24 + 0.9*m.x25 + m.x30 - m.x37
                              >= 0, m.x7 >= 1E-5))

m.c8 = Complementarity(expr=( - 0.2*m.x15 - 0.4*m.x16 - 0.2*m.x17 - 0.1*m.x18 - m.x20 - 2*m.x21 + 2*m.x22 - 0.5*m.x23
                              - 0.2*m.x24 + m.x31 - m.x38 >= 0, m.x8 >= 0))

m.c9 = Complementarity(expr=( - m.x15 - 0.1*m.x16 - 0.1*m.x17 - m.x18 - 0.2*m.x21 - m.x22 + 2*m.x23 - 0.2*m.x24 + m.x32
                              - m.x39 >= 0, m.x9 >= 0))

m.c10 = Complementarity(expr=( - 0.5*m.x15 - 0.4*m.x16 - 0.3*m.x17 - 0.3*m.x18 - 3*m.x20 - 0.2*m.x21 - 0.2*m.x22
                               - 0.5*m.x23 + m.x24 + m.x33 - m.x40 >= 0, m.x10 >= 0))

m.c11 = Complementarity(expr=( - 0.4*m.x18 - 0.4*m.x26 >= -3.2, m.x11 >= 0))

m.c12 = Complementarity(expr=( - 0.5*m.x15 - 1.5*m.x16 - 1.5*m.x17 - 0.1*m.x18 - 0.1*m.x19 - 1.5*m.x20 - 2.5*m.x21
                               - 2.5*m.x22 - 1.5*m.x23 - 0.5*m.x24 - m.x25 - 0.2*m.x27 - 0.1*m.x28 - 0.1*m.x29
                               - 0.2*m.x30 - 0.2*m.x31 - 0.2*m.x32 - 0.2*m.x33 - 0.2*m.x34 - 0.1*m.x35 - 0.1*m.x36
                               - 0.2*m.x37 - 0.2*m.x38 - 0.2*m.x39 - 0.2*m.x40 >= -12.5, m.x12 >= 0))

m.c13 = Complementarity(expr=( - 0.4*m.x15 - 0.2*m.x16 - 0.2*m.x17 - 0.02*m.x18 - 0.4*m.x19 - 0.3*m.x20 - 0.1*m.x21
                               - 0.1*m.x22 - 0.4*m.x23 - 0.4*m.x24 - 0.04*m.x27 - 0.02*m.x28 - 0.02*m.x29 - 0.04*m.x30
                               - 0.04*m.x31 - 0.04*m.x32 - 0.04*m.x33 - 0.04*m.x34 - 0.02*m.x35 - 0.02*m.x36
                               - 0.04*m.x37 - 0.04*m.x38 - 0.04*m.x39 - 0.04*m.x40 >= -3, m.x13 >= 0))

m.c14 = Complementarity(expr=( - 0.5*m.x27 - 0.4*m.x28 - 0.8*m.x29 - 1.2*m.x30 - 0.6*m.x31 - 0.7*m.x32 - 0.4*m.x33
                               + 0.5*m.x34 + 0.4*m.x35 + 0.8*m.x36 + 1.2*m.x37 + 0.6*m.x38 + 0.7*m.x39 + 0.4*m.x40
                               >= 0, m.x14 >= 0))

m.c15 = Complementarity(expr=( - 5*m.x1 + 0.9*m.x2 + 0.2*m.x3 + m.x4 - 0.4*m.x7 + 0.2*m.x8 + m.x9 + 0.5*m.x10
                               + 0.5*m.x12 + 0.4*m.x13 >= 0, m.x15 >= 0))

m.c16 = Complementarity(expr=(   3.5*m.x1 - 5*m.x2 + 0.5*m.x3 + 2*m.x4 - 1.3*m.x7 + 0.4*m.x8 + 0.1*m.x9 + 0.4*m.x10
                               + 1.5*m.x12 + 0.2*m.x13 >= 0, m.x16 >= 0))

m.c17 = Complementarity(expr=(   0.1*m.x1 + 0.1*m.x2 - 2*m.x3 + 2*m.x4 - 1.2*m.x7 + 0.2*m.x8 + 0.1*m.x9 + 0.3*m.x10
                               + 1.5*m.x12 + 0.2*m.x13 >= 0, m.x17 >= 0))

m.c18 = Complementarity(expr=(   0.1*m.x3 - 2*m.x4 - 0.32*m.x6 + 0.1*m.x8 + m.x9 + 0.3*m.x10 + 0.4*m.x11 + 0.1*m.x12
                               + 0.02*m.x13 >= 0, m.x18 >= 0))

m.c19 = Complementarity(expr=(   0.7*m.x1 + 0.8*m.x2 + 0.1*m.x3 + 2*m.x4 - 4*m.x5 + 0.1*m.x12 + 0.4*m.x13
                               >= 0, m.x19 >= 0))

m.c20 = Complementarity(expr=(   0.8*m.x3 + 0.4*m.x4 - 0.8*m.x6 - 1.1*m.x7 + m.x8 + 3*m.x10 + 1.5*m.x12 + 0.3*m.x13
                               >= 0, m.x20 >= 0))

m.c21 = Complementarity(expr=(   0.4*m.x3 + 1.8*m.x4 - 6*m.x7 + 2*m.x8 + 0.2*m.x9 + 0.2*m.x10 + 2.5*m.x12 + 0.1*m.x13
                               >= 0, m.x21 >= 0))

m.c22 = Complementarity(expr=(   0.1*m.x3 + 1.6*m.x4 - 1.8*m.x7 - 2*m.x8 + m.x9 + 0.2*m.x10 + 2.5*m.x12 + 0.1*m.x13
                               >= 0, m.x22 >= 0))

m.c23 = Complementarity(expr=(   0.1*m.x3 + 0.8*m.x4 - 1.2*m.x7 + 0.5*m.x8 - 2*m.x9 + 0.5*m.x10 + 1.5*m.x12 + 0.4*m.x13
                               >= 0, m.x23 >= 0))

m.c24 = Complementarity(expr=(   0.1*m.x3 + 0.2*m.x4 - 0.4*m.x7 + 0.2*m.x8 + 0.2*m.x9 - m.x10 + 0.5*m.x12 + 0.4*m.x13
                               >= 0, m.x24 >= 0))

m.c25 = Complementarity(expr=( - 0.9*m.x7 + m.x12 >= 0, m.x25 >= 0))

m.c26 = Complementarity(expr=( - 0.36*m.x6 + 0.4*m.x11 >= 0, m.x26 >= 0))

m.c27 = Complementarity(expr=( - m.x1 + 0.4*m.x4 + 0.2*m.x12 + 0.04*m.x13 + 0.5*m.x14 >= 0, m.x27 >= 0))

m.c28 = Complementarity(expr=( - m.x2 + 0.2*m.x4 + 0.1*m.x12 + 0.02*m.x13 + 0.4*m.x14 >= 0, m.x28 >= 0))

m.c29 = Complementarity(expr=( - m.x3 + 0.2*m.x4 + 0.1*m.x12 + 0.02*m.x13 + 0.8*m.x14 >= 0, m.x29 >= 0))

m.c30 = Complementarity(expr=(   0.4*m.x4 - m.x7 + 0.2*m.x12 + 0.04*m.x13 + 1.2*m.x14 >= 0, m.x30 >= 0))

m.c31 = Complementarity(expr=(   0.4*m.x4 - m.x8 + 0.2*m.x12 + 0.04*m.x13 + 0.6*m.x14 >= 0, m.x31 >= 0))

m.c32 = Complementarity(expr=(   0.4*m.x4 - m.x9 + 0.2*m.x12 + 0.04*m.x13 + 0.7*m.x14 >= 0, m.x32 >= 0))

m.c33 = Complementarity(expr=(   0.4*m.x4 - m.x10 + 0.2*m.x12 + 0.04*m.x13 + 0.4*m.x14 >= 0, m.x33 >= 0))

m.c34 = Complementarity(expr=(   m.x1 + 0.2*m.x4 + 0.2*m.x12 + 0.04*m.x13 - 0.5*m.x14 >= 0, m.x34 >= 0))

m.c35 = Complementarity(expr=(   m.x2 + 0.2*m.x4 + 0.1*m.x12 + 0.02*m.x13 - 0.4*m.x14 >= 0, m.x35 >= 0))

m.c36 = Complementarity(expr=(   m.x3 + 0.2*m.x4 + 0.1*m.x12 + 0.02*m.x13 - 0.8*m.x14 >= 0, m.x36 >= 0))

m.c37 = Complementarity(expr=(   0.4*m.x4 + m.x7 + 0.2*m.x12 + 0.04*m.x13 - 1.2*m.x14 >= 0, m.x37 >= 0))

m.c38 = Complementarity(expr=(   0.4*m.x4 + m.x8 + 0.2*m.x12 + 0.04*m.x13 - 0.6*m.x14 >= 0, m.x38 >= 0))

m.c39 = Complementarity(expr=(   0.4*m.x4 + m.x9 + 0.2*m.x12 + 0.04*m.x13 - 0.7*m.x14 >= 0, m.x39 >= 0))

m.c40 = Complementarity(expr=(   0.4*m.x4 + m.x10 + 0.2*m.x12 + 0.04*m.x13 - 0.4*m.x14 >= 0, m.x40 >= 0))

m.c41 = Complementarity(expr=( - 2*m.x11 - 3*m.x12 - 0.6*m.x13 + m.x41 >= 0, m.x41 >= 0))

m.c42 = Complementarity(expr=( - 0.4*m.x11 - 2*m.x12 - 0.8*m.x13 + m.x42 >= 0, m.x42 >= 0))

m.c43 = Complementarity(expr=( - m.x13 + m.x43 >= 0, m.x43 >= 0))

m.c44 = Complementarity(expr=( - 0.8*m.x11 - 7.5*m.x12 - 0.6*m.x13 + m.x44 >= 0, m.x44 >= 0))
