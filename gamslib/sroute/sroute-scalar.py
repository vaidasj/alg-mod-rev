#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         73        1       72        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        307      307        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        851      851        0        0
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
m.x142 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x143 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x144 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x145 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x146 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x147 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x148 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x149 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x150 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x151 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x152 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x153 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x154 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x155 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x156 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x157 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x158 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x159 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x160 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x161 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x162 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x163 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x164 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x165 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x166 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x167 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x168 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x169 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x170 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x171 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x172 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x173 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x174 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x175 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x176 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x177 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x178 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x179 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x180 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x181 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x182 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x183 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x184 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x185 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x186 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x187 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x188 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x189 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x213 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x214 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x215 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x216 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x217 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x218 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x219 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x220 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x221 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x222 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x239 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x240 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x241 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x242 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x243 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x244 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x245 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x246 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x247 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x248 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x274 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x275 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x276 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x277 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x278 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x279 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x280 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x281 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x282 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x283 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x284 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x285 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x286 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x287 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x288 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x289 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x290 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x291 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x292 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x293 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x294 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x295 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x296 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x297 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x298 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x299 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x300 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x301 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x302 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x303 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x304 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x305 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x306 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   58*m.x1 + 25*m.x2 + 58*m.x3 + 29*m.x4 + 32*m.x5 + 130*m.x6 + 85*m.x7 + 29*m.x8 + 85*m.x9
                        + 28*m.x10 + 75*m.x11 + 29*m.x12 + 29*m.x13 + 27*m.x14 + 66*m.x15 + 62*m.x16 + 85*m.x17
                        + 58*m.x18 + 43*m.x19 + 32*m.x20 + 28*m.x21 + 27*m.x22 + 53*m.x23 + 130*m.x24 + 58*m.x25
                        + 48*m.x26 + 85*m.x27 + 75*m.x28 + 66*m.x29 + 43*m.x30 + 48*m.x31 + 25*m.x32 + 62*m.x33
                        + 53*m.x34 + 58*m.x35 + 25*m.x36 + 58*m.x37 + 29*m.x38 + 32*m.x39 + 130*m.x40 + 85*m.x41
                        + 29*m.x42 + 85*m.x43 + 28*m.x44 + 75*m.x45 + 29*m.x46 + 29*m.x47 + 27*m.x48 + 66*m.x49
                        + 62*m.x50 + 85*m.x51 + 58*m.x52 + 43*m.x53 + 32*m.x54 + 28*m.x55 + 27*m.x56 + 53*m.x57
                        + 130*m.x58 + 58*m.x59 + 48*m.x60 + 85*m.x61 + 75*m.x62 + 66*m.x63 + 43*m.x64 + 48*m.x65
                        + 25*m.x66 + 62*m.x67 + 53*m.x68 + 58*m.x69 + 25*m.x70 + 58*m.x71 + 29*m.x72 + 32*m.x73
                        + 130*m.x74 + 85*m.x75 + 29*m.x76 + 85*m.x77 + 28*m.x78 + 75*m.x79 + 29*m.x80 + 29*m.x81
                        + 27*m.x82 + 66*m.x83 + 62*m.x84 + 85*m.x85 + 58*m.x86 + 43*m.x87 + 32*m.x88 + 28*m.x89
                        + 27*m.x90 + 53*m.x91 + 130*m.x92 + 58*m.x93 + 48*m.x94 + 85*m.x95 + 75*m.x96 + 66*m.x97
                        + 43*m.x98 + 48*m.x99 + 25*m.x100 + 62*m.x101 + 53*m.x102 + 58*m.x103 + 25*m.x104 + 58*m.x105
                        + 29*m.x106 + 32*m.x107 + 130*m.x108 + 85*m.x109 + 29*m.x110 + 85*m.x111 + 28*m.x112 + 75*m.x113
                        + 29*m.x114 + 29*m.x115 + 27*m.x116 + 66*m.x117 + 62*m.x118 + 85*m.x119 + 58*m.x120 + 43*m.x121
                        + 32*m.x122 + 28*m.x123 + 27*m.x124 + 53*m.x125 + 130*m.x126 + 58*m.x127 + 48*m.x128 + 85*m.x129
                        + 75*m.x130 + 66*m.x131 + 43*m.x132 + 48*m.x133 + 25*m.x134 + 62*m.x135 + 53*m.x136 + 58*m.x137
                        + 25*m.x138 + 58*m.x139 + 29*m.x140 + 32*m.x141 + 130*m.x142 + 85*m.x143 + 29*m.x144 + 85*m.x145
                        + 28*m.x146 + 75*m.x147 + 29*m.x148 + 29*m.x149 + 27*m.x150 + 66*m.x151 + 62*m.x152 + 85*m.x153
                        + 58*m.x154 + 43*m.x155 + 32*m.x156 + 28*m.x157 + 27*m.x158 + 53*m.x159 + 130*m.x160 + 58*m.x161
                        + 48*m.x162 + 85*m.x163 + 75*m.x164 + 66*m.x165 + 43*m.x166 + 48*m.x167 + 25*m.x168 + 62*m.x169
                        + 53*m.x170 + 58*m.x171 + 25*m.x172 + 58*m.x173 + 29*m.x174 + 32*m.x175 + 130*m.x176 + 85*m.x177
                        + 29*m.x178 + 85*m.x179 + 28*m.x180 + 75*m.x181 + 29*m.x182 + 29*m.x183 + 27*m.x184 + 66*m.x185
                        + 62*m.x186 + 85*m.x187 + 58*m.x188 + 43*m.x189 + 32*m.x190 + 28*m.x191 + 27*m.x192 + 53*m.x193
                        + 130*m.x194 + 58*m.x195 + 48*m.x196 + 85*m.x197 + 75*m.x198 + 66*m.x199 + 43*m.x200 + 48*m.x201
                        + 25*m.x202 + 62*m.x203 + 53*m.x204 + 58*m.x205 + 25*m.x206 + 58*m.x207 + 29*m.x208 + 32*m.x209
                        + 130*m.x210 + 85*m.x211 + 29*m.x212 + 85*m.x213 + 28*m.x214 + 75*m.x215 + 29*m.x216 + 29*m.x217
                        + 27*m.x218 + 66*m.x219 + 62*m.x220 + 85*m.x221 + 58*m.x222 + 43*m.x223 + 32*m.x224 + 28*m.x225
                        + 27*m.x226 + 53*m.x227 + 130*m.x228 + 58*m.x229 + 48*m.x230 + 85*m.x231 + 75*m.x232 + 66*m.x233
                        + 43*m.x234 + 48*m.x235 + 25*m.x236 + 62*m.x237 + 53*m.x238 + 58*m.x239 + 25*m.x240 + 58*m.x241
                        + 29*m.x242 + 32*m.x243 + 130*m.x244 + 85*m.x245 + 29*m.x246 + 85*m.x247 + 28*m.x248 + 75*m.x249
                        + 29*m.x250 + 29*m.x251 + 27*m.x252 + 66*m.x253 + 62*m.x254 + 85*m.x255 + 58*m.x256 + 43*m.x257
                        + 32*m.x258 + 28*m.x259 + 27*m.x260 + 53*m.x261 + 130*m.x262 + 58*m.x263 + 48*m.x264 + 85*m.x265
                        + 75*m.x266 + 66*m.x267 + 43*m.x268 + 48*m.x269 + 25*m.x270 + 62*m.x271 + 53*m.x272 + 58*m.x273
                        + 25*m.x274 + 58*m.x275 + 29*m.x276 + 32*m.x277 + 130*m.x278 + 85*m.x279 + 29*m.x280 + 85*m.x281
                        + 28*m.x282 + 75*m.x283 + 29*m.x284 + 29*m.x285 + 27*m.x286 + 66*m.x287 + 62*m.x288 + 85*m.x289
                        + 58*m.x290 + 43*m.x291 + 32*m.x292 + 28*m.x293 + 27*m.x294 + 53*m.x295 + 130*m.x296 + 58*m.x297
                        + 48*m.x298 + 85*m.x299 + 75*m.x300 + 66*m.x301 + 43*m.x302 + 48*m.x303 + 25*m.x304 + 62*m.x305
                        + 53*m.x306, sense=minimize)

