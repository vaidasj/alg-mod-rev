#  MCP written by GAMS Convert at 12/13/18 10:30:50
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        126        0      126        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        126      126        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        733      285      448        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=1)
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
m.x45 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x56 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x58 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x59 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x60 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x61 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x62 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x63 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x64 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x65 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x66 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x67 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x68 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x69 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x70 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x71 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x72 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x73 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x74 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x75 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x76 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x77 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x78 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x90 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x92 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x109 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x110 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x111 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x112 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x113 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x114 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x115 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x116 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x117 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x118 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x119 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x120 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x121 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x122 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x123 = Var(within=Reals,bounds=(0.1,None),initialize=1)
m.x124 = Var(within=Reals,bounds=(0.1,None),initialize=1)
m.x125 = Var(within=Reals,bounds=(0.1,None),initialize=1)
m.x126 = Var(within=Reals,bounds=(0.1,None),initialize=1)

m.c1 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x109)**0.1 + m.x1 >= 0, m.x1 >= 0))

m.c2 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x109)**0.3 + 2*m.x2 >= 0, m.x2 >= 0))

m.c3 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x109)**0.5 + 3*m.x3 >= 0, m.x3 >= 0))

m.c4 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x109)**0.7 + 4*m.x4 >= 0, m.x4 >= 0))

m.c5 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x110)**0.1 + m.x5 >= 0, m.x5 >= 0))

m.c6 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x110)**0.3 + 2*m.x6 >= 0, m.x6 >= 0))

m.c7 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x110)**0.5 + 3*m.x7 >= 0, m.x7 >= 0))

m.c8 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x110)**0.7 + 4*m.x8 >= 0, m.x8 >= 0))

m.c9 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x111)**0.1 + m.x9 >= 0, m.x9 >= 0))

m.c10 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x111)**0.3 + 2*m.x10
                               >= 0, m.x10 >= 0))

m.c11 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x111)**0.5 + 3*m.x11 >= 0, m.x11 >= 0))

m.c12 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x111)**0.7 + 4*m.x12
                               >= 0, m.x12 >= 0))

m.c13 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x112)**0.1 + m.x13 >= 0, m.x13 >= 0))

m.c14 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x112)**0.3 + 2*m.x14
                               >= 0, m.x14 >= 0))

m.c15 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x112)**0.5 + 3*m.x15 >= 0, m.x15 >= 0))

m.c16 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x112)**0.7 + 4*m.x16
                               >= 0, m.x16 >= 0))

m.c17 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x113)**0.1 + m.x17 >= 0, m.x17 >= 0))

m.c18 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x113)**0.3 + 2*m.x18
                               >= 0, m.x18 >= 0))

m.c19 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x113)**0.5 + 3*m.x19 >= 0, m.x19 >= 0))

m.c20 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x113)**0.7 + 4*m.x20
                               >= 0, m.x20 >= 0))

m.c21 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x114)**0.1 + m.x21 >= 0, m.x21 >= 0))

m.c22 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x114)**0.3 + 2*m.x22
                               >= 0, m.x22 >= 0))

m.c23 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x114)**0.5 + 3*m.x23 >= 0, m.x23 >= 0))

m.c24 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x114)**0.7 + 4*m.x24
                               >= 0, m.x24 >= 0))

m.c25 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x115)**0.1 + m.x25 >= 0, m.x25 >= 0))

m.c26 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x115)**0.3 + 2*m.x26
                               >= 0, m.x26 >= 0))

m.c27 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x115)**0.5 + 3*m.x27 >= 0, m.x27 >= 0))

m.c28 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x115)**0.7 + 4*m.x28
                               >= 0, m.x28 >= 0))

m.c29 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x116)**0.1 + m.x29 >= 0, m.x29 >= 0))

m.c30 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x116)**0.3 + 2*m.x30
                               >= 0, m.x30 >= 0))

m.c31 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x116)**0.5 + 3*m.x31 >= 0, m.x31 >= 0))

m.c32 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x116)**0.7 + 4*m.x32
                               >= 0, m.x32 >= 0))

m.c33 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x117)**0.1 + m.x33 >= 0, m.x33 >= 0))

