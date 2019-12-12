#  LP written by GAMS Convert at 12/13/18 10:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        348      164       69      115        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        284      284        0        0        0        0        0        0
#  FX      5        5        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        950      950        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x14 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x94 = Var(within=Reals,bounds=(4.564,4.564),initialize=4.564)
m.x95 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x131 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x132 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x133 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x134 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x135 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x136 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x137 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x138 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x139 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x140 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x141 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x142 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x143 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x144 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x145 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x146 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x147 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x148 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x149 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x150 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x151 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x152 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x153 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x154 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x155 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x156 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x190 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x191 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x192 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x193 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x194 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x195 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x196 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x197 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x198 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x199 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x200 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x201 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x202 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x203 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x204 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x205 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x206 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x207 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x208 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x209 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x210 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x211 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x212 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x213 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x214 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x215 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x216 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x217 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x218 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x219 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x220 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x221 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x222 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x223 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x224 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x225 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x226 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x227 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x228 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x229 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x230 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x231 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x232 = Var(within=Reals,bounds=(None,0),initialize=0)
m.x233 = Var(within=Reals,bounds=(None,0),initialize=0)
m.x234 = Var(within=Reals,bounds=(None,0),initialize=0)
m.x235 = Var(within=Reals,bounds=(None,0),initialize=0)
m.x236 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x237 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x238 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x239 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x240 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x241 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x242 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x243 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x244 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x245 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x246 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x247 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x248 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x249 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x250 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x251 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x252 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x253 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x254 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x255 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x256 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x257 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x258 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x259 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x260 = Var(within=Reals,bounds=(33.999,33.999),initialize=33.999)
m.x261 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x262 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x263 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x264 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x265 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x266 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x267 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x268 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x269 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x270 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x271 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x272 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x273 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x274 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x275 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x276 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x277 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x278 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x279 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x280 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x281 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x282 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x283 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   3.37301126363159*m.x23 - 2*m.x236 + 0.925925925925926*m.x261 + 0.857338820301783*m.x262
                        + 0.793832241020169*m.x263 + 0.735029852796453*m.x264 + 0.680583197033753*m.x265
                        + 0.630169626883105*m.x266 + 0.583490395262134*m.x267 + 0.540268884501976*m.x268
                        + 0.500248967131459*m.x269 + 0.463193488084684*m.x270 + 0.42888285933767*m.x271
                        + 0.397113758645991*m.x272 + 0.367697924672214*m.x273 + 0.340461041363161*m.x274
                        + 0.31524170496589*m.x275 + 0.291890467561009*m.x276 + 0.270268951445379*m.x277
                        + 0.250249029116091*m.x278 + 0.231712063996381*m.x279 + 0.214548207404056*m.x280
                        + 0.198655747596349*m.x281 + 0.183940507033656*m.x282 + 0.170315284290422*m.x283
                       , sense=maximize)

m.c1 = Constraint(expr=   m.x1 - m.x24 - m.x25 == 0)

m.c2 = Constraint(expr=   m.x2 - m.x26 - m.x27 == 0)

m.c3 = Constraint(expr=   m.x3 - m.x28 - m.x29 == 0)

m.c4 = Constraint(expr=   m.x4 - m.x30 - m.x31 == 0)

m.c5 = Constraint(expr=   m.x5 - m.x32 - m.x33 == 0)

m.c6 = Constraint(expr=   m.x6 - m.x34 - m.x35 == 0)

m.c7 = Constraint(expr=   m.x7 - m.x36 - m.x37 == 0)

m.c8 = Constraint(expr=   m.x8 - m.x38 - m.x39 == 0)

m.c9 = Constraint(expr=   m.x9 - m.x40 - m.x41 == 0)

m.c10 = Constraint(expr=   m.x10 - m.x42 - m.x43 == 0)

m.c11 = Constraint(expr=   m.x11 - m.x44 - m.x45 == 0)

m.c12 = Constraint(expr=   m.x12 - m.x46 - m.x47 == 0)

m.c13 = Constraint(expr=   m.x13 - m.x48 - m.x49 == 0)

m.c14 = Constraint(expr=   m.x14 - m.x50 - m.x51 == 0)

m.c15 = Constraint(expr=   m.x15 - m.x52 - m.x53 == 0)

m.c16 = Constraint(expr=   m.x16 - m.x54 - m.x55 == 0)

m.c17 = Constraint(expr=   m.x17 - m.x56 - m.x57 == 0)

m.c18 = Constraint(expr=   m.x18 - m.x58 - m.x59 == 0)

m.c19 = Constraint(expr=   m.x19 - m.x60 - m.x61 == 0)

m.c20 = Constraint(expr=   m.x20 - m.x62 - m.x63 == 0)

