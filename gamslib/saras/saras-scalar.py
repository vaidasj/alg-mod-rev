#  NLP written by GAMS Convert at 12/13/18 11:40:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        110       64        0       46        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        100      100        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        421      385       36        0
#  
#  Warning: This is a scaled version of the original model
#  =======================================================
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
m.x52 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x62 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x63 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x64 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x65 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x66 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x67 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x68 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x69 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x70 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x73 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x74 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x77 = Var(within=Reals,bounds=(None,None),initialize=0)
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

m.obj = Objective(expr=   m.x99, sense=maximize)

m.c1 = Constraint(expr=   8.531*m.x1 + 8.531*m.x2 + 8.531*m.x3 + 0.8531*m.x4 + 0.8531*m.x5 + 0.8531*m.x6 + 0.8531*m.x7
                        + 0.8531*m.x8 + 0.8531*m.x9 + 0.8531*m.x10 + 0.08531*m.x11 + 0.8531*m.x12 + 0.495*m.x13
                        + 0.495*m.x14 + 0.495*m.x15 + 0.0495*m.x16 + 0.0495*m.x17 + 0.0495*m.x18 + 0.0495*m.x19
                        + 0.0495*m.x20 + 0.00495*m.x21 + 0.0495*m.x22 + 0.0495*m.x23 + 0.0495*m.x24 <= 427.28331)

m.c2 = Constraint(expr=   0.8531*m.x7 + 0.8531*m.x8 + 0.8531*m.x9 + 0.8531*m.x10 + 0.08531*m.x11 + 0.8531*m.x12
                        + 0.0495*m.x19 + 0.0495*m.x20 + 0.00495*m.x21 + 0.0495*m.x22 + 0.0495*m.x23 + 0.0495*m.x24
                        <= 10.086806)

m.c3 = Constraint(expr=   0.639825*m.x25 + 0.42655*m.x26 + 0.213275*m.x30 + 0.037125*m.x31 + 0.02475*m.x32
                        + 0.012375*m.x36 <= 761.25727)

m.c4 = Constraint(expr=   8.531*m.x1 + 8.531*m.x2 + 8.531*m.x3 + 0.8531*m.x4 + 0.8531*m.x5 + 0.8531*m.x6 + 0.8531*m.x7
                        + 0.8531*m.x8 + 0.8531*m.x9 + 0.8531*m.x10 + 0.08531*m.x11 + 0.8531*m.x12 + 0.495*m.x13
                        + 0.495*m.x14 + 0.495*m.x15 + 0.0495*m.x16 + 0.0495*m.x17 + 0.0495*m.x18 + 0.0495*m.x19
                        + 0.0495*m.x20 + 0.00495*m.x21 + 0.0495*m.x22 + 0.0495*m.x23 + 0.0495*m.x24 + 0.639825*m.x25
                        + 0.42655*m.x26 + 0.213275*m.x30 + 0.037125*m.x31 + 0.02475*m.x32 + 0.012375*m.x36
                        <= 1188.540249)

m.c5 = Constraint(expr=   5.45258865*m.x7 + 5.45258865*m.x8 + 5.63046*m.x9 + 4.2655*m.x10 + 0.383895*m.x11
                        + 5.2132941*m.x12 + 0.31637925*m.x19 + 0.31637925*m.x20 + 0.03267*m.x21 + 0.2475*m.x22
                        + 0.22275*m.x23 + 0.3024945*m.x24 <= 260.2933358)

m.c6 = Constraint(expr=   41.682466*m.x1 + 41.682466*m.x2 + 25.593*m.x3 + 1.27965*m.x4 + 1.7062*m.x5 + 4.8805851*m.x6
                        + 10.2269628*m.x7 + 10.2269628*m.x8 + 13.3416309*m.x9 + 3.83895*m.x10 + 0.51186*m.x11
                        + 10.4999548*m.x12 + 2.41857*m.x13 + 2.41857*m.x14 + 1.485*m.x15 + 0.07425*m.x16 + 0.099*m.x17
                        + 0.2831895*m.x18 + 0.593406*m.x19 + 0.593406*m.x20 + 0.07741305*m.x21 + 0.22275*m.x22
                        + 0.297*m.x23 + 0.609246*m.x24 <= 1491.648)

m.c7 = Constraint(expr=   m.x1 + m.x2 + m.x3 + 0.1*m.x4 + 0.1*m.x5 + 0.1*m.x6 + 0.1*m.x7 + 0.1*m.x8 + 0.1*m.x9
                        + 0.1*m.x10 + 0.01*m.x11 + 0.1*m.x12 <= 49.605)

m.c8 = Constraint(expr=   m.x13 + m.x14 + m.x15 + 0.1*m.x16 + 0.1*m.x17 + 0.1*m.x18 + 0.1*m.x19 + 0.1*m.x20 + 0.01*m.x21
                        + 0.1*m.x22 + 0.1*m.x23 + 0.1*m.x24 <= 8.289)

m.c9 = Constraint(expr=   0.1*m.x7 + 0.1*m.x8 + 0.1*m.x9 + 0.1*m.x10 + 0.01*m.x11 + 0.1*m.x12 <= 1.141)

