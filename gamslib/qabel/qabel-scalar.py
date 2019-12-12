#  QCP written by GAMS Convert at 12/13/18 11:23:27
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        149      149        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        299      299        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1039      741      298        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(387.9,387.9),initialize=387.9)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x14 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x15 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x16 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x17 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x25 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x26 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x27 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x28 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x29 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x30 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x40 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x51 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x52 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x53 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x54 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x57 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x58 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x61 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x62 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x63 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x64 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x65 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x66 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x67 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x68 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x69 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x70 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x71 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x72 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x73 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x74 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x75 = Var(within=Reals,bounds=(None,None),initialize=387.9)
m.x76 = Var(within=Reals,bounds=(85.3,85.3),initialize=85.3)
m.x77 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x78 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x79 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x80 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x81 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x82 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x83 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x84 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x85 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x86 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x87 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x88 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x89 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x90 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x91 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x92 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x93 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x94 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x95 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x96 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x97 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x98 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x99 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x100 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x101 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x102 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x103 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x104 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x106 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x107 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x108 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x109 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x110 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x111 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x112 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x113 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x114 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x115 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x116 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x117 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x118 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x119 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x120 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x121 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x122 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x123 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x124 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x125 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x126 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x127 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x128 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x129 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x130 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x131 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x132 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x133 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x134 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x135 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x136 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x137 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x138 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x139 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x140 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x141 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x142 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x143 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x144 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x145 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x146 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x147 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x148 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x149 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x150 = Var(within=Reals,bounds=(None,None),initialize=85.3)
m.x151 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x152 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x153 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x154 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x155 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x156 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x157 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x158 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x159 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x160 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x161 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x162 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x163 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x164 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x165 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x166 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x167 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x168 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x169 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x170 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x171 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x172 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x173 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x174 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x175 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x176 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x177 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x178 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x179 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x180 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x181 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x182 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x183 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x184 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x185 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x186 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x187 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x188 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x189 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x190 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x191 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x192 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x193 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x194 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x195 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x196 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x197 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x198 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x199 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x200 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x201 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x202 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x203 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x204 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x205 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x206 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x207 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x208 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x209 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x210 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x211 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x212 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x213 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x214 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x215 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x216 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x217 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x218 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x219 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x220 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x221 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x222 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x223 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x224 = Var(within=Reals,bounds=(None,None),initialize=110.5)
m.x225 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x226 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x227 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x228 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x229 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x230 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x231 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x232 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x233 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x234 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x235 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x236 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x237 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x238 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x239 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x240 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x241 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x242 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x243 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x244 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x245 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x246 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x247 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x248 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x249 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x250 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x251 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x252 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x253 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x254 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x255 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x256 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x257 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x258 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x259 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x260 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x261 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x262 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x263 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x264 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x265 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x266 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x267 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x268 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x269 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x270 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x271 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x272 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x273 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x274 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x275 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x276 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x277 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x278 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x279 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x280 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x281 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x282 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x283 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x284 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x285 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x286 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x287 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x288 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x289 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x290 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x291 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x292 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x293 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x294 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x295 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x296 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x297 = Var(within=Reals,bounds=(None,None),initialize=147.1)
m.x298 = Var(within=Reals,bounds=(None,None),initialize=147.1)