m.c34 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x117)**0.3 + 2*m.x34
                               >= 0, m.x34 >= 0))

m.c35 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x117)**0.5 + 3*m.x35 >= 0, m.x35 >= 0))

m.c36 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x117)**0.7 + 4*m.x36
                               >= 0, m.x36 >= 0))

m.c37 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x118)**0.1 + m.x37 >= 0, m.x37 >= 0))

m.c38 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x118)**0.3 + 2*m.x38
                               >= 0, m.x38 >= 0))

m.c39 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x118)**0.5 + 3*m.x39 >= 0, m.x39 >= 0))

m.c40 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x118)**0.7 + 4*m.x40
                               >= 0, m.x40 >= 0))

m.c41 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x119)**0.1 + m.x41 >= 0, m.x41 >= 0))

m.c42 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x119)**0.3 + 2*m.x42
                               >= 0, m.x42 >= 0))

m.c43 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x119)**0.5 + 3*m.x43 >= 0, m.x43 >= 0))

m.c44 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x119)**0.7 + 4*m.x44
                               >= 0, m.x44 >= 0))

m.c45 = Complementarity(expr=(-(1.11111111111111*m.x122)**0.9*(10*m.x120)**0.1 + m.x45 >= 0, m.x45 >= 0))

m.c46 = Complementarity(expr=(-(1.42857142857143*m.x122)**0.7*(3.33333333333333*m.x120)**0.3 + 2*m.x46
                               >= 0, m.x46 >= 0))

m.c47 = Complementarity(expr=(-(2*m.x122)**0.5*(2*m.x120)**0.5 + 3*m.x47 >= 0, m.x47 >= 0))

m.c48 = Complementarity(expr=(-(3.33333333333333*m.x122)**0.3*(1.42857142857143*m.x120)**0.7 + 4*m.x48
                               >= 0, m.x48 >= 0))

m.c49 = Complementarity(expr=(   m.x1 + 0.075*m.x121 - m.x123 >= 0, m.x49 >= 0))

m.c50 = Complementarity(expr=(   m.x2 + 0.03*m.x121 - m.x124 >= 0, m.x50 >= 0))

m.c51 = Complementarity(expr=(   m.x3 + 0.02*m.x121 - m.x125 >= 0, m.x51 >= 0))

m.c52 = Complementarity(expr=(   m.x4 + 0.05*m.x121 - m.x126 >= 0, m.x52 >= 0))

m.c53 = Complementarity(expr=(   m.x5 + 0.225*m.x121 - m.x123 >= 0, m.x53 >= 0))

m.c54 = Complementarity(expr=(   m.x6 + 0.09*m.x121 - m.x124 >= 0, m.x54 >= 0))

m.c55 = Complementarity(expr=(   m.x7 + 0.06*m.x121 - m.x125 >= 0, m.x55 >= 0))

m.c56 = Complementarity(expr=(   m.x8 + 0.15*m.x121 - m.x126 >= 0, m.x56 >= 0))

m.c57 = Complementarity(expr=(   m.x9 + 0.375*m.x121 - m.x123 >= 0, m.x57 >= 0))

m.c58 = Complementarity(expr=(   m.x10 + 0.15*m.x121 - m.x124 >= 0, m.x58 >= 0))

m.c59 = Complementarity(expr=(   m.x11 + 0.1*m.x121 - m.x125 >= 0, m.x59 >= 0))

m.c60 = Complementarity(expr=(   m.x12 + 0.25*m.x121 - m.x126 >= 0, m.x60 >= 0))

m.c61 = Complementarity(expr=(   m.x13 + 0.525*m.x121 - m.x123 >= 0, m.x61 >= 0))

m.c62 = Complementarity(expr=(   m.x14 + 0.21*m.x121 - m.x124 >= 0, m.x62 >= 0))

m.c63 = Complementarity(expr=(   m.x15 + 0.14*m.x121 - m.x125 >= 0, m.x63 >= 0))

m.c64 = Complementarity(expr=(   m.x16 + 0.35*m.x121 - m.x126 >= 0, m.x64 >= 0))

