#  LP written by GAMS Convert at 12/13/18 10:24:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        573       91       60      422        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        571      571        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       2882     2882        0        0
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
m.x307 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x308 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x309 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x310 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x311 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x312 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x313 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x314 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x315 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x316 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x317 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x318 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x319 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x320 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x321 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x322 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x323 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x324 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x325 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x326 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x327 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x328 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x329 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x330 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x331 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x332 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x333 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x334 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x335 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x336 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x337 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x338 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x339 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x340 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x341 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x342 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x343 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x344 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x345 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x346 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x347 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x348 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x349 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x350 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x351 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x352 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x353 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x354 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x355 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x356 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x357 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x358 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x359 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x360 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x361 = Var(within=Reals,bounds=(0,234),initialize=0)
m.x362 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x363 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x364 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x365 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x366 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x367 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x368 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x369 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x370 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x371 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x372 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x373 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x374 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x375 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x376 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x377 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x378 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x379 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x380 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x381 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x382 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x383 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x384 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x385 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x386 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x387 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x388 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x389 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x390 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x391 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x392 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x393 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x394 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x395 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x396 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x397 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x398 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x399 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x400 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x401 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x402 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x403 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x404 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x405 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x406 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x407 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x408 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x409 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x410 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x411 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x412 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x413 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x414 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x415 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x416 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x417 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x418 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x419 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x420 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x421 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x422 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x423 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x424 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x425 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x426 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x427 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x428 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x429 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x430 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x431 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x432 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x433 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x434 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x435 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x436 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x437 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x438 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x439 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x440 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x441 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x442 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x443 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x444 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x445 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x446 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x447 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x448 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x449 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x450 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x451 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x452 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x453 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x454 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x455 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x456 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x457 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x458 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x459 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x460 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x461 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x462 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x463 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x464 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x465 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x466 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x467 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x468 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x469 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x470 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x471 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x472 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x473 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x474 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x475 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x476 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x477 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x478 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x479 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x480 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x481 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x482 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x483 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x484 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x485 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x486 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x487 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x488 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x489 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x490 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x491 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x492 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x493 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x494 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x495 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x496 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x497 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x498 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x499 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x500 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x501 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x502 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x503 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x504 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x505 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x506 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x507 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x508 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x509 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x510 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x511 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x512 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x513 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x514 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x515 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x516 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x517 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x518 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x519 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x520 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x521 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x522 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x523 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x524 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x525 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x526 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x527 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x528 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x529 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x530 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x531 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x532 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x533 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x534 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x535 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x536 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x537 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x538 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x539 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x540 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x541 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x542 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x543 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x544 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x545 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x546 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x547 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x548 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x549 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x550 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x551 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x552 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x553 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x554 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x555 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x556 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x557 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x558 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x559 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x560 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x561 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x562 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x563 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x564 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x565 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x566 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x567 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x568 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x569 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x570 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   0.0409495662679255*m.x277 + 0.0372268784253868*m.x278 + 0.0338426167503516*m.x279
                        + 0.0307660152275924*m.x280 + 0.0279691047523567*m.x281 + 0.0254264588657788*m.x282
                        + 0.0231149626052535*m.x283 + 0.0210136023684123*m.x284 + 0.0600528411483002*m.x285
                        + 0.0545934919530002*m.x286 + 0.0496304472300002*m.x287 + 0.0451185883909093*m.x288
                        + 0.0410168985371902*m.x289 + 0.0372880895792638*m.x290 + 0.0338982632538762*m.x291
                        + 0.0308166029580693*m.x292 + 0.0689646598661703*m.x293 + 0.0626951453328821*m.x294
                        + 0.0569955866662564*m.x295 + 0.0518141696965967*m.x296 + 0.0471037906332698*m.x297
                        + 0.0428216278484271*m.x298 + 0.0389287525894791*m.x299 + 0.0353897750813447*m.x300
                        + 0.909090909090909*m.x511 + 0.826446280991735*m.x512 + 0.751314800901578*m.x513
                        + 0.683013455365071*m.x514 + 0.620921323059155*m.x515 + 0.564473930053777*m.x516
                        + 0.513158118230707*m.x517 + 0.466507380209733*m.x518 + 0.424097618372485*m.x519
                        + 0.385543289429531*m.x520 + 0.350493899481392*m.x521 + 0.318630817710357*m.x522
                        + 0.289664379736688*m.x523 + 0.26333125430608*m.x524 + 0.239392049369163*m.x525
                        + 0.217629135790149*m.x526 + 0.197844668900135*m.x527 + 0.179858789909214*m.x528
                        + 0.163507990826558*m.x529 + 0.148643628024143*m.x530 + 0.13513057093104*m.x531
                        + 0.122845973573672*m.x532 + 0.111678157794247*m.x533 + 0.10152559799477*m.x534
                        + 0.0922959981770641*m.x535 + 0.08390545288824*m.x536 + 0.0762776844438546*m.x537
                        + 0.0693433494944133*m.x538 + 0.0630394086312848*m.x539 + 0.057308553301168*m.x540
                        - 0.909090909090909*m.x541 - 0.826446280991735*m.x542 - 0.751314800901578*m.x543
                        - 0.683013455365071*m.x544 - 0.620921323059155*m.x545 - 0.564473930053777*m.x546
                        - 0.513158118230707*m.x547 - 0.466507380209733*m.x548 - 0.424097618372485*m.x549
                        - 0.385543289429531*m.x550 - 0.350493899481392*m.x551 - 0.318630817710357*m.x552
                        - 0.289664379736688*m.x553 - 0.26333125430608*m.x554 - 0.239392049369163*m.x555
                        - 0.217629135790149*m.x556 - 0.197844668900135*m.x557 - 0.179858789909214*m.x558
                        - 0.163507990826558*m.x559 - 0.148643628024143*m.x560 - 0.13513057093104*m.x561
                        - 0.122845973573672*m.x562 - 0.111678157794247*m.x563 - 0.10152559799477*m.x564
                        - 0.0922959981770641*m.x565 - 0.08390545288824*m.x566 - 0.0762776844438546*m.x567
                        - 0.0693433494944133*m.x568 - 0.0630394086312848*m.x569 - 0.057308553301168*m.x570
                       , sense=maximize)

m.c1 = Constraint(expr=   40*m.x1 + 40*m.x2 + 40*m.x3 + 40*m.x4 + 40*m.x5 + 40*m.x6 + 40*m.x7 + 40*m.x8 + 40*m.x9
                        - 46.75*m.x302 >= 4000)

m.c2 = Constraint(expr=   40*m.x10 + 40*m.x11 + 40*m.x12 + 40*m.x13 + 40*m.x14 + 40*m.x15 + 40*m.x16 + 40*m.x17
                        + 40*m.x18 - 46.75*m.x304 >= 4000)

m.c3 = Constraint(expr=   40*m.x19 + 40*m.x20 + 40*m.x21 + 40*m.x22 + 40*m.x23 + 40*m.x24 + 40*m.x25 + 40*m.x26
                        + 40*m.x27 - 46.75*m.x306 >= 4000)

m.c4 = Constraint(expr=   40*m.x28 + 40*m.x29 + 40*m.x30 + 40*m.x31 + 40*m.x32 + 40*m.x33 + 40*m.x34 + 40*m.x35
                        + 40*m.x36 - 46.75*m.x308 >= 4000)

m.c5 = Constraint(expr=   40*m.x37 + 40*m.x38 + 40*m.x39 + 40*m.x40 + 40*m.x41 + 40*m.x42 + 40*m.x43 + 40*m.x44
                        + 40*m.x45 - 46.75*m.x310 >= 4000)

m.c6 = Constraint(expr=   40*m.x46 + 40*m.x47 + 40*m.x48 + 40*m.x49 + 40*m.x50 + 40*m.x51 + 40*m.x52 + 40*m.x53
                        + 40*m.x54 - 46.75*m.x312 >= 4000)

m.c7 = Constraint(expr=   40*m.x55 + 40*m.x56 + 40*m.x57 + 40*m.x58 + 40*m.x59 + 40*m.x60 + 40*m.x61 + 40*m.x62
                        + 40*m.x63 - 46.75*m.x314 >= 4000)

m.c8 = Constraint(expr=   40*m.x64 + 40*m.x65 + 40*m.x66 + 40*m.x67 + 40*m.x68 + 40*m.x69 + 40*m.x70 + 40*m.x71
                        + 40*m.x72 - 46.75*m.x316 >= 4000)

m.c9 = Constraint(expr=   40*m.x73 + 40*m.x74 + 40*m.x75 + 40*m.x76 + 40*m.x77 + 40*m.x78 + 40*m.x79 + 40*m.x80
                        + 40*m.x81 + 120*m.x271 - 46.75*m.x318 >= 4000)

m.c10 = Constraint(expr=   40*m.x82 + 40*m.x83 + 40*m.x84 + 40*m.x85 + 40*m.x86 + 40*m.x87 + 40*m.x88 + 40*m.x89
                         + 40*m.x90 + 120*m.x272 - 46.75*m.x320 >= 4000)

m.c11 = Constraint(expr=   40*m.x91 + 40*m.x92 + 40*m.x93 + 40*m.x94 + 40*m.x95 + 40*m.x96 + 40*m.x97 + 40*m.x98
                         + 40*m.x99 + 120*m.x273 - 46.75*m.x322 >= 4000)

m.c12 = Constraint(expr=   40*m.x100 + 40*m.x101 + 40*m.x102 + 40*m.x103 + 40*m.x104 + 40*m.x105 + 40*m.x106 + 40*m.x107
                         + 40*m.x108 + 120*m.x274 - 46.75*m.x324 >= 4000)

m.c13 = Constraint(expr=   40*m.x109 + 40*m.x110 + 40*m.x111 + 40*m.x112 + 40*m.x113 + 40*m.x114 + 40*m.x115 + 40*m.x116
                         + 40*m.x117 + 120*m.x275 - 46.75*m.x326 >= 4000)

m.c14 = Constraint(expr=   40*m.x118 + 40*m.x119 + 40*m.x120 + 40*m.x121 + 40*m.x122 + 40*m.x123 + 40*m.x124 + 40*m.x125
                         + 40*m.x126 + 120*m.x276 - 46.75*m.x328 >= 4000)

m.c15 = Constraint(expr=   40*m.x127 + 40*m.x128 + 40*m.x129 + 40*m.x130 + 40*m.x131 + 40*m.x132 + 40*m.x133 + 40*m.x134
                         + 40*m.x135 + 120*m.x277 - 46.75*m.x330 >= 4000)

m.c16 = Constraint(expr=   40*m.x136 + 40*m.x137 + 40*m.x138 + 40*m.x139 + 40*m.x140 + 40*m.x141 + 40*m.x142 + 40*m.x143
                         + 40*m.x144 + 120*m.x278 - 46.75*m.x332 >= 4000)

m.c17 = Constraint(expr=   40*m.x145 + 40*m.x146 + 40*m.x147 + 40*m.x148 + 40*m.x149 + 40*m.x150 + 40*m.x151 + 40*m.x152
                         + 40*m.x153 + 120*m.x271 + 120*m.x279 - 46.75*m.x334 >= 4000)

m.c18 = Constraint(expr=   40*m.x154 + 40*m.x155 + 40*m.x156 + 40*m.x157 + 40*m.x158 + 40*m.x159 + 40*m.x160 + 40*m.x161
                         + 40*m.x162 + 120*m.x272 + 120*m.x280 - 46.75*m.x336 >= 4000)

m.c19 = Constraint(expr=   40*m.x163 + 40*m.x164 + 40*m.x165 + 40*m.x166 + 40*m.x167 + 40*m.x168 + 40*m.x169 + 40*m.x170
                         + 40*m.x171 + 120*m.x273 + 120*m.x281 - 46.75*m.x338 >= 4000)

m.c20 = Constraint(expr=   40*m.x172 + 40*m.x173 + 40*m.x174 + 40*m.x175 + 40*m.x176 + 40*m.x177 + 40*m.x178 + 40*m.x179
                         + 40*m.x180 + 120*m.x274 + 120*m.x282 - 46.75*m.x340 >= 4000)

m.c21 = Constraint(expr=   40*m.x181 + 40*m.x182 + 40*m.x183 + 40*m.x184 + 40*m.x185 + 40*m.x186 + 40*m.x187 + 40*m.x188
                         + 40*m.x189 + 120*m.x275 + 120*m.x283 - 46.75*m.x342 >= 4000)

m.c22 = Constraint(expr=   40*m.x190 + 40*m.x191 + 40*m.x192 + 40*m.x193 + 40*m.x194 + 40*m.x195 + 40*m.x196 + 40*m.x197
                         + 40*m.x198 + 120*m.x276 + 120*m.x284 - 46.75*m.x344 >= 4000)

