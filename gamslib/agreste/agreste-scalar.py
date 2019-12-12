#  LP written by GAMS Convert at 12/13/18 10:24:46
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         52       27        9       16        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        101      101        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        645      645        0        0
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
m.x12 = Var(within=Reals,bounds=(0,0.036),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,0.298),initialize=0)
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
m.x27 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x51 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x60 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x61 = Var(within=Reals,bounds=(0,70.5),initialize=0)
m.x62 = Var(within=Reals,bounds=(0,70.5),initialize=0)
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
m.x76 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x98 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   934*m.x39 + 934*m.x40 + 934*m.x41 - m.x76 + m.x98 - m.x99 - m.x100 - m.x101, sense=maximize)

m.c1 = Constraint(expr=   m.x3 + m.x5 + m.x7 + m.x8 + m.x10 + m.x12 + m.x14 + m.x20 + m.x22 + m.x28 <= 8.775)

m.c2 = Constraint(expr=   m.x4 + m.x6 + m.x9 + m.x11 + m.x13 + m.x15 + m.x21 + m.x23 + 1.407*m.x24 + 0.611*m.x25
                        + 0.631*m.x26 - m.x28 + m.x29 <= 11.64)

m.c3 = Constraint(expr=   0.209*m.x24 + 2.03*m.x25 + 0.9*m.x26 - m.x29 <= 21.92)

m.c4 = Constraint(expr= - m.x24 - m.x25 - m.x26 + m.x27 == 0)

m.c5 = Constraint(expr= - 5.141*m.x24 - 21.646*m.x25 - 49.845*m.x26 + m.x76 == 0)

m.c6 = Constraint(expr=   0.848*m.x1 + 0.569*m.x2 + 0.269*m.x16 + 0.149*m.x17 + 0.403*m.x18 + 0.133*m.x19 - m.x42 >= 0)

m.c7 = Constraint(expr=   0.221*m.x3 + 0.174*m.x4 - m.x43 >= 0)

m.c8 = Constraint(expr=   0.045*m.x5 + 0.03*m.x6 - m.x44 >= 0)

m.c9 = Constraint(expr=   0.285*m.x16 + 0.221*m.x17 + 0.274*m.x20 + 0.26*m.x21 + 0.288*m.x22 + 0.287*m.x23 - 0.225*m.x39
                        - 0.152*m.x40 - 0.15*m.x41 - m.x45 >= 0)

m.c10 = Constraint(expr=   0.251*m.x14 + 0.211*m.x15 + 0.115*m.x18 + 0.352*m.x19 - m.x46 >= 0)

m.c11 = Constraint(expr=   0.092*m.x7 - m.x47 >= 0)

m.c12 = Constraint(expr=   4.456*m.x8 + 3.964*m.x9 + 3.408*m.x22 + 1.031*m.x23 - 0.965*m.x39 - 2.64*m.x40 - 0.935*m.x41
                         - m.x48 >= 0)

m.c13 = Constraint(expr=   0.725*m.x10 + 0.563*m.x11 + 0.373*m.x14 + 0.264*m.x15 + 0.536*m.x16 + 0.544*m.x17
                         + 0.361*m.x18 + 0.212*m.x19 + 0.594*m.x20 + 0.442*m.x21 + 0.503*m.x22 + 0.328*m.x23
                         - 0.235*m.x39 - 0.232*m.x40 - 0.581*m.x41 - m.x49 >= 0)

m.c14 = Constraint(expr=   2.244*m.x12 + 1.666*m.x13 - m.x50 >= 0)

m.c15 = Constraint(expr= - 0.848*m.x1 - 0.569*m.x2 - 0.269*m.x16 - 0.149*m.x17 - 0.403*m.x18 - 0.133*m.x19 + m.x30 == 0)

m.c16 = Constraint(expr= - 0.221*m.x3 - 0.174*m.x4 + m.x31 == 0)

m.c17 = Constraint(expr= - 0.045*m.x5 - 0.03*m.x6 + m.x32 == 0)

m.c18 = Constraint(expr= - 0.285*m.x16 - 0.221*m.x17 - 0.274*m.x20 - 0.26*m.x21 - 0.288*m.x22 - 0.287*m.x23 + m.x33
                         == 0)

m.c19 = Constraint(expr= - 0.251*m.x14 - 0.211*m.x15 - 0.115*m.x18 - 0.352*m.x19 + m.x34 == 0)

m.c20 = Constraint(expr= - 0.092*m.x7 + m.x35 == 0)

m.c21 = Constraint(expr= - 4.456*m.x8 - 3.964*m.x9 - 3.408*m.x22 - 1.031*m.x23 + m.x36 == 0)

