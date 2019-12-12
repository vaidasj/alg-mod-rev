#  NLP written by GAMS Convert at 12/13/18 11:23:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         53       53        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         53       53        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        191       85      106        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(1E-5,None),initialize=35)
m.x2 = Var(within=Reals,bounds=(1E-5,None),initialize=55)
m.x3 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x4 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x5 = Var(within=Reals,bounds=(1E-5,None),initialize=15)
m.x6 = Var(within=Reals,bounds=(1E-5,None),initialize=25)
m.x7 = Var(within=Reals,bounds=(1E-5,None),initialize=21)
m.x8 = Var(within=Reals,bounds=(1E-5,None),initialize=8)
m.x9 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x10 = Var(within=Reals,bounds=(1E-5,None),initialize=9)
m.x11 = Var(within=Reals,bounds=(1E-5,None),initialize=73)
m.x12 = Var(within=Reals,bounds=(1E-5,None),initialize=72)
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
m.x25 = Var(within=Reals,bounds=(1E-5,None),initialize=70)
m.x26 = Var(within=Reals,bounds=(1E-5,None),initialize=72)
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
m.x42 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x43 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x44 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x45 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x46 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x47 = Var(within=Reals,bounds=(1E-5,None),initialize=2)
m.x48 = Var(within=Reals,bounds=(1E-5,None),initialize=23)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=5)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=4)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=2)

m.obj = Objective(expr=m.x13**0.4*m.x14**0.6, sense=maximize)

m.c1 = Constraint(expr=-1.97962633005252*m.x3**0.571428571428571*m.x5**0.428571428571429 + m.x1 == 0)

m.c2 = Constraint(expr=-1.99174121480513*m.x4**0.545454545454545*m.x6**0.454545454545455 + m.x2 == 0)

m.c3 = Constraint(expr=   m.x7 - 0.287671232876712*m.x11 == 0)

m.c4 = Constraint(expr=   m.x8 - 0.111111111111111*m.x12 == 0)

m.c5 = Constraint(expr=   m.x9 - 0.232876712328767*m.x11 == 0)

m.c6 = Constraint(expr=   m.x10 - 0.125*m.x12 == 0)

m.c7 = Constraint(expr=   m.x1 - 0.479452054794521*m.x11 == 0)

m.c8 = Constraint(expr=   m.x2 - 0.763888888888889*m.x12 == 0)

m.c9 = Constraint(expr=-0.571428571428571*m.x29*m.x1/m.x27 + m.x3 == 0)

m.c10 = Constraint(expr=-0.545454545454545*m.x30*m.x2/m.x27 + m.x4 == 0)

m.c11 = Constraint(expr=-0.428571428571429*m.x29*m.x1/m.x28 + m.x5 == 0)

m.c12 = Constraint(expr=-0.454545454545455*m.x30*m.x2/m.x28 + m.x6 == 0)

m.c13 = Constraint(expr= - 0.479452054794521*m.x29 + m.x31 - 0.287671232876712*m.x33 - 0.232876712328767*m.x34 == 0)

m.c14 = Constraint(expr= - 0.763888888888889*m.x30 + m.x32 - 0.111111111111111*m.x33 - 0.125*m.x34 == 0)

m.c15 = Constraint(expr= - 12.7777777777778*m.x27 - 10.2222222222222*m.x28 + m.x48 == 0)

m.c16 = Constraint(expr=-0.0684931506849315*m.x31*m.x11 + m.x49 == 0)

m.c17 = Constraint(expr=-0.0555555555555556*m.x32*m.x12 + m.x50 == 0)

m.c18 = Constraint(expr=   m.x51 == 0)

m.c19 = Constraint(expr=   m.x52 == 0)

m.c20 = Constraint(expr=-(0.575757575757576*m.x48 - 0.575757575757576*m.x47 + 0.575757575757576*m.x49 + 
                        0.575757575757576*m.x50 + 0.575757575757576*m.x51 + 0.575757575757576*m.x52)/m.x33 + m.x15 == 0)

m.c21 = Constraint(expr=-(0.424242424242424*m.x48 - 0.424242424242424*m.x47 + 0.424242424242424*m.x49 + 
                        0.424242424242424*m.x50 + 0.424242424242424*m.x51 + 0.424242424242424*m.x52)/m.x34 + m.x16 == 0)

