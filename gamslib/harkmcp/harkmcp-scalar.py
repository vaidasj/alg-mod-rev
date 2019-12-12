#  MCP written by GAMS Convert at 12/13/18 10:30:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         92       14       78        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         92       92        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        329      287       42        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=25)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=25)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=25)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=1)
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

m.c1 = Complementarity(expr=(   0.2*m.x1 + m.x7 >= 19, m.x1 >= 0))

m.c2 = Complementarity(expr=(   0.01*m.x2 + m.x8 >= 27, m.x2 >= 0))

m.c3 = Complementarity(expr=(   0.3*m.x3 + m.x9 >= 30, m.x3 >= 0))

m.c4 = Complementarity(expr=(   m.x4 - m.x42 - m.x51 - m.x52 + m.x55 + m.x58 >= 0, m.x24 >= 0))

m.c5 = Complementarity(expr=( - m.x43 - m.x53 + m.x61 >= 0, m.x25 >= 0))

m.c6 = Complementarity(expr=( - m.x44 - m.x54 + m.x62 >= 0, m.x26 >= 0))

m.c7 = Complementarity(expr=(   m.x51 - m.x55 - m.x56 - m.x57 + m.x59 + m.x63 >= 0, m.x27 >= 0))

m.c8 = Complementarity(expr=(   m.x52 + m.x56 - m.x58 - m.x59 - m.x60 + m.x64 >= 0, m.x28 >= 0))

m.c9 = Complementarity(expr=(   m.x53 + m.x54 + m.x57 + m.x60 - m.x61 - m.x62 - m.x63 - m.x64 >= 0, m.x29 >= 0))

m.c10 = Complementarity(expr=( - m.x45 - m.x65 - m.x66 + m.x69 + m.x72 >= 0, m.x30 >= 0))

m.c11 = Complementarity(expr=(   m.x5 - m.x46 - m.x67 + m.x75 >= 0, m.x31 >= 0))

m.c12 = Complementarity(expr=( - m.x47 - m.x68 + m.x76 >= 0, m.x32 >= 0))

m.c13 = Complementarity(expr=(   m.x65 - m.x69 - m.x70 - m.x71 + m.x73 + m.x77 >= 0, m.x33 >= 0))

m.c14 = Complementarity(expr=(   m.x66 + m.x70 - m.x72 - m.x73 - m.x74 + m.x78 >= 0, m.x34 >= 0))

m.c15 = Complementarity(expr=(   m.x67 + m.x68 + m.x71 + m.x74 - m.x75 - m.x76 - m.x77 - m.x78 >= 0, m.x35 >= 0))

m.c16 = Complementarity(expr=( - m.x48 - m.x79 - m.x80 + m.x83 + m.x86 >= 0, m.x36 >= 0))

m.c17 = Complementarity(expr=( - m.x49 - m.x81 + m.x89 >= 0, m.x37 >= 0))

m.c18 = Complementarity(expr=(   m.x6 - m.x50 - m.x82 + m.x90 >= 0, m.x38 >= 0))

m.c19 = Complementarity(expr=(   m.x79 - m.x83 - m.x84 - m.x85 + m.x87 + m.x91 >= 0, m.x39 >= 0))

m.c20 = Complementarity(expr=(   m.x80 + m.x84 - m.x86 - m.x87 - m.x88 + m.x92 >= 0, m.x40 >= 0))

m.c21 = Complementarity(expr=(   m.x81 + m.x82 + m.x85 + m.x88 - m.x89 - m.x90 - m.x91 - m.x92 >= 0, m.x41 >= 0))

m.c22 = Complementarity(expr=( - m.x1 + m.x42 + m.x45 + m.x48 >= 0, m.x7 >= 0))

m.c23 = Complementarity(expr=( - m.x2 + m.x43 + m.x46 + m.x49 >= 0, m.x8 >= 0))

m.c24 = Complementarity(expr=( - m.x3 + m.x44 + m.x47 + m.x50 >= 0, m.x9 >= 0))

m.c25 = Complementarity(expr=( - m.x7 + m.x24 + 0.2*m.x42 >= 0, m.x42 >= 0))

m.c26 = Complementarity(expr=( - m.x8 + m.x25 + 0.01*m.x43 >= 0, m.x43 >= 0))

m.c27 = Complementarity(expr=( - m.x9 + m.x26 + 0.3*m.x44 >= 0, m.x44 >= 0))

m.c28 = Complementarity(expr=( - m.x7 + m.x30 + 0.2*m.x45 >= 0, m.x45 >= 0))