m.c23 = Constraint(expr=   40*m.x199 + 40*m.x200 + 40*m.x201 + 40*m.x202 + 40*m.x203 + 40*m.x204 + 40*m.x205 + 40*m.x206
                         + 40*m.x207 + 120*m.x277 + 120*m.x285 - 46.75*m.x346 >= 4000)

m.c24 = Constraint(expr=   40*m.x208 + 40*m.x209 + 40*m.x210 + 40*m.x211 + 40*m.x212 + 40*m.x213 + 40*m.x214 + 40*m.x215
                         + 40*m.x216 + 120*m.x278 + 120*m.x286 - 46.75*m.x348 >= 4000)

m.c25 = Constraint(expr=   40*m.x217 + 40*m.x218 + 40*m.x219 + 40*m.x220 + 40*m.x221 + 40*m.x222 + 40*m.x223 + 40*m.x224
                         + 40*m.x225 + 120*m.x271 + 120*m.x279 + 120*m.x287 - 46.75*m.x350 >= 4000)

m.c26 = Constraint(expr=   40*m.x226 + 40*m.x227 + 40*m.x228 + 40*m.x229 + 40*m.x230 + 40*m.x231 + 40*m.x232 + 40*m.x233
                         + 40*m.x234 + 120*m.x272 + 120*m.x280 + 120*m.x288 - 46.75*m.x352 >= 4000)

m.c27 = Constraint(expr=   40*m.x235 + 40*m.x236 + 40*m.x237 + 40*m.x238 + 40*m.x239 + 40*m.x240 + 40*m.x241 + 40*m.x242
                         + 40*m.x243 + 120*m.x273 + 120*m.x281 + 120*m.x289 - 46.75*m.x354 >= 4000)

m.c28 = Constraint(expr=   40*m.x244 + 40*m.x245 + 40*m.x246 + 40*m.x247 + 40*m.x248 + 40*m.x249 + 40*m.x250 + 40*m.x251
                         + 40*m.x252 + 120*m.x274 + 120*m.x282 + 120*m.x290 - 46.75*m.x356 >= 4000)

m.c29 = Constraint(expr=   40*m.x253 + 40*m.x254 + 40*m.x255 + 40*m.x256 + 40*m.x257 + 40*m.x258 + 40*m.x259 + 40*m.x260
                         + 40*m.x261 + 120*m.x275 + 120*m.x283 + 120*m.x291 - 46.75*m.x358 >= 4000)

m.c30 = Constraint(expr=   40*m.x262 + 40*m.x263 + 40*m.x264 + 40*m.x265 + 40*m.x266 + 40*m.x267 + 40*m.x268 + 40*m.x269
                         + 40*m.x270 + 120*m.x276 + 120*m.x284 + 120*m.x292 - 46.75*m.x360 >= 4000)

m.c31 = Constraint(expr=   m.x1 + m.x10 + m.x19 + m.x28 + m.x37 + m.x46 + m.x55 + m.x64 + m.x73 + m.x82 + m.x91 + m.x100
                         + m.x109 + m.x118 + m.x127 + m.x136 + m.x145 + m.x154 + m.x163 + m.x172 + m.x181 + m.x190
                         + m.x199 + m.x208 + m.x217 + m.x226 + m.x235 + m.x244 + m.x253 + m.x262 <= 1727.88)

m.c32 = Constraint(expr=   m.x2 + m.x11 + m.x20 + m.x29 + m.x38 + m.x47 + m.x56 + m.x65 + m.x74 + m.x83 + m.x92 + m.x101
                         + m.x110 + m.x119 + m.x128 + m.x137 + m.x146 + m.x155 + m.x164 + m.x173 + m.x182 + m.x191
                         + m.x200 + m.x209 + m.x218 + m.x227 + m.x236 + m.x245 + m.x254 + m.x263 <= 2042.04)

m.c33 = Constraint(expr=   m.x3 + m.x12 + m.x21 + m.x30 + m.x39 + m.x48 + m.x57 + m.x66 + m.x75 + m.x84 + m.x93 + m.x102
                         + m.x111 + m.x120 + m.x129 + m.x138 + m.x147 + m.x156 + m.x165 + m.x174 + m.x183 + m.x192
                         + m.x201 + m.x210 + m.x219 + m.x228 + m.x237 + m.x246 + m.x255 + m.x264 <= 2356.2)

m.c34 = Constraint(expr=   m.x4 + m.x13 + m.x22 + m.x31 + m.x40 + m.x49 + m.x58 + m.x67 + m.x76 + m.x85 + m.x94 + m.x103
                         + m.x112 + m.x121 + m.x130 + m.x139 + m.x148 + m.x157 + m.x166 + m.x175 + m.x184 + m.x193
                         + m.x202 + m.x211 + m.x220 + m.x229 + m.x238 + m.x247 + m.x256 + m.x265 <= 2670.36)

m.c35 = Constraint(expr=   m.x5 + m.x14 + m.x23 + m.x32 + m.x41 + m.x50 + m.x59 + m.x68 + m.x77 + m.x86 + m.x95 + m.x104
                         + m.x113 + m.x122 + m.x131 + m.x140 + m.x149 + m.x158 + m.x167 + m.x176 + m.x185 + m.x194
                         + m.x203 + m.x212 + m.x221 + m.x230 + m.x239 + m.x248 + m.x257 + m.x266 <= 2984.52)

m.c36 = Constraint(expr=   m.x6 + m.x15 + m.x24 + m.x33 + m.x42 + m.x51 + m.x60 + m.x69 + m.x78 + m.x87 + m.x96 + m.x105
                         + m.x114 + m.x123 + m.x132 + m.x141 + m.x150 + m.x159 + m.x168 + m.x177 + m.x186 + m.x195
                         + m.x204 + m.x213 + m.x222 + m.x231 + m.x240 + m.x249 + m.x258 + m.x267 <= 3298.68)

m.c37 = Constraint(expr=   m.x7 + m.x16 + m.x25 + m.x34 + m.x43 + m.x52 + m.x61 + m.x70 + m.x79 + m.x88 + m.x97 + m.x106
                         + m.x115 + m.x124 + m.x133 + m.x142 + m.x151 + m.x160 + m.x169 + m.x178 + m.x187 + m.x196
                         + m.x205 + m.x214 + m.x223 + m.x232 + m.x241 + m.x250 + m.x259 + m.x268 <= 3612.84)

m.c38 = Constraint(expr=   m.x8 + m.x17 + m.x26 + m.x35 + m.x44 + m.x53 + m.x62 + m.x71 + m.x80 + m.x89 + m.x98 + m.x107
                         + m.x116 + m.x125 + m.x134 + m.x143 + m.x152 + m.x161 + m.x170 + m.x179 + m.x188 + m.x197
                         + m.x206 + m.x215 + m.x224 + m.x233 + m.x242 + m.x251 + m.x260 + m.x269 <= 3927)

m.c39 = Constraint(expr=   m.x9 + m.x18 + m.x27 + m.x36 + m.x45 + m.x54 + m.x63 + m.x72 + m.x81 + m.x90 + m.x99 + m.x108
                         + m.x117 + m.x126 + m.x135 + m.x144 + m.x153 + m.x162 + m.x171 + m.x180 + m.x189 + m.x198
                         + m.x207 + m.x216 + m.x225 + m.x234 + m.x243 + m.x252 + m.x261 + m.x270 <= 4241.16)

m.c40 = Constraint(expr=   10*m.x271 + 46.7*m.x301 + 44.7*m.x302 <= 26000)

m.c41 = Constraint(expr=   10*m.x301 + 84.2*m.x302 <= 26800)

m.c42 = Constraint(expr=   3*m.x271 + 13*m.x301 + 87.3*m.x302 <= 25200)

m.c43 = Constraint(expr=   16.7*m.x301 + 90.7*m.x302 <= 26000)

m.c44 = Constraint(expr=   10*m.x271 + 18.3*m.x301 + 20.5*m.x302 <= 28400)

m.c45 = Constraint(expr=   m.x391 <= 30000)

m.c46 = Constraint(expr=   m.x271 + m.x392 <= 30000)

m.c47 = Constraint(expr=   7*m.x271 + 37.3*m.x302 + m.x393 <= 30000)

m.c48 = Constraint(expr=   8*m.x271 + 44.7*m.x302 + m.x394 <= 26000)

m.c49 = Constraint(expr=   9*m.x271 + 13.3*m.x301 + 19.7*m.x302 <= 18800)

m.c50 = Constraint(expr=   33.3*m.x301 + 46.4*m.x302 <= 20400)

m.c51 = Constraint(expr=   7*m.x271 + 10*m.x272 + 46.7*m.x303 + 44.7*m.x304 <= 26000)

m.c52 = Constraint(expr=   10*m.x303 + 84.2*m.x304 <= 26800)

m.c53 = Constraint(expr=   3*m.x272 + 13*m.x303 + 87.3*m.x304 <= 25200)

m.c54 = Constraint(expr=   16.7*m.x303 + 90.7*m.x304 <= 26000)

m.c55 = Constraint(expr=   10*m.x271 + 10*m.x272 + 18.3*m.x303 + 20.5*m.x304 <= 28400)

m.c56 = Constraint(expr=   m.x395 <= 30000)

m.c57 = Constraint(expr=   m.x271 + m.x272 + m.x396 <= 30000)

m.c58 = Constraint(expr=   7*m.x272 + 37.3*m.x304 + m.x397 <= 30000)

m.c59 = Constraint(expr=   8*m.x272 + 44.7*m.x304 + m.x398 <= 26000)

m.c60 = Constraint(expr=   9*m.x272 + 13.3*m.x303 + 19.7*m.x304 <= 18800)

m.c61 = Constraint(expr=   33.3*m.x303 + 46.4*m.x304 <= 20400)

m.c62 = Constraint(expr=   7*m.x272 + 10*m.x273 + 46.7*m.x305 + 44.7*m.x306 <= 26000)

m.c63 = Constraint(expr=   10*m.x305 + 84.2*m.x306 <= 26800)

m.c64 = Constraint(expr=   3*m.x273 + 13*m.x305 + 87.3*m.x306 <= 25200)

m.c65 = Constraint(expr=   16.7*m.x305 + 90.7*m.x306 <= 26000)

m.c66 = Constraint(expr=   10*m.x272 + 10*m.x273 + 18.3*m.x305 + 20.5*m.x306 <= 28400)

m.c67 = Constraint(expr=   m.x399 <= 30000)

m.c68 = Constraint(expr=   m.x272 + m.x273 + m.x400 <= 30000)

m.c69 = Constraint(expr=   7*m.x273 + 37.3*m.x306 + m.x401 <= 30000)

m.c70 = Constraint(expr=   8*m.x273 + 44.7*m.x306 + m.x402 <= 26000)

m.c71 = Constraint(expr=   9*m.x273 + 13.3*m.x305 + 19.7*m.x306 <= 18800)

m.c72 = Constraint(expr=   33.3*m.x305 + 46.4*m.x306 <= 20400)

m.c73 = Constraint(expr=   7*m.x273 + 10*m.x274 + 46.7*m.x307 + 44.7*m.x308 <= 26000)

m.c74 = Constraint(expr=   10*m.x307 + 84.2*m.x308 <= 26800)

m.c75 = Constraint(expr=   3*m.x274 + 13*m.x307 + 87.3*m.x308 <= 25200)

m.c76 = Constraint(expr=   16.7*m.x307 + 90.7*m.x308 <= 26000)

m.c77 = Constraint(expr=   10*m.x273 + 10*m.x274 + 18.3*m.x307 + 20.5*m.x308 <= 28400)

m.c78 = Constraint(expr=   m.x403 <= 30000)

m.c79 = Constraint(expr=   m.x273 + m.x274 + m.x404 <= 30000)

m.c80 = Constraint(expr=   7*m.x274 + 37.3*m.x308 + m.x405 <= 30000)

m.c81 = Constraint(expr=   8*m.x274 + 44.7*m.x308 + m.x406 <= 26000)

m.c82 = Constraint(expr=   9*m.x274 + 13.3*m.x307 + 19.7*m.x308 <= 18800)

m.c83 = Constraint(expr=   33.3*m.x307 + 46.4*m.x308 <= 20400)

m.c84 = Constraint(expr=   7*m.x274 + 10*m.x275 + 46.7*m.x309 + 44.7*m.x310 <= 26000)

m.c85 = Constraint(expr=   10*m.x309 + 84.2*m.x310 <= 26800)

