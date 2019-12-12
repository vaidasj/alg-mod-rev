#  QCP written by GAMS Convert at 12/13/18 11:23:26
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         47       19        2       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         60       60        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        245      239        6        0
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
m.x8 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,25000),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,25000),initialize=0)
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

m.obj = Objective(expr=225*m.x48 - 0.0231481481481481*m.x48**2 + 700*m.x49 - 0.277777777777778*m.x49**2 + 250*m.x50 - 
                       0.0892857142857143*m.x50**2 + 700*m.x51 - 0.0833333333333333*m.x51**2 + 210*m.x52 - 
                       0.0184210526315789*m.x52**2 + 220*m.x53 - 0.1*m.x53**2 - m.x12 + 40*m.x54 + 300*m.x55 + 60*m.x56
                        - 140*m.x57 - 270*m.x58 - 85*m.x59, sense=maximize)

m.c1 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 4000)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 4000)

m.c3 = Constraint(expr=   m.x1 + 0.5*m.x2 + m.x3 + m.x4 + 0.5*m.x5 <= 4000)

m.c4 = Constraint(expr=   m.x1 + m.x3 + m.x4 + m.x5 <= 4000)

m.c5 = Constraint(expr=   m.x1 + 0.25*m.x4 + m.x5 + 0.25*m.x6 <= 4000)

m.c6 = Constraint(expr=   m.x5 + m.x6 <= 4000)

m.c7 = Constraint(expr=   m.x5 + m.x6 + 0.75*m.x7 <= 4000)

m.c8 = Constraint(expr=   m.x5 + m.x6 + m.x7 <= 4000)

m.c9 = Constraint(expr=   m.x5 + m.x6 + m.x7 <= 4000)

m.c10 = Constraint(expr=   m.x5 + 0.5*m.x6 + m.x7 <= 4000)

m.c11 = Constraint(expr=   0.5*m.x1 + 0.25*m.x2 + 0.25*m.x3 + 0.5*m.x4 + 0.75*m.x5 + 0.75*m.x7 <= 4000)

m.c12 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 4000)

m.c13 = Constraint(expr=   1.72*m.x1 + 4.5*m.x2 + 0.75*m.x3 + 5.16*m.x4 - m.x13 - m.x25 + 2*m.x37 + 2*m.x38 <= 0)

m.c14 = Constraint(expr=   0.5*m.x1 + m.x2 + 0.75*m.x3 + 5*m.x4 - m.x14 - m.x26 + 2*m.x37 + 2*m.x38 <= 0)

m.c15 = Constraint(expr=   m.x1 + 8*m.x2 + 0.75*m.x3 + 5*m.x4 + 5*m.x5 - m.x15 - m.x27 + 2*m.x37 + 2*m.x38 <= 0)

m.c16 = Constraint(expr=   m.x1 + 16*m.x3 + 19.58*m.x4 + 5*m.x5 - m.x16 - m.x28 + 2*m.x37 + 2*m.x38 <= 0)

m.c17 = Constraint(expr=   17.16*m.x1 + 2.42*m.x4 + 9*m.x5 + 4.3*m.x6 - m.x17 - m.x29 + 2*m.x37 + 2*m.x38 <= 0)

m.c18 = Constraint(expr=   2.34*m.x1 + 2*m.x5 + 5.04*m.x6 - m.x18 - m.x30 + 2*m.x37 + 2*m.x38 <= 0)

m.c19 = Constraint(expr=   1.5*m.x5 + 7.16*m.x6 + 17*m.x7 - m.x19 - m.x31 + 2*m.x37 + 2*m.x38 <= 0)

m.c20 = Constraint(expr=   2*m.x5 + 7.97*m.x6 + 15*m.x7 - m.x20 - m.x32 + 2*m.x37 + 2*m.x38 <= 0)

m.c21 = Constraint(expr=   m.x5 + 4.41*m.x6 + 12*m.x7 - m.x21 - m.x33 + 2*m.x37 + 2*m.x38 <= 0)

m.c22 = Constraint(expr=   26*m.x5 + 1.12*m.x6 + 7*m.x7 - m.x22 - m.x34 + 2*m.x37 + 2*m.x38 <= 0)

m.c23 = Constraint(expr=   2.43*m.x1 + 2.5*m.x2 + 7.5*m.x3 + 11.16*m.x4 + 12*m.x5 + 6*m.x7 - m.x23 - m.x35 + 2*m.x37
                         + 2*m.x38 <= 0)

m.c24 = Constraint(expr=   1.35*m.x1 + 7.5*m.x2 + 0.75*m.x3 + 4.68*m.x4 - m.x24 - m.x36 + 2*m.x37 + 2*m.x38 <= 0)

m.c25 = Constraint(expr=   m.x5 + m.x6 + m.x7 - 2*m.x37 - 2*m.x38 - m.x46 <= 0)

m.c26 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 - 2*m.x37 - 2*m.x38 - m.x47 <= 0)

m.c27 = Constraint(expr=   m.x11 - 3*m.x13 - 3*m.x14 - 3*m.x15 - 3*m.x16 - 3*m.x17 - 3*m.x18 - 3*m.x19 - 3*m.x20
                         - 3*m.x21 - 3*m.x22 - 3*m.x23 - 3*m.x24 == 0)

m.c28 = Constraint(expr=   m.x10 - 4*m.x25 - 4*m.x26 - 4*m.x27 - 4*m.x28 - 4*m.x29 - 4*m.x30 - 4*m.x31 - 4*m.x32
                         - 4*m.x33 - 4*m.x34 - 4*m.x35 - 4*m.x36 == 0)

m.c29 = Constraint(expr= - m.x8 - m.x9 - m.x10 - m.x11 + m.x12 == 0)

m.c30 = Constraint(expr= - m.x39 + m.x48 - m.x57 == 0)

m.c31 = Constraint(expr= - m.x41 + m.x49 - m.x58 == 0)

m.c32 = Constraint(expr= - m.x42 + m.x50 + m.x54 == 0)

m.c33 = Constraint(expr= - m.x43 + m.x51 + m.x55 == 0)

m.c34 = Constraint(expr= - m.x44 + m.x52 - m.x59 == 0)

m.c35 = Constraint(expr= - m.x45 + m.x53 + m.x56 == 0)

m.c36 = Constraint(expr= - 1.5*m.x1 + m.x39 == 0)

m.c37 = Constraint(expr= - 6*m.x2 + m.x40 == 0)

m.c38 = Constraint(expr= - m.x3 + m.x41 == 0)

m.c39 = Constraint(expr= - 3*m.x4 + m.x42 == 0)

m.c40 = Constraint(expr= - 1.5*m.x5 + m.x43 == 0)

m.c41 = Constraint(expr= - 2*m.x6 + m.x44 == 0)

m.c42 = Constraint(expr= - 3*m.x7 + m.x45 == 0)

m.c43 = Constraint(expr= - 10*m.x1 - 5*m.x3 - 50*m.x4 - 80*m.x5 - 5*m.x6 - 50*m.x7 + m.x8 == 0)

m.c44 = Constraint(expr=   m.x9 - 40*m.x46 - 40*m.x47 == 0)

m.c45 = Constraint(expr=   6*m.x2 - 1.3*m.x37 - 2*m.x38 >= 0)

m.c46 = Constraint(expr=   1.75*m.x1 - 1.6*m.x37 - 0.8*m.x38 >= 0)