m.c29 = Complementarity(expr=( - m.x8 + m.x31 + 0.01*m.x46 >= 0, m.x46 >= 0))

m.c30 = Complementarity(expr=( - m.x9 + m.x32 + 0.3*m.x47 >= 0, m.x47 >= 0))

m.c31 = Complementarity(expr=( - m.x7 + m.x36 + 0.2*m.x48 >= 0, m.x48 >= 0))

m.c32 = Complementarity(expr=( - m.x8 + m.x37 + 0.01*m.x49 >= 0, m.x49 >= 0))

m.c33 = Complementarity(expr=( - m.x9 + m.x38 + 0.3*m.x50 >= 0, m.x50 >= 0))

m.c34 = Complementarity(expr=(0.5*m.x10*m.x10 + m.x24 - m.x27 >= -1, m.x51 >= 0))

m.c35 = Complementarity(expr=(0.2*m.x11*m.x11 + m.x24 - m.x28 >= -2, m.x52 >= 0))

m.c36 = Complementarity(expr=(0.3*m.x12*m.x12 + m.x25 - m.x29 >= -3, m.x53 >= 0))

m.c37 = Complementarity(expr=(0.4*m.x13*m.x13 + m.x26 - m.x29 >= -1, m.x54 >= 0))

m.c38 = Complementarity(expr=(0.3*m.x14*m.x14 - m.x24 + m.x27 >= -2, m.x55 >= 0))

m.c39 = Complementarity(expr=(0.1*m.x15*m.x15 + m.x27 - m.x28 >= -1, m.x56 >= 0))

m.c40 = Complementarity(expr=(0.1*m.x16*m.x16 + m.x27 - m.x29 >= -1, m.x57 >= 0))

m.c41 = Complementarity(expr=(0.5*m.x17*m.x17 - m.x24 + m.x28 >= -3, m.x58 >= 0))

m.c42 = Complementarity(expr=(0.2*m.x18*m.x18 - m.x27 + m.x28 >= -2, m.x59 >= 0))

m.c43 = Complementarity(expr=(m.x19*m.x19 + m.x28 - m.x29 >= -1, m.x60 >= 0))

m.c44 = Complementarity(expr=(0.25*m.x20*m.x20 - m.x25 + m.x29 >= -2, m.x61 >= 0))

m.c45 = Complementarity(expr=(0.2*m.x21*m.x21 - m.x26 + m.x29 >= -2, m.x62 >= 0))

m.c46 = Complementarity(expr=(0.9*m.x22*m.x22 - m.x27 + m.x29 >= -1, m.x63 >= 0))

m.c47 = Complementarity(expr=(0.8*m.x23*m.x23 - m.x28 + m.x29 >= -3, m.x64 >= 0))

m.c48 = Complementarity(expr=(0.5*m.x10*m.x10 + m.x30 - m.x33 >= -1, m.x65 >= 0))

m.c49 = Complementarity(expr=(0.2*m.x11*m.x11 + m.x30 - m.x34 >= -2, m.x66 >= 0))

m.c50 = Complementarity(expr=(0.3*m.x12*m.x12 + m.x31 - m.x35 >= -3, m.x67 >= 0))

m.c51 = Complementarity(expr=(0.4*m.x13*m.x13 + m.x32 - m.x35 >= -1, m.x68 >= 0))

m.c52 = Complementarity(expr=(0.3*m.x14*m.x14 - m.x30 + m.x33 >= -2, m.x69 >= 0))

m.c53 = Complementarity(expr=(0.1*m.x15*m.x15 + m.x33 - m.x34 >= -1, m.x70 >= 0))

m.c54 = Complementarity(expr=(0.1*m.x16*m.x16 + m.x33 - m.x35 >= -1, m.x71 >= 0))

m.c55 = Complementarity(expr=(0.5*m.x17*m.x17 - m.x30 + m.x34 >= -3, m.x72 >= 0))

m.c56 = Complementarity(expr=(0.2*m.x18*m.x18 - m.x33 + m.x34 >= -2, m.x73 >= 0))

m.c57 = Complementarity(expr=(m.x19*m.x19 + m.x34 - m.x35 >= -1, m.x74 >= 0))

m.c58 = Complementarity(expr=(0.25*m.x20*m.x20 - m.x31 + m.x35 >= -2, m.x75 >= 0))

m.c59 = Complementarity(expr=(0.2*m.x21*m.x21 - m.x32 + m.x35 >= -2, m.x76 >= 0))

m.c60 = Complementarity(expr=(0.9*m.x22*m.x22 - m.x33 + m.x35 >= -1, m.x77 >= 0))

