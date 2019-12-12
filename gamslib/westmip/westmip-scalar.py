#  MIP written by GAMS Convert at 12/13/18 10:24:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        234      108       24      102        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        275      255       20        0        0        0        0        0
#  FX      6        6        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        963      963        0        0
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
m.x49 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x122 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x123 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x124 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x125 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x126 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x127 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x128 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x129 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x130 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x151 = Var(within=Reals,bounds=(50,50),initialize=50)
m.x152 = Var(within=Reals,bounds=(50,50),initialize=50)
m.x153 = Var(within=Reals,bounds=(75,75),initialize=75)
m.x154 = Var(within=Reals,bounds=(75,75),initialize=75)
m.x155 = Var(within=Reals,bounds=(160,160),initialize=160)
m.x156 = Var(within=Reals,bounds=(126.7,126.7),initialize=126.7)
m.x157 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x158 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x159 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x160 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x161 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x162 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x163 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x164 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x165 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x166 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x167 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x168 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x169 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x170 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x171 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x172 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x173 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x174 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x175 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x176 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x177 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x178 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x179 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x180 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x181 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x182 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x183 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x184 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x185 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x186 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x187 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x188 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x189 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x190 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x191 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x192 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x193 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x194 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x195 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x196 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x197 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x198 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x199 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x200 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x201 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x202 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x203 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x204 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x205 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x206 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x207 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x208 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x209 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x210 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x211 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x212 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x213 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x214 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x215 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x216 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x217 = Var(within=Reals,bounds=(0,23.85),initialize=0)
m.x218 = Var(within=Reals,bounds=(0,23.85),initialize=0)
m.x219 = Var(within=Reals,bounds=(0,26.5),initialize=0)
m.x220 = Var(within=Reals,bounds=(0,26.5),initialize=0)
m.x221 = Var(within=Reals,bounds=(0,17.702),initialize=0)
m.x222 = Var(within=Reals,bounds=(0,24.2157),initialize=0)
m.x223 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x224 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x225 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x226 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x227 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x228 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x229 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x230 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x231 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x232 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x233 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x234 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x235 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x236 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x237 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x238 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x239 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x240 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x241 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x242 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x243 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x244 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x245 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x246 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x247 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x248 = Var(within=Reals,bounds=(None,75),initialize=0)
m.x249 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x250 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x251 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x252 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x253 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x254 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x255 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x256 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x257 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x258 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x259 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x260 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x261 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x262 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x263 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x264 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x265 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x266 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x267 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x268 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x269 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x270 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x271 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x272 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x273 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x274 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   0.934579439252336*m.x229 + 0.873438728273212*m.x230 + 0.816297876890852*m.x231
                        + 0.762895212047525*m.x232 + 0.712986179483668*m.x233 + 0.666342223816512*m.x234
                        + 0.622749741884591*m.x235 + 0.582009104565038*m.x236 + 0.543933742584148*m.x237
                        + 0.508349292134718*m.x238 + m.x274, sense=maximize)

m.c1 = Constraint(expr=   m.x1 + m.x41 - 0.45*m.x229 == 90)

m.c2 = Constraint(expr= - 0.4*m.x1 + m.x2 + m.x42 - 0.32*m.x229 == 75)

m.c3 = Constraint(expr= - 0.12*m.x1 - 0.48*m.x2 + m.x3 - m.x61 - 0.04*m.x229 == 11.5)

m.c4 = Constraint(expr= - 0.1*m.x1 - 0.21*m.x2 - 0.35*m.x3 + m.x4 - 0.19*m.x229 == 50)

m.c5 = Constraint(expr=   m.x5 + m.x43 - 0.45*m.x230 == 90)

m.c6 = Constraint(expr= - 0.4*m.x5 + m.x6 + m.x44 - 0.32*m.x230 == 75)

m.c7 = Constraint(expr= - 0.12*m.x5 - 0.48*m.x6 + m.x7 - m.x62 - 0.04*m.x230 == 11.5)

m.c8 = Constraint(expr= - 0.1*m.x5 - 0.21*m.x6 - 0.35*m.x7 + m.x8 - 0.19*m.x230 == 50)

m.c9 = Constraint(expr=   m.x9 + m.x45 - 0.45*m.x231 == 90)

