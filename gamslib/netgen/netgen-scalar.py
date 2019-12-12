#  LP written by GAMS Convert at 12/13/18 11:24:26
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21       21        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        319      319        0        0        0        0        0        0
#  FX    188      188        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        575      575        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x49 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x50 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x51 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x60 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x61 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x62 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x63 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x64 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x65 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x66 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x67 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x68 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x69 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x70 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x71 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x73 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x74 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x75 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x76 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x77 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x78 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x79 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x81 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x90 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x91 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x92 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x93 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x96 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x97 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x104 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x105 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x108 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x109 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x110 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x111 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x112 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x113 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x114 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x119 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x120 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x121 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x122 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x123 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x124 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x125 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x126 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x127 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x128 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x129 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x130 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x131 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x132 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x133 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x134 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x135 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x136 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x137 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x138 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x139 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x140 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x141 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x142 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x143 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x144 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x145 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x146 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x147 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x148 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x149 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x150 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x151 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x152 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x153 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x154 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x155 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x156 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x157 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x158 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x159 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x160 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x161 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x162 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x163 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x164 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x165 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x166 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x167 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x168 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x169 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x170 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x171 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x172 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x173 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x174 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x175 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x176 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x177 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x178 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x179 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x180 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x181 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x182 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x183 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x184 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x185 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x186 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x187 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x188 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x189 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x190 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x191 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x192 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x193 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x194 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x195 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x196 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x197 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x198 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x199 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x200 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x201 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x202 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x203 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x204 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x205 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x206 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x207 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x208 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x209 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x210 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x211 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x212 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x213 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x214 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x215 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x216 = Var(within=Reals,bounds=(0,1000000),initialize=0)
m.x217 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x218 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x219 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x220 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x221 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x222 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x223 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x224 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x225 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x226 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x227 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x228 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x229 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x230 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x231 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x232 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x233 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x234 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x235 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x236 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x237 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x238 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x239 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x240 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x241 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x242 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x243 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x244 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x245 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x246 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x247 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x248 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x249 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x250 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x251 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x252 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x253 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x254 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x255 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x256 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x257 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x258 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x259 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x260 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x261 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x262 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x263 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x264 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x265 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x266 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x267 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x268 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x269 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x270 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x271 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x272 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x273 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x274 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x275 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x276 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x277 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x278 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x279 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x280 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x281 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x282 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x283 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x284 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x285 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x286 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x287 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x288 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x289 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x290 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x291 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x292 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x293 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x294 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x295 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x296 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x297 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x298 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x299 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x300 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x301 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x302 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x303 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x304 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x305 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x306 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x307 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x308 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x309 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x310 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x311 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x312 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x313 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x314 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x315 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x316 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x317 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x318 = Var(within=Reals,bounds=(0,0),initialize=0)

