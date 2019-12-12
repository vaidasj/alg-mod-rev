#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        174        4      155       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        361      361        0        0        0        0        0        0
#  FX     11       11        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1003     1003        0        0
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
m.x136 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x137 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x138 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x139 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x140 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x141 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x142 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x143 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x144 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x145 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x146 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x359 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x360 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x361 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x359 + m.x360 + m.x361, sense=minimize)

m.c1 = Constraint(expr=   m.x17 + m.x148 >= 1)

m.c2 = Constraint(expr=   m.x18 + m.x149 >= 3)

m.c3 = Constraint(expr=   m.x19 + m.x150 >= 90)

m.c4 = Constraint(expr=   m.x20 + m.x151 >= 60)

m.c5 = Constraint(expr=   m.x21 + m.x152 >= 45)

m.c6 = Constraint(expr=   m.x22 + m.x153 >= 60)

m.c7 = Constraint(expr=   m.x23 + m.x154 >= 15)

m.c8 = Constraint(expr=   m.x24 + m.x155 >= 50)

m.c9 = Constraint(expr=   m.x25 + m.x156 >= 6)

m.c10 = Constraint(expr=   m.x27 + m.x158 >= 21)

m.c11 = Constraint(expr=   m.x28 + m.x159 >= 16)

m.c12 = Constraint(expr=   m.x29 + m.x160 >= 6)

m.c13 = Constraint(expr=   m.x30 + m.x161 >= 1)

m.c14 = Constraint(expr=   m.x31 + m.x162 >= 6)

m.c15 = Constraint(expr=   m.x32 + m.x163 >= 1)

m.c16 = Constraint(expr=   m.x36 + m.x167 >= 40)

m.c17 = Constraint(expr=   m.x37 + m.x168 >= 20)

m.c18 = Constraint(expr=   m.x52 + m.x183 >= 15)

m.c19 = Constraint(expr=   m.x54 + m.x185 >= 65)

m.c20 = Constraint(expr=   m.x55 + m.x186 >= 95)

m.c21 = Constraint(expr=   m.x57 + m.x188 >= 26)

m.c22 = Constraint(expr=   m.x58 + m.x189 >= 5)

m.c23 = Constraint(expr=   m.x59 + m.x190 >= 25)

m.c24 = Constraint(expr=   m.x60 + m.x191 >= 17)

m.c25 = Constraint(expr=   m.x61 + m.x192 >= 10)

m.c26 = Constraint(expr=   m.x62 + m.x193 >= 26)

m.c27 = Constraint(expr=   m.x63 + m.x194 >= 2)

m.c28 = Constraint(expr=   m.x64 + m.x195 >= 31)

m.c29 = Constraint(expr=   m.x65 + m.x196 >= 4)

m.c30 = Constraint(expr=   m.x66 + m.x197 >= 1)

m.c31 = Constraint(expr=   m.x67 + m.x198 >= 24)

m.c32 = Constraint(expr=   m.x68 + m.x199 >= 25)

m.c33 = Constraint(expr=   m.x69 + m.x200 >= 40)

m.c34 = Constraint(expr=   m.x70 + m.x201 >= 15)

m.c35 = Constraint(expr=   m.x71 + m.x202 >= 20)

m.c36 = Constraint(expr=   m.x72 + m.x203 >= 35)

m.c37 = Constraint(expr=   m.x74 + m.x205 >= 3)

m.c38 = Constraint(expr=   m.x75 + m.x206 >= 2)

m.c39 = Constraint(expr=   m.x76 + m.x96 + m.x116 + m.x207 >= 8)

m.c40 = Constraint(expr=   m.x77 + m.x97 + m.x117 + m.x208 >= 35)

m.c41 = Constraint(expr=   m.x78 + m.x98 + m.x118 + m.x209 >= 8)

m.c42 = Constraint(expr=   m.x79 + m.x99 + m.x119 + m.x210 >= 64)

