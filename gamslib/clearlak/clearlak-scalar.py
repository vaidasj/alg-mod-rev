#  LP written by GAMS Convert at 12/13/18 11:22:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23       23        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         92       92        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        157      157        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(100,100),initialize=100)
m.x3 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,250),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,200),initialize=0)
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

m.obj = Objective(expr=   10*m.x47 + 7.5*m.x48 + 2.5*m.x49 + 5.625*m.x50 + 1.875*m.x51 + 1.875*m.x52 + 0.625*m.x53
                        + 1.40625*m.x54 + 2.8125*m.x55 + 1.40625*m.x56 + 1.875*m.x57 + 1.875*m.x58 + 0.625*m.x59
                        + 1.40625*m.x60 + 0.703125*m.x61 + 1.40625*m.x62 + 0.703125*m.x63 + 1.40625*m.x64
                        + 0.46875*m.x65 + 0.9375*m.x66 + 0.46875*m.x67 + 1.875*m.x68 + 0.625*m.x69 + 5*m.x70
                        + 3.75*m.x71 + 1.25*m.x72 + 2.8125*m.x73 + 0.9375*m.x74 + 0.9375*m.x75 + 0.3125*m.x76
                        + 0.703125*m.x77 + 1.40625*m.x78 + 0.703125*m.x79 + 0.9375*m.x80 + 0.9375*m.x81 + 0.3125*m.x82
                        + 0.703125*m.x83 + 0.3515625*m.x84 + 0.703125*m.x85 + 0.3515625*m.x86 + 0.703125*m.x87
                        + 0.234375*m.x88 + 0.46875*m.x89 + 0.234375*m.x90 + 0.9375*m.x91 + 0.3125*m.x92, sense=minimize)

m.c2 = Constraint(expr= - m.x2 + m.x3 + m.x25 + m.x48 - m.x71 == 150)

m.c3 = Constraint(expr= - m.x2 + m.x4 + m.x26 + m.x49 - m.x72 == 350)

m.c4 = Constraint(expr= - m.x3 + m.x5 + m.x27 + m.x50 - m.x73 == 150)

m.c5 = Constraint(expr= - m.x3 + m.x6 + m.x28 + m.x51 - m.x74 == 350)

m.c6 = Constraint(expr= - m.x4 + m.x7 + m.x29 + m.x52 - m.x75 == 150)

m.c7 = Constraint(expr= - m.x4 + m.x8 + m.x30 + m.x53 - m.x76 == 350)

m.c8 = Constraint(expr= - m.x5 + m.x9 + m.x31 + m.x54 - m.x77 == -50)

m.c9 = Constraint(expr= - m.x5 + m.x10 + m.x32 + m.x55 - m.x78 == 100)

m.c10 = Constraint(expr= - m.x5 + m.x11 + m.x33 + m.x56 - m.x79 == 250)

m.c11 = Constraint(expr= - m.x6 + m.x12 + m.x34 + m.x57 - m.x80 == 100)

m.c12 = Constraint(expr= - m.x7 + m.x13 + m.x35 + m.x58 - m.x81 == 100)

m.c13 = Constraint(expr= - m.x8 + m.x14 + m.x36 + m.x59 - m.x82 == 100)

m.c14 = Constraint(expr= - m.x9 + m.x15 + m.x37 + m.x60 - m.x83 == 100)

m.c15 = Constraint(expr= - m.x10 + m.x16 + m.x38 + m.x61 - m.x84 == -50)

m.c16 = Constraint(expr= - m.x10 + m.x17 + m.x39 + m.x62 - m.x85 == 100)

m.c17 = Constraint(expr= - m.x10 + m.x18 + m.x40 + m.x63 - m.x86 == 250)

m.c18 = Constraint(expr= - m.x11 + m.x19 + m.x41 + m.x64 - m.x87 == 100)

m.c19 = Constraint(expr= - m.x12 + m.x20 + m.x42 + m.x65 - m.x88 == -50)

m.c20 = Constraint(expr= - m.x12 + m.x21 + m.x43 + m.x66 - m.x89 == 100)

m.c21 = Constraint(expr= - m.x12 + m.x22 + m.x44 + m.x67 - m.x90 == 250)

m.c22 = Constraint(expr= - m.x13 + m.x23 + m.x45 + m.x68 - m.x91 == 100)

m.c23 = Constraint(expr= - m.x14 + m.x24 + m.x46 + m.x69 - m.x92 == 100)