m.obj = Objective(expr=   91.75*m.x1 + 77.34*m.x2 + 30.19*m.x3 + 77.92*m.x4 + 97.19*m.x5 + 19.42*m.x6 + 67.15*m.x7
                        + 75.73*m.x8 + 53.54*m.x9 + 3.46*m.x10 + 50.01*m.x11 + 5.51*m.x12 + 29.72*m.x24 + 28.05*m.x25
                        + 94.09*m.x26 + 58.19*m.x27 + 92.53*m.x28 + 3.57*m.x29 + 55.49*m.x30 + 71.42*m.x31 + 77.52*m.x32
                        + 44.88*m.x33 + 80.58*m.x34 + 96.14*m.x35 + 77.72*m.x36 + 32.41*m.x54 + 28.94*m.x55 + 100*m.x56
                        + 45.82*m.x57 + 65.21*m.x58 + 94.55*m.x59 + 22.82*m.x60 + 79.67*m.x61 + 7.39*m.x62 + 43.1*m.x63
                        + 72.52*m.x64 + 88.73*m.x65 + 79.01*m.x66 + 55.78*m.x67 + 1.77*m.x71 + 40.3*m.x72 + 44.57*m.x73
                        + 39.42*m.x74 + 16.21*m.x75 + 80.34*m.x76 + 70.37*m.x77 + 1.36*m.x78 + 40.31*m.x79 + 93.02*m.x80
                        + 66.73*m.x81 + 65.06*m.x82 + 15.93*m.x83 + 100*m.x84 + 43.95*m.x89 + 50.85*m.x90 + 84.53*m.x91
                        + 49.91*m.x92 + 87.94*m.x93 + 21.65*m.x94 + 100*m.x95 + 17.09*m.x96 + 16.9*m.x97 + 78.05*m.x98
                        + 56.37*m.x99 + 52.21*m.x100 + 67.06*m.x101 + 5.85*m.x113 + 24.53*m.x114 + 32.42*m.x115
                        + 98.39*m.x116 + 86.03*m.x117 + 77.42*m.x118 + 62.91*m.x119 + 10.64*m.x120 + 78.08*m.x121
                        + 39.01*m.x122 + 25.46*m.x123 + 47.83*m.x124 + 97.5*m.x125 + 77.35*m.x126 + 8.07*m.x136
                        + 41.43*m.x137 + 60.79*m.x138 + 20.04*m.x139 + 75.57*m.x140 + 98.21*m.x141 + 51.31*m.x142
                        + 35.9*m.x143 + 89.25*m.x144 + 57.66*m.x145 + 87.33*m.x146 + 11.61*m.x147 + 100*m.x148
                        + 75.96*m.x149 + 7.16*m.x165 + 84.06*m.x166 + 15.31*m.x167 + 94.48*m.x168 + 79.21*m.x169
                        + 72.34*m.x170 + 37.99*m.x171 + 99.87*m.x172 + 27.02*m.x173 + 58.95*m.x174 + 98.37*m.x175
                        + 100*m.x176 + 36.02*m.x177 + 9.33*m.x178 + 35.66*m.x191 + 64.64*m.x192 + 99.26*m.x193
                        + 33.79*m.x194 + 17.53*m.x195 + 3.87*m.x196 + 10.74*m.x197 + 100*m.x198 + 26.72*m.x199
                        + 77.67*m.x200 + 100*m.x201 + 48.97*m.x202 + 63.25*m.x203 + 28.31*m.x204 + 26.36*m.x209
                        + 100*m.x210 + 47.65*m.x211 + 58.1*m.x212 + 45.69*m.x213 + 51.33*m.x214 + 64.08*m.x215
                        + 6.34*m.x216, sense=minimize)

m.c2 = Constraint(expr= - m.x1 - m.x2 - m.x3 - m.x4 - m.x5 - m.x6 - m.x7 - m.x8 - m.x9 - m.x10 - m.x11 - m.x12 - m.x13
                        - m.x14 - m.x15 - m.x16 - m.x17 - m.x18 - m.x19 - m.x20 - m.x21 - m.x22 - m.x23 == -4096.15)

m.c3 = Constraint(expr= - m.x24 - m.x25 - m.x26 - m.x27 - m.x28 - m.x29 - m.x30 - m.x31 - m.x32 - m.x33 - m.x34 - m.x35
                        - m.x36 - m.x37 - m.x38 - m.x39 - m.x40 - m.x41 - m.x42 - m.x43 - m.x44 - m.x45 - m.x46 - m.x47
                        - m.x48 - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 == -26320.66)

m.c4 = Constraint(expr= - m.x54 - m.x55 - m.x56 - m.x57 - m.x58 - m.x59 - m.x60 - m.x61 - m.x62 - m.x63 - m.x64 - m.x65
                        - m.x66 - m.x67 - m.x68 - m.x69 - m.x70 == -10206.05)

