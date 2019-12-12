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


m.x1 = Var(within=Reals,bounds=(0.001,None),initialize=0.001)
m.x2 = Var(within=Reals,bounds=(0.001,None),initialize=0.001)

m.obj = Objective(expr=29*(log(m.x1) - log(m.x2) - LogGamma(m.x1)) + log(90*m.x1/m.x2)*(-1 + m.x1) + log(10*m.x1/m.x2)*(
                       -1 + m.x1) + log(60*m.x1/m.x2)*(-1 + m.x1) + log(186*m.x1/m.x2)*(-1 + m.x1) + log(61*m.x1/m.x2)*(
                       -1 + m.x1) + log(49*m.x1/m.x2)*(-1 + m.x1) + log(14*m.x1/m.x2)*(-1 + m.x1) + log(24*m.x1/m.x2)*(-
                       1 + m.x1) + log(56*m.x1/m.x2)*(-1 + m.x1) + log(20*m.x1/m.x2)*(-1 + m.x1) + log(79*m.x1/m.x2)*(-1
                        + m.x1) + log(84*m.x1/m.x2)*(-1 + m.x1) + log(44*m.x1/m.x2)*(-1 + m.x1) + log(59*m.x1/m.x2)*(-1
                        + m.x1) + log(29*m.x1/m.x2)*(-1 + m.x1) + log(118*m.x1/m.x2)*(-1 + m.x1) + log(25*m.x1/m.x2)*(-1
                        + m.x1) + log(156*m.x1/m.x2)*(-1 + m.x1) + log(310*m.x1/m.x2)*(-1 + m.x1) + log(76*m.x1/m.x2)*(-
                       1 + m.x1) + log(26*m.x1/m.x2)*(-1 + m.x1) + log(44*m.x1/m.x2)*(-1 + m.x1) + log(23*m.x1/m.x2)*(-1
                        + m.x1) + log(62*m.x1/m.x2)*(-1 + m.x1) + log(130*m.x1/m.x2)*(-1 + m.x1) + log(208*m.x1/m.x2)*(-
                       1 + m.x1) + log(70*m.x1/m.x2)*(-1 + m.x1) + log(101*m.x1/m.x2)*(-1 + m.x1) + log(208*m.x1/m.x2)*(
                       -1 + m.x1) - (90*m.x1/m.x2 + 10*m.x1/m.x2 + 60*m.x1/m.x2 + 186*m.x1/m.x2 + 61*m.x1/m.x2 + 49*m.x1
                       /m.x2 + 14*m.x1/m.x2 + 24*m.x1/m.x2 + 56*m.x1/m.x2 + 20*m.x1/m.x2 + 79*m.x1/m.x2 + 84*m.x1/m.x2
                        + 44*m.x1/m.x2 + 59*m.x1/m.x2 + 29*m.x1/m.x2 + 118*m.x1/m.x2 + 25*m.x1/m.x2 + 156*m.x1/m.x2 + 
                       310*m.x1/m.x2 + 76*m.x1/m.x2 + 26*m.x1/m.x2 + 44*m.x1/m.x2 + 23*m.x1/m.x2 + 62*m.x1/m.x2 + 130*
                       m.x1/m.x2 + 208*m.x1/m.x2 + 70*m.x1/m.x2 + 101*m.x1/m.x2 + 208*m.x1/m.x2), sense=maximize)