m.c61 = Complementarity(expr=(0.8*m.x23*m.x23 - m.x34 + m.x35 >= -3, m.x78 >= 0))

m.c62 = Complementarity(expr=(0.5*m.x10*m.x10 + m.x36 - m.x39 >= -1, m.x79 >= 0))

m.c63 = Complementarity(expr=(0.2*m.x11*m.x11 + m.x36 - m.x40 >= -2, m.x80 >= 0))

m.c64 = Complementarity(expr=(0.3*m.x12*m.x12 + m.x37 - m.x41 >= -3, m.x81 >= 0))

m.c65 = Complementarity(expr=(0.4*m.x13*m.x13 + m.x38 - m.x41 >= -1, m.x82 >= 0))

m.c66 = Complementarity(expr=(0.3*m.x14*m.x14 - m.x36 + m.x39 >= -2, m.x83 >= 0))

m.c67 = Complementarity(expr=(0.1*m.x15*m.x15 + m.x39 - m.x40 >= -1, m.x84 >= 0))

m.c68 = Complementarity(expr=(0.1*m.x16*m.x16 + m.x39 - m.x41 >= -1, m.x85 >= 0))

m.c69 = Complementarity(expr=(0.5*m.x17*m.x17 - m.x36 + m.x40 >= -3, m.x86 >= 0))

m.c70 = Complementarity(expr=(0.2*m.x18*m.x18 - m.x39 + m.x40 >= -2, m.x87 >= 0))

m.c71 = Complementarity(expr=(m.x19*m.x19 + m.x40 - m.x41 >= -1, m.x88 >= 0))

m.c72 = Complementarity(expr=(0.25*m.x20*m.x20 - m.x37 + m.x41 >= -2, m.x89 >= 0))

m.c73 = Complementarity(expr=(0.2*m.x21*m.x21 - m.x38 + m.x41 >= -2, m.x90 >= 0))

m.c74 = Complementarity(expr=(0.9*m.x22*m.x22 - m.x39 + m.x41 >= -1, m.x91 >= 0))

m.c75 = Complementarity(expr=(0.8*m.x23*m.x23 - m.x40 + m.x41 >= -3, m.x92 >= 0))

m.c76 = Complementarity(expr=(   m.x4 - m.x24 >= -1, m.x4 >= 0))

m.c77 = Complementarity(expr=(   0.8*m.x5 - m.x31 >= -2, m.x5 >= 0))

m.c78 = Complementarity(expr=(   0.6*m.x6 - m.x38 >= -1.5, m.x6 >= 0))

m.c79 = Complementarity(expr=(   m.x10 - m.x51 - m.x65 - m.x79 >= 0, m.x10 >= 0))

m.c80 = Complementarity(expr=(   m.x11 - m.x52 - m.x66 - m.x80 >= 0, m.x11 >= 0))

m.c81 = Complementarity(expr=(   m.x12 - m.x53 - m.x67 - m.x81 >= 0, m.x12 >= 0))

m.c82 = Complementarity(expr=(   m.x13 - m.x54 - m.x68 - m.x82 >= 0, m.x13 >= 0))

m.c83 = Complementarity(expr=(   m.x14 - m.x55 - m.x69 - m.x83 >= 0, m.x14 >= 0))

m.c84 = Complementarity(expr=(   m.x15 - m.x56 - m.x70 - m.x84 >= 0, m.x15 >= 0))

m.c85 = Complementarity(expr=(   m.x16 - m.x57 - m.x71 - m.x85 >= 0, m.x16 >= 0))

m.c86 = Complementarity(expr=(   m.x17 - m.x58 - m.x72 - m.x86 >= 0, m.x17 >= 0))

m.c87 = Complementarity(expr=(   m.x18 - m.x59 - m.x73 - m.x87 >= 0, m.x18 >= 0))

m.c88 = Complementarity(expr=(   m.x19 - m.x60 - m.x74 - m.x88 >= 0, m.x19 >= 0))

m.c89 = Complementarity(expr=(   m.x20 - m.x61 - m.x75 - m.x89 >= 0, m.x20 >= 0))

m.c90 = Complementarity(expr=(   m.x21 - m.x62 - m.x76 - m.x90 >= 0, m.x21 >= 0))

m.c91 = Complementarity(expr=(   m.x22 - m.x63 - m.x77 - m.x91 >= 0, m.x22 >= 0))

m.c92 = Complementarity(expr=(   m.x23 - m.x64 - m.x78 - m.x92 >= 0, m.x23 >= 0))
