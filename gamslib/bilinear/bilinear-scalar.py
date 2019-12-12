#  MINLP written by GAMS Convert at 12/13/18 11:30:33
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         64       63        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        181      121       60        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        481      181      300        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(101,10000),initialize=101)
m.x3 = Var(within=Reals,bounds=(102,10000),initialize=102)
m.x4 = Var(within=Reals,bounds=(103,10000),initialize=103)
m.x5 = Var(within=Reals,bounds=(104,10000),initialize=104)
m.x6 = Var(within=Reals,bounds=(105,10000),initialize=105)
m.x7 = Var(within=Reals,bounds=(106,10000),initialize=106)
m.x8 = Var(within=Reals,bounds=(107,10000),initialize=107)
m.x9 = Var(within=Reals,bounds=(108,10000),initialize=108)
m.x10 = Var(within=Reals,bounds=(109,10000),initialize=109)
m.x11 = Var(within=Reals,bounds=(110,10000),initialize=110)
m.x12 = Var(within=Reals,bounds=(111,10000),initialize=111)
m.x13 = Var(within=Reals,bounds=(112,10000),initialize=112)
m.x14 = Var(within=Reals,bounds=(113,10000),initialize=113)
m.x15 = Var(within=Reals,bounds=(114,10000),initialize=114)
m.x16 = Var(within=Reals,bounds=(115,10000),initialize=115)
m.x17 = Var(within=Reals,bounds=(116,10000),initialize=116)
m.x18 = Var(within=Reals,bounds=(117,10000),initialize=117)
m.x19 = Var(within=Reals,bounds=(118,10000),initialize=118)
m.x20 = Var(within=Reals,bounds=(119,10000),initialize=119)
m.x21 = Var(within=Reals,bounds=(120,10000),initialize=120)
m.x22 = Var(within=Reals,bounds=(121,10000),initialize=121)
m.x23 = Var(within=Reals,bounds=(122,10000),initialize=122)
m.x24 = Var(within=Reals,bounds=(123,10000),initialize=123)
m.x25 = Var(within=Reals,bounds=(124,10000),initialize=124)
m.x26 = Var(within=Reals,bounds=(125,10000),initialize=125)
m.x27 = Var(within=Reals,bounds=(126,10000),initialize=126)
m.x28 = Var(within=Reals,bounds=(127,10000),initialize=127)
m.x29 = Var(within=Reals,bounds=(128,10000),initialize=128)
m.x30 = Var(within=Reals,bounds=(129,10000),initialize=129)
m.x31 = Var(within=Reals,bounds=(130,10000),initialize=130)
m.x32 = Var(within=Reals,bounds=(131,10000),initialize=131)
m.x33 = Var(within=Reals,bounds=(132,10000),initialize=132)
m.x34 = Var(within=Reals,bounds=(133,10000),initialize=133)
m.x35 = Var(within=Reals,bounds=(134,10000),initialize=134)
m.x36 = Var(within=Reals,bounds=(135,10000),initialize=135)
m.x37 = Var(within=Reals,bounds=(136,10000),initialize=136)
m.x38 = Var(within=Reals,bounds=(137,10000),initialize=137)
m.x39 = Var(within=Reals,bounds=(138,10000),initialize=138)
m.x40 = Var(within=Reals,bounds=(139,10000),initialize=139)
m.x41 = Var(within=Reals,bounds=(140,10000),initialize=140)
m.x42 = Var(within=Reals,bounds=(141,10000),initialize=141)
m.x43 = Var(within=Reals,bounds=(142,10000),initialize=142)
m.x44 = Var(within=Reals,bounds=(143,10000),initialize=143)
m.x45 = Var(within=Reals,bounds=(144,10000),initialize=144)
m.x46 = Var(within=Reals,bounds=(145,10000),initialize=145)
m.x47 = Var(within=Reals,bounds=(146,10000),initialize=146)
m.x48 = Var(within=Reals,bounds=(147,10000),initialize=147)
m.x49 = Var(within=Reals,bounds=(148,10000),initialize=148)
m.x50 = Var(within=Reals,bounds=(149,10000),initialize=149)
m.x51 = Var(within=Reals,bounds=(150,10000),initialize=150)
m.x52 = Var(within=Reals,bounds=(151,10000),initialize=151)
m.x53 = Var(within=Reals,bounds=(152,10000),initialize=152)
m.x54 = Var(within=Reals,bounds=(153,10000),initialize=153)
m.x55 = Var(within=Reals,bounds=(154,10000),initialize=154)
m.x56 = Var(within=Reals,bounds=(155,10000),initialize=155)
m.x57 = Var(within=Reals,bounds=(156,10000),initialize=156)
m.x58 = Var(within=Reals,bounds=(157,10000),initialize=157)
m.x59 = Var(within=Reals,bounds=(158,10000),initialize=158)
m.x60 = Var(within=Reals,bounds=(159,10000),initialize=159)
m.x61 = Var(within=Reals,bounds=(160,10000),initialize=160)
m.x62 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x63 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x64 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x65 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x66 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x67 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x68 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x69 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x70 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x73 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x74 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x77 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x78 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x90 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x109 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x110 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x111 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x112 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x113 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x114 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x119 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x120 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x121 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b122 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b123 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b124 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b125 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b126 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b127 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b128 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b129 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b130 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b131 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b132 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b133 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b134 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b135 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b136 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b137 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b138 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b139 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b140 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b141 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b142 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b143 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b144 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b145 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b146 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b147 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b148 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b149 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b150 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b151 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b152 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b153 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b154 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b155 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b156 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b157 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b158 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b159 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b160 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b161 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b162 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b163 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b164 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b165 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b166 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b167 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b168 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b169 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b170 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b171 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b172 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b173 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b174 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b175 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b176 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b177 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b178 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b179 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b180 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b181 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=0.041*m.x2 - ((m.x2*m.b122 + 3.58578643762691*m.x3*m.b123 + 1.73205080756888*m.x4*m.b124 + 3*m.x5
                       *m.b125 + 2.23606797749979*m.x6*m.b126 + 2.55051025721682*m.x7*m.b127 + 2.64575131106459*m.x8*
                       m.b128 + 2.17157287525381*m.x9*m.b129 + 3*m.x10*m.b130 + 1.83772233983162*m.x11*m.b131 + 
                       3.3166247903554*m.x12*m.b132 + 1.53589838486225*m.x13*m.b133 + 3.60555127546399*m.x14*m.b134 + 
                       1.25834261322606*m.x15*m.b135 + 3.87298334620742*m.x16*m.b136 + m.x17*m.b137 + 4.12310562561766*
                       m.x18*m.b138 + 0.757359312880715*m.x19*m.b139 + 4.35889894354067*m.x20*m.b140 + 0.52786404500042*
                       m.x21*m.b141 + 4.58257569495584*m.x22*m.b142 + 0.30958424017657*m.x23*m.b143 + 4.79583152331272*
                       m.x24*m.b144 + 0.101020514433644*m.x25*m.b145 + 5*m.x26*m.b146 - 0.0990195135927845*m.x27*m.b147
                        + 5.19615242270663*m.x28*m.b148 - 0.291502622129181*m.x29*m.b149 + 5.3851648071345*m.x30*m.b150
                        - 0.477225575051661*m.x31*m.b151 + 5.56776436283002*m.x32*m.b152 - 0.656854249492381*m.x33*
                       m.b153 + 5.74456264653803*m.x34*m.b154 - 0.830951894845301*m.x35*m.b155 + 5.91607978309962*m.x36*
                       m.b156 - m.x37*m.b157 + 6.08276253029822*m.x38*m.b158 - 1.16441400296898*m.x39*m.b159 + 
                       6.2449979983984*m.x40*m.b160 - 1.32455532033676*m.x41*m.b161 + 6.40312423743285*m.x42*m.b162 - 
                       1.48074069840786*m.x43*m.b163 + 6.557438524302*m.x44*m.b164 - 1.6332495807108*m.x45*m.b165 + 
                       6.70820393249937*m.x46*m.b166 - 1.78232998312527*m.x47*m.b167 + 6.85565460040104*m.x48*m.b168 - 
                       1.92820323027551*m.x49*m.b169 + 7*m.x50*m.b170 - 2.07106781186548*m.x51*m.b171 + 7.14142842854285
                       *m.x52*m.b172 - 2.21110255092798*m.x53*m.b173 + 7.28010988928052*m.x54*m.b174 - 2.34846922834953*
                       m.x55*m.b175 + 7.41619848709566*m.x56*m.b176 - 2.48331477354788*m.x57*m.b177 + 7.54983443527075*
                       m.x58*m.b178 - 2.61577310586391*m.x59*m.b179 + 7.68114574786861*m.x60*m.b180 - 2.74596669241483*
                       m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + 
                       m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + 
                       m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + 
                       m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + 
                       m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117
                        + m.x118 + m.x119 + m.x120 + m.x121)**2 + (2*m.x2*m.b122 + 2.17157287525381*m.x3*m.b123 + 
                       3.46410161513775*m.x4*m.b124 + m.x5*m.b125 + 4.47213595499958*m.x6*m.b126 + 0.101020514433644*
                       m.x7*m.b127 + 5.29150262212918*m.x8*m.b128 - 0.656854249492381*m.x9*m.b129 + 6*m.x10*m.b130 - 
                       1.32455532033676*m.x11*m.b131 + 6.6332495807108*m.x12*m.b132 - 1.92820323027551*m.x13*m.b133 + 
                       7.21110255092798*m.x14*m.b134 - 2.48331477354788*m.x15*m.b135 + 7.74596669241483*m.x16*m.b136 - 3
                       *m.x17*m.b137 + 8.24621125123532*m.x18*m.b138 - 3.48528137423857*m.x19*m.b139 + 8.71779788708135*
                       m.x20*m.b140 - 3.94427190999916*m.x21*m.b141 + 9.16515138991168*m.x22*m.b142 - 4.38083151964686*
                       m.x23*m.b143 + 9.59166304662544*m.x24*m.b144 - 4.79795897113271*m.x25*m.b145 + 10*m.x26*m.b146 - 
                       5.19803902718557*m.x27*m.b147 + 10.3923048454133*m.x28*m.b148 - 5.58300524425836*m.x29*m.b149 + 
                       10.770329614269*m.x30*m.b150 - 5.95445115010332*m.x31*m.b151 + 11.13552872566*m.x32*m.b152 - 
                       6.31370849898476*m.x33*m.b153 + 11.4891252930761*m.x34*m.b154 - 6.6619037896906*m.x35*m.b155 + 
                       11.8321595661992*m.x36*m.b156 - 7*m.x37*m.b157 + 12.1655250605964*m.x38*m.b158 - 7.32882800593795
                       *m.x39*m.b159 + 12.4899959967968*m.x40*m.b160 - 7.64911064067352*m.x41*m.b161 + 12.8062484748657*
                       m.x42*m.b162 - 7.96148139681572*m.x43*m.b163 + 13.114877048604*m.x44*m.b164 - 8.2664991614216*
                       m.x45*m.b165 + 13.4164078649987*m.x46*m.b166 - 8.56465996625054*m.x47*m.b167 + 13.7113092008021*
                       m.x48*m.b168 - 8.85640646055102*m.x49*m.b169 + 14*m.x50*m.b170 - 9.14213562373095*m.x51*m.b171 + 
                       14.2828568570857*m.x52*m.b172 - 9.42220510185596*m.x53*m.b173 + 14.560219778561*m.x54*m.b174 - 
                       9.69693845669907*m.x55*m.b175 + 14.8323969741913*m.x56*m.b176 - 9.96662954709577*m.x57*m.b177 + 
                       15.0996688705415*m.x58*m.b178 - 10.2315462117278*m.x59*m.b179 + 15.3622914957372*m.x60*m.b180 - 
                       10.4919333848297*m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + 
                       m.x70 + m.x71 + m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + 
                       m.x82 + m.x83 + m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + 
                       m.x94 + m.x95 + m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + 
                       m.x105 + m.x106 + m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115
                        + m.x116 + m.x117 + m.x118 + m.x119 + m.x120 + m.x121)**2 + (3*m.x2*m.b122 + 0.757359312880714*
                       m.x3*m.b123 + 5.19615242270663*m.x4*m.b124 - m.x5*m.b125 + 6.70820393249937*m.x6*m.b126 - 
                       2.34846922834953*m.x7*m.b127 + 7.93725393319377*m.x8*m.b128 - 3.48528137423857*m.x9*m.b129 + 9*
                       m.x10*m.b130 - 4.48683298050514*m.x11*m.b131 + 9.9498743710662*m.x12*m.b132 - 5.39230484541326*
                       m.x13*m.b133 + 10.816653826392*m.x14*m.b134 - 6.22497216032182*m.x15*m.b135 + 11.6189500386223*
                       m.x16*m.b136 - 7*m.x17*m.b137 + 12.369316876853*m.x18*m.b138 - 7.72792206135786*m.x19*m.b139 + 
                       13.076696830622*m.x20*m.b140 - 8.41640786499874*m.x21*m.b141 + 13.7477270848675*m.x22*m.b142 - 
                       9.07124727947029*m.x23*m.b143 + 14.3874945699382*m.x24*m.b144 - 9.69693845669907*m.x25*m.b145 + 
                       15*m.x26*m.b146 - 10.2970585407784*m.x27*m.b147 + 15.5884572681199*m.x28*m.b148 - 
                       10.8745078663875*m.x29*m.b149 + 16.1554944214035*m.x30*m.b150 - 11.431676725155*m.x31*m.b151 + 
                       16.7032930884901*m.x32*m.b152 - 11.9705627484771*m.x33*m.b153 + 17.2336879396141*m.x34*m.b154 - 
                       12.4928556845359*m.x35*m.b155 + 17.7482393492988*m.x36*m.b156 - 13*m.x37*m.b157 + 
                       18.2482875908947*m.x38*m.b158 - 13.4932420089069*m.x39*m.b159 + 18.7349939951952*m.x40*m.b160 - 
                       13.9736659610103*m.x41*m.b161 + 19.2093727122985*m.x42*m.b162 - 14.4422220952236*m.x43*m.b163 + 
                       19.672315572906*m.x44*m.b164 - 14.8997487421324*m.x45*m.b165 + 20.1246117974981*m.x46*m.b166 - 
                       15.3469899493758*m.x47*m.b167 + 20.5669638012031*m.x48*m.b168 - 15.7846096908265*m.x49*m.b169 + 
                       21*m.x50*m.b170 - 16.2132034355964*m.x51*m.b171 + 21.4242852856285*m.x52*m.b172 - 
                       16.6333076527839*m.x53*m.b173 + 21.8403296678416*m.x54*m.b174 - 17.0454076850486*m.x55*m.b175 + 
                       22.248595461287*m.x56*m.b176 - 17.4499443206436*m.x57*m.b177 + 22.6495033058122*m.x58*m.b178 - 
                       17.8473193175917*m.x59*m.b179 + 23.0434372436058*m.x60*m.b180 - 18.2379000772445*m.x61*m.b181 + 
                       m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + 
                       m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + 
                       m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + m.x96 + m.x97 + 
                       m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + m.x107 + m.x108 + 
                       m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119
                        + m.x120 + m.x121)**2 + (4*m.x2*m.b122 - 0.656854249492381*m.x3*m.b123 + 6.92820323027551*m.x4*
                       m.b124 - 3*m.x5*m.b125 + 8.94427190999916*m.x6*m.b126 - 4.79795897113271*m.x7*m.b127 + 
                       10.5830052442584*m.x8*m.b128 - 6.31370849898476*m.x9*m.b129 + 12*m.x10*m.b130 - 7.64911064067352*
                       m.x11*m.b131 + 13.2664991614216*m.x12*m.b132 - 8.85640646055102*m.x13*m.b133 + 14.422205101856*
                       m.x14*m.b134 - 9.96662954709577*m.x15*m.b135 + 15.4919333848297*m.x16*m.b136 - 11*m.x17*m.b137 + 
                       16.4924225024706*m.x18*m.b138 - 11.9705627484771*m.x19*m.b139 + 17.4355957741627*m.x20*m.b140 - 
                       12.8885438199983*m.x21*m.b141 + 18.3303027798234*m.x22*m.b142 - 13.7616630392937*m.x23*m.b143 + 
                       19.1833260932509*m.x24*m.b144 - 14.5959179422654*m.x25*m.b145 + 20*m.x26*m.b146 - 
                       15.3960780543711*m.x27*m.b147 + 20.7846096908265*m.x28*m.b148 - 16.1660104885167*m.x29*m.b149 + 
                       21.540659228538*m.x30*m.b150 - 16.9089023002066*m.x31*m.b151 + 22.2710574513201*m.x32*m.b152 - 
                       17.6274169979695*m.x33*m.b153 + 22.9782505861521*m.x34*m.b154 - 18.3238075793812*m.x35*m.b155 + 
                       23.6643191323985*m.x36*m.b156 - 19*m.x37*m.b157 + 24.3310501211929*m.x38*m.b158 - 
                       19.6576560118759*m.x39*m.b159 + 24.9799919935936*m.x40*m.b160 - 20.298221281347*m.x41*m.b161 + 
                       25.6124969497314*m.x42*m.b162 - 20.9229627936314*m.x43*m.b163 + 26.229754097208*m.x44*m.b164 - 
                       21.5329983228432*m.x45*m.b165 + 26.8328157299975*m.x46*m.b166 - 22.1293199325011*m.x47*m.b167 + 
                       27.4226184016042*m.x48*m.b168 - 22.712812921102*m.x49*m.b169 + 28*m.x50*m.b170 - 23.2842712474619
                       *m.x51*m.b171 + 28.5657137141714*m.x52*m.b172 - 23.8444102037119*m.x53*m.b173 + 29.1204395571221*
                       m.x54*m.b174 - 24.3938769133981*m.x55*m.b175 + 29.6647939483827*m.x56*m.b176 - 24.9332590941915*
                       m.x57*m.b177 + 30.199337741083*m.x58*m.b178 - 25.4630924234556*m.x59*m.b179 + 30.7245829914744*
                       m.x60*m.b180 - 25.9838667696593*m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + 
                       m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + 
                       m.x80 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + 
                       m.x92 + m.x93 + m.x94 + m.x95 + m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103
                        + m.x104 + m.x105 + m.x106 + m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + 
                       m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119 + m.x120 + m.x121)**2 + (5*m.x2*m.b122 - 
                       2.07106781186548*m.x3*m.b123 + 8.66025403784439*m.x4*m.b124 - 5*m.x5*m.b125 + 11.1803398874989*
                       m.x6*m.b126 - 7.24744871391589*m.x7*m.b127 + 13.228756555323*m.x8*m.b128 - 9.14213562373095*m.x9*
                       m.b129 + 15*m.x10*m.b130 - 10.8113883008419*m.x11*m.b131 + 16.583123951777*m.x12*m.b132 - 
                       12.3205080756888*m.x13*m.b133 + 18.0277563773199*m.x14*m.b134 - 13.7082869338697*m.x15*m.b135 + 
                       19.3649167310371*m.x16*m.b136 - 15*m.x17*m.b137 + 20.6155281280883*m.x18*m.b138 - 
                       16.2132034355964*m.x19*m.b139 + 21.7944947177034*m.x20*m.b140 - 17.3606797749979*m.x21*m.b141 + 
                       22.9128784747792*m.x22*m.b142 - 18.4520787991171*m.x23*m.b143 + 23.9791576165636*m.x24*m.b144 - 
                       19.4948974278318*m.x25*m.b145 + 25*m.x26*m.b146 - 20.4950975679639*m.x27*m.b147 + 
                       25.9807621135332*m.x28*m.b148 - 21.4575131106459*m.x29*m.b149 + 26.9258240356725*m.x30*m.b150 - 
                       22.3861278752583*m.x31*m.b151 + 27.8388218141501*m.x32*m.b152 - 23.2842712474619*m.x33*m.b153 + 
                       28.7228132326901*m.x34*m.b154 - 24.1547594742265*m.x35*m.b155 + 29.5803989154981*m.x36*m.b156 - 
                       25*m.x37*m.b157 + 30.4138126514911*m.x38*m.b158 - 25.8220700148449*m.x39*m.b159 + 31.224989991992
                       *m.x40*m.b160 - 26.6227766016838*m.x41*m.b161 + 32.0156211871642*m.x42*m.b162 - 27.4037034920393*
                       m.x43*m.b163 + 32.78719262151*m.x44*m.b164 - 28.166247903554*m.x45*m.b165 + 33.5410196624969*
                       m.x46*m.b166 - 28.9116499156263*m.x47*m.b167 + 34.2782730020052*m.x48*m.b168 - 29.6410161513775*
                       m.x49*m.b169 + 35*m.x50*m.b170 - 30.3553390593274*m.x51*m.b171 + 35.7071421427143*m.x52*m.b172 - 
                       31.0555127546399*m.x53*m.b173 + 36.4005494464026*m.x54*m.b174 - 31.7423461417477*m.x55*m.b175 + 
                       37.0809924354783*m.x56*m.b176 - 32.4165738677394*m.x57*m.b177 + 37.7491721763538*m.x58*m.b178 - 
                       33.0788655293195*m.x59*m.b179 + 38.405728739343*m.x60*m.b180 - 33.7298334620742*m.x61*m.b181 + 
                       m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + 
                       m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + 
                       m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + m.x96 + m.x97 + 
                       m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + m.x107 + m.x108 + 
                       m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119
                        + m.x120 + m.x121)**2 + (6*m.x2*m.b122 - 3.48528137423857*m.x3*m.b123 + 10.3923048454133*m.x4*
                       m.b124 - 7*m.x5*m.b125 + 13.4164078649987*m.x6*m.b126 - 9.69693845669907*m.x7*m.b127 + 
                       15.8745078663875*m.x8*m.b128 - 11.9705627484771*m.x9*m.b129 + 18*m.x10*m.b130 - 13.9736659610103*
                       m.x11*m.b131 + 19.8997487421324*m.x12*m.b132 - 15.7846096908265*m.x13*m.b133 + 21.6333076527839*
                       m.x14*m.b134 - 17.4499443206436*m.x15*m.b135 + 23.2379000772445*m.x16*m.b136 - 19*m.x17*m.b137 + 
                       24.738633753706*m.x18*m.b138 - 20.4558441227157*m.x19*m.b139 + 26.153393661244*m.x20*m.b140 - 
                       21.8328157299975*m.x21*m.b141 + 27.495454169735*m.x22*m.b142 - 23.1424945589406*m.x23*m.b143 + 
                       28.7749891398763*m.x24*m.b144 - 24.3938769133981*m.x25*m.b145 + 30*m.x26*m.b146 - 
                       25.5941170815567*m.x27*m.b147 + 31.1769145362398*m.x28*m.b148 - 26.7490157327751*m.x29*m.b149 + 
                       32.310988842807*m.x30*m.b150 - 27.86335345031*m.x31*m.b151 + 33.4065861769801*m.x32*m.b152 - 
                       28.9411254969543*m.x33*m.b153 + 34.4673758792282*m.x34*m.b154 - 29.9857113690718*m.x35*m.b155 + 
                       35.4964786985977*m.x36*m.b156 - 31*m.x37*m.b157 + 36.4965751817893*m.x38*m.b158 - 
                       31.9864840178139*m.x39*m.b159 + 37.4699879903904*m.x40*m.b160 - 32.9473319220206*m.x41*m.b161 + 
                       38.4187454245971*m.x42*m.b162 - 33.8844441904472*m.x43*m.b163 + 39.344631145812*m.x44*m.b164 - 
                       34.7994974842648*m.x45*m.b165 + 40.2492235949962*m.x46*m.b166 - 35.6939798987516*m.x47*m.b167 + 
                       41.1339276024063*m.x48*m.b168 - 36.5692193816531*m.x49*m.b169 + 42*m.x50*m.b170 - 
                       37.4264068711929*m.x51*m.b171 + 42.8485705712571*m.x52*m.b172 - 38.2666153055679*m.x53*m.b173 + 
                       43.6806593356831*m.x54*m.b174 - 39.0908153700972*m.x55*m.b175 + 44.497190922574*m.x56*m.b176 - 
                       39.8998886412873*m.x57*m.b177 + 45.2990066116245*m.x58*m.b178 - 40.6946386351835*m.x59*m.b179 + 
                       46.0868744872116*m.x60*m.b180 - 41.475800154489*m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + 
                       m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + 
                       m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + 
                       m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101
                        + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + 
                       m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119 + m.x120 + m.x121)**2 + (7*
                       m.x2*m.b122 - 4.89949493661167*m.x3*m.b123 + 12.1243556529821*m.x4*m.b124 - 9*m.x5*m.b125 + 
                       15.6524758424985*m.x6*m.b126 - 12.1464281994822*m.x7*m.b127 + 18.5202591774521*m.x8*m.b128 - 
                       14.7989898732233*m.x9*m.b129 + 21*m.x10*m.b130 - 17.1359436211787*m.x11*m.b131 + 23.2163735324878
                       *m.x12*m.b132 - 19.2487113059643*m.x13*m.b133 + 25.2388589282479*m.x14*m.b134 - 21.1916017074176*
                       m.x15*m.b135 + 27.1108834234519*m.x16*m.b136 - 23*m.x17*m.b137 + 28.8617393793236*m.x18*m.b138 - 
                       24.698484809835*m.x19*m.b139 + 30.5122926047847*m.x20*m.b140 - 26.3049516849971*m.x21*m.b141 + 
                       32.0780298646909*m.x22*m.b142 - 27.832910318764*m.x23*m.b143 + 33.570820663189*m.x24*m.b144 - 
                       29.2928563989645*m.x25*m.b145 + 35*m.x26*m.b146 - 30.6931365951495*m.x27*m.b147 + 
                       36.3730669589464*m.x28*m.b148 - 32.0405183549043*m.x29*m.b149 + 37.6961536499415*m.x30*m.b150 - 
                       33.3405790253616*m.x31*m.b151 + 38.9743505398102*m.x32*m.b152 - 34.5979797464467*m.x33*m.b153 + 
                       40.2119385257662*m.x34*m.b154 - 35.8166632639171*m.x35*m.b155 + 41.4125584816973*m.x36*m.b156 - 
                       37*m.x37*m.b157 + 42.5793377120875*m.x38*m.b158 - 38.1508980207828*m.x39*m.b159 + 
                       43.7149859887888*m.x40*m.b160 - 39.2718872423573*m.x41*m.b161 + 44.8218696620299*m.x42*m.b162 - 
                       40.365184888855*m.x43*m.b163 + 45.902069670114*m.x44*m.b164 - 41.4327470649756*m.x45*m.b165 + 
                       46.9574275274956*m.x46*m.b166 - 42.4763098818769*m.x47*m.b167 + 47.9895822028073*m.x48*m.b168 - 
                       43.4974226119286*m.x49*m.b169 + 49*m.x50*m.b170 - 44.4974746830583*m.x51*m.b171 + 49.9899989998*
                       m.x52*m.b172 - 45.4777178564959*m.x53*m.b173 + 50.9607692249636*m.x54*m.b174 - 46.4392845984467*
                       m.x55*m.b175 + 51.9133894096696*m.x56*m.b176 - 47.3832034148352*m.x57*m.b177 + 52.8488410468952*
                       m.x58*m.b178 - 48.3104117410474*m.x59*m.b179 + 53.7680202350803*m.x60*m.b180 - 49.2217668469038*
                       m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + 
                       m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + 
                       m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + 
                       m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + 
                       m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117
                        + m.x118 + m.x119 + m.x120 + m.x121)**2 + (8*m.x2*m.b122 - 6.31370849898476*m.x3*m.b123 + 
                       13.856406460551*m.x4*m.b124 - 11*m.x5*m.b125 + 17.8885438199983*m.x6*m.b126 - 14.5959179422654*
                       m.x7*m.b127 + 21.1660104885167*m.x8*m.b128 - 17.6274169979695*m.x9*m.b129 + 24*m.x10*m.b130 - 
                       20.298221281347*m.x11*m.b131 + 26.5329983228432*m.x12*m.b132 - 22.712812921102*m.x13*m.b133 + 
                       28.8444102037119*m.x14*m.b134 - 24.9332590941915*m.x15*m.b135 + 30.9838667696593*m.x16*m.b136 - 
                       27*m.x17*m.b137 + 32.9848450049413*m.x18*m.b138 - 28.9411254969543*m.x19*m.b139 + 
                       34.8711915483254*m.x20*m.b140 - 30.7770876399966*m.x21*m.b141 + 36.6606055596467*m.x22*m.b142 - 
                       32.5233260785874*m.x23*m.b143 + 38.3666521865018*m.x24*m.b144 - 34.1918358845308*m.x25*m.b145 + 
                       40*m.x26*m.b146 - 35.7921561087423*m.x27*m.b147 + 41.5692193816531*m.x28*m.b148 - 
                       37.3320209770335*m.x29*m.b149 + 43.081318457076*m.x30*m.b150 - 38.8178046004133*m.x31*m.b151 + 
                       44.5421149026402*m.x32*m.b152 - 40.254833995939*m.x33*m.b153 + 45.9565011723042*m.x34*m.b154 - 
                       41.6476151587624*m.x35*m.b155 + 47.3286382647969*m.x36*m.b156 - 43*m.x37*m.b157 + 
                       48.6621002423858*m.x38*m.b158 - 44.3153120237518*m.x39*m.b159 + 49.9599839871872*m.x40*m.b160 - 
                       45.5964425626941*m.x41*m.b161 + 51.2249938994628*m.x42*m.b162 - 46.8459255872629*m.x43*m.b163 + 
                       52.459508194416*m.x44*m.b164 - 48.0659966456864*m.x45*m.b165 + 53.665631459995*m.x46*m.b166 - 
                       49.2586398650021*m.x47*m.b167 + 54.8452368032084*m.x48*m.b168 - 50.4256258422041*m.x49*m.b169 + 
                       56*m.x50*m.b170 - 51.5685424949238*m.x51*m.b171 + 57.1314274283428*m.x52*m.b172 - 
                       52.6888204074238*m.x53*m.b173 + 58.2408791142441*m.x54*m.b174 - 53.7877538267963*m.x55*m.b175 + 
                       59.3295878967653*m.x56*m.b176 - 54.8665181883831*m.x57*m.b177 + 60.398675482166*m.x58*m.b178 - 
                       55.9261848469113*m.x59*m.b179 + 61.4491659829489*m.x60*m.b180 - 56.9677335393187*m.x61*m.b181 + 
                       m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + 
                       m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + 
                       m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + m.x96 + m.x97 + 
                       m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + m.x107 + m.x108 + 
                       m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119
                        + m.x120 + m.x121)**2 + (9*m.x2*m.b122 - 7.72792206135786*m.x3*m.b123 + 15.5884572681199*m.x4*
                       m.b124 - 13*m.x5*m.b125 + 20.1246117974981*m.x6*m.b126 - 17.0454076850486*m.x7*m.b127 + 
                       23.8117617995813*m.x8*m.b128 - 20.4558441227157*m.x9*m.b129 + 27*m.x10*m.b130 - 23.4604989415154*
                       m.x11*m.b131 + 29.8496231131986*m.x12*m.b132 - 26.1769145362398*m.x13*m.b133 + 32.4499614791759*
                       m.x14*m.b134 - 28.6749164809655*m.x15*m.b135 + 34.8568501158668*m.x16*m.b136 - 31*m.x17*m.b137 + 
                       37.1079506305589*m.x18*m.b138 - 33.1837661840736*m.x19*m.b139 + 39.2300904918661*m.x20*m.b140 - 
                       35.2492235949962*m.x21*m.b141 + 41.2431812546026*m.x22*m.b142 - 37.2137418384109*m.x23*m.b143 + 
                       43.1624837098145*m.x24*m.b144 - 39.0908153700972*m.x25*m.b145 + 45*m.x26*m.b146 - 
                       40.8911756223351*m.x27*m.b147 + 46.7653718043597*m.x28*m.b148 - 42.6235235991626*m.x29*m.b149 + 
                       48.4664832642105*m.x30*m.b150 - 44.295030175465*m.x31*m.b151 + 50.1098792654702*m.x32*m.b152 - 
                       45.9116882454314*m.x33*m.b153 + 51.7010638188423*m.x34*m.b154 - 47.4785670536077*m.x35*m.b155 + 
                       53.2447180478965*m.x36*m.b156 - 49*m.x37*m.b157 + 54.744862772684*m.x38*m.b158 - 50.4797260267208
                       *m.x39*m.b159 + 56.2049819855856*m.x40*m.b160 - 51.9209978830308*m.x41*m.b161 + 57.6281181368956*
                       m.x42*m.b162 - 53.3266662856707*m.x43*m.b163 + 59.016946718718*m.x44*m.b164 - 54.6992462263972*
                       m.x45*m.b165 + 60.3738353924943*m.x46*m.b166 - 56.0409698481274*m.x47*m.b167 + 61.7008914036094*
                       m.x48*m.b168 - 57.3538290724796*m.x49*m.b169 + 63*m.x50*m.b170 - 58.6396103067893*m.x51*m.b171 + 
                       64.2728558568857*m.x52*m.b172 - 59.8999229583518*m.x53*m.b173 + 65.5209890035247*m.x54*m.b174 - 
                       61.1362230551458*m.x55*m.b175 + 66.745786383861*m.x56*m.b176 - 62.3498329619309*m.x57*m.b177 + 
                       67.9485099174368*m.x58*m.b178 - 63.5419579527752*m.x59*m.b179 + 69.1303117308175*m.x60*m.b180 - 
                       64.7137002317335*m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + m.x66 + m.x67 + m.x68 + m.x69 + 
                       m.x70 + m.x71 + m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + m.x78 + m.x79 + m.x80 + m.x81 + 
                       m.x82 + m.x83 + m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93 + 
                       m.x94 + m.x95 + m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101 + m.x102 + m.x103 + m.x104 + 
                       m.x105 + m.x106 + m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + m.x112 + m.x113 + m.x114 + m.x115
                        + m.x116 + m.x117 + m.x118 + m.x119 + m.x120 + m.x121)**2 + (10*m.x2*m.b122 - 9.14213562373095*
                       m.x3*m.b123 + 17.3205080756888*m.x4*m.b124 - 15*m.x5*m.b125 + 22.3606797749979*m.x6*m.b126 - 
                       19.4948974278318*m.x7*m.b127 + 26.4575131106459*m.x8*m.b128 - 23.2842712474619*m.x9*m.b129 + 30*
                       m.x10*m.b130 - 26.6227766016838*m.x11*m.b131 + 33.166247903554*m.x12*m.b132 - 29.6410161513775*
                       m.x13*m.b133 + 36.0555127546399*m.x14*m.b134 - 32.4165738677394*m.x15*m.b135 + 38.7298334620742*
                       m.x16*m.b136 - 35*m.x17*m.b137 + 41.2310562561766*m.x18*m.b138 - 37.4264068711928*m.x19*m.b139 + 
                       43.5889894354067*m.x20*m.b140 - 39.7213595499958*m.x21*m.b141 + 45.8257569495584*m.x22*m.b142 - 
                       41.9041575982343*m.x23*m.b143 + 47.9583152331272*m.x24*m.b144 - 43.9897948556636*m.x25*m.b145 + 
                       50*m.x26*m.b146 - 45.9901951359278*m.x27*m.b147 + 51.9615242270663*m.x28*m.b148 - 
                       47.9150262212918*m.x29*m.b149 + 53.851648071345*m.x30*m.b150 - 49.7722557505166*m.x31*m.b151 + 
                       55.6776436283002*m.x32*m.b152 - 51.5685424949238*m.x33*m.b153 + 57.4456264653803*m.x34*m.b154 - 
                       53.309518948453*m.x35*m.b155 + 59.1607978309962*m.x36*m.b156 - 55*m.x37*m.b157 + 60.8276253029822
                       *m.x38*m.b158 - 56.6441400296898*m.x39*m.b159 + 62.449979983984*m.x40*m.b160 - 58.2455532033676*
                       m.x41*m.b161 + 64.0312423743285*m.x42*m.b162 - 59.8074069840786*m.x43*m.b163 + 65.57438524302*
                       m.x44*m.b164 - 61.332495807108*m.x45*m.b165 + 67.0820393249937*m.x46*m.b166 - 62.8232998312527*
                       m.x47*m.b167 + 68.5565460040104*m.x48*m.b168 - 64.2820323027551*m.x49*m.b169 + 70*m.x50*m.b170 - 
                       65.7106781186548*m.x51*m.b171 + 71.4142842854285*m.x52*m.b172 - 67.1110255092798*m.x53*m.b173 + 
                       72.8010988928052*m.x54*m.b174 - 68.4846922834953*m.x55*m.b175 + 74.1619848709566*m.x56*m.b176 - 
                       69.8331477354788*m.x57*m.b177 + 75.4983443527075*m.x58*m.b178 - 71.1577310586391*m.x59*m.b179 + 
                       76.8114574786861*m.x60*m.b180 - 72.4596669241483*m.x61*m.b181 + m.x62 + m.x63 + m.x64 + m.x65 + 
                       m.x66 + m.x67 + m.x68 + m.x69 + m.x70 + m.x71 + m.x72 + m.x73 + m.x74 + m.x75 + m.x76 + m.x77 + 
                       m.x78 + m.x79 + m.x80 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + m.x86 + m.x87 + m.x88 + m.x89 + 
                       m.x90 + m.x91 + m.x92 + m.x93 + m.x94 + m.x95 + m.x96 + m.x97 + m.x98 + m.x99 + m.x100 + m.x101
                        + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 + m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + 
                       m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119 + m.x120 + m.x121)**2) + 
                       0.0414142135623731*m.x3 + 0.0417320508075689*m.x4 + 0.042*m.x5 + 0.0422360679774998*m.x6 + 
                       0.0424494897427832*m.x7 + 0.0426457513110646*m.x8 + 0.0428284271247462*m.x9 + 0.043*m.x10 + 
                       0.0431622776601684*m.x11 + 0.0433166247903554*m.x12 + 0.0434641016151378*m.x13 + 
                       0.043605551275464*m.x14 + 0.0437416573867739*m.x15 + 0.0438729833462074*m.x16 + 0.044*m.x17 + 
                       0.0441231056256177*m.x18 + 0.0442426406871193*m.x19 + 0.0443588989435407*m.x20 + 
                       0.0444721359549996*m.x21 + 0.0445825756949558*m.x22 + 0.0446904157598234*m.x23 + 
                       0.0447958315233127*m.x24 + 0.0448989794855664*m.x25 + 0.045*m.x26 + 0.0450990195135928*m.x27 + 
                       0.0451961524227066*m.x28 + 0.0452915026221292*m.x29 + 0.0453851648071345*m.x30 + 
                       0.0454772255750517*m.x31 + 0.04556776436283*m.x32 + 0.0456568542494924*m.x33 + 0.045744562646538*
                       m.x34 + 0.0458309518948453*m.x35 + 0.0459160797830996*m.x36 + 0.046*m.x37 + 0.0460827625302982*
                       m.x38 + 0.046164414002969*m.x39 + 0.0462449979983984*m.x40 + 0.0463245553203368*m.x41 + 
                       0.0464031242374328*m.x42 + 0.0464807406984079*m.x43 + 0.046557438524302*m.x44 + 
                       0.0466332495807108*m.x45 + 0.0467082039324994*m.x46 + 0.0467823299831253*m.x47 + 
                       0.046855654600401*m.x48 + 0.0469282032302755*m.x49 + 0.047*m.x50 + 0.0470710678118655*m.x51 + 
                       0.0471414284285429*m.x52 + 0.047211102550928*m.x53 + 0.0472801098892805*m.x54 + 
                       0.0473484692283495*m.x55 + 0.0474161984870957*m.x56 + 0.0474833147735479*m.x57 + 
                       0.0475498344352707*m.x58 + 0.0476157731058639*m.x59 + 0.0476811457478686*m.x60 + 
                       0.0477459666924148*m.x61 + 0.007*m.x62 + 0.007*m.x63 + 0.007*m.x64 + 0.007*m.x65 + 0.007*m.x66 + 
                       0.007*m.x67 + 0.007*m.x68 + 0.007*m.x69 + 0.007*m.x70 + 0.007*m.x71 + 0.007*m.x72 + 0.007*m.x73
                        + 0.007*m.x74 + 0.007*m.x75 + 0.007*m.x76 + 0.007*m.x77 + 0.007*m.x78 + 0.007*m.x79 + 0.007*
                       m.x80 + 0.007*m.x81 + 0.007*m.x82 + 0.007*m.x83 + 0.007*m.x84 + 0.007*m.x85 + 0.007*m.x86 + 0.007
                       *m.x87 + 0.007*m.x88 + 0.007*m.x89 + 0.007*m.x90 + 0.007*m.x91 + 0.007*m.x92 + 0.007*m.x93 + 
                       0.007*m.x94 + 0.007*m.x95 + 0.007*m.x96 + 0.007*m.x97 + 0.007*m.x98 + 0.007*m.x99 + 0.007*m.x100
                        + 0.007*m.x101 + 0.007*m.x102 + 0.007*m.x103 + 0.007*m.x104 + 0.007*m.x105 + 0.007*m.x106 + 
                       0.007*m.x107 + 0.007*m.x108 + 0.007*m.x109 + 0.007*m.x110 + 0.007*m.x111 + 0.007*m.x112 + 0.007*
                       m.x113 + 0.007*m.x114 + 0.007*m.x115 + 0.007*m.x116 + 0.007*m.x117 + 0.007*m.x118 + 0.007*m.x119
                        + 0.007*m.x120 + 0.007*m.x121, sense=maximize)

