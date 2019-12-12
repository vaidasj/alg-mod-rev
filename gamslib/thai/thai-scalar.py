#  MIP written by GAMS Convert at 12/13/18 10:24:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31        1        4       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         69       46        0       23        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        205      205        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.i1 = Var(within=Integers,bounds=(0,2),initialize=0)
m.i2 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i3 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i4 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i5 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i6 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i7 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i8 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i9 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i10 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i11 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i12 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i13 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i14 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i15 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i16 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i17 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i18 = Var(within=Integers,bounds=(0,3),initialize=0)
m.i19 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i20 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i21 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i22 = Var(within=Integers,bounds=(0,4),initialize=0)
m.i23 = Var(within=Integers,bounds=(0,4),initialize=0)
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

m.obj = Objective(expr=   4.7*m.i1 + 4.7*m.i2 + 4.7*m.i3 + 5.6*m.i4 + 5.6*m.i5 + 7*m.i6 + 7*m.i7 + 8.5*m.i8 + 6.15*m.i9
                        + 6.15*m.i10 + 7.4*m.i11 + 7.4*m.i12 + 9.1*m.i13 + 7.65*m.i14 + 7.65*m.i15 + 7.65*m.i16
                        + 9*m.i17 + 8.2*m.i18 + 8.2*m.i19 + 9.6*m.i20 + 9.4*m.i21 + 9.65*m.i22 + 10.2*m.i23
                        + 0.037*m.x24 + 0.037*m.x25 + 0.037*m.x26 + 0.046*m.x27 + 0.046*m.x28 + 0.06*m.x29 + 0.06*m.x30
                        + 0.075*m.x31 + 0.0515*m.x32 + 0.0515*m.x33 + 0.0515*m.x34 + 0.0515*m.x35 + 0.064*m.x36
                        + 0.064*m.x37 + 0.064*m.x38 + 0.064*m.x39 + 0.081*m.x40 + 0.081*m.x41 + 0.0665*m.x42
                        + 0.0665*m.x43 + 0.0665*m.x44 + 0.0665*m.x45 + 0.0665*m.x46 + 0.0665*m.x47 + 0.08*m.x48
                        + 0.08*m.x49 + 0.072*m.x50 + 0.072*m.x51 + 0.072*m.x52 + 0.072*m.x53 + 0.072*m.x54 + 0.072*m.x55
                        + 0.086*m.x56 + 0.086*m.x57 + 0.086*m.x58 + 0.084*m.x59 + 0.084*m.x60 + 0.084*m.x61
                        + 0.0865*m.x62 + 0.0865*m.x63 + 0.0865*m.x64 + 0.092*m.x65 + 0.092*m.x66 + 0.092*m.x67
                        + 0.092*m.x68, sense=minimize)

m.c2 = Constraint(expr=   m.x24 + m.x25 + m.x26 + m.x32 + m.x34 + m.x36 + m.x38 + m.x40 + m.x50 + m.x53 + m.x56 + m.x59
                        + m.x65 >= 475)

m.c3 = Constraint(expr=   m.x27 + m.x28 + m.x33 + m.x35 + m.x42 + m.x44 + m.x46 + m.x51 + m.x54 + m.x57 + m.x62 + m.x66
                        >= 659)

m.c4 = Constraint(expr=   m.x29 + m.x30 + m.x37 + m.x39 + m.x43 + m.x45 + m.x48 + m.x52 + m.x55 + m.x60 + m.x63 + m.x67
                        >= 672)

m.c5 = Constraint(expr=   m.x31 + m.x41 + m.x47 + m.x49 + m.x58 + m.x61 + m.x64 + m.x68 >= 1123)

m.c6 = Constraint(expr= - 100*m.i1 + m.x24 <= 0)

m.c7 = Constraint(expr= - 200*m.i2 + m.x25 <= 0)

m.c8 = Constraint(expr= - 600*m.i3 + m.x26 <= 0)

m.c9 = Constraint(expr= - 200*m.i4 + m.x27 <= 0)

m.c10 = Constraint(expr= - 600*m.i5 + m.x28 <= 0)

m.c11 = Constraint(expr= - 200*m.i6 + m.x29 <= 0)

m.c12 = Constraint(expr= - 600*m.i7 + m.x30 <= 0)

m.c13 = Constraint(expr= - 600*m.i8 + m.x31 <= 0)

m.c14 = Constraint(expr= - 200*m.i9 + m.x32 + m.x33 <= 0)

m.c15 = Constraint(expr= - 600*m.i10 + m.x34 + m.x35 <= 0)

m.c16 = Constraint(expr= - 200*m.i11 + m.x36 + m.x37 <= 0)

m.c17 = Constraint(expr= - 600*m.i12 + m.x38 + m.x39 <= 0)

m.c18 = Constraint(expr= - 600*m.i13 + m.x40 + m.x41 <= 0)

m.c19 = Constraint(expr= - 200*m.i14 + m.x42 + m.x43 <= 0)

m.c20 = Constraint(expr= - 600*m.i15 + m.x44 + m.x45 <= 0)

m.c21 = Constraint(expr= - 600*m.i16 + m.x46 + m.x47 <= 0)

m.c22 = Constraint(expr= - 600*m.i17 + m.x48 + m.x49 <= 0)

m.c23 = Constraint(expr= - 200*m.i18 + m.x50 + m.x51 + m.x52 <= 0)

m.c24 = Constraint(expr= - 600*m.i19 + m.x53 + m.x54 + m.x55 <= 0)

m.c25 = Constraint(expr= - 600*m.i20 + m.x56 + m.x57 + m.x58 <= 0)

m.c26 = Constraint(expr= - 600*m.i21 + m.x59 + m.x60 + m.x61 <= 0)

m.c27 = Constraint(expr= - 600*m.i22 + m.x62 + m.x63 + m.x64 <= 0)

m.c28 = Constraint(expr= - 600*m.i23 + m.x65 + m.x66 + m.x67 + m.x68 <= 0)

m.c29 = Constraint(expr=   m.i1 <= 2)

m.c30 = Constraint(expr=   m.i2 + m.i4 + m.i6 + m.i9 + m.i11 + m.i14 + m.i18 <= 3)

m.c31 = Constraint(expr=   m.i3 + m.i5 + m.i7 + m.i8 + m.i10 + m.i12 + m.i13 + m.i15 + m.i16 + m.i17 + m.i19 + m.i20
                         + m.i21 + m.i22 + m.i23 <= 4)
