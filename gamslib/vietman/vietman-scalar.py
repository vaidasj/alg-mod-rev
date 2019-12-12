#  MIP written by GAMS Convert at 12/13/18 10:24:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         28        1       27        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        113      103       10        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        370      370        0        0
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
m.x93 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b103 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b104 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b105 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b106 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b107 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b108 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b109 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b110 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b111 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b112 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   56*m.x1 + 47.4*m.x2 + 47.6*m.x3 + 54.4*m.x4 + 51*m.x5 + 20.4*m.x6 + 33.6*m.x7 + 34.5*m.x8
                        + 26.9*m.x9 + 29.5*m.x10 + 33.4*m.x11 + 20.2*m.x12 + 26.7*m.x13 + 31.3*m.x14 + 28.1*m.x15
                        + 35.3*m.x16 + 27.7*m.x17 + 21.2*m.x18 + 35*m.x19 + 32.2*m.x20 + 41.8*m.x21 + 46.4*m.x22
                        + 49.1*m.x23 + 35.3*m.x24 + 42.1*m.x25 + 43*m.x26 + 41.8*m.x27 + 44.9*m.x28 + 40.7*m.x29
                        + 33.9*m.x30 + 86.1*m.x31 + 76.4*m.x32 + 76.8*m.x33 + 87*m.x34 + 83.6*m.x35 + 90.3*m.x36
                        + 75.4*m.x37 + 76.4*m.x38 + 81.2*m.x39 + 96.4*m.x40 + 82.4*m.x41 + 86.4*m.x42 + 32.2*m.x43
                        + 44*m.x44 + 45.8*m.x45 + 31.5*m.x46 + 34.1*m.x47 + 42*m.x48 + 43*m.x49 + 40.3*m.x50
                        + 37.8*m.x51 + 42.9*m.x52 + 36.6*m.x53 + 30.8*m.x54 + 36.6*m.x55 + 24.4*m.x56 + 29.2*m.x57
                        + 37.6*m.x58 + 34.2*m.x59 + 41*m.x60 + 26.1*m.x61 + 24.2*m.x62 + 29.9*m.x63 + 48.9*m.x64
                        + 31.9*m.x65 + 37.6*m.x66 + 37*m.x67 + 27.9*m.x68 + 23.1*m.x69 + 41.3*m.x70 + 38.4*m.x71
                        + 40.9*m.x72 + 24.7*m.x73 + 26.8*m.x74 + 29.6*m.x75 + 52.8*m.x76 + 32.6*m.x77 + 41.3*m.x78
                        + 38.5*m.x79 + 41.9*m.x80 + 48*m.x81 + 23.2*m.x82 + 32.2*m.x83 + 48.5*m.x84 + 44.6*m.x85
                        + 44.1*m.x86 + 43.1*m.x87 + 34.5*m.x88 + 42.4*m.x89 + 28.9*m.x90 + 44*m.x91 + 35.3*m.x92
                        + 41.1*m.x93 + 33.2*m.x94 + 29.8*m.x95 + 54.1*m.x96 + 37.7*m.x97 + 37.1*m.x98 + 42.8*m.x99
                        + 44.6*m.x100 + 44.4*m.x101 + 32.6*m.x102 + 810*m.b103 + 951*m.b104 + 754*m.b105 + 856*m.b106
                        + 852*m.b107 + 1760*m.b108 + 1656*m.b109 + 1626*m.b110 + 1784*m.b111 + 1782*m.b112
                       , sense=minimize)

m.c1 = Constraint(expr=   m.x31 + m.x43 + m.x55 + m.x67 + m.x79 + m.x91 >= 9.2)

m.c2 = Constraint(expr=   m.x32 + m.x44 + m.x56 + m.x68 + m.x80 + m.x92 >= 59.9)

m.c3 = Constraint(expr=   m.x33 + m.x45 + m.x57 + m.x69 + m.x81 + m.x93 >= 95.8)

m.c4 = Constraint(expr=   m.x34 + m.x46 + m.x58 + m.x70 + m.x82 + m.x94 >= 185.3)

m.c5 = Constraint(expr=   m.x35 + m.x47 + m.x59 + m.x71 + m.x83 + m.x95 >= 344.1)

m.c6 = Constraint(expr=   m.x36 + m.x48 + m.x60 + m.x72 + m.x84 + m.x96 >= 66.1)