m.c21 = Constraint(expr=   m.x21 - m.x64 - m.x65 == 0)

m.c22 = Constraint(expr=   m.x22 - m.x66 - m.x67 == 0)

m.c23 = Constraint(expr=   m.x23 - m.x68 - m.x69 == 0)

m.c24 = Constraint(expr=   m.x71 - m.x190 - m.x213 == 0)

m.c25 = Constraint(expr=   m.x72 - m.x191 - m.x214 == 0)

m.c26 = Constraint(expr=   m.x73 - m.x192 - m.x215 == 0)

m.c27 = Constraint(expr=   m.x74 - m.x193 - m.x216 == 0)

m.c28 = Constraint(expr=   m.x75 - m.x194 - m.x217 == 0)

m.c29 = Constraint(expr=   m.x76 - m.x195 - m.x218 == 0)

m.c30 = Constraint(expr=   m.x77 - m.x196 - m.x219 == 0)

m.c31 = Constraint(expr=   m.x78 - m.x197 - m.x220 == 0)

m.c32 = Constraint(expr=   m.x79 - m.x198 - m.x221 == 0)

m.c33 = Constraint(expr=   m.x80 - m.x199 - m.x222 == 0)

m.c34 = Constraint(expr=   m.x81 - m.x200 - m.x223 == 0)

m.c35 = Constraint(expr=   m.x82 - m.x201 - m.x224 == 0)

m.c36 = Constraint(expr=   m.x83 - m.x202 - m.x225 == 0)

m.c37 = Constraint(expr=   m.x84 - m.x203 - m.x226 == 0)

m.c38 = Constraint(expr=   m.x85 - m.x204 - m.x227 == 0)

m.c39 = Constraint(expr=   m.x86 - m.x205 - m.x228 == 0)

m.c40 = Constraint(expr=   m.x87 - m.x206 - m.x229 == 0)

m.c41 = Constraint(expr=   m.x88 - m.x207 - m.x230 == 0)

m.c42 = Constraint(expr=   m.x89 - m.x208 - m.x231 == 0)

m.c43 = Constraint(expr=   m.x90 - m.x209 - m.x232 == 0)

m.c44 = Constraint(expr=   m.x91 - m.x210 - m.x233 == 0)

m.c45 = Constraint(expr=   m.x92 - m.x211 - m.x234 == 0)

m.c46 = Constraint(expr=   m.x93 - m.x212 - m.x235 == 0)

m.c47 = Constraint(expr=   m.x70 - m.x94 - m.x95 == 0)

m.c48 = Constraint(expr=   m.x71 - m.x96 - m.x97 == 0)

m.c49 = Constraint(expr=   m.x72 - m.x98 - m.x99 == 0)

m.c50 = Constraint(expr=   m.x73 - m.x100 - m.x101 == 0)

m.c51 = Constraint(expr=   m.x74 - m.x102 - m.x103 == 0)

m.c52 = Constraint(expr=   m.x75 - m.x104 - m.x105 == 0)

m.c53 = Constraint(expr=   m.x76 - m.x106 - m.x107 == 0)

m.c54 = Constraint(expr=   m.x77 - m.x108 - m.x109 == 0)

m.c55 = Constraint(expr=   m.x78 - m.x110 - m.x111 == 0)

m.c56 = Constraint(expr=   m.x79 - m.x112 - m.x113 == 0)

m.c57 = Constraint(expr=   m.x80 - m.x114 - m.x115 == 0)

m.c58 = Constraint(expr=   m.x81 - m.x116 - m.x117 == 0)

m.c59 = Constraint(expr=   m.x82 - m.x118 - m.x119 == 0)

m.c60 = Constraint(expr=   m.x83 - m.x120 - m.x121 == 0)

m.c61 = Constraint(expr=   m.x84 - m.x122 - m.x123 == 0)

m.c62 = Constraint(expr=   m.x85 - m.x124 - m.x125 == 0)

m.c63 = Constraint(expr=   m.x86 - m.x126 - m.x127 == 0)

m.c64 = Constraint(expr=   m.x87 - m.x128 - m.x129 == 0)

m.c65 = Constraint(expr=   m.x88 - m.x130 - m.x131 == 0)

m.c66 = Constraint(expr=   m.x89 - m.x132 - m.x133 == 0)

m.c67 = Constraint(expr=   m.x90 - m.x134 - m.x135 == 0)

m.c68 = Constraint(expr=   m.x91 - m.x136 - m.x137 == 0)

m.c69 = Constraint(expr=   m.x92 - m.x138 - m.x139 == 0)

m.c70 = Constraint(expr=   m.x93 - m.x140 - m.x141 == 0)

m.c71 = Constraint(expr=   m.x25 + m.x213 - m.x237 == -2.684391)