m.c65 = Complementarity(expr=(   m.x17 + 0.675*m.x121 - m.x123 >= 0, m.x65 >= 0))

m.c66 = Complementarity(expr=(   m.x18 + 0.27*m.x121 - m.x124 >= 0, m.x66 >= 0))

m.c67 = Complementarity(expr=(   m.x19 + 0.18*m.x121 - m.x125 >= 0, m.x67 >= 0))

m.c68 = Complementarity(expr=(   m.x20 + 0.45*m.x121 - m.x126 >= 0, m.x68 >= 0))

m.c69 = Complementarity(expr=(   m.x21 + 0.825*m.x121 - m.x123 >= 0, m.x69 >= 0))

m.c70 = Complementarity(expr=(   m.x22 + 0.33*m.x121 - m.x124 >= 0, m.x70 >= 0))

m.c71 = Complementarity(expr=(   m.x23 + 0.22*m.x121 - m.x125 >= 0, m.x71 >= 0))

m.c72 = Complementarity(expr=(   m.x24 + 0.55*m.x121 - m.x126 >= 0, m.x72 >= 0))

m.c73 = Complementarity(expr=(   m.x25 + 0.975*m.x121 - m.x123 >= 0, m.x73 >= 0))

m.c74 = Complementarity(expr=(   m.x26 + 0.39*m.x121 - m.x124 >= 0, m.x74 >= 0))

m.c75 = Complementarity(expr=(   m.x27 + 0.26*m.x121 - m.x125 >= 0, m.x75 >= 0))

m.c76 = Complementarity(expr=(   m.x28 + 0.65*m.x121 - m.x126 >= 0, m.x76 >= 0))

m.c77 = Complementarity(expr=(   m.x29 + 1.125*m.x121 - m.x123 >= 0, m.x77 >= 0))

m.c78 = Complementarity(expr=(   m.x30 + 0.45*m.x121 - m.x124 >= 0, m.x78 >= 0))

m.c79 = Complementarity(expr=(   m.x31 + 0.3*m.x121 - m.x125 >= 0, m.x79 >= 0))

m.c80 = Complementarity(expr=(   m.x32 + 0.75*m.x121 - m.x126 >= 0, m.x80 >= 0))

m.c81 = Complementarity(expr=(   m.x33 + 1.275*m.x121 - m.x123 >= 0, m.x81 >= 0))

m.c82 = Complementarity(expr=(   m.x34 + 0.51*m.x121 - m.x124 >= 0, m.x82 >= 0))

m.c83 = Complementarity(expr=(   m.x35 + 0.34*m.x121 - m.x125 >= 0, m.x83 >= 0))

m.c84 = Complementarity(expr=(   m.x36 + 0.85*m.x121 - m.x126 >= 0, m.x84 >= 0))

m.c85 = Complementarity(expr=(   m.x37 + 1.425*m.x121 - m.x123 >= 0, m.x85 >= 0))

m.c86 = Complementarity(expr=(   m.x38 + 0.57*m.x121 - m.x124 >= 0, m.x86 >= 0))

m.c87 = Complementarity(expr=(   m.x39 + 0.38*m.x121 - m.x125 >= 0, m.x87 >= 0))

m.c88 = Complementarity(expr=(   m.x40 + 0.95*m.x121 - m.x126 >= 0, m.x88 >= 0))

m.c89 = Complementarity(expr=(   m.x41 + 1.575*m.x121 - m.x123 >= 0, m.x89 >= 0))

m.c90 = Complementarity(expr=(   m.x42 + 0.63*m.x121 - m.x124 >= 0, m.x90 >= 0))

m.c91 = Complementarity(expr=(   m.x43 + 0.42*m.x121 - m.x125 >= 0, m.x91 >= 0))

m.c92 = Complementarity(expr=(   m.x44 + 1.05*m.x121 - m.x126 >= 0, m.x92 >= 0))

m.c93 = Complementarity(expr=(   m.x45 + 1.725*m.x121 - m.x123 >= 0, m.x93 >= 0))

m.c94 = Complementarity(expr=(   m.x46 + 0.69*m.x121 - m.x124 >= 0, m.x94 >= 0))

