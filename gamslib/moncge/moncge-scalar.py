#  NLP written by GAMS Convert at 12/13/18 11:23:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51       51        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        189       95       94        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(1E-5,None),initialize=11.6666666666667)
m.x2 = Var(within=Reals,bounds=(1E-5,None),initialize=31)
m.x3 = Var(within=Reals,bounds=(1E-5,None),initialize=6.66666666666667)
m.x4 = Var(within=Reals,bounds=(1E-5,None),initialize=16.9090909090909)
m.x5 = Var(within=Reals,bounds=(1E-5,None),initialize=5)
m.x6 = Var(within=Reals,bounds=(1E-5,None),initialize=14.0909090909091)
m.x7 = Var(within=Reals,bounds=(1E-5,None),initialize=21)
m.x8 = Var(within=Reals,bounds=(1E-5,None),initialize=8)
m.x9 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x10 = Var(within=Reals,bounds=(1E-5,None),initialize=9)
m.x11 = Var(within=Reals,bounds=(1E-5,None),initialize=49.6666666666667)
m.x12 = Var(within=Reals,bounds=(1E-5,None),initialize=48)
m.x13 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x14 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x15 = Var(within=Reals,bounds=(1E-5,None),initialize=19)
m.x16 = Var(within=Reals,bounds=(1E-5,None),initialize=14)
m.x17 = Var(within=Reals,bounds=(1E-5,None),initialize=16)
m.x18 = Var(within=Reals,bounds=(1E-5,None),initialize=15)
m.x19 = Var(within=Reals,bounds=(1E-5,None),initialize=8)
m.x20 = Var(within=Reals,bounds=(1E-5,None),initialize=4)
m.x21 = Var(within=Reals,bounds=(1E-5,None),initialize=13)
m.x22 = Var(within=Reals,bounds=(1E-5,None),initialize=11)
m.x23 = Var(within=Reals,bounds=(1E-5,None),initialize=84)
m.x24 = Var(within=Reals,bounds=(1E-5,None),initialize=85)
m.x25 = Var(within=Reals,bounds=(1E-5,None),initialize=46.6666666666667)
m.x26 = Var(within=Reals,bounds=(1E-5,None),initialize=48)
m.x27 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x28 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x29 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x30 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x31 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x32 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x33 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x34 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x35 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x36 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x37 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x38 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x39 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x40 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x41 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x42 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x43 = Var(within=Reals,bounds=(1E-5,None),initialize=2)
m.x44 = Var(within=Reals,bounds=(1E-5,None),initialize=23)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=5)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=4)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=2)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=23.3333333333333)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=24)

m.obj = Objective(expr=m.x13**0.4*m.x14**0.6, sense=maximize)

m.c1 = Constraint(expr=-1.97962633005252*m.x3**0.571428571428571*m.x5**0.428571428571429 + m.x1 == 0)

m.c2 = Constraint(expr=-1.99174121480513*m.x4**0.545454545454546*m.x6**0.454545454545455 + m.x2 == 0)

m.c3 = Constraint(expr=   m.x7 - 0.422818791946309*m.x11 == 0)

m.c4 = Constraint(expr=   m.x8 - 0.166666666666667*m.x12 == 0)

m.c5 = Constraint(expr=   m.x9 - 0.342281879194631*m.x11 == 0)

m.c6 = Constraint(expr=   m.x10 - 0.1875*m.x12 == 0)

m.c7 = Constraint(expr=   m.x1 - 0.23489932885906*m.x11 == 0)

m.c8 = Constraint(expr=   m.x2 - 0.645833333333333*m.x12 == 0)

m.c9 = Constraint(expr=-0.571428571428571*m.x29*m.x1/m.x27 + m.x3 == 0)

m.c10 = Constraint(expr=-0.545454545454546*m.x30*m.x2/m.x27 + m.x4 == 0)

m.c11 = Constraint(expr=-0.428571428571429*m.x29*m.x1/m.x28 + m.x5 == 0)

m.c12 = Constraint(expr=-0.454545454545455*m.x30*m.x2/m.x28 + m.x6 == 0)

m.c13 = Constraint(expr= - 0.23489932885906*m.x29 + m.x31 - 0.422818791946309*m.x33 - 0.342281879194631*m.x34 == 0)

m.c14 = Constraint(expr= - 0.645833333333333*m.x30 + m.x32 - 0.166666666666667*m.x33 - 0.1875*m.x34 == 0)

m.c15 = Constraint(expr= - 6.02491582491582*m.x27 - 4.87878787878788*m.x28 + m.x44 - 0.255555555555556*m.x49
                         - 0.255555555555556*m.x50 == 0)

m.c16 = Constraint(expr=-0.100671140939597*m.x31*m.x11 + m.x45 == 0)

m.c17 = Constraint(expr=-0.0833333333333333*m.x32*m.x12 + m.x46 == 0)

m.c18 = Constraint(expr=   m.x47 == 0)

m.c19 = Constraint(expr=   m.x48 == 0)