m.c10 = Constraint(expr= - 0.4*m.x9 + m.x10 + m.x46 - 0.32*m.x231 == 75)

m.c11 = Constraint(expr= - 0.12*m.x9 - 0.48*m.x10 + m.x11 - m.x63 - 0.04*m.x231 == 11.5)

m.c12 = Constraint(expr= - 0.1*m.x9 - 0.21*m.x10 - 0.35*m.x11 + m.x12 - 0.19*m.x231 == 50)

m.c13 = Constraint(expr=   m.x13 + m.x47 - 0.45*m.x232 == 90)

m.c14 = Constraint(expr= - 0.4*m.x13 + m.x14 + m.x48 - 0.32*m.x232 == 75)

m.c15 = Constraint(expr= - 0.12*m.x13 - 0.48*m.x14 + m.x15 - m.x64 - 0.04*m.x232 == 11.5)

m.c16 = Constraint(expr= - 0.1*m.x13 - 0.21*m.x14 - 0.35*m.x15 + m.x16 - 0.19*m.x232 == 50)

m.c17 = Constraint(expr=   m.x17 + m.x49 - 0.45*m.x233 == 90)

m.c18 = Constraint(expr= - 0.4*m.x17 + m.x18 + m.x50 - 0.32*m.x233 == 75)

m.c19 = Constraint(expr= - 0.12*m.x17 - 0.48*m.x18 + m.x19 - m.x65 - 0.04*m.x233 == 11.5)

m.c20 = Constraint(expr= - 0.1*m.x17 - 0.21*m.x18 - 0.35*m.x19 + m.x20 - 0.19*m.x233 == 50)

m.c21 = Constraint(expr=   m.x21 + m.x51 - 0.45*m.x234 == 90)

m.c22 = Constraint(expr= - 0.4*m.x21 + m.x22 + m.x52 - 0.32*m.x234 == 75)

m.c23 = Constraint(expr= - 0.12*m.x21 - 0.48*m.x22 + m.x23 - m.x66 - 0.04*m.x234 == 11.5)

m.c24 = Constraint(expr= - 0.1*m.x21 - 0.21*m.x22 - 0.35*m.x23 + m.x24 - 0.19*m.x234 == 50)

m.c25 = Constraint(expr=   m.x25 + m.x53 - 0.45*m.x235 == 90)

m.c26 = Constraint(expr= - 0.4*m.x25 + m.x26 + m.x54 - 0.32*m.x235 == 75)

m.c27 = Constraint(expr= - 0.12*m.x25 - 0.48*m.x26 + m.x27 - m.x67 - 0.04*m.x235 == 11.5)

m.c28 = Constraint(expr= - 0.1*m.x25 - 0.21*m.x26 - 0.35*m.x27 + m.x28 - 0.19*m.x235 == 50)

m.c29 = Constraint(expr=   m.x29 + m.x55 - 0.45*m.x236 == 90)

m.c30 = Constraint(expr= - 0.4*m.x29 + m.x30 + m.x56 - 0.32*m.x236 == 75)

m.c31 = Constraint(expr= - 0.12*m.x29 - 0.48*m.x30 + m.x31 - m.x68 - 0.04*m.x236 == 11.5)

m.c32 = Constraint(expr= - 0.1*m.x29 - 0.21*m.x30 - 0.35*m.x31 + m.x32 - 0.19*m.x236 == 50)

m.c33 = Constraint(expr=   m.x33 + m.x57 - 0.45*m.x237 == 90)

m.c34 = Constraint(expr= - 0.4*m.x33 + m.x34 + m.x58 - 0.32*m.x237 == 75)

m.c35 = Constraint(expr= - 0.12*m.x33 - 0.48*m.x34 + m.x35 - m.x69 - 0.04*m.x237 == 11.5)

m.c36 = Constraint(expr= - 0.1*m.x33 - 0.21*m.x34 - 0.35*m.x35 + m.x36 - 0.19*m.x237 == 50)

m.c37 = Constraint(expr=   m.x37 + m.x59 - 0.45*m.x238 == 90)

m.c38 = Constraint(expr= - 0.4*m.x37 + m.x38 + m.x60 - 0.32*m.x238 == 75)

m.c39 = Constraint(expr= - 0.12*m.x37 - 0.48*m.x38 + m.x39 - m.x70 - 0.04*m.x238 == 11.5)