m.c95 = Complementarity(expr=(   m.x47 + 0.46*m.x121 - m.x125 >= 0, m.x95 >= 0))

m.c96 = Complementarity(expr=(   m.x48 + 1.15*m.x121 - m.x126 >= 0, m.x96 >= 0))

m.c97 = Complementarity(expr=(   m.x109 - 0.0001*m.x122 >= 0, m.x97 >= 0))

m.c98 = Complementarity(expr=(   m.x110 - 0.0001*m.x122 >= 0, m.x98 >= 0))

m.c99 = Complementarity(expr=(   m.x111 - 0.0001*m.x122 >= 0, m.x99 >= 0))

m.c100 = Complementarity(expr=(   m.x112 - 0.0001*m.x122 >= 0, m.x100 >= 0))

m.c101 = Complementarity(expr=(   m.x113 - 0.0001*m.x122 >= 0, m.x101 >= 0))

m.c102 = Complementarity(expr=(   m.x114 - 0.0001*m.x122 >= 0, m.x102 >= 0))

m.c103 = Complementarity(expr=(   m.x115 - 0.0001*m.x122 >= 0, m.x103 >= 0))

m.c104 = Complementarity(expr=(   m.x116 - 0.0001*m.x122 >= 0, m.x104 >= 0))

m.c105 = Complementarity(expr=(   m.x117 - 0.0001*m.x122 >= 0, m.x105 >= 0))

m.c106 = Complementarity(expr=(   m.x118 - 0.0001*m.x122 >= 0, m.x106 >= 0))

m.c107 = Complementarity(expr=(   m.x119 - 0.0001*m.x122 >= 0, m.x107 >= 0))

m.c108 = Complementarity(expr=(   m.x120 - 0.0001*m.x122 >= 0, m.x108 >= 0))

m.c109 = Complementarity(expr=(-(0.1*m.x49*m.x1 + 0.3*m.x50*m.x2 + 0.5*m.x51*m.x3 + 0.7*m.x52*m.x4)/m.x109 - m.x97
                                >= -31.415, m.x109 >= 0.001))

m.c110 = Complementarity(expr=(-(0.1*m.x53*m.x5 + 0.3*m.x54*m.x6 + 0.5*m.x55*m.x7 + 0.7*m.x56*m.x8)/m.x110 - m.x98
                                >= -94.245, m.x110 >= 0.001))

m.c111 = Complementarity(expr=(-(0.1*m.x57*m.x9 + 0.3*m.x58*m.x10 + 0.5*m.x59*m.x11 + 0.7*m.x60*m.x12)/m.x111 - m.x99
                                >= -157.075, m.x111 >= 0.001))

m.c112 = Complementarity(expr=(-(0.1*m.x61*m.x13 + 0.3*m.x62*m.x14 + 0.5*m.x63*m.x15 + 0.7*m.x64*m.x16)/m.x112 - m.x100
                                >= -219.905, m.x112 >= 0.001))

m.c113 = Complementarity(expr=(-(0.1*m.x65*m.x17 + 0.3*m.x66*m.x18 + 0.5*m.x67*m.x19 + 0.7*m.x68*m.x20)/m.x113 - m.x101
                                >= -282.735, m.x113 >= 0.001))

m.c114 = Complementarity(expr=(-(0.1*m.x69*m.x21 + 0.3*m.x70*m.x22 + 0.5*m.x71*m.x23 + 0.7*m.x72*m.x24)/m.x114 - m.x102
                                >= -345.565, m.x114 >= 0.001))

m.c115 = Complementarity(expr=(-(0.1*m.x73*m.x25 + 0.3*m.x74*m.x26 + 0.5*m.x75*m.x27 + 0.7*m.x76*m.x28)/m.x115 - m.x103
                                >= -408.395, m.x115 >= 0.001))

m.c116 = Complementarity(expr=(-(0.1*m.x77*m.x29 + 0.3*m.x78*m.x30 + 0.5*m.x79*m.x31 + 0.7*m.x80*m.x32)/m.x116 - m.x104
                                >= -471.225, m.x116 >= 0.001))