m.obj = Objective(expr=0.5*((-24.24375 + 0.0625*m.x1)*(-387.9 + m.x1) + (-85.3 + m.x76)*(-85.3 + m.x76) + (-24.425578125
                        + 0.0625*m.x2)*(-390.80925 + m.x2) + (-85.93975 + m.x77)*(-85.93975 + m.x77) + (-
                       24.6087699609375 + 0.0625*m.x3)*(-393.740319375 + m.x3) + (-86.584298125 + m.x78)*(-86.584298125
                        + m.x78) + (-24.7933357356445 + 0.0625*m.x4)*(-396.693371770313 + m.x4) + (-87.2336803609375 + 
                       m.x79)*(-87.2336803609375 + m.x79) + (-24.9792857536619 + 0.0625*m.x5)*(-399.66857205859 + m.x5)
                        + (-87.8879329636446 + m.x80)*(-87.8879329636446 + m.x80) + (-25.1666303968143 + 0.0625*m.x6)*(-
                       402.666086349029 + m.x6) + (-88.5470924608719 + m.x81)*(-88.5470924608719 + m.x81) + (-
                       25.3553801247905 + 0.0625*m.x7)*(-405.686081996647 + m.x7) + (-89.2111956543284 + m.x82)*(-
                       89.2111956543284 + m.x82) + (-25.5455454757264 + 0.0625*m.x8)*(-408.728727611622 + m.x8) + (-
                       89.8802796217359 + m.x83)*(-89.8802796217359 + m.x83) + (-25.7371370667943 + 0.0625*m.x9)*(-
                       411.794193068709 + m.x9) + (-90.554381718899 + m.x84)*(-90.554381718899 + m.x84) + (-
                       25.9301655947953 + 0.0625*m.x10)*(-414.882649516725 + m.x10) + (-91.2335395817907 + m.x85)*(-
                       91.2335395817907 + m.x85) + (-26.1246418367563 + 0.0625*m.x11)*(-417.9942693881 + m.x11) + (-
                       91.9177911286541 + m.x86)*(-91.9177911286541 + m.x86) + (-26.3205766505319 + 0.0625*m.x12)*(-
                       421.129226408511 + m.x12) + (-92.6071745621191 + m.x87)*(-92.6071745621191 + m.x87) + (-
                       26.5179809754109 + 0.0625*m.x13)*(-424.287695606575 + m.x13) + (-93.301728371335 + m.x88)*(-
                       93.301728371335 + m.x88) + (-26.7168658327265 + 0.0625*m.x14)*(-427.469853323624 + m.x14) + (-
                       94.00149133412 + m.x89)*(-94.00149133412 + m.x89) + (-26.917242326472 + 0.0625*m.x15)*(-
                       430.675877223551 + m.x15) + (-94.7065025191259 + m.x90)*(-94.7065025191259 + m.x90) + (-
                       27.1191216439205 + 0.0625*m.x16)*(-433.905946302728 + m.x16) + (-95.4168012880193 + m.x91)*(-
                       95.4168012880193 + m.x91) + (-27.3225150562499 + 0.0625*m.x17)*(-437.160240899998 + m.x17) + (-
                       96.1324272976795 + m.x92)*(-96.1324272976795 + m.x92) + (-27.5274339191718 + 0.0625*m.x18)*(-
                       440.438942706748 + m.x18) + (-96.8534205024121 + m.x93)*(-96.8534205024121 + m.x93) + (-
                       27.7338896735656 + 0.0625*m.x19)*(-443.742234777049 + m.x19) + (-97.5798211561802 + m.x94)*(-
                       97.5798211561802 + m.x94) + (-27.9418938461173 + 0.0625*m.x20)*(-447.070301537877 + m.x20) + (-
                       98.3116698148515 + m.x95)*(-98.3116698148515 + m.x95) + (-28.1514580499632 + 0.0625*m.x21)*(-
                       450.423328799411 + m.x21) + (-99.0490073384629 + m.x96)*(-99.0490073384629 + m.x96) + (-
                       28.3625939853379 + 0.0625*m.x22)*(-453.801503765407 + m.x22) + (-99.7918748935014 + m.x97)*(-
                       99.7918748935014 + m.x97) + (-28.575313440228 + 0.0625*m.x23)*(-457.205015043647 + m.x23) + (-
                       100.540313955203 + m.x98)*(-100.540313955203 + m.x98) + (-28.7896282910297 + 0.0625*m.x24)*(-
                       460.634052656475 + m.x24) + (-101.294366309867 + m.x99)*(-101.294366309867 + m.x99) + (-
                       29.0055505032124 + 0.0625*m.x25)*(-464.088808051398 + m.x25) + (-102.054074057191 + m.x100)*(-
                       102.054074057191 + m.x100) + (-29.2230921319865 + 0.0625*m.x26)*(-467.569474111784 + m.x26) + (-
                       102.81947961262 + m.x101)*(-102.81947961262 + m.x101) + (-29.4422653229764 + 0.0625*m.x27)*(-
                       471.076245167622 + m.x27) + (-103.590625709714 + m.x102)*(-103.590625709714 + m.x102) + (-
                       29.6630823128987 + 0.0625*m.x28)*(-474.60931700638 + m.x28) + (-104.367555402537 + m.x103)*(-
                       104.367555402537 + m.x103) + (-29.8855554302455 + 0.0625*m.x29)*(-478.168886883927 + m.x29) + (-
                       105.150312068056 + m.x104)*(-105.150312068056 + m.x104) + (-30.1096970959723 + 0.0625*m.x30)*(-
                       481.755153535557 + m.x30) + (-105.938939408567 + m.x105)*(-105.938939408567 + m.x105) + (-
                       30.3355198241921 + 0.0625*m.x31)*(-485.368317187074 + m.x31) + (-106.733481454131 + m.x106)*(-
                       106.733481454131 + m.x106) + (-30.5630362228736 + 0.0625*m.x32)*(-489.008579565977 + m.x32) + (-
                       107.533982565037 + m.x107)*(-107.533982565037 + m.x107) + (-30.7922589945451 + 0.0625*m.x33)*(-
                       492.676143912722 + m.x33) + (-108.340487434275 + m.x108)*(-108.340487434275 + m.x108) + (-
                       31.0232009370042 + 0.0625*m.x34)*(-496.371214992067 + m.x34) + (-109.153041090032 + m.x109)*(-
                       109.153041090032 + m.x109) + (-31.2558749440317 + 0.0625*m.x35)*(-500.093999104508 + m.x35) + (-
                       109.971688898207 + m.x110)*(-109.971688898207 + m.x110) + (-31.490294006112 + 0.0625*m.x36)*(-
                       503.844704097791 + m.x36) + (-110.796476564944 + m.x111)*(-110.796476564944 + m.x111) + (-
                       31.7264712111578 + 0.0625*m.x37)*(-507.623539378525 + m.x37) + (-111.627450139181 + m.x112)*(-
                       111.627450139181 + m.x112) + (-31.9644197452415 + 0.0625*m.x38)*(-511.430715923864 + m.x38) + (-
                       112.464656015225 + m.x113)*(-112.464656015225 + m.x113) + (-32.2041528933308 + 0.0625*m.x39)*(-
                       515.266446293293 + m.x39) + (-113.308140935339 + m.x114)*(-113.308140935339 + m.x114) + (-
                       32.4456840400308 + 0.0625*m.x40)*(-519.130944640493 + m.x40) + (-114.157951992354 + m.x115)*(-
                       114.157951992354 + m.x115) + (-32.689026670331 + 0.0625*m.x41)*(-523.024426725296 + m.x41) + (-
                       115.014136632296 + m.x116)*(-115.014136632296 + m.x116) + (-32.9341943703585 + 0.0625*m.x42)*(-
                       526.947109925736 + m.x42) + (-115.876742657039 + m.x117)*(-115.876742657039 + m.x117) + (-
                       33.1812008281362 + 0.0625*m.x43)*(-530.899213250179 + m.x43) + (-116.745818226966 + m.x118)*(-
                       116.745818226966 + m.x118) + (-33.4300598343472 + 0.0625*m.x44)*(-534.880957349556 + m.x44) + (-
                       117.621411863669 + m.x119)*(-117.621411863669 + m.x119) + (-33.6807852831048 + 0.0625*m.x45)*(-
                       538.892564529677 + m.x45) + (-118.503572452646 + m.x120)*(-118.503572452646 + m.x120) + (-
                       33.9333911727281 + 0.0625*m.x46)*(-542.93425876365 + m.x46) + (-119.392349246041 + m.x121)*(-
                       119.392349246041 + m.x121) + (-34.1878916065236 + 0.0625*m.x47)*(-547.006265704377 + m.x47) + (-
                       120.287791865386 + m.x122)*(-120.287791865386 + m.x122) + (-34.4443007935725 + 0.0625*m.x48)*(-
                       551.10881269716 + m.x48) + (-121.189950304377 + m.x123)*(-121.189950304377 + m.x123) + (-
                       34.7026330495243 + 0.0625*m.x49)*(-555.242128792389 + m.x49) + (-122.09887493166 + m.x124)*(-
                       122.09887493166 + m.x124) + (-34.9629027973957 + 0.0625*m.x50)*(-559.406444758332 + m.x50) + (-
                       123.014616493647 + m.x125)*(-123.014616493647 + m.x125) + (-35.2251245683762 + 0.0625*m.x51)*(-
                       563.60199309402 + m.x51) + (-123.937226117349 + m.x126)*(-123.937226117349 + m.x126) + (-
                       35.489313002639 + 0.0625*m.x52)*(-567.829008042225 + m.x52) + (-124.86675531323 + m.x127)*(-
                       124.86675531323 + m.x127) + (-35.7554828501588 + 0.0625*m.x53)*(-572.087725602541 + m.x53) + (-
                       125.803255978079 + m.x128)*(-125.803255978079 + m.x128) + (-36.023648971535 + 0.0625*m.x54)*(-
                       576.378383544561 + m.x54) + (-126.746780397914 + m.x129)*(-126.746780397914 + m.x129) + (-
                       36.2938263388216 + 0.0625*m.x55)*(-580.701221421145 + m.x55) + (-127.697381250899 + m.x130)*(-
                       127.697381250899 + m.x130) + (-36.5660300363627 + 0.0625*m.x56)*(-585.056480581803 + m.x56) + (-
                       128.655111610281 + m.x131)*(-128.655111610281 + m.x131) + (-36.8402752616354 + 0.0625*m.x57)*(-
                       589.444404186167 + m.x57) + (-129.620024947358 + m.x132)*(-129.620024947358 + m.x132) + (-
                       37.1165773260977 + 0.0625*m.x58)*(-593.865237217563 + m.x58) + (-130.592175134463 + m.x133)*(-
                       130.592175134463 + m.x133) + (-37.3949516560434 + 0.0625*m.x59)*(-598.319226496695 + m.x59) + (-
                       131.571616447971 + m.x134)*(-131.571616447971 + m.x134) + (-37.6754137934638 + 0.0625*m.x60)*(-
                       602.80662069542 + m.x60) + (-132.558403571331 + m.x135)*(-132.558403571331 + m.x135) + (-
                       37.9579793969148 + 0.0625*m.x61)*(-607.327670350636 + m.x61) + (-133.552591598116 + m.x136)*(-
                       133.552591598116 + m.x136) + (-38.2426642423916 + 0.0625*m.x62)*(-611.882627878266 + m.x62) + (-
                       134.554236035102 + m.x137)*(-134.554236035102 + m.x137) + (-38.5294842242096 + 0.0625*m.x63)*(-
                       616.471747587353 + m.x63) + (-135.563392805365 + m.x138)*(-135.563392805365 + m.x138) + (-
                       38.8184553558911 + 0.0625*m.x64)*(-621.095285694258 + m.x64) + (-136.580118251406 + m.x139)*(-
                       136.580118251406 + m.x139) + (-39.1095937710603 + 0.0625*m.x65)*(-625.753500336965 + m.x65) + (-
                       137.604469138291 + m.x140)*(-137.604469138291 + m.x140) + (-39.4029157243433 + 0.0625*m.x66)*(-
                       630.446651589492 + m.x66) + (-138.636502656828 + m.x141)*(-138.636502656828 + m.x141) + (-
                       39.6984375922759 + 0.0625*m.x67)*(-635.175001476414 + m.x67) + (-139.676276426755 + m.x142)*(-
                       139.676276426755 + m.x142) + (-39.9961758742179 + 0.0625*m.x68)*(-639.938813987487 + m.x68) + (-
                       140.723848499955 + m.x143)*(-140.723848499955 + m.x143) + (-40.2961471932746 + 0.0625*m.x69)*(-
                       644.738355092393 + m.x69) + (-141.779277363705 + m.x144)*(-141.779277363705 + m.x144) + (-
                       40.5983682972241 + 0.0625*m.x70)*(-649.573892755586 + m.x70) + (-142.842621943933 + m.x145)*(-
                       142.842621943933 + m.x145) + (-40.9028560594533 + 0.0625*m.x71)*(-654.445696951253 + m.x71) + (-
                       143.913941608512 + m.x146)*(-143.913941608512 + m.x146) + (-41.2096274798992 + 0.0625*m.x72)*(-
                       659.354039678387 + m.x72) + (-144.993296170576 + m.x147)*(-144.993296170576 + m.x147) + (-
                       41.5186996859985 + 0.0625*m.x73)*(-664.299194975975 + m.x73) + (-146.080745891855 + m.x148)*(-
                       146.080745891855 + m.x148) + (-41.8300899336434 + 0.0625*m.x74)*(-669.281438938295 + m.x74) + (-
                       147.176351486044 + m.x149)*(-147.176351486044 + m.x149) + (-4214.38156081458 + 6.25*m.x75)*(-
                       674.301049730332 + m.x75) + (-14828.017412219 + 100*m.x150)*(-148.28017412219 + m.x150)) + 0.5*((
                       -110.5 + m.x151)*(-110.5 + m.x151) + (-65.3124 + 0.444*m.x225)*(-147.1 + m.x225) + (-111.32875 + 
                       m.x152)*(-111.32875 + m.x152) + (-65.802243 + 0.444*m.x226)*(-148.20325 + m.x226) + (-
                       112.163715625 + m.x153)*(-112.163715625 + m.x153) + (-66.2957598225 + 0.444*m.x227)*(-
                       149.314774375 + m.x227) + (-113.004943492188 + m.x154)*(-113.004943492188 + m.x154) + (-
                       66.7929780211688 + 0.444*m.x228)*(-150.434635182813 + m.x228) + (-113.852480568379 + m.x155)*(-
                       113.852480568379 + m.x155) + (-67.2939253563275 + 0.444*m.x229)*(-151.562894946684 + m.x229) + (-
                       114.706374172642 + m.x156)*(-114.706374172642 + m.x156) + (-67.7986297965 + 0.444*m.x230)*(-
                       152.699616658784 + m.x230) + (-115.566671978937 + m.x157)*(-115.566671978937 + m.x157) + (-
                       68.3071195199738 + 0.444*m.x231)*(-153.844863783725 + m.x231) + (-116.433422018779 + m.x158)*(-
                       116.433422018779 + m.x158) + (-68.8194229163736 + 0.444*m.x232)*(-154.998700262103 + m.x232) + (-
                       117.30667268392 + m.x159)*(-117.30667268392 + m.x159) + (-69.3355685882464 + 0.444*m.x233)*(-
                       156.161190514068 + m.x233) + (-118.186472729049 + m.x160)*(-118.186472729049 + m.x160) + (-
                       69.8555853526582 + 0.444*m.x234)*(-157.332399442924 + m.x234) + (-119.072871274517 + m.x161)*(-
                       119.072871274517 + m.x161) + (-70.3795022428032 + 0.444*m.x235)*(-158.512392438746 + m.x235) + (-
                       119.965917809076 + m.x162)*(-119.965917809076 + m.x162) + (-70.9073485096242 + 0.444*m.x236)*(-
                       159.701235382036 + m.x236) + (-120.865662192644 + m.x163)*(-120.865662192644 + m.x163) + (-
                       71.4391536234464 + 0.444*m.x237)*(-160.898994647402 + m.x237) + (-121.772154659089 + m.x164)*(-
                       121.772154659089 + m.x164) + (-71.9749472756222 + 0.444*m.x238)*(-162.105737107257 + m.x238) + (-
                       122.685445819032 + m.x165)*(-122.685445819032 + m.x165) + (-72.5147593801894 + 0.444*m.x239)*(-
                       163.321530135562 + m.x239) + (-123.605586662675 + m.x166)*(-123.605586662675 + m.x166) + (-
                       73.0586200755409 + 0.444*m.x240)*(-164.546441611579 + m.x240) + (-124.532628562645 + m.x167)*(-
                       124.532628562645 + m.x167) + (-73.6065597261074 + 0.444*m.x241)*(-165.780539923665 + m.x241) + (-
                       125.466623276864 + m.x168)*(-125.466623276864 + m.x168) + (-74.1586089240532 + 0.444*m.x242)*(-
                       167.023893973093 + m.x242) + (-126.407622951441 + m.x169)*(-126.407622951441 + m.x169) + (-
                       74.7147984909836 + 0.444*m.x243)*(-168.276573177891 + m.x243) + (-127.355680123577 + m.x170)*(-
                       127.355680123577 + m.x170) + (-75.275159479666 + 0.444*m.x244)*(-169.538647476725 + m.x244) + (-
                       128.310847724504 + m.x171)*(-128.310847724504 + m.x171) + (-75.8397231757635 + 0.444*m.x245)*(-
                       170.810187332801 + m.x245) + (-129.273179082437 + m.x172)*(-129.273179082437 + m.x172) + (-
                       76.4085210995817 + 0.444*m.x246)*(-172.091263737797 + m.x246) + (-130.242727925556 + m.x173)*(-
                       130.242727925556 + m.x173) + (-76.9815850078286 + 0.444*m.x247)*(-173.38194821583 + m.x247) + (-
                       131.219548384997 + m.x174)*(-131.219548384997 + m.x174) + (-77.5589468953873 + 0.444*m.x248)*(-
                       174.682312827449 + m.x248) + (-132.203694997885 + m.x175)*(-132.203694997885 + m.x175) + (-
                       78.1406389971027 + 0.444*m.x249)*(-175.992430173655 + m.x249) + (-133.195222710369 + m.x176)*(-
                       133.195222710369 + m.x176) + (-78.726693789581 + 0.444*m.x250)*(-177.312373399957 + m.x250) + (-
                       134.194186880697 + m.x177)*(-134.194186880697 + m.x177) + (-79.3171439930029 + 0.444*m.x251)*(-
                       178.642216200457 + m.x251) + (-135.200643282302 + m.x178)*(-135.200643282302 + m.x178) + (-
                       79.9120225729504 + 0.444*m.x252)*(-179.98203282196 + m.x252) + (-136.214648106919 + m.x179)*(-
                       136.214648106919 + m.x179) + (-80.5113627422476 + 0.444*m.x253)*(-181.331898068125 + m.x253) + (-
                       137.236257967721 + m.x180)*(-137.236257967721 + m.x180) + (-81.1151979628144 + 0.444*m.x254)*(-
                       182.691887303636 + m.x254) + (-138.265529902479 + m.x181)*(-138.265529902479 + m.x181) + (-
                       81.7235619475355 + 0.444*m.x255)*(-184.062076458413 + m.x255) + (-139.302521376748 + m.x182)*(-
                       139.302521376748 + m.x182) + (-82.3364886621421 + 0.444*m.x256)*(-185.442542031852 + m.x256) + (-
                       140.347290287073 + m.x183)*(-140.347290287073 + m.x183) + (-82.9540123271081 + 0.444*m.x257)*(-
                       186.83336109709 + m.x257) + (-141.399894964226 + m.x184)*(-141.399894964226 + m.x184) + (-
                       83.5761674195614 + 0.444*m.x258)*(-188.234611305319 + m.x258) + (-142.460394176458 + m.x185)*(-
                       142.460394176458 + m.x185) + (-84.2029886752082 + 0.444*m.x259)*(-189.646370890108 + m.x259) + (-
                       143.528847132782 + m.x186)*(-143.528847132782 + m.x186) + (-84.8345110902722 + 0.444*m.x260)*(-
                       191.068718671784 + m.x260) + (-144.605313486277 + m.x187)*(-144.605313486277 + m.x187) + (-
                       85.4707699234493 + 0.444*m.x261)*(-192.501734061823 + m.x261) + (-145.689853337424 + m.x188)*(-
                       145.689853337424 + m.x188) + (-86.1118006978751 + 0.444*m.x262)*(-193.945497067286 + m.x262) + (-
                       146.782527237455 + m.x189)*(-146.782527237455 + m.x189) + (-86.7576392031092 + 0.444*m.x263)*(-
                       195.400088295291 + m.x263) + (-147.883396191736 + m.x190)*(-147.883396191736 + m.x190) + (-
                       87.4083214971325 + 0.444*m.x264)*(-196.865588957506 + m.x264) + (-148.992521663174 + m.x191)*(-
                       148.992521663174 + m.x191) + (-88.063883908361 + 0.444*m.x265)*(-198.342080874687 + m.x265) + (-
                       150.109965575648 + m.x192)*(-150.109965575648 + m.x192) + (-88.7243630376738 + 0.444*m.x266)*(-
                       199.829646481247 + m.x266) + (-151.235790317465 + m.x193)*(-151.235790317465 + m.x193) + (-
                       89.3897957604563 + 0.444*m.x267)*(-201.328368829857 + m.x267) + (-152.370058744846 + m.x194)*(-
                       152.370058744846 + m.x194) + (-90.0602192286597 + 0.444*m.x268)*(-202.838331596081 + m.x268) + (-
                       153.512834185433 + m.x195)*(-153.512834185433 + m.x195) + (-90.7356708728747 + 0.444*m.x269)*(-
                       204.359619083051 + m.x269) + (-154.664180441823 + m.x196)*(-154.664180441823 + m.x196) + (-
                       91.4161884044213 + 0.444*m.x270)*(-205.892316226174 + m.x270) + (-155.824161795137 + m.x197)*(-
                       155.824161795137 + m.x197) + (-92.1018098174545 + 0.444*m.x271)*(-207.43650859787 + m.x271) + (-
                       156.992843008601 + m.x198)*(-156.992843008601 + m.x198) + (-92.7925733910854 + 0.444*m.x272)*(-
                       208.992282412354 + m.x272) + (-158.170289331165 + m.x199)*(-158.170289331165 + m.x199) + (-
                       93.4885176915185 + 0.444*m.x273)*(-210.559724530447 + m.x273) + (-159.356566501149 + m.x200)*(-
                       159.356566501149 + m.x200) + (-94.1896815742049 + 0.444*m.x274)*(-212.138922464425 + m.x274) + (-
                       160.551740749908 + m.x201)*(-160.551740749908 + m.x201) + (-94.8961041860114 + 0.444*m.x275)*(-
                       213.729964382909 + m.x275) + (-161.755878805532 + m.x202)*(-161.755878805532 + m.x202) + (-
                       95.6078249674065 + 0.444*m.x276)*(-215.33293911578 + m.x276) + (-162.969047896573 + m.x203)*(-
                       162.969047896573 + m.x203) + (-96.3248836546621 + 0.444*m.x277)*(-216.947936159149 + m.x277) + (-
                       164.191315755798 + m.x204)*(-164.191315755798 + m.x204) + (-97.0473202820721 + 0.444*m.x278)*(-
                       218.575045680342 + m.x278) + (-165.422750623966 + m.x205)*(-165.422750623966 + m.x205) + (-
                       97.7751751841876 + 0.444*m.x279)*(-220.214358522945 + m.x279) + (-166.663421253646 + m.x206)*(-
                       166.663421253646 + m.x206) + (-98.5084889980691 + 0.444*m.x280)*(-221.865966211867 + m.x280) + (-
                       167.913396913048 + m.x207)*(-167.913396913048 + m.x207) + (-99.2473026655546 + 0.444*m.x281)*(-
                       223.529960958456 + m.x281) + (-169.172747389896 + m.x208)*(-169.172747389896 + m.x208) + (-
                       99.9916574355462 + 0.444*m.x282)*(-225.206435665645 + m.x282) + (-170.44154299532 + m.x209)*(-
                       170.44154299532 + m.x209) + (-100.741594866313 + 0.444*m.x283)*(-226.895483933137 + m.x283) + (-
                       171.719854567785 + m.x210)*(-171.719854567785 + m.x210) + (-101.49715682781 + 0.444*m.x284)*(-
                       228.597200062636 + m.x284) + (-173.007753477044 + m.x211)*(-173.007753477044 + m.x211) + (-
                       102.258385504019 + 0.444*m.x285)*(-230.311679063105 + m.x285) + (-174.305311628122 + m.x212)*(-
                       174.305311628122 + m.x212) + (-103.025323395299 + 0.444*m.x286)*(-232.039016656079 + m.x286) + (-
                       175.612601465333 + m.x213)*(-175.612601465333 + m.x213) + (-103.798013320764 + 0.444*m.x287)*(-
                       233.779309280999 + m.x287) + (-176.929695976323 + m.x214)*(-176.929695976323 + m.x214) + (-
                       104.576498420669 + 0.444*m.x288)*(-235.532654100607 + m.x288) + (-178.256668696145 + m.x215)*(-
                       178.256668696145 + m.x215) + (-105.360822158824 + 0.444*m.x289)*(-237.299149006361 + m.x289) + (-
                       179.593593711366 + m.x216)*(-179.593593711366 + m.x216) + (-106.151028325016 + 0.444*m.x290)*(-
                       239.078892623909 + m.x290) + (-180.940545664201 + m.x217)*(-180.940545664201 + m.x217) + (-
                       106.947161037453 + 0.444*m.x291)*(-240.871984318588 + m.x291) + (-182.297599756683 + m.x218)*(-
                       182.297599756683 + m.x218) + (-107.749264745234 + 0.444*m.x292)*(-242.678524200978 + m.x292) + (-
                       183.664831754858 + m.x219)*(-183.664831754858 + m.x219) + (-108.557384230823 + 0.444*m.x293)*(-
                       244.498613132485 + m.x293) + (-185.042317993019 + m.x220)*(-185.042317993019 + m.x220) + (-
                       109.371564612555 + 0.444*m.x294)*(-246.332352730979 + m.x294) + (-186.430135377967 + m.x221)*(-
                       186.430135377967 + m.x221) + (-110.191851347149 + 0.444*m.x295)*(-248.179845376461 + m.x295) + (-
                       187.828361393302 + m.x222)*(-187.828361393302 + m.x222) + (-111.018290232252 + 0.444*m.x296)*(-
                       250.041194216785 + m.x296) + (-189.237074103752 + m.x223)*(-189.237074103752 + m.x223) + (-
                       111.850927408994 + 0.444*m.x297)*(-251.916503173411 + m.x297) + (-190.65635215953 + m.x224)*(-
                       190.65635215953 + m.x224) + (-112.689809364562 + 0.444*m.x298)*(-253.805876947211 + m.x298))
                       , sense=minimize)