m.c1 = Constraint(expr=   m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10 + m.x11 + m.x12 + m.x13 + m.x14
                        + m.x15 + m.x16 + m.x17 + m.x18 + m.x19 + m.x20 + m.x21 + m.x22 + m.x23 + m.x24 + m.x25 + m.x26
                        + m.x27 + m.x28 + m.x29 + m.x30 + m.x31 + m.x32 + m.x33 + m.x34 + m.x35 + m.x36 + m.x37 + m.x38
                        + m.x39 + m.x40 + m.x41 + m.x42 + m.x43 + m.x44 + m.x45 + m.x46 + m.x47 + m.x48 + m.x49 + m.x50
                        + m.x51 + m.x52 + m.x53 + m.x54 + m.x55 + m.x56 + m.x57 + m.x58 + m.x59 + m.x60 + m.x61
                        <= 20000)

m.c2 = Constraint(expr=   m.b123 + m.b125 + m.b127 + m.b129 + m.b131 + m.b133 + m.b135 + m.b137 + m.b139 + m.b141
                        + m.b143 + m.b145 + m.b147 + m.b149 + m.b151 + m.b153 + m.b155 + m.b157 + m.b159 + m.b161
                        + m.b163 + m.b165 + m.b167 + m.b169 + m.b171 + m.b173 + m.b175 + m.b177 + m.b179 + m.b181 == 2)

