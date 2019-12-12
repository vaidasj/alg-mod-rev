#  RMIQCP written by GAMS Convert at 12/13/18 11:30:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        2        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51        1       50        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        151      101       50        0
# 
#  Reformulation has removed 1 variable and 1 equation
# 
#  Please note that the model below has been relaxed


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b2 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b3 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b4 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b5 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b6 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b7 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b8 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b9 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b10 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b11 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b12 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b13 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b14 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b15 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b16 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b17 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b18 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b19 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b20 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b21 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b22 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b23 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b24 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b25 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b26 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b27 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b28 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b29 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b30 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b31 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b32 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b33 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b34 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b35 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b36 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b37 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b38 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b39 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b40 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b41 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b42 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b43 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b44 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b45 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b46 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b47 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b48 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b49 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b50 = Var(within=CannotHandle,bounds=(0,1),initialize=0)

m.obj = Objective(expr=122*m.b3*m.b2 + 120*m.b4*m.b2 + 106*m.b5*m.b1 + 132*m.b6*m.b3 + 30*m.b6*m.b4 + 26*m.b6*m.b5 + 168
                       *m.b7*m.b3 + 80*m.b7*m.b4 + 106*m.b7*m.b6 + 114*m.b8*m.b3 + 6*m.b8*m.b5 + 132*m.b8*m.b6 + 32*m.b9
                       *m.b3 + 104*m.b9*m.b4 + 76*m.b10*m.b3 + 156*m.b10*m.b6 + 196*m.b11*m.b1 + 18*m.b11*m.b2 + 92*
                       m.b11*m.b3 + 38*m.b11*m.b6 + 98*m.b11*m.b8 + 142*m.b11*m.b9 + 52*m.b12*m.b1 + 126*m.b12*m.b10 + 
                       86*m.b12*m.b11 + 166*m.b13*m.b1 + 2*m.b13*m.b7 + 128*m.b14*m.b2 + 88*m.b14*m.b3 + 180*m.b14*m.b4
                        + 40*m.b14*m.b7 + 58*m.b14*m.b8 + 162*m.b14*m.b9 + 48*m.b14*m.b11 + 156*m.b15*m.b6 + 84*m.b15*
                       m.b9 + 112*m.b16*m.b5 + 192*m.b16*m.b6 + 84*m.b16*m.b12 + 54*m.b16*m.b14 + 56*m.b17*m.b3 + 190*
                       m.b17*m.b14 + 72*m.b18*m.b2 + 116*m.b18*m.b5 + 170*m.b18*m.b7 + 128*m.b18*m.b8 + 76*m.b18*m.b10
                        + 98*m.b18*m.b12 + 192*m.b18*m.b14 + 54*m.b19*m.b4 + 40*m.b19*m.b5 + 164*m.b19*m.b9 + 10*m.b19*
                       m.b12 + 124*m.b19*m.b13 + 94*m.b19*m.b14 + 160*m.b20*m.b7 + 112*m.b20*m.b11 + 132*m.b20*m.b14 + 
                       174*m.b20*m.b15 + 134*m.b20*m.b16 + 130*m.b21*m.b8 + 132*m.b21*m.b9 + 128*m.b21*m.b15 + 68*m.b21*
                       m.b16 + 62*m.b22*m.b5 + 110*m.b22*m.b7 + 180*m.b22*m.b10 + 80*m.b22*m.b12 + 74*m.b22*m.b13 + 88*
                       m.b23*m.b7 + 162*m.b23*m.b8 + 64*m.b23*m.b12 + 72*m.b23*m.b13 + 128*m.b24*m.b4 + 156*m.b24*m.b8
                        + 118*m.b24*m.b10 + 38*m.b24*m.b11 + 36*m.b24*m.b13 + 174*m.b24*m.b14 + 154*m.b24*m.b20 + 170*
                       m.b24*m.b21 + 118*m.b24*m.b22 + 26*m.b25*m.b4 + 108*m.b25*m.b11 + 156*m.b26*m.b1 + 168*m.b26*m.b7
                        + 112*m.b26*m.b9 + 142*m.b26*m.b14 + 124*m.b26*m.b21 + 52*m.b26*m.b23 + 66*m.b27*m.b2 + 196*
                       m.b27*m.b14 + 188*m.b27*m.b15 + 74*m.b27*m.b16 + 112*m.b27*m.b18 + 62*m.b27*m.b23 + 122*m.b27*
                       m.b24 + 138*m.b28*m.b2 + 136*m.b28*m.b3 + 88*m.b28*m.b6 + 120*m.b28*m.b18 + 196*m.b28*m.b21 + 6*
                       m.b29*m.b1 + 52*m.b29*m.b4 + 60*m.b29*m.b9 + 170*m.b29*m.b11 + 124*m.b29*m.b13 + 180*m.b29*m.b16
                        + 106*m.b29*m.b17 + 30*m.b29*m.b18 + 106*m.b29*m.b27 + 44*m.b29*m.b28 + 126*m.b30*m.b1 + 182*
                       m.b30*m.b2 + 110*m.b30*m.b3 + 110*m.b30*m.b4 + 156*m.b30*m.b10 + 168*m.b30*m.b16 + 22*m.b30*m.b22
                        + 120*m.b30*m.b24 + 144*m.b31*m.b1 + 46*m.b31*m.b2 + 40*m.b31*m.b5 + 54*m.b31*m.b7 + 170*m.b31*
                       m.b8 + 182*m.b31*m.b9 + 6*m.b31*m.b10 + 90*m.b31*m.b16 + 196*m.b31*m.b29 + 110*m.b31*m.b30 + 190*
                       m.b32*m.b1 + 156*m.b32*m.b4 + 58*m.b32*m.b5 + 160*m.b32*m.b8 + 78*m.b32*m.b11 + 76*m.b32*m.b12 + 
                       12*m.b32*m.b13 + 128*m.b32*m.b17 + 12*m.b32*m.b18 + 58*m.b32*m.b29 + 134*m.b33*m.b6 + 78*m.b33*
                       m.b28 + 142*m.b34*m.b4 + 100*m.b34*m.b5 + 184*m.b34*m.b6 + 2*m.b34*m.b13 + 8*m.b34*m.b14 + 168*
                       m.b34*m.b17 + 40*m.b34*m.b18 + 186*m.b34*m.b23 + 70*m.b34*m.b24 + 124*m.b34*m.b25 + 126*m.b34*
                       m.b28 + 28*m.b34*m.b31 + 80*m.b34*m.b32 + 76*m.b35*m.b6 + 166*m.b35*m.b11 + 150*m.b35*m.b13 + 184
                       *m.b35*m.b18 + 14*m.b35*m.b19 + 92*m.b35*m.b20 + 24*m.b35*m.b26 + 6*m.b35*m.b27 + 168*m.b35*m.b29
                        + 152*m.b35*m.b32 + 164*m.b36*m.b1 + 8*m.b36*m.b2 + 56*m.b36*m.b9 + 138*m.b36*m.b13 + 58*m.b36*
                       m.b14 + 50*m.b36*m.b22 + 84*m.b36*m.b23 + 56*m.b36*m.b24 + 98*m.b36*m.b31 + 160*m.b36*m.b33 + 166
                       *m.b37*m.b2 + 182*m.b37*m.b4 + 34*m.b37*m.b7 + 184*m.b37*m.b12 + 198*m.b37*m.b17 + 20*m.b37*m.b28
                        + 18*m.b37*m.b30 + 88*m.b37*m.b35 + 110*m.b38*m.b2 + 166*m.b38*m.b14 + 134*m.b38*m.b19 + 196*
                       m.b38*m.b26 + 52*m.b38*m.b27 + 148*m.b38*m.b28 + 102*m.b38*m.b29 + 54*m.b38*m.b31 + 128*m.b39*
                       m.b1 + 38*m.b39*m.b3 + 70*m.b39*m.b4 + 50*m.b39*m.b6 + 130*m.b39*m.b7 + 50*m.b39*m.b16 + 40*m.b39
                       *m.b21 + 6*m.b39*m.b25 + 38*m.b39*m.b26 + 26*m.b39*m.b28 + 126*m.b39*m.b29 + 154*m.b39*m.b31 + 
                       104*m.b39*m.b35 + 132*m.b39*m.b37 + 18*m.b40*m.b2 + 90*m.b40*m.b3 + 196*m.b40*m.b5 + 176*m.b40*
                       m.b6 + 116*m.b40*m.b7 + 54*m.b40*m.b10 + 134*m.b40*m.b11 + 90*m.b40*m.b12 + 82*m.b40*m.b13 + 18*
                       m.b40*m.b18 + 18*m.b40*m.b20 + 24*m.b40*m.b27 + 198*m.b40*m.b32 + 174*m.b41*m.b2 + 66*m.b41*m.b4
                        + 138*m.b41*m.b5 + 40*m.b41*m.b6 + 16*m.b41*m.b7 + 136*m.b41*m.b8 + 86*m.b41*m.b11 + 12*m.b41*
                       m.b12 + 14*m.b41*m.b13 + 34*m.b41*m.b20 + 2*m.b41*m.b22 + 92*m.b41*m.b36 + 28*m.b42*m.b1 + 26*
                       m.b42*m.b5 + 2*m.b42*m.b6 + 114*m.b42*m.b16 + 176*m.b42*m.b19 + 156*m.b42*m.b22 + 174*m.b42*m.b23
                        + 42*m.b42*m.b24 + 164*m.b42*m.b25 + 132*m.b42*m.b30 + 102*m.b42*m.b35 + 72*m.b42*m.b36 + 76*
                       m.b42*m.b39 + 80*m.b43*m.b3 + 72*m.b43*m.b6 + 24*m.b43*m.b11 + 106*m.b43*m.b14 + 188*m.b43*m.b15
                        + 154*m.b43*m.b17 + 160*m.b43*m.b19 + 152*m.b43*m.b24 + 108*m.b43*m.b29 + 54*m.b43*m.b31 + 62*
                       m.b43*m.b32 + 182*m.b43*m.b33 + 120*m.b43*m.b40 + 200*m.b43*m.b42 + 164*m.b44*m.b3 + 134*m.b44*
                       m.b4 + 162*m.b44*m.b6 + 18*m.b44*m.b8 + 64*m.b44*m.b13 + 154*m.b44*m.b22 + 16*m.b44*m.b23 + 178*
                       m.b44*m.b25 + 66*m.b44*m.b27 + 172*m.b44*m.b32 + 136*m.b44*m.b33 + 64*m.b44*m.b38 + 108*m.b44*
                       m.b42 + 58*m.b45*m.b6 + 114*m.b45*m.b10 + 154*m.b45*m.b12 + 20*m.b45*m.b13 + 14*m.b45*m.b16 + 148
                       *m.b45*m.b23 + 126*m.b45*m.b24 + 126*m.b45*m.b25 + 88*m.b46*m.b3 + 40*m.b46*m.b11 + 60*m.b46*
                       m.b14 + 156*m.b46*m.b21 + 182*m.b46*m.b25 + 154*m.b46*m.b29 + 126*m.b46*m.b40 + 94*m.b46*m.b42 + 
                       62*m.b47*m.b2 + 172*m.b47*m.b5 + 118*m.b47*m.b8 + 198*m.b47*m.b10 + 40*m.b47*m.b11 + 44*m.b47*
                       m.b14 + 140*m.b47*m.b15 + 190*m.b47*m.b16 + 74*m.b47*m.b22 + 122*m.b47*m.b25 + 146*m.b47*m.b26 + 
                       178*m.b47*m.b31 + 2*m.b47*m.b36 + 56*m.b47*m.b45 + 102*m.b47*m.b46 + 160*m.b48*m.b20 + 76*m.b48*
                       m.b22 + 120*m.b48*m.b24 + 158*m.b48*m.b25 + 74*m.b48*m.b32 + 74*m.b48*m.b40 + 188*m.b48*m.b41 + 
                       194*m.b48*m.b44 + 186*m.b49*m.b8 + 68*m.b49*m.b12 + 64*m.b49*m.b20 + 118*m.b49*m.b22 + 118*m.b49*
                       m.b25 + 12*m.b49*m.b29 + 134*m.b49*m.b30 + 74*m.b49*m.b32 + 44*m.b49*m.b33 + 180*m.b49*m.b35 + 
                       142*m.b49*m.b37 + 34*m.b49*m.b39 + 118*m.b49*m.b40 + 162*m.b49*m.b45 + 84*m.b49*m.b46 + 14*m.b49*
                       m.b47 + 70*m.b50*m.b17 + 164*m.b50*m.b19 + 146*m.b50*m.b23 + 84*m.b50*m.b24 + 126*m.b50*m.b30 + 
                       72*m.b50*m.b40 + 168*m.b50*m.b43 + 70*m.b50*m.b46 + 27*m.b2 + 38*m.b3 + m.b5 + 82*m.b9 + 39*m.b10
                        + 6*m.b12 + 7*m.b14 + 17*m.b16 + 55*m.b22 + 38*m.b24 + 52*m.b29 + 97*m.b32 + 44*m.b35 + 80*m.b36
                        + 87*m.b42 + 67*m.b45 - (83718.8713337983*m.b1*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83717.5951224213*m.b2*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83728.6596982671*m.b3*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83727.9506506452*m.b4*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83721.0574106845*m.b5*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10
                        + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22
                        + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34
                        + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46
                        + m.b47 + m.b48 + m.b49 + m.b50) + 83725.956721073*m.b6*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5
                        + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + 
                       m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + 
                       m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + 
                       m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83725.6119606743*m.b7*(-
                       12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13
                        + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25
                        + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37
                        + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49
                        + m.b50) + 83733.1664748557*m.b8*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83715.4429582255*m.b9*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83716.7627802615*m.b10*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + 
                       m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + 
                       m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + 
                       m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + 
                       m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83725.8023313489*m.b11*(-12 + m.b1 + m.b2 + m.b3 + m.b4
                        + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + 
                       m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + 
                       m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + 
                       m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83720.0983942339
                       *m.b12*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + 
                       m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + 
                       m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + 
                       m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + 
                       m.b48 + m.b49 + m.b50) + 83724.1607827363*m.b13*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83710.8833267078*m.b14*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83716.9658319618*m.b15*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83727.882093083*m.b16*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83724.4000874969*m.b17*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + 
                       m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + 
                       m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + 
                       m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + 
                       m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83727.9403375488*m.b18*(-12 + m.b1 + m.b2 + m.b3 + m.b4
                        + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + 
                       m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + 
                       m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + 
                       m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83715.5543089973
                       *m.b19*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + 
                       m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + 
                       m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + 
                       m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + 
                       m.b48 + m.b49 + m.b50) + 83727.6713463881*m.b20*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83719.1105949556*m.b21*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83716.6040380127*m.b22*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83719.4839190982*m.b23*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83726.3453343726*m.b24*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + 
                       m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + 
                       m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + 
                       m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + 
                       m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83717.6137261961*m.b25*(-12 + m.b1 + m.b2 + m.b3 + m.b4
                        + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + 
                       m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + 
                       m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + 
                       m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83715.8695773395
                       *m.b26*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + 
                       m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + 
                       m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + 
                       m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + 
                       m.b48 + m.b49 + m.b50) + 83719.142011572*m.b27*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83714.0739638167*m.b28*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83715.910981712*m.b29*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83730.2970576678*m.b30*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83720.6207965618*m.b31*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + 
                       m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + 
                       m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + 
                       m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + 
                       m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83714.4294945186*m.b32*(-12 + m.b1 + m.b2 + m.b3 + m.b4
                        + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + 
                       m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + 
                       m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + 
                       m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83715.8017105925
                       *m.b33*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + 
                       m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + 
                       m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + 
                       m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + 
                       m.b48 + m.b49 + m.b50) + 83723.3034367334*m.b34*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83720.9594132446*m.b35*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83716.8038249183*m.b36*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83720.1454774486*m.b37*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83713.5472408714*m.b38*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + 
                       m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + 
                       m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + 
                       m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + 
                       m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83723.2133532079*m.b39*(-12 + m.b1 + m.b2 + m.b3 + m.b4
                        + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + 
                       m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + 
                       m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + 
                       m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83724.7224178783
                       *m.b40*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + 
                       m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + 
                       m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + 
                       m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + 
                       m.b48 + m.b49 + m.b50) + 83719.3643957325*m.b41*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83721.4956034273*m.b42*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83725.3756740034*m.b43*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83723.2795942504*m.b44*(-12 + m.b1 + m.b2 + m.b3
                        + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + 
                       m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + 
                       m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + 
                       m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 
                       83711.2695742746*m.b45*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + 
                       m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + 
                       m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + 
                       m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + 
                       m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83727.0406230069*m.b46*(-12 + m.b1 + m.b2 + m.b3 + m.b4
                        + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + 
                       m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + 
                       m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + 
                       m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83724.2951456478
                       *m.b47*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + 
                       m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + 
                       m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + 
                       m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + 
                       m.b48 + m.b49 + m.b50) + 83716.112119323*m.b48*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + 
                       m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + 
                       m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + 
                       m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + 
                       m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50) + 83722.6983070437*m.b49*(-12 + 
                       m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + 
                       m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + 
                       m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + 
                       m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + 
                       m.b50) + 83712.9840678755*m.b50*(-12 + m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + 
                       m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + 
                       m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + 
                       m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + 
                       m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50)) - (340.858594076896*m.b1*(-1 + m.b1) + 
                       336.980642516329*m.b2*(-1 + m.b2) + 184.524149988173*m.b3*(-1 + m.b3) + 232.602818369695*m.b4*(-1
                        + m.b4) + 298.34870514368*m.b5*(-1 + m.b5) + 280.1008517453*m.b6*(-1 + m.b6) + 252.297651749132*
                       m.b7*(-1 + m.b7) + 168.463700850501*m.b8*(-1 + m.b8) + 304.847001621725*m.b9*(-1 + m.b9) + 
                       327.420236223183*m.b10*(-1 + m.b10) + 273.412237272816*m.b11*(-1 + m.b11) + 304.172283704768*
                       m.b12*(-1 + m.b12) + 249.667290677319*m.b13*(-1 + m.b13) + 494.74062347678*m.b14*(-1 + m.b14) + 
                       345.934714506107*m.b15*(-1 + m.b15) + 211.960111694256*m.b16*(-1 + m.b16) + 245.48227158974*m.b17
                       *(-1 + m.b17) + 217.176244450645*m.b18*(-1 + m.b18) + 369.847784901948*m.b19*(-1 + m.b19) + 
                       209.715470500268*m.b20*(-1 + m.b20) + 321.785187438606*m.b21*(-1 + m.b21) + 315.861235500749*
                       m.b22*(-1 + m.b22) + 324.707504193154*m.b23*(-1 + m.b23) + 242.524912798329*m.b24*(-1 + m.b24) + 
                       353.216939937964*m.b25*(-1 + m.b25) + 367.560270653985*m.b26*(-1 + m.b26) + 316.735265538791*
                       m.b27*(-1 + m.b27) + 389.304198840669*m.b28*(-1 + m.b28) + 361.478898560672*m.b29*(-1 + m.b29) + 
                       192.448095967608*m.b30*(-1 + m.b30) + 326.636364713177*m.b31*(-1 + m.b31) + 333.259003691493*
                       m.b32*(-1 + m.b32) + 341.876295233634*m.b33*(-1 + m.b33) + 271.636243008183*m.b34*(-1 + m.b34) + 
                       278.259291728524*m.b35*(-1 + m.b35) + 277.517640728049*m.b36*(-1 + m.b36) + 309.41095812091*m.b37
                       *(-1 + m.b37) + 391.123661867923*m.b38*(-1 + m.b38) + 270.529424804417*m.b39*(-1 + m.b39) + 
                       280.351042235718*m.b40*(-1 + m.b40) + 309.292421856107*m.b41*(-1 + m.b41) + 242.756597719471*
                       m.b42*(-1 + m.b42) + 279.475501085226*m.b43*(-1 + m.b43) + 297.8531308086*m.b44*(-1 + m.b44) + 
                       358.308039193896*m.b45*(-1 + m.b45) + 213.574181993154*m.b46*(-1 + m.b46) + 283.511584818274*
                       m.b47*(-1 + m.b47) + 355.179696165712*m.b48*(-1 + m.b48) + 299.259202379329*m.b49*(-1 + m.b49) + 
                       392.164841416837*m.b50*(-1 + m.b50)), sense=maximize)

