#  NLP written by GAMS Convert at 12/13/18 11:22:59
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         87       13       33       41        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         19       19        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        641       29      612        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x2 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x3 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x4 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x5 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x6 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x7 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x8 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x9 = Var(within=Reals,bounds=(0,15),initialize=0.1)
m.x10 = Var(within=Reals,bounds=(0,25),initialize=0.1)
m.x11 = Var(within=Reals,bounds=(0,10),initialize=0.1)
m.x12 = Var(within=Reals,bounds=(0,20),initialize=0.1)
m.x13 = Var(within=Reals,bounds=(0,15),initialize=0.1)
m.x14 = Var(within=Reals,bounds=(0,10),initialize=0.1)
m.x15 = Var(within=Reals,bounds=(0,20),initialize=0.1)
m.x16 = Var(within=Reals,bounds=(0,15),initialize=0.1)
m.x17 = Var(within=Reals,bounds=(0,15),initialize=0.1)
m.x18 = Var(within=Reals,bounds=(0,25),initialize=0.1)

m.obj = Objective(expr=15*m.x1*m.x9 + 15*m.x1*m.x10 + 15*m.x1*m.x11 + 15*m.x1*m.x12 + 15*m.x1*m.x13 + 7*m.x2*m.x9 + 7*
                       m.x2*m.x10 + 7*m.x2*m.x11 + 7*m.x2*m.x12 + 7*m.x2*m.x13 + 4*m.x3*m.x9 + 4*m.x3*m.x10 + 4*m.x3*
                       m.x11 + 4*m.x3*m.x12 + 4*m.x3*m.x13 + 5*m.x4*m.x9 + 5*m.x4*m.x10 + 5*m.x4*m.x11 + 5*m.x4*m.x12 + 
                       5*m.x4*m.x13 + 6*m.x5*m.x14 + 6*m.x5*m.x15 + 6*m.x5*m.x16 + 6*m.x5*m.x17 + 6*m.x5*m.x18 + 3*m.x6*
                       m.x14 + 3*m.x6*m.x15 + 3*m.x6*m.x16 + 3*m.x6*m.x17 + 3*m.x6*m.x18 + 5*m.x7*m.x14 + 5*m.x7*m.x15
                        + 5*m.x7*m.x16 + 5*m.x7*m.x17 + 5*m.x7*m.x18 + 5*m.x8*m.x14 + 5*m.x8*m.x15 + 5*m.x8*m.x16 + 5*
                       m.x8*m.x17 + 5*m.x8*m.x18 - 10*m.x9 - 25*m.x10 - 30*m.x11 - 6*m.x12 - 10*m.x13 - 10*m.x14 - 25*
                       m.x15 - 30*m.x16 - 6*m.x17 - 10*m.x18, sense=minimize)

m.c2 = Constraint(expr=m.x1*m.x9 + m.x1*m.x10 + m.x1*m.x11 + m.x1*m.x12 + m.x1*m.x13 >= 0)

m.c3 = Constraint(expr=m.x2*m.x9 + m.x2*m.x10 + m.x2*m.x11 + m.x2*m.x12 + m.x2*m.x13 >= 0)

m.c4 = Constraint(expr=m.x3*m.x9 + m.x3*m.x10 + m.x3*m.x11 + m.x3*m.x12 + m.x3*m.x13 >= 0)

m.c5 = Constraint(expr=m.x4*m.x9 + m.x4*m.x10 + m.x4*m.x11 + m.x4*m.x12 + m.x4*m.x13 >= 0)

m.c6 = Constraint(expr=m.x5*m.x14 + m.x5*m.x15 + m.x5*m.x16 + m.x5*m.x17 + m.x5*m.x18 >= 0)

m.c7 = Constraint(expr=m.x6*m.x14 + m.x6*m.x15 + m.x6*m.x16 + m.x6*m.x17 + m.x6*m.x18 >= 0)

m.c8 = Constraint(expr=m.x7*m.x14 + m.x7*m.x15 + m.x7*m.x16 + m.x7*m.x17 + m.x7*m.x18 >= 0)

m.c9 = Constraint(expr=m.x8*m.x14 + m.x8*m.x15 + m.x8*m.x16 + m.x8*m.x17 + m.x8*m.x18 >= 0)