m.c43 = Constraint(expr=   m.x80 + m.x100 + m.x120 + m.x211 >= 57)

m.c44 = Constraint(expr=   m.x81 + m.x101 + m.x121 + m.x212 >= 25)

m.c45 = Constraint(expr=   m.x82 + m.x102 + m.x122 + m.x213 >= 52)

m.c46 = Constraint(expr=   m.x83 + m.x103 + m.x123 + m.x214 >= 5)

m.c47 = Constraint(expr=   m.x84 + m.x104 + m.x124 + m.x215 >= 43)

m.c48 = Constraint(expr=   m.x85 + m.x105 + m.x125 + m.x216 >= 4)

m.c49 = Constraint(expr=   m.x86 + m.x106 + m.x126 + m.x217 >= 1)

m.c50 = Constraint(expr=   m.x87 + m.x107 + m.x127 + m.x218 >= 33)

m.c51 = Constraint(expr=   m.x88 + m.x108 + m.x128 + m.x219 >= 22)

m.c52 = Constraint(expr=   m.x89 + m.x109 + m.x129 + m.x220 >= 14)

m.c53 = Constraint(expr=   m.x90 + m.x110 + m.x130 + m.x221 >= 13)

m.c54 = Constraint(expr=   m.x91 + m.x111 + m.x131 + m.x222 >= 17)

m.c55 = Constraint(expr=   m.x92 + m.x112 + m.x132 + m.x223 >= 50)

m.c56 = Constraint(expr=   m.x93 + m.x113 + m.x133 + m.x224 >= 1)

m.c57 = Constraint(expr=   m.x94 + m.x114 + m.x134 + m.x225 >= 20)

m.c58 = Constraint(expr=   m.x95 + m.x115 + m.x135 + m.x226 >= 8)

m.c59 = Constraint(expr=   m.x228 >= 27)

m.c60 = Constraint(expr=   m.x229 >= 1)

m.c61 = Constraint(expr=   m.x230 >= 35)

m.c62 = Constraint(expr=   m.x231 >= 28)

m.c63 = Constraint(expr=   m.x232 >= 22)

m.c64 = Constraint(expr=   m.x233 >= 20)

m.c65 = Constraint(expr=   m.x234 >= 8)

m.c66 = Constraint(expr=   m.x235 >= 28)

m.c67 = Constraint(expr=   m.x236 >= 2)

m.c68 = Constraint(expr=   m.x238 >= 30)

m.c69 = Constraint(expr=   m.x239 >= 7)

m.c70 = Constraint(expr=   m.x240 >= 2)

m.c71 = Constraint(expr=   m.x241 >= 20)

m.c72 = Constraint(expr=   m.x242 >= 20)

m.c73 = Constraint(expr=   m.x243 >= 41)

m.c74 = Constraint(expr=   m.x244 >= 1)

m.c75 = Constraint(expr=   m.x245 >= 7)

m.c76 = Constraint(expr=   m.x246 >= 3)

m.c77 = Constraint(expr=   m.x248 >= 1)

m.c78 = Constraint(expr=   m.x250 >= 1)

m.c79 = Constraint(expr=   m.x252 >= 1)

m.c80 = Constraint(expr=   m.x253 >= 1)

m.c81 = Constraint(expr=   m.x255 >= 1)

m.c82 = Constraint(expr=   m.x258 >= 1)

m.c83 = Constraint(expr=   m.x261 >= 1)

m.c84 = Constraint(expr=   m.x262 >= 1)

m.c85 = Constraint(expr=   m.x263 >= 2)

m.c86 = Constraint(expr=   m.x270 >= 0.1)

m.c87 = Constraint(expr=   m.x271 >= 0.1)

m.c88 = Constraint(expr=   m.x278 >= 0.1)

m.c89 = Constraint(expr=   m.x279 >= 0.1)

m.c90 = Constraint(expr=   m.x283 >= 0.1)

m.c91 = Constraint(expr=   m.x288 >= 5)