m.c2 = Constraint(expr=   41*m.b1 + 13*m.b2 + 36*m.b3 + 5*m.b4 + 18*m.b5 + 49*m.b6 + 49*m.b7 + 32*m.b8 + 24*m.b9
                        + 36*m.b10 + m.b11 + 33*m.b12 + 5*m.b13 + 42*m.b14 + 3*m.b15 + 3*m.b16 + 5*m.b17 + 47*m.b18
                        + 42*m.b19 + 45*m.b20 + 34*m.b21 + 5*m.b22 + 3*m.b23 + 30*m.b24 + 11*m.b25 + 41*m.b26 + 10*m.b27
                        + 15*m.b28 + 32*m.b29 + 17*m.b30 + 15*m.b31 + 7*m.b32 + 34*m.b33 + 2*m.b34 + m.b35 + 22*m.b36
                        + 15*m.b37 + 45*m.b38 + 47*m.b39 + 23*m.b40 + 9*m.b41 + 39*m.b42 + 12*m.b43 + 10*m.b44 + 7*m.b45
                        + 30*m.b46 + 38*m.b47 + 35*m.b48 + 18*m.b49 + 40*m.b50 <= 346)

m.c3 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13
                        + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25
                        + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37
                        + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49
                        + m.b50 == 12)