m.c117 = Complementarity(expr=(-(0.1*m.x81*m.x33 + 0.3*m.x82*m.x34 + 0.5*m.x83*m.x35 + 0.7*m.x84*m.x36)/m.x117 - m.x105
                                >= -534.055, m.x117 >= 0.001))

m.c118 = Complementarity(expr=(-(0.1*m.x85*m.x37 + 0.3*m.x86*m.x38 + 0.5*m.x87*m.x39 + 0.7*m.x88*m.x40)/m.x118 - m.x106
                                >= -596.885, m.x118 >= 0.001))

m.c119 = Complementarity(expr=(-(0.1*m.x89*m.x41 + 0.3*m.x90*m.x42 + 0.5*m.x91*m.x43 + 0.7*m.x92*m.x44)/m.x119 - m.x107
                                >= -659.715, m.x119 >= 0.001))

m.c120 = Complementarity(expr=(-(0.1*m.x93*m.x45 + 0.3*m.x94*m.x46 + 0.5*m.x95*m.x47 + 0.7*m.x96*m.x48)/m.x120 - m.x108
                                >= -722.545, m.x120 >= 0.001))

m.c121 = Complementarity(expr=( - 0.075*m.x49 - 0.03*m.x50 - 0.02*m.x51 - 0.05*m.x52 - 0.225*m.x53 - 0.09*m.x54
                                - 0.06*m.x55 - 0.15*m.x56 - 0.375*m.x57 - 0.15*m.x58 - 0.1*m.x59 - 0.25*m.x60
                                - 0.525*m.x61 - 0.21*m.x62 - 0.14*m.x63 - 0.35*m.x64 - 0.675*m.x65 - 0.27*m.x66
                                - 0.18*m.x67 - 0.45*m.x68 - 0.825*m.x69 - 0.33*m.x70 - 0.22*m.x71 - 0.55*m.x72
                                - 0.975*m.x73 - 0.39*m.x74 - 0.26*m.x75 - 0.65*m.x76 - 1.125*m.x77 - 0.45*m.x78
                                - 0.3*m.x79 - 0.75*m.x80 - 1.275*m.x81 - 0.51*m.x82 - 0.34*m.x83 - 0.85*m.x84
                                - 1.425*m.x85 - 0.57*m.x86 - 0.38*m.x87 - 0.95*m.x88 - 1.575*m.x89 - 0.63*m.x90
                                - 0.42*m.x91 - 1.05*m.x92 - 1.725*m.x93 - 0.69*m.x94 - 0.46*m.x95 - 1.15*m.x96
                                >= -20, m.x121 >= 0))

m.c122 = Complementarity(expr=(-(0.9*m.x49*m.x1 + 0.7*m.x50*m.x2 + 0.5*m.x51*m.x3 + 0.3*m.x52*m.x4 + 0.9*m.x53*m.x5 + 
                               0.7*m.x54*m.x6 + 0.5*m.x55*m.x7 + 0.3*m.x56*m.x8 + 0.9*m.x57*m.x9 + 0.7*m.x58*m.x10 + 0.5
                               *m.x59*m.x11 + 0.3*m.x60*m.x12 + 0.9*m.x61*m.x13 + 0.7*m.x62*m.x14 + 0.5*m.x63*m.x15 + 
                               0.3*m.x64*m.x16 + 0.9*m.x65*m.x17 + 0.7*m.x66*m.x18 + 0.5*m.x67*m.x19 + 0.3*m.x68*m.x20
                                + 0.9*m.x69*m.x21 + 0.7*m.x70*m.x22 + 0.5*m.x71*m.x23 + 0.3*m.x72*m.x24 + 0.9*m.x73*
                               m.x25 + 0.7*m.x74*m.x26 + 0.5*m.x75*m.x27 + 0.3*m.x76*m.x28 + 0.9*m.x77*m.x29 + 0.7*m.x78
                               *m.x30 + 0.5*m.x79*m.x31 + 0.3*m.x80*m.x32 + 0.9*m.x81*m.x33 + 0.7*m.x82*m.x34 + 0.5*
                               m.x83*m.x35 + 0.3*m.x84*m.x36 + 0.9*m.x85*m.x37 + 0.7*m.x86*m.x38 + 0.5*m.x87*m.x39 + 0.3
                               *m.x88*m.x40 + 0.9*m.x89*m.x41 + 0.7*m.x90*m.x42 + 0.5*m.x91*m.x43 + 0.3*m.x92*m.x44 + 
                               0.9*m.x93*m.x45 + 0.7*m.x94*m.x46 + 0.5*m.x95*m.x47 + 0.3*m.x96*m.x48) + 30*m.x122
                                - 0, m.x122 == 1))