m.c20 = Constraint(expr=-(0.575757575757576*m.x44 - 0.575757575757576*m.x43 + 0.575757575757576*m.x45 + 
                        0.575757575757576*m.x46 + 0.575757575757576*m.x47 + 0.575757575757576*m.x48)/m.x33 + m.x15 == 0)

m.c21 = Constraint(expr=-(0.424242424242424*m.x44 - 0.424242424242424*m.x43 + 0.424242424242424*m.x45 + 
                        0.424242424242424*m.x46 + 0.424242424242424*m.x47 + 0.424242424242424*m.x48)/m.x34 + m.x16 == 0)

m.c22 = Constraint(expr=-(6.19354838709677*m.x41 + 0.516129032258065*m.x42 + 0.516129032258065*m.x43)/m.x33 + m.x17
                         == 0)

m.c23 = Constraint(expr=-(5.80645161290323*m.x41 + 0.483870967741935*m.x42 + 0.483870967741935*m.x43)/m.x34 + m.x18
                         == 0)

m.c24 = Constraint(expr= - 4.45319865319865*m.x27 - 3.60606060606061*m.x28 + m.x42 - 0.188888888888889*m.x49
                         - 0.188888888888889*m.x50 == 0)

m.c25 = Constraint(expr=   m.x43 - 0.0571428571428571*m.x44 - 0.0571428571428571*m.x45 - 0.0571428571428571*m.x46
                         - 0.0571428571428571*m.x47 - 0.0571428571428571*m.x48 == 0)

m.c26 = Constraint(expr=-(9.43030303030303*m.x27 + 7.63636363636363*m.x28 - 0.4*m.x42 - 0.4*m.x44 + 0.4*m.x49 + 0.4*
                        m.x50)/m.x33 + m.x13 == 0)

m.c27 = Constraint(expr=-(14.1454545454545*m.x27 + 11.4545454545455*m.x28 - 0.6*m.x42 - 0.6*m.x44 + 0.6*m.x49 + 0.6*
                        m.x50)/m.x34 + m.x14 == 0)

m.c28 = Constraint(expr=-0.5*m.x39*m.x25 + m.x49 == 0)

m.c29 = Constraint(expr=-0.5*m.x40*m.x26 + m.x50 == 0)

m.c30 = Constraint(expr=   m.x35 - m.x41 == 0)

m.c31 = Constraint(expr=   m.x36 - m.x41 == 0)

m.c32 = Constraint(expr=   m.x37 - m.x41 == 0)

m.c33 = Constraint(expr=   m.x38 - m.x41 == 0)

m.c34 = Constraint(expr=   m.x19 + m.x20 - m.x21 - m.x22 == -12)

m.c35 = Constraint(expr=-2.43772760307852*(0.319214484027929*m.x21**0.666666666666667 + 0.680785515972071*m.x25**
                        0.666666666666667)**1.5 + m.x23 == 0)

m.c36 = Constraint(expr=-2.49105629778685*(0.325301619326159*m.x22**0.666666666666667 + 0.674698380673841*m.x26**
                        0.666666666666667)**1.5 + m.x24 == 0)

m.c37 = Constraint(expr=-(0.578192834851047*m.x33/m.x37)**3*m.x23 + m.x21 == 0)

m.c38 = Constraint(expr=-(0.597780742720094*m.x34/m.x38)**3*m.x24 + m.x22 == 0)

m.c39 = Constraint(expr=-(0.82207069144349*m.x33/m.x39)**3*m.x23 + m.x25 == 0)

m.c40 = Constraint(expr=-(0.826559465943655*m.x34/m.x40)**3*m.x24 + m.x26 == 0)

m.c41 = Constraint(expr=-2.17200564514278*(0.707193905303813*m.x19**1.5 + 0.292806094696188*m.x25**1.5)**
                        0.666666666666667 + m.x11 == 0)

m.c42 = Constraint(expr=-2.57028516937072*(0.775990762260204*m.x20**1.5 + 0.224009237739796*m.x26**1.5)**
                        0.666666666666667 + m.x12 == 0)

m.c43 = Constraint(expr=-(1.03164224142176*m.x31/m.x39)**(-2)*m.x11 + m.x25 == 0)

m.c44 = Constraint(expr=-(0.999999999999999*m.x32/m.x40)**(-2)*m.x12 + m.x26 == 0)

m.c45 = Constraint(expr=-(2.49165273128767*m.x31/m.x35)**(-2)*m.x11 + m.x19 == 0)

m.c46 = Constraint(expr=-(3.46410161513775*m.x32/m.x36)**(-2)*m.x12 + m.x20 == 0)

m.c47 = Constraint(expr= - m.x7 - m.x8 - m.x13 - m.x15 - m.x17 + m.x23 == 0)

m.c48 = Constraint(expr= - m.x9 - m.x10 - m.x14 - m.x16 - m.x18 + m.x24 == 0)

m.c49 = Constraint(expr=   m.x3 + m.x4 == 23.5757575757576)

m.c50 = Constraint(expr=   m.x5 + m.x6 == 19.0909090909091)