m.c10 = Constraint(expr=m.x1*m.x9 + m.x1*m.x10 + m.x1*m.x11 + m.x1*m.x12 + m.x1*m.x13 <= 85)

m.c11 = Constraint(expr=m.x2*m.x9 + m.x2*m.x10 + m.x2*m.x11 + m.x2*m.x12 + m.x2*m.x13 <= 85)

m.c12 = Constraint(expr=m.x3*m.x9 + m.x3*m.x10 + m.x3*m.x11 + m.x3*m.x12 + m.x3*m.x13 <= 85)

m.c13 = Constraint(expr=m.x4*m.x9 + m.x4*m.x10 + m.x4*m.x11 + m.x4*m.x12 + m.x4*m.x13 <= 85)

m.c14 = Constraint(expr=m.x5*m.x14 + m.x5*m.x15 + m.x5*m.x16 + m.x5*m.x17 + m.x5*m.x18 <= 85)

m.c15 = Constraint(expr=m.x6*m.x14 + m.x6*m.x15 + m.x6*m.x16 + m.x6*m.x17 + m.x6*m.x18 <= 85)

m.c16 = Constraint(expr=m.x7*m.x14 + m.x7*m.x15 + m.x7*m.x16 + m.x7*m.x17 + m.x7*m.x18 <= 85)

m.c17 = Constraint(expr=m.x8*m.x14 + m.x8*m.x15 + m.x8*m.x16 + m.x8*m.x17 + m.x8*m.x18 <= 85)

m.c18 = Constraint(expr=m.x1*m.x9 + m.x1*m.x10 + m.x1*m.x11 + m.x1*m.x12 + m.x1*m.x13 - 85*m.x1 <= 0)

m.c19 = Constraint(expr=m.x2*m.x9 + m.x2*m.x10 + m.x2*m.x11 + m.x2*m.x12 + m.x2*m.x13 - 85*m.x2 <= 0)

m.c20 = Constraint(expr=m.x3*m.x9 + m.x3*m.x10 + m.x3*m.x11 + m.x3*m.x12 + m.x3*m.x13 - 85*m.x3 <= 0)

m.c21 = Constraint(expr=m.x4*m.x9 + m.x4*m.x10 + m.x4*m.x11 + m.x4*m.x12 + m.x4*m.x13 - 85*m.x4 <= 0)

m.c22 = Constraint(expr=m.x5*m.x14 + m.x5*m.x15 + m.x5*m.x16 + m.x5*m.x17 + m.x5*m.x18 - 85*m.x5 <= 0)

m.c23 = Constraint(expr=m.x6*m.x14 + m.x6*m.x15 + m.x6*m.x16 + m.x6*m.x17 + m.x6*m.x18 - 85*m.x6 <= 0)

m.c24 = Constraint(expr=m.x7*m.x14 + m.x7*m.x15 + m.x7*m.x16 + m.x7*m.x17 + m.x7*m.x18 - 85*m.x7 <= 0)

m.c25 = Constraint(expr=m.x8*m.x14 + m.x8*m.x15 + m.x8*m.x16 + m.x8*m.x17 + m.x8*m.x18 - 85*m.x8 <= 0)

m.c26 = Constraint(expr=   m.x9 + m.x14 >= 0)

m.c27 = Constraint(expr=   m.x10 + m.x15 >= 0)

m.c28 = Constraint(expr=   m.x11 + m.x16 >= 0)

m.c29 = Constraint(expr=   m.x12 + m.x17 >= 0)

m.c30 = Constraint(expr=   m.x13 + m.x18 >= 0)

m.c31 = Constraint(expr=   m.x9 + m.x14 <= 15)

m.c32 = Constraint(expr=   m.x10 + m.x15 <= 25)

m.c33 = Constraint(expr=   m.x11 + m.x16 <= 10)

m.c34 = Constraint(expr=   m.x12 + m.x17 <= 20)

m.c35 = Constraint(expr=   m.x13 + m.x18 <= 15)

m.c36 = Constraint(expr=0.5*m.x1*m.x9 + 1.4*m.x2*m.x9 + 1.2*m.x3*m.x9 + 1.5*m.x4*m.x9 + 1.6*m.x5*m.x14 + 1.2*m.x6*m.x14
                         + 1.5*m.x7*m.x14 + 1.4*m.x8*m.x14 >= 0)