m.c2 = Constraint(expr= - 0.914*m.x1 + m.x2 + 0.016*m.x76 - 0.305*m.x151 - 0.424*m.x225 == -59.4)

m.c3 = Constraint(expr= - 0.914*m.x2 + m.x3 + 0.016*m.x77 - 0.305*m.x152 - 0.424*m.x226 == -59.4)

m.c4 = Constraint(expr= - 0.914*m.x3 + m.x4 + 0.016*m.x78 - 0.305*m.x153 - 0.424*m.x227 == -59.4)

m.c5 = Constraint(expr= - 0.914*m.x4 + m.x5 + 0.016*m.x79 - 0.305*m.x154 - 0.424*m.x228 == -59.4)

m.c6 = Constraint(expr= - 0.914*m.x5 + m.x6 + 0.016*m.x80 - 0.305*m.x155 - 0.424*m.x229 == -59.4)

m.c7 = Constraint(expr= - 0.914*m.x6 + m.x7 + 0.016*m.x81 - 0.305*m.x156 - 0.424*m.x230 == -59.4)

m.c8 = Constraint(expr= - 0.914*m.x7 + m.x8 + 0.016*m.x82 - 0.305*m.x157 - 0.424*m.x231 == -59.4)

m.c9 = Constraint(expr= - 0.914*m.x8 + m.x9 + 0.016*m.x83 - 0.305*m.x158 - 0.424*m.x232 == -59.4)