m.c92 = Constraint(expr=   m.x290 >= 1)

m.c93 = Constraint(expr=   m.x291 >= 1)

m.c94 = Constraint(expr=   m.x292 >= 2)

m.c95 = Constraint(expr=   m.x293 >= 1)

m.c96 = Constraint(expr=   m.x295 >= 1)

m.c97 = Constraint(expr=   m.x298 >= 2)

m.c98 = Constraint(expr=   m.x299 >= 1)

m.c99 = Constraint(expr=   m.x300 >= 1)

m.c100 = Constraint(expr=   m.x301 >= 3)

m.c101 = Constraint(expr=   m.x302 >= 1)

m.c102 = Constraint(expr=   m.x303 >= 3)

m.c103 = Constraint(expr=   m.x305 >= 1)

m.c104 = Constraint(expr=   m.x308 >= 0.1)

m.c105 = Constraint(expr=   m.x310 >= 0.1)

m.c106 = Constraint(expr=   m.x311 >= 0.2)

m.c107 = Constraint(expr=   m.x312 >= 0.1)

m.c108 = Constraint(expr=   m.x315 >= 0.1)

m.c109 = Constraint(expr=   m.x318 >= 0.1)

m.c110 = Constraint(expr=   m.x320 >= 0.1)

m.c111 = Constraint(expr=   m.x323 >= 0.2)

m.c112 = Constraint(expr=   m.x6 - 0.71*m.x11 >= 0)

m.c113 = Constraint(expr=   m.x7 - 0.76*m.x12 >= 0)

m.c114 = Constraint(expr=   m.x10 - m.x16 - m.x17 - m.x18 - m.x19 - m.x20 - m.x21 - m.x22 - m.x23 - m.x24 - m.x25
                          - m.x26 - m.x27 - m.x28 - m.x29 - m.x30 - m.x31 - m.x32 - m.x33 - m.x34 - m.x35 >= 0)

m.c115 = Constraint(expr=   m.x11 - m.x36 - m.x37 - m.x38 - m.x39 - m.x40 - m.x41 - m.x42 - m.x43 - m.x44 - m.x45
                          - m.x46 - m.x47 - m.x48 - m.x49 - m.x50 - m.x51 - m.x52 - m.x53 - m.x54 - m.x55 >= 0)

m.c116 = Constraint(expr=   m.x12 - m.x56 - m.x57 - m.x58 - m.x59 - m.x60 - m.x61 - m.x62 - m.x63 - m.x64 - m.x65
                          - m.x66 - m.x67 - m.x68 - m.x69 - m.x70 - m.x71 - m.x72 - m.x73 - m.x74 - m.x75 >= 0)

m.c117 = Constraint(expr=   m.x13 - m.x76 - m.x77 - m.x78 - m.x79 - m.x80 - m.x81 - m.x82 - m.x83 - m.x84 - m.x85
                          - m.x86 - m.x87 - m.x88 - m.x89 - m.x90 - m.x91 - m.x92 - m.x93 - m.x94 - m.x95 >= 0)

m.c118 = Constraint(expr=   m.x14 - m.x96 - m.x97 - m.x98 - m.x99 - m.x100 - m.x101 - m.x102 - m.x103 - m.x104 - m.x105
                          - m.x106 - m.x107 - m.x108 - m.x109 - m.x110 - m.x111 - m.x112 - m.x113 - m.x114 - m.x115
                          >= 0)

m.c119 = Constraint(expr=   m.x15 - m.x116 - m.x117 - m.x118 - m.x119 - m.x120 - m.x121 - m.x122 - m.x123 - m.x124
                          - m.x125 - m.x126 - m.x127 - m.x128 - m.x129 - m.x130 - m.x131 - m.x132 - m.x133 - m.x134
                          - m.x135 >= 0)

m.c120 = Constraint(expr= - 0.292*m.x6 + m.x8 - 0.2*m.x11 - m.x136 + m.x137 >= 0)

