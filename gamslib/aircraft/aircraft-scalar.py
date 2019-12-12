#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57       28        0       29        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         73       73        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        222      222        0        0
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

m.obj = Objective(expr=   m.x71 + m.x72, sense=minimize)

m.c1 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 + m.x5 <= 10)

m.c2 = Constraint(expr=   m.x6 + m.x7 + m.x8 + m.x9 + m.x10 <= 19)

m.c3 = Constraint(expr=   m.x11 + m.x12 + m.x13 + m.x14 + m.x15 <= 25)

m.c4 = Constraint(expr=   m.x16 + m.x17 + m.x18 + m.x19 + m.x20 <= 15)

m.c5 = Constraint(expr= - 16*m.x1 - 9*m.x16 + m.x21 <= 0)

m.c6 = Constraint(expr= - 16*m.x1 - 9*m.x16 + m.x22 <= 0)

m.c7 = Constraint(expr= - 16*m.x1 - 9*m.x16 + m.x23 <= 0)

m.c8 = Constraint(expr= - 16*m.x1 - 9*m.x16 + m.x24 <= 0)

m.c9 = Constraint(expr= - 16*m.x1 - 9*m.x16 + m.x25 <= 0)

m.c10 = Constraint(expr= - 15*m.x2 - 10*m.x7 - 5*m.x12 - 11*m.x17 + m.x26 <= 0)

m.c11 = Constraint(expr= - 15*m.x2 - 10*m.x7 - 5*m.x12 - 11*m.x17 + m.x27 <= 0)

m.c12 = Constraint(expr= - 15*m.x2 - 10*m.x7 - 5*m.x12 - 11*m.x17 + m.x28 <= 0)

m.c13 = Constraint(expr= - 15*m.x2 - 10*m.x7 - 5*m.x12 - 11*m.x17 + m.x29 <= 0)

m.c14 = Constraint(expr= - 15*m.x2 - 10*m.x7 - 5*m.x12 - 11*m.x17 + m.x30 <= 0)

m.c15 = Constraint(expr= - 28*m.x3 - 14*m.x8 - 22*m.x18 + m.x31 <= 0)

m.c16 = Constraint(expr= - 28*m.x3 - 14*m.x8 - 22*m.x18 + m.x32 <= 0)

m.c17 = Constraint(expr= - 28*m.x3 - 14*m.x8 - 22*m.x18 + m.x33 <= 0)

m.c18 = Constraint(expr= - 28*m.x3 - 14*m.x8 - 22*m.x18 + m.x34 <= 0)

m.c19 = Constraint(expr= - 28*m.x3 - 14*m.x8 - 22*m.x18 + m.x35 <= 0)

m.c20 = Constraint(expr= - 23*m.x4 - 15*m.x9 - 7*m.x14 - 17*m.x19 + m.x36 <= 0)

m.c21 = Constraint(expr= - 23*m.x4 - 15*m.x9 - 7*m.x14 - 17*m.x19 + m.x37 <= 0)

m.c22 = Constraint(expr= - 23*m.x4 - 15*m.x9 - 7*m.x14 - 17*m.x19 + m.x38 <= 0)

m.c23 = Constraint(expr= - 23*m.x4 - 15*m.x9 - 7*m.x14 - 17*m.x19 + m.x39 <= 0)

m.c24 = Constraint(expr= - 23*m.x4 - 15*m.x9 - 7*m.x14 - 17*m.x19 + m.x40 <= 0)

m.c25 = Constraint(expr= - 81*m.x5 - 57*m.x10 - 29*m.x15 - 55*m.x20 + m.x41 <= 0)

m.c26 = Constraint(expr= - 81*m.x5 - 57*m.x10 - 29*m.x15 - 55*m.x20 + m.x42 <= 0)

m.c27 = Constraint(expr= - 81*m.x5 - 57*m.x10 - 29*m.x15 - 55*m.x20 + m.x43 <= 0)

m.c28 = Constraint(expr= - 81*m.x5 - 57*m.x10 - 29*m.x15 - 55*m.x20 + m.x44 <= 0)

m.c29 = Constraint(expr= - 81*m.x5 - 57*m.x10 - 29*m.x15 - 55*m.x20 + m.x45 <= 0)

m.c30 = Constraint(expr=   m.x21 + m.x46 == 200)

m.c31 = Constraint(expr=   m.x22 + m.x47 == 220)

m.c32 = Constraint(expr=   m.x23 + m.x48 == 250)

m.c33 = Constraint(expr=   m.x24 + m.x49 == 270)

m.c34 = Constraint(expr=   m.x25 + m.x50 == 300)

m.c35 = Constraint(expr=   m.x26 + m.x51 == 50)

m.c36 = Constraint(expr=   m.x27 + m.x52 == 150)

m.c37 = Constraint(expr=   m.x28 + m.x53 == 0)

m.c38 = Constraint(expr=   m.x29 + m.x54 == 0)

m.c39 = Constraint(expr=   m.x30 + m.x55 == 0)

m.c40 = Constraint(expr=   m.x31 + m.x56 == 140)

m.c41 = Constraint(expr=   m.x32 + m.x57 == 160)

m.c42 = Constraint(expr=   m.x33 + m.x58 == 180)

m.c43 = Constraint(expr=   m.x34 + m.x59 == 200)

m.c44 = Constraint(expr=   m.x35 + m.x60 == 220)

m.c45 = Constraint(expr=   m.x36 + m.x61 == 10)

m.c46 = Constraint(expr=   m.x37 + m.x62 == 50)

m.c47 = Constraint(expr=   m.x38 + m.x63 == 80)

m.c48 = Constraint(expr=   m.x39 + m.x64 == 100)

m.c49 = Constraint(expr=   m.x40 + m.x65 == 340)

m.c50 = Constraint(expr=   m.x41 + m.x66 == 580)

m.c51 = Constraint(expr=   m.x42 + m.x67 == 600)

m.c52 = Constraint(expr=   m.x43 + m.x68 == 620)

m.c53 = Constraint(expr=   m.x44 + m.x69 == 0)

m.c54 = Constraint(expr=   m.x45 + m.x70 == 0)

m.c55 = Constraint(expr= - 18*m.x1 - 21*m.x2 - 18*m.x3 - 16*m.x4 - 10*m.x5 - 15*m.x7 - 16*m.x8 - 14*m.x9 - 9*m.x10
                         - 10*m.x12 - 9*m.x14 - 6*m.x15 - 17*m.x16 - 16*m.x17 - 17*m.x18 - 15*m.x19 - 10*m.x20 + m.x71
                         == 0)

m.c56 = Constraint(expr= - 2.6*m.x46 - 0.65*m.x47 - 4.55*m.x48 - 2.6*m.x49 - 2.6*m.x50 - 3.9*m.x51 - 9.1*m.x52
                         - 0.7*m.x56 - 1.4*m.x57 - 2.8*m.x58 - 1.4*m.x59 - 0.7*m.x60 - 1.4*m.x61 - 1.4*m.x62 - 2.1*m.x63
                         - 1.4*m.x64 - 0.7*m.x65 - 0.1*m.x66 - 0.8*m.x67 - 0.1*m.x68 + m.x72 == 0)