m.c10 = Constraint(expr= - 0.914*m.x9 + m.x10 + 0.016*m.x84 - 0.305*m.x159 - 0.424*m.x233 == -59.4)

m.c11 = Constraint(expr= - 0.914*m.x10 + m.x11 + 0.016*m.x85 - 0.305*m.x160 - 0.424*m.x234 == -59.4)

m.c12 = Constraint(expr= - 0.914*m.x11 + m.x12 + 0.016*m.x86 - 0.305*m.x161 - 0.424*m.x235 == -59.4)

m.c13 = Constraint(expr= - 0.914*m.x12 + m.x13 + 0.016*m.x87 - 0.305*m.x162 - 0.424*m.x236 == -59.4)

m.c14 = Constraint(expr= - 0.914*m.x13 + m.x14 + 0.016*m.x88 - 0.305*m.x163 - 0.424*m.x237 == -59.4)

m.c15 = Constraint(expr= - 0.914*m.x14 + m.x15 + 0.016*m.x89 - 0.305*m.x164 - 0.424*m.x238 == -59.4)

m.c16 = Constraint(expr= - 0.914*m.x15 + m.x16 + 0.016*m.x90 - 0.305*m.x165 - 0.424*m.x239 == -59.4)

m.c17 = Constraint(expr= - 0.914*m.x16 + m.x17 + 0.016*m.x91 - 0.305*m.x166 - 0.424*m.x240 == -59.4)