m.c40 = Constraint(expr= - 0.1*m.x37 - 0.21*m.x38 - 0.35*m.x39 + m.x40 - 0.19*m.x238 == 50)

m.c41 = Constraint(expr=   m.x1 - m.x157 <= 0)

m.c42 = Constraint(expr=   m.x1 - m.x158 <= 0)

m.c43 = Constraint(expr=   m.x2 - m.x159 <= 0)

m.c44 = Constraint(expr=   m.x2 - m.x160 <= 0)

m.c45 = Constraint(expr=   m.x3 - m.x161 <= 0)

m.c46 = Constraint(expr=   m.x4 - m.x162 <= 0)

m.c47 = Constraint(expr=   m.x5 - m.x163 <= 0)

m.c48 = Constraint(expr=   m.x5 - m.x164 <= 0)

m.c49 = Constraint(expr=   m.x6 - m.x165 <= 0)

m.c50 = Constraint(expr=   m.x6 - m.x166 <= 0)

m.c51 = Constraint(expr=   m.x7 - m.x167 <= 0)

m.c52 = Constraint(expr=   m.x8 - m.x168 <= 0)

m.c53 = Constraint(expr=   m.x9 - m.x169 <= 0)

m.c54 = Constraint(expr=   m.x9 - m.x170 <= 0)

m.c55 = Constraint(expr=   m.x10 - m.x171 <= 0)

m.c56 = Constraint(expr=   m.x10 - m.x172 <= 0)

m.c57 = Constraint(expr=   m.x11 - m.x173 <= 0)

m.c58 = Constraint(expr=   m.x12 - m.x174 <= 0)

m.c59 = Constraint(expr=   m.x13 - m.x175 <= 0)

m.c60 = Constraint(expr=   m.x13 - m.x176 <= 0)

m.c61 = Constraint(expr=   m.x14 - m.x177 <= 0)

m.c62 = Constraint(expr=   m.x14 - m.x178 <= 0)

m.c63 = Constraint(expr=   m.x15 - m.x179 <= 0)

m.c64 = Constraint(expr=   m.x16 - m.x180 <= 0)

m.c65 = Constraint(expr=   m.x17 - m.x181 <= 0)

m.c66 = Constraint(expr=   m.x17 - m.x182 <= 0)

m.c67 = Constraint(expr=   m.x18 - m.x183 <= 0)

m.c68 = Constraint(expr=   m.x18 - m.x184 <= 0)

m.c69 = Constraint(expr=   m.x19 - m.x185 <= 0)

m.c70 = Constraint(expr=   m.x20 - m.x186 <= 0)

m.c71 = Constraint(expr=   m.x21 - m.x187 <= 0)

m.c72 = Constraint(expr=   m.x21 - m.x188 <= 0)

m.c73 = Constraint(expr=   m.x22 - m.x189 <= 0)

m.c74 = Constraint(expr=   m.x22 - m.x190 <= 0)

m.c75 = Constraint(expr=   m.x23 - m.x191 <= 0)

m.c76 = Constraint(expr=   m.x24 - m.x192 <= 0)

m.c77 = Constraint(expr=   m.x25 - m.x193 <= 0)

m.c78 = Constraint(expr=   m.x25 - m.x194 <= 0)

m.c79 = Constraint(expr=   m.x26 - m.x195 <= 0)

m.c80 = Constraint(expr=   m.x26 - m.x196 <= 0)

m.c81 = Constraint(expr=   m.x27 - m.x197 <= 0)

m.c82 = Constraint(expr=   m.x28 - m.x198 <= 0)

m.c83 = Constraint(expr=   m.x29 - m.x199 <= 0)

m.c84 = Constraint(expr=   m.x29 - m.x200 <= 0)

m.c85 = Constraint(expr=   m.x30 - m.x201 <= 0)

m.c86 = Constraint(expr=   m.x30 - m.x202 <= 0)

m.c87 = Constraint(expr=   m.x31 - m.x203 <= 0)

m.c88 = Constraint(expr=   m.x32 - m.x204 <= 0)

m.c89 = Constraint(expr=   m.x33 - m.x205 <= 0)

m.c90 = Constraint(expr=   m.x33 - m.x206 <= 0)