m.c72 = Constraint(expr=   m.x27 + m.x214 - m.x238 == -2.815926159)

m.c73 = Constraint(expr=   m.x29 + m.x215 - m.x239 == -2.953906540791)

m.c74 = Constraint(expr=   m.x31 + m.x216 - m.x240 == -3.09864796128976)

m.c75 = Constraint(expr=   m.x33 + m.x217 - m.x241 == -3.25048171139296)

m.c76 = Constraint(expr=   m.x35 + m.x218 - m.x242 == -3.40975531525121)

m.c77 = Constraint(expr=   m.x37 + m.x219 - m.x243 == -3.57683332569852)

m.c78 = Constraint(expr=   m.x39 + m.x220 - m.x244 == -3.75209815865775)

m.c79 = Constraint(expr=   m.x41 + m.x221 - m.x245 == -3.93595096843198)

m.c80 = Constraint(expr=   m.x43 + m.x222 - m.x246 == -4.12881256588514)

m.c81 = Constraint(expr=   m.x45 + m.x223 - m.x247 == -4.33112438161351)

m.c82 = Constraint(expr=   m.x47 + m.x224 - m.x248 == -4.54334947631258)

m.c83 = Constraint(expr=   m.x49 + m.x225 - m.x249 == -4.76597360065189)

m.c84 = Constraint(expr=   m.x51 + m.x226 - m.x250 == -4.99950630708384)

m.c85 = Constraint(expr=   m.x53 + m.x227 - m.x251 == -5.24448211613094)

m.c86 = Constraint(expr=   m.x55 + m.x228 - m.x252 == -5.50146173982136)

m.c87 = Constraint(expr=   m.x57 + m.x229 - m.x253 == -5.77103336507261)

m.c88 = Constraint(expr=   m.x59 + m.x230 - m.x254 == -6.05381399996116)

m.c89 = Constraint(expr=   m.x61 + m.x231 - m.x255 == -6.35045088595926)

m.c90 = Constraint(expr=   m.x63 + m.x232 - m.x256 == -6.66162297937126)

m.c91 = Constraint(expr=   m.x65 + m.x233 - m.x257 == -6.98804250536045)

m.c92 = Constraint(expr=   m.x67 + m.x234 - m.x258 == -7.33045658812312)

m.c93 = Constraint(expr=   m.x69 + m.x235 - m.x259 == -7.68964896094115)

m.c94 = Constraint(expr=   m.x1 - m.x71 + m.x213 - m.x261 == 0)

m.c95 = Constraint(expr=   m.x2 - m.x72 + m.x214 - m.x262 == 0)

m.c96 = Constraint(expr=   m.x3 - m.x73 + m.x215 - m.x263 == 0)

m.c97 = Constraint(expr=   m.x4 - m.x74 + m.x216 - m.x264 == 0)

m.c98 = Constraint(expr=   m.x5 - m.x75 + m.x217 - m.x265 == 0)

m.c99 = Constraint(expr=   m.x6 - m.x76 + m.x218 - m.x266 == 0)

m.c100 = Constraint(expr=   m.x7 - m.x77 + m.x219 - m.x267 == 0)

m.c101 = Constraint(expr=   m.x8 - m.x78 + m.x220 - m.x268 == 0)

m.c102 = Constraint(expr=   m.x9 - m.x79 + m.x221 - m.x269 == 0)

m.c103 = Constraint(expr=   m.x10 - m.x80 + m.x222 - m.x270 == 0)

m.c104 = Constraint(expr=   m.x11 - m.x81 + m.x223 - m.x271 == 0)

m.c105 = Constraint(expr=   m.x12 - m.x82 + m.x224 - m.x272 == 0)

m.c106 = Constraint(expr=   m.x13 - m.x83 + m.x225 - m.x273 == 0)

m.c107 = Constraint(expr=   m.x14 - m.x84 + m.x226 - m.x274 == 0)

m.c108 = Constraint(expr=   m.x15 - m.x85 + m.x227 - m.x275 == 0)

m.c109 = Constraint(expr=   m.x16 - m.x86 + m.x228 - m.x276 == 0)

m.c110 = Constraint(expr=   m.x17 - m.x87 + m.x229 - m.x277 == 0)

m.c111 = Constraint(expr=   m.x18 - m.x88 + m.x230 - m.x278 == 0)

m.c112 = Constraint(expr=   m.x19 - m.x89 + m.x231 - m.x279 == 0)

m.c113 = Constraint(expr=   m.x20 - m.x90 + m.x232 - m.x280 == 0)

m.c114 = Constraint(expr=   m.x21 - m.x91 + m.x233 - m.x281 == 0)

m.c115 = Constraint(expr=   m.x22 - m.x92 + m.x234 - m.x282 == 0)