m.c121 = Constraint(expr= - 0.292*m.x7 + m.x9 - 0.26*m.x10 - 0.21*m.x12 + m.x136 - m.x137 >= 0)

m.c122 = Constraint(expr= - 0.76*m.x10 + m.x138 + m.x141 + m.x144 + m.x332 >= 0)

m.c123 = Constraint(expr=   m.x1 - 0.41*m.x13 - m.x138 - m.x139 - m.x140 + m.x142 + m.x145 >= 0)

m.c124 = Constraint(expr=   m.x2 + m.x4 - 0.41*m.x14 + m.x139 - m.x141 - m.x142 - m.x143 + m.x146 >= 0)

m.c125 = Constraint(expr=   m.x3 + m.x5 - 0.41*m.x15 + m.x140 + m.x143 - m.x144 - m.x145 - m.x146 >= 0)

m.c126 = Constraint(expr= - 12*m.x8 + m.x333 >= 0)

m.c127 = Constraint(expr= - 2*m.x9 + m.x334 >= 0)

m.c128 = Constraint(expr= - 0.62*m.x13 + m.x335 >= 0)

m.c129 = Constraint(expr= - 0.62*m.x14 + m.x336 >= 0)

m.c130 = Constraint(expr= - 0.62*m.x15 + m.x337 >= 0)

m.c131 = Constraint(expr= - 0.12*m.x11 + m.x338 >= 0)

m.c132 = Constraint(expr= - 0.04*m.x12 + m.x339 >= 0)

m.c133 = Constraint(expr= - 0.334*m.x1 + m.x327 >= 0)

m.c134 = Constraint(expr= - 0.334*m.x2 + m.x328 >= 0)

m.c135 = Constraint(expr= - 0.334*m.x3 + m.x329 >= 0)

m.c136 = Constraint(expr= - 0.826*m.x4 + m.x330 >= 0)

m.c137 = Constraint(expr= - 0.826*m.x5 + m.x331 >= 0)

m.c138 = Constraint(expr= - 231*m.x6 + m.x340 >= 0)

m.c139 = Constraint(expr= - 231*m.x7 - 1960*m.x9 - 19*m.x10 + m.x341 >= 0)

m.c140 = Constraint(expr= - 50*m.x1 - 14*m.x13 + m.x342 >= 0)

m.c141 = Constraint(expr= - 50*m.x2 - 75*m.x4 - 14*m.x14 + m.x343 >= 0)

m.c142 = Constraint(expr= - 50*m.x3 - 75*m.x5 - 14*m.x15 + m.x344 >= 0)

m.c143 = Constraint(expr= - 609*m.x9 + m.x345 >= 0)

m.c144 = Constraint(expr= - 0.6*m.x6 - 49*m.x11 + m.x346 >= 0)

m.c145 = Constraint(expr= - 0.6*m.x7 - 700*m.x9 - 17*m.x10 - 49*m.x12 + m.x347 >= 0)

m.c146 = Constraint(expr= - 20*m.x1 - 6*m.x13 + m.x348 >= 0)

m.c147 = Constraint(expr= - 20*m.x2 - 60*m.x4 - 6*m.x14 + m.x349 >= 0)

m.c148 = Constraint(expr= - 20*m.x3 - 60*m.x5 - 6*m.x15 + m.x350 >= 0)

m.c149 = Constraint(expr= - 0.4*m.x11 + m.x351 >= 0)

m.c150 = Constraint(expr= - 4*m.x9 - 0.4*m.x12 + m.x352 >= 0)

m.c151 = Constraint(expr= - 23*m.x11 + m.x353 >= 0)

m.c152 = Constraint(expr= - 22*m.x10 - 23*m.x12 + m.x354 >= 0)

m.c153 = Constraint(expr= - 22*m.x13 + m.x355 >= 0)

m.c154 = Constraint(expr= - 22*m.x14 + m.x356 >= 0)

m.c155 = Constraint(expr= - 22*m.x15 + m.x357 >= 0)

