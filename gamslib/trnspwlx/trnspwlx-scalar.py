#  MIP written by GAMS Convert at 12/13/18 11:43:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         72       37        3       32        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        115       49       42        0       24        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        337      337        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=25)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=275)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=325)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=275)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x49 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b50 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b51 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b52 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b53 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b54 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b55 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b56 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b57 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b58 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b59 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b60 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b61 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b62 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b63 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b64 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b65 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b66 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b67 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b68 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b69 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b70 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b71 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b72 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b73 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b74 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b75 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b76 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b77 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b78 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b79 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b80 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b81 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b82 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b83 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b84 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b85 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b86 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b87 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b88 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b89 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b90 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b91 = Var(within=Binary,bounds=(0,1),initialize=0)
m.s1s92 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s93 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s94 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s95 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s96 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s97 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s98 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s99 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s100 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s101 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s102 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s103 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s104 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s105 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s106 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s107 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s108 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s109 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s110 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s111 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s112 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s113 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s114 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s1s115 = Var(within=CannotHandle,bounds=(0,None),initialize=0)

suffix sosno integer IN;
suffix ref integer IN;
let m.s1s92.sosno := 1;
let m.s1s92.ref   := 1;
let m.s1s93.sosno := 1;
let m.s1s93.ref   := 2;
let m.s1s94.sosno := 2;
let m.s1s94.ref   := 1;
let m.s1s95.sosno := 2;
let m.s1s95.ref   := 2;
let m.s1s96.sosno := 3;
let m.s1s96.ref   := 1;
let m.s1s97.sosno := 3;
let m.s1s97.ref   := 2;
let m.s1s98.sosno := 4;
let m.s1s98.ref   := 1;
let m.s1s99.sosno := 4;
let m.s1s99.ref   := 2;
let m.s1s100.sosno := 5;
let m.s1s100.ref   := 1;
let m.s1s101.sosno := 5;
let m.s1s101.ref   := 2;
let m.s1s102.sosno := 6;
let m.s1s102.ref   := 1;
let m.s1s103.sosno := 6;
let m.s1s103.ref   := 2;
let m.s1s104.sosno := 7;
let m.s1s104.ref   := 1;
let m.s1s105.sosno := 7;
let m.s1s105.ref   := 2;
let m.s1s106.sosno := 8;
let m.s1s106.ref   := 1;
let m.s1s107.sosno := 8;
let m.s1s107.ref   := 2;
let m.s1s108.sosno := 9;
let m.s1s108.ref   := 1;
let m.s1s109.sosno := 9;
let m.s1s109.ref   := 2;
let m.s1s110.sosno := 10;
let m.s1s110.ref   := 1;
let m.s1s111.sosno := 10;
let m.s1s111.ref   := 2;
let m.s1s112.sosno := 11;
let m.s1s112.ref   := 1;
let m.s1s113.sosno := 11;
let m.s1s113.ref   := 2;
let m.s1s114.sosno := 12;
let m.s1s114.ref   := 1;
let m.s1s115.sosno := 12;
let m.s1s115.ref   := 2;

m.obj = Objective(expr= - 0.0318198051533946*m.x8 - 0.0216374675043084*m.x9 - 0.0229102597104441*m.x10
                        - 0.0318198051533946*m.x11 - 0.0229102597104441*m.x12 - 0.017819090885901*m.x13
                        + 0.0124823035871931*m.x14 + 0.00848796643929129*m.x15 + 0.00898725858277902*m.x16
                        + 0.0124823035871931*m.x17 + 0.00898725858277902*m.x18 + 0.00699009000882812*m.x19
                        + 0.0090951351492436*m.x20 + 0.00618469190148565*m.x21 + 0.00654849730745539*m.x22
                        + 0.0090951351492436*m.x23 + 0.00654849730745539*m.x24 + 0.00509327568357642*m.x25
                        + 0.00752292882162925*m.x26 + 0.00511559159870789*m.x27 + 0.00541650875157306*m.x28
                        + 0.00752292882162925*m.x29 + 0.00541650875157306*m.x30 + 0.00421284014011238*m.x31
                        + 0.00656159987567524*m.x32 + 0.00446188791545916*m.x33 + 0.00472435191048617*m.x34
                        + 0.00656159987567524*m.x35 + 0.00472435191048617*m.x36 + 0.00367449593037813*m.x37
                        + 0.00589531459954838*m.x38 + 0.0040088139276929*m.x39 + 0.00424462651167483*m.x40
                        + 0.00589531459954838*m.x41 + 0.00424462651167483*m.x42 + 0.00330137617574709*m.x43
                        + 0.005625*m.x44 + 0.003825*m.x45 + 0.00405*m.x46 + 0.005625*m.x47 + 0.00405*m.x48
                        + 0.00315*m.x49 + 1.59099025766973*m.b50 + 1.08187337521542*m.b51 + 1.14551298552221*m.b52
                        + 1.59099025766973*m.b53 + 1.14551298552221*m.b54 + 0.89095454429505*m.b55
                        + 1.59099025766973*m.b56 + 1.08187337521542*m.b57 + 1.14551298552221*m.b58
                        + 1.59099025766973*m.b59 + 1.14551298552221*m.b60 + 0.89095454429505*m.b61
                        + 2.46475150877325*m.b62 + 1.67603102596581*m.b63 + 1.77462108631674*m.b64
                        + 2.46475150877325*m.b65 + 1.77462108631674*m.b66 + 1.38026084491302*m.b67
                        + 3.1014109692203*m.b68 + 2.1089594590698*m.b69 + 2.23301589783862*m.b70 + 3.1014109692203*m.b71
                        + 2.23301589783862*m.b72 + 1.73679014276337*m.b73 + 3.62801598673435*m.b74
                        + 2.46705087097936*m.b75 + 2.61217151044873*m.b76 + 3.62801598673435*m.b77
                        + 2.61217151044873*m.b78 + 2.03168895257123*m.b79 + 4.08732797803161*m.b80
                        + 2.7793830250615*m.b81 + 2.94287614418276*m.b82 + 4.08732797803161*m.b83
                        + 2.94287614418276*m.b84 + 2.2889036676977*m.b85 + 4.5*m.b86 + 3.06*m.b87 + 3.24*m.b88
                        + 4.5*m.b89 + 3.24*m.b90 + 2.52*m.b91, sense=minimize)

