#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         69       69        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        134      134        0        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        396      396        0        0
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
m.x69 = Var(within=Reals,bounds=(0,5000),initialize=0)
m.x70 = Var(within=Reals,bounds=(0,5000),initialize=0)
m.x71 = Var(within=Reals,bounds=(0,5000),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,5000),initialize=0)
m.x73 = Var(within=Reals,bounds=(1200,3000),initialize=1200)
m.x74 = Var(within=Reals,bounds=(1200,3000),initialize=1200)
m.x75 = Var(within=Reals,bounds=(1200,3000),initialize=1200)
m.x76 = Var(within=Reals,bounds=(1200,3000),initialize=1200)
m.x77 = Var(within=Reals,bounds=(700,1500),initialize=700)
m.x78 = Var(within=Reals,bounds=(700,1500),initialize=700)
m.x79 = Var(within=Reals,bounds=(700,1500),initialize=700)
m.x80 = Var(within=Reals,bounds=(700,1500),initialize=700)
m.x81 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,1000),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,500),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,500),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,500),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,500),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x90 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x91 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x92 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(200,None),initialize=200)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(200,None),initialize=200)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(200,None),initialize=200)
m.x105 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(200,None),initialize=200)
m.x109 = Var(within=Reals,bounds=(2000,2500),initialize=2000)
m.x110 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x111 = Var(within=Reals,bounds=(2000,3000),initialize=2000)
m.x112 = Var(within=Reals,bounds=(1500,2000),initialize=1500)
m.x113 = Var(within=Reals,bounds=(1500,3000),initialize=1500)
m.x114 = Var(within=Reals,bounds=(0,3000),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,3000),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,3000),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,3000),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x119 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x120 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x121 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x122 = Var(within=Reals,bounds=(0,4000),initialize=0)
m.x123 = Var(within=Reals,bounds=(0,4000),initialize=0)
m.x124 = Var(within=Reals,bounds=(0,4000),initialize=0)
m.x125 = Var(within=Reals,bounds=(0,4000),initialize=0)
m.x126 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x127 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x128 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x129 = Var(within=Reals,bounds=(0,2500),initialize=0)
m.x131 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x132 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x133 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x134 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x131 - m.x132 - m.x133 - m.x134 + 10, sense=maximize)

m.c1 = Constraint(expr= - m.x1 + m.x114 == 0)

m.c2 = Constraint(expr= - m.x2 - m.x93 + m.x115 == 0)

m.c3 = Constraint(expr= - m.x3 - m.x94 + m.x116 == 0)

m.c4 = Constraint(expr= - m.x4 - m.x95 + m.x117 == 0)

m.c5 = Constraint(expr= - m.x5 - m.x9 + m.x118 == 0)

m.c6 = Constraint(expr= - m.x6 - m.x10 - m.x97 + m.x119 == 0)

m.c7 = Constraint(expr= - m.x7 - m.x11 - m.x98 + m.x120 == 0)

m.c8 = Constraint(expr= - m.x8 - m.x12 - m.x99 + m.x121 == 0)

m.c9 = Constraint(expr= - m.x13 - m.x21 + m.x122 == 0)

m.c10 = Constraint(expr= - m.x14 - m.x22 - m.x101 + m.x123 == 0)

m.c11 = Constraint(expr= - m.x15 - m.x23 - m.x102 + m.x124 == 0)

m.c12 = Constraint(expr= - m.x16 - m.x24 - m.x103 + m.x125 == 0)

m.c13 = Constraint(expr= - m.x17 - m.x25 + m.x126 == 0)

m.c14 = Constraint(expr= - m.x18 - m.x26 - m.x105 + m.x127 == 0)

m.c15 = Constraint(expr= - m.x19 - m.x27 - m.x106 + m.x128 == 0)

m.c16 = Constraint(expr= - m.x20 - m.x28 - m.x107 + m.x129 == 0)

m.c17 = Constraint(expr= - m.x1 - m.x5 + m.x69 + m.x81 == 0)

m.c18 = Constraint(expr= - m.x2 - m.x6 + m.x70 + m.x82 == 0)

m.c19 = Constraint(expr= - m.x3 - m.x7 + m.x71 + m.x83 == 0)

