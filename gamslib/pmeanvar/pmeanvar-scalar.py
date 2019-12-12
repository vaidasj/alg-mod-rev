#  MIQCP written by GAMS Convert at 12/13/18 11:34:56
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         44       12       22       10        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       33       10        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        179      137       42        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


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
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0.5,0.5),initialize=0.5)
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

m.obj = Objective(expr=   m.x32 + 1452.87264558178*m.x34 + 1452.87264558178*m.x35 + 1452.87264558178*m.x36
                        + 1452.87264558178*m.x37 + 1452.87264558178*m.x38 + 1452.87264558178*m.x39
                        + 1452.87264558178*m.x40 + 1452.87264558178*m.x41 + 1452.87264558178*m.x42
                        + 1452.87264558178*m.x43, sense=minimize)

m.c2 = Constraint(expr= - 9.87743272359322*m.x2 - 0.60744529149446*m.x3 - 0.30372264574723*m.x4 - 0.809927055325946*m.x5
                        - 0.60744529149446*m.x6 - 0.506204409578716*m.x7 - 0.506204409578716*m.x8
                        - 0.809927055325946*m.x9 - 0.91116793724169*m.x10 - 0.809927055325946*m.x11 + m.x22 == 0)

m.c3 = Constraint(expr= - 1.09301757851895*m.x3 - 6.23549450884011*m.x4 - 4.12437431234793*m.x5 - 4.23690369565354*m.x6
                        - 7.03786349464858*m.x7 - 0.633574910850047*m.x8 - 6.86906941969016*m.x9
                        - 3.15321125158105*m.x10 - 6.86906941969016*m.x11 + m.x23 == 0)

m.c4 = Constraint(expr= - 7.78396030268624*m.x4 + 2.82163650777779*m.x5 + 3.28928766645632*m.x6 + 5.01522405040292*m.x7
                        - 0.115057290256277*m.x8 + 5.27726712856556*m.x9 + 1.27680170435039*m.x10
                        + 5.40573643738962*m.x11 + m.x24 == 0)

m.c5 = Constraint(expr= - 19.8478109453859*m.x5 + 1.272066595968*m.x6 + 2.04495656699716*m.x7 - 0.367877401526204*m.x8
                        + 1.75722778630245*m.x9 + 0.823550435809287*m.x10 + 2.17855856756178*m.x11 + m.x25 == 0)

m.c6 = Constraint(expr= - 20.9238086333112*m.x6 + 1.92240703366328*m.x7 - 0.0886327028593701*m.x8
                        + 2.15970874257105*m.x9 + 0.772360159642639*m.x10 + 2.06214205621627*m.x11 + m.x26 == 0)

m.c7 = Constraint(expr= - 18.5942448971665*m.x7 - 0.31108888369893*m.x8 + 4.40811298406918*m.x9 + 1.51796805048267*m.x10
                        + 4.04877290837993*m.x11 + m.x27 == 0)

m.c8 = Constraint(expr= - 16.4818934933157*m.x8 - 0.245985664690768*m.x9 + 0.0284240686306186*m.x10
                        - 0.188306921712992*m.x11 + m.x28 == 0)

m.c9 = Constraint(expr= - 7.78651860346819*m.x9 + 4.74348724367373*m.x10 + 12.2703400205275*m.x11 + m.x29 == 0)

m.c10 = Constraint(expr= - 9.43822042084945*m.x10 + 9.3271064009653*m.x11 + m.x30 == 0)

m.c11 = Constraint(expr= - 1.5870939997747*m.x11 + m.x31 == 0)

m.c12 = Constraint(expr=2*m.x34*m.b12 - m.x2**2 >= 0)

m.c13 = Constraint(expr=2*m.x35*m.b13 - m.x3**2 >= 0)

m.c14 = Constraint(expr=2*m.x36*m.b14 - m.x4**2 >= 0)

m.c15 = Constraint(expr=2*m.x37*m.b15 - m.x5**2 >= 0)

m.c16 = Constraint(expr=2*m.x38*m.b16 - m.x6**2 >= 0)

m.c17 = Constraint(expr=2*m.x39*m.b17 - m.x7**2 >= 0)

m.c18 = Constraint(expr=2*m.x40*m.b18 - m.x8**2 >= 0)

m.c19 = Constraint(expr=2*m.x41*m.b19 - m.x9**2 >= 0)

m.c20 = Constraint(expr=2*m.x42*m.b20 - m.x10**2 >= 0)

m.c21 = Constraint(expr=2*m.x43*m.b21 - m.x11**2 >= 0)

m.c22 = Constraint(expr=2*m.x33*m.x32 - (m.x22**2 + m.x23**2 + m.x24**2 + m.x25**2 + m.x26**2 + m.x27**2 + m.x28**2 + 
                        m.x29**2 + m.x30**2 + m.x31**2) >= 0)

m.c23 = Constraint(expr=   m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10 + m.x11 == 1)

m.c24 = Constraint(expr=   0.00510823*m.x2 + 0.00428357*m.x3 + 0.00233976*m.x4 + 0.00459156*m.x5 + 0.0077475*m.x6
                         + 0.00851154*m.x7 + 0.00961483*m.x8 + 0.0026363*m.x9 + 0.0062024*m.x10 + 0.00557745*m.x11
                         >= 0.0044635)

m.c25 = Constraint(expr=   m.x2 - 0.11665305*m.b12 >= 0)

m.c26 = Constraint(expr=   m.x3 - 0.08608984*m.b13 >= 0)

m.c27 = Constraint(expr=   m.x4 - 0.09019614*m.b14 >= 0)

m.c28 = Constraint(expr=   m.x5 - 0.12100282*m.b15 >= 0)

m.c29 = Constraint(expr=   m.x6 - 0.07911833*m.b16 >= 0)

m.c30 = Constraint(expr=   m.x7 - 0.10907854*m.b17 >= 0)

m.c31 = Constraint(expr=   m.x8 - 0.12264871*m.b18 >= 0)

m.c32 = Constraint(expr=   m.x9 - 0.1130799*m.b19 >= 0)

m.c33 = Constraint(expr=   m.x10 - 0.07906355*m.b20 >= 0)

m.c34 = Constraint(expr=   m.x11 - 0.09599385*m.b21 >= 0)

m.c35 = Constraint(expr=   m.x2 - 0.39835244*m.b12 <= 0)

m.c36 = Constraint(expr=   m.x3 - 0.39486243*m.b13 <= 0)

m.c37 = Constraint(expr=   m.x4 - 0.38205737*m.b14 <= 0)

m.c38 = Constraint(expr=   m.x5 - 0.39297053*m.b15 <= 0)

m.c39 = Constraint(expr=   m.x6 - 0.39886594*m.b16 <= 0)

m.c40 = Constraint(expr=   m.x7 - 0.40689465*m.b17 <= 0)

m.c41 = Constraint(expr=   m.x8 - 0.39141883*m.b18 <= 0)

m.c42 = Constraint(expr=   m.x9 - 0.39760512*m.b19 <= 0)

m.c43 = Constraint(expr=   m.x10 - 0.40413791*m.b20 <= 0)

m.c44 = Constraint(expr=   m.x11 - 0.38879835*m.b21 <= 0)