m.c116 = Constraint(expr=   m.x23 - m.x93 + m.x235 - m.x283 == 0)

m.c117 = Constraint(expr=   m.x24 - 0.333333333333333*m.x144 <= 37.38)

m.c118 = Constraint(expr=   m.x25 - 0.222222222222222*m.x145 <= 0)

m.c119 = Constraint(expr=   m.x26 - 0.333333333333333*m.x146 <= 37.38)

m.c120 = Constraint(expr=   m.x27 - 0.222222222222222*m.x147 <= 0)

m.c121 = Constraint(expr=   m.x28 - 0.333333333333333*m.x148 <= 37.38)

m.c122 = Constraint(expr=   m.x29 - 0.222222222222222*m.x149 <= 0)

m.c123 = Constraint(expr=   m.x30 - 0.333333333333333*m.x150 <= 37.38)

m.c124 = Constraint(expr=   m.x31 - 0.222222222222222*m.x151 <= 0)

m.c125 = Constraint(expr=   m.x32 - 0.333333333333333*m.x152 <= 37.38)

m.c126 = Constraint(expr=   m.x33 - 0.222222222222222*m.x153 <= 0)

m.c127 = Constraint(expr=   m.x34 - 0.333333333333333*m.x154 <= 37.38)

m.c128 = Constraint(expr=   m.x35 - 0.222222222222222*m.x155 <= 0)

m.c129 = Constraint(expr=   m.x36 - 0.333333333333333*m.x156 <= 37.38)

m.c130 = Constraint(expr=   m.x37 - 0.222222222222222*m.x157 <= 0)

m.c131 = Constraint(expr=   m.x38 - 0.333333333333333*m.x158 <= 37.38)

m.c132 = Constraint(expr=   m.x39 - 0.222222222222222*m.x159 <= 0)

m.c133 = Constraint(expr=   m.x40 - 0.333333333333333*m.x160 <= 37.38)

m.c134 = Constraint(expr=   m.x41 - 0.222222222222222*m.x161 <= 0)

m.c135 = Constraint(expr=   m.x42 - 0.333333333333333*m.x162 <= 37.38)

m.c136 = Constraint(expr=   m.x43 - 0.222222222222222*m.x163 <= 0)

m.c137 = Constraint(expr=   m.x44 - 0.333333333333333*m.x164 <= 37.38)

m.c138 = Constraint(expr=   m.x45 - 0.222222222222222*m.x165 <= 0)

m.c139 = Constraint(expr=   m.x46 - 0.333333333333333*m.x166 <= 37.38)

m.c140 = Constraint(expr=   m.x47 - 0.222222222222222*m.x167 <= 0)

m.c141 = Constraint(expr=   m.x48 - 0.333333333333333*m.x168 <= 37.38)

m.c142 = Constraint(expr=   m.x49 - 0.222222222222222*m.x169 <= 0)

m.c143 = Constraint(expr=   m.x50 - 0.333333333333333*m.x170 <= 37.38)

m.c144 = Constraint(expr=   m.x51 - 0.222222222222222*m.x171 <= 0)

m.c145 = Constraint(expr=   m.x52 - 0.333333333333333*m.x172 <= 37.38)

m.c146 = Constraint(expr=   m.x53 - 0.222222222222222*m.x173 <= 0)

m.c147 = Constraint(expr=   m.x54 - 0.333333333333333*m.x174 <= 37.38)

m.c148 = Constraint(expr=   m.x55 - 0.222222222222222*m.x175 <= 0)

m.c149 = Constraint(expr=   m.x56 - 0.333333333333333*m.x176 <= 37.38)

m.c150 = Constraint(expr=   m.x57 - 0.222222222222222*m.x177 <= 0)

m.c151 = Constraint(expr=   m.x58 - 0.333333333333333*m.x178 <= 37.38)

m.c152 = Constraint(expr=   m.x59 - 0.222222222222222*m.x179 <= 0)

m.c153 = Constraint(expr=   m.x60 - 0.333333333333333*m.x180 <= 37.38)

m.c154 = Constraint(expr=   m.x61 - 0.222222222222222*m.x181 <= 0)

m.c155 = Constraint(expr=   m.x62 - 0.333333333333333*m.x182 <= 37.38)

m.c156 = Constraint(expr=   m.x63 - 0.222222222222222*m.x183 <= 0)

m.c157 = Constraint(expr=   m.x64 - 0.333333333333333*m.x184 <= 37.38)

m.c158 = Constraint(expr=   m.x65 - 0.222222222222222*m.x185 <= 0)

m.c159 = Constraint(expr=   m.x66 - 0.333333333333333*m.x186 <= 37.38)

m.c160 = Constraint(expr=   m.x67 - 0.222222222222222*m.x187 <= 0)