m.c1 = Constraint(expr=   m.x1 - m.x3 - m.x4 - m.x5 - m.x6 - m.x7 + m.x12 + m.x20 + m.x24 + m.x27 >= 1)

m.c2 = Constraint(expr= - m.x8 - m.x9 - m.x10 - m.x11 + m.x13 + m.x17 + m.x21 + m.x28 >= 1)

m.c3 = Constraint(expr=   m.x4 + m.x8 - m.x12 - m.x13 - m.x14 - m.x15 - m.x16 + m.x22 + m.x29 + m.x33 >= 1)

m.c4 = Constraint(expr=   m.x9 - m.x17 - m.x18 - m.x19 + m.x25 + m.x30 >= 1)

m.c5 = Constraint(expr=   m.x5 + m.x10 + m.x14 - m.x20 - m.x21 - m.x22 - m.x23 + m.x34 >= 1)

m.c6 = Constraint(expr=   m.x6 + m.x18 - m.x24 - m.x25 - m.x26 + m.x31 >= 1)

m.c7 = Constraint(expr=   m.x7 + m.x11 + m.x15 + m.x19 + m.x26 - m.x27 - m.x28 - m.x29 - m.x30 - m.x31 >= 1)

m.c8 = Constraint(expr=   m.x2 + m.x16 + m.x23 - m.x32 - m.x33 - m.x34 >= 1)