m.c37 = Constraint(expr=1.9*m.x1*m.x9 + 1.8*m.x2*m.x9 + 1.9*m.x3*m.x9 + 1.2*m.x4*m.x9 + 1.8*m.x5*m.x14 + 1.1*m.x6*m.x14
                         + 1.5*m.x7*m.x14 + 1.6*m.x8*m.x14 >= 0)

m.c38 = Constraint(expr=1.3*m.x1*m.x9 + 1.7*m.x2*m.x9 + 1.4*m.x3*m.x9 + 1.7*m.x4*m.x9 + 1.6*m.x5*m.x14 + 1.4*m.x6*m.x14
                         + 1.5*m.x7*m.x14 + 1.2*m.x8*m.x14 >= 0)

m.c39 = Constraint(expr=m.x1*m.x9 + 1.6*m.x2*m.x9 + 1.4*m.x3*m.x9 + 1.3*m.x4*m.x9 + 2*m.x5*m.x14 + 2*m.x6*m.x14 + 1.5*
                        m.x7*m.x14 + 1.6*m.x8*m.x14 >= 0)

m.c40 = Constraint(expr=0.5*m.x1*m.x10 + 1.4*m.x2*m.x10 + 1.2*m.x3*m.x10 + 1.5*m.x4*m.x10 + 1.6*m.x5*m.x15 + 1.2*m.x6*
                        m.x15 + 1.5*m.x7*m.x15 + 1.4*m.x8*m.x15 >= 0)

m.c41 = Constraint(expr=1.9*m.x1*m.x10 + 1.8*m.x2*m.x10 + 1.9*m.x3*m.x10 + 1.2*m.x4*m.x10 + 1.8*m.x5*m.x15 + 1.1*m.x6*
                        m.x15 + 1.5*m.x7*m.x15 + 1.6*m.x8*m.x15 >= 0)

m.c42 = Constraint(expr=1.3*m.x1*m.x10 + 1.7*m.x2*m.x10 + 1.4*m.x3*m.x10 + 1.7*m.x4*m.x10 + 1.6*m.x5*m.x15 + 1.4*m.x6*
                        m.x15 + 1.5*m.x7*m.x15 + 1.2*m.x8*m.x15 >= 0)

m.c43 = Constraint(expr=m.x1*m.x10 + 1.6*m.x2*m.x10 + 1.4*m.x3*m.x10 + 1.3*m.x4*m.x10 + 2*m.x5*m.x15 + 2*m.x6*m.x15 + 
                        1.5*m.x7*m.x15 + 1.6*m.x8*m.x15 >= 0)

m.c44 = Constraint(expr=0.5*m.x1*m.x11 + 1.4*m.x2*m.x11 + 1.2*m.x3*m.x11 + 1.5*m.x4*m.x11 + 1.6*m.x5*m.x16 + 1.2*m.x6*
                        m.x16 + 1.5*m.x7*m.x16 + 1.4*m.x8*m.x16 >= 0)

m.c45 = Constraint(expr=1.9*m.x1*m.x11 + 1.8*m.x2*m.x11 + 1.9*m.x3*m.x11 + 1.2*m.x4*m.x11 + 1.8*m.x5*m.x16 + 1.1*m.x6*
                        m.x16 + 1.5*m.x7*m.x16 + 1.6*m.x8*m.x16 >= 0)

m.c46 = Constraint(expr=1.3*m.x1*m.x11 + 1.7*m.x2*m.x11 + 1.4*m.x3*m.x11 + 1.7*m.x4*m.x11 + 1.6*m.x5*m.x16 + 1.4*m.x6*
                        m.x16 + 1.5*m.x7*m.x16 + 1.2*m.x8*m.x16 >= 0)

m.c47 = Constraint(expr=m.x1*m.x11 + 1.6*m.x2*m.x11 + 1.4*m.x3*m.x11 + 1.3*m.x4*m.x11 + 2*m.x5*m.x16 + 2*m.x6*m.x16 + 
                        1.5*m.x7*m.x16 + 1.6*m.x8*m.x16 >= 0)

m.c48 = Constraint(expr=0.5*m.x1*m.x12 + 1.4*m.x2*m.x12 + 1.2*m.x3*m.x12 + 1.5*m.x4*m.x12 + 1.6*m.x5*m.x17 + 1.2*m.x6*
                        m.x17 + 1.5*m.x7*m.x17 + 1.4*m.x8*m.x17 >= 0)