m.c22 = Constraint(expr= - 0.725*m.x10 - 0.563*m.x11 - 0.373*m.x14 - 0.264*m.x15 - 0.536*m.x16 - 0.544*m.x17
                         - 0.361*m.x18 - 0.212*m.x19 - 0.594*m.x20 - 0.442*m.x21 - 0.503*m.x22 - 0.328*m.x23 + m.x37
                         == 0)

m.c23 = Constraint(expr= - 2.244*m.x12 - 1.666*m.x13 + m.x38 == 0)

m.c24 = Constraint(expr=   m.x39 + m.x40 + m.x41 == 1)

m.c25 = Constraint(expr=   4.79*m.x1 + 4.79*m.x2 + 8.24*m.x3 + 8.24*m.x4 + 5.78*m.x5 + 5.78*m.x6 + 2*m.x7 + 5.71*m.x8
                         + 5.71*m.x9 + 9.19*m.x10 + 9.19*m.x11 + 1.22*m.x12 + 1.22*m.x13 + 12.46*m.x14 + 12.46*m.x15
                         + 5.54*m.x16 + 5.54*m.x17 + 9.18*m.x18 + 9.18*m.x19 + 6.87*m.x20 + 6.87*m.x21 + 7.44*m.x22
                         + 7.44*m.x23 + 4.261*m.x24 + 1.873*m.x25 + 1.933*m.x26 - m.x51 - m.x63 - 25*m.x75 <= 0)

m.c26 = Constraint(expr=   10.89*m.x1 + 10.89*m.x2 + 0.89*m.x3 + 0.89*m.x4 + 3.37*m.x5 + 3.37*m.x6 + 2.36*m.x7
                         + 7.6*m.x8 + 7.6*m.x9 + 14.42*m.x10 + 14.42*m.x11 + 1.11*m.x12 + 1.11*m.x13 + 11.35*m.x14
                         + 11.35*m.x15 + 10.3*m.x16 + 10.3*m.x17 + 3.94*m.x18 + 3.94*m.x19 + 10.19*m.x20 + 10.19*m.x21
                         + 10.21*m.x22 + 10.21*m.x23 + 2.854*m.x24 + 1.262*m.x25 + 1.302*m.x26 - m.x52 - m.x64
                         - 25*m.x75 <= 0)

m.c27 = Constraint(expr=   18.7*m.x1 + 18.7*m.x2 + 5.43*m.x3 + 5.43*m.x4 + 4.03*m.x5 + 4.03*m.x6 + 4.13*m.x7 + 7.28*m.x8
                         + 7.28*m.x9 + 10.59*m.x10 + 10.59*m.x11 + 0.56*m.x12 + 0.56*m.x13 + 24.38*m.x14 + 24.38*m.x15
                         + 9.24*m.x16 + 9.24*m.x17 + 16.15*m.x18 + 16.15*m.x19 + 10.61*m.x20 + 10.61*m.x21 + 9.63*m.x22
                         + 9.63*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x53 - m.x65 - 25*m.x75 <= 0)

m.c28 = Constraint(expr=   9.83*m.x1 + 9.83*m.x2 + 3.31*m.x3 + 3.31*m.x4 + 7.09*m.x5 + 7.09*m.x6 + 2.13*m.x7 + 8.15*m.x8
                         + 8.15*m.x9 + 12.01*m.x10 + 12.01*m.x11 + 0.78*m.x12 + 0.78*m.x13 + 22.03*m.x14 + 22.03*m.x15
                         + 8.97*m.x16 + 8.97*m.x17 + 23.69*m.x18 + 23.69*m.x19 + 9.14*m.x20 + 9.14*m.x21 + 16.18*m.x22
                         + 16.18*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x54 - m.x66 - 25*m.x75 <= 0)

m.c29 = Constraint(expr=   8.03*m.x1 + 8.03*m.x2 + 11.13*m.x3 + 11.13*m.x4 + 4.64*m.x5 + 4.64*m.x6 + 7.18*m.x7
                         + 8.48*m.x8 + 8.48*m.x9 + 3.47*m.x10 + 3.47*m.x11 + 1.19*m.x12 + 1.19*m.x13 + 16.91*m.x14
                         + 16.91*m.x15 + 15.82*m.x16 + 15.82*m.x17 + 28.12*m.x18 + 28.12*m.x19 + 18.38*m.x20
                         + 18.38*m.x21 + 20.11*m.x22 + 20.11*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x55
                         - m.x67 - 25*m.x75 <= 0)

m.c30 = Constraint(expr=   20.95*m.x1 + 20.95*m.x2 + 10.33*m.x3 + 10.33*m.x4 + 5.91*m.x5 + 5.91*m.x6 + 5.88*m.x7
                         + 10.71*m.x8 + 10.71*m.x9 + 10.75*m.x10 + 10.75*m.x11 + 0.44*m.x12 + 0.44*m.x13 + 9.47*m.x14
                         + 9.47*m.x15 + 13*m.x16 + 13*m.x17 + 20.58*m.x18 + 20.58*m.x19 + 11.5*m.x20 + 11.5*m.x21
                         + 16.86*m.x22 + 16.86*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x56 - m.x68 - 25*m.x75
                         <= 0)

