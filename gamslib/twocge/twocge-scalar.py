#  NLP written by GAMS Convert at 12/13/18 11:23:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        107      107        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        107      107        0        0        0        0        0        0
#  FX      3        3        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        385      181      204        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(1E-5,None),initialize=35)
m.x2 = Var(within=Reals,bounds=(1E-5,None),initialize=48)
m.x3 = Var(within=Reals,bounds=(1E-5,None),initialize=55)
m.x4 = Var(within=Reals,bounds=(1E-5,None),initialize=61)
m.x5 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x6 = Var(within=Reals,bounds=(1E-5,None),initialize=33)
m.x7 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x8 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x9 = Var(within=Reals,bounds=(1E-5,None),initialize=15)
m.x10 = Var(within=Reals,bounds=(1E-5,None),initialize=15)
m.x11 = Var(within=Reals,bounds=(1E-5,None),initialize=25)
m.x12 = Var(within=Reals,bounds=(1E-5,None),initialize=31)
m.x13 = Var(within=Reals,bounds=(1E-5,None),initialize=21)
m.x14 = Var(within=Reals,bounds=(1E-5,None),initialize=40)
m.x15 = Var(within=Reals,bounds=(1E-5,None),initialize=8)
m.x16 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x17 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x18 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x19 = Var(within=Reals,bounds=(1E-5,None),initialize=9)
m.x20 = Var(within=Reals,bounds=(1E-5,None),initialize=29)
m.x21 = Var(within=Reals,bounds=(1E-5,None),initialize=73)
m.x22 = Var(within=Reals,bounds=(1E-5,None),initialize=105)
m.x23 = Var(within=Reals,bounds=(1E-5,None),initialize=72)
m.x24 = Var(within=Reals,bounds=(1E-5,None),initialize=91)
m.x25 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x26 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x27 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x28 = Var(within=Reals,bounds=(1E-5,None),initialize=30)
m.x29 = Var(within=Reals,bounds=(1E-5,None),initialize=19)
m.x30 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x31 = Var(within=Reals,bounds=(1E-5,None),initialize=14)
m.x32 = Var(within=Reals,bounds=(1E-5,None),initialize=14)
m.x33 = Var(within=Reals,bounds=(1E-5,None),initialize=16)
m.x34 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x35 = Var(within=Reals,bounds=(1E-5,None),initialize=15)
m.x36 = Var(within=Reals,bounds=(1E-5,None),initialize=15)
m.x37 = Var(within=Reals,bounds=(1E-5,None),initialize=8)
m.x38 = Var(within=Reals,bounds=(1E-5,None),initialize=13)
m.x39 = Var(within=Reals,bounds=(1E-5,None),initialize=4)
m.x40 = Var(within=Reals,bounds=(1E-5,None),initialize=11)
m.x41 = Var(within=Reals,bounds=(1E-5,None),initialize=13)
m.x42 = Var(within=Reals,bounds=(1E-5,None),initialize=8)
m.x43 = Var(within=Reals,bounds=(1E-5,None),initialize=11)
m.x44 = Var(within=Reals,bounds=(1E-5,None),initialize=4)
m.x45 = Var(within=Reals,bounds=(1E-5,None),initialize=84)
m.x46 = Var(within=Reals,bounds=(1E-5,None),initialize=111)
m.x47 = Var(within=Reals,bounds=(1E-5,None),initialize=85)
m.x48 = Var(within=Reals,bounds=(1E-5,None),initialize=105)
m.x49 = Var(within=Reals,bounds=(1E-5,None),initialize=70)
m.x50 = Var(within=Reals,bounds=(1E-5,None),initialize=102)
m.x51 = Var(within=Reals,bounds=(1E-5,None),initialize=72)
m.x52 = Var(within=Reals,bounds=(1E-5,None),initialize=100)
m.x53 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x54 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x55 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x56 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x57 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x58 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x59 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x60 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x61 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x62 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x63 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x64 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x65 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x66 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x67 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x68 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x69 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x70 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x71 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x72 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x73 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x74 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x75 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x76 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x77 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x78 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x79 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x80 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x81 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x82 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x83 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x84 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x85 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x86 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x87 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x88 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x89 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x90 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x91 = Var(within=Reals,bounds=(1E-5,None),initialize=17)
m.x92 = Var(within=Reals,bounds=(1E-5,None),initialize=20)
m.x93 = Var(within=Reals,bounds=(1E-5,None),initialize=2)
m.x94 = Var(within=Reals,bounds=(1E-5,None),initialize=27)
m.x95 = Var(within=Reals,bounds=(1E-5,None),initialize=23)
m.x96 = Var(within=Reals,bounds=(1E-5,None),initialize=29)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=5)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=4)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=20)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=2)
m.x104 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x105 + m.x106, sense=maximize)