m.c18 = Constraint(expr= - 0.914*m.x17 + m.x18 + 0.016*m.x92 - 0.305*m.x167 - 0.424*m.x241 == -59.4)

m.c19 = Constraint(expr= - 0.914*m.x18 + m.x19 + 0.016*m.x93 - 0.305*m.x168 - 0.424*m.x242 == -59.4)

m.c20 = Constraint(expr= - 0.914*m.x19 + m.x20 + 0.016*m.x94 - 0.305*m.x169 - 0.424*m.x243 == -59.4)

m.c21 = Constraint(expr= - 0.914*m.x20 + m.x21 + 0.016*m.x95 - 0.305*m.x170 - 0.424*m.x244 == -59.4)

m.c22 = Constraint(expr= - 0.914*m.x21 + m.x22 + 0.016*m.x96 - 0.305*m.x171 - 0.424*m.x245 == -59.4)

m.c23 = Constraint(expr= - 0.914*m.x22 + m.x23 + 0.016*m.x97 - 0.305*m.x172 - 0.424*m.x246 == -59.4)

m.c24 = Constraint(expr= - 0.914*m.x23 + m.x24 + 0.016*m.x98 - 0.305*m.x173 - 0.424*m.x247 == -59.4)

m.c25 = Constraint(expr= - 0.914*m.x24 + m.x25 + 0.016*m.x99 - 0.305*m.x174 - 0.424*m.x248 == -59.4)

m.c26 = Constraint(expr= - 0.914*m.x25 + m.x26 + 0.016*m.x100 - 0.305*m.x175 - 0.424*m.x249 == -59.4)

m.c27 = Constraint(expr= - 0.914*m.x26 + m.x27 + 0.016*m.x101 - 0.305*m.x176 - 0.424*m.x250 == -59.4)

m.c28 = Constraint(expr= - 0.914*m.x27 + m.x28 + 0.016*m.x102 - 0.305*m.x177 - 0.424*m.x251 == -59.4)