m.c86 = Constraint(expr=   3*m.x275 + 13*m.x309 + 87.3*m.x310 <= 25200)

m.c87 = Constraint(expr=   16.7*m.x309 + 90.7*m.x310 <= 26000)

m.c88 = Constraint(expr=   10*m.x274 + 10*m.x275 + 18.3*m.x309 + 20.5*m.x310 <= 28400)

m.c89 = Constraint(expr=   m.x407 <= 30000)

m.c90 = Constraint(expr=   m.x274 + m.x275 + m.x408 <= 30000)

m.c91 = Constraint(expr=   7*m.x275 + 37.3*m.x310 + m.x409 <= 30000)

m.c92 = Constraint(expr=   8*m.x275 + 44.7*m.x310 + m.x410 <= 26000)

m.c93 = Constraint(expr=   9*m.x275 + 13.3*m.x309 + 19.7*m.x310 <= 18800)

m.c94 = Constraint(expr=   33.3*m.x309 + 46.4*m.x310 <= 20400)

m.c95 = Constraint(expr=   7*m.x275 + 10*m.x276 + 46.7*m.x311 + 44.7*m.x312 <= 26000)

m.c96 = Constraint(expr=   10*m.x311 + 84.2*m.x312 <= 26800)

m.c97 = Constraint(expr=   3*m.x276 + 13*m.x311 + 87.3*m.x312 <= 25200)

m.c98 = Constraint(expr=   16.7*m.x311 + 90.7*m.x312 <= 26000)

m.c99 = Constraint(expr=   10*m.x275 + 10*m.x276 + 18.3*m.x311 + 20.5*m.x312 <= 28400)

m.c100 = Constraint(expr=   m.x411 <= 30000)

m.c101 = Constraint(expr=   m.x275 + m.x276 + m.x412 <= 30000)

m.c102 = Constraint(expr=   7*m.x276 + 37.3*m.x312 + m.x413 <= 30000)

m.c103 = Constraint(expr=   8*m.x276 + 44.7*m.x312 + m.x414 <= 26000)

m.c104 = Constraint(expr=   9*m.x276 + 13.3*m.x311 + 19.7*m.x312 <= 18800)

m.c105 = Constraint(expr=   33.3*m.x311 + 46.4*m.x312 <= 20400)

m.c106 = Constraint(expr=   7*m.x276 + 10*m.x277 + 46.7*m.x313 + 44.7*m.x314 <= 26000)

m.c107 = Constraint(expr=   10*m.x313 + 84.2*m.x314 <= 26800)

m.c108 = Constraint(expr=   3*m.x277 + 13*m.x313 + 87.3*m.x314 <= 25200)

m.c109 = Constraint(expr=   16.7*m.x313 + 90.7*m.x314 <= 26000)

m.c110 = Constraint(expr=   10*m.x276 + 10*m.x277 + 18.3*m.x313 + 20.5*m.x314 <= 28400)

m.c111 = Constraint(expr=   m.x415 <= 30000)

m.c112 = Constraint(expr=   m.x276 + m.x277 + m.x416 <= 30000)

m.c113 = Constraint(expr=   7*m.x277 + 37.3*m.x314 + m.x417 <= 30000)

m.c114 = Constraint(expr=   8*m.x277 + 44.7*m.x314 + m.x418 <= 26000)

m.c115 = Constraint(expr=   9*m.x277 + 13.3*m.x313 + 19.7*m.x314 <= 18800)

m.c116 = Constraint(expr=   33.3*m.x313 + 46.4*m.x314 <= 20400)

m.c117 = Constraint(expr=   7*m.x277 + 10*m.x278 + 46.7*m.x315 + 44.7*m.x316 <= 26000)

m.c118 = Constraint(expr=   10*m.x315 + 84.2*m.x316 <= 26800)

m.c119 = Constraint(expr=   3*m.x278 + 13*m.x315 + 87.3*m.x316 <= 25200)

m.c120 = Constraint(expr=   16.7*m.x315 + 90.7*m.x316 <= 26000)

m.c121 = Constraint(expr=   10*m.x277 + 10*m.x278 + 18.3*m.x315 + 20.5*m.x316 <= 28400)

m.c122 = Constraint(expr=   m.x419 <= 30000)

m.c123 = Constraint(expr=   m.x277 + m.x278 + m.x420 <= 30000)

m.c124 = Constraint(expr=   7*m.x278 + 37.3*m.x316 + m.x421 <= 30000)

m.c125 = Constraint(expr=   8*m.x278 + 44.7*m.x316 + m.x422 <= 26000)

m.c126 = Constraint(expr=   9*m.x278 + 13.3*m.x315 + 19.7*m.x316 <= 18800)

m.c127 = Constraint(expr=   33.3*m.x315 + 46.4*m.x316 <= 20400)

m.c128 = Constraint(expr=   7*m.x278 + 10*m.x279 + 46.7*m.x317 + 44.7*m.x318 <= 26000)

m.c129 = Constraint(expr=   10*m.x317 + 84.2*m.x318 <= 26800)

m.c130 = Constraint(expr=   3*m.x279 + 13*m.x317 + 87.3*m.x318 <= 25200)

m.c131 = Constraint(expr=   16.7*m.x317 + 90.7*m.x318 <= 26000)

m.c132 = Constraint(expr=   10*m.x278 + 10*m.x279 + 18.3*m.x317 + 20.5*m.x318 <= 28400)

m.c133 = Constraint(expr=   m.x423 <= 30000)

m.c134 = Constraint(expr=   m.x278 + m.x279 + m.x424 <= 30000)

m.c135 = Constraint(expr=   7*m.x279 + 37.3*m.x318 + m.x425 <= 30000)

m.c136 = Constraint(expr=   8*m.x279 + 44.7*m.x318 + m.x426 <= 26000)

m.c137 = Constraint(expr=   9*m.x279 + 13.3*m.x317 + 19.7*m.x318 <= 18800)

m.c138 = Constraint(expr=   33.3*m.x317 + 46.4*m.x318 <= 20400)

m.c139 = Constraint(expr=   7*m.x279 + 10*m.x280 + 46.7*m.x319 + 44.7*m.x320 <= 26000)

m.c140 = Constraint(expr=   10*m.x319 + 84.2*m.x320 <= 26800)

m.c141 = Constraint(expr=   3*m.x280 + 13*m.x319 + 87.3*m.x320 <= 25200)

m.c142 = Constraint(expr=   16.7*m.x319 + 90.7*m.x320 <= 26000)

m.c143 = Constraint(expr=   10*m.x279 + 10*m.x280 + 18.3*m.x319 + 20.5*m.x320 <= 28400)

m.c144 = Constraint(expr=   m.x427 <= 30000)

m.c145 = Constraint(expr=   m.x279 + m.x280 + m.x428 <= 30000)

m.c146 = Constraint(expr=   7*m.x280 + 37.3*m.x320 + m.x429 <= 30000)

m.c147 = Constraint(expr=   8*m.x280 + 44.7*m.x320 + m.x430 <= 26000)

m.c148 = Constraint(expr=   9*m.x280 + 13.3*m.x319 + 19.7*m.x320 <= 18800)

m.c149 = Constraint(expr=   33.3*m.x319 + 46.4*m.x320 <= 20400)

m.c150 = Constraint(expr=   7*m.x280 + 10*m.x281 + 46.7*m.x321 + 44.7*m.x322 <= 26000)

m.c151 = Constraint(expr=   10*m.x321 + 84.2*m.x322 <= 26800)

m.c152 = Constraint(expr=   3*m.x281 + 13*m.x321 + 87.3*m.x322 <= 25200)

m.c153 = Constraint(expr=   16.7*m.x321 + 90.7*m.x322 <= 26000)

m.c154 = Constraint(expr=   10*m.x280 + 10*m.x281 + 18.3*m.x321 + 20.5*m.x322 <= 28400)

m.c155 = Constraint(expr=   m.x431 <= 30000)

m.c156 = Constraint(expr=   m.x280 + m.x281 + m.x432 <= 30000)

m.c157 = Constraint(expr=   7*m.x281 + 37.3*m.x322 + m.x433 <= 30000)

m.c158 = Constraint(expr=   8*m.x281 + 44.7*m.x322 + m.x434 <= 26000)

m.c159 = Constraint(expr=   9*m.x281 + 13.3*m.x321 + 19.7*m.x322 <= 18800)

m.c160 = Constraint(expr=   33.3*m.x321 + 46.4*m.x322 <= 20400)

m.c161 = Constraint(expr=   7*m.x281 + 10*m.x282 + 46.7*m.x323 + 44.7*m.x324 <= 26000)

m.c162 = Constraint(expr=   10*m.x323 + 84.2*m.x324 <= 26800)

m.c163 = Constraint(expr=   3*m.x282 + 13*m.x323 + 87.3*m.x324 <= 25200)

m.c164 = Constraint(expr=   16.7*m.x323 + 90.7*m.x324 <= 26000)

m.c165 = Constraint(expr=   10*m.x281 + 10*m.x282 + 18.3*m.x323 + 20.5*m.x324 <= 28400)

m.c166 = Constraint(expr=   m.x435 <= 30000)

m.c167 = Constraint(expr=   m.x281 + m.x282 + m.x436 <= 30000)

m.c168 = Constraint(expr=   7*m.x282 + 37.3*m.x324 + m.x437 <= 30000)

m.c169 = Constraint(expr=   8*m.x282 + 44.7*m.x324 + m.x438 <= 26000)

m.c170 = Constraint(expr=   9*m.x282 + 13.3*m.x323 + 19.7*m.x324 <= 18800)

m.c171 = Constraint(expr=   33.3*m.x323 + 46.4*m.x324 <= 20400)

m.c172 = Constraint(expr=   7*m.x282 + 10*m.x283 + 46.7*m.x325 + 44.7*m.x326 <= 26000)

m.c173 = Constraint(expr=   10*m.x325 + 84.2*m.x326 <= 26800)

m.c174 = Constraint(expr=   3*m.x283 + 13*m.x325 + 87.3*m.x326 <= 25200)

m.c175 = Constraint(expr=   16.7*m.x325 + 90.7*m.x326 <= 26000)

m.c176 = Constraint(expr=   10*m.x282 + 10*m.x283 + 18.3*m.x325 + 20.5*m.x326 <= 28400)

m.c177 = Constraint(expr=   m.x439 <= 30000)

m.c178 = Constraint(expr=   m.x282 + m.x283 + m.x440 <= 30000)

m.c179 = Constraint(expr=   7*m.x283 + 37.3*m.x326 + m.x441 <= 30000)

m.c180 = Constraint(expr=   8*m.x283 + 44.7*m.x326 + m.x442 <= 26000)

m.c181 = Constraint(expr=   9*m.x283 + 13.3*m.x325 + 19.7*m.x326 <= 18800)

m.c182 = Constraint(expr=   33.3*m.x325 + 46.4*m.x326 <= 20400)

m.c183 = Constraint(expr=   7*m.x283 + 10*m.x284 + 46.7*m.x327 + 44.7*m.x328 <= 26000)

m.c184 = Constraint(expr=   10*m.x327 + 84.2*m.x328 <= 26800)

m.c185 = Constraint(expr=   3*m.x284 + 13*m.x327 + 87.3*m.x328 <= 25200)

m.c186 = Constraint(expr=   16.7*m.x327 + 90.7*m.x328 <= 26000)

m.c187 = Constraint(expr=   10*m.x283 + 10*m.x284 + 18.3*m.x327 + 20.5*m.x328 <= 28400)

m.c188 = Constraint(expr=   m.x443 <= 30000)

m.c189 = Constraint(expr=   m.x283 + m.x284 + m.x444 <= 30000)

m.c190 = Constraint(expr=   7*m.x284 + 37.3*m.x328 + m.x445 <= 30000)

m.c191 = Constraint(expr=   8*m.x284 + 44.7*m.x328 + m.x446 <= 26000)

m.c192 = Constraint(expr=   9*m.x284 + 13.3*m.x327 + 19.7*m.x328 <= 18800)

m.c193 = Constraint(expr=   33.3*m.x327 + 46.4*m.x328 <= 20400)

m.c194 = Constraint(expr=   7*m.x284 + 10*m.x285 + 46.7*m.x329 + 44.7*m.x330 <= 26000)

m.c195 = Constraint(expr=   10*m.x329 + 84.2*m.x330 <= 26800)

m.c196 = Constraint(expr=   3*m.x285 + 13*m.x329 + 87.3*m.x330 <= 25200)

m.c197 = Constraint(expr=   16.7*m.x329 + 90.7*m.x330 <= 26000)