m.c49 = Constraint(expr=1.9*m.x1*m.x12 + 1.8*m.x2*m.x12 + 1.9*m.x3*m.x12 + 1.2*m.x4*m.x12 + 1.8*m.x5*m.x17 + 1.1*m.x6*
                        m.x17 + 1.5*m.x7*m.x17 + 1.6*m.x8*m.x17 >= 0)

m.c50 = Constraint(expr=1.3*m.x1*m.x12 + 1.7*m.x2*m.x12 + 1.4*m.x3*m.x12 + 1.7*m.x4*m.x12 + 1.6*m.x5*m.x17 + 1.4*m.x6*
                        m.x17 + 1.5*m.x7*m.x17 + 1.2*m.x8*m.x17 >= 0)

m.c51 = Constraint(expr=m.x1*m.x12 + 1.6*m.x2*m.x12 + 1.4*m.x3*m.x12 + 1.3*m.x4*m.x12 + 2*m.x5*m.x17 + 2*m.x6*m.x17 + 
                        1.5*m.x7*m.x17 + 1.6*m.x8*m.x17 >= 0)

m.c52 = Constraint(expr=0.5*m.x1*m.x13 + 1.4*m.x2*m.x13 + 1.2*m.x3*m.x13 + 1.5*m.x4*m.x13 + 1.6*m.x5*m.x18 + 1.2*m.x6*
                        m.x18 + 1.5*m.x7*m.x18 + 1.4*m.x8*m.x18 >= 0)

m.c53 = Constraint(expr=1.9*m.x1*m.x13 + 1.8*m.x2*m.x13 + 1.9*m.x3*m.x13 + 1.2*m.x4*m.x13 + 1.8*m.x5*m.x18 + 1.1*m.x6*
                        m.x18 + 1.5*m.x7*m.x18 + 1.6*m.x8*m.x18 >= 0)

m.c54 = Constraint(expr=1.3*m.x1*m.x13 + 1.7*m.x2*m.x13 + 1.4*m.x3*m.x13 + 1.7*m.x4*m.x13 + 1.6*m.x5*m.x18 + 1.4*m.x6*
                        m.x18 + 1.5*m.x7*m.x18 + 1.2*m.x8*m.x18 >= 0)

m.c55 = Constraint(expr=m.x1*m.x13 + 1.6*m.x2*m.x13 + 1.4*m.x3*m.x13 + 1.3*m.x4*m.x13 + 2*m.x5*m.x18 + 2*m.x6*m.x18 + 
                        1.5*m.x7*m.x18 + 1.6*m.x8*m.x18 >= 0)

m.c56 = Constraint(expr=0.5*m.x1*m.x9 + 1.4*m.x2*m.x9 + 1.2*m.x3*m.x9 + 1.5*m.x4*m.x9 + 1.6*m.x5*m.x14 + 1.2*m.x6*m.x14
                         + 1.5*m.x7*m.x14 + 1.4*m.x8*m.x14 - 1.2*m.x9 - 1.2*m.x14 <= 0)

m.c57 = Constraint(expr=1.9*m.x1*m.x9 + 1.8*m.x2*m.x9 + 1.9*m.x3*m.x9 + 1.2*m.x4*m.x9 + 1.8*m.x5*m.x14 + 1.1*m.x6*m.x14
                         + 1.5*m.x7*m.x14 + 1.6*m.x8*m.x14 - 1.7*m.x9 - 1.7*m.x14 <= 0)

m.c58 = Constraint(expr=1.3*m.x1*m.x9 + 1.7*m.x2*m.x9 + 1.4*m.x3*m.x9 + 1.7*m.x4*m.x9 + 1.6*m.x5*m.x14 + 1.4*m.x6*m.x14
                         + 1.5*m.x7*m.x14 + 1.2*m.x8*m.x14 - 1.4*m.x9 - 1.4*m.x14 <= 0)

m.c59 = Constraint(expr=m.x1*m.x9 + 1.6*m.x2*m.x9 + 1.4*m.x3*m.x9 + 1.3*m.x4*m.x9 + 2*m.x5*m.x14 + 2*m.x6*m.x14 + 1.5*
                        m.x7*m.x14 + 1.6*m.x8*m.x14 - 1.7*m.x9 - 1.7*m.x14 <= 0)

