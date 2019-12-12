#  MIP written by GAMS Convert at 12/13/18 11:43:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57       31       25        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         59       31       28        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        277      277        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.x52 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   10*m.b1 + 30*m.b2 + 40*m.b3 + 50*m.b4 + 20*m.b5 + 60*m.b6 + 10*m.b7 + 30*m.b8 + 40*m.b9
                        + 50*m.b10 + 20*m.b11 + 60*m.b12 + 10*m.b13 + 30*m.b14 + 40*m.b15 + 50*m.b16 + 20*m.b17
                        + 60*m.b18 + 10*m.b19 + 30*m.b20 + 40*m.b21 + 50*m.b22 + 20*m.b23 + 10*m.b24 + 30*m.b25
                        + 40*m.b26 + 50*m.b27 + 20*m.b28, sense=minimize)

m.c1 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 == 1)

m.c2 = Constraint(expr=   m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 == 1)

m.c3 = Constraint(expr=   m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 == 1)

m.c4 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b22 + m.b23 == 1)

m.c5 = Constraint(expr=   m.b24 + m.b25 + m.b26 + m.b27 + m.b28 == 1)

m.c6 = Constraint(expr= - 172*m.b1 - 65*m.b2 - 53*m.b3 - 43*m.b4 - 92*m.b5 - 43*m.b6 + m.x29 == 0)

m.c7 = Constraint(expr= - 43*m.b1 - 32*m.b2 - 32*m.b3 - 32*m.b4 - 32*m.b5 - 32*m.b6 + m.x30 == 0)

m.c8 = Constraint(expr= - 13*m.b1 - 13*m.b2 - 13*m.b3 - 13*m.b4 - 13*m.b5 - 13*m.b6 + m.x31 == 0)

m.c9 = Constraint(expr= - 132*m.b1 - 62*m.b2 - 62*m.b3 - 62*m.b4 - 90*m.b5 - 62*m.b6 + m.x32 == 0)

m.c10 = Constraint(expr= - 182*m.b1 - 79*m.b2 - 73*m.b3 - 42*m.b4 - 98*m.b5 - 42*m.b6 + m.x33 == 0)

m.c11 = Constraint(expr= - 103*m.b7 - 47*m.b8 - 47*m.b9 - 47*m.b10 - 53*m.b11 - 47*m.b12 + m.x34 == 0)

m.c12 = Constraint(expr= - 36*m.b7 - 36*m.b8 - 36*m.b9 - 36*m.b10 - 36*m.b11 - 36*m.b12 + m.x35 == 0)

m.c13 = Constraint(expr= - 127*m.b7 - 52*m.b8 - 52*m.b9 - 52*m.b10 - 66*m.b11 - 52*m.b12 + m.x36 == 0)

m.c14 = Constraint(expr= - 30*m.b7 - 30*m.b8 - 30*m.b9 - 30*m.b10 - 30*m.b11 - 30*m.b12 + m.x37 == 0)

m.c15 = Constraint(expr= - 85*m.b7 - 43*m.b8 - 43*m.b9 - 43*m.b10 - 62*m.b11 - 43*m.b12 + m.x38 == 0)

m.c16 = Constraint(expr= - 155*m.b13 - 64*m.b14 - 52*m.b15 - 49*m.b16 - 88*m.b17 - 49*m.b18 + m.x39 == 0)

m.c17 = Constraint(expr= - 93*m.b13 - 40*m.b14 - 33*m.b15 - 33*m.b16 - 50*m.b17 - 33*m.b18 + m.x40 == 0)

m.c18 = Constraint(expr= - 76*m.b13 - 44*m.b14 - 44*m.b15 - 44*m.b16 - 50*m.b17 - 44*m.b18 + m.x41 == 0)

m.c19 = Constraint(expr= - 126*m.b13 - 56*m.b14 - 54*m.b15 - 54*m.b16 - 67*m.b17 - 54*m.b18 + m.x42 == 0)

