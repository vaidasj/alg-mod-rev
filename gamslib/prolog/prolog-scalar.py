#  NLP written by GAMS Convert at 12/13/18 10:24:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23        1        0       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         21       21        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        129      103       26        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(0.2,None),initialize=0.5942)
m.x3 = Var(within=Reals,bounds=(0.2,None),initialize=1.6167)
m.x4 = Var(within=Reals,bounds=(0.2,None),initialize=1.31077)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=352)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=430)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=222)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=292)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0.130670360422406)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0.130670360422406)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=500.14934)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=638.25084)

m.obj = Objective(expr=m.x5*m.x2 + m.x6*m.x2 + m.x7*m.x4 + m.x8*m.x4 - 3712*m.x9 - 5000*m.x10, sense=maximize)

m.c1 = Constraint(expr=   m.x5 + m.x6 - 0.94*m.x11 - 0.94*m.x12 - 0.94*m.x13 + 0.244*m.x17 + 0.244*m.x18 + 0.244*m.x19
                        <= 0)

m.c2 = Constraint(expr=   0.064*m.x11 + 0.064*m.x12 + 0.064*m.x13 - 0.58*m.x14 - 0.58*m.x15 - 0.58*m.x16 + 0.172*m.x17
                        + 0.172*m.x18 + 0.172*m.x19 <= 0)

m.c3 = Constraint(expr=   m.x7 + m.x8 + 0.048*m.x11 + 0.048*m.x12 + 0.048*m.x13 + 0.247*m.x14 + 0.247*m.x15
                        + 0.247*m.x16 - 0.916*m.x17 - 0.916*m.x18 - 0.916*m.x19 <= 0)

m.c4 = Constraint(expr=   m.x11 + 1.2*m.x12 + 0.8*m.x13 + 2*m.x14 + 1.8*m.x15 + 2.4*m.x16 + 3*m.x17 + 2.7*m.x18
                        + 3.2*m.x19 <= 3712)

m.c5 = Constraint(expr=   2*m.x11 + 1.8*m.x12 + 2.2*m.x13 + 3*m.x14 + 3.5*m.x15 + 2.3*m.x16 + 3*m.x17 + 3.2*m.x18
                        + 2.7*m.x19 <= 5000)

m.c6 = Constraint(expr=-1.86209632732148*m.x2**(-0.601754015877537)*m.x4**(-0.19999800801138)*m.x20**0.801752023888917
                        + m.x5 <= 0)

m.c7 = Constraint(expr=-7.12433327783374*m.x2**(-0.469809650019847)*m.x4**(-0.132728646338701)*m.x21**0.602538296358548
                        + m.x6 <= 0)

m.c8 = Constraint(expr=-0.198865817348442*m.x2**(-0.286251155604637)*m.x4**(-0.85624547843707)*m.x20**1.14249663404171
                        + m.x7 <= 0)

m.c9 = Constraint(expr=-0.087748933275084*m.x2**(-0.353935053865204)*m.x4**(-0.911395368487747)*m.x21**1.26533042235295
                        + m.x8 <= 0)

m.c10 = Constraint(expr=m.x5*m.x2 + m.x7*m.x4 - m.x20 <= 0)

m.c11 = Constraint(expr=m.x6*m.x2 + m.x8*m.x4 - m.x21 <= 0)

m.c12 = Constraint(expr= - 3340.8*m.x9 - 500*m.x10 + m.x20 <= 0)

m.c13 = Constraint(expr= - 371.2*m.x9 - 4500*m.x10 + m.x21 <= 0)

m.c14 = Constraint(expr=   0.94*m.x2 - 0.064*m.x3 - 0.048*m.x4 - m.x9 - 2*m.x10 <= 0)

m.c15 = Constraint(expr=   0.94*m.x2 - 0.064*m.x3 - 0.048*m.x4 - 1.2*m.x9 - 1.8*m.x10 <= 0)

m.c16 = Constraint(expr=   0.94*m.x2 - 0.064*m.x3 - 0.048*m.x4 - 0.8*m.x9 - 2.2*m.x10 <= 0)

m.c17 = Constraint(expr=   0.58*m.x3 - 0.247*m.x4 - 2*m.x9 - 3*m.x10 <= 0)

m.c18 = Constraint(expr=   0.58*m.x3 - 0.247*m.x4 - 1.8*m.x9 - 3.5*m.x10 <= 0)

m.c19 = Constraint(expr=   0.58*m.x3 - 0.247*m.x4 - 2.4*m.x9 - 2.3*m.x10 <= 0)

m.c20 = Constraint(expr= - 0.244*m.x2 - 0.172*m.x3 + 0.916*m.x4 - 3*m.x9 - 3*m.x10 <= 0)

m.c21 = Constraint(expr= - 0.244*m.x2 - 0.172*m.x3 + 0.916*m.x4 - 2.7*m.x9 - 3.2*m.x10 <= 0)

m.c22 = Constraint(expr= - 0.244*m.x2 - 0.172*m.x3 + 0.916*m.x4 - 3.2*m.x9 - 2.7*m.x10 <= 0)