m.c161 = Constraint(expr=   m.x68 - 0.333333333333333*m.x188 <= 37.38)

m.c162 = Constraint(expr=   m.x69 - 0.222222222222222*m.x189 <= 0)

m.c163 = Constraint(expr= - m.x94 - m.x142 + m.x144 == 0)

m.c164 = Constraint(expr= - m.x95 - m.x143 + m.x145 == 0)

m.c165 = Constraint(expr= - m.x96 - m.x144 + m.x146 == 0)

m.c166 = Constraint(expr= - m.x97 - m.x145 + m.x147 == 0)

m.c167 = Constraint(expr= - m.x98 - m.x146 + m.x148 == 0)

m.c168 = Constraint(expr= - m.x99 - m.x147 + m.x149 == 0)

m.c169 = Constraint(expr= - m.x100 - m.x148 + m.x150 == 0)

m.c170 = Constraint(expr= - m.x101 - m.x149 + m.x151 == 0)

m.c171 = Constraint(expr= - m.x102 - m.x150 + m.x152 == 0)

m.c172 = Constraint(expr= - m.x103 - m.x151 + m.x153 == 0)

m.c173 = Constraint(expr= - m.x104 - m.x152 + m.x154 == 0)

m.c174 = Constraint(expr= - m.x105 - m.x153 + m.x155 == 0)

m.c175 = Constraint(expr= - m.x106 - m.x154 + m.x156 == 0)

m.c176 = Constraint(expr= - m.x107 - m.x155 + m.x157 == 0)

m.c177 = Constraint(expr= - m.x108 - m.x156 + m.x158 == 0)

m.c178 = Constraint(expr= - m.x109 - m.x157 + m.x159 == 0)

m.c179 = Constraint(expr= - m.x110 - m.x158 + m.x160 == 0)

m.c180 = Constraint(expr= - m.x111 - m.x159 + m.x161 == 0)

m.c181 = Constraint(expr= - m.x112 - m.x160 + m.x162 == 0)

m.c182 = Constraint(expr= - m.x113 - m.x161 + m.x163 == 0)

m.c183 = Constraint(expr= - m.x114 - m.x162 + m.x164 == 0)

m.c184 = Constraint(expr= - m.x115 - m.x163 + m.x165 == 0)

m.c185 = Constraint(expr= - m.x116 - m.x164 + m.x166 == 0)

m.c186 = Constraint(expr= - m.x117 - m.x165 + m.x167 == 0)

m.c187 = Constraint(expr= - m.x118 - m.x166 + m.x168 == 0)

m.c188 = Constraint(expr= - m.x119 - m.x167 + m.x169 == 0)

m.c189 = Constraint(expr= - m.x120 - m.x168 + m.x170 == 0)

m.c190 = Constraint(expr= - m.x121 - m.x169 + m.x171 == 0)

m.c191 = Constraint(expr= - m.x122 - m.x170 + m.x172 == 0)

m.c192 = Constraint(expr= - m.x123 - m.x171 + m.x173 == 0)

m.c193 = Constraint(expr= - m.x124 - m.x172 + m.x174 == 0)

m.c194 = Constraint(expr= - m.x125 - m.x173 + m.x175 == 0)

m.c195 = Constraint(expr= - m.x126 - m.x174 + m.x176 == 0)

m.c196 = Constraint(expr= - m.x127 - m.x175 + m.x177 == 0)

m.c197 = Constraint(expr= - m.x128 - m.x176 + m.x178 == 0)

m.c198 = Constraint(expr= - m.x129 - m.x177 + m.x179 == 0)

m.c199 = Constraint(expr= - m.x130 - m.x178 + m.x180 == 0)

m.c200 = Constraint(expr= - m.x131 - m.x179 + m.x181 == 0)

m.c201 = Constraint(expr= - m.x132 - m.x180 + m.x182 == 0)

m.c202 = Constraint(expr= - m.x133 - m.x181 + m.x183 == 0)

m.c203 = Constraint(expr= - m.x134 - m.x182 + m.x184 == 0)

m.c204 = Constraint(expr= - m.x135 - m.x183 + m.x185 == 0)

m.c205 = Constraint(expr= - m.x136 - m.x184 + m.x186 == 0)

m.c206 = Constraint(expr= - m.x137 - m.x185 + m.x187 == 0)

m.c207 = Constraint(expr= - m.x138 - m.x186 + m.x188 == 0)

m.c208 = Constraint(expr= - m.x139 - m.x187 + m.x189 == 0)

m.c209 = Constraint(expr= - 0.24*m.x1 + m.x190 <= -5.5902)

m.c210 = Constraint(expr= - 0.24*m.x2 + m.x191 <= -5.5902)

m.c211 = Constraint(expr= - 0.24*m.x3 + m.x192 <= -5.5902)