m.c22 = Constraint(expr=-(6.19354838709677*m.x41 + 0.516129032258065*m.x46 + 0.516129032258065*m.x47)/m.x33 + m.x17
                         == 0)

m.c23 = Constraint(expr=-(5.80645161290323*m.x41 + 0.483870967741935*m.x46 + 0.483870967741935*m.x47)/m.x34 + m.x18
                         == 0)

m.c24 = Constraint(expr= - 9.44444444444444*m.x27 - 7.55555555555556*m.x28 + m.x46 == 0)

m.c25 = Constraint(expr=   m.x47 - 0.0571428571428571*m.x48 - 0.0571428571428571*m.x49 - 0.0571428571428571*m.x50
                         - 0.0571428571428571*m.x51 - 0.0571428571428571*m.x52 == 0)

m.c26 = Constraint(expr=-(20*m.x27 + 16*m.x28 - 0.4*m.x46 - 0.4*m.x48)/m.x33 + m.x13 == 0)

m.c27 = Constraint(expr=-(30*m.x27 + 24*m.x28 - 0.6*m.x46 - 0.6*m.x48)/m.x34 + m.x14 == 0)

m.c28 = Constraint(expr=-m.x41*m.x42 + m.x35 == 0)

m.c29 = Constraint(expr=-m.x41*m.x43 + m.x36 == 0)

m.c30 = Constraint(expr=-m.x41*m.x44 + m.x37 == 0)

m.c31 = Constraint(expr=-m.x41*m.x45 + m.x38 == 0)

m.c32 = Constraint(expr=m.x42*m.x19 + m.x43*m.x20 - (m.x44*m.x21 + m.x45*m.x22) == -12)

m.c33 = Constraint(expr=-m.x42**(-2) + 0.125*m.x19 == 0)

m.c34 = Constraint(expr=-m.x43**(-2) + 0.25*m.x20 == 0)

m.c35 = Constraint(expr=-m.x44**2 + 0.0769230769230769*m.x21 == 0)

m.c36 = Constraint(expr=-m.x45**2 + 0.0909090909090909*m.x22 == 0)

m.c37 = Constraint(expr=-1.78631298097427*(0.316984436431308*m.x21**0.5 + 0.683015563568692*m.x25**0.5)**2 + m.x23 == 0)

m.c38 = Constraint(expr=-1.8103795278422*(0.315975006847877*m.x22**0.5 + 0.684024993152123*m.x26**0.5)**2 + m.x24 == 0)

m.c39 = Constraint(expr=-(0.423659272868161*m.x33/m.x37)**2*m.x23 + m.x21 == 0)

m.c40 = Constraint(expr=-(0.425145461109024*m.x34/m.x38)**2*m.x24 + m.x22 == 0)

m.c41 = Constraint(expr=-(0.912870929175277*m.x33/m.x39)**2*m.x23 + m.x25 == 0)

m.c42 = Constraint(expr=-(0.920357986616844*m.x34/m.x40)**2*m.x24 + m.x26 == 0)

m.c43 = Constraint(expr=-2.42780549270868*(0.747349691412928*m.x19**1.5 + 0.252650308587072*m.x25**1.5)**
                        0.666666666666667 + m.x11 == 0)

m.c44 = Constraint(expr=-2.91102542459458*(0.809256430169454*m.x20**1.5 + 0.190743569830546*m.x26**1.5)**
                        0.666666666666667 + m.x12 == 0)

m.c45 = Constraint(expr=-(1.02120377146637*m.x31/m.x39)**(-2)*m.x11 + m.x25 == 0)

m.c46 = Constraint(expr=-(1*m.x32/m.x40)**(-2)*m.x12 + m.x26 == 0)

m.c47 = Constraint(expr=-(3.02076149339864*m.x31/m.x35)**(-2)*m.x11 + m.x19 == 0)

m.c48 = Constraint(expr=-(4.24264068711929*m.x32/m.x36)**(-2)*m.x12 + m.x20 == 0)

m.c49 = Constraint(expr= - m.x7 - m.x8 - m.x13 - m.x15 - m.x17 + m.x23 == 0)

m.c50 = Constraint(expr= - m.x9 - m.x10 - m.x14 - m.x16 - m.x18 + m.x24 == 0)

m.c51 = Constraint(expr=   m.x3 + m.x4 == 50)

m.c52 = Constraint(expr=   m.x5 + m.x6 == 40)