m.c29 = Constraint(expr= - 0.914*m.x28 + m.x29 + 0.016*m.x103 - 0.305*m.x178 - 0.424*m.x252 == -59.4)

m.c30 = Constraint(expr= - 0.914*m.x29 + m.x30 + 0.016*m.x104 - 0.305*m.x179 - 0.424*m.x253 == -59.4)

m.c31 = Constraint(expr= - 0.914*m.x30 + m.x31 + 0.016*m.x105 - 0.305*m.x180 - 0.424*m.x254 == -59.4)

m.c32 = Constraint(expr= - 0.914*m.x31 + m.x32 + 0.016*m.x106 - 0.305*m.x181 - 0.424*m.x255 == -59.4)

m.c33 = Constraint(expr= - 0.914*m.x32 + m.x33 + 0.016*m.x107 - 0.305*m.x182 - 0.424*m.x256 == -59.4)

m.c34 = Constraint(expr= - 0.914*m.x33 + m.x34 + 0.016*m.x108 - 0.305*m.x183 - 0.424*m.x257 == -59.4)

m.c35 = Constraint(expr= - 0.914*m.x34 + m.x35 + 0.016*m.x109 - 0.305*m.x184 - 0.424*m.x258 == -59.4)

m.c36 = Constraint(expr= - 0.914*m.x35 + m.x36 + 0.016*m.x110 - 0.305*m.x185 - 0.424*m.x259 == -59.4)

m.c37 = Constraint(expr= - 0.914*m.x36 + m.x37 + 0.016*m.x111 - 0.305*m.x186 - 0.424*m.x260 == -59.4)

m.c38 = Constraint(expr= - 0.914*m.x37 + m.x38 + 0.016*m.x112 - 0.305*m.x187 - 0.424*m.x261 == -59.4)

m.c39 = Constraint(expr= - 0.914*m.x38 + m.x39 + 0.016*m.x113 - 0.305*m.x188 - 0.424*m.x262 == -59.4)

m.c40 = Constraint(expr= - 0.914*m.x39 + m.x40 + 0.016*m.x114 - 0.305*m.x189 - 0.424*m.x263 == -59.4)

m.c41 = Constraint(expr= - 0.914*m.x40 + m.x41 + 0.016*m.x115 - 0.305*m.x190 - 0.424*m.x264 == -59.4)

m.c42 = Constraint(expr= - 0.914*m.x41 + m.x42 + 0.016*m.x116 - 0.305*m.x191 - 0.424*m.x265 == -59.4)

m.c43 = Constraint(expr= - 0.914*m.x42 + m.x43 + 0.016*m.x117 - 0.305*m.x192 - 0.424*m.x266 == -59.4)

m.c44 = Constraint(expr= - 0.914*m.x43 + m.x44 + 0.016*m.x118 - 0.305*m.x193 - 0.424*m.x267 == -59.4)

m.c45 = Constraint(expr= - 0.914*m.x44 + m.x45 + 0.016*m.x119 - 0.305*m.x194 - 0.424*m.x268 == -59.4)

m.c46 = Constraint(expr= - 0.914*m.x45 + m.x46 + 0.016*m.x120 - 0.305*m.x195 - 0.424*m.x269 == -59.4)

m.c47 = Constraint(expr= - 0.914*m.x46 + m.x47 + 0.016*m.x121 - 0.305*m.x196 - 0.424*m.x270 == -59.4)

m.c48 = Constraint(expr= - 0.914*m.x47 + m.x48 + 0.016*m.x122 - 0.305*m.x197 - 0.424*m.x271 == -59.4)

m.c49 = Constraint(expr= - 0.914*m.x48 + m.x49 + 0.016*m.x123 - 0.305*m.x198 - 0.424*m.x272 == -59.4)

m.c50 = Constraint(expr= - 0.914*m.x49 + m.x50 + 0.016*m.x124 - 0.305*m.x199 - 0.424*m.x273 == -59.4)

m.c51 = Constraint(expr= - 0.914*m.x50 + m.x51 + 0.016*m.x125 - 0.305*m.x200 - 0.424*m.x274 == -59.4)

m.c52 = Constraint(expr= - 0.914*m.x51 + m.x52 + 0.016*m.x126 - 0.305*m.x201 - 0.424*m.x275 == -59.4)

m.c53 = Constraint(expr= - 0.914*m.x52 + m.x53 + 0.016*m.x127 - 0.305*m.x202 - 0.424*m.x276 == -59.4)

m.c54 = Constraint(expr= - 0.914*m.x53 + m.x54 + 0.016*m.x128 - 0.305*m.x203 - 0.424*m.x277 == -59.4)

m.c55 = Constraint(expr= - 0.914*m.x54 + m.x55 + 0.016*m.x129 - 0.305*m.x204 - 0.424*m.x278 == -59.4)

m.c56 = Constraint(expr= - 0.914*m.x55 + m.x56 + 0.016*m.x130 - 0.305*m.x205 - 0.424*m.x279 == -59.4)

m.c57 = Constraint(expr= - 0.914*m.x56 + m.x57 + 0.016*m.x131 - 0.305*m.x206 - 0.424*m.x280 == -59.4)

m.c58 = Constraint(expr= - 0.914*m.x57 + m.x58 + 0.016*m.x132 - 0.305*m.x207 - 0.424*m.x281 == -59.4)

m.c59 = Constraint(expr= - 0.914*m.x58 + m.x59 + 0.016*m.x133 - 0.305*m.x208 - 0.424*m.x282 == -59.4)

m.c60 = Constraint(expr= - 0.914*m.x59 + m.x60 + 0.016*m.x134 - 0.305*m.x209 - 0.424*m.x283 == -59.4)

m.c61 = Constraint(expr= - 0.914*m.x60 + m.x61 + 0.016*m.x135 - 0.305*m.x210 - 0.424*m.x284 == -59.4)

m.c62 = Constraint(expr= - 0.914*m.x61 + m.x62 + 0.016*m.x136 - 0.305*m.x211 - 0.424*m.x285 == -59.4)

m.c63 = Constraint(expr= - 0.914*m.x62 + m.x63 + 0.016*m.x137 - 0.305*m.x212 - 0.424*m.x286 == -59.4)

m.c64 = Constraint(expr= - 0.914*m.x63 + m.x64 + 0.016*m.x138 - 0.305*m.x213 - 0.424*m.x287 == -59.4)

m.c65 = Constraint(expr= - 0.914*m.x64 + m.x65 + 0.016*m.x139 - 0.305*m.x214 - 0.424*m.x288 == -59.4)

m.c66 = Constraint(expr= - 0.914*m.x65 + m.x66 + 0.016*m.x140 - 0.305*m.x215 - 0.424*m.x289 == -59.4)

m.c67 = Constraint(expr= - 0.914*m.x66 + m.x67 + 0.016*m.x141 - 0.305*m.x216 - 0.424*m.x290 == -59.4)

m.c68 = Constraint(expr= - 0.914*m.x67 + m.x68 + 0.016*m.x142 - 0.305*m.x217 - 0.424*m.x291 == -59.4)