m.c20 = Constraint(expr= - 131*m.b13 - 50*m.b14 - 37*m.b15 - 37*m.b16 - 70*m.b17 - 37*m.b18 + m.x43 == 0)

m.c21 = Constraint(expr= - 88*m.b19 - 35*m.b20 - 33*m.b21 - 24*m.b22 - 44*m.b23 + m.x44 == 0)

m.c22 = Constraint(expr= - 10*m.b19 - 10*m.b20 - 10*m.b21 - 10*m.b22 - 10*m.b23 + m.x45 == 0)

m.c23 = Constraint(expr= - 48*m.b19 - 32*m.b20 - 32*m.b21 - 32*m.b22 - 32*m.b23 + m.x46 == 0)

m.c24 = Constraint(expr= - 70*m.b19 - 42*m.b20 - 42*m.b21 - 42*m.b22 - 53*m.b23 + m.x47 == 0)

m.c25 = Constraint(expr= - 104*m.b19 - 50*m.b20 - 38*m.b21 - 38*m.b22 - 50*m.b23 + m.x48 == 0)

m.c26 = Constraint(expr= - 103*m.b24 - 43*m.b25 - 43*m.b26 - 43*m.b27 - 58*m.b28 + m.x49 == 0)

m.c27 = Constraint(expr= - 80*m.b24 - 46*m.b25 - 46*m.b26 - 46*m.b27 - 46*m.b28 + m.x50 == 0)

m.c28 = Constraint(expr= - 10*m.b24 - 10*m.b25 - 10*m.b26 - 10*m.b27 - 10*m.b28 + m.x51 == 0)

m.c29 = Constraint(expr= - 141*m.b24 - 54*m.b25 - 54*m.b26 - 54*m.b27 - 104*m.b28 + m.x52 == 0)

m.c30 = Constraint(expr= - 179*m.b24 - 85*m.b25 - 85*m.b26 - 85*m.b27 - 98*m.b28 + m.x53 == 0)

m.c31 = Constraint(expr= - m.x29 + m.x54 >= 0)

m.c32 = Constraint(expr= - m.x30 + m.x55 >= 0)

m.c33 = Constraint(expr= - m.x31 + m.x56 >= 0)

m.c34 = Constraint(expr= - m.x32 + m.x57 >= 0)

m.c35 = Constraint(expr= - m.x33 + m.x58 >= 0)

m.c36 = Constraint(expr= - m.x34 + m.x54 >= 0)

m.c37 = Constraint(expr= - m.x35 + m.x55 >= 0)

m.c38 = Constraint(expr= - m.x36 + m.x56 >= 0)

m.c39 = Constraint(expr= - m.x37 + m.x57 >= 0)

m.c40 = Constraint(expr= - m.x38 + m.x58 >= 0)

m.c41 = Constraint(expr= - m.x39 + m.x54 >= 0)

m.c42 = Constraint(expr= - m.x40 + m.x55 >= 0)

m.c43 = Constraint(expr= - m.x41 + m.x56 >= 0)

m.c44 = Constraint(expr= - m.x42 + m.x57 >= 0)

m.c45 = Constraint(expr= - m.x43 + m.x58 >= 0)

m.c46 = Constraint(expr= - m.x44 + m.x54 >= 0)

m.c47 = Constraint(expr= - m.x45 + m.x55 >= 0)

m.c48 = Constraint(expr= - m.x46 + m.x56 >= 0)

m.c49 = Constraint(expr= - m.x47 + m.x57 >= 0)

m.c50 = Constraint(expr= - m.x48 + m.x58 >= 0)

m.c51 = Constraint(expr= - m.x49 + m.x54 >= 0)

m.c52 = Constraint(expr= - m.x50 + m.x55 >= 0)

m.c53 = Constraint(expr= - m.x51 + m.x56 >= 0)

m.c54 = Constraint(expr= - m.x52 + m.x57 >= 0)

m.c55 = Constraint(expr= - m.x53 + m.x58 >= 0)

m.c56 = Constraint(expr=   m.x54 + m.x55 + m.x56 + m.x57 + m.x58 <= 345)
