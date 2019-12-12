#  NLP written by GAMS Convert at 12/13/18 10:24:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         79       79        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        106      106        0        0        0        0        0        0
#  FX     11       11        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        324      189      135        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(29.4,29.4),initialize=29.4)
m.x2 = Var(within=Reals,bounds=(0,35.25),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,38.25),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,41.25),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,44.25),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,47.25),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,50.25),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,51.15),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,52.05),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,52.95),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,53.85),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,54.75),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,55.65),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,56.55),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,57.45),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,58.35),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,59.25),initialize=0)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x53 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x54 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x55 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x56 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x57 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x58 = Var(within=Reals,bounds=(3.5,3.5),initialize=3.5)
m.x59 = Var(within=Reals,bounds=(4,4),initialize=4)
m.x60 = Var(within=Reals,bounds=(7,7),initialize=7)
m.x61 = Var(within=Reals,bounds=(10,10),initialize=10)
m.x62 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x63 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x64 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x65 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x66 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x67 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x68 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x69 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x70 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x71 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x72 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x73 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x74 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x75 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x76 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x77 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x78 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x79 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x81 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x90 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x91 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x104 + m.x105, sense=maximize)

m.c1 = Constraint(expr=-88.2*m.x61**0 + m.x18 == 0)

m.c2 = Constraint(expr=-91.728*m.x62**0 + m.x19 == 0)

m.c3 = Constraint(expr=-95.39712*m.x63**0 + m.x20 == 0)

m.c4 = Constraint(expr=-99.2130048*m.x64**0 + m.x21 == 0)

m.c5 = Constraint(expr=-103.181524992*m.x65**0 + m.x22 == 0)

m.c6 = Constraint(expr=-107.30878599168*m.x66**0 + m.x23 == 0)

m.c7 = Constraint(expr=-111.601137431347*m.x67**0 + m.x24 == 0)

m.c8 = Constraint(expr=-116.065182928601*m.x68**0 + m.x25 == 0)

m.c9 = Constraint(expr=-120.707790245745*m.x69**0 + m.x26 == 0)

m.c10 = Constraint(expr=-125.536101855575*m.x70**0 + m.x27 == 0)

m.c11 = Constraint(expr=-130.557545929798*m.x71**0 + m.x28 == 0)

m.c12 = Constraint(expr=-135.77984776699*m.x72**0 + m.x29 == 0)

m.c13 = Constraint(expr=-141.21104167767*m.x73**0 + m.x30 == 0)

m.c14 = Constraint(expr=-146.859483344776*m.x74**0 + m.x31 == 0)

m.c15 = Constraint(expr=-152.733862678567*m.x75**0 + m.x32 == 0)

m.c16 = Constraint(expr=-158.84321718571*m.x76**0 + m.x33 == 0)

m.c17 = Constraint(expr=-165.196945873138*m.x77**0 + m.x34 == 0)

m.c18 = Constraint(expr=m.x61**0.2*m.x35 + m.x1 - m.x18 == 0)

m.c19 = Constraint(expr=m.x62**0.2*m.x36 + m.x2 - m.x19 == 0)

m.c20 = Constraint(expr=m.x63**0.2*m.x37 + m.x3 - m.x20 == 0)

m.c21 = Constraint(expr=m.x64**0.2*m.x38 + m.x4 - m.x21 == 0)

m.c22 = Constraint(expr=m.x65**0.2*m.x39 + m.x5 - m.x22 == 0)

m.c23 = Constraint(expr=m.x66**0.2*m.x40 + m.x6 - m.x23 == 0)

m.c24 = Constraint(expr=m.x67**0.2*m.x41 + m.x7 - m.x24 == 0)

m.c25 = Constraint(expr=m.x68**0.2*m.x42 + m.x8 - m.x25 == 0)

m.c26 = Constraint(expr=m.x69**0.2*m.x43 + m.x9 - m.x26 == 0)

m.c27 = Constraint(expr=m.x70**0.2*m.x44 + m.x10 - m.x27 == 0)

m.c28 = Constraint(expr=m.x71**0.2*m.x45 + m.x11 - m.x28 == 0)

m.c29 = Constraint(expr=m.x72**0.2*m.x46 + m.x12 - m.x29 == 0)