m.c20 = Constraint(expr= - m.x4 - m.x8 + m.x72 + m.x84 == 0)

m.c21 = Constraint(expr= - m.x9 - m.x13 - m.x17 + m.x73 + m.x85 == 0)

m.c22 = Constraint(expr= - m.x10 - m.x14 - m.x18 + m.x74 + m.x86 == 0)

m.c23 = Constraint(expr= - m.x11 - m.x15 - m.x19 + m.x75 + m.x87 == 0)

m.c24 = Constraint(expr= - m.x12 - m.x16 - m.x20 + m.x76 + m.x88 == 0)

m.c25 = Constraint(expr= - m.x21 - m.x25 + m.x77 + m.x89 == 0)

m.c26 = Constraint(expr= - m.x22 - m.x26 + m.x78 + m.x90 == 0)

m.c27 = Constraint(expr= - m.x23 - m.x27 + m.x79 + m.x91 == 0)

m.c28 = Constraint(expr= - m.x24 - m.x28 + m.x80 + m.x92 == 0)

m.c29 = Constraint(expr=   m.x29 + m.x33 + m.x93 - m.x114 == 0)

m.c30 = Constraint(expr=   m.x30 + m.x34 + m.x94 - m.x115 == 0)

m.c31 = Constraint(expr=   m.x31 + m.x35 + m.x95 - m.x116 == 0)

m.c32 = Constraint(expr=   m.x32 + m.x36 + m.x96 - m.x117 == 0)

m.c33 = Constraint(expr=   m.x37 + m.x41 + m.x45 + m.x97 - m.x118 == 0)

m.c34 = Constraint(expr=   m.x38 + m.x42 + m.x46 + m.x98 - m.x119 == 0)

m.c35 = Constraint(expr=   m.x39 + m.x43 + m.x47 + m.x99 - m.x120 == 0)

m.c36 = Constraint(expr=   m.x40 + m.x44 + m.x48 + m.x100 - m.x121 == 0)

m.c37 = Constraint(expr=   m.x49 + m.x53 + m.x57 + m.x101 - m.x122 == 0)

m.c38 = Constraint(expr=   m.x50 + m.x54 + m.x58 + m.x102 - m.x123 == 0)

m.c39 = Constraint(expr=   m.x51 + m.x55 + m.x59 + m.x103 - m.x124 == 0)

m.c40 = Constraint(expr=   m.x52 + m.x56 + m.x60 + m.x104 - m.x125 == 0)

m.c41 = Constraint(expr=   m.x61 + m.x65 + m.x105 - m.x126 == 0)

m.c42 = Constraint(expr=   m.x62 + m.x66 + m.x106 - m.x127 == 0)

m.c43 = Constraint(expr=   m.x63 + m.x67 + m.x107 - m.x128 == 0)

m.c44 = Constraint(expr=   m.x64 + m.x68 + m.x108 - m.x129 == 0)

m.c45 = Constraint(expr=   m.x29 - m.x109 == 0)

m.c46 = Constraint(expr=   m.x30 - m.x109 == 0)

m.c47 = Constraint(expr=   m.x31 - m.x109 == 0)

m.c48 = Constraint(expr=   m.x32 - m.x109 == 0)

m.c49 = Constraint(expr=   m.x33 + m.x37 + m.x49 - m.x110 == 0)

m.c50 = Constraint(expr=   m.x34 + m.x38 + m.x50 - m.x110 == 0)

m.c51 = Constraint(expr=   m.x35 + m.x39 + m.x51 - m.x110 == 0)

m.c52 = Constraint(expr=   m.x36 + m.x40 + m.x52 - m.x110 == 0)

m.c53 = Constraint(expr=   m.x41 - m.x111 == 0)

m.c54 = Constraint(expr=   m.x42 - m.x111 == 0)

m.c55 = Constraint(expr=   m.x43 - m.x111 == 0)

m.c56 = Constraint(expr=   m.x44 - m.x111 == 0)

m.c57 = Constraint(expr=   m.x45 + m.x53 + m.x61 - m.x112 == 0)

m.c58 = Constraint(expr=   m.x46 + m.x54 + m.x62 - m.x112 == 0)

m.c59 = Constraint(expr=   m.x47 + m.x55 + m.x63 - m.x112 == 0)