m.c91 = Constraint(expr=   m.x34 - m.x207 <= 0)

m.c92 = Constraint(expr=   m.x34 - m.x208 <= 0)

m.c93 = Constraint(expr=   m.x35 - m.x209 <= 0)

m.c94 = Constraint(expr=   m.x36 - m.x210 <= 0)

m.c95 = Constraint(expr=   m.x37 - m.x211 <= 0)

m.c96 = Constraint(expr=   m.x37 - m.x212 <= 0)

m.c97 = Constraint(expr=   m.x38 - m.x213 <= 0)

m.c98 = Constraint(expr=   m.x38 - m.x214 <= 0)

m.c99 = Constraint(expr=   m.x39 - m.x215 <= 0)

m.c100 = Constraint(expr=   m.x40 - m.x216 <= 0)

m.c101 = Constraint(expr=   m.x37 - m.x211 + m.x217 + m.x223 == 0)

m.c102 = Constraint(expr=   m.x37 - m.x212 + m.x218 + m.x224 == 0)

m.c103 = Constraint(expr=   m.x38 - m.x213 + m.x219 + m.x225 == 0)

m.c104 = Constraint(expr=   m.x38 - m.x214 + m.x220 + m.x226 == 0)

m.c105 = Constraint(expr=   m.x39 - m.x215 + m.x221 + m.x227 == 0)

m.c106 = Constraint(expr=   m.x40 - m.x216 + m.x222 + m.x228 == 0)

m.c107 = Constraint(expr= - m.x71 - m.x151 + m.x157 == 0)

m.c108 = Constraint(expr= - m.x72 - m.x152 + m.x158 == 0)

m.c109 = Constraint(expr= - m.x73 - m.x153 + m.x159 == 0)

m.c110 = Constraint(expr= - m.x74 - m.x154 + m.x160 == 0)

m.c111 = Constraint(expr= - m.x75 - m.x155 + m.x161 == 0)

m.c112 = Constraint(expr= - m.x76 - m.x156 + m.x162 == 0)

m.c113 = Constraint(expr= - m.x77 - m.x157 + m.x163 == 0)

m.c114 = Constraint(expr= - m.x78 - m.x158 + m.x164 == 0)

m.c115 = Constraint(expr= - m.x79 - m.x159 + m.x165 == 0)

m.c116 = Constraint(expr= - m.x80 - m.x160 + m.x166 == 0)

m.c117 = Constraint(expr= - m.x81 - m.x161 + m.x167 == 0)

m.c118 = Constraint(expr= - m.x82 - m.x162 + m.x168 == 0)

m.c119 = Constraint(expr= - m.x83 - m.x163 + m.x169 == 0)

m.c120 = Constraint(expr= - m.x84 - m.x164 + m.x170 == 0)

m.c121 = Constraint(expr= - m.x85 - m.x165 + m.x171 == 0)

m.c122 = Constraint(expr= - m.x86 - m.x166 + m.x172 == 0)

m.c123 = Constraint(expr= - m.x87 - m.x167 + m.x173 == 0)

m.c124 = Constraint(expr= - m.x88 - m.x168 + m.x174 == 0)

m.c125 = Constraint(expr= - m.x89 - m.x169 + m.x175 == 0)

m.c126 = Constraint(expr= - m.x90 - m.x170 + m.x176 == 0)

m.c127 = Constraint(expr= - m.x91 - m.x171 + m.x177 == 0)

m.c128 = Constraint(expr= - m.x92 - m.x172 + m.x178 == 0)

m.c129 = Constraint(expr= - m.x93 - m.x173 + m.x179 == 0)

m.c130 = Constraint(expr= - m.x94 - m.x174 + m.x180 == 0)

m.c131 = Constraint(expr= - m.x95 - m.x175 + m.x181 == 0)

m.c132 = Constraint(expr= - m.x96 - m.x176 + m.x182 == 0)

m.c133 = Constraint(expr= - m.x97 - m.x177 + m.x183 == 0)

m.c134 = Constraint(expr= - m.x98 - m.x178 + m.x184 == 0)

m.c135 = Constraint(expr= - m.x99 - m.x179 + m.x185 == 0)

m.c136 = Constraint(expr= - m.x100 - m.x180 + m.x186 == 0)

m.c137 = Constraint(expr= - m.x101 - m.x181 + m.x187 == 0)