m.c198 = Constraint(expr=   10*m.x284 + 10*m.x285 + 18.3*m.x329 + 20.5*m.x330 <= 28400)

m.c199 = Constraint(expr=   m.x447 <= 30000)

m.c200 = Constraint(expr=   m.x284 + m.x285 + m.x448 <= 30000)

m.c201 = Constraint(expr=   7*m.x285 + 37.3*m.x330 + m.x449 <= 30000)

m.c202 = Constraint(expr=   8*m.x285 + 44.7*m.x330 + m.x450 <= 26000)

m.c203 = Constraint(expr=   9*m.x285 + 13.3*m.x329 + 19.7*m.x330 <= 18800)

m.c204 = Constraint(expr=   33.3*m.x329 + 46.4*m.x330 <= 20400)

m.c205 = Constraint(expr=   7*m.x285 + 10*m.x286 + 46.7*m.x331 + 44.7*m.x332 <= 26000)

m.c206 = Constraint(expr=   10*m.x331 + 84.2*m.x332 <= 26800)

m.c207 = Constraint(expr=   3*m.x286 + 13*m.x331 + 87.3*m.x332 <= 25200)

m.c208 = Constraint(expr=   16.7*m.x331 + 90.7*m.x332 <= 26000)

m.c209 = Constraint(expr=   10*m.x285 + 10*m.x286 + 18.3*m.x331 + 20.5*m.x332 <= 28400)

m.c210 = Constraint(expr=   m.x451 <= 30000)

m.c211 = Constraint(expr=   m.x285 + m.x286 + m.x452 <= 30000)

m.c212 = Constraint(expr=   7*m.x286 + 37.3*m.x332 + m.x453 <= 30000)

m.c213 = Constraint(expr=   8*m.x286 + 44.7*m.x332 + m.x454 <= 26000)

m.c214 = Constraint(expr=   9*m.x286 + 13.3*m.x331 + 19.7*m.x332 <= 18800)

m.c215 = Constraint(expr=   33.3*m.x331 + 46.4*m.x332 <= 20400)

m.c216 = Constraint(expr=   7*m.x286 + 10*m.x287 + 46.7*m.x333 + 44.7*m.x334 <= 26000)

m.c217 = Constraint(expr=   10*m.x333 + 84.2*m.x334 <= 26800)

m.c218 = Constraint(expr=   3*m.x287 + 13*m.x333 + 87.3*m.x334 <= 25200)

m.c219 = Constraint(expr=   16.7*m.x333 + 90.7*m.x334 <= 26000)

m.c220 = Constraint(expr=   10*m.x286 + 10*m.x287 + 18.3*m.x333 + 20.5*m.x334 <= 28400)

m.c221 = Constraint(expr=   m.x455 <= 30000)

m.c222 = Constraint(expr=   m.x286 + m.x287 + m.x456 <= 30000)

m.c223 = Constraint(expr=   7*m.x287 + 37.3*m.x334 + m.x457 <= 30000)

m.c224 = Constraint(expr=   8*m.x287 + 44.7*m.x334 + m.x458 <= 26000)

m.c225 = Constraint(expr=   9*m.x287 + 13.3*m.x333 + 19.7*m.x334 <= 18800)

m.c226 = Constraint(expr=   33.3*m.x333 + 46.4*m.x334 <= 20400)

m.c227 = Constraint(expr=   7*m.x287 + 10*m.x288 + 46.7*m.x335 + 44.7*m.x336 <= 26000)

m.c228 = Constraint(expr=   10*m.x335 + 84.2*m.x336 <= 26800)

m.c229 = Constraint(expr=   3*m.x288 + 13*m.x335 + 87.3*m.x336 <= 25200)

m.c230 = Constraint(expr=   16.7*m.x335 + 90.7*m.x336 <= 26000)

m.c231 = Constraint(expr=   10*m.x287 + 10*m.x288 + 18.3*m.x335 + 20.5*m.x336 <= 28400)

m.c232 = Constraint(expr=   m.x459 <= 30000)

m.c233 = Constraint(expr=   m.x287 + m.x288 + m.x460 <= 30000)

m.c234 = Constraint(expr=   7*m.x288 + 37.3*m.x336 + m.x461 <= 30000)

m.c235 = Constraint(expr=   8*m.x288 + 44.7*m.x336 + m.x462 <= 26000)

m.c236 = Constraint(expr=   9*m.x288 + 13.3*m.x335 + 19.7*m.x336 <= 18800)

m.c237 = Constraint(expr=   33.3*m.x335 + 46.4*m.x336 <= 20400)

m.c238 = Constraint(expr=   7*m.x288 + 10*m.x289 + 46.7*m.x337 + 44.7*m.x338 <= 26000)

m.c239 = Constraint(expr=   10*m.x337 + 84.2*m.x338 <= 26800)

m.c240 = Constraint(expr=   3*m.x289 + 13*m.x337 + 87.3*m.x338 <= 25200)

m.c241 = Constraint(expr=   16.7*m.x337 + 90.7*m.x338 <= 26000)

m.c242 = Constraint(expr=   10*m.x288 + 10*m.x289 + 18.3*m.x337 + 20.5*m.x338 <= 28400)

m.c243 = Constraint(expr=   m.x463 <= 30000)

m.c244 = Constraint(expr=   m.x288 + m.x289 + m.x464 <= 30000)

m.c245 = Constraint(expr=   7*m.x289 + 37.3*m.x338 + m.x465 <= 30000)

m.c246 = Constraint(expr=   8*m.x289 + 44.7*m.x338 + m.x466 <= 26000)

m.c247 = Constraint(expr=   9*m.x289 + 13.3*m.x337 + 19.7*m.x338 <= 18800)

m.c248 = Constraint(expr=   33.3*m.x337 + 46.4*m.x338 <= 20400)

m.c249 = Constraint(expr=   7*m.x289 + 10*m.x290 + 46.7*m.x339 + 44.7*m.x340 <= 26000)

m.c250 = Constraint(expr=   10*m.x339 + 84.2*m.x340 <= 26800)

m.c251 = Constraint(expr=   3*m.x290 + 13*m.x339 + 87.3*m.x340 <= 25200)

m.c252 = Constraint(expr=   16.7*m.x339 + 90.7*m.x340 <= 26000)

m.c253 = Constraint(expr=   10*m.x289 + 10*m.x290 + 18.3*m.x339 + 20.5*m.x340 <= 28400)

m.c254 = Constraint(expr=   m.x467 <= 30000)

m.c255 = Constraint(expr=   m.x289 + m.x290 + m.x468 <= 30000)

m.c256 = Constraint(expr=   7*m.x290 + 37.3*m.x340 + m.x469 <= 30000)

m.c257 = Constraint(expr=   8*m.x290 + 44.7*m.x340 + m.x470 <= 26000)

m.c258 = Constraint(expr=   9*m.x290 + 13.3*m.x339 + 19.7*m.x340 <= 18800)

m.c259 = Constraint(expr=   33.3*m.x339 + 46.4*m.x340 <= 20400)

m.c260 = Constraint(expr=   7*m.x290 + 10*m.x291 + 46.7*m.x341 + 44.7*m.x342 <= 26000)

m.c261 = Constraint(expr=   10*m.x341 + 84.2*m.x342 <= 26800)

m.c262 = Constraint(expr=   3*m.x291 + 13*m.x341 + 87.3*m.x342 <= 25200)

m.c263 = Constraint(expr=   16.7*m.x341 + 90.7*m.x342 <= 26000)

m.c264 = Constraint(expr=   10*m.x290 + 10*m.x291 + 18.3*m.x341 + 20.5*m.x342 <= 28400)

m.c265 = Constraint(expr=   m.x471 <= 30000)

m.c266 = Constraint(expr=   m.x290 + m.x291 + m.x472 <= 30000)

m.c267 = Constraint(expr=   7*m.x291 + 37.3*m.x342 + m.x473 <= 30000)

m.c268 = Constraint(expr=   8*m.x291 + 44.7*m.x342 + m.x474 <= 26000)

m.c269 = Constraint(expr=   9*m.x291 + 13.3*m.x341 + 19.7*m.x342 <= 18800)

m.c270 = Constraint(expr=   33.3*m.x341 + 46.4*m.x342 <= 20400)

m.c271 = Constraint(expr=   7*m.x291 + 10*m.x292 + 46.7*m.x343 + 44.7*m.x344 <= 26000)

m.c272 = Constraint(expr=   10*m.x343 + 84.2*m.x344 <= 26800)

m.c273 = Constraint(expr=   3*m.x292 + 13*m.x343 + 87.3*m.x344 <= 25200)

m.c274 = Constraint(expr=   16.7*m.x343 + 90.7*m.x344 <= 26000)

m.c275 = Constraint(expr=   10*m.x291 + 10*m.x292 + 18.3*m.x343 + 20.5*m.x344 <= 28400)

m.c276 = Constraint(expr=   m.x475 <= 30000)

m.c277 = Constraint(expr=   m.x291 + m.x292 + m.x476 <= 30000)

m.c278 = Constraint(expr=   7*m.x292 + 37.3*m.x344 + m.x477 <= 30000)

m.c279 = Constraint(expr=   8*m.x292 + 44.7*m.x344 + m.x478 <= 26000)

m.c280 = Constraint(expr=   9*m.x292 + 13.3*m.x343 + 19.7*m.x344 <= 18800)

m.c281 = Constraint(expr=   33.3*m.x343 + 46.4*m.x344 <= 20400)

m.c282 = Constraint(expr=   7*m.x292 + 10*m.x293 + 46.7*m.x345 + 44.7*m.x346 <= 26000)

m.c283 = Constraint(expr=   10*m.x345 + 84.2*m.x346 <= 26800)

m.c284 = Constraint(expr=   3*m.x293 + 13*m.x345 + 87.3*m.x346 <= 25200)

m.c285 = Constraint(expr=   16.7*m.x345 + 90.7*m.x346 <= 26000)

m.c286 = Constraint(expr=   10*m.x292 + 10*m.x293 + 18.3*m.x345 + 20.5*m.x346 <= 28400)

m.c287 = Constraint(expr=   m.x479 <= 30000)

m.c288 = Constraint(expr=   m.x292 + m.x293 + m.x480 <= 30000)

m.c289 = Constraint(expr=   7*m.x293 + 37.3*m.x346 + m.x481 <= 30000)

m.c290 = Constraint(expr=   8*m.x293 + 44.7*m.x346 + m.x482 <= 26000)

m.c291 = Constraint(expr=   9*m.x293 + 13.3*m.x345 + 19.7*m.x346 <= 18800)

m.c292 = Constraint(expr=   33.3*m.x345 + 46.4*m.x346 <= 20400)

m.c293 = Constraint(expr=   7*m.x293 + 10*m.x294 + 46.7*m.x347 + 44.7*m.x348 <= 26000)

m.c294 = Constraint(expr=   10*m.x347 + 84.2*m.x348 <= 26800)

m.c295 = Constraint(expr=   3*m.x294 + 13*m.x347 + 87.3*m.x348 <= 25200)

m.c296 = Constraint(expr=   16.7*m.x347 + 90.7*m.x348 <= 26000)

m.c297 = Constraint(expr=   10*m.x293 + 10*m.x294 + 18.3*m.x347 + 20.5*m.x348 <= 28400)

m.c298 = Constraint(expr=   m.x483 <= 30000)

m.c299 = Constraint(expr=   m.x293 + m.x294 + m.x484 <= 30000)

m.c300 = Constraint(expr=   7*m.x294 + 37.3*m.x348 + m.x485 <= 30000)

m.c301 = Constraint(expr=   8*m.x294 + 44.7*m.x348 + m.x486 <= 26000)

m.c302 = Constraint(expr=   9*m.x294 + 13.3*m.x347 + 19.7*m.x348 <= 18800)

m.c303 = Constraint(expr=   33.3*m.x347 + 46.4*m.x348 <= 20400)

m.c304 = Constraint(expr=   7*m.x294 + 10*m.x295 + 46.7*m.x349 + 44.7*m.x350 <= 26000)

m.c305 = Constraint(expr=   10*m.x349 + 84.2*m.x350 <= 26800)

m.c306 = Constraint(expr=   3*m.x295 + 13*m.x349 + 87.3*m.x350 <= 25200)

m.c307 = Constraint(expr=   16.7*m.x349 + 90.7*m.x350 <= 26000)

m.c308 = Constraint(expr=   10*m.x294 + 10*m.x295 + 18.3*m.x349 + 20.5*m.x350 <= 28400)

m.c309 = Constraint(expr=   m.x487 <= 30000)

m.c310 = Constraint(expr=   m.x294 + m.x295 + m.x488 <= 30000)