m.c1 = Constraint(expr=-1.97962633005252*m.x5**0.571428571428571*m.x9**0.428571428571429 + m.x1 == 0)

m.c2 = Constraint(expr=-1.86094863133081*m.x6**0.6875*m.x10**0.3125 + m.x2 == 0)

m.c3 = Constraint(expr=-1.99174121480513*m.x7**0.545454545454545*m.x11**0.454545454545455 + m.x3 == 0)

m.c4 = Constraint(expr=-1.99973126105714*m.x8**0.491803278688525*m.x12**0.508196721311475 + m.x4 == 0)

m.c5 = Constraint(expr=   m.x13 - 0.287671232876712*m.x21 == 0)

m.c6 = Constraint(expr=   m.x14 - 0.380952380952381*m.x22 == 0)

m.c7 = Constraint(expr=   m.x15 - 0.111111111111111*m.x23 == 0)

m.c8 = Constraint(expr=   m.x16 - 0.010989010989011*m.x24 == 0)

m.c9 = Constraint(expr=   m.x17 - 0.232876712328767*m.x21 == 0)

m.c10 = Constraint(expr=   m.x18 - 0.161904761904762*m.x22 == 0)

m.c11 = Constraint(expr=   m.x19 - 0.125*m.x23 == 0)

m.c12 = Constraint(expr=   m.x20 - 0.318681318681319*m.x24 == 0)

m.c13 = Constraint(expr=   m.x1 - 0.479452054794521*m.x21 == 0)

m.c14 = Constraint(expr=   m.x2 - 0.457142857142857*m.x22 == 0)

m.c15 = Constraint(expr=   m.x3 - 0.763888888888889*m.x23 == 0)

m.c16 = Constraint(expr=   m.x4 - 0.67032967032967*m.x24 == 0)

m.c17 = Constraint(expr=-0.571428571428571*m.x57*m.x1/m.x53 + m.x5 == 0)

m.c18 = Constraint(expr=-0.6875*m.x58*m.x2/m.x54 + m.x6 == 0)

m.c19 = Constraint(expr=-0.545454545454545*m.x59*m.x3/m.x53 + m.x7 == 0)

m.c20 = Constraint(expr=-0.491803278688525*m.x60*m.x4/m.x54 + m.x8 == 0)

m.c21 = Constraint(expr=-0.428571428571429*m.x57*m.x1/m.x55 + m.x9 == 0)

m.c22 = Constraint(expr=-0.3125*m.x58*m.x2/m.x56 + m.x10 == 0)

m.c23 = Constraint(expr=-0.454545454545455*m.x59*m.x3/m.x55 + m.x11 == 0)

m.c24 = Constraint(expr=-0.508196721311475*m.x60*m.x4/m.x56 + m.x12 == 0)

m.c25 = Constraint(expr= - 0.479452054794521*m.x57 + m.x61 - 0.287671232876712*m.x65 - 0.232876712328767*m.x67 == 0)

m.c26 = Constraint(expr= - 0.457142857142857*m.x58 + m.x62 - 0.380952380952381*m.x66 - 0.161904761904762*m.x68 == 0)

m.c27 = Constraint(expr= - 0.763888888888889*m.x59 + m.x63 - 0.111111111111111*m.x65 - 0.125*m.x67 == 0)

m.c28 = Constraint(expr= - 0.67032967032967*m.x60 + m.x64 - 0.010989010989011*m.x66 - 0.318681318681319*m.x68 == 0)

m.c29 = Constraint(expr= - 12.7777777777778*m.x53 - 10.2222222222222*m.x55 + m.x95 == 0)

m.c30 = Constraint(expr= - 16.7614678899083*m.x54 - 12.2385321100917*m.x56 + m.x96 == 0)

m.c31 = Constraint(expr=-0.0684931506849315*m.x61*m.x21 + m.x97 == 0)

m.c32 = Constraint(expr=-0.0952380952380952*m.x62*m.x22 + m.x98 == 0)

m.c33 = Constraint(expr=-0.0555555555555556*m.x63*m.x23 + m.x99 == 0)

m.c34 = Constraint(expr=-0.21978021978022*m.x64*m.x24 + m.x100 == 0)

m.c35 = Constraint(expr=   m.x101 == 0)

m.c36 = Constraint(expr=   m.x102 == 0)

m.c37 = Constraint(expr=   m.x103 == 0)

m.c38 = Constraint(expr=   m.x104 == 0)

m.c39 = Constraint(expr=-(0.575757575757576*m.x95 - 0.575757575757576*m.x93 + 0.575757575757576*m.x97 + 
                        0.575757575757576*m.x99 + 0.575757575757576*m.x101 + 0.575757575757576*m.x103)/m.x65 + m.x29
                         == 0)

