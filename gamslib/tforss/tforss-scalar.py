#  LP written by GAMS Convert at 12/13/18 10:24:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21       10        5        6        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         64       64        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        215      215        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x62 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x63 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr= - m.x59 - m.x60 + m.x61 - m.x62 - m.x63, sense=maximize)

m.c1 = Constraint(expr= - 120*m.x2 - 132.6*m.x3 - 121*m.x4 - 108*m.x5 - 104*m.x6 - 105*m.x7 - 102*m.x8 - 95*m.x10
                        - 120.2*m.x11 - 115.5*m.x12 - 112*m.x13 - 106*m.x14 - 98*m.x15 - 105*m.x16 - 80*m.x18
                        - 115*m.x19 - 119*m.x20 - 112.2*m.x21 - 110*m.x22 - 97*m.x23 - 92*m.x24 - 17.5*m.x25
                        - 66.8*m.x26 - 91.3*m.x27 - 91.3*m.x28 - 76*m.x29 - 76*m.x30 - 78*m.x31 - 76*m.x32 - 51.1*m.x34
                        - 81.4*m.x35 - 86.5*m.x36 - 77*m.x37 - 76*m.x38 - 72*m.x39 - 80*m.x40 - 37.8*m.x42 - 71.3*m.x43
                        - 90.1*m.x44 - 92*m.x45 - 95.2*m.x46 - 88*m.x47 - 84*m.x48 + m.x49 == 0)

m.c2 = Constraint(expr= - 37.4*m.x3 - 99*m.x4 - 162*m.x5 - 221*m.x6 - 270*m.x7 - 323*m.x8 - 14.8*m.x11 - 59.5*m.x12
                        - 108*m.x13 - 159*m.x14 - 207*m.x15 - 235*m.x16 - 21*m.x20 - 57.8*m.x21 - 90*m.x22 - 128*m.x23
                        - 163*m.x24 - 25.7*m.x27 - 74.7*m.x28 - 114*m.x29 - 116*m.x30 - 200*m.x31 - 240*m.x32 - 10*m.x35
                        - 44.5*m.x36 - 74*m.x37 - 113*m.x38 - 153*m.x39 - 177*m.x40 - 15.9*m.x44 - 47.6*m.x45
                        - 77.8*m.x46 - 116*m.x47 - 148*m.x48 + m.x50 == 0)

m.c3 = Constraint(expr=   m.x49 - m.x51 >= 0)

m.c4 = Constraint(expr=   m.x50 - m.x52 - m.x54 >= 0)

m.c5 = Constraint(expr= - m.x53 + 0.4*m.x54 >= 0)

m.c6 = Constraint(expr=   0.207*m.x51 + 0.207*m.x52 + 0.207*m.x53 - m.x57 >= 0)

m.c7 = Constraint(expr=   0.6*m.x54 - m.x58 >= 0)

m.c8 = Constraint(expr=   m.x51 + m.x52 + m.x53 - m.x55 == 0)

m.c9 = Constraint(expr=   m.x54 - m.x56 == 0)

m.c10 = Constraint(expr=   10*m.x1 + 20*m.x2 + 30*m.x3 + 40*m.x4 + 50*m.x5 + 60*m.x6 + 70*m.x7 + 80*m.x8 <= 35.91975)

m.c11 = Constraint(expr=   10*m.x9 + 20*m.x10 + 30*m.x11 + 40*m.x12 + 50*m.x13 + 60*m.x14 + 70*m.x15 + 80*m.x16
                         <= 71.8395)

m.c12 = Constraint(expr=   10*m.x17 + 20*m.x18 + 30*m.x19 + 40*m.x20 + 50*m.x21 + 60*m.x22 + 70*m.x23 + 80*m.x24
                         <= 35.91975)

m.c13 = Constraint(expr=   10*m.x25 + 20*m.x26 + 30*m.x27 + 40*m.x28 + 50*m.x29 + 60*m.x30 + 70*m.x31 + 80*m.x32
                         <= 56.895)

m.c14 = Constraint(expr=   10*m.x33 + 20*m.x34 + 30*m.x35 + 40*m.x36 + 50*m.x37 + 60*m.x38 + 70*m.x39 + 80*m.x40
                         <= 113.79)

m.c15 = Constraint(expr=   10*m.x41 + 20*m.x42 + 30*m.x43 + 40*m.x44 + 50*m.x45 + 60*m.x46 + 70*m.x47 + 80*m.x48
                         <= 56.895)

m.c16 = Constraint(expr= - 4.00979558394956*m.x55 - 6.52387376753699*m.x56 + m.x59 == 0)

m.c17 = Constraint(expr= - 5.96*m.x51 - 5.96*m.x52 - 5.96*m.x53 - 6*m.x54 + m.x60 == 0)

m.c18 = Constraint(expr= - 147*m.x57 - 70*m.x58 + m.x61 == 0)

m.c19 = Constraint(expr= - 7*m.x49 - 7*m.x50 + m.x62 == 0)

m.c20 = Constraint(expr= - 389.061369015*m.x1 - 1009.12499239884*m.x2 - 2617.41034033297*m.x3 - 6788.88833522641*m.x4
                         - 17608.6279319544*m.x5 - 45672.2459312129*m.x6 - 118462.043519916*m.x7 - 307260.032187822*m.x8
                         - 389.061369015*m.x9 - 1009.12499239884*m.x10 - 2617.41034033297*m.x11 - 6788.88833522641*m.x12
                         - 17608.6279319544*m.x13 - 45672.2459312129*m.x14 - 118462.043519916*m.x15
                         - 307260.032187822*m.x16 - 389.061369015*m.x17 - 1009.12499239884*m.x18
                         - 2617.41034033297*m.x19 - 6788.88833522641*m.x20 - 17608.6279319544*m.x21
                         - 45672.2459312129*m.x22 - 118462.043519916*m.x23 - 307260.032187822*m.x24
                         - 389.061369015*m.x25 - 1009.12499239884*m.x26 - 2617.41034033297*m.x27
                         - 6788.88833522641*m.x28 - 17608.6279319544*m.x29 - 45672.2459312129*m.x30
                         - 118462.043519916*m.x31 - 307260.032187822*m.x32 - 389.061369015*m.x33
                         - 1009.12499239884*m.x34 - 2617.41034033297*m.x35 - 6788.88833522641*m.x36
                         - 17608.6279319544*m.x37 - 45672.2459312129*m.x38 - 118462.043519916*m.x39
                         - 307260.032187822*m.x40 - 389.061369015*m.x41 - 1009.12499239884*m.x42
                         - 2617.41034033297*m.x43 - 6788.88833522641*m.x44 - 17608.6279319544*m.x45
                         - 45672.2459312129*m.x46 - 118462.043519916*m.x47 - 307260.032187822*m.x48 + m.x63 == 0)