m.c9 = Constraint(expr= - m.x35 - m.x36 + m.x37 + m.x66 >= 1)

m.c10 = Constraint(expr= - m.x42 - m.x43 - m.x44 - m.x45 + m.x47 + m.x51 + m.x55 + m.x62 >= 1)

m.c11 = Constraint(expr=   m.x38 + m.x42 - m.x46 - m.x47 - m.x48 - m.x49 - m.x50 + m.x56 + m.x63 + m.x67 >= 1)

m.c12 = Constraint(expr=   m.x43 - m.x51 - m.x52 - m.x53 + m.x59 + m.x64 >= 1)

m.c13 = Constraint(expr=   m.x39 + m.x44 + m.x48 - m.x54 - m.x55 - m.x56 - m.x57 + m.x68 >= 1)

m.c14 = Constraint(expr=   m.x40 + m.x52 - m.x58 - m.x59 - m.x60 + m.x65 >= 1)

m.c15 = Constraint(expr=   m.x41 + m.x45 + m.x49 + m.x53 + m.x60 - m.x61 - m.x62 - m.x63 - m.x64 - m.x65 >= 1)

m.c16 = Constraint(expr=   m.x36 + m.x50 + m.x57 - m.x66 - m.x67 - m.x68 >= 1)

m.c17 = Constraint(expr= - m.x69 - m.x70 + m.x71 + m.x100 >= 1)

m.c18 = Constraint(expr=   m.x69 - m.x71 - m.x72 - m.x73 - m.x74 - m.x75 + m.x80 + m.x88 + m.x92 + m.x95 >= 1)

m.c19 = Constraint(expr=   m.x72 + m.x76 - m.x80 - m.x81 - m.x82 - m.x83 - m.x84 + m.x90 + m.x97 + m.x101 >= 1)

m.c20 = Constraint(expr=   m.x77 - m.x85 - m.x86 - m.x87 + m.x93 + m.x98 >= 1)

m.c21 = Constraint(expr=   m.x73 + m.x78 + m.x82 - m.x88 - m.x89 - m.x90 - m.x91 + m.x102 >= 1)

m.c22 = Constraint(expr=   m.x74 + m.x86 - m.x92 - m.x93 - m.x94 + m.x99 >= 1)

m.c23 = Constraint(expr=   m.x75 + m.x79 + m.x83 + m.x87 + m.x94 - m.x95 - m.x96 - m.x97 - m.x98 - m.x99 >= 1)