m.c3 = Constraint(expr=   m.b122 + m.b124 + m.b126 + m.b128 + m.b130 + m.b132 + m.b134 + m.b136 + m.b138 + m.b140
                        + m.b142 + m.b144 + m.b146 + m.b148 + m.b150 + m.b152 + m.b154 + m.b156 + m.b158 + m.b160
                        + m.b162 + m.b164 + m.b166 + m.b168 + m.b170 + m.b172 + m.b174 + m.b176 + m.b178 + m.b180 == 5)

m.c4 = Constraint(expr=-0.164*m.x2*m.b122 + m.x62 == 0)

m.c5 = Constraint(expr=-0.164*m.x3*m.b123 + m.x63 == 0)

m.c6 = Constraint(expr=-0.164*m.x4*m.b124 + m.x64 == 0)

m.c7 = Constraint(expr=-0.164*m.x5*m.b125 + m.x65 == 0)

m.c8 = Constraint(expr=-0.164*m.x6*m.b126 + m.x66 == 0)

m.c9 = Constraint(expr=-0.164*m.x7*m.b127 + m.x67 == 0)

m.c10 = Constraint(expr=-0.164*m.x8*m.b128 + m.x68 == 0)

m.c11 = Constraint(expr=-0.164*m.x9*m.b129 + m.x69 == 0)