m.c212 = Constraint(expr= - 0.24*m.x4 + m.x193 <= -5.5902)

m.c213 = Constraint(expr= - 0.24*m.x5 + m.x194 <= -5.5902)

m.c214 = Constraint(expr= - 0.24*m.x6 + m.x195 <= -5.5902)

m.c215 = Constraint(expr= - 0.24*m.x7 + m.x196 <= -5.5902)

m.c216 = Constraint(expr= - 0.24*m.x8 + m.x197 <= -5.5902)

m.c217 = Constraint(expr= - 0.24*m.x9 + m.x198 <= -5.5902)

m.c218 = Constraint(expr= - 0.24*m.x10 + m.x199 <= -5.5902)

m.c219 = Constraint(expr= - 0.24*m.x11 + m.x200 <= -5.5902)

m.c220 = Constraint(expr= - 0.24*m.x12 + m.x201 <= -5.5902)

m.c221 = Constraint(expr= - 0.24*m.x13 + m.x202 <= -5.5902)

m.c222 = Constraint(expr= - 0.24*m.x14 + m.x203 <= -5.5902)

m.c223 = Constraint(expr= - 0.24*m.x15 + m.x204 <= -5.5902)

m.c224 = Constraint(expr= - 0.24*m.x16 + m.x205 <= -5.5902)

m.c225 = Constraint(expr= - 0.24*m.x17 + m.x206 <= -5.5902)

m.c226 = Constraint(expr= - 0.24*m.x18 + m.x207 <= -5.5902)

m.c227 = Constraint(expr= - 0.24*m.x19 + m.x208 <= -5.5902)

m.c228 = Constraint(expr= - 0.24*m.x20 + m.x209 <= -5.5902)

m.c229 = Constraint(expr= - 0.24*m.x21 + m.x210 <= -5.5902)

m.c230 = Constraint(expr= - 0.24*m.x22 + m.x211 <= -5.5902)

m.c231 = Constraint(expr= - 0.24*m.x23 + m.x212 <= -5.5902)

m.c232 = Constraint(expr= - 0.1*m.x1 - 0.35*m.x71 + m.x237 >= -1.5924)

m.c233 = Constraint(expr= - 0.1*m.x2 - 0.35*m.x72 + m.x238 >= -1.5924)

m.c234 = Constraint(expr= - 0.1*m.x3 - 0.35*m.x73 + m.x239 >= -1.5924)

m.c235 = Constraint(expr= - 0.1*m.x4 - 0.35*m.x74 + m.x240 >= -1.5924)

m.c236 = Constraint(expr= - 0.1*m.x5 - 0.35*m.x75 + m.x241 >= -1.5924)

m.c237 = Constraint(expr= - 0.1*m.x6 - 0.35*m.x76 + m.x242 >= -1.5924)

m.c238 = Constraint(expr= - 0.1*m.x7 - 0.35*m.x77 + m.x243 >= -1.5924)

m.c239 = Constraint(expr= - 0.1*m.x8 - 0.35*m.x78 + m.x244 >= -1.5924)

m.c240 = Constraint(expr= - 0.1*m.x9 - 0.35*m.x79 + m.x245 >= -1.5924)

m.c241 = Constraint(expr= - 0.1*m.x10 - 0.35*m.x80 + m.x246 >= -1.5924)

m.c242 = Constraint(expr= - 0.1*m.x11 - 0.35*m.x81 + m.x247 >= -1.5924)

m.c243 = Constraint(expr= - 0.1*m.x12 - 0.35*m.x82 + m.x248 >= -1.5924)

m.c244 = Constraint(expr= - 0.1*m.x13 - 0.35*m.x83 + m.x249 >= -1.5924)

m.c245 = Constraint(expr= - 0.1*m.x14 - 0.35*m.x84 + m.x250 >= -1.5924)

m.c246 = Constraint(expr= - 0.1*m.x15 - 0.35*m.x85 + m.x251 >= -1.5924)

m.c247 = Constraint(expr= - 0.1*m.x16 - 0.35*m.x86 + m.x252 >= -1.5924)

m.c248 = Constraint(expr= - 0.1*m.x17 - 0.35*m.x87 + m.x253 >= -1.5924)

m.c249 = Constraint(expr= - 0.1*m.x18 - 0.35*m.x88 + m.x254 >= -1.5924)

m.c250 = Constraint(expr= - 0.1*m.x19 - 0.35*m.x89 + m.x255 >= -1.5924)

m.c251 = Constraint(expr= - 0.1*m.x20 - 0.35*m.x90 + m.x256 >= -1.5924)

m.c252 = Constraint(expr= - 0.1*m.x21 - 0.35*m.x91 + m.x257 >= -1.5924)