m.c156 = Constraint(expr=   m.x1 <= 70.125)

m.c157 = Constraint(expr=   m.x2 <= 56.1)

m.c158 = Constraint(expr=   m.x3 <= 67.881)

m.c159 = Constraint(expr=   m.x4 <= 14.025)

m.c160 = Constraint(expr=   m.x5 <= 63.6735)

m.c161 = Constraint(expr=   m.x6 <= 224.4)

m.c162 = Constraint(expr=   m.x7 <= 79.101)

m.c163 = Constraint(expr=   m.x8 <= 126.225)

m.c164 = Constraint(expr=   m.x9 <= 48.246)

m.c165 = Constraint(expr=   m.x11 <= 308.55)

m.c166 = Constraint(expr=   m.x12 <= 102.102)

m.c167 = Constraint(expr=   m.x10 <= 6.732)

m.c168 = Constraint(expr=   m.x13 <= 168.3)

m.c169 = Constraint(expr=   m.x14 <= 168.3)

m.c170 = Constraint(expr=   m.x15 <= 168.3)

m.c172 = Constraint(expr= - 3*m.x332 - m.x333 - 16*m.x334 - 3.5*m.x335 - 5*m.x336 - 4*m.x337 - 1.2*m.x338 - 1.2*m.x339
                          - 0.007*m.x340 - 0.007*m.x341 - 0.007*m.x342 - 0.007*m.x343 - 0.007*m.x344 - 0.0075*m.x345
                          - 0.031*m.x346 - 0.031*m.x347 - 0.031*m.x348 - 0.031*m.x349 - 0.031*m.x350 - 1.25*m.x351
                          - 1.25*m.x352 - 0.28*m.x353 - 0.28*m.x354 - 0.28*m.x355 - 0.28*m.x356 - 0.28*m.x357 + m.x359
                          == 0)

