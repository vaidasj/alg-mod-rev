#  LP written by GAMS Convert at 12/13/18 10:24:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         40       39        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         52       52        0        0        0        0        0        0
#  FX     13       13        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        170      170        0        0


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x8 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(3,3),initialize=3)
m.x15 = Var(within=Reals,bounds=(3,3),initialize=3)
m.x16 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x26 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(-2,-2),initialize=-2)
m.x31 = Var(within=Reals,bounds=(-2,-2),initialize=-2)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(2,2),initialize=2)
m.x51 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=m.x24, sense=minimize)

m.c1 = Constraint(expr=   m.x2 + 0.329749103942652*m.x20 - 0.039426523297491*m.x21 + 0.548387096774194*m.x22
                        + 0.161290322580645*m.x23 - m.x50 == 0)

m.c2 = Constraint(expr=   m.x3 - 0.670250896057348*m.x20 + 0.960573476702509*m.x21 + 0.548387096774194*m.x22
                        + 0.161290322580645*m.x23 - m.x50 == 0)

m.c3 = Constraint(expr=   m.x4 + 0.274193548387097*m.x20 + 0.0161290322580645*m.x21 + 0.775659824046921*m.x22
                        - 0.0659824046920821*m.x23 - m.x50 == 0)

m.c4 = Constraint(expr=   m.x5 + 0.274193548387097*m.x20 + 0.0161290322580645*m.x21 - 0.224340175953079*m.x22
                        + 0.934017595307918*m.x23 - m.x50 == 0)

m.c5 = Constraint(expr= - m.x7 + 0.5*m.x9 + m.x28 == 0)

m.c6 = Constraint(expr= - m.x8 + 0.05*m.x10 + m.x29 == 0)

m.c7 = Constraint(expr= - 0.262295081967213*m.x20 + 0.262295081967213*m.x22 + m.x32 - m.x51 == 0)

m.c8 = Constraint(expr= - 0.795454545454545*m.x20 + 0.795454545454545*m.x22 + m.x33 - m.x52 == 0)

m.c9 = Constraint(expr=   0.737704918032787*m.x20 - 0.737704918032787*m.x22 + m.x34 - m.x51 == 0)

m.c10 = Constraint(expr=   0.204545454545455*m.x20 - 0.204545454545455*m.x22 + m.x35 - m.x52 == 0)

m.c11 = Constraint(expr=   0.0909090909090909*m.x20 - 0.0909090909090909*m.x21 + m.x42 - m.x51 == 0)

m.c12 = Constraint(expr=   0.5*m.x20 - 0.5*m.x21 + m.x43 - m.x52 == 0)

m.c13 = Constraint(expr= - 0.909090909090909*m.x20 + 0.909090909090909*m.x21 + m.x44 - m.x51 == 0)

m.c14 = Constraint(expr= - 0.5*m.x20 + 0.5*m.x21 + m.x45 - m.x52 == 0)

m.c15 = Constraint(expr=   0.25*m.x22 - 0.25*m.x23 + m.x46 - m.x51 == 0)

m.c16 = Constraint(expr=   0.666666666666667*m.x22 - 0.666666666666667*m.x23 + m.x47 - m.x52 == 0)

m.c17 = Constraint(expr= - 0.75*m.x22 + 0.75*m.x23 + m.x48 - m.x51 == 0)

m.c18 = Constraint(expr= - 0.333333333333333*m.x22 + 0.333333333333333*m.x23 + m.x49 - m.x52 == 0)

m.c19 = Constraint(expr=   m.x12 + 0.666666666666667*m.x26 - 0.666666666666667*m.x40 - m.x51 == 0)

m.c20 = Constraint(expr=   m.x13 + 0.8*m.x27 - 0.8*m.x40 - m.x52 == 0)

m.c21 = Constraint(expr=   m.x17 - 0.333333333333333*m.x26 + 0.333333333333333*m.x40 - m.x51 == 0)

m.c22 = Constraint(expr=   m.x18 - 0.2*m.x27 + 0.2*m.x40 - m.x52 == 0)

m.c23 = Constraint(expr=   0.573770491803279*m.x20 - 0.0163934426229508*m.x21 + 0.0163934426229508*m.x22
                         - 0.0819672131147541*m.x23 - 0.163934426229508*m.x26 - 0.327868852459016*m.x40 == 0)

m.c24 = Constraint(expr=   0.0227272727272727*m.x20 - 0.181818181818182*m.x21 + 0.772727272727273*m.x22
                         - 0.0454545454545455*m.x23 - 0.113636363636364*m.x27 - 0.454545454545455*m.x40 == 0)

m.c25 = Constraint(expr=   m.x20 - m.x25 - m.x28 - m.x38 == 0)

m.c26 = Constraint(expr=   m.x22 - m.x25 - m.x29 - m.x39 == 0)

m.c27 = Constraint(expr=   m.x21 - m.x25 - m.x30 - m.x36 == 0)

m.c28 = Constraint(expr=   m.x23 - m.x25 - m.x31 - m.x37 == 0)

m.c29 = Constraint(expr= - 0.314814814814815*m.x2 - 0.351851851851852*m.x9 + 0.833333333333333*m.x32
                         + 0.166666666666667*m.x33 - 0.185185185185185*m.x42 - 0.148148148148148*m.x43 == 0)

m.c30 = Constraint(expr= - 0.666666666666667*m.x4 - 0.0196078431372549*m.x10 + 0.313725490196078*m.x34
                         + 0.686274509803922*m.x35 - 0.294117647058824*m.x46 - 0.0196078431372549*m.x47 == 0)

m.c31 = Constraint(expr= - m.x16 + 0.5*m.x17 + 0.5*m.x18 == 0)

m.c32 = Constraint(expr=   m.x12 - m.x14 == 0)

m.c33 = Constraint(expr=   m.x13 - m.x15 == 0)

m.c34 = Constraint(expr= - 0.0428571428571429*m.x3 - 0.336134453781513*m.x5 + m.x19 - 0.428571428571429*m.x30
                         - 0.571428571428571*m.x31 - 0.0428571428571429*m.x44 - 0.342857142857143*m.x45
                         - 0.168067226890756*m.x48 - 0.0672268907563025*m.x49 == 0)

m.c35 = Constraint(expr= - 0.95*m.x9 - 0.05*m.x10 + m.x11 - 0.95*m.x28 - 0.05*m.x29 == 0)

m.c36 = Constraint(expr=   m.x1 - 0.2*m.x11 + 0.21*m.x19 == 0)

m.c37 = Constraint(expr= - 0.274193548387097*m.x20 - 0.0161290322580645*m.x21 - 0.548387096774194*m.x22
                         - 0.161290322580645*m.x23 + m.x24 == 0)

m.c38 = Constraint(expr= - m.x24 + m.x40 - m.x41 == 0)

m.c39 = Constraint(expr=   m.x6 + m.x24 - m.x50 == 0)

m.c40 = Constraint(expr=   m.x24 <= 100000)