m.c60 = Constraint(expr=0.5*m.x1*m.x10 + 1.4*m.x2*m.x10 + 1.2*m.x3*m.x10 + 1.5*m.x4*m.x10 + 1.6*m.x5*m.x15 + 1.2*m.x6*
                        m.x15 + 1.5*m.x7*m.x15 + 1.4*m.x8*m.x15 - 1.4*m.x10 - 1.4*m.x15 <= 0)

m.c61 = Constraint(expr=1.9*m.x1*m.x10 + 1.8*m.x2*m.x10 + 1.9*m.x3*m.x10 + 1.2*m.x4*m.x10 + 1.8*m.x5*m.x15 + 1.1*m.x6*
                        m.x15 + 1.5*m.x7*m.x15 + 1.6*m.x8*m.x15 - 1.3*m.x10 - 1.3*m.x15 <= 0)

m.c62 = Constraint(expr=1.3*m.x1*m.x10 + 1.7*m.x2*m.x10 + 1.4*m.x3*m.x10 + 1.7*m.x4*m.x10 + 1.6*m.x5*m.x15 + 1.4*m.x6*
                        m.x15 + 1.5*m.x7*m.x15 + 1.2*m.x8*m.x15 - 1.8*m.x10 - 1.8*m.x15 <= 0)

m.c63 = Constraint(expr=m.x1*m.x10 + 1.6*m.x2*m.x10 + 1.4*m.x3*m.x10 + 1.3*m.x4*m.x10 + 2*m.x5*m.x15 + 2*m.x6*m.x15 + 
                        1.5*m.x7*m.x15 + 1.6*m.x8*m.x15 - 1.4*m.x10 - 1.4*m.x15 <= 0)

m.c64 = Constraint(expr=0.5*m.x1*m.x11 + 1.4*m.x2*m.x11 + 1.2*m.x3*m.x11 + 1.5*m.x4*m.x11 + 1.6*m.x5*m.x16 + 1.2*m.x6*
                        m.x16 + 1.5*m.x7*m.x16 + 1.4*m.x8*m.x16 - 1.3*m.x11 - 1.3*m.x16 <= 0)

m.c65 = Constraint(expr=1.9*m.x1*m.x11 + 1.8*m.x2*m.x11 + 1.9*m.x3*m.x11 + 1.2*m.x4*m.x11 + 1.8*m.x5*m.x16 + 1.1*m.x6*
                        m.x16 + 1.5*m.x7*m.x16 + 1.6*m.x8*m.x16 - 1.3*m.x11 - 1.3*m.x16 <= 0)

m.c66 = Constraint(expr=1.3*m.x1*m.x11 + 1.7*m.x2*m.x11 + 1.4*m.x3*m.x11 + 1.7*m.x4*m.x11 + 1.6*m.x5*m.x16 + 1.4*m.x6*
                        m.x16 + 1.5*m.x7*m.x16 + 1.2*m.x8*m.x16 - 1.9*m.x11 - 1.9*m.x16 <= 0)

m.c67 = Constraint(expr=m.x1*m.x11 + 1.6*m.x2*m.x11 + 1.4*m.x3*m.x11 + 1.3*m.x4*m.x11 + 2*m.x5*m.x16 + 2*m.x6*m.x16 + 
                        1.5*m.x7*m.x16 + 1.6*m.x8*m.x16 - 1.9*m.x11 - 1.9*m.x16 <= 0)

m.c68 = Constraint(expr=0.5*m.x1*m.x12 + 1.4*m.x2*m.x12 + 1.2*m.x3*m.x12 + 1.5*m.x4*m.x12 + 1.6*m.x5*m.x17 + 1.2*m.x6*
                        m.x17 + 1.5*m.x7*m.x17 + 1.4*m.x8*m.x17 - 1.2*m.x12 - 1.2*m.x17 <= 0)

m.c69 = Constraint(expr=1.9*m.x1*m.x12 + 1.8*m.x2*m.x12 + 1.9*m.x3*m.x12 + 1.2*m.x4*m.x12 + 1.8*m.x5*m.x17 + 1.1*m.x6*
                        m.x17 + 1.5*m.x7*m.x17 + 1.6*m.x8*m.x17 - 1.1*m.x12 - 1.1*m.x17 <= 0)