m.c173 = Constraint(expr= - 13.172*m.x16 - 5.7128*m.x17 - 4.0136*m.x18 - 3.1496*m.x19 - 2.2568*m.x20 - 2.8328*m.x21
                          - 2.6888*m.x22 - 3.8552*m.x23 - 2.084*m.x24 - 2.9912*m.x25 - 3.0632*m.x26 - 2.0696*m.x27
                          - 1.5944*m.x28 - 0.6296*m.x29 - 2.012*m.x30 - 1.7672*m.x31 - 3.812*m.x32 - 8.5784*m.x33
                          - 7.1384*m.x34 - 9.1976*m.x35 - 7.9592*m.x37 - 16.844*m.x38 - 15.836*m.x39 - 14.9432*m.x40
                          - 15.5192*m.x41 - 15.3752*m.x42 - 16.5416*m.x43 - 14.7704*m.x44 - 15.6776*m.x45
                          - 15.7496*m.x46 - 14.756*m.x47 - 14.2808*m.x48 - 13.316*m.x49 - 11.66*m.x50 - 12.3944*m.x51
                          - 9.86*m.x52 - 7.9736*m.x53 - 6.5336*m.x54 - 4.4744*m.x55 - 13.172*m.x56 - 5.7128*m.x57
                          - 4.0136*m.x58 - 3.1496*m.x59 - 2.2568*m.x60 - 2.8328*m.x61 - 2.6888*m.x62 - 3.8552*m.x63
                          - 2.084*m.x64 - 2.9912*m.x65 - 3.0632*m.x66 - 2.0696*m.x67 - 1.5944*m.x68 - 0.6296*m.x69
                          - 2.012*m.x70 - 1.7672*m.x71 - 3.812*m.x72 - 8.5784*m.x73 - 7.1384*m.x74 - 9.1976*m.x75
                          - 7.9592*m.x76 - 9.2408*m.x78 - 8.3768*m.x79 - 7.484*m.x80 - 8.06*m.x81 - 7.916*m.x82
                          - 9.0824*m.x83 - 7.3112*m.x84 - 8.2184*m.x85 - 8.2904*m.x86 - 7.2968*m.x87 - 6.8216*m.x88
                          - 5.8568*m.x89 - 4.2008*m.x90 - 4.9352*m.x91 - 2.4008*m.x92 - 3.3656*m.x93 - 1.9256*m.x94
                          - 3.9848*m.x95 - 15.2168*m.x96 - 7.7576*m.x97 - 2.2136*m.x98 - 1.1048*m.x99 - 0.788*m.x100
                          - 0.788*m.x101 - 1.3352*m.x102 - 2.3864*m.x103 - 1.6232*m.x104 - 3.9704*m.x105 - 4.0424*m.x106
                          - 0.9752*m.x107 - 1.4504*m.x108 - 2.4152*m.x109 - 4.0712*m.x110 - 3.812*m.x111 - 5.8568*m.x112
                          - 10.6232*m.x113 - 9.1832*m.x114 - 11.2424*m.x115 - 14.0072*m.x116 - 6.548*m.x117
                          - 3.524*m.x118 - 1.22*m.x119 - 1.436*m.x120 - 2.012*m.x121 - 2.4872*m.x122 - 3.6104*m.x123
                          - 1.364*m.x124 - 2.5448*m.x125 - 3.7256*m.x126 - 2.7176*m.x127 - 1.8968*m.x128 - 1.1912*m.x129
                          - 2.8472*m.x130 - 2.588*m.x131 - 4.6472*m.x132 - 9.4136*m.x133 - 7.9736*m.x134
                          - 10.0328*m.x135 - 29.9*m.x136 - 29.9*m.x137 - 14.36*m.x138 - 18.62*m.x139 - 16.1*m.x140
                          - 7.76*m.x141 - 18.62*m.x142 - 6.05*m.x143 - 5.21*m.x144 - 16.1*m.x145 - 6.05*m.x146
                          - 16.8296*m.x147 - 9.3704*m.x148 - 0.7304*m.x149 - 1.5944*m.x150 - 2.66*m.x151 - 2.588*m.x152
                          - 3.4952*m.x153 - 4.3448*m.x154 - 3.956*m.x155 - 5.756*m.x156 - 5.828*m.x157 - 2.7608*m.x158
                          - 3.236*m.x159 - 4.6328*m.x160 - 5.6696*m.x161 - 5.4104*m.x162 - 6.0296*m.x163 - 12.236*m.x164
                          - 10.796*m.x165 - 12.8552*m.x166 - 16.8296*m.x167 - 9.3704*m.x168 - 0.7304*m.x169
                          - 1.5944*m.x170 - 2.66*m.x171 - 2.588*m.x172 - 3.4952*m.x173 - 4.3448*m.x174 - 3.956*m.x175
                          - 5.756*m.x176 - 5.828*m.x177 - 2.7608*m.x178 - 3.236*m.x179 - 4.6328*m.x180 - 5.6696*m.x181
                          - 5.4104*m.x182 - 6.0296*m.x183 - 12.236*m.x184 - 10.796*m.x185 - 12.8552*m.x186
                          - 16.8296*m.x187 - 9.3704*m.x188 - 0.7304*m.x189 - 1.5944*m.x190 - 2.66*m.x191 - 2.588*m.x192
                          - 3.4952*m.x193 - 4.3448*m.x194 - 3.956*m.x195 - 5.756*m.x196 - 5.828*m.x197 - 2.7608*m.x198
                          - 3.236*m.x199 - 4.6328*m.x200 - 5.6696*m.x201 - 5.4104*m.x202 - 6.0296*m.x203 - 12.236*m.x204
                          - 10.796*m.x205 - 12.8552*m.x206 - 16.8296*m.x207 - 9.3704*m.x208 - 0.7304*m.x209
                          - 1.5944*m.x210 - 2.66*m.x211 - 2.588*m.x212 - 3.4952*m.x213 - 4.3448*m.x214 - 3.956*m.x215
                          - 5.756*m.x216 - 5.828*m.x217 - 2.7608*m.x218 - 3.236*m.x219 - 4.6328*m.x220 - 5.6696*m.x221
                          - 5.4104*m.x222 - 6.0296*m.x223 - 12.236*m.x224 - 10.796*m.x225 - 12.8552*m.x226
                          - 16.8296*m.x227 - 9.3704*m.x228 - 0.7304*m.x229 - 1.5944*m.x230 - 2.66*m.x231 - 2.588*m.x232
                          - 3.4952*m.x233 - 4.3448*m.x234 - 3.956*m.x235 - 5.756*m.x236 - 5.828*m.x237 - 2.7608*m.x238
                          - 3.236*m.x239 - 4.6328*m.x240 - 5.6696*m.x241 - 5.4104*m.x242 - 6.0296*m.x243 - 12.236*m.x244
                          - 10.796*m.x245 - 12.8552*m.x246 - 16.8296*m.x247 - 9.3704*m.x248 - 0.7304*m.x249
                          - 1.5944*m.x250 - 2.66*m.x251 - 2.588*m.x252 - 3.4952*m.x253 - 4.3448*m.x254 - 3.956*m.x255
                          - 5.756*m.x256 - 5.828*m.x257 - 2.7608*m.x258 - 3.236*m.x259 - 4.6328*m.x260 - 5.6696*m.x261
                          - 5.4104*m.x262 - 6.0296*m.x263 - 12.236*m.x264 - 10.796*m.x265 - 12.8552*m.x266
                          - 16.8296*m.x267 - 9.3704*m.x268 - 0.7304*m.x269 - 1.5944*m.x270 - 2.66*m.x271 - 2.588*m.x272
                          - 3.4952*m.x273 - 4.3448*m.x274 - 3.956*m.x275 - 5.756*m.x276 - 5.828*m.x277 - 2.7608*m.x278
                          - 3.236*m.x279 - 4.6328*m.x280 - 5.6696*m.x281 - 5.4104*m.x282 - 6.0296*m.x283 - 12.236*m.x284
                          - 10.796*m.x285 - 12.8552*m.x286 - 16.8296*m.x287 - 9.3704*m.x288 - 0.7304*m.x289
                          - 1.5944*m.x290 - 2.66*m.x291 - 2.588*m.x292 - 3.4952*m.x293 - 4.3448*m.x294 - 3.956*m.x295
                          - 5.756*m.x296 - 5.828*m.x297 - 2.7608*m.x298 - 3.236*m.x299 - 4.6328*m.x300 - 5.6696*m.x301
                          - 5.4104*m.x302 - 6.0296*m.x303 - 12.236*m.x304 - 10.796*m.x305 - 12.8552*m.x306
                          - 16.8296*m.x307 - 9.3704*m.x308 - 0.7304*m.x309 - 1.5944*m.x310 - 2.66*m.x311 - 2.588*m.x312
                          - 3.4952*m.x313 - 4.3448*m.x314 - 3.956*m.x315 - 5.756*m.x316 - 5.828*m.x317 - 2.7608*m.x318
                          - 3.236*m.x319 - 4.6328*m.x320 - 5.6696*m.x321 - 5.4104*m.x322 - 6.0296*m.x323 - 12.236*m.x324
                          - 10.796*m.x325 - 12.8552*m.x326 - 2.749*m.x327 - 1.8984*m.x328 - 2.13144*m.x329
                          - 1.8984*m.x330 - 2.13144*m.x331 + m.x360 == 0)

