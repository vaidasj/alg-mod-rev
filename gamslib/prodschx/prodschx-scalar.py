#  MIP written by GAMS Convert at 12/13/18 10:24:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         49       45        4        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         86       45        9        0        0       32        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        225      225        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,9280),initialize=0)
m.s2s22 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s23 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s24 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s25 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s26 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s27 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s28 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s29 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s30 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s31 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s32 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s33 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s34 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s35 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s36 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s37 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s38 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s39 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s40 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s41 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s42 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s43 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s44 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s45 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s46 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s47 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s48 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s49 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s50 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s51 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s52 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.s2s53 = Var(within=CannotHandle,bounds=(0,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b58 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.b71 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b72 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b73 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b74 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b75 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b76 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b77 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b78 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=0)

suffix sosno integer IN;
suffix ref integer IN;
let m.s2s22.sosno := -1;
let m.s2s22.ref   := 1;
let m.s2s23.sosno := -1;
let m.s2s23.ref   := 2;
let m.s2s24.sosno := -1;
let m.s2s24.ref   := 3;
let m.s2s25.sosno := -1;
let m.s2s25.ref   := 4;
let m.s2s26.sosno := -2;
let m.s2s26.ref   := 1;
let m.s2s27.sosno := -2;
let m.s2s27.ref   := 2;
let m.s2s28.sosno := -2;
let m.s2s28.ref   := 3;
let m.s2s29.sosno := -2;
let m.s2s29.ref   := 4;
let m.s2s30.sosno := -3;
let m.s2s30.ref   := 1;
let m.s2s31.sosno := -3;
let m.s2s31.ref   := 2;
let m.s2s32.sosno := -3;
let m.s2s32.ref   := 3;
let m.s2s33.sosno := -3;
let m.s2s33.ref   := 4;
let m.s2s34.sosno := -4;
let m.s2s34.ref   := 1;
let m.s2s35.sosno := -4;
let m.s2s35.ref   := 2;
let m.s2s36.sosno := -4;
let m.s2s36.ref   := 3;
let m.s2s37.sosno := -4;
let m.s2s37.ref   := 4;
let m.s2s38.sosno := -5;
let m.s2s38.ref   := 1;
let m.s2s39.sosno := -5;
let m.s2s39.ref   := 2;
let m.s2s40.sosno := -5;
let m.s2s40.ref   := 3;
let m.s2s41.sosno := -5;
let m.s2s41.ref   := 4;
let m.s2s42.sosno := -6;
let m.s2s42.ref   := 1;
let m.s2s43.sosno := -6;
let m.s2s43.ref   := 2;
let m.s2s44.sosno := -6;
let m.s2s44.ref   := 3;
let m.s2s45.sosno := -6;
let m.s2s45.ref   := 4;
let m.s2s46.sosno := -7;
let m.s2s46.ref   := 1;
let m.s2s47.sosno := -7;
let m.s2s47.ref   := 2;
let m.s2s48.sosno := -7;
let m.s2s48.ref   := 3;
let m.s2s49.sosno := -7;
let m.s2s49.ref   := 4;
let m.s2s50.sosno := -8;
let m.s2s50.ref   := 1;
let m.s2s51.sosno := -8;
let m.s2s51.ref   := 2;
let m.s2s52.sosno := -8;
let m.s2s52.ref   := 3;
let m.s2s53.sosno := -8;
let m.s2s53.ref   := 4;

m.obj = Objective(expr=   m.x2 + 0.970873786407767*m.x3 + 0.942595909133754*m.x4 + 0.91514165935316*m.x5 + m.x6
                        + 0.970873786407767*m.x7 + 0.942595909133754*m.x8 + 0.91514165935316*m.x9 + m.x10
                        + 0.970873786407767*m.x11 + 0.942595909133754*m.x12 + 0.91514165935316*m.x13, sense=minimize)

m.c2 = Constraint(expr=   m.x2 - 0.1*m.x18 - 3.5*m.x63 - 4.1*m.x64 - 10*m.b71 - 16*m.b72 == 0)

m.c3 = Constraint(expr=   m.x3 - 0.1*m.x19 - 3.5*m.x65 - 4.1*m.x66 - 10*m.b73 - 16*m.b74 == 0)

m.c4 = Constraint(expr=   m.x4 - 0.1*m.x20 - 3.5*m.x67 - 4.1*m.x68 - 10*m.b75 - 16*m.b76 == 0)

m.c5 = Constraint(expr=   m.x5 - 0.1*m.x21 - 3.5*m.x69 - 4.1*m.x70 - 10*m.b77 - 16*m.b78 == 0)

m.c6 = Constraint(expr=   m.x18 - 1000*m.s2s22 - 3000*m.s2s23 - 4500*m.s2s24 - 5800*m.s2s25 - 1000*m.s2s26
                        - 3000*m.s2s27 - 4500*m.s2s28 - 5800*m.s2s29 == 0)

m.c7 = Constraint(expr=   m.x19 - 1000*m.s2s30 - 3000*m.s2s31 - 4500*m.s2s32 - 5800*m.s2s33 - 1000*m.s2s34
                        - 3000*m.s2s35 - 4500*m.s2s36 - 5800*m.s2s37 == 0)

m.c8 = Constraint(expr=   m.x20 - 1000*m.s2s38 - 3000*m.s2s39 - 4500*m.s2s40 - 5800*m.s2s41 - 1000*m.s2s42
                        - 3000*m.s2s43 - 4500*m.s2s44 - 5800*m.s2s45 == 0)

m.c9 = Constraint(expr=   m.x21 - 1000*m.s2s46 - 3000*m.s2s47 - 4500*m.s2s48 - 5800*m.s2s49 - 1000*m.s2s50
                        - 3000*m.s2s51 - 4500*m.s2s52 - 5800*m.s2s53 == 0)

m.c10 = Constraint(expr= - 20*m.s2s22 - 40*m.s2s23 - 50*m.s2s24 - 60*m.s2s25 + m.x63 == 0)

m.c11 = Constraint(expr= - 20*m.s2s26 - 40*m.s2s27 - 50*m.s2s28 - 60*m.s2s29 + m.x64 == 0)

m.c12 = Constraint(expr= - 20*m.s2s30 - 40*m.s2s31 - 50*m.s2s32 - 60*m.s2s33 + m.x65 == 0)

m.c13 = Constraint(expr= - 20*m.s2s34 - 40*m.s2s35 - 50*m.s2s36 - 60*m.s2s37 + m.x66 == 0)

m.c14 = Constraint(expr= - 20*m.s2s38 - 40*m.s2s39 - 50*m.s2s40 - 60*m.s2s41 + m.x67 == 0)

m.c15 = Constraint(expr= - 20*m.s2s42 - 40*m.s2s43 - 50*m.s2s44 - 60*m.s2s45 + m.x68 == 0)

m.c16 = Constraint(expr= - 20*m.s2s46 - 40*m.s2s47 - 50*m.s2s48 - 60*m.s2s49 + m.x69 == 0)

m.c17 = Constraint(expr= - 20*m.s2s50 - 40*m.s2s51 - 50*m.s2s52 - 60*m.s2s53 + m.x70 == 0)

m.c18 = Constraint(expr=   m.s2s22 + m.s2s23 + m.s2s24 + m.s2s25 - m.b71 == 0)

m.c19 = Constraint(expr=   m.s2s26 + m.s2s27 + m.s2s28 + m.s2s29 - m.b72 == 0)

m.c20 = Constraint(expr=   m.s2s30 + m.s2s31 + m.s2s32 + m.s2s33 - m.b73 == 0)

m.c21 = Constraint(expr=   m.s2s34 + m.s2s35 + m.s2s36 + m.s2s37 - m.b74 == 0)

m.c22 = Constraint(expr=   m.s2s38 + m.s2s39 + m.s2s40 + m.s2s41 - m.b75 == 0)

m.c23 = Constraint(expr=   m.s2s42 + m.s2s43 + m.s2s44 + m.s2s45 - m.b76 == 0)

m.c24 = Constraint(expr=   m.s2s46 + m.s2s47 + m.s2s48 + m.s2s49 - m.b77 == 0)

m.c25 = Constraint(expr=   m.s2s50 + m.s2s51 + m.s2s52 + m.s2s53 - m.b78 == 0)

m.c26 = Constraint(expr=   m.x6 - 0.001*m.x14 - 15*m.b58 == 0)

m.c27 = Constraint(expr=   m.x7 - 0.001*m.x15 == 0)

m.c28 = Constraint(expr=   m.x8 - 0.001*m.x16 == 0)

m.c29 = Constraint(expr=   m.x9 - 0.001*m.x17 == 0)

m.c30 = Constraint(expr= - m.x18 + m.x54 == 0)

m.c31 = Constraint(expr= - m.x19 - m.x54 + m.x55 == 0)

m.c32 = Constraint(expr= - m.x20 - m.x55 + m.x56 == 0)

m.c33 = Constraint(expr= - m.x21 - m.x56 + m.x57 == -24000)

m.c34 = Constraint(expr=   m.x14 - 2*m.x54 + 48000*m.b58 >= 0)

m.c35 = Constraint(expr=   m.x15 - 2*m.x55 + 48000*m.b58 >= 0)

m.c36 = Constraint(expr=   m.x16 - 2*m.x56 + 48000*m.b58 >= 0)

m.c37 = Constraint(expr=   m.x17 - 2*m.x57 + 48000*m.b58 >= 0)

m.c38 = Constraint(expr=   m.x10 - 0.9*m.x79 - 0.15*m.x83 == 0)

m.c39 = Constraint(expr=   m.x11 - 0.9*m.x80 - 0.15*m.x84 == 0)

m.c40 = Constraint(expr=   m.x12 - 0.9*m.x81 - 0.15*m.x85 == 0)

m.c41 = Constraint(expr=   m.x13 - 0.9*m.x82 - 0.15*m.x86 == 0)

m.c42 = Constraint(expr=   m.x59 - m.x63 - m.x64 == 0)

m.c43 = Constraint(expr=   m.x60 - m.x65 - m.x66 == 0)

m.c44 = Constraint(expr=   m.x61 - m.x67 - m.x68 == 0)

m.c45 = Constraint(expr=   m.x62 - m.x69 - m.x70 == 0)

m.c46 = Constraint(expr=   m.x59 - m.x62 - m.x79 + m.x83 == 0)

m.c47 = Constraint(expr= - m.x59 + m.x60 - m.x80 + m.x84 == 0)

m.c48 = Constraint(expr= - m.x60 + m.x61 - m.x81 + m.x85 == 0)

m.c49 = Constraint(expr= - m.x61 + m.x62 - m.x82 + m.x86 == 0)