m.c1 = Constraint(expr=   m.x1 + m.x2 + m.x3 <= 350)

m.c2 = Constraint(expr=   m.x4 + m.x5 + m.x6 <= 600)

m.c3 = Constraint(expr=   m.x1 + m.x4 >= 325)

m.c4 = Constraint(expr=   m.x2 + m.x5 >= 300)

m.c5 = Constraint(expr=   m.x3 + m.x6 >= 275)

m.c7 = Constraint(expr=   m.x1 + m.x8 - m.x14 - m.x20 - m.x26 - m.x32 - m.x38 - m.x44 - 50*m.b50 - 50*m.b56 - 120*m.b62
                        - 190*m.b68 - 260*m.b74 - 330*m.b80 - 400*m.b86 == 0)

m.c8 = Constraint(expr=   m.x2 + m.x9 - m.x15 - m.x21 - m.x27 - m.x33 - m.x39 - m.x45 - 50*m.b51 - 50*m.b57 - 120*m.b63
                        - 190*m.b69 - 260*m.b75 - 330*m.b81 - 400*m.b87 == 0)

m.c9 = Constraint(expr=   m.x3 + m.x10 - m.x16 - m.x22 - m.x28 - m.x34 - m.x40 - m.x46 - 50*m.b52 - 50*m.b58 - 120*m.b64
                        - 190*m.b70 - 260*m.b76 - 330*m.b82 - 400*m.b88 == 0)

m.c10 = Constraint(expr=   m.x4 + m.x11 - m.x17 - m.x23 - m.x29 - m.x35 - m.x41 - m.x47 - 50*m.b53 - 50*m.b59
                         - 120*m.b65 - 190*m.b71 - 260*m.b77 - 330*m.b83 - 400*m.b89 == 0)

m.c11 = Constraint(expr=   m.x5 + m.x12 - m.x18 - m.x24 - m.x30 - m.x36 - m.x42 - m.x48 - 50*m.b54 - 50*m.b60
                         - 120*m.b66 - 190*m.b72 - 260*m.b78 - 330*m.b84 - 400*m.b90 == 0)

m.c12 = Constraint(expr=   m.x6 + m.x13 - m.x19 - m.x25 - m.x31 - m.x37 - m.x43 - m.x49 - 50*m.b55 - 50*m.b61
                         - 120*m.b67 - 190*m.b73 - 260*m.b79 - 330*m.b85 - 400*m.b91 == 0)

m.c13 = Constraint(expr=   m.x14 - 70*m.b56 <= 0)

m.c14 = Constraint(expr=   m.x15 - 70*m.b57 <= 0)

m.c15 = Constraint(expr=   m.x16 - 70*m.b58 <= 0)

m.c16 = Constraint(expr=   m.x17 - 70*m.b59 <= 0)

m.c17 = Constraint(expr=   m.x18 - 70*m.b60 <= 0)

m.c18 = Constraint(expr=   m.x19 - 70*m.b61 <= 0)

m.c19 = Constraint(expr=   m.x20 - 70*m.b62 <= 0)

m.c20 = Constraint(expr=   m.x21 - 70*m.b63 <= 0)

m.c21 = Constraint(expr=   m.x22 - 70*m.b64 <= 0)