m.c60 = Constraint(expr=   m.x48 + m.x56 + m.x64 - m.x112 == 0)

m.c61 = Constraint(expr=   m.x57 + m.x65 - m.x113 == 0)

m.c62 = Constraint(expr=   m.x58 + m.x66 - m.x113 == 0)

m.c63 = Constraint(expr=   m.x59 + m.x67 - m.x113 == 0)

m.c64 = Constraint(expr=   m.x60 + m.x68 - m.x113 == 0)

m.c65 = Constraint(expr= - 70*m.x29 - 70*m.x30 - 77*m.x31 - 77*m.x32 - 68*m.x33 - 68*m.x34 - 74.8*m.x35 - 74.8*m.x36
                         - 68*m.x37 - 68*m.x38 - 74.8*m.x39 - 74.8*m.x40 - 65*m.x41 - 65*m.x42 - 71.5*m.x43 - 71.5*m.x44
                         - 72*m.x45 - 72*m.x46 - 79.2*m.x47 - 79.2*m.x48 - 68*m.x49 - 68*m.x50 - 74.8*m.x51 - 74.8*m.x52
                         - 72*m.x53 - 72*m.x54 - 79.2*m.x55 - 79.2*m.x56 - 71*m.x57 - 71*m.x58 - 78.1*m.x59 - 78.1*m.x60
                         - 72*m.x61 - 72*m.x62 - 79.2*m.x63 - 79.2*m.x64 - 71*m.x65 - 71*m.x66 - 78.1*m.x67 - 78.1*m.x68
                         + m.x131 == 0)

m.c66 = Constraint(expr= - 10*m.x1 - 10*m.x2 - 10*m.x3 - 10*m.x4 - 12*m.x5 - 12*m.x6 - 12*m.x7 - 12*m.x8 - 8*m.x9
                         - 8*m.x10 - 8*m.x11 - 8*m.x12 - 4*m.x13 - 4*m.x14 - 4*m.x15 - 4*m.x16 - 5*m.x17 - 5*m.x18
                         - 5*m.x19 - 5*m.x20 - 6*m.x21 - 6*m.x22 - 6*m.x23 - 6*m.x24 - 8*m.x25 - 8*m.x26 - 8*m.x27
                         - 8*m.x28 - 15*m.x29 - 15*m.x30 - 15*m.x31 - 15*m.x32 - 19*m.x33 - 19*m.x34 - 19*m.x35
                         - 19*m.x36 - 20*m.x37 - 20*m.x38 - 20*m.x39 - 20*m.x40 - 22*m.x41 - 22*m.x42 - 22*m.x43
                         - 22*m.x44 - 18*m.x45 - 18*m.x46 - 18*m.x47 - 18*m.x48 - 16*m.x49 - 16*m.x50 - 16*m.x51
                         - 16*m.x52 - 18*m.x53 - 18*m.x54 - 18*m.x55 - 18*m.x56 - 19*m.x57 - 19*m.x58 - 19*m.x59
                         - 19*m.x60 - 15*m.x61 - 15*m.x62 - 15*m.x63 - 15*m.x64 - 21*m.x65 - 21*m.x66 - 21*m.x67
                         - 21*m.x68 + m.x132 == 0)

m.c67 = Constraint(expr= - 35*m.x69 - 36*m.x70 - 37*m.x71 - 38*m.x72 - 40*m.x73 - 41*m.x74 - 42*m.x75 - 43*m.x76
                         - 38*m.x77 - 39*m.x78 - 40*m.x79 - 41*m.x80 - 45*m.x81 - 46*m.x82 - 47*m.x83 - 49*m.x84
                         - 43*m.x85 - 44*m.x86 - 45*m.x87 - 47*m.x88 - m.x90 - 2*m.x91 - 4*m.x92 + m.x133 == 0)

m.c68 = Constraint(expr= - 2*m.x93 - 2*m.x94 - 2*m.x95 - 2*m.x96 - 2*m.x97 - 2*m.x98 - 2*m.x99 - 2*m.x100 - m.x101
                         - m.x102 - m.x103 - m.x104 - 3*m.x105 - 3*m.x106 - 3*m.x107 - 3*m.x108 + m.x134 == 0)