m.c30 = Constraint(expr=m.x73**0.2*m.x47 + m.x13 - m.x30 == 0)

m.c31 = Constraint(expr=m.x74**0.2*m.x48 + m.x14 - m.x31 == 0)

m.c32 = Constraint(expr=m.x75**0.2*m.x49 + m.x15 - m.x32 == 0)

m.c33 = Constraint(expr=m.x76**0.2*m.x50 + m.x16 - m.x33 == 0)

m.c34 = Constraint(expr=m.x77**0.2*m.x51 + m.x17 - m.x34 == 0)

m.c35 = Constraint(expr=-0.00429596009984836*m.x18*(-3 + m.x84) - m.x35 + m.x36 == 0)

m.c36 = Constraint(expr=-0.00429596009984836*m.x19*(-3 + m.x85) - m.x36 + m.x37 == 0)

m.c37 = Constraint(expr=-0.00429596009984836*m.x20*(-3 + m.x86) - m.x37 + m.x38 == 0)

m.c38 = Constraint(expr=-0.00429596009984836*m.x21*(-3 + m.x87) - m.x38 + m.x39 == 0)

m.c39 = Constraint(expr=-0.00429596009984836*m.x22*(-3 + m.x88) - m.x39 + m.x40 == 0)

m.c40 = Constraint(expr=-0.00429596009984836*m.x23*(-3 + m.x89) - m.x40 + m.x41 == 0)

m.c41 = Constraint(expr=-0.00429596009984836*m.x24*(-3 + m.x90) - m.x41 + m.x42 == 0)

m.c42 = Constraint(expr=-0.00429596009984836*m.x25*(-3 + m.x91) - m.x42 + m.x43 == 0)

m.c43 = Constraint(expr=-0.00429596009984836*m.x26*(-3 + m.x92) - m.x43 + m.x44 == 0)

m.c44 = Constraint(expr=-0.00429596009984836*m.x27*(-3 + m.x93) - m.x44 + m.x45 == 0)

m.c45 = Constraint(expr=-0.00429596009984836*m.x28*(-3 + m.x94) - m.x45 + m.x46 == 0)

m.c46 = Constraint(expr=-0.00429596009984836*m.x29*(-3 + m.x95) - m.x46 + m.x47 == 0)

m.c47 = Constraint(expr=-0.00429596009984836*m.x30*(-3 + m.x96) - m.x47 + m.x48 == 0)

m.c48 = Constraint(expr=-0.00429596009984836*m.x31*(-3 + m.x97) - m.x48 + m.x49 == 0)

m.c49 = Constraint(expr=-0.00429596009984836*m.x32*(-3 + m.x98) - m.x49 + m.x50 == 0)

m.c50 = Constraint(expr=-0.00429596009984836*m.x33*(-3 + m.x99) - m.x50 + m.x51 == 0)

m.c51 = Constraint(expr= - 0.5*m.x52 + m.x78 == 0)

m.c52 = Constraint(expr= - 0.3*m.x52 - 0.5*m.x53 + m.x79 == 0)

m.c53 = Constraint(expr= - 0.2*m.x52 - 0.3*m.x53 - 0.5*m.x54 + m.x80 == 0)

m.c54 = Constraint(expr= - 0.2*m.x53 - 0.3*m.x54 - 0.5*m.x55 + m.x81 == 0)

m.c55 = Constraint(expr= - 0.2*m.x54 - 0.3*m.x55 - 0.5*m.x56 + m.x82 == 0)

m.c56 = Constraint(expr= - 0.2*m.x55 - 0.3*m.x56 - 0.5*m.x57 + m.x83 == 0)

m.c57 = Constraint(expr= - 0.2*m.x56 - 0.3*m.x57 - 0.5*m.x58 + m.x84 == 0)

m.c58 = Constraint(expr= - 0.2*m.x57 - 0.3*m.x58 - 0.5*m.x59 + m.x85 == 0)

m.c59 = Constraint(expr= - 0.2*m.x58 - 0.3*m.x59 - 0.5*m.x60 + m.x86 == 0)

m.c60 = Constraint(expr= - 0.2*m.x59 - 0.3*m.x60 - 0.5*m.x61 + m.x87 == 0)

m.c61 = Constraint(expr= - 0.2*m.x60 - 0.3*m.x61 - 0.5*m.x62 + m.x88 == 0)