m.c10 = Constraint(expr=   0.1*m.x19 + 0.1*m.x20 + 0.01*m.x21 + 0.1*m.x22 + 0.1*m.x23 + 0.1*m.x24 <= 0.713)

m.c11 = Constraint(expr=   0.75*m.x25 + 0.5*m.x26 + 0.25*m.x30 <= 874.25)

m.c12 = Constraint(expr=   0.75*m.x31 + 0.5*m.x32 + 0.25*m.x36 <= 311.81)

m.c13 = Constraint(expr=   m.x1 + m.x2 + m.x3 + 0.1*m.x4 + 0.1*m.x5 + 0.1*m.x6 + 0.1*m.x7 + 0.1*m.x8 + 0.1*m.x9
                         + 0.1*m.x10 + 0.01*m.x11 + 0.1*m.x12 + 0.075*m.x25 + 0.05*m.x26 + 0.025*m.x30 <= 137.03)

m.c14 = Constraint(expr=   m.x13 + m.x14 + m.x15 + 0.1*m.x16 + 0.1*m.x17 + 0.1*m.x18 + 0.1*m.x19 + 0.1*m.x20
                         + 0.01*m.x21 + 0.1*m.x22 + 0.1*m.x23 + 0.1*m.x24 + 0.075*m.x31 + 0.05*m.x32 + 0.025*m.x36
                         <= 39.469)

m.c15 = Constraint(expr=   0.63915*m.x7 + 0.63915*m.x8 + 0.66*m.x9 + 0.5*m.x10 + 0.045*m.x11 + 0.6111*m.x12
                         <= 30.538129)

m.c16 = Constraint(expr=   0.63915*m.x19 + 0.63915*m.x20 + 0.066*m.x21 + 0.5*m.x22 + 0.45*m.x23 + 0.6111*m.x24
                         <= 3.798454)

m.c17 = Constraint(expr=   10*m.x1 <= 75.04670392)

m.c18 = Constraint(expr=   10*m.x2 <= 43.78047761)

m.c19 = Constraint(expr=   10*m.x3 <= 21.21562135)

m.c20 = Constraint(expr=   m.x4 <= 1.160116)

m.c21 = Constraint(expr=   m.x5 <= 4.93069302)

m.c22 = Constraint(expr=   m.x6 <= 21.25832562)

m.c23 = Constraint(expr=   m.x7 <= 2.32103208)

m.c24 = Constraint(expr=   m.x8 <= 1.35403539)

m.c25 = Constraint(expr=   m.x9 <= 1.11661165)

m.c26 = Constraint(expr=   m.x10 <= 0.290029)

m.c27 = Constraint(expr=   0.1*m.x11 <= 0.04980498)

m.c28 = Constraint(expr=   m.x12 <= 0.43384338)

m.c29 = Constraint(expr=   10*m.x13 <= 3.53115308)

m.c30 = Constraint(expr=   10*m.x14 <= 6.66456639)

m.c31 = Constraint(expr=   10*m.x15 <= 0.2470247)

m.c32 = Constraint(expr=   m.x19 <= 0.10921092)

m.c33 = Constraint(expr=   m.x20 <= 0.20612061)

m.c34 = Constraint(expr=   0.1*m.x21 <= 0.0130013)

m.c35 = Constraint(expr=   m.x25 <= 52.0052)

m.c36 = Constraint(expr=   m.x26 <= 131.0131)

m.c37 = Constraint(expr=   m.x27 <= 2.0002)

m.c38 = Constraint(expr=   m.x28 <= 5745.5745)

m.c39 = Constraint(expr=   m.x29 <= 219.0219)

m.c40 = Constraint(expr=   m.x30 <= 6.0006)

m.c41 = Constraint(expr=   m.x31 <= 10.001)

m.c42 = Constraint(expr=   m.x32 <= 23.0023)

m.c43 = Constraint(expr=   m.x33 <= 1.0001)

m.c44 = Constraint(expr=   m.x34 <= 13.0013)

m.c45 = Constraint(expr=   m.x35 <= 5.0005)

m.c46 = Constraint(expr=   m.x36 <= 1.0001)

m.c47 = Constraint(expr=   28.1921773174601*m.x1 - 0.001*m.x37 == 0)

m.c48 = Constraint(expr=   28.8154548977757*m.x2 - 0.001*m.x38 == 0)

m.c49 = Constraint(expr=   9.88437243781001*m.x3 - 0.001*m.x39 == 0)

m.c50 = Constraint(expr=   0.880103935195232*m.x4 - 0.001*m.x40 == 0)

m.c51 = Constraint(expr=   2.21977730735243*m.x5 - 0.001*m.x41 == 0)

m.c52 = Constraint(expr=   1.28149351026794*m.x6 - 0.001*m.x42 == 0)

m.c53 = Constraint(expr=   1.83272760894444*m.x7 - 0.001*m.x43 == 0)

m.c54 = Constraint(expr=   2.17974731991291*m.x8 - 0.001*m.x44 == 0)

m.c55 = Constraint(expr=   2.49266340711336*m.x9 - 0.001*m.x45 == 0)