m.c12 = Constraint(expr=-0.164*m.x10*m.b130 + m.x70 == 0)

m.c13 = Constraint(expr=-0.164*m.x11*m.b131 + m.x71 == 0)

m.c14 = Constraint(expr=-0.164*m.x12*m.b132 + m.x72 == 0)

m.c15 = Constraint(expr=-0.164*m.x13*m.b133 + m.x73 == 0)

m.c16 = Constraint(expr=-0.164*m.x14*m.b134 + m.x74 == 0)

m.c17 = Constraint(expr=-0.164*m.x15*m.b135 + m.x75 == 0)

m.c18 = Constraint(expr=-0.164*m.x16*m.b136 + m.x76 == 0)

m.c19 = Constraint(expr=-0.164*m.x17*m.b137 + m.x77 == 0)

m.c20 = Constraint(expr=-0.164*m.x18*m.b138 + m.x78 == 0)

m.c21 = Constraint(expr=-0.164*m.x19*m.b139 + m.x79 == 0)

m.c22 = Constraint(expr=-0.164*m.x20*m.b140 + m.x80 == 0)

m.c23 = Constraint(expr=-0.164*m.x21*m.b141 + m.x81 == 0)

m.c24 = Constraint(expr=-0.164*m.x22*m.b142 + m.x82 == 0)