m.c62 = Constraint(expr= - 0.2*m.x61 - 0.3*m.x62 - 0.5*m.x63 + m.x89 == 0)

m.c63 = Constraint(expr= - 0.2*m.x62 - 0.3*m.x63 - 0.5*m.x64 + m.x90 == 0)

m.c64 = Constraint(expr= - 0.2*m.x63 - 0.3*m.x64 - 0.5*m.x65 + m.x91 == 0)

m.c65 = Constraint(expr= - 0.2*m.x64 - 0.3*m.x65 - 0.5*m.x66 + m.x92 == 0)

m.c66 = Constraint(expr= - 0.2*m.x65 - 0.3*m.x66 - 0.5*m.x67 + m.x93 == 0)

m.c67 = Constraint(expr= - 0.2*m.x66 - 0.3*m.x67 - 0.5*m.x68 + m.x94 == 0)

m.c68 = Constraint(expr= - 0.2*m.x67 - 0.3*m.x68 - 0.5*m.x69 + m.x95 == 0)

m.c69 = Constraint(expr= - 0.2*m.x68 - 0.3*m.x69 - 0.5*m.x70 + m.x96 == 0)

m.c70 = Constraint(expr= - 0.2*m.x69 - 0.3*m.x70 - 0.5*m.x71 + m.x97 == 0)

m.c71 = Constraint(expr= - 0.2*m.x70 - 0.3*m.x71 - 0.5*m.x72 + m.x98 == 0)

m.c72 = Constraint(expr= - 0.2*m.x71 - 0.3*m.x72 - 0.5*m.x73 + m.x99 == 0)

m.c73 = Constraint(expr= - 0.2*m.x72 - 0.3*m.x73 - 0.5*m.x74 + m.x100 == 0)

m.c74 = Constraint(expr= - 0.2*m.x73 - 0.3*m.x74 - 0.5*m.x75 + m.x101 == 0)

m.c75 = Constraint(expr= - 0.2*m.x74 - 0.3*m.x75 - 0.5*m.x76 + m.x102 == 0)

m.c76 = Constraint(expr= - 0.2*m.x75 - 0.3*m.x76 - 0.5*m.x77 + m.x103 == 0)

m.c77 = Constraint(expr=-(0.439288387703293*m.x61*m.x1 + 0.426493580294459*m.x62*m.x2 + 0.414071437179087*m.x63*m.x3 + 
                        0.402011104057366*m.x64*m.x4 + 0.390302042774142*m.x65*m.x5 + 0.378934022110817*m.x66*m.x6 + 
                        0.367897108845453*m.x67*m.x7 + 0.357181659073256*m.x68*m.x8 + 0.34677830977986*m.x69*m.x9 + 
                        0.336677970660058*m.x70*m.x10 + 0.326871816174814*m.x71*m.x11 + 0.317351277839625*m.x72*m.x12 + 
                        0.3081080367375*m.x73*m.x13 + 0.29913401625*m.x74*m.x14 + 0.290421375*m.x75*m.x15 + 0.2819625*
                        m.x76*m.x16 + 0.27375*m.x77*m.x17) + m.x104 == -752.983789346618)

m.c78 = Constraint(expr=-0.25*((11.77125 - 0.365*m.x1)*m.x77 + (12.86625 - 0.365*m.x2)*m.x77 + (13.96125 - 0.365*m.x3)*
                        m.x77 + (15.05625 - 0.365*m.x4)*m.x77 + (16.15125 - 0.365*m.x5)*m.x77 + (17.24625 - 0.365*m.x6)*
                        m.x77 + (18.34125 - 0.365*m.x7)*m.x77 + (18.66975 - 0.365*m.x8)*m.x77 + (18.99825 - 0.365*m.x9)*
                        m.x77 + (19.32675 - 0.365*m.x10)*m.x77 + (19.65525 - 0.365*m.x11)*m.x77 + (19.98375 - 0.365*
                        m.x12)*m.x77 + (20.31225 - 0.365*m.x13)*m.x77 + (20.64075 - 0.365*m.x14)*m.x77 + (20.96925 - 
                        0.365*m.x15)*m.x77 + (21.29775 - 0.365*m.x16)*m.x77 + (21.62625 - 0.365*m.x17)*m.x77) + m.x105
                         == 0)