m.c7 = Constraint(expr=   m.x37 + m.x49 + m.x61 + m.x73 + m.x85 + m.x97 >= 168.6)

m.c8 = Constraint(expr=   m.x38 + m.x50 + m.x62 + m.x74 + m.x86 + m.x98 >= 50)

m.c9 = Constraint(expr=   m.x39 + m.x51 + m.x63 + m.x75 + m.x87 + m.x99 >= 34)

m.c10 = Constraint(expr=   m.x40 + m.x52 + m.x64 + m.x76 + m.x88 + m.x100 >= 11.1)

m.c11 = Constraint(expr=   m.x41 + m.x53 + m.x65 + m.x77 + m.x89 + m.x101 >= 109.5)

m.c12 = Constraint(expr=   m.x42 + m.x54 + m.x66 + m.x78 + m.x90 + m.x102 >= 47)

m.c13 = Constraint(expr=   m.x1 + m.x6 + m.x11 + m.x16 + m.x21 + m.x26 - m.x43 - m.x44 - m.x45 - m.x46 - m.x47 - m.x48
                         - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 >= 0)

m.c14 = Constraint(expr=   m.x2 + m.x7 + m.x12 + m.x17 + m.x22 + m.x27 - m.x55 - m.x56 - m.x57 - m.x58 - m.x59 - m.x60
                         - m.x61 - m.x62 - m.x63 - m.x64 - m.x65 - m.x66 >= 0)

m.c15 = Constraint(expr=   m.x3 + m.x8 + m.x13 + m.x18 + m.x23 + m.x28 - m.x67 - m.x68 - m.x69 - m.x70 - m.x71 - m.x72
                         - m.x73 - m.x74 - m.x75 - m.x76 - m.x77 - m.x78 >= 0)

m.c16 = Constraint(expr=   m.x4 + m.x9 + m.x14 + m.x19 + m.x24 + m.x29 - m.x79 - m.x80 - m.x81 - m.x82 - m.x83 - m.x84
                         - m.x85 - m.x86 - m.x87 - m.x88 - m.x89 - m.x90 >= 0)

m.c17 = Constraint(expr=   m.x5 + m.x10 + m.x15 + m.x20 + m.x25 + m.x30 - m.x91 - m.x92 - m.x93 - m.x94 - m.x95 - m.x96
                         - m.x97 - m.x98 - m.x99 - m.x100 - m.x101 - m.x102 >= 0)

m.c18 = Constraint(expr= - m.x6 - m.x7 - m.x8 - m.x9 - m.x10 + 1180.6*m.b108 >= 0)

m.c19 = Constraint(expr= - m.x11 - m.x12 - m.x13 - m.x14 - m.x15 + 1180.6*m.b109 >= 0)

m.c20 = Constraint(expr= - m.x16 - m.x17 - m.x18 - m.x19 - m.x20 + 1180.6*m.b110 >= 0)

m.c21 = Constraint(expr= - m.x21 - m.x22 - m.x23 - m.x24 - m.x25 + 1180.6*m.b111 >= 0)

m.c22 = Constraint(expr= - m.x26 - m.x27 - m.x28 - m.x29 - m.x30 + 1180.6*m.b112 >= 0)

m.c23 = Constraint(expr= - m.x43 - m.x44 - m.x45 - m.x46 - m.x47 - m.x48 - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54
                         + 1180.6*m.b103 >= 0)

m.c24 = Constraint(expr= - m.x55 - m.x56 - m.x57 - m.x58 - m.x59 - m.x60 - m.x61 - m.x62 - m.x63 - m.x64 - m.x65 - m.x66
                         + 1180.6*m.b104 >= 0)

m.c25 = Constraint(expr= - m.x67 - m.x68 - m.x69 - m.x70 - m.x71 - m.x72 - m.x73 - m.x74 - m.x75 - m.x76 - m.x77 - m.x78
                         + 1180.6*m.b105 >= 0)

m.c26 = Constraint(expr= - m.x79 - m.x80 - m.x81 - m.x82 - m.x83 - m.x84 - m.x85 - m.x86 - m.x87 - m.x88 - m.x89 - m.x90
                         + 1180.6*m.b106 >= 0)

m.c27 = Constraint(expr= - m.x91 - m.x92 - m.x93 - m.x94 - m.x95 - m.x96 - m.x97 - m.x98 - m.x99 - m.x100 - m.x101
                         - m.x102 + 1180.6*m.b107 >= 0)