m.c138 = Constraint(expr= - m.x102 - m.x182 + m.x188 == 0)

m.c139 = Constraint(expr= - m.x103 - m.x183 + m.x189 == 0)

m.c140 = Constraint(expr= - m.x104 - m.x184 + m.x190 == 0)

m.c141 = Constraint(expr= - m.x105 - m.x185 + m.x191 == 0)

m.c142 = Constraint(expr= - m.x106 - m.x186 + m.x192 == 0)

m.c143 = Constraint(expr= - m.x107 - m.x187 + m.x193 == 0)

m.c144 = Constraint(expr= - m.x108 - m.x188 + m.x194 == 0)

m.c145 = Constraint(expr= - m.x109 - m.x189 + m.x195 == 0)

m.c146 = Constraint(expr= - m.x110 - m.x190 + m.x196 == 0)

m.c147 = Constraint(expr= - m.x111 - m.x191 + m.x197 == 0)

m.c148 = Constraint(expr= - m.x112 - m.x192 + m.x198 == 0)

m.c149 = Constraint(expr= - m.x113 - m.x193 + m.x199 == 0)

m.c150 = Constraint(expr= - m.x114 - m.x194 + m.x200 == 0)

m.c151 = Constraint(expr= - m.x115 - m.x195 + m.x201 == 0)

m.c152 = Constraint(expr= - m.x116 - m.x196 + m.x202 == 0)

m.c153 = Constraint(expr= - m.x117 - m.x197 + m.x203 == 0)

m.c154 = Constraint(expr= - m.x118 - m.x198 + m.x204 == 0)

m.c155 = Constraint(expr= - m.x119 - m.x199 + m.x205 == 0)

m.c156 = Constraint(expr= - m.x120 - m.x200 + m.x206 == 0)

m.c157 = Constraint(expr= - m.x121 - m.x201 + m.x207 == 0)

m.c158 = Constraint(expr= - m.x122 - m.x202 + m.x208 == 0)

m.c159 = Constraint(expr= - m.x123 - m.x203 + m.x209 == 0)

m.c160 = Constraint(expr= - m.x124 - m.x204 + m.x210 == 0)

m.c161 = Constraint(expr= - m.x125 - m.x205 + m.x211 == 0)

m.c162 = Constraint(expr= - m.x126 - m.x206 + m.x212 == 0)

m.c163 = Constraint(expr= - m.x127 - m.x207 + m.x213 == 0)

m.c164 = Constraint(expr= - m.x128 - m.x208 + m.x214 == 0)

m.c165 = Constraint(expr= - m.x129 - m.x209 + m.x215 == 0)

m.c166 = Constraint(expr= - m.x130 - m.x210 + m.x216 == 0)

m.c167 = Constraint(expr=   m.x73 - 200*m.b131 <= 0)

m.c168 = Constraint(expr=   m.x76 - 200*m.b132 <= 0)

m.c169 = Constraint(expr=   m.x79 - 200*m.b133 <= 0)

m.c170 = Constraint(expr=   m.x82 - 200*m.b134 <= 0)

m.c171 = Constraint(expr=   m.x85 - 200*m.b135 <= 0)

m.c172 = Constraint(expr=   m.x88 - 200*m.b136 <= 0)

m.c173 = Constraint(expr=   m.x91 - 200*m.b137 <= 0)

m.c174 = Constraint(expr=   m.x94 - 200*m.b138 <= 0)

m.c175 = Constraint(expr=   m.x97 - 200*m.b139 <= 0)

m.c176 = Constraint(expr=   m.x100 - 200*m.b140 <= 0)

m.c177 = Constraint(expr=   m.x103 - 200*m.b141 <= 0)

m.c178 = Constraint(expr=   m.x106 - 200*m.b142 <= 0)

m.c179 = Constraint(expr=   m.x109 - 200*m.b143 <= 0)

m.c180 = Constraint(expr=   m.x112 - 200*m.b144 <= 0)

m.c181 = Constraint(expr=   m.x115 - 200*m.b145 <= 0)

m.c182 = Constraint(expr=   m.x118 - 200*m.b146 <= 0)

m.c183 = Constraint(expr=   m.x121 - 200*m.b147 <= 0)