m.c25 = Constraint(expr=-0.164*m.x23*m.b143 + m.x83 == 0)

m.c26 = Constraint(expr=-0.164*m.x24*m.b144 + m.x84 == 0)

m.c27 = Constraint(expr=-0.164*m.x25*m.b145 + m.x85 == 0)

m.c28 = Constraint(expr=-0.164*m.x26*m.b146 + m.x86 == 0)

m.c29 = Constraint(expr=-0.164*m.x27*m.b147 + m.x87 == 0)

m.c30 = Constraint(expr=-0.164*m.x28*m.b148 + m.x88 == 0)

m.c31 = Constraint(expr=-0.164*m.x29*m.b149 + m.x89 == 0)

m.c32 = Constraint(expr=-0.164*m.x30*m.b150 + m.x90 == 0)

m.c33 = Constraint(expr=-0.164*m.x31*m.b151 + m.x91 == 0)

m.c34 = Constraint(expr=-0.164*m.x32*m.b152 + m.x92 == 0)

m.c35 = Constraint(expr=-0.164*m.x33*m.b153 + m.x93 == 0)

m.c36 = Constraint(expr=-0.164*m.x34*m.b154 + m.x94 == 0)

m.c37 = Constraint(expr=-0.164*m.x35*m.b155 + m.x95 == 0)