m.c56 = Constraint(expr=   1.28094609236049*m.x10 - 0.001*m.x46 == 0)

m.c57 = Constraint(expr=   0.157843714250131*m.x11 - 0.001*m.x47 == 0)

m.c58 = Constraint(expr=   0.619926966029695*m.x12 - 0.001*m.x48 == 0)

m.c59 = Constraint(expr=   19.6006440981807*m.x13 - 0.001*m.x49 == 0)

m.c60 = Constraint(expr=   23.2121947614753*m.x14 - 0.001*m.x50 == 0)

m.c61 = Constraint(expr=   1.7570439646724*m.x15 - 0.001*m.x51 == 0)

m.c62 = Constraint(expr= - 2.33612747021679*m.x16 - 0.001*m.x52 == 0)

m.c63 = Constraint(expr= - 1.45315415348163*m.x17 - 0.001*m.x53 == 0)

m.c64 = Constraint(expr= - 1.5919380419427*m.x18 - 0.001*m.x54 == 0)

m.c65 = Constraint(expr=   1.01448634996545*m.x19 - 0.001*m.x55 == 0)

m.c66 = Constraint(expr=   1.21918843940428*m.x20 - 0.001*m.x56 == 0)

m.c67 = Constraint(expr=   0.0867197712485838*m.x21 - 0.001*m.x57 == 0)

m.c68 = Constraint(expr= - 5.15151671846356*m.x22 - 0.001*m.x58 == 0)

m.c69 = Constraint(expr= - 5.76742577916681*m.x23 - 0.001*m.x59 == 0)

m.c70 = Constraint(expr= - 5.98896560405477*m.x24 - 0.001*m.x60 == 0)

m.c71 = Constraint(expr=   2.40451821059508*m.x25 - 0.001*m.x61 == 0)

m.c72 = Constraint(expr=   0.915798780516372*m.x26 - 0.001*m.x62 == 0)

m.c73 = Constraint(expr=   2.41249500999079*m.x27 - 0.001*m.x63 == 0)

m.c74 = Constraint(expr=   0.0170158777478242*m.x28 - 0.001*m.x64 == 0)

m.c75 = Constraint(expr=   0.048935447394501*m.x29 - 0.001*m.x65 == 0)

m.c76 = Constraint(expr=   7.18934665819511*m.x30 - 0.001*m.x66 == 0)

m.c77 = Constraint(expr=   0.761683064015574*m.x31 - 0.001*m.x67 == 0)

m.c78 = Constraint(expr=   0.35653968074654*m.x32 - 0.001*m.x68 == 0)

m.c79 = Constraint(expr=   0.649922850788946*m.x33 - 0.001*m.x69 == 0)

m.c80 = Constraint(expr=   0.0112040305186571*m.x34 - 0.001*m.x70 == 0)

m.c81 = Constraint(expr=   0.0232333665975574*m.x35 - 0.001*m.x71 == 0)

m.c82 = Constraint(expr=   4.32895090109864*m.x36 - 0.001*m.x72 == 0)

m.c83 = Constraint(expr=   m.x37 + m.x43 - m.x73 == 0)

m.c84 = Constraint(expr=   m.x38 + m.x44 - m.x74 == 0)

m.c85 = Constraint(expr=   m.x39 + m.x45 - m.x75 == 0)

m.c86 = Constraint(expr=   m.x40 + m.x46 - m.x76 == 0)

m.c87 = Constraint(expr=   m.x41 + m.x47 - m.x77 == 0)

m.c88 = Constraint(expr=   m.x42 + m.x48 - m.x78 == 0)

m.c89 = Constraint(expr=   m.x61 - m.x79 == 0)

m.c90 = Constraint(expr=   m.x62 - m.x80 == 0)

m.c91 = Constraint(expr=   m.x63 - m.x81 == 0)

m.c92 = Constraint(expr=   m.x64 - m.x82 == 0)

m.c93 = Constraint(expr=   m.x65 - m.x83 == 0)

m.c94 = Constraint(expr=   m.x66 - m.x84 == 0)

m.c95 = Constraint(expr=   m.x49 + m.x55 - m.x85 == 0)

m.c96 = Constraint(expr=   m.x50 + m.x56 - m.x86 == 0)

m.c97 = Constraint(expr=   m.x51 + m.x57 - m.x87 == 0)

m.c98 = Constraint(expr=   m.x52 + m.x58 - m.x88 == 0)

m.c99 = Constraint(expr=   m.x53 + m.x59 - m.x89 == 0)

m.c100 = Constraint(expr=   m.x54 + m.x60 - m.x90 == 0)

m.c101 = Constraint(expr=   m.x67 - m.x91 == 0)

m.c102 = Constraint(expr=   m.x68 - m.x92 == 0)

m.c103 = Constraint(expr=   m.x69 - m.x93 == 0)

m.c104 = Constraint(expr=   m.x70 - m.x94 == 0)

m.c105 = Constraint(expr=   m.x71 - m.x95 == 0)

m.c106 = Constraint(expr=   m.x72 - m.x96 == 0)