m.c184 = Constraint(expr=   m.x124 - 200*m.b148 <= 0)

m.c185 = Constraint(expr=   m.x127 - 200*m.b149 <= 0)

m.c186 = Constraint(expr=   m.x130 - 200*m.b150 <= 0)

m.c187 = Constraint(expr=   0.2*m.x71 + 0.1*m.x72 + 0.15*m.x73 + 0.05*m.x74 + 0.6*m.x75 + 1.28*m.x76 + 19*m.b131
                          + 57.6*m.b132 - m.x239 + m.x249 + m.x259 <= 40)

m.c188 = Constraint(expr=   0.53*m.x71 + 0.27*m.x72 + 0.45*m.x73 + 0.15*m.x74 + 7*m.x75 + 2.4*m.x76 + 42*m.b131
                          + 108*m.b132 - m.x239 - 0.8*m.x259 <= 82.3)

m.c189 = Constraint(expr=   0.04*m.x1 + 0.06*m.x2 + m.x41 + m.x42 - m.x61 + 0.2*m.x77 + 0.1*m.x78 + 0.15*m.x79
                          + 0.05*m.x80 + 0.6*m.x81 + 1.28*m.x82 + 19*m.b133 + 57.6*m.b134 + 1.07*m.x239 - m.x240
                          - m.x249 + m.x250 + m.x260 <= 0)

m.c190 = Constraint(expr= - 0.2*m.x1 - 0.2*m.x2 - 0.2*m.x3 - 0.2*m.x4 + 0.53*m.x77 + 0.27*m.x78 + 0.45*m.x79
                          + 0.15*m.x80 + 7*m.x81 + 2.4*m.x82 + 42*m.b133 + 108*m.b134 + 1.07*m.x239 - m.x240
                          - 0.8*m.x260 <= 0)

m.c191 = Constraint(expr=   0.04*m.x5 + 0.06*m.x6 + m.x43 + m.x44 - m.x62 + 0.2*m.x83 + 0.1*m.x84 + 0.15*m.x85
                          + 0.05*m.x86 + 0.6*m.x87 + 1.28*m.x88 + 19*m.b135 + 57.6*m.b136 + 1.07*m.x240 - m.x241
                          - m.x250 + m.x251 + m.x261 <= 0)

m.c192 = Constraint(expr= - 0.2*m.x5 - 0.2*m.x6 - 0.2*m.x7 - 0.2*m.x8 + 0.53*m.x83 + 0.27*m.x84 + 0.45*m.x85
                          + 0.15*m.x86 + 7*m.x87 + 2.4*m.x88 + 42*m.b135 + 108*m.b136 + 1.07*m.x240 - m.x241
                          - 0.8*m.x261 <= 0)

m.c193 = Constraint(expr=   0.04*m.x9 + 0.06*m.x10 + m.x45 + m.x46 - m.x63 + 0.2*m.x89 + 0.1*m.x90 + 0.15*m.x91
                          + 0.05*m.x92 + 0.6*m.x93 + 1.28*m.x94 + 19*m.b137 + 57.6*m.b138 + 1.07*m.x241 - m.x242
                          - m.x251 + m.x252 + m.x262 <= 0)

m.c194 = Constraint(expr= - 0.2*m.x9 - 0.2*m.x10 - 0.2*m.x11 - 0.2*m.x12 + 0.53*m.x89 + 0.27*m.x90 + 0.45*m.x91
                          + 0.15*m.x92 + 7*m.x93 + 2.4*m.x94 + 42*m.b137 + 108*m.b138 + 1.07*m.x241 - m.x242
                          - 0.8*m.x262 <= 0)

m.c195 = Constraint(expr=   0.04*m.x13 + 0.06*m.x14 + m.x47 + m.x48 - m.x64 + 0.2*m.x95 + 0.1*m.x96 + 0.15*m.x97
                          + 0.05*m.x98 + 0.6*m.x99 + 1.28*m.x100 + 19*m.b139 + 57.6*m.b140 + 1.07*m.x242 - m.x243
                          - m.x252 + m.x253 + m.x263 <= 0)

m.c196 = Constraint(expr= - 0.2*m.x13 - 0.2*m.x14 - 0.2*m.x15 - 0.2*m.x16 + 0.53*m.x95 + 0.27*m.x96 + 0.45*m.x97
                          + 0.15*m.x98 + 7*m.x99 + 2.4*m.x100 + 42*m.b139 + 108*m.b140 + 1.07*m.x242 - m.x243
                          - 0.8*m.x263 <= 0)