m.c311 = Constraint(expr=   7*m.x295 + 37.3*m.x350 + m.x489 <= 30000)

m.c312 = Constraint(expr=   8*m.x295 + 44.7*m.x350 + m.x490 <= 26000)

m.c313 = Constraint(expr=   9*m.x295 + 13.3*m.x349 + 19.7*m.x350 <= 18800)

m.c314 = Constraint(expr=   33.3*m.x349 + 46.4*m.x350 <= 20400)

m.c315 = Constraint(expr=   7*m.x295 + 10*m.x296 + 46.7*m.x351 + 44.7*m.x352 <= 26000)

m.c316 = Constraint(expr=   10*m.x351 + 84.2*m.x352 <= 26800)

m.c317 = Constraint(expr=   3*m.x296 + 13*m.x351 + 87.3*m.x352 <= 25200)

m.c318 = Constraint(expr=   16.7*m.x351 + 90.7*m.x352 <= 26000)

m.c319 = Constraint(expr=   10*m.x295 + 10*m.x296 + 18.3*m.x351 + 20.5*m.x352 <= 28400)

m.c320 = Constraint(expr=   m.x491 <= 30000)

m.c321 = Constraint(expr=   m.x295 + m.x296 + m.x492 <= 30000)

m.c322 = Constraint(expr=   7*m.x296 + 37.3*m.x352 + m.x493 <= 30000)

m.c323 = Constraint(expr=   8*m.x296 + 44.7*m.x352 + m.x494 <= 26000)

m.c324 = Constraint(expr=   9*m.x296 + 13.3*m.x351 + 19.7*m.x352 <= 18800)

m.c325 = Constraint(expr=   33.3*m.x351 + 46.4*m.x352 <= 20400)

m.c326 = Constraint(expr=   7*m.x296 + 10*m.x297 + 46.7*m.x353 + 44.7*m.x354 <= 26000)

m.c327 = Constraint(expr=   10*m.x353 + 84.2*m.x354 <= 26800)

m.c328 = Constraint(expr=   3*m.x297 + 13*m.x353 + 87.3*m.x354 <= 25200)

m.c329 = Constraint(expr=   16.7*m.x353 + 90.7*m.x354 <= 26000)

m.c330 = Constraint(expr=   10*m.x296 + 10*m.x297 + 18.3*m.x353 + 20.5*m.x354 <= 28400)

m.c331 = Constraint(expr=   m.x495 <= 30000)

m.c332 = Constraint(expr=   m.x296 + m.x297 + m.x496 <= 30000)

m.c333 = Constraint(expr=   7*m.x297 + 37.3*m.x354 + m.x497 <= 30000)

m.c334 = Constraint(expr=   8*m.x297 + 44.7*m.x354 + m.x498 <= 26000)

m.c335 = Constraint(expr=   9*m.x297 + 13.3*m.x353 + 19.7*m.x354 <= 18800)

m.c336 = Constraint(expr=   33.3*m.x353 + 46.4*m.x354 <= 20400)

m.c337 = Constraint(expr=   7*m.x297 + 10*m.x298 + 46.7*m.x355 + 44.7*m.x356 <= 26000)

m.c338 = Constraint(expr=   10*m.x355 + 84.2*m.x356 <= 26800)

m.c339 = Constraint(expr=   3*m.x298 + 13*m.x355 + 87.3*m.x356 <= 25200)

m.c340 = Constraint(expr=   16.7*m.x355 + 90.7*m.x356 <= 26000)

m.c341 = Constraint(expr=   10*m.x297 + 10*m.x298 + 18.3*m.x355 + 20.5*m.x356 <= 28400)

m.c342 = Constraint(expr=   m.x499 <= 30000)

m.c343 = Constraint(expr=   m.x297 + m.x298 + m.x500 <= 30000)

m.c344 = Constraint(expr=   7*m.x298 + 37.3*m.x356 + m.x501 <= 30000)

m.c345 = Constraint(expr=   8*m.x298 + 44.7*m.x356 + m.x502 <= 26000)

m.c346 = Constraint(expr=   9*m.x298 + 13.3*m.x355 + 19.7*m.x356 <= 18800)

m.c347 = Constraint(expr=   33.3*m.x355 + 46.4*m.x356 <= 20400)

m.c348 = Constraint(expr=   7*m.x298 + 10*m.x299 + 46.7*m.x357 + 44.7*m.x358 <= 26000)

m.c349 = Constraint(expr=   10*m.x357 + 84.2*m.x358 <= 26800)

m.c350 = Constraint(expr=   3*m.x299 + 13*m.x357 + 87.3*m.x358 <= 25200)

m.c351 = Constraint(expr=   16.7*m.x357 + 90.7*m.x358 <= 26000)

m.c352 = Constraint(expr=   10*m.x298 + 10*m.x299 + 18.3*m.x357 + 20.5*m.x358 <= 28400)

m.c353 = Constraint(expr=   m.x503 <= 30000)

m.c354 = Constraint(expr=   m.x298 + m.x299 + m.x504 <= 30000)

m.c355 = Constraint(expr=   7*m.x299 + 37.3*m.x358 + m.x505 <= 30000)

m.c356 = Constraint(expr=   8*m.x299 + 44.7*m.x358 + m.x506 <= 26000)

m.c357 = Constraint(expr=   9*m.x299 + 13.3*m.x357 + 19.7*m.x358 <= 18800)

m.c358 = Constraint(expr=   33.3*m.x357 + 46.4*m.x358 <= 20400)

m.c359 = Constraint(expr=   7*m.x299 + 10*m.x300 + 46.7*m.x359 + 44.7*m.x360 <= 26000)

m.c360 = Constraint(expr=   10*m.x359 + 84.2*m.x360 <= 26800)

m.c361 = Constraint(expr=   3*m.x300 + 13*m.x359 + 87.3*m.x360 <= 25200)

m.c362 = Constraint(expr=   16.7*m.x359 + 90.7*m.x360 <= 26000)

m.c363 = Constraint(expr=   10*m.x299 + 10*m.x300 + 18.3*m.x359 + 20.5*m.x360 <= 28400)

m.c364 = Constraint(expr=   m.x507 <= 30000)

m.c365 = Constraint(expr=   m.x299 + m.x300 + m.x508 <= 30000)

m.c366 = Constraint(expr=   7*m.x300 + 37.3*m.x360 + m.x509 <= 30000)

m.c367 = Constraint(expr=   8*m.x300 + 44.7*m.x360 + m.x510 <= 26000)

m.c368 = Constraint(expr=   9*m.x300 + 13.3*m.x359 + 19.7*m.x360 <= 18800)

m.c369 = Constraint(expr=   33.3*m.x359 + 46.4*m.x360 <= 20400)

m.c370 = Constraint(expr= - 51.2820512820513*m.x1 - 54.054054054054*m.x2 - 57.1428571428571*m.x3 - 60.6060606060606*m.x4
                          - 64.5161290322581*m.x5 - 68.9655172413793*m.x6 - 74.0740740740741*m.x7 - 80*m.x8
                          - 86.9565217391304*m.x9 + m.x391 + m.x392 + m.x393 + m.x394 == 0)

m.c371 = Constraint(expr= - 51.2820512820513*m.x10 - 54.054054054054*m.x11 - 57.1428571428571*m.x12
                          - 60.6060606060606*m.x13 - 64.5161290322581*m.x14 - 68.9655172413793*m.x15
                          - 74.0740740740741*m.x16 - 80*m.x17 - 86.9565217391304*m.x18 + m.x395 + m.x396 + m.x397
                          + m.x398 == 0)

m.c372 = Constraint(expr= - 51.2820512820513*m.x19 - 54.054054054054*m.x20 - 57.1428571428571*m.x21
                          - 60.6060606060606*m.x22 - 64.5161290322581*m.x23 - 68.9655172413793*m.x24
                          - 74.0740740740741*m.x25 - 80*m.x26 - 86.9565217391304*m.x27 + m.x399 + m.x400 + m.x401
                          + m.x402 == 0)

m.c373 = Constraint(expr= - 51.2820512820513*m.x28 - 54.054054054054*m.x29 - 57.1428571428571*m.x30
                          - 60.6060606060606*m.x31 - 64.5161290322581*m.x32 - 68.9655172413793*m.x33
                          - 74.0740740740741*m.x34 - 80*m.x35 - 86.9565217391304*m.x36 + m.x403 + m.x404 + m.x405
                          + m.x406 == 0)

m.c374 = Constraint(expr= - 51.2820512820513*m.x37 - 54.054054054054*m.x38 - 57.1428571428571*m.x39
                          - 60.6060606060606*m.x40 - 64.5161290322581*m.x41 - 68.9655172413793*m.x42
                          - 74.0740740740741*m.x43 - 80*m.x44 - 86.9565217391304*m.x45 + m.x407 + m.x408 + m.x409
                          + m.x410 == 0)

m.c375 = Constraint(expr= - 51.2820512820513*m.x46 - 54.054054054054*m.x47 - 57.1428571428571*m.x48
                          - 60.6060606060606*m.x49 - 64.5161290322581*m.x50 - 68.9655172413793*m.x51
                          - 74.0740740740741*m.x52 - 80*m.x53 - 86.9565217391304*m.x54 + m.x411 + m.x412 + m.x413
                          + m.x414 == 0)

m.c376 = Constraint(expr= - 51.2820512820513*m.x55 - 54.054054054054*m.x56 - 57.1428571428571*m.x57
                          - 60.6060606060606*m.x58 - 64.5161290322581*m.x59 - 68.9655172413793*m.x60
                          - 74.0740740740741*m.x61 - 80*m.x62 - 86.9565217391304*m.x63 + m.x415 + m.x416 + m.x417
                          + m.x418 == 0)

m.c377 = Constraint(expr= - 51.2820512820513*m.x64 - 54.054054054054*m.x65 - 57.1428571428571*m.x66
                          - 60.6060606060606*m.x67 - 64.5161290322581*m.x68 - 68.9655172413793*m.x69
                          - 74.0740740740741*m.x70 - 80*m.x71 - 86.9565217391304*m.x72 + m.x419 + m.x420 + m.x421
                          + m.x422 == 0)

m.c378 = Constraint(expr= - 51.2820512820513*m.x73 - 54.054054054054*m.x74 - 57.1428571428571*m.x75
                          - 60.6060606060606*m.x76 - 64.5161290322581*m.x77 - 68.9655172413793*m.x78
                          - 74.0740740740741*m.x79 - 80*m.x80 - 86.9565217391304*m.x81 - 60*m.x271 + m.x423 + m.x424
                          + m.x425 + m.x426 == 0)

m.c379 = Constraint(expr= - 51.2820512820513*m.x82 - 54.054054054054*m.x83 - 57.1428571428571*m.x84
                          - 60.6060606060606*m.x85 - 64.5161290322581*m.x86 - 68.9655172413793*m.x87
                          - 74.0740740740741*m.x88 - 80*m.x89 - 86.9565217391304*m.x90 - 60*m.x272 + m.x427 + m.x428
                          + m.x429 + m.x430 == 0)

m.c380 = Constraint(expr= - 51.2820512820513*m.x91 - 54.054054054054*m.x92 - 57.1428571428571*m.x93
                          - 60.6060606060606*m.x94 - 64.5161290322581*m.x95 - 68.9655172413793*m.x96
                          - 74.0740740740741*m.x97 - 80*m.x98 - 86.9565217391304*m.x99 - 60*m.x273 + m.x431 + m.x432
                          + m.x433 + m.x434 == 0)

m.c381 = Constraint(expr= - 51.2820512820513*m.x100 - 54.054054054054*m.x101 - 57.1428571428571*m.x102
                          - 60.6060606060606*m.x103 - 64.5161290322581*m.x104 - 68.9655172413793*m.x105
                          - 74.0740740740741*m.x106 - 80*m.x107 - 86.9565217391304*m.x108 - 60*m.x274 + m.x435 + m.x436
                          + m.x437 + m.x438 == 0)

m.c382 = Constraint(expr= - 51.2820512820513*m.x109 - 54.054054054054*m.x110 - 57.1428571428571*m.x111
                          - 60.6060606060606*m.x112 - 64.5161290322581*m.x113 - 68.9655172413793*m.x114
                          - 74.0740740740741*m.x115 - 80*m.x116 - 86.9565217391304*m.x117 - 60*m.x275 + m.x439 + m.x440
                          + m.x441 + m.x442 == 0)