m.c38 = Constraint(expr=-0.164*m.x36*m.b156 + m.x96 == 0)

m.c39 = Constraint(expr=-0.164*m.x37*m.b157 + m.x97 == 0)

m.c40 = Constraint(expr=-0.164*m.x38*m.b158 + m.x98 == 0)

m.c41 = Constraint(expr=-0.164*m.x39*m.b159 + m.x99 == 0)

m.c42 = Constraint(expr=-0.164*m.x40*m.b160 + m.x100 == 0)

m.c43 = Constraint(expr=-0.164*m.x41*m.b161 + m.x101 == 0)

m.c44 = Constraint(expr=-0.164*m.x42*m.b162 + m.x102 == 0)

m.c45 = Constraint(expr=-0.164*m.x43*m.b163 + m.x103 == 0)

m.c46 = Constraint(expr=-0.164*m.x44*m.b164 + m.x104 == 0)

m.c47 = Constraint(expr=-0.164*m.x45*m.b165 + m.x105 == 0)

m.c48 = Constraint(expr=-0.164*m.x46*m.b166 + m.x106 == 0)

m.c49 = Constraint(expr=-0.164*m.x47*m.b167 + m.x107 == 0)

m.c50 = Constraint(expr=-0.164*m.x48*m.b168 + m.x108 == 0)

