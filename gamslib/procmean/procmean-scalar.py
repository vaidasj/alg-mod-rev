#  NLP written by GAMS Convert at 12/13/18 11:24:22
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        2        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          5        3        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0.0001,0.9999),initialize=0.5)

m.obj = Objective(expr=230*BetaReg(m.x3,2,4) - 2*(BetaReg(m.x3,2,4)*(113 + m.x2) + 2*BetaReg(m.x3,3,4)) + 3*((1 - 
                       BetaReg(m.x3,2,4))*(113 + m.x2) - 2*BetaReg(m.x3,3,4)) + 345*BetaReg(m.x3,2,4)
                        - 327, sense=minimize)

m.c2 = Constraint(expr=   0.166666666666667*m.x2 + m.x3 == 0.333333333333333)