m.c5 = Constraint(expr= - m.x71 - m.x72 - m.x73 - m.x74 - m.x75 - m.x76 - m.x77 - m.x78 - m.x79 - m.x80 - m.x81 - m.x82
                        - m.x83 - m.x84 - m.x85 - m.x86 - m.x87 - m.x88 == -4781.95)

m.c6 = Constraint(expr= - m.x89 - m.x90 - m.x91 - m.x92 - m.x93 - m.x94 - m.x95 - m.x96 - m.x97 - m.x98 - m.x99 - m.x100
                        - m.x101 - m.x102 - m.x103 - m.x104 - m.x105 - m.x106 - m.x107 - m.x108 - m.x109 - m.x110
                        - m.x111 - m.x112 == -54595.19)

m.c7 = Constraint(expr=   1.49*m.x1 + m.x24 + 1.35*m.x54 + 0.94*m.x71 + 0.51*m.x89 + 0.23*m.x113 - m.x114 - m.x115
                        - m.x116 - m.x117 - m.x118 - m.x119 - m.x120 - m.x121 - m.x122 - m.x123 - m.x124 - m.x125
                        - m.x126 - m.x127 - m.x128 - m.x129 - m.x130 - m.x131 - m.x132 - m.x133 - m.x134 - m.x135
                        + 1.43*m.x136 + 0.74*m.x165 + 1.13*m.x191 + 1.08*m.x209 == 0)

m.c8 = Constraint(expr=   1.46*m.x2 + 0.83*m.x25 + 0.65*m.x55 + 1.22*m.x72 + 1.37*m.x90 + 0.73*m.x114 - m.x136
                        - 0.46*m.x137 - m.x138 - m.x139 - m.x140 - m.x141 - m.x142 - m.x143 - m.x144 - m.x145 - m.x146
                        - m.x147 - m.x148 - m.x149 - m.x150 - m.x151 - m.x152 - m.x153 - m.x154 - m.x155 - m.x156
                        - m.x157 - m.x158 - m.x159 - m.x160 - m.x161 - m.x162 - m.x163 - m.x164 + m.x166 + 0.5*m.x192
                        == 0)

m.c9 = Constraint(expr=   0.73*m.x3 + 1.1*m.x26 + m.x56 + 0.85*m.x73 + 1.06*m.x91 + 0.95*m.x115 + 0.93*m.x138 - m.x165
                        - m.x166 - 0.28*m.x167 - m.x168 - m.x169 - m.x170 - m.x171 - m.x172 - m.x173 - m.x174 - m.x175
                        - m.x176 - m.x177 - m.x178 - m.x179 - m.x180 - m.x181 - m.x182 - m.x183 - m.x184 - m.x185
                        - m.x186 - m.x187 - m.x188 - m.x189 - m.x190 + 0.8*m.x193 == 0)

m.c10 = Constraint(expr=   1.1*m.x4 + 1.3*m.x27 + 0.9*m.x57 + 1.24*m.x74 + 0.58*m.x92 + 0.98*m.x116 + 1.02*m.x139
                         + 0.69*m.x168 - m.x191 - m.x192 - m.x193 + 0.16*m.x194 - m.x195 - m.x196 - m.x197 - m.x198
                         - m.x199 - m.x200 - m.x201 - m.x202 - m.x203 - m.x204 - m.x205 - m.x206 - m.x207 - m.x208
                         + m.x210 == 0)

m.c11 = Constraint(expr=   m.x5 + 0.54*m.x28 + 1.1*m.x58 + 1.04*m.x75 + m.x93 + 1.47*m.x117 + 0.74*m.x140 + 0.9*m.x169
                         + 0.64*m.x195 - m.x209 - m.x210 - m.x211 - m.x212 - m.x213 - m.x214 - m.x215 - m.x216 - m.x217
                         - m.x218 - m.x219 == 0)