m.c107 = Constraint(expr=0.01*(-3e-7*((9668185.94900287*m.x1 + 966818.594900287*m.x7)*(10*m.x1 + m.x7) + (
                         7344508.47918975*m.x1 + 734450.847918975*m.x7)*(10*m.x2 + m.x8) + (471080.088019841*m.x1 + 
                         47108.0088019841*m.x7)*(10*m.x3 + m.x9) + (4118182.80252375*m.x1 + 411818.280252375*m.x7)*(m.x4
                          + m.x10) + (4715546.30073576*m.x1 + 471554.630073576*m.x7)*(m.x5 + 0.1*m.x11) + (
                         1259907.90495681*m.x1 + 125990.790495681*m.x7)*(m.x6 + m.x12) + (-337066.036849432*m.x1 - 
                         33706.6036849432*m.x7)*m.x25 + (9471.51007861957*m.x1 + 947.151007861957*m.x7)*m.x26 + (
                         867293.696524623*m.x1 + 86729.3696524623*m.x7)*m.x27 + (-6164.49756499996*m.x1 - 
                         616.449756499996*m.x7)*m.x28 + (-24604.4883646945*m.x1 - 2460.44883646945*m.x7)*m.x29 + (
                         1054627.37437509*m.x1 + 105462.737437509*m.x7)*m.x30 + (7344508.47918975*m.x2 + 
                         734450.847918975*m.x8)*(10*m.x1 + m.x7) + (6615556.70351843*m.x2 + 661555.670351843*m.x8)*(10*
                         m.x2 + m.x8) + (598427.695801276*m.x2 + 59842.7695801276*m.x8)*(10*m.x3 + m.x9) + (
                         4033649.04064473*m.x2 + 403364.904064473*m.x8)*(m.x4 + m.x10) + (5373759.99889499*m.x2 + 
                         537375.999889499*m.x8)*(m.x5 + 0.1*m.x11) + (1252539.99797342*m.x2 + 125253.999797342*m.x8)*(
                         m.x6 + m.x12) + (-175789.737137736*m.x2 - 17578.9737137736*m.x8)*m.x25 + (-905.441041110594*
                         m.x2 - 90.5441041110594*m.x8)*m.x26 + (768613.343504569*m.x2 + 76861.3343504569*m.x8)*m.x27 + (
                         -3157.52120294897*m.x2 - 315.752120294897*m.x8)*m.x28 + (-9132.28550283759*m.x2 - 
                         913.228550283759*m.x8)*m.x29 + (642903.530572393*m.x2 + 64290.3530572393*m.x8)*m.x30 + (
                         471080.088019841*m.x3 + 47108.0088019841*m.x9)*(10*m.x1 + m.x7) + (598427.695801276*m.x3 + 
                         59842.7695801276*m.x9)*(10*m.x2 + m.x8) + (2857134.96513149*m.x3 + 285713.496513149*m.x9)*(10*
                         m.x3 + m.x9) + (675970.291091427*m.x3 + 67597.0291091427*m.x9)*(m.x4 + m.x10) + (-
                         1945913.55175262*m.x3 - 194591.355175262*m.x9)*(m.x5 + 0.1*m.x11) + (835119.672565365*m.x3 + 
                         83511.9672565365*m.x9)*(m.x6 + m.x12) + (360409.788887566*m.x3 + 36040.9788887566*m.x9)*m.x25
                          + (59699.5222612464*m.x3 + 5969.95222612464*m.x9)*m.x26 + (-48293.0097590486*m.x3 - 
                         4829.30097590486*m.x9)*m.x27 + (6182.61940034403*m.x3 + 618.261940034403*m.x9)*m.x28 + (
                         1728.45456073776*m.x3 + 172.845456073776*m.x9)*m.x29 + (-226543.261741486*m.x3 - 
                         22654.3261741486*m.x9)*m.x30 + (411818.280252375*m.x4 + 411818.280252375*m.x10)*(10*m.x1 + m.x7
                         ) + (403364.904064473*m.x4 + 403364.904064473*m.x10)*(10*m.x2 + m.x8) + (67597.0291091427*m.x4
                          + 67597.0291091427*m.x10)*(10*m.x3 + m.x9) + (310807.514381267*m.x4 + 310807.514381267*m.x10)*
                         (m.x4 + m.x10) + (285219.744761226*m.x4 + 285219.744761226*m.x10)*(m.x5 + 0.1*m.x11) + (
                         122615.912296475*m.x4 + 122615.912296475*m.x10)*(m.x6 + m.x12) + (8029.1578833468*m.x4 + 
                         8029.1578833468*m.x10)*m.x25 + (1300.12086500691*m.x4 + 1300.12086500691*m.x10)*m.x26 + (
                         45957.3976594906*m.x4 + 45957.3976594906*m.x10)*m.x27 + (56.4847216873283*m.x4 + 
                         56.4847216873283*m.x10)*m.x28 + (-532.320112443521*m.x4 - 532.320112443521*m.x10)*m.x29 + (
                         25341.1737992422*m.x4 + 25341.1737992422*m.x10)*m.x30 + (471554.630073576*m.x5 + 
                         47155.4630073576*m.x11)*(10*m.x1 + m.x7) + (537375.999889499*m.x5 + 53737.5999889499*m.x11)*(10
                         *m.x2 + m.x8) + (-194591.355175262*m.x5 - 19459.1355175262*m.x11)*(10*m.x3 + m.x9) + (
                         285219.744761226*m.x5 + 28521.9744761226*m.x11)*(m.x4 + m.x10) + (982781.865509899*m.x5 + 
                         98278.1865509899*m.x11)*(m.x5 + 0.1*m.x11) + (32220.8371700098*m.x5 + 3222.08371700098*m.x11)*(
                         m.x6 + m.x12) + (-42147.1724754194*m.x5 - 4214.71724754194*m.x11)*m.x25 + (-8050.496237445*m.x5
                          - 805.0496237445*m.x11)*m.x26 + (63486.3171819452*m.x5 + 6348.63171819452*m.x11)*m.x27 + (-
                         369.421091584713*m.x5 - 36.9421091584713*m.x11)*m.x28 + (1832.51638704575*m.x5 + 
                         183.251638704575*m.x11)*m.x29 + (171355.410665771*m.x5 + 17135.5410665771*m.x11)*m.x30 + (
                         125990.790495681*m.x6 + 125990.790495681*m.x12)*(10*m.x1 + m.x7) + (125253.999797342*m.x6 + 
                         125253.999797342*m.x12)*(10*m.x2 + m.x8) + (83511.9672565365*m.x6 + 83511.9672565365*m.x12)*(10
                         *m.x3 + m.x9) + (122615.912296475*m.x6 + 122615.912296475*m.x12)*(m.x4 + m.x10) + (
                         32220.8371700098*m.x6 + 32220.8371700098*m.x12)*(m.x5 + 0.1*m.x11) + (228071.196838972*m.x6 + 
                         228071.196838972*m.x12)*(m.x6 + m.x12) + (46593.0189217923*m.x6 + 46593.0189217923*m.x12)*m.x25
                          + (6898.58380716422*m.x6 + 6898.58380716422*m.x12)*m.x26 + (15907.3758065143*m.x6 + 
                         15907.3758065143*m.x12)*m.x27 + (256.806936787146*m.x6 + 256.806936787146*m.x12)*m.x28 + (-
                         1759.43612320178*m.x6 - 1759.43612320178*m.x12)*m.x29 + (218.634701384318*m.x6 + 
                         218.634701384318*m.x12)*m.x30 + (-33706.6036849432*m.x25*(10*m.x1 + m.x7)) - 17578.9737137736*
                         m.x25*(10*m.x2 + m.x8) + 36040.9788887566*m.x25*(10*m.x3 + m.x9) + 8029.1578833468*m.x25*(m.x4
                          + m.x10) - 42147.1724754194*m.x25*(m.x5 + 0.1*m.x11) + 46593.0189217923*m.x25*(m.x6 + m.x12)
                          + 20282.7643676708*m.x25*m.x25 + 2372.81329045202*m.x25*m.x26 - 2753.94542274455*m.x25*m.x27
                          + 237.635308440264*m.x25*m.x28 - 10.4892894984994*m.x25*m.x29 - 22837.5960429412*m.x25*m.x30
                          + 947.151007861957*m.x26*(10*m.x1 + m.x7) - 90.5441041110594*m.x26*(10*m.x2 + m.x8) + 
                         5969.95222612464*m.x26*(10*m.x3 + m.x9) + 1300.12086500691*m.x26*(m.x4 + m.x10) - 
                         8050.496237445*m.x26*(m.x5 + 0.1*m.x11) + 6898.58380716422*m.x26*(m.x6 + m.x12) + 
                         2372.81329045202*m.x26*m.x25 + 418.238479608684*m.x26*m.x26 + 411.192214055523*m.x26*m.x27 + 
                         32.5024833516593*m.x26*m.x28 - 35.7978017543554*m.x26*m.x29 - 3313.86924786199*m.x26*m.x30 + 
                         86729.3696524623*m.x27*(10*m.x1 + m.x7) + 76861.3343504569*m.x27*(10*m.x2 + m.x8) - 
                         4829.30097590486*m.x27*(10*m.x3 + m.x9) + 45957.3976594906*m.x27*(m.x4 + m.x10) + 
                         63486.3171819452*m.x27*(m.x5 + 0.1*m.x11) + 15907.3758065143*m.x27*(m.x6 + m.x12) - 
                         2753.94542274455*m.x27*m.x25 + 411.192214055523*m.x27*m.x26 + 14874.2112069592*m.x27*m.x27 + 
                         2.56689245376958*m.x27*m.x28 - 86.002997739573*m.x27*m.x29 + 6080.5178368139*m.x27*m.x30 + (-
                         616.449756499996*m.x28*(10*m.x1 + m.x7)) - 315.752120294897*m.x28*(10*m.x2 + m.x8) + 
                         618.261940034403*m.x28*(10*m.x3 + m.x9) + 56.4847216873283*m.x28*(m.x4 + m.x10) - 
                         369.421091584713*m.x28*(m.x5 + 0.1*m.x11) + 256.806936787146*m.x28*(m.x6 + m.x12) + 
                         237.635308440264*m.x28*m.x25 + 32.5024833516593*m.x28*m.x26 + 2.56689245376958*m.x28*m.x27 + 
                         6.49098796960097*m.x28*m.x28 + 9.99030594536413*m.x28*m.x29 - 340.895470529113*m.x28*m.x30 + (-
                         2460.44883646945*m.x29*(10*m.x1 + m.x7)) - 913.228550283759*m.x29*(10*m.x2 + m.x8) + 
                         172.845456073776*m.x29*(10*m.x3 + m.x9) - 532.320112443521*m.x29*(m.x4 + m.x10) + 
                         1832.51638704575*m.x29*(m.x5 + 0.1*m.x11) - 1759.43612320178*m.x29*(m.x6 + m.x12) - 
                         10.4892894984994*m.x29*m.x25 - 35.7978017543554*m.x29*m.x26 - 86.002997739573*m.x29*m.x27 + 
                         9.99030594536413*m.x29*m.x28 + 53.5941900937404*m.x29*m.x29 + 389.448396527973*m.x29*m.x30 + 
                         105462.737437509*m.x30*(10*m.x1 + m.x7) + 64290.3530572393*m.x30*(10*m.x2 + m.x8) - 
                         22654.3261741486*m.x30*(10*m.x3 + m.x9) + 25341.1737992422*m.x30*(m.x4 + m.x10) + 
                         171355.410665771*m.x30*(m.x5 + 0.1*m.x11) + 218.634701384318*m.x30*(m.x6 + m.x12) - 
                         22837.5960429412*m.x30*m.x25 - 3313.86924786199*m.x30*m.x26 + 6080.5178368139*m.x30*m.x27 - 
                         340.895470529113*m.x30*m.x28 + 389.448396527973*m.x30*m.x29 + 284249.176092168*m.x30*m.x30) - 
                         780*m.x1 - 780*m.x2 - 780*m.x3 - 78*m.x4 - 78*m.x5 - 78*m.x6 - 600*m.x7 - 600*m.x8 - 600*m.x9
                          - 600*m.x10 - 60*m.x11 - 600*m.x12 - 36*m.x25 - 24*m.x26 - 12*m.x30) + 0.01*m.x73 + 0.01*m.x74
                          + 0.01*m.x75 + 0.01*m.x76 + 0.01*m.x77 + 0.01*m.x78 + 0.01*m.x79 + 0.01*m.x80 + 0.01*m.x81
                          + 0.01*m.x82 + 0.01*m.x83 + 0.01*m.x84 - 0.01*m.x97 == -866.1192)