m.c24 = Constraint(expr=   m.x70 + m.x84 + m.x91 - m.x100 - m.x101 - m.x102 >= 1)

m.c25 = Constraint(expr= - m.x103 - m.x104 + m.x105 + m.x134 >= 1)

m.c26 = Constraint(expr=   m.x103 - m.x105 - m.x106 - m.x107 - m.x108 - m.x109 + m.x114 + m.x122 + m.x126 + m.x129 >= 1)

m.c27 = Constraint(expr= - m.x110 - m.x111 - m.x112 - m.x113 + m.x115 + m.x119 + m.x123 + m.x130 >= 1)

m.c28 = Constraint(expr=   m.x111 - m.x119 - m.x120 - m.x121 + m.x127 + m.x132 >= 1)

m.c29 = Constraint(expr=   m.x107 + m.x112 + m.x116 - m.x122 - m.x123 - m.x124 - m.x125 + m.x136 >= 1)

m.c30 = Constraint(expr=   m.x108 + m.x120 - m.x126 - m.x127 - m.x128 + m.x133 >= 1)

m.c31 = Constraint(expr=   m.x109 + m.x113 + m.x117 + m.x121 + m.x128 - m.x129 - m.x130 - m.x131 - m.x132 - m.x133 >= 1)

m.c32 = Constraint(expr=   m.x104 + m.x118 + m.x125 - m.x134 - m.x135 - m.x136 >= 1)

m.c33 = Constraint(expr= - m.x137 - m.x138 + m.x139 + m.x168 >= 1)

m.c34 = Constraint(expr=   m.x137 - m.x139 - m.x140 - m.x141 - m.x142 - m.x143 + m.x148 + m.x156 + m.x160 + m.x163 >= 1)

m.c35 = Constraint(expr= - m.x144 - m.x145 - m.x146 - m.x147 + m.x149 + m.x153 + m.x157 + m.x164 >= 1)

m.c36 = Constraint(expr=   m.x140 + m.x144 - m.x148 - m.x149 - m.x150 - m.x151 - m.x152 + m.x158 + m.x165 + m.x169 >= 1)

m.c37 = Constraint(expr=   m.x141 + m.x146 + m.x150 - m.x156 - m.x157 - m.x158 - m.x159 + m.x170 >= 1)

m.c38 = Constraint(expr=   m.x142 + m.x154 - m.x160 - m.x161 - m.x162 + m.x167 >= 1)

m.c39 = Constraint(expr=   m.x143 + m.x147 + m.x151 + m.x155 + m.x162 - m.x163 - m.x164 - m.x165 - m.x166 - m.x167 >= 1)

m.c40 = Constraint(expr=   m.x138 + m.x152 + m.x159 - m.x168 - m.x169 - m.x170 >= 1)

m.c41 = Constraint(expr= - m.x171 - m.x172 + m.x173 + m.x202 >= 1)

m.c42 = Constraint(expr=   m.x171 - m.x173 - m.x174 - m.x175 - m.x176 - m.x177 + m.x182 + m.x190 + m.x194 + m.x197 >= 1)

m.c43 = Constraint(expr= - m.x178 - m.x179 - m.x180 - m.x181 + m.x183 + m.x187 + m.x191 + m.x198 >= 1)

m.c44 = Constraint(expr=   m.x174 + m.x178 - m.x182 - m.x183 - m.x184 - m.x185 - m.x186 + m.x192 + m.x199 + m.x203 >= 1)

m.c45 = Constraint(expr=   m.x179 - m.x187 - m.x188 - m.x189 + m.x195 + m.x200 >= 1)

m.c46 = Constraint(expr=   m.x176 + m.x188 - m.x194 - m.x195 - m.x196 + m.x201 >= 1)

m.c47 = Constraint(expr=   m.x177 + m.x181 + m.x185 + m.x189 + m.x196 - m.x197 - m.x198 - m.x199 - m.x200 - m.x201 >= 1)