m.c31 = Constraint(expr=   15.67*m.x1 + 15.67*m.x2 + 3.27*m.x3 + 3.27*m.x4 + 7.67*m.x5 + 7.67*m.x6 + 3.21*m.x7
                         + 9.34*m.x8 + 9.34*m.x9 + 5.88*m.x10 + 5.88*m.x11 + 1.89*m.x12 + 1.89*m.x13 + 10.97*m.x14
                         + 10.97*m.x15 + 14.74*m.x16 + 14.74*m.x17 + 17.73*m.x18 + 17.73*m.x19 + 9.22*m.x20 + 9.22*m.x21
                         + 14.86*m.x22 + 14.86*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x57 - m.x69 - 25*m.x75
                         <= 0)

m.c32 = Constraint(expr=   15.48*m.x1 + 15.48*m.x2 + 2.65*m.x3 + 2.65*m.x4 + 9.23*m.x5 + 9.23*m.x6 + 9.2*m.x7
                         + 12.76*m.x8 + 12.76*m.x9 + 7.3*m.x10 + 7.3*m.x11 + 3.04*m.x12 + 3.04*m.x13 + 9.7*m.x14
                         + 9.7*m.x15 + 10.64*m.x16 + 10.64*m.x17 + 15.06*m.x18 + 15.06*m.x19 + 13.36*m.x20 + 13.36*m.x21
                         + 14*m.x22 + 14*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x58 - m.x70 - 25*m.x75 <= 0)

m.c33 = Constraint(expr=   11.35*m.x1 + 11.35*m.x2 + 5.47*m.x3 + 5.47*m.x4 + 5.93*m.x5 + 5.93*m.x6 + 6.89*m.x7
                         + 8.93*m.x8 + 8.93*m.x9 + 4.14*m.x10 + 4.14*m.x11 + 2.93*m.x12 + 2.93*m.x13 + 4.93*m.x14
                         + 4.93*m.x15 + 5.64*m.x16 + 5.64*m.x17 + 4.58*m.x18 + 4.58*m.x19 + 3.85*m.x20 + 3.85*m.x21
                         + 8.04*m.x22 + 8.04*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x59 - m.x71 - 25*m.x75
                         <= 0)

m.c34 = Constraint(expr=   8.38*m.x1 + 8.38*m.x2 + 3.67*m.x3 + 3.67*m.x4 + 9.05*m.x5 + 9.05*m.x6 + 3.3*m.x7 + 10.22*m.x8
                         + 10.22*m.x9 + 4.25*m.x10 + 4.25*m.x11 + 4.99*m.x12 + 4.99*m.x13 + 6.41*m.x14 + 6.41*m.x15
                         + 4.9*m.x16 + 4.9*m.x17 + 9.76*m.x18 + 9.76*m.x19 + 3.87*m.x20 + 3.87*m.x21 + 6.69*m.x22
                         + 6.69*m.x23 + 0.04*m.x24 + 0.04*m.x25 + 0.04*m.x26 - m.x60 - m.x72 - 25*m.x75 <= 0)

m.c35 = Constraint(expr=   8.23*m.x1 + 8.23*m.x2 + 3.18*m.x3 + 3.18*m.x4 + 7.59*m.x5 + 7.59*m.x6 + 9.7*m.x7 + 6.18*m.x8
                         + 6.18*m.x9 + 3.49*m.x10 + 3.49*m.x11 + 7.73*m.x12 + 7.73*m.x13 + 0.53*m.x14 + 0.53*m.x15
                         + 4.73*m.x16 + 4.73*m.x17 + 7.39*m.x18 + 7.39*m.x19 + 2.65*m.x20 + 2.65*m.x21 + 5.49*m.x22
                         + 5.49*m.x23 + 7.075*m.x24 + 3.095*m.x25 + 3.195*m.x26 - m.x61 - m.x73 - 25*m.x75 <= 0)

m.c36 = Constraint(expr=   4.54*m.x1 + 4.54*m.x2 + 1.44*m.x3 + 1.44*m.x4 + 6.37*m.x5 + 6.37*m.x6 + 8.87*m.x7 + 8.34*m.x8
                         + 8.34*m.x9 + 2.11*m.x10 + 2.11*m.x11 + 9.44*m.x12 + 9.44*m.x13 + 0.89*m.x14 + 0.89*m.x15
                         + 4.92*m.x16 + 4.92*m.x17 + 2.67*m.x18 + 2.67*m.x19 + 1.09*m.x20 + 1.09*m.x21 + 5.26*m.x22
                         + 5.26*m.x23 + 7.075*m.x24 + 3.095*m.x25 + 3.195*m.x26 - m.x62 - m.x74 - 25*m.x75 <= 0)