m.c383 = Constraint(expr= - 51.2820512820513*m.x118 - 54.054054054054*m.x119 - 57.1428571428571*m.x120
                          - 60.6060606060606*m.x121 - 64.5161290322581*m.x122 - 68.9655172413793*m.x123
                          - 74.0740740740741*m.x124 - 80*m.x125 - 86.9565217391304*m.x126 - 60*m.x276 + m.x443 + m.x444
                          + m.x445 + m.x446 == 0)

m.c384 = Constraint(expr= - 51.2820512820513*m.x127 - 54.054054054054*m.x128 - 57.1428571428571*m.x129
                          - 60.6060606060606*m.x130 - 64.5161290322581*m.x131 - 68.9655172413793*m.x132
                          - 74.0740740740741*m.x133 - 80*m.x134 - 86.9565217391304*m.x135 - 60*m.x277 + m.x447 + m.x448
                          + m.x449 + m.x450 == 0)

m.c385 = Constraint(expr= - 51.2820512820513*m.x136 - 54.054054054054*m.x137 - 57.1428571428571*m.x138
                          - 60.6060606060606*m.x139 - 64.5161290322581*m.x140 - 68.9655172413793*m.x141
                          - 74.0740740740741*m.x142 - 80*m.x143 - 86.9565217391304*m.x144 - 60*m.x278 + m.x451 + m.x452
                          + m.x453 + m.x454 == 0)

m.c386 = Constraint(expr= - 51.2820512820513*m.x145 - 54.054054054054*m.x146 - 57.1428571428571*m.x147
                          - 60.6060606060606*m.x148 - 64.5161290322581*m.x149 - 68.9655172413793*m.x150
                          - 74.0740740740741*m.x151 - 80*m.x152 - 86.9565217391304*m.x153 - 60*m.x271 - 60*m.x279
                          + m.x455 + m.x456 + m.x457 + m.x458 == 0)

m.c387 = Constraint(expr= - 51.2820512820513*m.x154 - 54.054054054054*m.x155 - 57.1428571428571*m.x156
                          - 60.6060606060606*m.x157 - 64.5161290322581*m.x158 - 68.9655172413793*m.x159
                          - 74.0740740740741*m.x160 - 80*m.x161 - 86.9565217391304*m.x162 - 60*m.x272 - 60*m.x280
                          + m.x459 + m.x460 + m.x461 + m.x462 == 0)

m.c388 = Constraint(expr= - 51.2820512820513*m.x163 - 54.054054054054*m.x164 - 57.1428571428571*m.x165
                          - 60.6060606060606*m.x166 - 64.5161290322581*m.x167 - 68.9655172413793*m.x168
                          - 74.0740740740741*m.x169 - 80*m.x170 - 86.9565217391304*m.x171 - 60*m.x273 - 60*m.x281
                          + m.x463 + m.x464 + m.x465 + m.x466 == 0)

m.c389 = Constraint(expr= - 51.2820512820513*m.x172 - 54.054054054054*m.x173 - 57.1428571428571*m.x174
                          - 60.6060606060606*m.x175 - 64.5161290322581*m.x176 - 68.9655172413793*m.x177
                          - 74.0740740740741*m.x178 - 80*m.x179 - 86.9565217391304*m.x180 - 60*m.x274 - 60*m.x282
                          + m.x467 + m.x468 + m.x469 + m.x470 == 0)

m.c390 = Constraint(expr= - 51.2820512820513*m.x181 - 54.054054054054*m.x182 - 57.1428571428571*m.x183
                          - 60.6060606060606*m.x184 - 64.5161290322581*m.x185 - 68.9655172413793*m.x186
                          - 74.0740740740741*m.x187 - 80*m.x188 - 86.9565217391304*m.x189 - 60*m.x275 - 60*m.x283
                          + m.x471 + m.x472 + m.x473 + m.x474 == 0)

m.c391 = Constraint(expr= - 51.2820512820513*m.x190 - 54.054054054054*m.x191 - 57.1428571428571*m.x192
                          - 60.6060606060606*m.x193 - 64.5161290322581*m.x194 - 68.9655172413793*m.x195
                          - 74.0740740740741*m.x196 - 80*m.x197 - 86.9565217391304*m.x198 - 60*m.x276 - 60*m.x284
                          + m.x475 + m.x476 + m.x477 + m.x478 == 0)

m.c392 = Constraint(expr= - 51.2820512820513*m.x199 - 54.054054054054*m.x200 - 57.1428571428571*m.x201
                          - 60.6060606060606*m.x202 - 64.5161290322581*m.x203 - 68.9655172413793*m.x204
                          - 74.0740740740741*m.x205 - 80*m.x206 - 86.9565217391304*m.x207 - 60*m.x277 - 60*m.x285
                          + m.x479 + m.x480 + m.x481 + m.x482 == 0)

m.c393 = Constraint(expr= - 51.2820512820513*m.x208 - 54.054054054054*m.x209 - 57.1428571428571*m.x210
                          - 60.6060606060606*m.x211 - 64.5161290322581*m.x212 - 68.9655172413793*m.x213
                          - 74.0740740740741*m.x214 - 80*m.x215 - 86.9565217391304*m.x216 - 60*m.x278 - 60*m.x286
                          + m.x483 + m.x484 + m.x485 + m.x486 == 0)

m.c394 = Constraint(expr= - 51.2820512820513*m.x217 - 54.054054054054*m.x218 - 57.1428571428571*m.x219
                          - 60.6060606060606*m.x220 - 64.5161290322581*m.x221 - 68.9655172413793*m.x222
                          - 74.0740740740741*m.x223 - 80*m.x224 - 86.9565217391304*m.x225 - 60*m.x271 - 60*m.x279
                          - 60*m.x287 + m.x487 + m.x488 + m.x489 + m.x490 == 0)

m.c395 = Constraint(expr= - 51.2820512820513*m.x226 - 54.054054054054*m.x227 - 57.1428571428571*m.x228
                          - 60.6060606060606*m.x229 - 64.5161290322581*m.x230 - 68.9655172413793*m.x231
                          - 74.0740740740741*m.x232 - 80*m.x233 - 86.9565217391304*m.x234 - 60*m.x272 - 60*m.x280
                          - 60*m.x288 + m.x491 + m.x492 + m.x493 + m.x494 == 0)

m.c396 = Constraint(expr= - 51.2820512820513*m.x235 - 54.054054054054*m.x236 - 57.1428571428571*m.x237
                          - 60.6060606060606*m.x238 - 64.5161290322581*m.x239 - 68.9655172413793*m.x240
                          - 74.0740740740741*m.x241 - 80*m.x242 - 86.9565217391304*m.x243 - 60*m.x273 - 60*m.x281
                          - 60*m.x289 + m.x495 + m.x496 + m.x497 + m.x498 == 0)

m.c397 = Constraint(expr= - 51.2820512820513*m.x244 - 54.054054054054*m.x245 - 57.1428571428571*m.x246
                          - 60.6060606060606*m.x247 - 64.5161290322581*m.x248 - 68.9655172413793*m.x249
                          - 74.0740740740741*m.x250 - 80*m.x251 - 86.9565217391304*m.x252 - 60*m.x274 - 60*m.x282
                          - 60*m.x290 + m.x499 + m.x500 + m.x501 + m.x502 == 0)

m.c398 = Constraint(expr= - 51.2820512820513*m.x253 - 54.054054054054*m.x254 - 57.1428571428571*m.x255
                          - 60.6060606060606*m.x256 - 64.5161290322581*m.x257 - 68.9655172413793*m.x258
                          - 74.0740740740741*m.x259 - 80*m.x260 - 86.9565217391304*m.x261 - 60*m.x275 - 60*m.x283
                          - 60*m.x291 + m.x503 + m.x504 + m.x505 + m.x506 == 0)

m.c399 = Constraint(expr= - 51.2820512820513*m.x262 - 54.054054054054*m.x263 - 57.1428571428571*m.x264
                          - 60.6060606060606*m.x265 - 64.5161290322581*m.x266 - 68.9655172413793*m.x267
                          - 74.0740740740741*m.x268 - 80*m.x269 - 86.9565217391304*m.x270 - 60*m.x276 - 60*m.x284
                          - 60*m.x292 + m.x507 + m.x508 + m.x509 + m.x510 == 0)

m.c400 = Constraint(expr= - m.x302 + m.x362 <= 0)

m.c401 = Constraint(expr= - m.x304 + m.x363 <= 0)

m.c402 = Constraint(expr= - m.x306 + m.x364 <= 0)

m.c403 = Constraint(expr= - m.x308 + m.x365 <= 0)

m.c404 = Constraint(expr= - m.x310 + m.x366 <= 0)

m.c405 = Constraint(expr= - m.x312 + m.x367 <= 0)

m.c406 = Constraint(expr= - m.x314 + m.x368 <= 0)

m.c407 = Constraint(expr= - m.x316 + m.x369 <= 0)

m.c408 = Constraint(expr= - m.x318 + m.x370 <= 0)

m.c409 = Constraint(expr= - m.x320 + m.x371 <= 0)

m.c410 = Constraint(expr= - m.x322 + m.x372 <= 0)

m.c411 = Constraint(expr= - m.x324 + m.x373 <= 0)

m.c412 = Constraint(expr= - m.x326 + m.x374 <= 0)

m.c413 = Constraint(expr= - m.x328 + m.x375 <= 0)

m.c414 = Constraint(expr= - m.x330 + m.x376 <= 0)

m.c415 = Constraint(expr= - m.x332 + m.x377 <= 0)

m.c416 = Constraint(expr= - m.x334 + m.x378 <= 0)

m.c417 = Constraint(expr= - m.x336 + m.x379 <= 0)

m.c418 = Constraint(expr= - m.x338 + m.x380 <= 0)

m.c419 = Constraint(expr= - m.x340 + m.x381 <= 0)

m.c420 = Constraint(expr= - m.x342 + m.x382 <= 0)

m.c421 = Constraint(expr= - m.x344 + m.x383 <= 0)

m.c422 = Constraint(expr= - m.x346 + m.x384 <= 0)

m.c423 = Constraint(expr= - m.x348 + m.x385 <= 0)

m.c424 = Constraint(expr= - m.x350 + m.x386 <= 0)

m.c425 = Constraint(expr= - m.x352 + m.x387 <= 0)

m.c426 = Constraint(expr= - m.x354 + m.x388 <= 0)

m.c427 = Constraint(expr= - m.x356 + m.x389 <= 0)

m.c428 = Constraint(expr= - m.x358 + m.x390 <= 0)

m.c429 = Constraint(expr= - m.x301 + m.x361 <= 0)

m.c430 = Constraint(expr= - m.x303 + m.x362 <= 0)

m.c431 = Constraint(expr= - m.x305 + m.x363 <= 0)

m.c432 = Constraint(expr= - m.x307 + m.x364 <= 0)

m.c433 = Constraint(expr= - m.x309 + m.x365 <= 0)

m.c434 = Constraint(expr= - m.x311 + m.x366 <= 0)

m.c435 = Constraint(expr= - m.x313 + m.x367 <= 0)

m.c436 = Constraint(expr= - m.x315 + m.x368 <= 0)

m.c437 = Constraint(expr= - m.x317 + m.x369 <= 0)

m.c438 = Constraint(expr= - m.x319 + m.x370 <= 0)

m.c439 = Constraint(expr= - m.x321 + m.x371 <= 0)

m.c440 = Constraint(expr= - m.x323 + m.x372 <= 0)

m.c441 = Constraint(expr= - m.x325 + m.x373 <= 0)

m.c442 = Constraint(expr= - m.x327 + m.x374 <= 0)

m.c443 = Constraint(expr= - m.x329 + m.x375 <= 0)

m.c444 = Constraint(expr= - m.x331 + m.x376 <= 0)

m.c445 = Constraint(expr= - m.x333 + m.x377 <= 0)

m.c446 = Constraint(expr= - m.x335 + m.x378 <= 0)

m.c447 = Constraint(expr= - m.x337 + m.x379 <= 0)

m.c448 = Constraint(expr= - m.x339 + m.x380 <= 0)

m.c449 = Constraint(expr= - m.x341 + m.x381 <= 0)

m.c450 = Constraint(expr= - m.x343 + m.x382 <= 0)

m.c451 = Constraint(expr= - m.x345 + m.x383 <= 0)

m.c452 = Constraint(expr= - m.x347 + m.x384 <= 0)

m.c453 = Constraint(expr= - m.x349 + m.x385 <= 0)

m.c454 = Constraint(expr= - m.x351 + m.x386 <= 0)

m.c455 = Constraint(expr= - m.x353 + m.x387 <= 0)

m.c456 = Constraint(expr= - m.x355 + m.x388 <= 0)

m.c457 = Constraint(expr= - m.x357 + m.x389 <= 0)