m.c70 = Constraint(expr=1.3*m.x1*m.x12 + 1.7*m.x2*m.x12 + 1.4*m.x3*m.x12 + 1.7*m.x4*m.x12 + 1.6*m.x5*m.x17 + 1.4*m.x6*
                        m.x17 + 1.5*m.x7*m.x17 + 1.2*m.x8*m.x17 - 1.7*m.x12 - 1.7*m.x17 <= 0)

m.c71 = Constraint(expr=m.x1*m.x12 + 1.6*m.x2*m.x12 + 1.4*m.x3*m.x12 + 1.3*m.x4*m.x12 + 2*m.x5*m.x17 + 2*m.x6*m.x17 + 
                        1.5*m.x7*m.x17 + 1.6*m.x8*m.x17 - 1.6*m.x12 - 1.6*m.x17 <= 0)

m.c72 = Constraint(expr=0.5*m.x1*m.x13 + 1.4*m.x2*m.x13 + 1.2*m.x3*m.x13 + 1.5*m.x4*m.x13 + 1.6*m.x5*m.x18 + 1.2*m.x6*
                        m.x18 + 1.5*m.x7*m.x18 + 1.4*m.x8*m.x18 - 1.6*m.x13 - 1.6*m.x18 <= 0)

m.c73 = Constraint(expr=1.9*m.x1*m.x13 + 1.8*m.x2*m.x13 + 1.9*m.x3*m.x13 + 1.2*m.x4*m.x13 + 1.8*m.x5*m.x18 + 1.1*m.x6*
                        m.x18 + 1.5*m.x7*m.x18 + 1.6*m.x8*m.x18 - 1.9*m.x13 - 1.9*m.x18 <= 0)

m.c74 = Constraint(expr=1.3*m.x1*m.x13 + 1.7*m.x2*m.x13 + 1.4*m.x3*m.x13 + 1.7*m.x4*m.x13 + 1.6*m.x5*m.x18 + 1.4*m.x6*
                        m.x18 + 1.5*m.x7*m.x18 + 1.2*m.x8*m.x18 - 2*m.x13 - 2*m.x18 <= 0)

m.c75 = Constraint(expr=m.x1*m.x13 + 1.6*m.x2*m.x13 + 1.4*m.x3*m.x13 + 1.3*m.x4*m.x13 + 2*m.x5*m.x18 + 2*m.x6*m.x18 + 
                        1.5*m.x7*m.x18 + 1.6*m.x8*m.x18 - 2.5*m.x13 - 2.5*m.x18 <= 0)

m.c76 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 == 1)

m.c77 = Constraint(expr=   m.x5 + m.x6 + m.x7 + m.x8 == 1)

m.c78 = Constraint(expr=m.x1*m.x9 + m.x2*m.x9 + m.x3*m.x9 + m.x4*m.x9 - m.x9 == 0)

m.c79 = Constraint(expr=m.x1*m.x10 + m.x2*m.x10 + m.x3*m.x10 + m.x4*m.x10 - m.x10 == 0)

m.c80 = Constraint(expr=m.x1*m.x11 + m.x2*m.x11 + m.x3*m.x11 + m.x4*m.x11 - m.x11 == 0)

m.c81 = Constraint(expr=m.x1*m.x12 + m.x2*m.x12 + m.x3*m.x12 + m.x4*m.x12 - m.x12 == 0)

m.c82 = Constraint(expr=m.x1*m.x13 + m.x2*m.x13 + m.x3*m.x13 + m.x4*m.x13 - m.x13 == 0)

m.c83 = Constraint(expr=m.x5*m.x14 + m.x6*m.x14 + m.x7*m.x14 + m.x8*m.x14 - m.x14 == 0)

m.c84 = Constraint(expr=m.x5*m.x15 + m.x6*m.x15 + m.x7*m.x15 + m.x8*m.x15 - m.x15 == 0)

m.c85 = Constraint(expr=m.x5*m.x16 + m.x6*m.x16 + m.x7*m.x16 + m.x8*m.x16 - m.x16 == 0)

m.c86 = Constraint(expr=m.x5*m.x17 + m.x6*m.x17 + m.x7*m.x17 + m.x8*m.x17 - m.x17 == 0)

m.c87 = Constraint(expr=m.x5*m.x18 + m.x6*m.x18 + m.x7*m.x18 + m.x8*m.x18 - m.x18 == 0)