m.c253 = Constraint(expr= - 0.1*m.x22 - 0.35*m.x92 + m.x258 >= -1.5924)

m.c254 = Constraint(expr= - 0.1*m.x23 - 0.35*m.x93 + m.x259 >= -1.5924)

m.c255 = Constraint(expr= - 1.13*m.x70 + m.x71 <= 0)

m.c256 = Constraint(expr= - 1.13*m.x71 + m.x72 <= 0)

m.c257 = Constraint(expr= - 1.13*m.x72 + m.x73 <= 0)

m.c258 = Constraint(expr= - 1.13*m.x73 + m.x74 <= 0)

m.c259 = Constraint(expr= - 1.13*m.x74 + m.x75 <= 0)

m.c260 = Constraint(expr= - 1.13*m.x75 + m.x76 <= 0)

m.c261 = Constraint(expr= - 1.13*m.x76 + m.x77 <= 0)

m.c262 = Constraint(expr= - 1.13*m.x77 + m.x78 <= 0)

m.c263 = Constraint(expr= - 1.13*m.x78 + m.x79 <= 0)

m.c264 = Constraint(expr= - 1.13*m.x79 + m.x80 <= 0)

m.c265 = Constraint(expr= - 1.13*m.x80 + m.x81 <= 0)

m.c266 = Constraint(expr= - 1.13*m.x81 + m.x82 <= 0)

m.c267 = Constraint(expr= - 1.13*m.x82 + m.x83 <= 0)

m.c268 = Constraint(expr= - 1.13*m.x83 + m.x84 <= 0)

m.c269 = Constraint(expr= - 1.13*m.x84 + m.x85 <= 0)

m.c270 = Constraint(expr= - 1.13*m.x85 + m.x86 <= 0)

m.c271 = Constraint(expr= - 1.13*m.x86 + m.x87 <= 0)

m.c272 = Constraint(expr= - 1.13*m.x87 + m.x88 <= 0)

m.c273 = Constraint(expr= - 1.13*m.x88 + m.x89 <= 0)

m.c274 = Constraint(expr= - 1.13*m.x89 + m.x90 <= 0)

m.c275 = Constraint(expr= - 1.13*m.x90 + m.x91 <= 0)

m.c276 = Constraint(expr= - 1.13*m.x91 + m.x92 <= 0)

m.c277 = Constraint(expr= - 1.13*m.x92 + m.x93 <= 0)

m.c278 = Constraint(expr= - m.x70 + m.x71 >= 0)

m.c279 = Constraint(expr= - m.x71 + m.x72 >= 0)

m.c280 = Constraint(expr= - m.x72 + m.x73 >= 0)

m.c281 = Constraint(expr= - m.x73 + m.x74 >= 0)

m.c282 = Constraint(expr= - m.x74 + m.x75 >= 0)

m.c283 = Constraint(expr= - m.x75 + m.x76 >= 0)

m.c284 = Constraint(expr= - m.x76 + m.x77 >= 0)

m.c285 = Constraint(expr= - m.x77 + m.x78 >= 0)

m.c286 = Constraint(expr= - m.x78 + m.x79 >= 0)

m.c287 = Constraint(expr= - m.x79 + m.x80 >= 0)

m.c288 = Constraint(expr= - m.x80 + m.x81 >= 0)

m.c289 = Constraint(expr= - m.x81 + m.x82 >= 0)

m.c290 = Constraint(expr= - m.x82 + m.x83 >= 0)

m.c291 = Constraint(expr= - m.x83 + m.x84 >= 0)

m.c292 = Constraint(expr= - m.x84 + m.x85 >= 0)

m.c293 = Constraint(expr= - m.x85 + m.x86 >= 0)

m.c294 = Constraint(expr= - m.x86 + m.x87 >= 0)

m.c295 = Constraint(expr= - m.x87 + m.x88 >= 0)

m.c296 = Constraint(expr= - m.x88 + m.x89 >= 0)

m.c297 = Constraint(expr= - m.x89 + m.x90 >= 0)

m.c298 = Constraint(expr= - m.x90 + m.x91 >= 0)

m.c299 = Constraint(expr= - m.x91 + m.x92 >= 0)

m.c300 = Constraint(expr= - m.x92 + m.x93 >= 0)

m.c301 = Constraint(expr= - 1.025*m.x260 + m.x261 >= 0)

m.c302 = Constraint(expr= - 1.025*m.x261 + m.x262 >= 0)

m.c303 = Constraint(expr= - 1.025*m.x262 + m.x263 >= 0)

m.c304 = Constraint(expr= - 1.025*m.x263 + m.x264 >= 0)

m.c305 = Constraint(expr= - 1.025*m.x264 + m.x265 >= 0)