m.c458 = Constraint(expr= - m.x359 + m.x390 <= 0)

m.c459 = Constraint(expr=   750*m.x301 + 187.5*m.x361 >= 260000)

m.c460 = Constraint(expr=   750*m.x303 + 187.5*m.x362 >= 260000)

m.c461 = Constraint(expr=   750*m.x305 + 187.5*m.x363 >= 260000)

m.c462 = Constraint(expr=   750*m.x307 + 187.5*m.x364 >= 260000)

m.c463 = Constraint(expr=   750*m.x309 + 187.5*m.x365 >= 260000)

m.c464 = Constraint(expr=   750*m.x311 + 187.5*m.x366 >= 260000)

m.c465 = Constraint(expr=   750*m.x313 + 187.5*m.x367 >= 260000)

m.c466 = Constraint(expr=   750*m.x315 + 187.5*m.x368 >= 260000)

m.c467 = Constraint(expr=   750*m.x317 + 187.5*m.x369 >= 260000)

m.c468 = Constraint(expr=   750*m.x319 + 187.5*m.x370 >= 260000)

m.c469 = Constraint(expr=   750*m.x321 + 187.5*m.x371 >= 260000)

m.c470 = Constraint(expr=   750*m.x323 + 187.5*m.x372 >= 260000)

m.c471 = Constraint(expr=   750*m.x325 + 187.5*m.x373 >= 260000)

m.c472 = Constraint(expr=   750*m.x327 + 187.5*m.x374 >= 260000)

m.c473 = Constraint(expr=   750*m.x329 + 187.5*m.x375 >= 260000)

m.c474 = Constraint(expr=   750*m.x331 + 187.5*m.x376 >= 260000)

m.c475 = Constraint(expr=   750*m.x333 + 187.5*m.x377 >= 260000)

m.c476 = Constraint(expr=   750*m.x335 + 187.5*m.x378 >= 260000)

m.c477 = Constraint(expr=   750*m.x337 + 187.5*m.x379 >= 260000)

m.c478 = Constraint(expr=   750*m.x339 + 187.5*m.x380 >= 260000)

m.c479 = Constraint(expr=   750*m.x341 + 187.5*m.x381 >= 260000)

m.c480 = Constraint(expr=   750*m.x343 + 187.5*m.x382 >= 260000)

m.c481 = Constraint(expr=   750*m.x345 + 187.5*m.x383 >= 260000)

m.c482 = Constraint(expr=   750*m.x347 + 187.5*m.x384 >= 260000)

m.c483 = Constraint(expr=   750*m.x349 + 187.5*m.x385 >= 260000)

m.c484 = Constraint(expr=   750*m.x351 + 187.5*m.x386 >= 260000)

m.c485 = Constraint(expr=   750*m.x353 + 187.5*m.x387 >= 260000)

m.c486 = Constraint(expr=   750*m.x355 + 187.5*m.x388 >= 260000)

m.c487 = Constraint(expr=   750*m.x357 + 187.5*m.x389 >= 260000)

m.c488 = Constraint(expr=   750*m.x359 + 187.5*m.x390 >= 260000)

m.c489 = Constraint(expr=   120*m.x277 + 120*m.x285 + 120*m.x293 <= 14939.5)

m.c490 = Constraint(expr=   120*m.x278 + 120*m.x286 + 120*m.x294 <= 14939.5)

m.c491 = Constraint(expr=   120*m.x279 + 120*m.x287 + 120*m.x295 <= 14939.5)

m.c492 = Constraint(expr=   120*m.x280 + 120*m.x288 + 120*m.x296 <= 14939.5)

m.c493 = Constraint(expr=   120*m.x281 + 120*m.x289 + 120*m.x297 <= 14939.5)

m.c494 = Constraint(expr=   120*m.x282 + 120*m.x290 + 120*m.x298 <= 14939.5)

m.c495 = Constraint(expr=   120*m.x283 + 120*m.x291 + 120*m.x299 <= 14939.5)

m.c496 = Constraint(expr=   120*m.x284 + 120*m.x292 + 120*m.x300 <= 14939.5)

m.c497 = Constraint(expr=   120*m.x285 + 120*m.x293 <= 14939.5)

m.c498 = Constraint(expr=   120*m.x286 + 120*m.x294 <= 14939.5)

m.c499 = Constraint(expr=   120*m.x287 + 120*m.x295 <= 14939.5)

m.c500 = Constraint(expr=   120*m.x288 + 120*m.x296 <= 14939.5)

m.c501 = Constraint(expr=   120*m.x289 + 120*m.x297 <= 14939.5)

m.c502 = Constraint(expr=   120*m.x290 + 120*m.x298 <= 14939.5)

m.c503 = Constraint(expr=   120*m.x291 + 120*m.x299 <= 14939.5)

m.c504 = Constraint(expr=   120*m.x292 + 120*m.x300 <= 14939.5)

m.c505 = Constraint(expr=   120*m.x293 <= 14939.5)

m.c506 = Constraint(expr=   120*m.x294 <= 14939.5)

m.c507 = Constraint(expr=   120*m.x295 <= 14939.5)

m.c508 = Constraint(expr=   120*m.x296 <= 14939.5)

m.c509 = Constraint(expr=   120*m.x297 <= 14939.5)

m.c510 = Constraint(expr=   120*m.x298 <= 14939.5)

m.c511 = Constraint(expr=   120*m.x299 <= 14939.5)

m.c512 = Constraint(expr=   120*m.x300 <= 14939.5)

m.c513 = Constraint(expr= - 0.6*m.x301 - 5.67*m.x302 - 0.15*m.x361 + m.x511 == 0)

m.c514 = Constraint(expr= - 0.6*m.x303 - 5.67*m.x304 - 0.15*m.x362 + m.x512 == 0)

m.c515 = Constraint(expr= - 0.6*m.x305 - 5.67*m.x306 - 0.15*m.x363 + m.x513 == 0)

m.c516 = Constraint(expr= - 0.6*m.x307 - 5.67*m.x308 - 0.15*m.x364 + m.x514 == 0)

m.c517 = Constraint(expr= - 0.6*m.x309 - 5.67*m.x310 - 0.15*m.x365 + m.x515 == 0)

m.c518 = Constraint(expr= - 0.6*m.x311 - 5.67*m.x312 - 0.15*m.x366 + m.x516 == 0)

m.c519 = Constraint(expr= - 0.6*m.x313 - 5.67*m.x314 - 0.15*m.x367 + m.x517 == 0)

m.c520 = Constraint(expr= - 0.6*m.x315 - 5.67*m.x316 - 0.15*m.x368 + m.x518 == 0)

m.c521 = Constraint(expr= - 0.6*m.x317 - 5.67*m.x318 - 0.15*m.x369 + m.x519 == 0)

m.c522 = Constraint(expr= - 0.6*m.x319 - 5.67*m.x320 - 0.15*m.x370 + m.x520 == 0)

m.c523 = Constraint(expr= - 0.6*m.x321 - 5.67*m.x322 - 0.15*m.x371 + m.x521 == 0)

m.c524 = Constraint(expr= - 0.6*m.x323 - 5.67*m.x324 - 0.15*m.x372 + m.x522 == 0)

m.c525 = Constraint(expr= - 0.6*m.x325 - 5.67*m.x326 - 0.15*m.x373 + m.x523 == 0)

m.c526 = Constraint(expr= - 0.6*m.x327 - 5.67*m.x328 - 0.15*m.x374 + m.x524 == 0)

m.c527 = Constraint(expr= - 0.6*m.x329 - 5.67*m.x330 - 0.15*m.x375 + m.x525 == 0)

m.c528 = Constraint(expr= - 0.6*m.x331 - 5.67*m.x332 - 0.15*m.x376 + m.x526 == 0)

m.c529 = Constraint(expr= - 0.6*m.x333 - 5.67*m.x334 - 0.15*m.x377 + m.x527 == 0)

m.c530 = Constraint(expr= - 0.6*m.x335 - 5.67*m.x336 - 0.15*m.x378 + m.x528 == 0)

m.c531 = Constraint(expr= - 0.6*m.x337 - 5.67*m.x338 - 0.15*m.x379 + m.x529 == 0)

m.c532 = Constraint(expr= - 0.6*m.x339 - 5.67*m.x340 - 0.15*m.x380 + m.x530 == 0)

m.c533 = Constraint(expr= - 0.6*m.x341 - 5.67*m.x342 - 0.15*m.x381 + m.x531 == 0)

m.c534 = Constraint(expr= - 0.6*m.x343 - 5.67*m.x344 - 0.15*m.x382 + m.x532 == 0)

m.c535 = Constraint(expr= - 0.6*m.x345 - 5.67*m.x346 - 0.15*m.x383 + m.x533 == 0)

m.c536 = Constraint(expr= - 0.6*m.x347 - 5.67*m.x348 - 0.15*m.x384 + m.x534 == 0)

m.c537 = Constraint(expr= - 0.6*m.x349 - 5.67*m.x350 - 0.15*m.x385 + m.x535 == 0)

m.c538 = Constraint(expr= - 0.6*m.x351 - 5.67*m.x352 - 0.15*m.x386 + m.x536 == 0)

m.c539 = Constraint(expr= - 0.6*m.x353 - 5.67*m.x354 - 0.15*m.x387 + m.x537 == 0)

m.c540 = Constraint(expr= - 0.6*m.x355 - 5.67*m.x356 - 0.15*m.x388 + m.x538 == 0)

m.c541 = Constraint(expr= - 0.6*m.x357 - 5.67*m.x358 - 0.15*m.x389 + m.x539 == 0)

m.c542 = Constraint(expr= - 0.6*m.x359 - 5.67*m.x360 - 0.15*m.x390 + m.x540 == 0)

m.c543 = Constraint(expr= - 0.2882*m.x1 - 0.3406*m.x2 - 0.393*m.x3 - 0.4454*m.x4 - 0.4978*m.x5 - 0.5502*m.x6
                          - 0.6026*m.x7 - 0.655*m.x8 - 0.7074*m.x9 - 0.349*m.x271 - 0.02*m.x301 - 2*m.x302
                          - 0.005*m.x391 - 0.005*m.x392 - 0.005*m.x393 - 0.005*m.x394 + m.x541 == 0)

m.c544 = Constraint(expr= - 0.2882*m.x10 - 0.3406*m.x11 - 0.393*m.x12 - 0.4454*m.x13 - 0.4978*m.x14 - 0.5502*m.x15
                          - 0.6026*m.x16 - 0.655*m.x17 - 0.7074*m.x18 - 0.349*m.x272 - 0.02*m.x303 - 2*m.x304
                          - 0.005*m.x395 - 0.005*m.x396 - 0.005*m.x397 - 0.005*m.x398 + m.x542 == 0)

m.c545 = Constraint(expr= - 0.2882*m.x19 - 0.3406*m.x20 - 0.393*m.x21 - 0.4454*m.x22 - 0.4978*m.x23 - 0.5502*m.x24
                          - 0.6026*m.x25 - 0.655*m.x26 - 0.7074*m.x27 - 0.349*m.x273 - 0.02*m.x305 - 2*m.x306
                          - 0.005*m.x399 - 0.005*m.x400 - 0.005*m.x401 - 0.005*m.x402 + m.x543 == 0)

m.c546 = Constraint(expr= - 0.2882*m.x28 - 0.3406*m.x29 - 0.393*m.x30 - 0.4454*m.x31 - 0.4978*m.x32 - 0.5502*m.x33
                          - 0.6026*m.x34 - 0.655*m.x35 - 0.7074*m.x36 - 0.349*m.x274 - 0.02*m.x307 - 2*m.x308
                          - 0.005*m.x403 - 0.005*m.x404 - 0.005*m.x405 - 0.005*m.x406 + m.x544 == 0)

m.c547 = Constraint(expr= - 0.2882*m.x37 - 0.3406*m.x38 - 0.393*m.x39 - 0.4454*m.x40 - 0.4978*m.x41 - 0.5502*m.x42
                          - 0.6026*m.x43 - 0.655*m.x44 - 0.7074*m.x45 - 0.349*m.x275 - 0.02*m.x309 - 2*m.x310
                          - 0.005*m.x407 - 0.005*m.x408 - 0.005*m.x409 - 0.005*m.x410 + m.x545 == 0)

m.c548 = Constraint(expr= - 0.2882*m.x46 - 0.3406*m.x47 - 0.393*m.x48 - 0.4454*m.x49 - 0.4978*m.x50 - 0.5502*m.x51
                          - 0.6026*m.x52 - 0.655*m.x53 - 0.7074*m.x54 - 0.349*m.x276 - 0.02*m.x311 - 2*m.x312
                          - 0.005*m.x411 - 0.005*m.x412 - 0.005*m.x413 - 0.005*m.x414 + m.x546 == 0)

