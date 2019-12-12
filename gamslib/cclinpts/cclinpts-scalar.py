#  NLP written by GAMS Convert at 12/13/18 11:34:19
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       31        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         61       61        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        121       31       90        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(5,5),initialize=5)
m.x3 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x4 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x5 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x6 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x7 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x8 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x9 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x10 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x11 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x12 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x13 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x14 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x15 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x16 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x17 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x18 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x19 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x20 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x21 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x22 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x23 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x24 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x25 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x26 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x27 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x28 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x29 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x30 = Var(within=Reals,bounds=(5,100),initialize=5)
m.x31 = Var(within=Reals,bounds=(100,100),initialize=100)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=(m.x31 - m.x2)*m.x32 + (m.x31 - m.x3)*(m.x33 - m.x32) + (m.x31 - m.x4)*(m.x34 - m.x33) + (m.x31
                        - m.x5)*(m.x35 - m.x34) + (m.x31 - m.x6)*(m.x36 - m.x35) + (m.x31 - m.x7)*(m.x37 - m.x36) + (
                       m.x31 - m.x8)*(m.x38 - m.x37) + (m.x31 - m.x9)*(m.x39 - m.x38) + (m.x31 - m.x10)*(m.x40 - m.x39)
                        + (m.x31 - m.x11)*(m.x41 - m.x40) + (m.x31 - m.x12)*(m.x42 - m.x41) + (m.x31 - m.x13)*(m.x43 - 
                       m.x42) + (m.x31 - m.x14)*(m.x44 - m.x43) + (m.x31 - m.x15)*(m.x45 - m.x44) + (m.x31 - m.x16)*(
                       m.x46 - m.x45) + (m.x31 - m.x17)*(m.x47 - m.x46) + (m.x31 - m.x18)*(m.x48 - m.x47) + (m.x31 - 
                       m.x19)*(m.x49 - m.x48) + (m.x31 - m.x20)*(m.x50 - m.x49) + (m.x31 - m.x21)*(m.x51 - m.x50) + (
                       m.x31 - m.x22)*(m.x52 - m.x51) + (m.x31 - m.x23)*(m.x53 - m.x52) + (m.x31 - m.x24)*(m.x54 - m.x53
                       ) + (m.x31 - m.x25)*(m.x55 - m.x54) + (m.x31 - m.x26)*(m.x56 - m.x55) + (m.x31 - m.x27)*(m.x57 - 
                       m.x56) + (m.x31 - m.x28)*(m.x58 - m.x57) + (m.x31 - m.x29)*(m.x59 - m.x58) + (m.x31 - m.x30)*(
                       m.x60 - m.x59) + 0.5*((m.x3 - m.x2)*(m.x33 - m.x32) + (m.x4 - m.x3)*(m.x34 - m.x33) + (m.x5 - 
                       m.x4)*(m.x35 - m.x34) + (m.x6 - m.x5)*(m.x36 - m.x35) + (m.x7 - m.x6)*(m.x37 - m.x36) + (m.x8 - 
                       m.x7)*(m.x38 - m.x37) + (m.x9 - m.x8)*(m.x39 - m.x38) + (m.x10 - m.x9)*(m.x40 - m.x39) + (m.x11
                        - m.x10)*(m.x41 - m.x40) + (m.x12 - m.x11)*(m.x42 - m.x41) + (m.x13 - m.x12)*(m.x43 - m.x42) + (
                       m.x14 - m.x13)*(m.x44 - m.x43) + (m.x15 - m.x14)*(m.x45 - m.x44) + (m.x16 - m.x15)*(m.x46 - m.x45
                       ) + (m.x17 - m.x16)*(m.x47 - m.x46) + (m.x18 - m.x17)*(m.x48 - m.x47) + (m.x19 - m.x18)*(m.x49 - 
                       m.x48) + (m.x20 - m.x19)*(m.x50 - m.x49) + (m.x21 - m.x20)*(m.x51 - m.x50) + (m.x22 - m.x21)*(
                       m.x52 - m.x51) + (m.x23 - m.x22)*(m.x53 - m.x52) + (m.x24 - m.x23)*(m.x54 - m.x53) + (m.x25 - 
                       m.x24)*(m.x55 - m.x54) + (m.x26 - m.x25)*(m.x56 - m.x55) + (m.x27 - m.x26)*(m.x57 - m.x56) + (
                       m.x28 - m.x27)*(m.x58 - m.x57) + (m.x29 - m.x28)*(m.x59 - m.x58) + (m.x30 - m.x29)*(m.x60 - m.x59
                       ) + (m.x31 - m.x30)*(m.x61 - m.x60)), sense=maximize)

m.c2 = Constraint(expr=1/m.x2 + m.x32 == 0)

m.c3 = Constraint(expr=1/m.x3 + m.x33 == 0)

m.c4 = Constraint(expr=1/m.x4 + m.x34 == 0)

m.c5 = Constraint(expr=1/m.x5 + m.x35 == 0)

m.c6 = Constraint(expr=1/m.x6 + m.x36 == 0)

m.c7 = Constraint(expr=1/m.x7 + m.x37 == 0)

m.c8 = Constraint(expr=1/m.x8 + m.x38 == 0)

m.c9 = Constraint(expr=1/m.x9 + m.x39 == 0)

m.c10 = Constraint(expr=1/m.x10 + m.x40 == 0)

m.c11 = Constraint(expr=1/m.x11 + m.x41 == 0)

m.c12 = Constraint(expr=1/m.x12 + m.x42 == 0)

m.c13 = Constraint(expr=1/m.x13 + m.x43 == 0)

m.c14 = Constraint(expr=1/m.x14 + m.x44 == 0)

m.c15 = Constraint(expr=1/m.x15 + m.x45 == 0)

m.c16 = Constraint(expr=1/m.x16 + m.x46 == 0)

m.c17 = Constraint(expr=1/m.x17 + m.x47 == 0)

m.c18 = Constraint(expr=1/m.x18 + m.x48 == 0)

m.c19 = Constraint(expr=1/m.x19 + m.x49 == 0)

m.c20 = Constraint(expr=1/m.x20 + m.x50 == 0)

m.c21 = Constraint(expr=1/m.x21 + m.x51 == 0)

m.c22 = Constraint(expr=1/m.x22 + m.x52 == 0)

m.c23 = Constraint(expr=1/m.x23 + m.x53 == 0)

m.c24 = Constraint(expr=1/m.x24 + m.x54 == 0)

m.c25 = Constraint(expr=1/m.x25 + m.x55 == 0)

m.c26 = Constraint(expr=1/m.x26 + m.x56 == 0)

m.c27 = Constraint(expr=1/m.x27 + m.x57 == 0)

m.c28 = Constraint(expr=1/m.x28 + m.x58 == 0)

m.c29 = Constraint(expr=1/m.x29 + m.x59 == 0)

m.c30 = Constraint(expr=1/m.x30 + m.x60 == 0)

m.c31 = Constraint(expr=1/m.x31 + m.x61 == 0)