m.c69 = Constraint(expr= - 0.914*m.x68 + m.x69 + 0.016*m.x143 - 0.305*m.x218 - 0.424*m.x292 == -59.4)

m.c70 = Constraint(expr= - 0.914*m.x69 + m.x70 + 0.016*m.x144 - 0.305*m.x219 - 0.424*m.x293 == -59.4)

m.c71 = Constraint(expr= - 0.914*m.x70 + m.x71 + 0.016*m.x145 - 0.305*m.x220 - 0.424*m.x294 == -59.4)

m.c72 = Constraint(expr= - 0.914*m.x71 + m.x72 + 0.016*m.x146 - 0.305*m.x221 - 0.424*m.x295 == -59.4)

m.c73 = Constraint(expr= - 0.914*m.x72 + m.x73 + 0.016*m.x147 - 0.305*m.x222 - 0.424*m.x296 == -59.4)

m.c74 = Constraint(expr= - 0.914*m.x73 + m.x74 + 0.016*m.x148 - 0.305*m.x223 - 0.424*m.x297 == -59.4)

m.c75 = Constraint(expr= - 0.914*m.x74 + m.x75 + 0.016*m.x149 - 0.305*m.x224 - 0.424*m.x298 == -59.4)

m.c76 = Constraint(expr= - 0.097*m.x1 - 0.424*m.x76 + m.x77 + 0.101*m.x151 - 1.459*m.x225 == -184.7)

m.c77 = Constraint(expr= - 0.097*m.x2 - 0.424*m.x77 + m.x78 + 0.101*m.x152 - 1.459*m.x226 == -184.7)

m.c78 = Constraint(expr= - 0.097*m.x3 - 0.424*m.x78 + m.x79 + 0.101*m.x153 - 1.459*m.x227 == -184.7)

m.c79 = Constraint(expr= - 0.097*m.x4 - 0.424*m.x79 + m.x80 + 0.101*m.x154 - 1.459*m.x228 == -184.7)

m.c80 = Constraint(expr= - 0.097*m.x5 - 0.424*m.x80 + m.x81 + 0.101*m.x155 - 1.459*m.x229 == -184.7)

m.c81 = Constraint(expr= - 0.097*m.x6 - 0.424*m.x81 + m.x82 + 0.101*m.x156 - 1.459*m.x230 == -184.7)

m.c82 = Constraint(expr= - 0.097*m.x7 - 0.424*m.x82 + m.x83 + 0.101*m.x157 - 1.459*m.x231 == -184.7)

m.c83 = Constraint(expr= - 0.097*m.x8 - 0.424*m.x83 + m.x84 + 0.101*m.x158 - 1.459*m.x232 == -184.7)

m.c84 = Constraint(expr= - 0.097*m.x9 - 0.424*m.x84 + m.x85 + 0.101*m.x159 - 1.459*m.x233 == -184.7)

m.c85 = Constraint(expr= - 0.097*m.x10 - 0.424*m.x85 + m.x86 + 0.101*m.x160 - 1.459*m.x234 == -184.7)

m.c86 = Constraint(expr= - 0.097*m.x11 - 0.424*m.x86 + m.x87 + 0.101*m.x161 - 1.459*m.x235 == -184.7)

m.c87 = Constraint(expr= - 0.097*m.x12 - 0.424*m.x87 + m.x88 + 0.101*m.x162 - 1.459*m.x236 == -184.7)

m.c88 = Constraint(expr= - 0.097*m.x13 - 0.424*m.x88 + m.x89 + 0.101*m.x163 - 1.459*m.x237 == -184.7)

m.c89 = Constraint(expr= - 0.097*m.x14 - 0.424*m.x89 + m.x90 + 0.101*m.x164 - 1.459*m.x238 == -184.7)

m.c90 = Constraint(expr= - 0.097*m.x15 - 0.424*m.x90 + m.x91 + 0.101*m.x165 - 1.459*m.x239 == -184.7)

m.c91 = Constraint(expr= - 0.097*m.x16 - 0.424*m.x91 + m.x92 + 0.101*m.x166 - 1.459*m.x240 == -184.7)

m.c92 = Constraint(expr= - 0.097*m.x17 - 0.424*m.x92 + m.x93 + 0.101*m.x167 - 1.459*m.x241 == -184.7)

m.c93 = Constraint(expr= - 0.097*m.x18 - 0.424*m.x93 + m.x94 + 0.101*m.x168 - 1.459*m.x242 == -184.7)

m.c94 = Constraint(expr= - 0.097*m.x19 - 0.424*m.x94 + m.x95 + 0.101*m.x169 - 1.459*m.x243 == -184.7)

m.c95 = Constraint(expr= - 0.097*m.x20 - 0.424*m.x95 + m.x96 + 0.101*m.x170 - 1.459*m.x244 == -184.7)

m.c96 = Constraint(expr= - 0.097*m.x21 - 0.424*m.x96 + m.x97 + 0.101*m.x171 - 1.459*m.x245 == -184.7)

m.c97 = Constraint(expr= - 0.097*m.x22 - 0.424*m.x97 + m.x98 + 0.101*m.x172 - 1.459*m.x246 == -184.7)

m.c98 = Constraint(expr= - 0.097*m.x23 - 0.424*m.x98 + m.x99 + 0.101*m.x173 - 1.459*m.x247 == -184.7)

m.c99 = Constraint(expr= - 0.097*m.x24 - 0.424*m.x99 + m.x100 + 0.101*m.x174 - 1.459*m.x248 == -184.7)

m.c100 = Constraint(expr= - 0.097*m.x25 - 0.424*m.x100 + m.x101 + 0.101*m.x175 - 1.459*m.x249 == -184.7)

m.c101 = Constraint(expr= - 0.097*m.x26 - 0.424*m.x101 + m.x102 + 0.101*m.x176 - 1.459*m.x250 == -184.7)

m.c102 = Constraint(expr= - 0.097*m.x27 - 0.424*m.x102 + m.x103 + 0.101*m.x177 - 1.459*m.x251 == -184.7)

m.c103 = Constraint(expr= - 0.097*m.x28 - 0.424*m.x103 + m.x104 + 0.101*m.x178 - 1.459*m.x252 == -184.7)

m.c104 = Constraint(expr= - 0.097*m.x29 - 0.424*m.x104 + m.x105 + 0.101*m.x179 - 1.459*m.x253 == -184.7)

m.c105 = Constraint(expr= - 0.097*m.x30 - 0.424*m.x105 + m.x106 + 0.101*m.x180 - 1.459*m.x254 == -184.7)

m.c106 = Constraint(expr= - 0.097*m.x31 - 0.424*m.x106 + m.x107 + 0.101*m.x181 - 1.459*m.x255 == -184.7)

m.c107 = Constraint(expr= - 0.097*m.x32 - 0.424*m.x107 + m.x108 + 0.101*m.x182 - 1.459*m.x256 == -184.7)

m.c108 = Constraint(expr= - 0.097*m.x33 - 0.424*m.x108 + m.x109 + 0.101*m.x183 - 1.459*m.x257 == -184.7)

m.c109 = Constraint(expr= - 0.097*m.x34 - 0.424*m.x109 + m.x110 + 0.101*m.x184 - 1.459*m.x258 == -184.7)

