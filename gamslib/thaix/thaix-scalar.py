#  MIP written by GAMS Convert at 12/13/18 10:24:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         34        4        4       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         72       49        0       23        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        232      232        0        0
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
m.x70 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x72, sense=minimize)

m.c2 = Constraint(expr= - m.i1 - m.i2 - m.i3 - m.i4 - m.i5 - m.i6 - m.i7 - m.i8 - m.i9 - m.i10 - m.i11 - m.i12 - m.i13
                        - m.i14 - m.i15 - m.i16 - m.i17 - m.i18 - m.i19 - m.i20 - m.i21 - m.i22 - m.i23 + m.x70 == 0)

m.c3 = Constraint(expr= - 370*m.i1 - 370*m.i2 - 370*m.i3 - 460*m.i4 - 460*m.i5 - 600*m.i6 - 600*m.i7 - 750*m.i8
                        - 515*m.i9 - 515*m.i10 - 640*m.i11 - 640*m.i12 - 810*m.i13 - 665*m.i14 - 665*m.i15 - 665*m.i16
                        - 800*m.i17 - 720*m.i18 - 720*m.i19 - 860*m.i20 - 840*m.i21 - 865*m.i22 - 920*m.i23 + m.x71
                        == 0)

m.c4 = Constraint(expr= - 370*m.x24 - 370*m.x25 - 370*m.x26 - 460*m.x27 - 460*m.x28 - 600*m.x29 - 600*m.x30 - 750*m.x31
                        - 515*m.x32 - 515*m.x33 - 515*m.x34 - 515*m.x35 - 640*m.x36 - 640*m.x37 - 640*m.x38 - 640*m.x39
                        - 810*m.x40 - 810*m.x41 - 665*m.x42 - 665*m.x43 - 665*m.x44 - 665*m.x45 - 665*m.x46 - 665*m.x47
                        - 800*m.x48 - 800*m.x49 - 720*m.x50 - 720*m.x51 - 720*m.x52 - 720*m.x53 - 720*m.x54 - 720*m.x55
                        - 860*m.x56 - 860*m.x57 - 860*m.x58 - 840*m.x59 - 840*m.x60 - 840*m.x61 - 865*m.x62 - 865*m.x63
                        - 865*m.x64 - 920*m.x65 - 920*m.x66 - 920*m.x67 - 920*m.x68 + m.x72 == 0)

m.c5 = Constraint(expr=   m.x24 + m.x25 + m.x26 + m.x32 + m.x34 + m.x36 + m.x38 + m.x40 + m.x50 + m.x53 + m.x56 + m.x59
                        + m.x65 >= 475)

m.c6 = Constraint(expr=   m.x27 + m.x28 + m.x33 + m.x35 + m.x42 + m.x44 + m.x46 + m.x51 + m.x54 + m.x57 + m.x62 + m.x66
                        >= 659)

m.c7 = Constraint(expr=   m.x29 + m.x30 + m.x37 + m.x39 + m.x43 + m.x45 + m.x48 + m.x52 + m.x55 + m.x60 + m.x63 + m.x67
                        >= 672)

m.c8 = Constraint(expr=   m.x31 + m.x41 + m.x47 + m.x49 + m.x58 + m.x61 + m.x64 + m.x68 >= 1123)

m.c9 = Constraint(expr= - 100*m.i1 + m.x24 <= 0)

m.c10 = Constraint(expr= - 200*m.i2 + m.x25 <= 0)

m.c11 = Constraint(expr= - 600*m.i3 + m.x26 <= 0)

m.c12 = Constraint(expr= - 200*m.i4 + m.x27 <= 0)

m.c13 = Constraint(expr= - 600*m.i5 + m.x28 <= 0)

m.c14 = Constraint(expr= - 200*m.i6 + m.x29 <= 0)

m.c15 = Constraint(expr= - 600*m.i7 + m.x30 <= 0)

m.c16 = Constraint(expr= - 600*m.i8 + m.x31 <= 0)

m.c17 = Constraint(expr= - 200*m.i9 + m.x32 + m.x33 <= 0)

m.c18 = Constraint(expr= - 600*m.i10 + m.x34 + m.x35 <= 0)

m.c19 = Constraint(expr= - 200*m.i11 + m.x36 + m.x37 <= 0)

m.c20 = Constraint(expr= - 600*m.i12 + m.x38 + m.x39 <= 0)

m.c21 = Constraint(expr= - 600*m.i13 + m.x40 + m.x41 <= 0)

m.c22 = Constraint(expr= - 200*m.i14 + m.x42 + m.x43 <= 0)

m.c23 = Constraint(expr= - 600*m.i15 + m.x44 + m.x45 <= 0)

m.c24 = Constraint(expr= - 600*m.i16 + m.x46 + m.x47 <= 0)

m.c25 = Constraint(expr= - 600*m.i17 + m.x48 + m.x49 <= 0)

m.c26 = Constraint(expr= - 200*m.i18 + m.x50 + m.x51 + m.x52 <= 0)

m.c27 = Constraint(expr= - 600*m.i19 + m.x53 + m.x54 + m.x55 <= 0)

m.c28 = Constraint(expr= - 600*m.i20 + m.x56 + m.x57 + m.x58 <= 0)

m.c29 = Constraint(expr= - 600*m.i21 + m.x59 + m.x60 + m.x61 <= 0)

m.c30 = Constraint(expr= - 600*m.i22 + m.x62 + m.x63 + m.x64 <= 0)

m.c31 = Constraint(expr= - 600*m.i23 + m.x65 + m.x66 + m.x67 + m.x68 <= 0)

m.c32 = Constraint(expr=   m.i1 <= 2)

m.c33 = Constraint(expr=   m.i2 + m.i4 + m.i6 + m.i9 + m.i11 + m.i14 + m.i18 <= 3)

m.c34 = Constraint(expr=   m.i3 + m.i5 + m.i7 + m.i8 + m.i10 + m.i12 + m.i13 + m.i15 + m.i16 + m.i17 + m.i19 + m.i20
                         + m.i21 + m.i22 + m.i23 <= 4)