m.c174 = Constraint(expr= - 75*m.x147 - 75*m.x148 - 75*m.x149 - 75*m.x150 - 75*m.x151 - 75*m.x152 - 75*m.x153
                          - 75*m.x154 - 75*m.x155 - 75*m.x156 - 75*m.x157 - 75*m.x158 - 75*m.x159 - 75*m.x160
                          - 75*m.x161 - 75*m.x162 - 75*m.x163 - 75*m.x164 - 75*m.x165 - 75*m.x166 - 90*m.x167
                          - 90*m.x168 - 90*m.x169 - 90*m.x170 - 90*m.x171 - 90*m.x172 - 90*m.x173 - 90*m.x174
                          - 90*m.x175 - 90*m.x176 - 90*m.x177 - 90*m.x178 - 90*m.x179 - 90*m.x180 - 90*m.x181
                          - 90*m.x182 - 90*m.x183 - 90*m.x184 - 90*m.x185 - 90*m.x186 - 100*m.x187 - 100*m.x188
                          - 100*m.x189 - 100*m.x190 - 100*m.x191 - 100*m.x192 - 100*m.x193 - 100*m.x194 - 100*m.x195
                          - 100*m.x196 - 100*m.x197 - 100*m.x198 - 100*m.x199 - 100*m.x200 - 100*m.x201 - 100*m.x202
                          - 100*m.x203 - 100*m.x204 - 100*m.x205 - 100*m.x206 - 80*m.x207 - 80*m.x208 - 80*m.x209
                          - 80*m.x210 - 80*m.x211 - 80*m.x212 - 80*m.x213 - 80*m.x214 - 80*m.x215 - 80*m.x216
                          - 80*m.x217 - 80*m.x218 - 80*m.x219 - 80*m.x220 - 80*m.x221 - 80*m.x222 - 80*m.x223
                          - 80*m.x224 - 80*m.x225 - 80*m.x226 - 150*m.x227 - 150*m.x228 - 150*m.x229 - 150*m.x230
                          - 150*m.x231 - 150*m.x232 - 150*m.x233 - 150*m.x234 - 150*m.x235 - 150*m.x236 - 150*m.x237
                          - 150*m.x238 - 150*m.x239 - 150*m.x240 - 150*m.x241 - 150*m.x242 - 150*m.x243 - 150*m.x244
                          - 150*m.x245 - 150*m.x246 - 75*m.x247 - 75*m.x248 - 75*m.x249 - 75*m.x250 - 75*m.x251
                          - 75*m.x252 - 75*m.x253 - 75*m.x254 - 75*m.x255 - 75*m.x256 - 75*m.x257 - 75*m.x258
                          - 75*m.x259 - 75*m.x260 - 75*m.x261 - 75*m.x262 - 75*m.x263 - 75*m.x264 - 75*m.x265
                          - 75*m.x266 - 175*m.x267 - 175*m.x268 - 175*m.x269 - 175*m.x270 - 175*m.x271 - 175*m.x272
                          - 175*m.x273 - 175*m.x274 - 175*m.x275 - 175*m.x276 - 175*m.x277 - 175*m.x278 - 175*m.x279
                          - 175*m.x280 - 175*m.x281 - 175*m.x282 - 175*m.x283 - 175*m.x284 - 175*m.x285 - 175*m.x286
                          - 100*m.x287 - 100*m.x288 - 100*m.x289 - 100*m.x290 - 100*m.x291 - 100*m.x292 - 100*m.x293
                          - 100*m.x294 - 100*m.x295 - 100*m.x296 - 100*m.x297 - 100*m.x298 - 100*m.x299 - 100*m.x300
                          - 100*m.x301 - 100*m.x302 - 100*m.x303 - 100*m.x304 - 100*m.x305 - 100*m.x306 - 130*m.x307
                          - 130*m.x308 - 130*m.x309 - 130*m.x310 - 130*m.x311 - 130*m.x312 - 130*m.x313 - 130*m.x314
                          - 130*m.x315 - 130*m.x316 - 130*m.x317 - 130*m.x318 - 130*m.x319 - 130*m.x320 - 130*m.x321
                          - 130*m.x322 - 130*m.x323 - 130*m.x324 - 130*m.x325 - 130*m.x326 - 55*m.x327 - 55*m.x328
                          - 55*m.x329 - 17.5*m.x330 - 17.5*m.x331 + 2.5*m.x361 == 0)
