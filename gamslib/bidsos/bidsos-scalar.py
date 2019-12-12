#  MIP written by GAMS Convert at 12/13/18 10:30:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         20        1        0        0        0       19        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         42       42        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.s2s2 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s3 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s4 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s5 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s6 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s7 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s8 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s9 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s10 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s11 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s12 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s13 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s14 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s15 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s16 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s17 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s18 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s19 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s20 = Var(within=CannotHandle,bounds=(0,None),initialize=0)

suffix sosno integer IN;
suffix ref integer IN;
let m.s2s2.sosno := -1;
let m.s2s2.ref   := 1;
let m.s2s3.sosno := -1;
let m.s2s3.ref   := 2;
let m.s2s4.sosno := -1;
let m.s2s4.ref   := 3;
let m.s2s5.sosno := -2;
let m.s2s5.ref   := 1;
let m.s2s6.sosno := -2;
let m.s2s6.ref   := 2;
let m.s2s7.sosno := -2;
let m.s2s7.ref   := 3;
let m.s2s8.sosno := -2;
let m.s2s8.ref   := 4;
let m.s2s9.sosno := -2;
let m.s2s9.ref   := 5;
let m.s2s10.sosno := -2;
let m.s2s10.ref   := 6;
let m.s2s11.sosno := -3;
let m.s2s11.ref   := 1;
let m.s2s12.sosno := -3;
let m.s2s12.ref   := 2;
let m.s2s13.sosno := -3;
let m.s2s13.ref   := 3;
let m.s2s14.sosno := -4;
let m.s2s14.ref   := 1;
let m.s2s15.sosno := -4;
let m.s2s15.ref   := 2;
let m.s2s16.sosno := -4;
let m.s2s16.ref   := 3;
let m.s2s17.sosno := -5;
let m.s2s17.ref   := 1;
let m.s2s18.sosno := -5;
let m.s2s18.ref   := 2;
let m.s2s19.sosno := -5;
let m.s2s19.ref   := 3;
let m.s2s20.sosno := -5;
let m.s2s20.ref   := 4;

m.obj = Objective(expr=   3855.84*m.s2s3 + 2021805.84*m.s2s4 + 1623982.84*m.s2s6 + 4892734.84*m.s2s7 + 6874204.84*m.s2s8
                        + 10079154.84*m.s2s9 + 10700344.84*m.s2s10 + 13456*m.s2s12 + 10312120*m.s2s13 + 6583.98*m.s2s15
                        + 876439.98*m.s2s16 + 2946300*m.s2s19 + 5331550*m.s2s20, sense=minimize)

m.c1 = Constraint(expr= - 33000*m.s2s4 - 70000*m.s2s7 - 100000*m.s2s8 - 150000*m.s2s9 - 160000*m.s2s10 - 165600*m.s2s13
                        - 12000*m.s2s16 - 42000*m.s2s19 - 77000*m.s2s20 == -239600.48)

m.c3 = Constraint(expr=   m.s2s2 + m.s2s3 + m.s2s4 == 1)

m.c4 = Constraint(expr=   m.s2s5 + m.s2s6 + m.s2s7 + m.s2s8 + m.s2s9 + m.s2s10 == 1)

m.c5 = Constraint(expr=   m.s2s11 + m.s2s12 + m.s2s13 == 1)

m.c6 = Constraint(expr=   m.s2s14 + m.s2s15 + m.s2s16 == 1)

m.c7 = Constraint(expr=   m.s2s17 + m.s2s18 + m.s2s19 + m.s2s20 == 1)