m.c22 = Constraint(expr=   m.x23 - 70*m.b65 <= 0)

m.c23 = Constraint(expr=   m.x24 - 70*m.b66 <= 0)

m.c24 = Constraint(expr=   m.x25 - 70*m.b67 <= 0)

m.c25 = Constraint(expr=   m.x26 - 70*m.b68 <= 0)

m.c26 = Constraint(expr=   m.x27 - 70*m.b69 <= 0)

m.c27 = Constraint(expr=   m.x28 - 70*m.b70 <= 0)

m.c28 = Constraint(expr=   m.x29 - 70*m.b71 <= 0)

m.c29 = Constraint(expr=   m.x30 - 70*m.b72 <= 0)

m.c30 = Constraint(expr=   m.x31 - 70*m.b73 <= 0)

m.c31 = Constraint(expr=   m.x32 - 70*m.b74 <= 0)

m.c32 = Constraint(expr=   m.x33 - 70*m.b75 <= 0)

m.c33 = Constraint(expr=   m.x34 - 70*m.b76 <= 0)

m.c34 = Constraint(expr=   m.x35 - 70*m.b77 <= 0)

m.c35 = Constraint(expr=   m.x36 - 70*m.b78 <= 0)

m.c36 = Constraint(expr=   m.x37 - 70*m.b79 <= 0)

m.c37 = Constraint(expr=   m.x38 - 70*m.b80 <= 0)

m.c38 = Constraint(expr=   m.x39 - 70*m.b81 <= 0)

m.c39 = Constraint(expr=   m.x40 - 70*m.b82 <= 0)

m.c40 = Constraint(expr=   m.x41 - 70*m.b83 <= 0)

m.c41 = Constraint(expr=   m.x42 - 70*m.b84 <= 0)

m.c42 = Constraint(expr=   m.x43 - 70*m.b85 <= 0)

m.c43 = Constraint(expr=   m.b50 + m.b56 + m.b62 + m.b68 + m.b74 + m.b80 + m.b86 == 1)

m.c44 = Constraint(expr=   m.b51 + m.b57 + m.b63 + m.b69 + m.b75 + m.b81 + m.b87 == 1)

m.c45 = Constraint(expr=   m.b52 + m.b58 + m.b64 + m.b70 + m.b76 + m.b82 + m.b88 == 1)

m.c46 = Constraint(expr=   m.b53 + m.b59 + m.b65 + m.b71 + m.b77 + m.b83 + m.b89 == 1)

m.c47 = Constraint(expr=   m.b54 + m.b60 + m.b66 + m.b72 + m.b78 + m.b84 + m.b90 == 1)

m.c48 = Constraint(expr=   m.b55 + m.b61 + m.b67 + m.b73 + m.b79 + m.b85 + m.b91 == 1)

m.c49 = Constraint(expr= - m.b50 - m.s1s92 == -1)

m.c50 = Constraint(expr= - m.b51 - m.s1s94 == -1)

m.c51 = Constraint(expr= - m.b52 - m.s1s96 == -1)

m.c52 = Constraint(expr= - m.b53 - m.s1s98 == -1)

m.c53 = Constraint(expr= - m.b54 - m.s1s100 == -1)

m.c54 = Constraint(expr= - m.b55 - m.s1s102 == -1)

m.c55 = Constraint(expr= - m.b86 - m.s1s104 == -1)

m.c56 = Constraint(expr= - m.b87 - m.s1s106 == -1)

m.c57 = Constraint(expr= - m.b88 - m.s1s108 == -1)

m.c58 = Constraint(expr= - m.b89 - m.s1s110 == -1)

m.c59 = Constraint(expr= - m.b90 - m.s1s112 == -1)

m.c60 = Constraint(expr= - m.b91 - m.s1s114 == -1)

m.c61 = Constraint(expr=   m.x8 - m.s1s93 == 0)

m.c62 = Constraint(expr=   m.x9 - m.s1s95 == 0)

m.c63 = Constraint(expr=   m.x10 - m.s1s97 == 0)

m.c64 = Constraint(expr=   m.x11 - m.s1s99 == 0)

m.c65 = Constraint(expr=   m.x12 - m.s1s101 == 0)

m.c66 = Constraint(expr=   m.x13 - m.s1s103 == 0)

m.c67 = Constraint(expr=   m.x44 - m.s1s105 == 0)

m.c68 = Constraint(expr=   m.x45 - m.s1s107 == 0)

m.c69 = Constraint(expr=   m.x46 - m.s1s109 == 0)

m.c70 = Constraint(expr=   m.x47 - m.s1s111 == 0)

m.c71 = Constraint(expr=   m.x48 - m.s1s113 == 0)

m.c72 = Constraint(expr=   m.x49 - m.s1s115 == 0)
