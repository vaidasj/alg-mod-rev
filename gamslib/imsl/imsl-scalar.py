#  LP written by GAMS Convert at 12/13/18 10:24:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         12       12        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         62       62        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        175      175        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x3 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x4 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x5 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x6 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x7 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x8 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x9 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x10 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x11 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x12 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x13 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x14 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x15 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x16 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x17 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x18 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x19 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x20 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x21 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x22 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x23 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x24 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x25 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x26 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x27 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x28 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x29 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x30 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x31 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x32 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x33 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x34 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x35 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x36 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x37 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x38 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x39 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x40 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x41 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x42 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x43 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x44 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x45 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x46 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x47 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x48 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x49 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x50 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x51 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x52 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x53 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x54 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x55 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x56 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x57 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x58 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x59 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x60 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x61 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x62 = Var(within=Reals,bounds=(-1,1),initialize=0)

m.obj = Objective(expr=   0.052336*m.x3 + 0.104528*m.x4 + 0.156434*m.x5 + 0.207912*m.x6 + 0.258819*m.x7 + 0.309017*m.x8
                        + 0.358368*m.x9 + 0.406737*m.x10 + 0.45399*m.x11 + 0.5*m.x12 + 0.544639*m.x13 + 0.587785*m.x14
                        + 0.62932*m.x15 + 0.669131*m.x16 + 0.707107*m.x17 + 0.743145*m.x18 + 0.777146*m.x19
                        + 0.809017*m.x20 + 0.838671*m.x21 + 0.866025*m.x22 + 0.891007*m.x23 + 0.913545*m.x24
                        + 0.93358*m.x25 + 0.951057*m.x26 + 0.965926*m.x27 + 0.978148*m.x28 + 0.987688*m.x29
                        + 0.994522*m.x30 + 0.99863*m.x31 + m.x32 + 0.99863*m.x33 + 0.994522*m.x34 + 0.987688*m.x35
                        + 0.978148*m.x36 + 0.965926*m.x37 + 0.951057*m.x38 + 0.93358*m.x39 + 0.913545*m.x40
                        + 0.891007*m.x41 + 0.866025*m.x42 + 0.838671*m.x43 + 0.809017*m.x44 + 0.777146*m.x45
                        + 0.743145*m.x46 + 0.707107*m.x47 + 0.669131*m.x48 + 0.629321*m.x49 + 0.587786*m.x50
                        + 0.54464*m.x51 + 0.500001*m.x52 + 0.453992*m.x53 + 0.406739*m.x54 + 0.358371*m.x55
                        + 0.309021*m.x56 + 0.258825*m.x57 + 0.207919*m.x58 + 0.156444*m.x59 + 0.104541*m.x60
                        + 0.052352*m.x61 + 2.1E-5*m.x62 + 1, sense=maximize)

m.c1 = Constraint(expr=   m.x2 + 0.833333333333333*m.x3 + 0.666666666666667*m.x4 + 0.5*m.x5 + 0.333333333333333*m.x6
                        + 0.166666666666667*m.x7 == 0)

m.c2 = Constraint(expr=   0.166666666666667*m.x3 + 0.333333333333333*m.x4 + 0.5*m.x5 + 0.666666666666667*m.x6
                        + 0.833333333333333*m.x7 + m.x8 + 0.833333333333333*m.x9 + 0.666666666666667*m.x10 + 0.5*m.x11
                        + 0.333333333333333*m.x12 + 0.166666666666667*m.x13 == 0)

m.c3 = Constraint(expr=   0.166666666666667*m.x9 + 0.333333333333333*m.x10 + 0.5*m.x11 + 0.666666666666667*m.x12
                        + 0.833333333333333*m.x13 + m.x14 + 0.833333333333333*m.x15 + 0.666666666666667*m.x16
                        + 0.5*m.x17 + 0.333333333333333*m.x18 + 0.166666666666667*m.x19 == 0)

m.c4 = Constraint(expr=   0.166666666666667*m.x15 + 0.333333333333333*m.x16 + 0.5*m.x17 + 0.666666666666667*m.x18
                        + 0.833333333333333*m.x19 + 2.22044604925031E-16*m.x20 + 0.833333333333334*m.x21
                        + 0.666666666666667*m.x22 + 0.500000000000001*m.x23 + 0.333333333333334*m.x24
                        + 0.166666666666667*m.x25 == 0)

m.c5 = Constraint(expr=   m.x20 + 0.166666666666666*m.x21 + 0.333333333333333*m.x22 + 0.499999999999999*m.x23
                        + 0.666666666666666*m.x24 + 0.833333333333333*m.x25 + m.x26 + 0.833333333333333*m.x27
                        + 0.666666666666667*m.x28 + 0.5*m.x29 + 0.333333333333333*m.x30 + 0.166666666666667*m.x31 == 0)

m.c6 = Constraint(expr=   0.166666666666667*m.x27 + 0.333333333333333*m.x28 + 0.5*m.x29 + 0.666666666666667*m.x30
                        + 0.833333333333333*m.x31 + m.x32 + 0.833333333333333*m.x33 + 0.666666666666667*m.x34
                        + 0.5*m.x35 + 0.333333333333333*m.x36 + 0.166666666666666*m.x37 == 0)

m.c7 = Constraint(expr=   0.166666666666667*m.x33 + 0.333333333333333*m.x34 + 0.5*m.x35 + 0.666666666666667*m.x36
                        + 0.833333333333334*m.x37 + 2.22044604925031E-16*m.x38 + 0.833333333333334*m.x39
                        + 0.666666666666668*m.x40 + 0.500000000000001*m.x41 + 0.333333333333335*m.x42
                        + 0.166666666666667*m.x43 == 0)

m.c8 = Constraint(expr=   m.x38 + 0.166666666666666*m.x39 + 0.333333333333332*m.x40 + 0.499999999999999*m.x41
                        + 0.666666666666665*m.x42 + 0.833333333333333*m.x43 + 1.33226762955019E-15*m.x44
                        + 0.833333333333334*m.x45 + 0.666666666666668*m.x46 + 0.500000000000001*m.x47
                        + 0.333333333333333*m.x48 + 0.166666666666667*m.x49 == 0)

m.c9 = Constraint(expr=   0.999999999999999*m.x44 + 0.166666666666666*m.x45 + 0.333333333333332*m.x46
                        + 0.499999999999999*m.x47 + 0.666666666666667*m.x48 + 0.833333333333333*m.x49 + m.x50
                        + 0.833333333333334*m.x51 + 0.666666666666667*m.x52 + 0.500000000000001*m.x53
                        + 0.333333333333333*m.x54 + 0.166666666666667*m.x55 == 0)

m.c10 = Constraint(expr=   0.166666666666666*m.x51 + 0.333333333333333*m.x52 + 0.499999999999999*m.x53
                         + 0.666666666666667*m.x54 + 0.833333333333333*m.x55 + m.x56 + 0.833333333333334*m.x57
                         + 0.666666666666667*m.x58 + 0.500000000000001*m.x59 + 0.333333333333333*m.x60
                         + 0.166666666666667*m.x61 == 0)

m.c11 = Constraint(expr=   0.166666666666666*m.x57 + 0.333333333333333*m.x58 + 0.499999999999999*m.x59
                         + 0.666666666666667*m.x60 + 0.833333333333333*m.x61 + m.x62 == 0)