m.c549 = Constraint(expr= - 0.2882*m.x55 - 0.3406*m.x56 - 0.393*m.x57 - 0.4454*m.x58 - 0.4978*m.x59 - 0.5502*m.x60
                          - 0.6026*m.x61 - 0.655*m.x62 - 0.7074*m.x63 - 0.349*m.x277 - 0.02*m.x313 - 2*m.x314
                          - 0.005*m.x415 - 0.005*m.x416 - 0.005*m.x417 - 0.005*m.x418 + m.x547 == 0)

m.c550 = Constraint(expr= - 0.2882*m.x64 - 0.3406*m.x65 - 0.393*m.x66 - 0.4454*m.x67 - 0.4978*m.x68 - 0.5502*m.x69
                          - 0.6026*m.x70 - 0.655*m.x71 - 0.7074*m.x72 - 0.349*m.x278 - 0.02*m.x315 - 2*m.x316
                          - 0.005*m.x419 - 0.005*m.x420 - 0.005*m.x421 - 0.005*m.x422 + m.x548 == 0)

m.c551 = Constraint(expr= - 0.2882*m.x73 - 0.3406*m.x74 - 0.393*m.x75 - 0.4454*m.x76 - 0.4978*m.x77 - 0.5502*m.x78
                          - 0.6026*m.x79 - 0.655*m.x80 - 0.7074*m.x81 - 0.349*m.x279 - 0.02*m.x317 - 2*m.x318
                          - 0.005*m.x423 - 0.005*m.x424 - 0.005*m.x425 - 0.005*m.x426 + m.x549 == 0)

m.c552 = Constraint(expr= - 0.2882*m.x82 - 0.3406*m.x83 - 0.393*m.x84 - 0.4454*m.x85 - 0.4978*m.x86 - 0.5502*m.x87
                          - 0.6026*m.x88 - 0.655*m.x89 - 0.7074*m.x90 - 0.349*m.x280 - 0.02*m.x319 - 2*m.x320
                          - 0.005*m.x427 - 0.005*m.x428 - 0.005*m.x429 - 0.005*m.x430 + m.x550 == 0)

m.c553 = Constraint(expr= - 0.2882*m.x91 - 0.3406*m.x92 - 0.393*m.x93 - 0.4454*m.x94 - 0.4978*m.x95 - 0.5502*m.x96
                          - 0.6026*m.x97 - 0.655*m.x98 - 0.7074*m.x99 - 0.349*m.x281 - 0.02*m.x321 - 2*m.x322
                          - 0.005*m.x431 - 0.005*m.x432 - 0.005*m.x433 - 0.005*m.x434 + m.x551 == 0)

m.c554 = Constraint(expr= - 0.2882*m.x100 - 0.3406*m.x101 - 0.393*m.x102 - 0.4454*m.x103 - 0.4978*m.x104 - 0.5502*m.x105
                          - 0.6026*m.x106 - 0.655*m.x107 - 0.7074*m.x108 - 0.349*m.x282 - 0.02*m.x323 - 2*m.x324
                          - 0.005*m.x435 - 0.005*m.x436 - 0.005*m.x437 - 0.005*m.x438 + m.x552 == 0)

m.c555 = Constraint(expr= - 0.2882*m.x109 - 0.3406*m.x110 - 0.393*m.x111 - 0.4454*m.x112 - 0.4978*m.x113 - 0.5502*m.x114
                          - 0.6026*m.x115 - 0.655*m.x116 - 0.7074*m.x117 - 0.349*m.x283 - 0.02*m.x325 - 2*m.x326
                          - 0.005*m.x439 - 0.005*m.x440 - 0.005*m.x441 - 0.005*m.x442 + m.x553 == 0)

m.c556 = Constraint(expr= - 0.2882*m.x118 - 0.3406*m.x119 - 0.393*m.x120 - 0.4454*m.x121 - 0.4978*m.x122 - 0.5502*m.x123
                          - 0.6026*m.x124 - 0.655*m.x125 - 0.7074*m.x126 - 0.349*m.x284 - 0.02*m.x327 - 2*m.x328
                          - 0.005*m.x443 - 0.005*m.x444 - 0.005*m.x445 - 0.005*m.x446 + m.x554 == 0)

m.c557 = Constraint(expr= - 0.2882*m.x127 - 0.3406*m.x128 - 0.393*m.x129 - 0.4454*m.x130 - 0.4978*m.x131 - 0.5502*m.x132
                          - 0.6026*m.x133 - 0.655*m.x134 - 0.7074*m.x135 - 0.349*m.x285 - 0.02*m.x329 - 2*m.x330
                          - 0.005*m.x447 - 0.005*m.x448 - 0.005*m.x449 - 0.005*m.x450 + m.x555 == 0)

m.c558 = Constraint(expr= - 0.2882*m.x136 - 0.3406*m.x137 - 0.393*m.x138 - 0.4454*m.x139 - 0.4978*m.x140 - 0.5502*m.x141
                          - 0.6026*m.x142 - 0.655*m.x143 - 0.7074*m.x144 - 0.349*m.x286 - 0.02*m.x331 - 2*m.x332
                          - 0.005*m.x451 - 0.005*m.x452 - 0.005*m.x453 - 0.005*m.x454 + m.x556 == 0)

m.c559 = Constraint(expr= - 0.2882*m.x145 - 0.3406*m.x146 - 0.393*m.x147 - 0.4454*m.x148 - 0.4978*m.x149 - 0.5502*m.x150
                          - 0.6026*m.x151 - 0.655*m.x152 - 0.7074*m.x153 - 0.349*m.x287 - 0.02*m.x333 - 2*m.x334
                          - 0.005*m.x455 - 0.005*m.x456 - 0.005*m.x457 - 0.005*m.x458 + m.x557 == 0)

m.c560 = Constraint(expr= - 0.2882*m.x154 - 0.3406*m.x155 - 0.393*m.x156 - 0.4454*m.x157 - 0.4978*m.x158 - 0.5502*m.x159
                          - 0.6026*m.x160 - 0.655*m.x161 - 0.7074*m.x162 - 0.349*m.x288 - 0.02*m.x335 - 2*m.x336
                          - 0.005*m.x459 - 0.005*m.x460 - 0.005*m.x461 - 0.005*m.x462 + m.x558 == 0)

m.c561 = Constraint(expr= - 0.2882*m.x163 - 0.3406*m.x164 - 0.393*m.x165 - 0.4454*m.x166 - 0.4978*m.x167 - 0.5502*m.x168
                          - 0.6026*m.x169 - 0.655*m.x170 - 0.7074*m.x171 - 0.349*m.x289 - 0.02*m.x337 - 2*m.x338
                          - 0.005*m.x463 - 0.005*m.x464 - 0.005*m.x465 - 0.005*m.x466 + m.x559 == 0)

m.c562 = Constraint(expr= - 0.2882*m.x172 - 0.3406*m.x173 - 0.393*m.x174 - 0.4454*m.x175 - 0.4978*m.x176 - 0.5502*m.x177
                          - 0.6026*m.x178 - 0.655*m.x179 - 0.7074*m.x180 - 0.349*m.x290 - 0.02*m.x339 - 2*m.x340
                          - 0.005*m.x467 - 0.005*m.x468 - 0.005*m.x469 - 0.005*m.x470 + m.x560 == 0)

m.c563 = Constraint(expr= - 0.2882*m.x181 - 0.3406*m.x182 - 0.393*m.x183 - 0.4454*m.x184 - 0.4978*m.x185 - 0.5502*m.x186
                          - 0.6026*m.x187 - 0.655*m.x188 - 0.7074*m.x189 - 0.349*m.x291 - 0.02*m.x341 - 2*m.x342
                          - 0.005*m.x471 - 0.005*m.x472 - 0.005*m.x473 - 0.005*m.x474 + m.x561 == 0)

m.c564 = Constraint(expr= - 0.2882*m.x190 - 0.3406*m.x191 - 0.393*m.x192 - 0.4454*m.x193 - 0.4978*m.x194 - 0.5502*m.x195
                          - 0.6026*m.x196 - 0.655*m.x197 - 0.7074*m.x198 - 0.349*m.x292 - 0.02*m.x343 - 2*m.x344
                          - 0.005*m.x475 - 0.005*m.x476 - 0.005*m.x477 - 0.005*m.x478 + m.x562 == 0)

m.c565 = Constraint(expr= - 0.2882*m.x199 - 0.3406*m.x200 - 0.393*m.x201 - 0.4454*m.x202 - 0.4978*m.x203 - 0.5502*m.x204
                          - 0.6026*m.x205 - 0.655*m.x206 - 0.7074*m.x207 - 0.349*m.x293 - 0.02*m.x345 - 2*m.x346
                          - 0.005*m.x479 - 0.005*m.x480 - 0.005*m.x481 - 0.005*m.x482 + m.x563 == 0)

m.c566 = Constraint(expr= - 0.2882*m.x208 - 0.3406*m.x209 - 0.393*m.x210 - 0.4454*m.x211 - 0.4978*m.x212 - 0.5502*m.x213
                          - 0.6026*m.x214 - 0.655*m.x215 - 0.7074*m.x216 - 0.349*m.x294 - 0.02*m.x347 - 2*m.x348
                          - 0.005*m.x483 - 0.005*m.x484 - 0.005*m.x485 - 0.005*m.x486 + m.x564 == 0)

m.c567 = Constraint(expr= - 0.2882*m.x217 - 0.3406*m.x218 - 0.393*m.x219 - 0.4454*m.x220 - 0.4978*m.x221 - 0.5502*m.x222
                          - 0.6026*m.x223 - 0.655*m.x224 - 0.7074*m.x225 - 0.349*m.x295 - 0.02*m.x349 - 2*m.x350
                          - 0.005*m.x487 - 0.005*m.x488 - 0.005*m.x489 - 0.005*m.x490 + m.x565 == 0)

m.c568 = Constraint(expr= - 0.2882*m.x226 - 0.3406*m.x227 - 0.393*m.x228 - 0.4454*m.x229 - 0.4978*m.x230 - 0.5502*m.x231
                          - 0.6026*m.x232 - 0.655*m.x233 - 0.7074*m.x234 - 0.349*m.x296 - 0.02*m.x351 - 2*m.x352
                          - 0.005*m.x491 - 0.005*m.x492 - 0.005*m.x493 - 0.005*m.x494 + m.x566 == 0)

m.c569 = Constraint(expr= - 0.2882*m.x235 - 0.3406*m.x236 - 0.393*m.x237 - 0.4454*m.x238 - 0.4978*m.x239 - 0.5502*m.x240
                          - 0.6026*m.x241 - 0.655*m.x242 - 0.7074*m.x243 - 0.349*m.x297 - 0.02*m.x353 - 2*m.x354
                          - 0.005*m.x495 - 0.005*m.x496 - 0.005*m.x497 - 0.005*m.x498 + m.x567 == 0)

m.c570 = Constraint(expr= - 0.2882*m.x244 - 0.3406*m.x245 - 0.393*m.x246 - 0.4454*m.x247 - 0.4978*m.x248 - 0.5502*m.x249
                          - 0.6026*m.x250 - 0.655*m.x251 - 0.7074*m.x252 - 0.349*m.x298 - 0.02*m.x355 - 2*m.x356
                          - 0.005*m.x499 - 0.005*m.x500 - 0.005*m.x501 - 0.005*m.x502 + m.x568 == 0)

m.c571 = Constraint(expr= - 0.2882*m.x253 - 0.3406*m.x254 - 0.393*m.x255 - 0.4454*m.x256 - 0.4978*m.x257 - 0.5502*m.x258
                          - 0.6026*m.x259 - 0.655*m.x260 - 0.7074*m.x261 - 0.349*m.x299 - 0.02*m.x357 - 2*m.x358
                          - 0.005*m.x503 - 0.005*m.x504 - 0.005*m.x505 - 0.005*m.x506 + m.x569 == 0)

m.c572 = Constraint(expr= - 0.2882*m.x262 - 0.3406*m.x263 - 0.393*m.x264 - 0.4454*m.x265 - 0.4978*m.x266 - 0.5502*m.x267
                          - 0.6026*m.x268 - 0.655*m.x269 - 0.7074*m.x270 - 0.349*m.x300 - 0.02*m.x359 - 2*m.x360
                          - 0.005*m.x507 - 0.005*m.x508 - 0.005*m.x509 - 0.005*m.x510 + m.x570 == 0)