m.c48 = Constraint(expr=   m.x172 + m.x186 + m.x193 - m.x202 - m.x203 - m.x204 >= 1)

m.c49 = Constraint(expr= - m.x205 - m.x206 + m.x207 + m.x236 >= 1)

m.c50 = Constraint(expr=   m.x205 - m.x207 - m.x208 - m.x209 - m.x210 - m.x211 + m.x216 + m.x224 + m.x228 + m.x231 >= 1)

m.c51 = Constraint(expr= - m.x212 - m.x213 - m.x214 - m.x215 + m.x217 + m.x221 + m.x225 + m.x232 >= 1)

m.c52 = Constraint(expr=   m.x208 + m.x212 - m.x216 - m.x217 - m.x218 - m.x219 - m.x220 + m.x226 + m.x233 + m.x237 >= 1)

m.c53 = Constraint(expr=   m.x213 - m.x221 - m.x222 - m.x223 + m.x229 + m.x234 >= 1)

m.c54 = Constraint(expr=   m.x209 + m.x214 + m.x218 - m.x224 - m.x225 - m.x226 - m.x227 + m.x238 >= 1)

m.c55 = Constraint(expr=   m.x211 + m.x215 + m.x219 + m.x223 + m.x230 - m.x231 - m.x232 - m.x233 - m.x234 - m.x235 >= 1)

m.c56 = Constraint(expr=   m.x206 + m.x220 + m.x227 - m.x236 - m.x237 - m.x238 >= 1)

m.c57 = Constraint(expr= - m.x239 - m.x240 + m.x241 + m.x270 >= 1)

m.c58 = Constraint(expr=   m.x239 - m.x241 - m.x242 - m.x243 - m.x244 - m.x245 + m.x250 + m.x258 + m.x262 + m.x265 >= 1)

m.c59 = Constraint(expr= - m.x246 - m.x247 - m.x248 - m.x249 + m.x251 + m.x255 + m.x259 + m.x266 >= 1)

m.c60 = Constraint(expr=   m.x242 + m.x246 - m.x250 - m.x251 - m.x252 - m.x253 - m.x254 + m.x260 + m.x267 + m.x271 >= 1)

m.c61 = Constraint(expr=   m.x247 - m.x255 - m.x256 - m.x257 + m.x263 + m.x268 >= 1)

m.c62 = Constraint(expr=   m.x243 + m.x248 + m.x252 - m.x258 - m.x259 - m.x260 - m.x261 + m.x272 >= 1)

m.c63 = Constraint(expr=   m.x244 + m.x256 - m.x262 - m.x263 - m.x264 + m.x269 >= 1)

m.c64 = Constraint(expr=   m.x240 + m.x254 + m.x261 - m.x270 - m.x271 - m.x272 >= 1)

m.c65 = Constraint(expr= - m.x273 - m.x274 + m.x275 + m.x304 >= 1)

m.c66 = Constraint(expr=   m.x273 - m.x275 - m.x276 - m.x277 - m.x278 - m.x279 + m.x284 + m.x292 + m.x296 + m.x299 >= 1)

m.c67 = Constraint(expr= - m.x280 - m.x281 - m.x282 - m.x283 + m.x285 + m.x289 + m.x293 + m.x300 >= 1)

m.c68 = Constraint(expr=   m.x276 + m.x280 - m.x284 - m.x285 - m.x286 - m.x287 - m.x288 + m.x294 + m.x301 + m.x305 >= 1)

m.c69 = Constraint(expr=   m.x281 - m.x289 - m.x290 - m.x291 + m.x297 + m.x302 >= 1)

m.c70 = Constraint(expr=   m.x277 + m.x282 + m.x286 - m.x292 - m.x293 - m.x294 - m.x295 + m.x306 >= 1)

m.c71 = Constraint(expr=   m.x278 + m.x290 - m.x296 - m.x297 - m.x298 + m.x303 >= 1)

m.c72 = Constraint(expr=   m.x279 + m.x283 + m.x287 + m.x291 + m.x298 - m.x299 - m.x300 - m.x301 - m.x302 - m.x303 >= 1)
