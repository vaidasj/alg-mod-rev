#  NLP written by GAMS Convert at 12/13/18 11:24:22
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          1        1        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          3        1        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.0001,None),initialize=0.406253228038076)
m.x2 = Var(within=Reals,bounds=(0.0001,None),initialize=0.702047665836708)

m.obj = Objective(expr=75*(LogGamma(m.x1 + m.x2) - LogGamma(m.x1) - LogGamma(m.x2)) - 149.384617555698*m.x1 - 
                       61.9950852353139*m.x2 + 211.379702791012, sense=maximize)