m.c197 = Constraint(expr=   0.04*m.x17 + 0.06*m.x18 + m.x49 + m.x50 - m.x65 + 0.2*m.x101 + 0.1*m.x102 + 0.15*m.x103
                          + 0.05*m.x104 + 0.6*m.x105 + 1.28*m.x106 + 19*m.b141 + 57.6*m.b142 + 1.07*m.x243 - m.x244
                          - m.x253 + m.x254 + m.x264 <= 0)

m.c198 = Constraint(expr= - 0.2*m.x17 - 0.2*m.x18 - 0.2*m.x19 - 0.2*m.x20 + 0.53*m.x101 + 0.27*m.x102 + 0.45*m.x103
                          + 0.15*m.x104 + 7*m.x105 + 2.4*m.x106 + 42*m.b141 + 108*m.b142 + 1.07*m.x243 - m.x244
                          - 0.8*m.x264 <= 0)

m.c199 = Constraint(expr=   0.04*m.x21 + 0.06*m.x22 + m.x51 + m.x52 - m.x66 + 0.2*m.x107 + 0.1*m.x108 + 0.15*m.x109
                          + 0.05*m.x110 + 0.6*m.x111 + 1.28*m.x112 + 19*m.b143 + 57.6*m.b144 + 1.07*m.x244 - m.x245
                          - m.x254 + m.x255 + m.x265 <= 0)

m.c200 = Constraint(expr= - 0.2*m.x21 - 0.2*m.x22 - 0.2*m.x23 - 0.2*m.x24 + 0.53*m.x107 + 0.27*m.x108 + 0.45*m.x109
                          + 0.15*m.x110 + 7*m.x111 + 2.4*m.x112 + 42*m.b143 + 108*m.b144 + 1.07*m.x244 - m.x245
                          - 0.8*m.x265 <= 0)

m.c201 = Constraint(expr=   0.04*m.x25 + 0.06*m.x26 + m.x53 + m.x54 - m.x67 + 0.2*m.x113 + 0.1*m.x114 + 0.15*m.x115
                          + 0.05*m.x116 + 0.6*m.x117 + 1.28*m.x118 + 19*m.b145 + 57.6*m.b146 + 1.07*m.x245 - m.x246
                          - m.x255 + m.x256 + m.x266 <= 0)

m.c202 = Constraint(expr= - 0.2*m.x25 - 0.2*m.x26 - 0.2*m.x27 - 0.2*m.x28 + 0.53*m.x113 + 0.27*m.x114 + 0.45*m.x115
                          + 0.15*m.x116 + 7*m.x117 + 2.4*m.x118 + 42*m.b145 + 108*m.b146 + 1.07*m.x245 - m.x246
                          - 0.8*m.x266 <= 0)

m.c203 = Constraint(expr=   0.04*m.x29 + 0.06*m.x30 + m.x55 + m.x56 - m.x68 + 0.2*m.x119 + 0.1*m.x120 + 0.15*m.x121
                          + 0.05*m.x122 + 0.6*m.x123 + 1.28*m.x124 + 19*m.b147 + 57.6*m.b148 + 1.07*m.x246 - m.x247
                          - m.x256 + m.x257 + m.x267 <= 0)

m.c204 = Constraint(expr= - 0.2*m.x29 - 0.2*m.x30 - 0.2*m.x31 - 0.2*m.x32 + 0.53*m.x119 + 0.27*m.x120 + 0.45*m.x121
                          + 0.15*m.x122 + 7*m.x123 + 2.4*m.x124 + 42*m.b147 + 108*m.b148 + 1.07*m.x246 - m.x247
                          - 0.8*m.x267 <= 0)

m.c205 = Constraint(expr=   0.04*m.x33 + 0.06*m.x34 + m.x57 + m.x58 - m.x69 + 0.2*m.x125 + 0.1*m.x126 + 0.15*m.x127
                          + 0.05*m.x128 + 0.6*m.x129 + 1.28*m.x130 + 19*m.b149 + 57.6*m.b150 + 1.07*m.x247 - m.x248
                          - m.x257 + m.x258 + m.x268 <= 0)