m.c51 = Constraint(expr=-0.164*m.x49*m.b169 + m.x109 == 0)

m.c52 = Constraint(expr=-0.164*m.x50*m.b170 + m.x110 == 0)

m.c53 = Constraint(expr=-0.164*m.x51*m.b171 + m.x111 == 0)

m.c54 = Constraint(expr=-0.164*m.x52*m.b172 + m.x112 == 0)

m.c55 = Constraint(expr=-0.164*m.x53*m.b173 + m.x113 == 0)

m.c56 = Constraint(expr=-0.164*m.x54*m.b174 + m.x114 == 0)

m.c57 = Constraint(expr=-0.164*m.x55*m.b175 + m.x115 == 0)

m.c58 = Constraint(expr=-0.164*m.x56*m.b176 + m.x116 == 0)

m.c59 = Constraint(expr=-0.164*m.x57*m.b177 + m.x117 == 0)

m.c60 = Constraint(expr=-0.164*m.x58*m.b178 + m.x118 == 0)

m.c61 = Constraint(expr=-0.164*m.x59*m.b179 + m.x119 == 0)

m.c62 = Constraint(expr=-0.164*m.x60*m.b180 + m.x120 == 0)

m.c63 = Constraint(expr=-0.164*m.x61*m.b181 + m.x121 == 0)