m.c40 = Constraint(expr=-(0.588235294117647*m.x96 - 0.588235294117647*m.x94 + 0.588235294117647*m.x98 + 
                        0.588235294117647*m.x100 + 0.588235294117647*m.x102 + 0.588235294117647*m.x104)/m.x66 + m.x30
                         == 0)

m.c41 = Constraint(expr=-(0.424242424242424*m.x95 - 0.424242424242424*m.x93 + 0.424242424242424*m.x97 + 
                        0.424242424242424*m.x99 + 0.424242424242424*m.x101 + 0.424242424242424*m.x103)/m.x67 + m.x31
                         == 0)

m.c42 = Constraint(expr=-(0.411764705882353*m.x96 - 0.411764705882353*m.x94 + 0.411764705882353*m.x98 + 
                        0.411764705882353*m.x100 + 0.411764705882353*m.x102 + 0.411764705882353*m.x104)/m.x68 + m.x32
                         == 0)

m.c43 = Constraint(expr=-(6.19354838709677*m.x81 + 0.516129032258065*m.x91 + 0.516129032258065*m.x93)/m.x65 + m.x33
                         == 0)

m.c44 = Constraint(expr=-(0.571428571428571*m.x92 - 6.85714285714286*m.x82 + 0.571428571428571*m.x94)/m.x66 + m.x34
                         == 0)

m.c45 = Constraint(expr=-(5.80645161290323*m.x81 + 0.483870967741935*m.x91 + 0.483870967741935*m.x93)/m.x67 + m.x35
                         == 0)

m.c46 = Constraint(expr=-(0.428571428571429*m.x92 - 5.14285714285714*m.x82 + 0.428571428571429*m.x94)/m.x68 + m.x36
                         == 0)

m.c47 = Constraint(expr= - 9.44444444444444*m.x53 - 7.55555555555556*m.x55 + m.x91 == 0)

m.c48 = Constraint(expr= - 11.5596330275229*m.x54 - 8.44036697247707*m.x56 + m.x92 == 0)

m.c49 = Constraint(expr=   m.x93 - 0.0571428571428571*m.x95 - 0.0571428571428571*m.x97 - 0.0571428571428571*m.x99
                         - 0.0571428571428571*m.x101 - 0.0571428571428571*m.x103 == 0)

m.c50 = Constraint(expr=   m.x94 - 0.442622950819672*m.x96 - 0.442622950819672*m.x98 - 0.442622950819672*m.x100
                         - 0.442622950819672*m.x102 - 0.442622950819672*m.x104 == 0)

m.c51 = Constraint(expr=-(20*m.x53 + 16*m.x55 - 0.4*m.x91 - 0.4*m.x95)/m.x65 + m.x25 == 0)

m.c52 = Constraint(expr=-(31.5*m.x54 + 23*m.x56 - 0.5*m.x92 - 0.5*m.x96)/m.x66 + m.x26 == 0)

m.c53 = Constraint(expr=-(30*m.x53 + 24*m.x55 - 0.6*m.x91 - 0.6*m.x95)/m.x67 + m.x27 == 0)

m.c54 = Constraint(expr=-(31.5*m.x54 + 23*m.x56 - 0.5*m.x92 - 0.5*m.x96)/m.x68 + m.x28 == 0)

m.c55 = Constraint(expr=-m.x81*m.x83 + m.x69 == 0)

m.c56 = Constraint(expr=-m.x82*m.x84 + m.x70 == 0)

m.c57 = Constraint(expr=-m.x81*m.x85 + m.x71 == 0)

m.c58 = Constraint(expr=-m.x82*m.x86 + m.x72 == 0)

m.c59 = Constraint(expr=-m.x81*m.x87 + m.x73 == 0)

m.c60 = Constraint(expr=-m.x82*m.x88 + m.x74 == 0)

m.c61 = Constraint(expr=-m.x81*m.x89 + m.x75 == 0)

m.c62 = Constraint(expr=-m.x82*m.x90 + m.x76 == 0)

m.c63 = Constraint(expr=m.x83*m.x37 + m.x85*m.x39 - (m.x87*m.x41 + m.x89*m.x43) == -12)

m.c64 = Constraint(expr=m.x84*m.x38 + m.x86*m.x40 - (m.x88*m.x42 + m.x90*m.x44) == 12)

m.c65 = Constraint(expr=-1.78631298097427*(0.316984436431308*m.x41**0.5 + 0.683015563568692*m.x49**0.5)**2 + m.x45 == 0)

m.c66 = Constraint(expr=-1.58916987258455*(0.239580167928629*m.x42**0.5 + 0.760419832071371*m.x50**0.5)**2 + m.x46 == 0)

m.c67 = Constraint(expr=-1.8103795278422*(0.315975006847877*m.x43**0.5 + 0.684024993152123*m.x51**0.5)**2 + m.x47 == 0)