m.c37 = Constraint(expr= - 602.060322854716*m.x43 - 4703.49984422058*m.x44 - 215.898400752587*m.x46
                         - 62.2127194392644*m.x48 - 34.3822170900693*m.x49 - m.x77 + m.x87 == 0)

m.c38 = Constraint(expr=   350.573491928632*m.x43 - 487.070308443245*m.x44 - 124.1768579492*m.x46
                         - 1.32274451803741*m.x48 + 13.6836027713626*m.x49 - m.x78 + m.x88 == 0)

m.c39 = Constraint(expr=   893.266779949023*m.x43 - 505.244573683664*m.x44 + 1065.85136406397*m.x46
                         + 120.56652305318*m.x48 + 85.5658198614319*m.x49 - m.x79 + m.x89 == 0)

m.c40 = Constraint(expr=   556.60577740017*m.x43 + 5528.61148613563*m.x44 + 31.0442144873003*m.x46
                         + 9.17175744325124*m.x48 - 7.53464203233256*m.x49 - m.x80 + m.x90 == 0)

m.c41 = Constraint(expr=   241.716227697536*m.x43 + 6164.71076955032*m.x44 - 394.637817497648*m.x46
                         - 44.7218828371166*m.x48 - 11.4318706697459*m.x49 - m.x81 + m.x91 == 0)

m.c42 = Constraint(expr= - 161.852166525064*m.x43 + 2566.20625194724*m.x44 - 39.5108184383818*m.x46
                         - 19.1415343064755*m.x48 + 1.99191685912241*m.x49 - m.x82 + m.x92 == 0)

m.c43 = Constraint(expr= - 854.82158028887*m.x43 - 7756.77640461107*m.x44 - 77.140169332079*m.x46
                         - 21.6558420680342*m.x48 - 15.7621247113164*m.x49 - m.x83 + m.x93 == 0)

m.c44 = Constraint(expr= - 422.047578589635*m.x43 - 414.373247481566*m.x44 - 281.749764816557*m.x46
                         + 16.0587743553469*m.x48 - 10.5658198614319*m.x49 - m.x84 + m.x94 == 0)

m.c45 = Constraint(expr= - 165.569243840272*m.x43 - 450.721777962404*m.x44 - 279.397930385701*m.x46
                         + 0.535656870940797*m.x48 - 22.6905311778291*m.x49 - m.x85 + m.x95 == 0)

m.c46 = Constraint(expr=   164.188615123194*m.x43 + 58.1576487693447*m.x44 + 315.616180620884*m.x46
                         + 2.72201144620925*m.x48 + 1.12586605080831*m.x49 - m.x86 + m.x96 == 0)

m.c48 = Constraint(expr= - 211*m.x27 - 1900*m.x42 - 4000*m.x43 - 35000*m.x44 - 2500*m.x45 - 1500*m.x46 - 10000*m.x47
                         - 170*m.x48 - 150*m.x49 - 1000*m.x50 + m.x98 == 0)

m.c49 = Constraint(expr= - 122*m.x1 - 122*m.x2 - 45*m.x3 - 45*m.x4 - 36*m.x5 - 36*m.x6 - 291*m.x7 - 20*m.x8 - 20*m.x9
                         - 97*m.x10 - 97*m.x11 - 45*m.x16 - 45*m.x17 - 27*m.x18 - 27*m.x19 - 53*m.x20 - 53*m.x21
                         - 105*m.x22 - 105*m.x23 + m.x99 == 0)

m.c50 = Constraint(expr= - 3*m.x51 - 3*m.x52 - 3*m.x53 - 3*m.x54 - 3*m.x55 - 3*m.x56 - 3*m.x57 - 3*m.x58 - 3*m.x59
                         - 3*m.x60 - 3*m.x61 - 3*m.x62 - 10*m.x63 - 10*m.x64 - 10*m.x65 - 10*m.x66 - 10*m.x67 - 10*m.x68
                         - 10*m.x69 - 10*m.x70 - 10*m.x71 - 10*m.x72 - 10*m.x73 - 10*m.x74 - 2054*m.x75 + m.x100 == 0)

m.c51 = Constraint(expr=   10*m.x63 + 10*m.x64 + 10*m.x65 + 10*m.x66 + 10*m.x67 + 10*m.x68 + 10*m.x69 + 10*m.x70
                         + 10*m.x71 + 10*m.x72 + 10*m.x73 + 10*m.x74 + 2054*m.x75 + m.x76 + m.x99 + m.x101 <= 7123.2)

m.c52 = Constraint(expr= - m.x27 + m.x101 == 0)