m.c123 = Complementarity(expr=(m.x123*(m.x49 + m.x53 + m.x57 + m.x61 + m.x65 + m.x69 + m.x73 + m.x77 + m.x81 + m.x85 + 
                               m.x89 + m.x93) - 0.3*(m.x109*(31.415 - m.x97) + m.x110*(94.245 - m.x98) + m.x111*(157.075
                                - m.x99) + m.x112*(219.905 - m.x100) + m.x113*(282.735 - m.x101) + m.x114*(345.565 - 
                               m.x102) + m.x115*(408.395 - m.x103) + m.x116*(471.225 - m.x104) + m.x117*(534.055 - 
                               m.x105) + m.x118*(596.885 - m.x106) + m.x119*(659.715 - m.x107) + m.x120*(722.545 - 
                               m.x108)) - 12*m.x121 - 6*m.x122 >= 0, m.x123 >= 0.1))

m.c124 = Complementarity(expr=(m.x124*(m.x50 + m.x54 + m.x58 + m.x62 + m.x66 + m.x70 + m.x74 + m.x78 + m.x82 + m.x86 + 
                               m.x90 + m.x94) - 0.3*(m.x109*(31.415 - m.x97) + m.x110*(94.245 - m.x98) + m.x111*(157.075
                                - m.x99) + m.x112*(219.905 - m.x100) + m.x113*(282.735 - m.x101) + m.x114*(345.565 - 
                               m.x102) + m.x115*(408.395 - m.x103) + m.x116*(471.225 - m.x104) + m.x117*(534.055 - 
                               m.x105) + m.x118*(596.885 - m.x106) + m.x119*(659.715 - m.x107) + m.x120*(722.545 - 
                               m.x108)) - 4*m.x121 - 9*m.x122 >= 0, m.x124 >= 0.1))

m.c125 = Complementarity(expr=(m.x125*(m.x51 + m.x55 + m.x59 + m.x63 + m.x67 + m.x71 + m.x75 + m.x79 + m.x83 + m.x87 + 
                               m.x91 + m.x95) - 0.2*(m.x109*(31.415 - m.x97) + m.x110*(94.245 - m.x98) + m.x111*(157.075
                                - m.x99) + m.x112*(219.905 - m.x100) + m.x113*(282.735 - m.x101) + m.x114*(345.565 - 
                               m.x102) + m.x115*(408.395 - m.x103) + m.x116*(471.225 - m.x104) + m.x117*(534.055 - 
                               m.x105) + m.x118*(596.885 - m.x106) + m.x119*(659.715 - m.x107) + m.x120*(722.545 - 
                               m.x108)) - 2*m.x121 - 3*m.x122 >= 0, m.x125 >= 0.1))

m.c126 = Complementarity(expr=(m.x126*(m.x52 + m.x56 + m.x60 + m.x64 + m.x68 + m.x72 + m.x76 + m.x80 + m.x84 + m.x88 + 
                               m.x92 + m.x96) - 0.2*(m.x109*(31.415 - m.x97) + m.x110*(94.245 - m.x98) + m.x111*(157.075
                                - m.x99) + m.x112*(219.905 - m.x100) + m.x113*(282.735 - m.x101) + m.x114*(345.565 - 
                               m.x102) + m.x115*(408.395 - m.x103) + m.x116*(471.225 - m.x104) + m.x117*(534.055 - 
                               m.x105) + m.x118*(596.885 - m.x106) + m.x119*(659.715 - m.x107) + m.x120*(722.545 - 
                               m.x108)) - 2*m.x121 - 9*m.x122 >= 0, m.x126 >= 0.1))