m.c68 = Constraint(expr=-1.48809523809524*(0.2*m.x44**0.5 + 0.8*m.x52**0.5)**2 + m.x48 == 0)

m.c69 = Constraint(expr=-(0.423659272868161*m.x65/m.x73)**2*m.x45 + m.x41 == 0)

m.c70 = Constraint(expr=-(0.302020224846311*m.x66/m.x74)**2*m.x46 + m.x42 == 0)

m.c71 = Constraint(expr=-(0.425145461109024*m.x67/m.x75)**2*m.x47 + m.x43 == 0)

m.c72 = Constraint(expr=-(0.243975018237133*m.x68/m.x76)**2*m.x48 + m.x44 == 0)

m.c73 = Constraint(expr=-(0.912870929175277*m.x65/m.x77)**2*m.x45 + m.x49 == 0)

m.c74 = Constraint(expr=-(0.958602586538821*m.x66/m.x78)**2*m.x46 + m.x50 == 0)

m.c75 = Constraint(expr=-(0.920357986616844*m.x67/m.x79)**2*m.x47 + m.x51 == 0)

m.c76 = Constraint(expr=-(0.975900072948533*m.x68/m.x80)**2*m.x48 + m.x52 == 0)

m.c77 = Constraint(expr=-2.42780549270868*(0.747349691412928*m.x37**1.5 + 0.252650308587072*m.x49**1.5)**
                        0.666666666666667 + m.x21 == 0)

m.c78 = Constraint(expr=-2.31453336100321*(0.736918169527346*m.x38**1.5 + 0.263081830472654*m.x50**1.5)**
                        0.666666666666667 + m.x22 == 0)

m.c79 = Constraint(expr=-2.91102542459458*(0.809256430169454*m.x39**1.5 + 0.190743569830546*m.x51**1.5)**
                        0.666666666666667 + m.x23 == 0)

m.c80 = Constraint(expr=-2.14432834749773*(0.750941034791528*m.x40**1.5 + 0.249058965208472*m.x52**1.5)**
                        0.666666666666667 + m.x24 == 0)

m.c81 = Constraint(expr=-(1.02120377146637*m.x61/m.x77)**(-2)*m.x21 + m.x49 == 0)

m.c82 = Constraint(expr=-(1.01459931239178*m.x62/m.x78)**(-2)*m.x22 + m.x50 == 0)

m.c83 = Constraint(expr=-(1*m.x63/m.x79)**(-2)*m.x23 + m.x51 == 0)

m.c84 = Constraint(expr=-(0.953939201416945*m.x64/m.x80)**(-2)*m.x24 + m.x52 == 0)

m.c85 = Constraint(expr=-(3.02076149339864*m.x61/m.x69)**(-2)*m.x21 + m.x37 == 0)

m.c86 = Constraint(expr=-(2.84199280029402*m.x62/m.x70)**(-2)*m.x22 + m.x38 == 0)

m.c87 = Constraint(expr=-(4.24264068711929*m.x63/m.x71)**(-2)*m.x23 + m.x39 == 0)

m.c88 = Constraint(expr=-(2.87623491264661*m.x64/m.x72)**(-2)*m.x24 + m.x40 == 0)

m.c89 = Constraint(expr=   m.x83 - m.x88 == 0)

m.c90 = Constraint(expr=   m.x84 - m.x87 == 0)

m.c91 = Constraint(expr=   m.x85 - m.x90 == 0)

m.c92 = Constraint(expr=   m.x86 - m.x89 == 0)

m.c93 = Constraint(expr=   m.x37 - m.x42 == 0)

m.c94 = Constraint(expr=   m.x38 - m.x41 == 0)

m.c95 = Constraint(expr=   m.x39 - m.x44 == 0)

m.c96 = Constraint(expr=   m.x40 - m.x43 == 0)

m.c97 = Constraint(expr= - m.x13 - m.x15 - m.x25 - m.x29 - m.x33 + m.x45 == 0)

m.c98 = Constraint(expr= - m.x14 - m.x16 - m.x26 - m.x30 - m.x34 + m.x46 == 0)

m.c99 = Constraint(expr= - m.x17 - m.x19 - m.x27 - m.x31 - m.x35 + m.x47 == 0)

m.c100 = Constraint(expr= - m.x18 - m.x20 - m.x28 - m.x32 - m.x36 + m.x48 == 0)

m.c101 = Constraint(expr= - m.x5 - m.x7 == -50)

m.c102 = Constraint(expr= - m.x6 - m.x8 == -63)

m.c103 = Constraint(expr= - m.x9 - m.x11 == -40)

m.c104 = Constraint(expr= - m.x10 - m.x12 == -46)

m.c105 = Constraint(expr=-m.x25**0.4*m.x27**0.6 + m.x105 == 0)

m.c106 = Constraint(expr=-m.x26**0.5*m.x28**0.5 + m.x106 == 0)