m.c12 = Constraint(expr=   0.94*m.x6 + 1.27*m.x29 + 0.79*m.x59 + 0.6*m.x76 + m.x94 + 0.81*m.x118 + 0.54*m.x141 + m.x170
                         + 0.87*m.x196 + 0.84*m.x211 - m.x220 - m.x221 - m.x222 - m.x223 - m.x224 - m.x225 - m.x226
                         - m.x227 - m.x228 - m.x229 - m.x230 - m.x231 - m.x232 - m.x233 == 29059.58)

m.c13 = Constraint(expr=   1.09*m.x7 + 1.48*m.x30 + 1.16*m.x60 + m.x77 + m.x95 + m.x119 + 1.01*m.x142 + 0.87*m.x171
                         + m.x197 + 0.51*m.x212 - m.x234 - m.x235 - m.x236 - m.x237 - m.x238 - m.x239 - m.x240 - m.x241
                         - m.x242 == 32301.38)

m.c14 = Constraint(expr=   1.46*m.x8 + 0.7*m.x61 + 0.83*m.x78 + 1.14*m.x96 + 1.06*m.x120 + m.x143 + 0.66*m.x172 + m.x198
                         - m.x243 - m.x244 - m.x245 - m.x246 - m.x247 - m.x248 - m.x249 - m.x250 == 550.61)

m.c15 = Constraint(expr=   0.73*m.x9 + 1.38*m.x31 + 1.02*m.x62 + 0.71*m.x79 + 0.75*m.x97 + 0.54*m.x121 + m.x144
                         + 1.34*m.x173 + 1.41*m.x199 - m.x251 - m.x252 - m.x253 - m.x254 - m.x255 - m.x256 - m.x257
                         - m.x258 - m.x259 - m.x260 - m.x261 - m.x262 == 1483.08)

m.c16 = Constraint(expr=   1.38*m.x10 + 0.88*m.x32 + 0.94*m.x63 + 1.05*m.x80 + m.x122 + 0.72*m.x145 + 1.06*m.x174
                         + m.x200 + 1.35*m.x213 - m.x263 - m.x264 - m.x265 - m.x266 == 8317.77)

m.c17 = Constraint(expr=   1.11*m.x33 + 1.5*m.x64 + 0.83*m.x81 + 1.48*m.x98 + m.x123 + m.x146 + 0.65*m.x175 + m.x214
                         - m.x267 - m.x268 - m.x269 - m.x270 - m.x271 - m.x272 - m.x273 - m.x274 - m.x275 - m.x276
                         - m.x277 - m.x278 - m.x279 - m.x280 - m.x281 == 12790.41)

m.c18 = Constraint(expr=   0.51*m.x11 + 0.86*m.x34 + 1.13*m.x65 + 1.23*m.x82 + 1.34*m.x99 + m.x124 + 1.47*m.x147
                         + m.x176 + m.x201 + 1.19*m.x215 - m.x282 - m.x283 - m.x284 - m.x285 == 6913.6)

m.c19 = Constraint(expr=   1.43*m.x35 + 0.76*m.x66 + 0.96*m.x83 + 1.33*m.x100 + 1.43*m.x125 + m.x148 + 1.2*m.x177
                         + m.x202 - m.x286 - m.x287 - m.x288 - m.x289 - m.x290 - m.x291 - m.x292 == 2499.38)

m.c20 = Constraint(expr=   1.36*m.x12 + 0.95*m.x36 + 0.96*m.x67 + m.x84 + 1.37*m.x101 + 1.27*m.x126 + m.x178 + m.x203
                         + 0.71*m.x216 - m.x293 - m.x294 - m.x295 - m.x296 - m.x297 - m.x298 - m.x299 - m.x300 - m.x301
                         - m.x302 - m.x303 - m.x304 - m.x305 - m.x306 - m.x307 - m.x308 - m.x309 - m.x310 - m.x311
                         - m.x312 == 4499.99)

m.c21 = Constraint(expr=   m.x149 + m.x204 - m.x313 - m.x314 - m.x315 - m.x316 - m.x317 - m.x318 == 1584.2)