m.c108 = Constraint(expr=0.01*(-2e-5*((9668185.94900287*m.x13 + 966818.594900287*m.x19)*(10*m.x13 + m.x19) + (
                         7344508.47918975*m.x13 + 734450.847918975*m.x19)*(10*m.x14 + m.x20) + (471080.088019841*m.x13
                          + 47108.0088019841*m.x19)*(10*m.x15 + 0.1*m.x21) + (4118182.80252375*m.x13 + 411818.280252375*
                         m.x19)*(m.x16 + m.x22) + (4715546.30073576*m.x13 + 471554.630073576*m.x19)*(m.x17 + m.x23) + (
                         1259907.90495681*m.x13 + 125990.790495681*m.x19)*(m.x18 + m.x24) + (-337066.036849432*m.x13 - 
                         33706.6036849432*m.x19)*m.x31 + (9471.51007861957*m.x13 + 947.151007861957*m.x19)*m.x32 + (
                         867293.696524623*m.x13 + 86729.3696524623*m.x19)*m.x33 + (-6164.49756499996*m.x13 - 
                         616.449756499996*m.x19)*m.x34 + (-24604.4883646945*m.x13 - 2460.44883646945*m.x19)*m.x35 + (
                         1054627.37437509*m.x13 + 105462.737437509*m.x19)*m.x36 + (7344508.47918975*m.x14 + 
                         734450.847918975*m.x20)*(10*m.x13 + m.x19) + (6615556.70351843*m.x14 + 661555.670351843*m.x20)*
                         (10*m.x14 + m.x20) + (598427.695801276*m.x14 + 59842.7695801276*m.x20)*(10*m.x15 + 0.1*m.x21)
                          + (4033649.04064473*m.x14 + 403364.904064473*m.x20)*(m.x16 + m.x22) + (5373759.99889499*m.x14
                          + 537375.999889499*m.x20)*(m.x17 + m.x23) + (1252539.99797342*m.x14 + 125253.999797342*m.x20)*
                         (m.x18 + m.x24) + (-175789.737137736*m.x14 - 17578.9737137736*m.x20)*m.x31 + (-905.441041110594
                         *m.x14 - 90.5441041110594*m.x20)*m.x32 + (768613.343504569*m.x14 + 76861.3343504569*m.x20)*
                         m.x33 + (-3157.52120294897*m.x14 - 315.752120294897*m.x20)*m.x34 + (-9132.28550283759*m.x14 - 
                         913.228550283759*m.x20)*m.x35 + (642903.530572393*m.x14 + 64290.3530572393*m.x20)*m.x36 + (
                         471080.088019841*m.x15 + 4710.80088019841*m.x21)*(10*m.x13 + m.x19) + (598427.695801276*m.x15
                          + 5984.27695801276*m.x21)*(10*m.x14 + m.x20) + (2857134.96513149*m.x15 + 28571.3496513149*
                         m.x21)*(10*m.x15 + 0.1*m.x21) + (675970.291091427*m.x15 + 6759.70291091427*m.x21)*(m.x16 + 
                         m.x22) + (-1945913.55175262*m.x15 - 19459.1355175262*m.x21)*(m.x17 + m.x23) + (835119.672565365
                         *m.x15 + 8351.19672565365*m.x21)*(m.x18 + m.x24) + (360409.788887566*m.x15 + 3604.09788887566*
                         m.x21)*m.x31 + (59699.5222612464*m.x15 + 596.995222612464*m.x21)*m.x32 + (-48293.0097590486*
                         m.x15 - 482.930097590486*m.x21)*m.x33 + (6182.61940034403*m.x15 + 61.8261940034403*m.x21)*m.x34
                          + (1728.45456073776*m.x15 + 17.2845456073776*m.x21)*m.x35 + (-226543.261741486*m.x15 - 
                         2265.43261741486*m.x21)*m.x36 + (411818.280252375*m.x16 + 411818.280252375*m.x22)*(10*m.x13 + 
                         m.x19) + (403364.904064473*m.x16 + 403364.904064473*m.x22)*(10*m.x14 + m.x20) + (
                         67597.0291091427*m.x16 + 67597.0291091427*m.x22)*(10*m.x15 + 0.1*m.x21) + (310807.514381267*
                         m.x16 + 310807.514381267*m.x22)*(m.x16 + m.x22) + (285219.744761226*m.x16 + 285219.744761226*
                         m.x22)*(m.x17 + m.x23) + (122615.912296475*m.x16 + 122615.912296475*m.x22)*(m.x18 + m.x24) + (
                         8029.1578833468*m.x16 + 8029.1578833468*m.x22)*m.x31 + (1300.12086500691*m.x16 + 
                         1300.12086500691*m.x22)*m.x32 + (45957.3976594906*m.x16 + 45957.3976594906*m.x22)*m.x33 + (
                         56.4847216873283*m.x16 + 56.4847216873283*m.x22)*m.x34 + (-532.320112443521*m.x16 - 
                         532.320112443521*m.x22)*m.x35 + (25341.1737992422*m.x16 + 25341.1737992422*m.x22)*m.x36 + (
                         471554.630073576*m.x17 + 471554.630073576*m.x23)*(10*m.x13 + m.x19) + (537375.999889499*m.x17
                          + 537375.999889499*m.x23)*(10*m.x14 + m.x20) + (-194591.355175262*m.x17 - 194591.355175262*
                         m.x23)*(10*m.x15 + 0.1*m.x21) + (285219.744761226*m.x17 + 285219.744761226*m.x23)*(m.x16 + 
                         m.x22) + (982781.865509899*m.x17 + 982781.865509899*m.x23)*(m.x17 + m.x23) + (32220.8371700098*
                         m.x17 + 32220.8371700098*m.x23)*(m.x18 + m.x24) + (-42147.1724754194*m.x17 - 42147.1724754194*
                         m.x23)*m.x31 + (-8050.496237445*m.x17 - 8050.496237445*m.x23)*m.x32 + (63486.3171819452*m.x17
                          + 63486.3171819452*m.x23)*m.x33 + (-369.421091584713*m.x17 - 369.421091584713*m.x23)*m.x34 + (
                         1832.51638704575*m.x17 + 1832.51638704575*m.x23)*m.x35 + (171355.410665771*m.x17 + 
                         171355.410665771*m.x23)*m.x36 + (125990.790495681*m.x18 + 125990.790495681*m.x24)*(10*m.x13 + 
                         m.x19) + (125253.999797342*m.x18 + 125253.999797342*m.x24)*(10*m.x14 + m.x20) + (
                         83511.9672565365*m.x18 + 83511.9672565365*m.x24)*(10*m.x15 + 0.1*m.x21) + (122615.912296475*
                         m.x18 + 122615.912296475*m.x24)*(m.x16 + m.x22) + (32220.8371700098*m.x18 + 32220.8371700098*
                         m.x24)*(m.x17 + m.x23) + (228071.196838972*m.x18 + 228071.196838972*m.x24)*(m.x18 + m.x24) + (
                         46593.0189217923*m.x18 + 46593.0189217923*m.x24)*m.x31 + (6898.58380716422*m.x18 + 
                         6898.58380716422*m.x24)*m.x32 + (15907.3758065143*m.x18 + 15907.3758065143*m.x24)*m.x33 + (
                         256.806936787146*m.x18 + 256.806936787146*m.x24)*m.x34 + (-1759.43612320178*m.x18 - 
                         1759.43612320178*m.x24)*m.x35 + (218.634701384318*m.x18 + 218.634701384318*m.x24)*m.x36 + (-
                         33706.6036849432*m.x31*(10*m.x13 + m.x19)) - 17578.9737137736*m.x31*(10*m.x14 + m.x20) + 
                         36040.9788887566*m.x31*(10*m.x15 + 0.1*m.x21) + 8029.1578833468*m.x31*(m.x16 + m.x22) - 
                         42147.1724754194*m.x31*(m.x17 + m.x23) + 46593.0189217923*m.x31*(m.x18 + m.x24) + 
                         20282.7643676708*m.x31*m.x31 + 2372.81329045202*m.x31*m.x32 - 2753.94542274455*m.x31*m.x33 + 
                         237.635308440264*m.x31*m.x34 - 10.4892894984994*m.x31*m.x35 - 22837.5960429412*m.x31*m.x36 + 
                         947.151007861957*m.x32*(10*m.x13 + m.x19) - 90.5441041110594*m.x32*(10*m.x14 + m.x20) + 
                         5969.95222612464*m.x32*(10*m.x15 + 0.1*m.x21) + 1300.12086500691*m.x32*(m.x16 + m.x22) - 
                         8050.496237445*m.x32*(m.x17 + m.x23) + 6898.58380716422*m.x32*(m.x18 + m.x24) + 
                         2372.81329045202*m.x32*m.x31 + 418.238479608684*m.x32*m.x32 + 411.192214055523*m.x32*m.x33 + 
                         32.5024833516593*m.x32*m.x34 - 35.7978017543554*m.x32*m.x35 - 3313.86924786199*m.x32*m.x36 + 
                         86729.3696524623*m.x33*(10*m.x13 + m.x19) + 76861.3343504569*m.x33*(10*m.x14 + m.x20) - 
                         4829.30097590486*m.x33*(10*m.x15 + 0.1*m.x21) + 45957.3976594906*m.x33*(m.x16 + m.x22) + 
                         63486.3171819452*m.x33*(m.x17 + m.x23) + 15907.3758065143*m.x33*(m.x18 + m.x24) - 
                         2753.94542274455*m.x33*m.x31 + 411.192214055523*m.x33*m.x32 + 14874.2112069592*m.x33*m.x33 + 
                         2.56689245376958*m.x33*m.x34 - 86.002997739573*m.x33*m.x35 + 6080.5178368139*m.x33*m.x36 + (-
                         616.449756499996*m.x34*(10*m.x13 + m.x19)) - 315.752120294897*m.x34*(10*m.x14 + m.x20) + 
                         618.261940034403*m.x34*(10*m.x15 + 0.1*m.x21) + 56.4847216873283*m.x34*(m.x16 + m.x22) - 
                         369.421091584713*m.x34*(m.x17 + m.x23) + 256.806936787146*m.x34*(m.x18 + m.x24) + 
                         237.635308440264*m.x34*m.x31 + 32.5024833516593*m.x34*m.x32 + 2.56689245376958*m.x34*m.x33 + 
                         6.49098796960097*m.x34*m.x34 + 9.99030594536413*m.x34*m.x35 - 340.895470529113*m.x34*m.x36 + (-
                         2460.44883646945*m.x35*(10*m.x13 + m.x19)) - 913.228550283759*m.x35*(10*m.x14 + m.x20) + 
                         172.845456073776*m.x35*(10*m.x15 + 0.1*m.x21) - 532.320112443521*m.x35*(m.x16 + m.x22) + 
                         1832.51638704575*m.x35*(m.x17 + m.x23) - 1759.43612320178*m.x35*(m.x18 + m.x24) - 
                         10.4892894984994*m.x35*m.x31 - 35.7978017543554*m.x35*m.x32 - 86.002997739573*m.x35*m.x33 + 
                         9.99030594536413*m.x35*m.x34 + 53.5941900937404*m.x35*m.x35 + 389.448396527973*m.x35*m.x36 + 
                         105462.737437509*m.x36*(10*m.x13 + m.x19) + 64290.3530572393*m.x36*(10*m.x14 + m.x20) - 
                         22654.3261741486*m.x36*(10*m.x15 + 0.1*m.x21) + 25341.1737992422*m.x36*(m.x16 + m.x22) + 
                         171355.410665771*m.x36*(m.x17 + m.x23) + 218.634701384318*m.x36*(m.x18 + m.x24) - 
                         22837.5960429412*m.x36*m.x31 - 3313.86924786199*m.x36*m.x32 + 6080.5178368139*m.x36*m.x33 - 
                         340.895470529113*m.x36*m.x34 + 389.448396527973*m.x36*m.x35 + 284249.176092168*m.x36*m.x36) - 
                         780*m.x13 - 780*m.x14 - 780*m.x15 - 78*m.x16 - 78*m.x17 - 78*m.x18 - 600*m.x19 - 600*m.x20 - 60
                         *m.x21 - 600*m.x22 - 600*m.x23 - 600*m.x24 - 36*m.x31 - 24*m.x32 - 12*m.x36) + 0.01*m.x85
                          + 0.01*m.x86 + 0.01*m.x87 + 0.01*m.x88 + 0.01*m.x89 + 0.01*m.x90 + 0.01*m.x91 + 0.01*m.x92
                          + 0.01*m.x93 + 0.01*m.x94 + 0.01*m.x95 + 0.01*m.x96 - 0.01*m.x98 == -251.5416)

m.c109 = Constraint(expr=   m.x97 + m.x98 - m.x99 == 0)