m.c110 = Constraint(expr= - 0.097*m.x35 - 0.424*m.x110 + m.x111 + 0.101*m.x185 - 1.459*m.x259 == -184.7)

m.c111 = Constraint(expr= - 0.097*m.x36 - 0.424*m.x111 + m.x112 + 0.101*m.x186 - 1.459*m.x260 == -184.7)

m.c112 = Constraint(expr= - 0.097*m.x37 - 0.424*m.x112 + m.x113 + 0.101*m.x187 - 1.459*m.x261 == -184.7)

m.c113 = Constraint(expr= - 0.097*m.x38 - 0.424*m.x113 + m.x114 + 0.101*m.x188 - 1.459*m.x262 == -184.7)

m.c114 = Constraint(expr= - 0.097*m.x39 - 0.424*m.x114 + m.x115 + 0.101*m.x189 - 1.459*m.x263 == -184.7)

m.c115 = Constraint(expr= - 0.097*m.x40 - 0.424*m.x115 + m.x116 + 0.101*m.x190 - 1.459*m.x264 == -184.7)

m.c116 = Constraint(expr= - 0.097*m.x41 - 0.424*m.x116 + m.x117 + 0.101*m.x191 - 1.459*m.x265 == -184.7)

m.c117 = Constraint(expr= - 0.097*m.x42 - 0.424*m.x117 + m.x118 + 0.101*m.x192 - 1.459*m.x266 == -184.7)

m.c118 = Constraint(expr= - 0.097*m.x43 - 0.424*m.x118 + m.x119 + 0.101*m.x193 - 1.459*m.x267 == -184.7)

m.c119 = Constraint(expr= - 0.097*m.x44 - 0.424*m.x119 + m.x120 + 0.101*m.x194 - 1.459*m.x268 == -184.7)

m.c120 = Constraint(expr= - 0.097*m.x45 - 0.424*m.x120 + m.x121 + 0.101*m.x195 - 1.459*m.x269 == -184.7)

m.c121 = Constraint(expr= - 0.097*m.x46 - 0.424*m.x121 + m.x122 + 0.101*m.x196 - 1.459*m.x270 == -184.7)

m.c122 = Constraint(expr= - 0.097*m.x47 - 0.424*m.x122 + m.x123 + 0.101*m.x197 - 1.459*m.x271 == -184.7)

m.c123 = Constraint(expr= - 0.097*m.x48 - 0.424*m.x123 + m.x124 + 0.101*m.x198 - 1.459*m.x272 == -184.7)

m.c124 = Constraint(expr= - 0.097*m.x49 - 0.424*m.x124 + m.x125 + 0.101*m.x199 - 1.459*m.x273 == -184.7)

m.c125 = Constraint(expr= - 0.097*m.x50 - 0.424*m.x125 + m.x126 + 0.101*m.x200 - 1.459*m.x274 == -184.7)

m.c126 = Constraint(expr= - 0.097*m.x51 - 0.424*m.x126 + m.x127 + 0.101*m.x201 - 1.459*m.x275 == -184.7)

m.c127 = Constraint(expr= - 0.097*m.x52 - 0.424*m.x127 + m.x128 + 0.101*m.x202 - 1.459*m.x276 == -184.7)

m.c128 = Constraint(expr= - 0.097*m.x53 - 0.424*m.x128 + m.x129 + 0.101*m.x203 - 1.459*m.x277 == -184.7)

m.c129 = Constraint(expr= - 0.097*m.x54 - 0.424*m.x129 + m.x130 + 0.101*m.x204 - 1.459*m.x278 == -184.7)

m.c130 = Constraint(expr= - 0.097*m.x55 - 0.424*m.x130 + m.x131 + 0.101*m.x205 - 1.459*m.x279 == -184.7)

m.c131 = Constraint(expr= - 0.097*m.x56 - 0.424*m.x131 + m.x132 + 0.101*m.x206 - 1.459*m.x280 == -184.7)

m.c132 = Constraint(expr= - 0.097*m.x57 - 0.424*m.x132 + m.x133 + 0.101*m.x207 - 1.459*m.x281 == -184.7)

m.c133 = Constraint(expr= - 0.097*m.x58 - 0.424*m.x133 + m.x134 + 0.101*m.x208 - 1.459*m.x282 == -184.7)

m.c134 = Constraint(expr= - 0.097*m.x59 - 0.424*m.x134 + m.x135 + 0.101*m.x209 - 1.459*m.x283 == -184.7)

m.c135 = Constraint(expr= - 0.097*m.x60 - 0.424*m.x135 + m.x136 + 0.101*m.x210 - 1.459*m.x284 == -184.7)

m.c136 = Constraint(expr= - 0.097*m.x61 - 0.424*m.x136 + m.x137 + 0.101*m.x211 - 1.459*m.x285 == -184.7)

m.c137 = Constraint(expr= - 0.097*m.x62 - 0.424*m.x137 + m.x138 + 0.101*m.x212 - 1.459*m.x286 == -184.7)

m.c138 = Constraint(expr= - 0.097*m.x63 - 0.424*m.x138 + m.x139 + 0.101*m.x213 - 1.459*m.x287 == -184.7)

m.c139 = Constraint(expr= - 0.097*m.x64 - 0.424*m.x139 + m.x140 + 0.101*m.x214 - 1.459*m.x288 == -184.7)

m.c140 = Constraint(expr= - 0.097*m.x65 - 0.424*m.x140 + m.x141 + 0.101*m.x215 - 1.459*m.x289 == -184.7)

m.c141 = Constraint(expr= - 0.097*m.x66 - 0.424*m.x141 + m.x142 + 0.101*m.x216 - 1.459*m.x290 == -184.7)

m.c142 = Constraint(expr= - 0.097*m.x67 - 0.424*m.x142 + m.x143 + 0.101*m.x217 - 1.459*m.x291 == -184.7)

m.c143 = Constraint(expr= - 0.097*m.x68 - 0.424*m.x143 + m.x144 + 0.101*m.x218 - 1.459*m.x292 == -184.7)

m.c144 = Constraint(expr= - 0.097*m.x69 - 0.424*m.x144 + m.x145 + 0.101*m.x219 - 1.459*m.x293 == -184.7)

m.c145 = Constraint(expr= - 0.097*m.x70 - 0.424*m.x145 + m.x146 + 0.101*m.x220 - 1.459*m.x294 == -184.7)

m.c146 = Constraint(expr= - 0.097*m.x71 - 0.424*m.x146 + m.x147 + 0.101*m.x221 - 1.459*m.x295 == -184.7)

m.c147 = Constraint(expr= - 0.097*m.x72 - 0.424*m.x147 + m.x148 + 0.101*m.x222 - 1.459*m.x296 == -184.7)

m.c148 = Constraint(expr= - 0.097*m.x73 - 0.424*m.x148 + m.x149 + 0.101*m.x223 - 1.459*m.x297 == -184.7)

m.c149 = Constraint(expr= - 0.097*m.x74 - 0.424*m.x149 + m.x150 + 0.101*m.x224 - 1.459*m.x298 == -184.7)