m.c306 = Constraint(expr= - 1.025*m.x265 + m.x266 >= 0)

m.c307 = Constraint(expr= - 1.025*m.x266 + m.x267 >= 0)

m.c308 = Constraint(expr= - 1.025*m.x267 + m.x268 >= 0)

m.c309 = Constraint(expr= - 1.025*m.x268 + m.x269 >= 0)

m.c310 = Constraint(expr= - 1.025*m.x269 + m.x270 >= 0)

m.c311 = Constraint(expr= - 1.025*m.x270 + m.x271 >= 0)

m.c312 = Constraint(expr= - 1.025*m.x271 + m.x272 >= 0)

m.c313 = Constraint(expr= - 1.025*m.x272 + m.x273 >= 0)

m.c314 = Constraint(expr= - 1.025*m.x273 + m.x274 >= 0)

m.c315 = Constraint(expr= - 1.025*m.x274 + m.x275 >= 0)

m.c316 = Constraint(expr= - 1.025*m.x275 + m.x276 >= 0)

m.c317 = Constraint(expr= - 1.025*m.x276 + m.x277 >= 0)

m.c318 = Constraint(expr= - 1.025*m.x277 + m.x278 >= 0)

m.c319 = Constraint(expr= - 1.025*m.x278 + m.x279 >= 0)

m.c320 = Constraint(expr= - 1.025*m.x279 + m.x280 >= 0)

m.c321 = Constraint(expr= - 1.025*m.x280 + m.x281 >= 0)

m.c322 = Constraint(expr= - 1.025*m.x281 + m.x282 >= 0)

m.c323 = Constraint(expr= - 1.025*m.x282 + m.x283 >= 0)

m.c324 = Constraint(expr= - 0.5*m.x1 + m.x213 <= 0)

m.c325 = Constraint(expr= - 0.5*m.x2 + m.x214 <= 0)

m.c326 = Constraint(expr= - 0.5*m.x3 + m.x215 <= 0)

m.c327 = Constraint(expr= - 0.5*m.x4 + m.x216 <= 0)

m.c328 = Constraint(expr= - 0.5*m.x5 + m.x217 <= 0)

m.c329 = Constraint(expr= - 0.5*m.x6 + m.x218 <= 0)

m.c330 = Constraint(expr= - 0.5*m.x7 + m.x219 <= 0)

m.c331 = Constraint(expr= - 0.5*m.x8 + m.x220 <= 0)

m.c332 = Constraint(expr= - 0.5*m.x9 + m.x221 <= 0)

m.c333 = Constraint(expr= - 0.5*m.x10 + m.x222 <= 0)

m.c334 = Constraint(expr= - 0.5*m.x11 + m.x223 <= 0)

m.c335 = Constraint(expr= - 0.5*m.x12 + m.x224 <= 0)

m.c336 = Constraint(expr= - 0.5*m.x13 + m.x225 <= 0)

m.c337 = Constraint(expr= - 0.5*m.x14 + m.x226 <= 0)

m.c338 = Constraint(expr= - 0.5*m.x15 + m.x227 <= 0)

m.c339 = Constraint(expr= - 0.5*m.x16 + m.x228 <= 0)

m.c340 = Constraint(expr= - 0.5*m.x17 + m.x229 <= 0)

m.c341 = Constraint(expr= - 0.5*m.x18 + m.x230 <= 0)

m.c342 = Constraint(expr= - 0.5*m.x19 + m.x231 <= 0)

m.c343 = Constraint(expr= - 0.5*m.x20 + m.x232 <= 0)

m.c344 = Constraint(expr= - 0.5*m.x21 + m.x233 <= 0)

m.c345 = Constraint(expr= - 0.5*m.x22 + m.x234 <= 0)

m.c346 = Constraint(expr= - 0.5*m.x23 + m.x235 <= 0)

m.c347 = Constraint(expr= - 0.925925925925926*m.x213 - 0.857338820301783*m.x214 - 0.793832241020169*m.x215
                          - 0.735029852796453*m.x216 - 0.680583197033753*m.x217 - 0.630169626883105*m.x218
                          - 0.583490395262134*m.x219 - 0.540268884501976*m.x220 - 0.500248967131459*m.x221
                          - 0.463193488084684*m.x222 - 0.42888285933767*m.x223 - 0.397113758645991*m.x224
                          - 0.367697924672214*m.x225 - 0.340461041363161*m.x226 - 0.31524170496589*m.x227
                          - 0.291890467561009*m.x228 - 0.270268951445379*m.x229 - 0.250249029116091*m.x230
                          - 0.231712063996381*m.x231 - 0.214548207404056*m.x232 - 0.198655747596349*m.x233
                          - 0.183940507033656*m.x234 - 0.170315284290422*m.x235 + m.x236 == 0)