m.c206 = Constraint(expr= - 0.2*m.x33 - 0.2*m.x34 - 0.2*m.x35 - 0.2*m.x36 + 0.53*m.x125 + 0.27*m.x126 + 0.45*m.x127
                          + 0.15*m.x128 + 7*m.x129 + 2.4*m.x130 + 42*m.b149 + 108*m.b150 + 1.07*m.x247 - m.x248
                          - 0.8*m.x268 <= 0)

m.c207 = Constraint(expr=   0.04*m.x37 + 0.06*m.x38 + m.x59 + m.x60 - m.x70 + 1.07*m.x248 - m.x258 + m.x269
                          + 1.30928860377358*m.x270 <= 0)

m.c208 = Constraint(expr= - 0.2*m.x37 - 0.2*m.x38 - 0.2*m.x39 - 0.2*m.x40 + 1.07*m.x248 - 0.8*m.x269
                          + 4.66059773584906*m.x270 <= 0)

m.c209 = Constraint(expr=   0.2*m.x217 + 0.1*m.x218 + 0.293396226415094*m.x219 + 0.05*m.x220 + 0.6*m.x221
                          + 1.7557244267149*m.x222 + 0.2*m.x223 + 0.1*m.x224 + 0.293396226415094*m.x225 + 0.05*m.x226
                          + 0.6*m.x227 + 1.7557244267149*m.x228 - 1.30928860377358*m.x271 - 1.30928860377358*m.x272
                          >= 0)

m.c210 = Constraint(expr=   0.53*m.x217 + 0.27*m.x218 + 0.766981132075472*m.x219 + 0.15*m.x220 + 7*m.x221
                          + 3.29198330009044*m.x222 + 0.53*m.x223 + 0.27*m.x224 + 0.766981132075472*m.x225 + 0.15*m.x226
                          + 7*m.x227 + 3.29198330009044*m.x228 - 4.66059773584906*m.x271 - 4.66059773584906*m.x272 >= 0)

m.c211 = Constraint(expr= - m.x229 + m.x230 >= 10.6)

m.c212 = Constraint(expr= - m.x230 + m.x231 >= 10.6)

m.c213 = Constraint(expr= - m.x231 + m.x232 >= 10.6)

m.c214 = Constraint(expr= - m.x232 + m.x233 >= 10.6)

m.c215 = Constraint(expr= - m.x233 + m.x234 >= 10.6)

m.c216 = Constraint(expr= - m.x234 + m.x235 >= 10.6)

m.c217 = Constraint(expr= - m.x235 + m.x236 >= 10.6)

m.c218 = Constraint(expr= - m.x236 + m.x237 >= 10.6)

m.c219 = Constraint(expr= - m.x237 + m.x238 >= 10.6)

m.c220 = Constraint(expr= - m.x3 + m.x7 >= 0)

m.c221 = Constraint(expr= - m.x7 + m.x11 >= 0)

m.c222 = Constraint(expr= - m.x11 + m.x15 >= 0)

m.c223 = Constraint(expr= - m.x15 + m.x19 >= 0)

m.c224 = Constraint(expr= - m.x19 + m.x23 >= 0)

m.c225 = Constraint(expr= - m.x23 + m.x27 >= 0)

m.c226 = Constraint(expr= - m.x27 + m.x31 >= 0)

m.c227 = Constraint(expr= - m.x31 + m.x35 >= 0)

m.c228 = Constraint(expr= - m.x35 + m.x39 >= 0)

m.c229 = Constraint(expr=   m.x37 - 0.45*m.x273 >= 50)

m.c230 = Constraint(expr= - 0.4*m.x37 + m.x38 - 0.32*m.x273 >= 55)

m.c231 = Constraint(expr= - 0.12*m.x37 - 0.48*m.x38 + m.x39 - 0.04*m.x273 >= 118)

m.c232 = Constraint(expr= - 0.1*m.x37 - 0.21*m.x38 - 0.35*m.x39 + m.x40 - 0.19*m.x273 >= 49.95)

m.c233 = Constraint(expr= - 7.7704820369164*m.x270 - 6.7870399483941*m.x271 - 4.83906568280854*m.x272
                          - 7.7704820369164*m.x273 + m.x274 == 0)
