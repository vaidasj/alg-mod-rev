#  MCP written by GAMS Convert at 12/13/18 10:30:50
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        351        0      351        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        361      361        0        0        0        0        0        0
#  FX     11       11        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1351      790      561        0
#  
#  Warning: This is a scaled version of the original model
#  =======================================================


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x56 = Var(within=Reals,bounds=(1.008,1.008),initialize=1.008)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x58 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x59 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x60 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x61 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x62 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x63 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x64 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x65 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x66 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x67 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x68 = Var(within=Reals,bounds=(2.19912,2.19912),initialize=2.19912)
m.x69 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x70 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x71 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x72 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x73 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x74 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x75 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x76 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x77 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x78 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x80 = Var(within=Reals,bounds=(0.603,0.603),initialize=0.603)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x90 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x92 = Var(within=Reals,bounds=(0.3135,0.3135),initialize=0.3135)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x104 = Var(within=Reals,bounds=(0.87675,0.87675),initialize=0.87675)
m.x105 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x106 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x107 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x108 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x109 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x110 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x111 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x112 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x113 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x114 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x115 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x116 = Var(within=Reals,bounds=(13.44,13.44),initialize=13.44)
m.x117 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x118 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x119 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x120 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x121 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x122 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x123 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x124 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x125 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x126 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x127 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x128 = Var(within=Reals,bounds=(28.56,28.56),initialize=28.56)
m.x129 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x130 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x131 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x132 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x133 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x134 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x135 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x136 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x137 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x138 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x139 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x140 = Var(within=Reals,bounds=(8.04,8.04),initialize=8.04)
m.x141 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x142 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x143 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x144 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x145 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x146 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x147 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x148 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x149 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x150 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x151 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x152 = Var(within=Reals,bounds=(3.3,3.3),initialize=3.3)
m.x153 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x154 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x155 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x156 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x157 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x158 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x159 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x160 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x161 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x162 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x163 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x164 = Var(within=Reals,bounds=(10.02,10.02),initialize=10.02)
m.x165 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x166 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x167 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x168 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x169 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x170 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x171 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x172 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x173 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x174 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x175 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x176 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x177 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x178 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x179 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x180 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x181 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x182 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x183 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x184 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x185 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x186 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x187 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x188 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x189 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x190 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x191 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x192 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x193 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x194 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x195 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x196 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x197 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x198 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x199 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x200 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x201 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x202 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x203 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x204 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x205 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x206 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x207 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x208 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x209 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x210 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x211 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x212 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x213 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x214 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x215 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x216 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x217 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x218 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x219 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x220 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x221 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x222 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x223 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x224 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x225 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x226 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x227 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x228 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x229 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x230 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x231 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x232 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x233 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x234 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x235 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x236 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x237 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x238 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x239 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x240 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x241 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x242 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x243 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x244 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x245 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x246 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x247 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x248 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x249 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x250 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x251 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x252 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x253 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x254 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x255 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x256 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x257 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x258 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x259 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x260 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x261 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x262 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x263 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x264 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x265 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x266 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x267 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x268 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x269 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x270 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x271 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x272 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x273 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x274 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x275 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x276 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x277 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x278 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x279 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x280 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x281 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x282 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x283 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x284 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x285 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x286 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x287 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x288 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x289 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x290 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x291 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x292 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x293 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x294 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x295 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x296 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x297 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x298 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x299 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x300 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x301 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x302 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x303 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x304 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x305 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x306 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x307 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x308 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x309 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x310 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x311 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x312 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x313 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x314 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x315 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x316 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x317 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x318 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x319 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x320 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x321 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x322 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x323 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x324 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x325 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x326 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x327 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x328 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x329 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x330 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x331 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x332 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x333 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x334 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x335 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x336 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x337 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x338 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x339 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x340 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x341 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x342 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x343 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x344 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x345 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x346 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x347 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x348 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x349 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x350 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x351 = Var(within=Reals,bounds=(1E-4,None),initialize=1)
m.x352 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x353 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x354 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x355 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x356 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x357 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x358 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x359 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x360 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x361 = Var(within=Reals,bounds=(0,None),initialize=1)

m.c1 = Complementarity(expr=(-(5.66633922417018*m.x357/m.x176 + 10.0892278501762*m.x358/m.x176 + 2.54689584020216*m.x359
                             /m.x176 + 1.07624648577234*m.x360/m.x176 + 3.32245643600192*m.x361/m.x176)
                              + 7.1684734474996*m.x1 + 13.3138790638411*m.x12 + 3.43062657844624*m.x23
                              + 1.70826636390619*m.x34 + 4.826446768387*m.x45 - 1.29032522054993*m.x57
                              - 2.87047232616414*m.x69 - 0.771890980150403*m.x81 - 0.486855913713263*m.x93
                              - 1.26694227670159*m.x105 >= 0, m.x176 >= 0.0001))

m.c2 = Complementarity(expr=(-(6.90723589606087*m.x357/m.x177 + 12.2987124514205*m.x358/m.x177 + 3.10465181751429*m.x359
                             /m.x177 + 1.59614364537899*m.x360/m.x177 + 4.59857983552229*m.x361/m.x177)
                              + 8.73832913238259*m.x2 + 16.2295442873073*m.x13 + 4.18191465621167*m.x24
                              + 2.52865152229037*m.x35 + 6.67775891565878*m.x46 - 1.57289924382887*m.x58
                              - 3.49908974834346*m.x70 - 0.940930797647626*m.x82 - 0.720665683852756*m.x94
                              - 1.75291171536043*m.x106 >= 0, m.x177 >= 0.0001))

m.c3 = Complementarity(expr=(-(8.41988201488568*m.x357/m.x178 + 14.9920618514016*m.x358/m.x178 + 3.7845532415765*m.x359/
                             m.x178 + 2.36718499931311*m.x360/m.x178 + 6.36484989675874*m.x361/m.x178)
                              + 10.651974452452*m.x3 + 19.7837239252854*m.x14 + 5.09773063081632*m.x25
                              + 3.74302196442039*m.x36 + 9.23919112249179*m.x47 - 1.91735540144136*m.x59
                              - 4.26537087829154*m.x71 - 1.14698939193367*m.x83 - 1.06676125985981*m.x95
                              - 2.42528766965409*m.x107 >= 0, m.x178 >= 0.0001))

m.c4 = Complementarity(expr=(-(10.0149822724694*m.x357/m.x179 + 17.8322253689669*m.x358/m.x179 + 4.50151600183913*m.x359
                             /m.x179 + 3.42394408244486*m.x360/m.x179 + 8.59331332672308*m.x361/m.x179)
                              + 12.6699323244083*m.x4 + 23.5316414226326*m.x15 + 6.0634676123954*m.x26
                              + 5.40883121681987*m.x37 + 12.477107365305*m.x48 - 2.28058781839349*m.x60
                              - 5.07342189071958*m.x72 - 1.36428021278896*m.x84 - 1.54151689679366*m.x96
                              - 3.27524068339256*m.x108 >= 0, m.x179 >= 0.0001))

m.c5 = Complementarity(expr=(-(11.6227957891039*m.x357/m.x180 + 20.6950255417352*m.x358/m.x180 + 5.22419309463829*m.x359
                             /m.x180 + 4.82981127913273*m.x360/m.x180 + 11.3165907280653*m.x361/m.x180)
                              + 14.7039737127816*m.x5 + 27.309430550818*m.x16 + 7.03690170540262*m.x27
                              + 7.62969061085494*m.x38 + 16.4454233842491*m.x49 - 2.64671526830069*m.x61
                              - 5.88791322675636*m.x73 - 1.58330288371559*m.x85 - 2.17446182409366*m.x97
                              - 4.31692363836538*m.x109 >= 0, m.x180 >= 0.0001))

m.c6 = Complementarity(expr=(-(13.4887290141855*m.x357/m.x181 + 24.0174220161219*m.x358/m.x181 + 6.0628893641422*m.x359/
                             m.x181 + 6.81292580437854*m.x360/m.x181 + 14.9028926139913*m.x361/m.x181)
                              + 17.0645617837797*m.x6 + 31.6937090624133*m.x17 + 8.16661171080884*m.x28
                              + 10.7624321195946*m.x39 + 21.6758534144901*m.x50 - 3.07162112108034*m.x62
                              - 6.83316367385631*m.x74 - 1.83748763493199*m.x86 - 3.06729315408445*m.x98
                              - 5.68991152130364*m.x110 >= 0, m.x181 >= 0.0001))

m.c7 = Complementarity(expr=(-(15.2728943920081*m.x357/m.x182 + 27.1942263525909*m.x358/m.x182 + 6.86483277049989*m.x359
                             /m.x182 + 9.37175341329223*m.x360/m.x182 + 19.1417798634357*m.x361/m.x182)
                              + 19.3217055287772*m.x7 + 35.8858622552363*m.x18 + 9.24681621734336*m.x29
                              + 14.8187314811743*m.x40 + 27.8825732899576*m.x51 - 3.47790699517989*m.x63
                              - 7.73699190222894*m.x75 - 2.08053364890226*m.x87 - 4.22333847213468*m.x99
                              - 7.31917548861386*m.x111 >= 0, m.x182 >= 0.0001))

m.c8 = Complementarity(expr=(-(17.2930528046136*m.x357/m.x183 + 30.7912292343257*m.x358/m.x183 + 7.77284989656029*m.x359
                             /m.x183 + 12.8916363632065*m.x360/m.x183 + 24.58635016911*m.x361/m.x183)
                              + 21.877403549597*m.x8 + 40.6325150289536*m.x19 + 10.4699002701643*m.x30
                              + 20.4038269668937*m.x41 + 35.8665413722602*m.x52 - 3.93793263892746*m.x64
                              - 8.7603702402424*m.x76 - 2.35572756078696*m.x88 - 5.81509068556469*m.x100
                              - 9.4149671102183*m.x112 >= 0, m.x183 >= 0.0001))

m.c9 = Complementarity(expr=(-(19.3400242281025*m.x357/m.x184 + 34.4359741529295*m.x358/m.x184 + 8.69291888594563*m.x359
                             /m.x184 + 17.5116691488265*m.x360/m.x184 + 31.1870660799003*m.x361/m.x184)
                              + 24.4670226522584*m.x9 + 45.4421688285745*m.x20 + 11.7092179835808*m.x31
                              + 27.7556400986846*m.x42 + 45.5773662971393*m.x53 - 4.40406407740652*m.x65
                              - 9.79733159944066*m.x77 - 2.63457404630569*m.x89 - 7.91035742812511*m.x101
                              - 11.9640586529991*m.x113 >= 0, m.x184 >= 0.0001))

m.c10 = Complementarity(expr=(-(21.3634186683508*m.x357/m.x185 + 38.0387389594143*m.x358/m.x185 + 9.60239053582045*
                              m.x359/m.x185 + 23.4894558756668*m.x360/m.x185 + 39.0676434342525*m.x361/m.x185)
                               + 27.0268145646218*m.x10 + 50.1964251147147*m.x21 + 12.9342612559262*m.x32
                               + 37.3012593478027*m.x43 + 57.2144283156484*m.x54 - 4.86482662163193*m.x66
                               - 10.8223492547325*m.x78 - 2.91020878258338*m.x90 - 10.6308589141238*m.x102
                               - 15.0187874328577*m.x114 >= 0, m.x185 >= 0.0001))

m.c11 = Complementarity(expr=(-(72.7370489568774*m.x357/m.x186 + 129.512306101446*m.x358/m.x186 + 32.6937163639337*
                              m.x359/m.x186 + 175.382815748161*m.x360/m.x186 + 209.24870377298*m.x361/m.x186)
                               + 29.854417347467*m.x11 + 55.4480817982605*m.x22 + 14.2874711591449*m.x33
                               + 50.1297734076751*m.x44 + 71.8227285478742*m.x55 - 5.37379512254407*m.x67
                               - 11.954606435705*m.x79 - 3.21468101080761*m.x91 - 14.2869854211874*m.x103
                               - 18.853466243817*m.x115 >= 0, m.x186 >= 0.0001))

m.c12 = Complementarity(expr=(   3.0695662677038*m.x56 + 6.45162610274964*m.x57 + 0.613913253540759*m.x116
                               - 17.204336273999*m.x117 >= 0, m.x247 >= 0))

m.c13 = Complementarity(expr=(   3.96073877136752*m.x57 + 7.86449621914433*m.x58 + 10.56197005698*m.x117
                               - 20.9719899177182*m.x118 >= 0, m.x248 >= 0))

m.c14 = Complementarity(expr=(   4.8281184613539*m.x58 + 9.58677700720681*m.x59 + 12.8749825636104*m.x118
                               - 25.5647386858848*m.x119 >= 0, m.x249 >= 0))

m.c15 = Complementarity(expr=(   5.88544946346407*m.x59 + 11.4029390919675*m.x60 + 15.6945319025709*m.x119
                               - 30.4078375785799*m.x120 >= 0, m.x250 >= 0))

m.c16 = Complementarity(expr=(   7.00041543787685*m.x60 + 13.2335763415034*m.x61 + 18.6677745010049*m.x120
                               - 35.2895369106758*m.x121 >= 0, m.x251 >= 0))

m.c17 = Complementarity(expr=(   8.12426790779239*m.x61 + 15.3581056054017*m.x62 + 21.6647144207797*m.x121
                               - 40.9549482810712*m.x122 >= 0, m.x252 >= 0))

m.c18 = Complementarity(expr=(   9.42854458043472*m.x62 + 17.3895349758994*m.x63 + 25.1427855478259*m.x122
                               - 46.3720932690652*m.x123 >= 0, m.x253 >= 0))

m.c19 = Complementarity(expr=(   10.6756659946153*m.x63 + 19.6896631946373*m.x64 + 28.4684426523073*m.x123
                               - 52.5057685190327*m.x124 >= 0, m.x254 >= 0))

m.c20 = Complementarity(expr=(   12.0877451929415*m.x64 + 22.0203203870326*m.x65 + 32.2339871811773*m.x124
                               - 58.7208543654203*m.x125 >= 0, m.x255 >= 0))

m.c21 = Complementarity(expr=(   13.5185665328131*m.x65 + 24.3241331081596*m.x66 + 36.0495107541682*m.x125
                               - 64.8643549550923*m.x126 >= 0, m.x256 >= 0))

m.c22 = Complementarity(expr=(   14.9329076959888*m.x66 + 26.8689756127203*m.x67 + 39.8210871893034*m.x126
                               - 71.6506016339209*m.x127 >= 0, m.x257 >= 0))

m.c23 = Complementarity(expr=(   3.0695662677038*m.x68 + 14.3523616308207*m.x69 + 0.613913253540759*m.x128
                               - 37.2788613787551*m.x129 >= 0, m.x258 >= 0))

m.c24 = Complementarity(expr=(   8.81110502477071*m.x69 + 17.4954487417173*m.x70 + 22.8859870773265*m.x129
                               - 45.4427240044606*m.x130 >= 0, m.x259 >= 0))

m.c25 = Complementarity(expr=(   10.7406878591833*m.x70 + 21.3268543914577*m.x71 + 27.8978905433331*m.x130
                               - 55.3944269907992*m.x131 >= 0, m.x260 >= 0))

m.c26 = Complementarity(expr=(   13.0928385672498*m.x71 + 25.3671094535979*m.x72 + 34.0073729019476*m.x131
                               - 65.8885959833712*m.x132 >= 0, m.x261 >= 0))

m.c27 = Complementarity(expr=(   15.5732046975829*m.x72 + 29.4395661337818*m.x73 + 40.449882331384*m.x132
                               - 76.4664055422903*m.x133 >= 0, m.x262 >= 0))

m.c28 = Complementarity(expr=(   18.0733398280183*m.x73 + 34.1658183692816*m.x74 + 46.9437398130346*m.x133
                               - 88.7423853747572*m.x134 >= 0, m.x263 >= 0))

m.c29 = Complementarity(expr=(   20.9748487149683*m.x74 + 38.6849595111447*m.x75 + 54.4801265323851*m.x134
                               - 100.480414314662*m.x135 >= 0, m.x264 >= 0))

m.c30 = Complementarity(expr=(   23.7492093565794*m.x75 + 43.801851201212*m.x76 + 61.6862580690374*m.x135
                               - 113.77104208107*m.x136 >= 0, m.x265 >= 0))

m.c31 = Complementarity(expr=(   26.8905369820443*m.x76 + 48.9866579972033*m.x77 + 69.8455506027124*m.x136
                               - 127.238072720009*m.x137 >= 0, m.x266 >= 0))

m.c32 = Complementarity(expr=(   30.0735585911515*m.x77 + 54.1117462736625*m.x78 + 78.1131391977961*m.x137
                               - 140.549990321201*m.x138 >= 0, m.x267 >= 0))

m.c33 = Complementarity(expr=(   33.2199182096362*m.x78 + 59.7730321785249*m.x79 + 86.2855018432108*m.x138
                               - 155.254629035129*m.x139 >= 0, m.x268 >= 0))

m.c34 = Complementarity(expr=(   3.0695662677038*m.x80 + 3.85945490075202*m.x81 + 0.613913253540759*m.x140
                               - 10.2918797353387*m.x141 >= 0, m.x269 >= 0))

m.c35 = Complementarity(expr=(   2.3693705150145*m.x81 + 4.70465398823813*m.x82 + 6.31832137337199*m.x141
                               - 12.545743968635*m.x142 >= 0, m.x270 >= 0))

m.c36 = Complementarity(expr=(   2.88824943670278*m.x82 + 5.73494695966836*m.x83 + 7.70199849787407*m.x142
                               - 15.293191892449*m.x143 >= 0, m.x271 >= 0))

m.c37 = Complementarity(expr=(   3.52075994689369*m.x83 + 6.82140106394482*m.x84 + 9.3886931917165*m.x143
                               - 18.1904028371862*m.x144 >= 0, m.x272 >= 0))

m.c38 = Complementarity(expr=(   4.18774852087276*m.x84 + 7.91651441857795*m.x85 + 11.167329388994*m.x144
                               - 21.1107051162079*m.x145 >= 0, m.x273 >= 0))

m.c39 = Complementarity(expr=(   4.86005312341152*m.x85 + 9.18743817465994*m.x86 + 12.9601416624307*m.x145
                               - 24.4998351324265*m.x146 >= 0, m.x274 >= 0))

m.c40 = Complementarity(expr=(   5.64029006151006*m.x86 + 10.4026682445113*m.x87 + 15.0407734973602*m.x146
                               - 27.7404486520301*m.x147 >= 0, m.x275 >= 0))

m.c41 = Complementarity(expr=(   6.38633590749306*m.x87 + 11.7786378039348*m.x88 + 17.0302290866481*m.x147
                               - 31.4097008104928*m.x148 >= 0, m.x276 >= 0))

m.c42 = Complementarity(expr=(   7.2310618564918*m.x88 + 13.1728702315284*m.x89 + 19.2828316173115*m.x148
                               - 35.1276539507425*m.x149 >= 0, m.x277 >= 0))

m.c43 = Complementarity(expr=(   8.08699962230783*m.x89 + 14.5510439129169*m.x90 + 21.5653323261542*m.x149
                               - 38.8027837677785*m.x150 >= 0, m.x278 >= 0))

m.c44 = Complementarity(expr=(   8.93307871099329*m.x90 + 16.0734050540381*m.x91 + 23.8215432293154*m.x150
                               - 42.8624134774348*m.x151 >= 0, m.x279 >= 0))

m.c45 = Complementarity(expr=(   3.0695662677038*m.x92 + 2.43427956856631*m.x93 + 0.613913253540759*m.x152
                               - 5.12479909171856*m.x153 >= 0, m.x280 >= 0))

m.c46 = Complementarity(expr=(   1.49443648996634*m.x93 + 3.60332841926378*m.x94 + 3.14618208413967*m.x153
                               - 7.58595456687112*m.x154 >= 0, m.x281 >= 0))

m.c47 = Complementarity(expr=(   2.21213107344611*m.x94 + 5.33380629929906*m.x95 + 4.65711804936023*m.x154
                               - 11.2290658932612*m.x155 >= 0, m.x282 >= 0))

m.c48 = Complementarity(expr=(   3.27449437895888*m.x95 + 7.70758448396831*m.x96 + 6.89367237675554*m.x155
                               - 16.2264936504596*m.x156 >= 0, m.x283 >= 0))

m.c49 = Complementarity(expr=(   4.73178826749326*m.x96 + 10.8723091204683*m.x97 + 9.96165951051213*m.x156
                               - 22.8890718325648*m.x157 >= 0, m.x284 >= 0))

m.c50 = Complementarity(expr=(   6.67465466564756*m.x97 + 15.3364657704223*m.x98 + 14.051904559258*m.x157
                               - 32.2872963587837*m.x158 >= 0, m.x285 >= 0))

m.c51 = Complementarity(expr=(   9.41525959893642*m.x98 + 21.1166923606734*m.x99 + 19.8215991556556*m.x158
                               - 44.4561944435229*m.x159 >= 0, m.x286 >= 0))

m.c52 = Complementarity(expr=(   12.9638173111603*m.x99 + 29.0754534278235*m.x100 + 27.2922469708638*m.x159
                               - 61.211480900681*m.x160 >= 0, m.x287 >= 0))

m.c53 = Complementarity(expr=(   17.8498062120479*m.x100 + 39.5517871406255*m.x101 + 37.5785393937851*m.x160
                               - 83.2669202960538*m.x161 >= 0, m.x288 >= 0))

m.c54 = Complementarity(expr=(   24.281366326853*m.x101 + 53.1542945706189*m.x102 + 51.1186659512694*m.x161
                               - 111.903778043408*m.x162 >= 0, m.x289 >= 0))

m.c55 = Complementarity(expr=(   32.6321259195126*m.x102 + 71.4349271059371*m.x103 + 68.6992124621317*m.x162
                               - 150.389320223025*m.x163 >= 0, m.x290 >= 0))

m.c56 = Complementarity(expr=(   3.0695662677038*m.x104 + 6.33471138350793*m.x105 + 0.613913253540759*m.x164
                               - 14.479340305161*m.x165 >= 0, m.x291 >= 0))

m.c57 = Complementarity(expr=(   3.88896327569104*m.x105 + 8.76455857680215*m.x106 + 8.88905891586523*m.x165
                               - 20.0332767469763*m.x166 >= 0, m.x292 >= 0))

m.c58 = Complementarity(expr=(   5.38067867173317*m.x106 + 12.1264383482705*m.x107 + 12.2986941068187*m.x166
                               - 27.7175733674754*m.x167 >= 0, m.x293 >= 0))

m.c59 = Complementarity(expr=(   7.44458122024815*m.x107 + 16.3762034169628*m.x108 + 17.0161856462815*m.x167
                               - 37.431322095915*m.x168 >= 0, m.x294 >= 0))

m.c60 = Complementarity(expr=(   10.0535683203529*m.x108 + 21.5846181918269*m.x109 + 22.9795847322353*m.x168
                               - 49.3362701527472*m.x169 >= 0, m.x295 >= 0))

m.c61 = Complementarity(expr=(   13.2510831805795*m.x109 + 28.4495576065182*m.x110 + 30.2881901270389*m.x169
                               - 65.0275602434702*m.x170 >= 0, m.x296 >= 0))

m.c62 = Complementarity(expr=(   17.4655604720129*m.x110 + 36.5958774430693*m.x111 + 39.9212810788865*m.x170
                               - 83.6477198698727*m.x171 >= 0, m.x297 >= 0))

m.c63 = Complementarity(expr=(   22.4666941872536*m.x111 + 47.0748355510915*m.x112 + 51.3524438565796*m.x171
                               - 107.599624116781*m.x172 >= 0, m.x298 >= 0))

m.c64 = Complementarity(expr=(   28.8998654530668*m.x112 + 59.8202932649953*m.x113 + 66.0568353212955*m.x172
                               - 136.732098891418*m.x173 >= 0, m.x299 >= 0))

m.c65 = Complementarity(expr=(   36.7244708660757*m.x113 + 75.0939371642885*m.x114 + 83.9416476938872*m.x173
                               - 171.643284946945*m.x174 >= 0, m.x300 >= 0))

m.c66 = Complementarity(expr=(   46.1011632857137*m.x114 + 94.2673312190849*m.x115 + 105.374087510203*m.x174
                               - 215.468185643623*m.x175 >= 0, m.x301 >= 0))

m.c67 = Complementarity(expr=(-17.204336273999*m.x192**0.76*m.x1*m.x302**0.24/m.x302 + 17.204336273999*m.x117
                               >= 0, m.x302 >= 0.0001))

m.c68 = Complementarity(expr=(-20.9719899177182*m.x193**0.76*m.x2*m.x303**0.24/m.x303 + 20.9719899177182*m.x118
                               >= 0, m.x303 >= 0.0001))

m.c69 = Complementarity(expr=(-25.5647386858848*(1*m.x194)**0.76*m.x3*m.x304**0.24/m.x304 + 25.5647386858848*m.x119
                               >= 0, m.x304 >= 0.0001))

m.c70 = Complementarity(expr=(-30.4078375785799*m.x195**0.76*m.x4*m.x305**0.24/m.x305 + 30.4078375785799*m.x120
                               >= 0, m.x305 >= 0.0001))

m.c71 = Complementarity(expr=(-35.2895369106758*(1*m.x196)**0.76*m.x5*m.x306**0.24/m.x306 + 35.2895369106758*m.x121
                               >= 0, m.x306 >= 0.0001))

m.c72 = Complementarity(expr=(-40.9549482810712*m.x197**0.76*m.x6*m.x307**0.24/m.x307 + 40.9549482810712*m.x122
                               >= 0, m.x307 >= 0.0001))

m.c73 = Complementarity(expr=(-46.3720932690652*m.x198**0.76*m.x7*m.x308**0.24/m.x308 + 46.3720932690652*m.x123
                               >= 0, m.x308 >= 1E-4))

m.c74 = Complementarity(expr=(-52.5057685190327*m.x199**0.76*m.x8*m.x309**0.24/m.x309 + 52.5057685190327*m.x124
                               >= 0, m.x309 >= 1E-4))

m.c75 = Complementarity(expr=(-58.7208543654203*m.x200**0.76*m.x9*m.x310**0.24/m.x310 + 58.7208543654203*m.x125
                               >= 0, m.x310 >= 0.0001))

m.c76 = Complementarity(expr=(-64.8643549550924*m.x201**0.76*m.x10*(1*m.x311)**0.24/m.x311 + 64.8643549550923*m.x126
                               >= 0, m.x311 >= 0.0001))

m.c77 = Complementarity(expr=(-71.6506016339209*m.x202**0.76*m.x11*m.x312**0.24/m.x312 + 71.6506016339209*m.x127
                               >= 0, m.x312 >= 0.0001))

m.c78 = Complementarity(expr=(-37.2788613787551*m.x203**0.72*m.x12*m.x313**0.28/m.x313 + 37.2788613787551*m.x129
                               >= 0, m.x313 >= 0.0001))

m.c79 = Complementarity(expr=(-45.4427240044606*m.x204**0.72*m.x13*m.x314**0.28/m.x314 + 45.4427240044606*m.x130
                               >= 0, m.x314 >= 0.0001))

m.c80 = Complementarity(expr=(-55.3944269907992*(1*m.x205)**0.72*m.x14*m.x315**0.28/m.x315 + 55.3944269907992*m.x131
                               >= 0, m.x315 >= 0.0001))

m.c81 = Complementarity(expr=(-65.8885959833712*m.x206**0.72*m.x15*m.x316**0.28/m.x316 + 65.8885959833712*m.x132
                               >= 0, m.x316 >= 0.0001))

m.c82 = Complementarity(expr=(-76.4664055422904*(1*m.x207)**0.72*m.x16*(1*m.x317)**0.28/m.x317 + 76.4664055422903*m.x133
                               >= 0, m.x317 >= 0.0001))

m.c83 = Complementarity(expr=(-88.7423853747573*m.x208**0.72*m.x17*m.x318**0.28/m.x318 + 88.7423853747572*m.x134
                               >= 0, m.x318 >= 1E-4))

m.c84 = Complementarity(expr=(-100.480414314662*m.x209**0.72*m.x18*m.x319**0.28/m.x319 + 100.480414314662*m.x135
                               >= 0, m.x319 >= 0.0001))

m.c85 = Complementarity(expr=(-113.77104208107*m.x210**0.72*m.x19*(1*m.x320)**0.28/m.x320 + 113.77104208107*m.x136
                               >= 0, m.x320 >= 1E-4))

m.c86 = Complementarity(expr=(-127.238072720009*m.x211**0.72*m.x20*m.x321**0.28/m.x321 + 127.238072720009*m.x137
                               >= 0, m.x321 >= 0.0001))

m.c87 = Complementarity(expr=(-140.549990321201*m.x212**0.72*m.x21*m.x322**0.28/m.x322 + 140.549990321201*m.x138
                               >= 0, m.x322 >= 0.0001))

m.c88 = Complementarity(expr=(-155.254629035129*m.x213**0.72*m.x22*m.x323**0.28/m.x323 + 155.254629035129*m.x139
                               >= 0, m.x323 >= 0.0001))

m.c89 = Complementarity(expr=(-10.2918797353387*m.x214**0.7*m.x23*(1*m.x324)**0.3/m.x324 + 10.2918797353387*m.x141
                               >= 0, m.x324 >= 0.0001))

m.c90 = Complementarity(expr=(-12.545743968635*m.x215**0.7*m.x24*m.x325**0.3/m.x325 + 12.545743968635*m.x142
                               >= 0, m.x325 >= 1E-4))

m.c91 = Complementarity(expr=(-15.293191892449*(1*m.x216)**0.7*m.x25*m.x326**0.3/m.x326 + 15.293191892449*m.x143
                               >= 0, m.x326 >= 1E-4))

m.c92 = Complementarity(expr=(-18.1904028371862*m.x217**0.7*m.x26*m.x327**0.3/m.x327 + 18.1904028371862*m.x144
                               >= 0, m.x327 >= 0.0001))

m.c93 = Complementarity(expr=(-21.1107051162079*(1*m.x218)**0.7*m.x27*m.x328**0.3/m.x328 + 21.1107051162079*m.x145
                               >= 0, m.x328 >= 0.0001))

m.c94 = Complementarity(expr=(-24.4998351324265*m.x219**0.7*m.x28*m.x329**0.3/m.x329 + 24.4998351324265*m.x146
                               >= 0, m.x329 >= 0.0001))

m.c95 = Complementarity(expr=(-27.7404486520301*m.x220**0.7*m.x29*m.x330**0.3/m.x330 + 27.7404486520301*m.x147
                               >= 0, m.x330 >= 1E-4))

m.c96 = Complementarity(expr=(-31.4097008104928*m.x221**0.7*m.x30*m.x331**0.3/m.x331 + 31.4097008104928*m.x148
                               >= 0, m.x331 >= 1E-4))

m.c97 = Complementarity(expr=(-35.1276539507425*m.x222**0.7*m.x31*m.x332**0.3/m.x332 + 35.1276539507425*m.x149
                               >= 0, m.x332 >= 0.0001))

m.c98 = Complementarity(expr=(-38.8027837677785*m.x223**0.7*m.x32*(1*m.x333)**0.3/m.x333 + 38.8027837677785*m.x150
                               >= 0, m.x333 >= 1E-4))

m.c99 = Complementarity(expr=(-42.8624134774348*m.x224**0.7*m.x33*m.x334**0.3/m.x334 + 42.8624134774348*m.x151
                               >= 0, m.x334 >= 0.0001))

m.c100 = Complementarity(expr=(-5.12479909171856*m.x225**0.7*m.x34*(1*m.x335)**0.3/m.x335 + 5.12479909171856*m.x153
                                >= 0, m.x335 >= 0.0001))

m.c101 = Complementarity(expr=(-7.58595456687112*m.x226**0.7*m.x35*m.x336**0.3/m.x336 + 7.58595456687112*m.x154
                                >= 0, m.x336 >= 0.0001))

m.c102 = Complementarity(expr=(-11.2290658932612*m.x227**0.7*m.x36*m.x337**0.3/m.x337 + 11.2290658932612*m.x155
                                >= 0, m.x337 >= 1E-4))

m.c103 = Complementarity(expr=(-16.2264936504596*(1*m.x228)**0.7*m.x37*m.x338**0.3/m.x338 + 16.2264936504596*m.x156
                                >= 0, m.x338 >= 1E-4))

m.c104 = Complementarity(expr=(-22.8890718325648*m.x229**0.7*m.x38*m.x339**0.3/m.x339 + 22.8890718325648*m.x157
                                >= 0, m.x339 >= 1E-4))

m.c105 = Complementarity(expr=(-32.2872963587837*m.x230**0.7*m.x39*m.x340**0.3/m.x340 + 32.2872963587837*m.x158
                                >= 0, m.x340 >= 1E-4))

m.c106 = Complementarity(expr=(-44.4561944435229*m.x231**0.7*m.x40*m.x341**0.3/m.x341 + 44.4561944435229*m.x159
                                >= 0, m.x341 >= 1E-4))

m.c107 = Complementarity(expr=(-61.211480900681*m.x232**0.7*m.x41*m.x342**0.3/m.x342 + 61.211480900681*m.x160
                                >= 0, m.x342 >= 0.0001))

m.c108 = Complementarity(expr=(-83.2669202960538*(1*m.x233)**0.7*m.x42*m.x343**0.3/m.x343 + 83.2669202960538*m.x161
                                >= 0, m.x343 >= 1E-4))

m.c109 = Complementarity(expr=(-111.903778043408*m.x234**0.7*m.x43*m.x344**0.3/m.x344 + 111.903778043408*m.x162
                                >= 0, m.x344 >= 0.0001))

m.c110 = Complementarity(expr=(-150.389320223025*m.x235**0.7*m.x44*(1*m.x345)**0.3/m.x345 + 150.389320223025*m.x163
                                >= 0, m.x345 >= 0.0001))

m.c111 = Complementarity(expr=(-14.479340305161*m.x236**0.7*m.x45*(1*m.x346)**0.3/m.x346 + 14.479340305161*m.x165
                                >= 0, m.x346 >= 0.0001))

m.c112 = Complementarity(expr=(-20.0332767469763*m.x237**0.7*m.x46*m.x347**0.3/m.x347 + 20.0332767469763*m.x166
                                >= 0, m.x347 >= 1E-4))

m.c113 = Complementarity(expr=(-27.7175733674754*m.x238**0.7*m.x47*(1*m.x348)**0.3/m.x348 + 27.7175733674754*m.x167
                                >= 0, m.x348 >= 1E-4))

m.c114 = Complementarity(expr=(-37.431322095915*m.x239**0.7*m.x48*m.x349**0.3/m.x349 + 37.431322095915*m.x168
                                >= 0, m.x349 >= 0.0001))

m.c115 = Complementarity(expr=(-49.3362701527472*m.x240**0.7*m.x49*m.x350**0.3/m.x350 + 49.3362701527472*m.x169
                                >= 0, m.x350 >= 0.0001))

m.c116 = Complementarity(expr=(-65.0275602434702*m.x241**0.7*m.x50*m.x351**0.3/m.x351 + 65.0275602434702*m.x170
                                >= 0, m.x351 >= 1E-4))

m.c117 = Complementarity(expr=(-83.6477198698727*m.x242**0.7*m.x51*m.x352**0.3/m.x352 + 83.6477198698727*m.x171
                                >= 0, m.x352 >= 0.0001))

m.c118 = Complementarity(expr=(-107.599624116781*m.x243**0.7*m.x52*m.x353**0.3/m.x353 + 107.599624116781*m.x172
                                >= 0, m.x353 >= 0.0001))

m.c119 = Complementarity(expr=(-136.732098891418*m.x244**0.7*m.x53*m.x354**0.3/m.x354 + 136.732098891418*m.x173
                                >= 0, m.x354 >= 0.0001))

m.c120 = Complementarity(expr=(-171.643284946945*m.x245**0.7*m.x54*m.x355**0.3/m.x355 + 171.643284946945*m.x174
                                >= 0, m.x355 >= 0.0001))

m.c121 = Complementarity(expr=(-215.468185643623*m.x246**0.7*m.x55*m.x356**0.3/m.x356 + 215.468185643623*m.x175
                                >= 0, m.x356 >= 0.0001))

m.c122 = Complementarity(expr=(-5.44803982009969*m.x192**0.76*m.x1*m.x302**0.24/m.x192
                                >= -5.44803982009969, m.x192 >= 0.0001))

m.c123 = Complementarity(expr=(-6.64113014061077*m.x193**0.76*m.x2*m.x303**0.24/m.x193
                                >= -6.64113014061077, m.x193 >= 0.0001))

m.c124 = Complementarity(expr=(-8.09550058386353*(1*m.x194)**0.76*m.x3*m.x304**0.24/m.x194
                                >= -8.09550058386353, m.x194 >= 0.0001))

m.c125 = Complementarity(expr=(-9.6291485665503*m.x195**0.76*m.x4*m.x305**0.24/m.x195
                                >= -9.6291485665503, m.x195 >= 0.0001))

m.c126 = Complementarity(expr=(-11.175020021714*(1*m.x196)**0.76*m.x5*m.x306**0.24/m.x196
                                >= -11.175020021714, m.x196 >= 0.0001))

m.c127 = Complementarity(expr=(-12.9690669556725*m.x197**0.76*m.x6*m.x307**0.24/m.x197
                                >= -12.9690669556725, m.x197 >= 0.0001))

m.c128 = Complementarity(expr=(-14.6844962018706*m.x198**0.76*m.x7*m.x308**0.24/m.x198
                                >= -14.6844962018706, m.x198 >= 0.0001))

m.c129 = Complementarity(expr=(-16.6268266976937*m.x199**0.76*m.x8*m.x309**0.24/m.x199
                                >= -16.6268266976937, m.x199 >= 0.0001))

m.c130 = Complementarity(expr=(-18.5949372157164*m.x200**0.76*m.x9*m.x310**0.24/m.x200
                                >= -18.5949372157164, m.x200 >= 0.0001))

m.c131 = Complementarity(expr=(-20.5403790691126*m.x201**0.76*m.x10*(1*m.x311)**0.24/m.x201
                                >= -20.5403790691126, m.x201 >= 0.0001))

m.c132 = Complementarity(expr=(-22.689357184075*m.x202**0.76*m.x11*m.x312**0.24/m.x202
                                >= -22.689357184075, m.x202 >= 0.0001))

m.c133 = Complementarity(expr=(-9.5859929259656*m.x203**0.72*m.x12*m.x313**0.28/m.x203
                                >= -9.5859929259656, m.x203 >= 0.0001))

m.c134 = Complementarity(expr=(-11.6852718868613*m.x204**0.72*m.x13*m.x314**0.28/m.x204
                                >= -11.6852718868613, m.x204 >= 0.0001))

m.c135 = Complementarity(expr=(-14.2442812262055*(1*m.x205)**0.72*m.x14*m.x315**0.28/m.x205
                                >= -14.2442812262055, m.x205 >= 0.0001))

m.c136 = Complementarity(expr=(-16.9427818242955*m.x206**0.72*m.x15*m.x316**0.28/m.x206
                                >= -16.9427818242955, m.x206 >= 0.0001))

m.c137 = Complementarity(expr=(-19.662789996589*(1*m.x207)**0.72*m.x16*(1*m.x317)**0.28/m.x207
                                >= -19.6627899965889, m.x207 >= 0.0001))

m.c138 = Complementarity(expr=(-22.8194705249376*m.x208**0.72*m.x17*m.x318**0.28/m.x208
                                >= -22.8194705249376, m.x208 >= 0.0001))

m.c139 = Complementarity(expr=(-25.8378208237701*m.x209**0.72*m.x18*m.x319**0.28/m.x209
                                >= -25.8378208237701, m.x209 >= 0.0001))

m.c140 = Complementarity(expr=(-29.2554108208466*m.x210**0.72*m.x19*(1*m.x320)**0.28/m.x210
                                >= -29.2554108208466, m.x210 >= 0.0001))

m.c141 = Complementarity(expr=(-32.7183615565736*m.x211**0.72*m.x20*m.x321**0.28/m.x211
                                >= -32.7183615565736, m.x211 >= 0.0001))

m.c142 = Complementarity(expr=(-36.1414260825946*m.x212**0.72*m.x21*m.x322**0.28/m.x212
                                >= -36.1414260825946, m.x212 >= 0.0001))

m.c143 = Complementarity(expr=(-39.9226188947476*m.x213**0.72*m.x22*m.x323**0.28/m.x213
                                >= -39.9226188947476, m.x213 >= 0.0001))

m.c144 = Complementarity(expr=(-2.40143860491237*m.x214**0.7*m.x23*(1*m.x324)**0.3/m.x214
                                >= -2.40143860491237, m.x214 >= 0.0001))

m.c145 = Complementarity(expr=(-2.92734025934817*m.x215**0.7*m.x24*m.x325**0.3/m.x215
                                >= -2.92734025934817, m.x215 >= 0.0001))

m.c146 = Complementarity(expr=(-3.56841144157142*(1*m.x216)**0.7*m.x25*m.x326**0.3/m.x216
                                >= -3.56841144157142, m.x216 >= 0.0001))

m.c147 = Complementarity(expr=(-4.24442732867678*m.x217**0.7*m.x26*m.x327**0.3/m.x217
                                >= -4.24442732867678, m.x217 >= 0.0001))

m.c148 = Complementarity(expr=(-4.92583119378184*(1*m.x218)**0.7*m.x27*m.x328**0.3/m.x218
                                >= -4.92583119378184, m.x218 >= 0.0001))

m.c149 = Complementarity(expr=(-5.71662819756619*m.x219**0.7*m.x28*m.x329**0.3/m.x219
                                >= -5.71662819756619, m.x219 >= 0.0001))

m.c150 = Complementarity(expr=(-6.47277135214035*m.x220**0.7*m.x29*m.x330**0.3/m.x220
                                >= -6.47277135214035, m.x220 >= 0.0001))

m.c151 = Complementarity(expr=(-7.32893018911499*m.x221**0.7*m.x30*m.x331**0.3/m.x221
                                >= -7.32893018911499, m.x221 >= 0.0001))

m.c152 = Complementarity(expr=(-8.19645258850658*m.x222**0.7*m.x31*m.x332**0.3/m.x222
                                >= -8.19645258850658, m.x222 >= 0.0001))

m.c153 = Complementarity(expr=(-9.05398287914831*m.x223**0.7*m.x32*(1*m.x333)**0.3/m.x223
                                >= -9.05398287914831, m.x223 >= 0.0001))

m.c154 = Complementarity(expr=(-10.0012298114015*m.x224**0.7*m.x33*m.x334**0.3/m.x224
                                >= -10.0012298114015, m.x224 >= 0.0001))

m.c155 = Complementarity(expr=(-1.19578645473433*m.x225**0.7*m.x34*(1*m.x335)**0.3/m.x225
                                >= -1.19578645473433, m.x225 >= 0.0001))

m.c156 = Complementarity(expr=(-1.77005606560326*m.x226**0.7*m.x35*m.x336**0.3/m.x226
                                >= -1.77005606560326, m.x226 >= 0.0001))

m.c157 = Complementarity(expr=(-2.62011537509428*m.x227**0.7*m.x36*m.x337**0.3/m.x227
                                >= -2.62011537509428, m.x227 >= 0.0001))

m.c158 = Complementarity(expr=(-3.78618185177391*(1*m.x228)**0.7*m.x37*m.x338**0.3/m.x228
                                >= -3.78618185177391, m.x228 >= 0.0001))

m.c159 = Complementarity(expr=(-5.34078342759846*m.x229**0.7*m.x38*m.x339**0.3/m.x229
                                >= -5.34078342759846, m.x229 >= 0.0001))

m.c160 = Complementarity(expr=(-7.53370248371621*m.x230**0.7*m.x39*m.x340**0.3/m.x230
                                >= -7.5337024837162, m.x230 >= 1E-4))

m.c161 = Complementarity(expr=(-10.373112036822*m.x231**0.7*m.x40*m.x341**0.3/m.x231
                                >= -10.373112036822, m.x231 >= 0.0001))

m.c162 = Complementarity(expr=(-14.2826788768256*m.x232**0.7*m.x41*m.x342**0.3/m.x232
                                >= -14.2826788768256, m.x232 >= 0.0001))

m.c163 = Complementarity(expr=(-19.4289480690792*(1*m.x233)**0.7*m.x42*m.x343**0.3/m.x233
                                >= -19.4289480690792, m.x233 >= 0.0001))

m.c164 = Complementarity(expr=(-26.1108815434619*m.x234**0.7*m.x43*m.x344**0.3/m.x234
                                >= -26.1108815434619, m.x234 >= 0.0001))

m.c165 = Complementarity(expr=(-35.0908413853726*m.x235**0.7*m.x44*(1*m.x345)**0.3/m.x235
                                >= -35.0908413853726, m.x235 >= 0.0001))

m.c166 = Complementarity(expr=(-3.3785127378709*m.x236**0.7*m.x45*(1*m.x346)**0.3/m.x236
                                >= -3.3785127378709, m.x236 >= 0.0001))

m.c167 = Complementarity(expr=(-4.67443124096115*m.x237**0.7*m.x46*m.x347**0.3/m.x237
                                >= -4.67443124096115, m.x237 >= 0.0001))

m.c168 = Complementarity(expr=(-6.46743378574425*m.x238**0.7*m.x47*(1*m.x348)**0.3/m.x238
                                >= -6.46743378574425, m.x238 >= 0.0001))

m.c169 = Complementarity(expr=(-8.73397515571351*m.x239**0.7*m.x48*m.x349**0.3/m.x239
                                >= -8.73397515571351, m.x239 >= 0.0001))

m.c170 = Complementarity(expr=(-11.5117963689743*m.x240**0.7*m.x49*m.x350**0.3/m.x240
                                >= -11.5117963689743, m.x240 >= 0.0001))

m.c171 = Complementarity(expr=(-15.1730973901431*m.x241**0.7*m.x50*m.x351**0.3/m.x241
                                >= -15.1730973901431, m.x241 >= 0.0001))

m.c172 = Complementarity(expr=(-19.5178013029703*m.x242**0.7*m.x51*m.x352**0.3/m.x242
                                >= -19.5178013029703, m.x242 >= 1E-4))

m.c173 = Complementarity(expr=(-25.1065789605821*m.x243**0.7*m.x52*m.x353**0.3/m.x243
                                >= -25.1065789605821, m.x243 >= 0.0001))

m.c174 = Complementarity(expr=(-31.9041564079975*m.x244**0.7*m.x53*m.x354**0.3/m.x244
                                >= -31.9041564079975, m.x244 >= 0.0001))

m.c175 = Complementarity(expr=(-40.0500998209539*m.x245**0.7*m.x54*m.x355**0.3/m.x245
                                >= -40.0500998209539, m.x245 >= 0.0001))

m.c176 = Complementarity(expr=(-50.275909983512*m.x246**0.7*m.x55*m.x356**0.3/m.x246
                                >= -50.275909983512, m.x246 >= 1E-4))

m.c177 = Complementarity(expr=(   5.37379512254407*m.x67 - 4.29903609803525*m.x127 >= 0, m.x187 >= 0))

m.c178 = Complementarity(expr=(   11.954606435705*m.x79 - 9.31527774210777*m.x139 >= 0, m.x188 >= 0))

m.c179 = Complementarity(expr=(   3.21468101080761*m.x91 - 2.57174480864609*m.x151 >= 0, m.x189 >= 0))

m.c180 = Complementarity(expr=(   14.2869854211874*m.x103 - 12.031145617842*m.x163 >= 0, m.x190 >= 0))

m.c181 = Complementarity(expr=(   18.853466243817*m.x115 - 15.7291775519845*m.x175 >= 0, m.x191 >= 0))

m.c182 = Complementarity(expr=(0.76*log(m.x192) + 0.24*log(m.x302) - log(m.x176) >= 0, m.x1 >= 0))

m.c183 = Complementarity(expr=(0.76*log(m.x193) + 0.24*log(m.x303) - log(m.x177) >= 0, m.x2 >= 0))

m.c184 = Complementarity(expr=(0.76*log(1*m.x194) + 0.24*log(m.x304) - log(1*m.x178) >= 0, m.x3 >= 0))

m.c185 = Complementarity(expr=(0.76*log(m.x195) + 0.24*log(m.x305) - log(m.x179) >= 0, m.x4 >= 0))

m.c186 = Complementarity(expr=(0.76*log(1*m.x196) + 0.24*log(m.x306) - log(1*m.x180) >= 0, m.x5 >= 0))

m.c187 = Complementarity(expr=(0.76*log(m.x197) + 0.24*log(m.x307) - log(m.x181) >= 0, m.x6 >= 0))

m.c188 = Complementarity(expr=(0.76*log(m.x198) + 0.24*log(m.x308) - log(m.x182) >= 0, m.x7 >= 0))

m.c189 = Complementarity(expr=(0.76*log(m.x199) + 0.24*log(m.x309) - log(m.x183) >= 0, m.x8 >= 0))

m.c190 = Complementarity(expr=(0.76*log(m.x200) + 0.24*log(m.x310) - log(m.x184) >= 0, m.x9 >= 0))

m.c191 = Complementarity(expr=(0.76*log(m.x201) + 0.24*log(1*m.x311) - log(m.x185) >= 0, m.x10 >= 0))

m.c192 = Complementarity(expr=(0.76*log(m.x202) + 0.24*log(m.x312) - log(m.x186) >= 0, m.x11 >= 0))

m.c193 = Complementarity(expr=(0.72*log(m.x203) + 0.28*log(m.x313) - log(m.x176) >= 0, m.x12 >= 0))

m.c194 = Complementarity(expr=(0.72*log(m.x204) + 0.28*log(m.x314) - log(m.x177) >= 0, m.x13 >= 0))

m.c195 = Complementarity(expr=(0.72*log(1*m.x205) + 0.28*log(m.x315) - log(1*m.x178) >= 0, m.x14 >= 0))

m.c196 = Complementarity(expr=(0.72*log(m.x206) + 0.28*log(m.x316) - log(m.x179) >= 0, m.x15 >= 0))

m.c197 = Complementarity(expr=(0.72*log(1*m.x207) + 0.28*log(1*m.x317) - log(1*m.x180) >= 0, m.x16 >= 0))

m.c198 = Complementarity(expr=(0.72*log(m.x208) + 0.28*log(m.x318) - log(m.x181) >= 0, m.x17 >= 0))

m.c199 = Complementarity(expr=(0.72*log(m.x209) + 0.28*log(m.x319) - log(m.x182) >= 0, m.x18 >= 0))

m.c200 = Complementarity(expr=(0.72*log(m.x210) + 0.28*log(1*m.x320) - log(m.x183) >= 0, m.x19 >= 0))

m.c201 = Complementarity(expr=(0.72*log(m.x211) + 0.28*log(m.x321) - log(m.x184) >= 0, m.x20 >= 0))

m.c202 = Complementarity(expr=(0.72*log(m.x212) + 0.28*log(m.x322) - log(m.x185) >= 0, m.x21 >= 0))

m.c203 = Complementarity(expr=(0.72*log(m.x213) + 0.28*log(m.x323) - log(m.x186) >= 0, m.x22 >= 0))

m.c204 = Complementarity(expr=(0.7*log(m.x214) + 0.3*log(1*m.x324) - log(m.x176) >= 0, m.x23 >= 0))

m.c205 = Complementarity(expr=(0.7*log(m.x215) + 0.3*log(m.x325) - log(m.x177) >= 0, m.x24 >= 0))

m.c206 = Complementarity(expr=(0.7*log(1*m.x216) + 0.3*log(m.x326) - log(1*m.x178) >= 0, m.x25 >= 0))

m.c207 = Complementarity(expr=(0.7*log(m.x217) + 0.3*log(m.x327) - log(m.x179) >= 0, m.x26 >= 0))

m.c208 = Complementarity(expr=(0.7*log(1*m.x218) + 0.3*log(m.x328) - log(1*m.x180) >= 0, m.x27 >= 0))

m.c209 = Complementarity(expr=(0.7*log(m.x219) + 0.3*log(m.x329) - log(m.x181) >= 0, m.x28 >= 0))

m.c210 = Complementarity(expr=(0.7*log(m.x220) + 0.3*log(m.x330) - log(m.x182) >= 0, m.x29 >= 0))

m.c211 = Complementarity(expr=(0.7*log(m.x221) + 0.3*log(m.x331) - log(m.x183) >= 0, m.x30 >= 0))

m.c212 = Complementarity(expr=(0.7*log(m.x222) + 0.3*log(m.x332) - log(m.x184) >= 0, m.x31 >= 0))

m.c213 = Complementarity(expr=(0.7*log(m.x223) + 0.3*log(1*m.x333) - log(m.x185) >= 0, m.x32 >= 0))

m.c214 = Complementarity(expr=(0.7*log(m.x224) + 0.3*log(m.x334) - log(m.x186) >= 0, m.x33 >= 0))

m.c215 = Complementarity(expr=(0.7*log(m.x225) + 0.3*log(1*m.x335) - log(m.x176) >= 0, m.x34 >= 0))

m.c216 = Complementarity(expr=(0.7*log(m.x226) + 0.3*log(m.x336) - log(0.998097955870187*m.x177) >= 0, m.x35 >= 0))

m.c217 = Complementarity(expr=(0.7*log(m.x227) + 0.3*log(m.x337) - log(0.996199529512245*m.x178) >= 0, m.x36 >= 0))

m.c218 = Complementarity(expr=(0.7*log(1*m.x228) + 0.3*log(m.x338) - log(0.995251687758636*m.x179) >= 0, m.x37 >= 0))

m.c219 = Complementarity(expr=(0.7*log(m.x229) + 0.3*log(m.x339) - log(0.995251687758636*m.x180) >= 0, m.x38 >= 0))

m.c220 = Complementarity(expr=(0.7*log(m.x230) + 0.3*log(m.x340) - log(0.995251687758636*m.x181) >= 0, m.x39 >= 0))

m.c221 = Complementarity(expr=(0.7*log(m.x231) + 0.3*log(m.x341) - log(0.996199529512245*m.x182) >= 0, m.x40 >= 0))

m.c222 = Complementarity(expr=(0.7*log(m.x232) + 0.3*log(m.x342) - log(0.997148273956099*m.x183) >= 0, m.x41 >= 0))

m.c223 = Complementarity(expr=(0.7*log(1*m.x233) + 0.3*log(m.x343) - log(0.998573095651912*m.x184) >= 0, m.x42 >= 0))

m.c224 = Complementarity(expr=(0.7*log(m.x234) + 0.3*log(m.x344) - log(1.00047604524078*m.x185) >= 0, m.x43 >= 0))

m.c225 = Complementarity(expr=(0.7*log(m.x235) + 0.3*log(1*m.x345) - log(1.0023826212213*m.x186) >= 0, m.x44 >= 0))

m.c226 = Complementarity(expr=(0.7*log(m.x236) + 0.3*log(1*m.x346) - log(m.x176) >= 0, m.x45 >= 0))

m.c227 = Complementarity(expr=(0.7*log(m.x237) + 0.3*log(m.x347) - log(0.99962884555686*m.x177) >= 0, m.x46 >= 0))

m.c228 = Complementarity(expr=(0.7*log(m.x238) + 0.3*log(1*m.x348) - log(0.99925782886934*m.x178) >= 0, m.x47 >= 0))

m.c229 = Complementarity(expr=(0.7*log(m.x239) + 0.3*log(m.x349) - log(0.999505157729703*m.x179) >= 0, m.x48 >= 0))

m.c230 = Complementarity(expr=(0.7*log(m.x240) + 0.3*log(m.x350) - log(1.00037130020376*m.x180) >= 0, m.x49 >= 0))

m.c231 = Complementarity(expr=(0.7*log(m.x241) + 0.3*log(m.x351) - log(1.00123819325201*m.x181) >= 0, m.x50 >= 0))

m.c232 = Complementarity(expr=(0.7*log(m.x242) + 0.3*log(m.x352) - log(1.00272607739115*m.x182) >= 0, m.x51 >= 0))

m.c233 = Complementarity(expr=(0.7*log(m.x243) + 0.3*log(m.x353) - log(1.00421617259178*m.x183) >= 0, m.x52 >= 0))

m.c234 = Complementarity(expr=(0.7*log(m.x244) + 0.3*log(m.x354) - log(1.00601968744302*m.x184) >= 0, m.x53 >= 0))

m.c235 = Complementarity(expr=(0.7*log(m.x245) + 0.3*log(m.x355) - log(1.00813831813117*m.x185) >= 0, m.x54 >= 0))

m.c236 = Complementarity(expr=(0.7*log(m.x246) + 0.3*log(m.x356) - log(1.01026141055705*m.x186) >= 0, m.x55 >= 0))

m.c237 = Complementarity(expr=(   m.x176 - 5*m.x247 - 1.8737129093507*m.x248 >= 0, m.x57 >= 0))

m.c238 = Complementarity(expr=(   0.610416178032977*m.x177 - 3.05208089016489*m.x248 - 1.1437446728569*m.x249
                                >= 0, m.x58 >= 0))

m.c239 = Complementarity(expr=(   0.372607910404387*m.x178 - 1.86303955202194*m.x249 - 0.698367952950963*m.x250
                                >= 0, m.x59 >= 0))

m.c240 = Complementarity(expr=(   0.227513561215077*m.x179 - 1.13756780607538*m.x250 - 0.426599538821213*m.x251
                                >= 0, m.x60 >= 0))

m.c241 = Complementarity(expr=(   0.138977139314322*m.x180 - 0.694885696571609*m.x251 - 0.260589229149881*m.x252
                                >= 0, m.x61 >= 0))

m.c242 = Complementarity(expr=(   0.0848944790316634*m.x181 - 0.424472395158317*m.x252 - 0.159266739201948*m.x253
                                >= 0, m.x62 >= 0))

m.c243 = Complementarity(expr=(   0.0518857471420835*m.x182 - 0.259428735710418*m.x253 - 0.0973405320656284*m.x254
                                >= 0, m.x63 >= 0))

m.c244 = Complementarity(expr=(   0.0317114939298719*m.x183 - 0.158557469649359*m.x254 - 0.0595111032664771*m.x255
                                >= 0, m.x64 >= 0))

m.c245 = Complementarity(expr=(   0.0193874632688724*m.x184 - 0.0969373163443621*m.x255 - 0.0363957665605854*m.x256
                                >= 0, m.x65 >= 0))

m.c246 = Complementarity(expr=(   0.0118569737175967*m.x185 - 0.0592848685879837*m.x256 - 0.0222589021346343*m.x257
                                >= 0, m.x66 >= 0))

m.c247 = Complementarity(expr=(   0.00725148121701413*m.x186 - 0.00725148121701413*m.x187 - 0.0362574060850707*m.x257
                                >= 0, m.x67 >= 0))

m.c248 = Complementarity(expr=(   m.x176 - 5*m.x258 - 1.8737129093507*m.x259 >= 0, m.x69 >= 0))

m.c249 = Complementarity(expr=(   0.610416178032977*m.x177 - 3.05208089016489*m.x259 - 1.1437446728569*m.x260
                                >= 0, m.x70 >= 0))

m.c250 = Complementarity(expr=(   0.372607910404387*m.x178 - 1.86303955202194*m.x260 - 0.698367952950963*m.x261
                                >= 0, m.x71 >= 0))

m.c251 = Complementarity(expr=(   0.227513561215077*m.x179 - 1.13756780607538*m.x261 - 0.426599538821213*m.x262
                                >= 0, m.x72 >= 0))

m.c252 = Complementarity(expr=(   0.138977139314322*m.x180 - 0.694885696571609*m.x262 - 0.260589229149881*m.x263
                                >= 0, m.x73 >= 0))

m.c253 = Complementarity(expr=(   0.0848944790316634*m.x181 - 0.424472395158317*m.x263 - 0.159266739201948*m.x264
                                >= 0, m.x74 >= 0))

m.c254 = Complementarity(expr=(   0.0518857471420835*m.x182 - 0.259428735710418*m.x264 - 0.0973405320656284*m.x265
                                >= 0, m.x75 >= 0))

m.c255 = Complementarity(expr=(   0.0317114939298719*m.x183 - 0.158557469649359*m.x265 - 0.0595111032664771*m.x266
                                >= 0, m.x76 >= 0))

m.c256 = Complementarity(expr=(   0.0193874632688724*m.x184 - 0.0969373163443621*m.x266 - 0.0363957665605854*m.x267
                                >= 0, m.x77 >= 0))

m.c257 = Complementarity(expr=(   0.0118569737175967*m.x185 - 0.0592848685879837*m.x267 - 0.0222589021346343*m.x268
                                >= 0, m.x78 >= 0))

m.c258 = Complementarity(expr=(   0.00725148121701413*m.x186 - 0.00725148121701413*m.x188 - 0.0362574060850707*m.x268
                                >= 0, m.x79 >= 0))

m.c259 = Complementarity(expr=(   m.x176 - 5*m.x269 - 1.8737129093507*m.x270 >= 0, m.x81 >= 0))

m.c260 = Complementarity(expr=(   0.610416178032977*m.x177 - 3.05208089016489*m.x270 - 1.1437446728569*m.x271
                                >= 0, m.x82 >= 0))

m.c261 = Complementarity(expr=(   0.372607910404387*m.x178 - 1.86303955202194*m.x271 - 0.698367952950963*m.x272
                                >= 0, m.x83 >= 0))

m.c262 = Complementarity(expr=(   0.227513561215077*m.x179 - 1.13756780607538*m.x272 - 0.426599538821213*m.x273
                                >= 0, m.x84 >= 0))

m.c263 = Complementarity(expr=(   0.138977139314322*m.x180 - 0.694885696571609*m.x273 - 0.260589229149881*m.x274
                                >= 0, m.x85 >= 0))

m.c264 = Complementarity(expr=(   0.0848944790316634*m.x181 - 0.424472395158317*m.x274 - 0.159266739201948*m.x275
                                >= 0, m.x86 >= 0))

m.c265 = Complementarity(expr=(   0.0518857471420835*m.x182 - 0.259428735710418*m.x275 - 0.0973405320656284*m.x276
                                >= 0, m.x87 >= 0))

m.c266 = Complementarity(expr=(   0.0317114939298719*m.x183 - 0.158557469649359*m.x276 - 0.0595111032664771*m.x277
                                >= 0, m.x88 >= 0))

m.c267 = Complementarity(expr=(   0.0193874632688724*m.x184 - 0.0969373163443621*m.x277 - 0.0363957665605854*m.x278
                                >= 0, m.x89 >= 0))

m.c268 = Complementarity(expr=(   0.0118569737175967*m.x185 - 0.0592848685879837*m.x278 - 0.0222589021346343*m.x279
                                >= 0, m.x90 >= 0))

m.c269 = Complementarity(expr=(   0.00725148121701413*m.x186 - 0.00725148121701413*m.x189 - 0.0362574060850707*m.x279
                                >= 0, m.x91 >= 0))

m.c270 = Complementarity(expr=(   m.x176 - 5*m.x280 - 1.87728358557464*m.x281 >= 0, m.x93 >= 0))

m.c271 = Complementarity(expr=(   0.610416178032977*m.x177 - 3.05789714548002*m.x281 - 1.14810802351704*m.x282
                                >= 0, m.x94 >= 0))

m.c272 = Complementarity(expr=(   0.372607910404387*m.x178 - 1.87014699046697*m.x282 - 0.701699842904791*m.x283
                                >= 0, m.x95 >= 0))

m.c273 = Complementarity(expr=(   0.227513561215077*m.x179 - 1.14299510371819*m.x283 - 0.428634830835545*m.x284
                                >= 0, m.x96 >= 0))

m.c274 = Complementarity(expr=(   0.138977139314322*m.x180 - 0.698200972797677*m.x284 - 0.261832491574813*m.x285
                                >= 0, m.x97 >= 0))

m.c275 = Complementarity(expr=(   0.0848944790316634*m.x181 - 0.426497538641962*m.x285 - 0.15987433690109*m.x286
                                >= 0, m.x98 >= 0))

m.c276 = Complementarity(expr=(   0.0518857471420835*m.x182 - 0.260418448337792*m.x286 - 0.0976189144663896*m.x287
                                >= 0, m.x99 >= 0))

m.c277 = Complementarity(expr=(   0.0317114939298719*m.x183 - 0.159010925246149*m.x287 - 0.0595961412595697*m.x288
                                >= 0, m.x100 >= 0))

m.c278 = Complementarity(expr=(   0.0193874632688724*m.x184 - 0.0970758342743825*m.x288 - 0.0363784487731799*m.x289
                                >= 0, m.x101 >= 0))

m.c279 = Complementarity(expr=(   0.0118569737175967*m.x185 - 0.0592566597371312*m.x289 - 0.0222059936628929*m.x290
                                >= 0, m.x102 >= 0))

m.c280 = Complementarity(expr=(   0.00725148121701413*m.x186 - 0.00723424475194805*m.x190 - 0.0361712237597402*m.x290
                                >= 0, m.x103 >= 0))

m.c281 = Complementarity(expr=(   m.x176 - 5*m.x291 - 1.8744086044325*m.x292 >= 0, m.x105 >= 0))

m.c282 = Complementarity(expr=(   0.610416178032977*m.x177 - 3.0532141041455*m.x292 - 1.144594157597*m.x293
                                >= 0, m.x106 >= 0))

m.c283 = Complementarity(expr=(   0.372607910404387*m.x178 - 1.8644232731506*m.x293 - 0.698713706027541*m.x294
                                >= 0, m.x107 >= 0))

m.c284 = Complementarity(expr=(   0.227513561215077*m.x179 - 1.13813100140401*m.x294 - 0.426441201116349*m.x295
                                >= 0, m.x108 >= 0))

m.c285 = Complementarity(expr=(   0.138977139314322*m.x180 - 0.694627781134939*m.x295 - 0.260266968345954*m.x296
                                >= 0, m.x109 >= 0))

m.c286 = Complementarity(expr=(   0.0848944790316634*m.x181 - 0.423947466266379*m.x296 - 0.158833746117705*m.x297
                                >= 0, m.x110 >= 0))

m.c287 = Complementarity(expr=(   0.0518857471420835*m.x182 - 0.258723435602062*m.x297 - 0.096931850653632*m.x298
                                >= 0, m.x111 >= 0))

m.c288 = Complementarity(expr=(   0.0317114939298719*m.x183 - 0.157891770693295*m.x298 - 0.0591550086039922*m.x299
                                >= 0, m.x112 >= 0))

m.c289 = Complementarity(expr=(   0.0193874632688724*m.x184 - 0.0963572756620162*m.x299 - 0.0361019573465414*m.x300
                                >= 0, m.x113 >= 0))

m.c290 = Complementarity(expr=(   0.0118569737175967*m.x185 - 0.0588062843379296*m.x300 - 0.0220328143805482*m.x301
                                >= 0, m.x114 >= 0))

m.c291 = Complementarity(expr=(   0.00725148121701413*m.x186 - 0.00717782659145195*m.x191 - 0.0358891329572598*m.x301
                                >= 0, m.x115 >= 0))

m.c292 = Complementarity(expr=(   m.x247 - 0.37474258187014*m.x248 - 0.1*m.x302 >= 0, m.x117 >= 0))

m.c293 = Complementarity(expr=(   0.610416178032977*m.x248 - 0.228748934571381*m.x249 - 0.0610416178032977*m.x303
                                >= 0, m.x118 >= 0))

m.c294 = Complementarity(expr=(   0.372607910404387*m.x249 - 0.139673590590193*m.x250 - 0.0372607910404387*m.x304
                                >= 0, m.x119 >= 0))

m.c295 = Complementarity(expr=(   0.227513561215077*m.x250 - 0.0853199077642427*m.x251 - 0.0227513561215077*m.x305
                                >= 0, m.x120 >= 0))

m.c296 = Complementarity(expr=(   0.138977139314322*m.x251 - 0.0521178458299762*m.x252 - 0.0138977139314322*m.x306
                                >= 0, m.x121 >= 0))

m.c297 = Complementarity(expr=(   0.0848944790316634*m.x252 - 0.0318533478403896*m.x253 - 0.00848944790316634*m.x307
                                >= 0, m.x122 >= 0))

m.c298 = Complementarity(expr=(   0.0518857471420835*m.x253 - 0.0194681064131257*m.x254 - 0.00518857471420835*m.x308
                                >= 0, m.x123 >= 0))

m.c299 = Complementarity(expr=(   0.0317114939298719*m.x254 - 0.0119022206532954*m.x255 - 0.00317114939298719*m.x309
                                >= 0, m.x124 >= 0))

m.c300 = Complementarity(expr=(   0.0193874632688724*m.x255 - 0.00727915331211708*m.x256 - 0.00193874632688724*m.x310
                                >= 0, m.x125 >= 0))

m.c301 = Complementarity(expr=(   0.0118569737175967*m.x256 - 0.00445178042692685*m.x257 - 0.00118569737175967*m.x311
                                >= 0, m.x126 >= 0))

m.c302 = Complementarity(expr=(   0.000435088873020848*m.x187 + 0.00725148121701413*m.x257 - 0.000725148121701413*m.x312
                                >= 0, m.x127 >= 0))

m.c303 = Complementarity(expr=(   m.x258 - 0.37474258187014*m.x259 - 0.1*m.x313 >= 0, m.x129 >= 0))

m.c304 = Complementarity(expr=(   0.610416178032977*m.x259 - 0.228748934571381*m.x260 - 0.0610416178032977*m.x314
                                >= 0, m.x130 >= 0))

m.c305 = Complementarity(expr=(   0.372607910404387*m.x260 - 0.139673590590193*m.x261 - 0.0372607910404387*m.x315
                                >= 0, m.x131 >= 0))

m.c306 = Complementarity(expr=(   0.227513561215077*m.x261 - 0.0853199077642427*m.x262 - 0.0227513561215077*m.x316
                                >= 0, m.x132 >= 0))

m.c307 = Complementarity(expr=(   0.138977139314322*m.x262 - 0.0521178458299762*m.x263 - 0.0138977139314322*m.x317
                                >= 0, m.x133 >= 0))

m.c308 = Complementarity(expr=(   0.0848944790316634*m.x263 - 0.0318533478403896*m.x264 - 0.00848944790316634*m.x318
                                >= 0, m.x134 >= 0))

m.c309 = Complementarity(expr=(   0.0518857471420835*m.x264 - 0.0194681064131257*m.x265 - 0.00518857471420835*m.x319
                                >= 0, m.x135 >= 0))

m.c310 = Complementarity(expr=(   0.0317114939298719*m.x265 - 0.0119022206532954*m.x266 - 0.00317114939298719*m.x320
                                >= 0, m.x136 >= 0))

m.c311 = Complementarity(expr=(   0.0193874632688724*m.x266 - 0.00727915331211708*m.x267 - 0.00193874632688724*m.x321
                                >= 0, m.x137 >= 0))

m.c312 = Complementarity(expr=(   0.0118569737175967*m.x267 - 0.00445178042692685*m.x268 - 0.00118569737175967*m.x322
                                >= 0, m.x138 >= 0))

m.c313 = Complementarity(expr=(   0.000435088873020848*m.x188 + 0.00725148121701413*m.x268 - 0.000725148121701414*m.x323
                                >= 0, m.x139 >= 0))

m.c314 = Complementarity(expr=(   m.x269 - 0.37474258187014*m.x270 - 0.1*m.x324 >= 0, m.x141 >= 0))

m.c315 = Complementarity(expr=(   0.610416178032977*m.x270 - 0.228748934571381*m.x271 - 0.0610416178032977*m.x325
                                >= 0, m.x142 >= 0))

m.c316 = Complementarity(expr=(   0.372607910404387*m.x271 - 0.139673590590193*m.x272 - 0.0372607910404387*m.x326
                                >= 0, m.x143 >= 0))

m.c317 = Complementarity(expr=(   0.227513561215077*m.x272 - 0.0853199077642427*m.x273 - 0.0227513561215077*m.x327
                                >= 0, m.x144 >= 0))

m.c318 = Complementarity(expr=(   0.138977139314322*m.x273 - 0.0521178458299762*m.x274 - 0.0138977139314322*m.x328
                                >= 0, m.x145 >= 0))

m.c319 = Complementarity(expr=(   0.0848944790316634*m.x274 - 0.0318533478403896*m.x275 - 0.00848944790316634*m.x329
                                >= 0, m.x146 >= 0))

m.c320 = Complementarity(expr=(   0.0518857471420835*m.x275 - 0.0194681064131257*m.x276 - 0.00518857471420835*m.x330
                                >= 0, m.x147 >= 0))

m.c321 = Complementarity(expr=(   0.0317114939298719*m.x276 - 0.0119022206532954*m.x277 - 0.00317114939298719*m.x331
                                >= 0, m.x148 >= 0))

m.c322 = Complementarity(expr=(   0.0193874632688724*m.x277 - 0.00727915331211708*m.x278 - 0.00193874632688724*m.x332
                                >= 0, m.x149 >= 0))

m.c323 = Complementarity(expr=(   0.0118569737175967*m.x278 - 0.00445178042692685*m.x279 - 0.00118569737175967*m.x333
                                >= 0, m.x150 >= 0))

m.c324 = Complementarity(expr=(   0.000435088873020848*m.x189 + 0.00725148121701413*m.x279 - 0.000725148121701413*m.x334
                                >= 0, m.x151 >= 0))

m.c325 = Complementarity(expr=(   m.x280 - 0.375456717114928*m.x281 - 0.1*m.x335 >= 0, m.x153 >= 0))

m.c326 = Complementarity(expr=(   0.611579429096004*m.x281 - 0.229621604703407*m.x282 - 0.0611579429096004*m.x336
                                >= 0, m.x154 >= 0))

m.c327 = Complementarity(expr=(   0.374029398093394*m.x282 - 0.140339968580958*m.x283 - 0.0374029398093394*m.x337
                                >= 0, m.x155 >= 0))

m.c328 = Complementarity(expr=(   0.228599020743638*m.x283 - 0.0857269661671089*m.x284 - 0.0228599020743638*m.x338
                                >= 0, m.x156 >= 0))

m.c329 = Complementarity(expr=(   0.139640194559535*m.x284 - 0.0523664983149625*m.x285 - 0.0139640194559535*m.x339
                                >= 0, m.x157 >= 0))

m.c330 = Complementarity(expr=(   0.0852995077283924*m.x285 - 0.031974867380218*m.x286 - 0.00852995077283924*m.x340
                                >= 0, m.x158 >= 0))

m.c331 = Complementarity(expr=(   0.0520836896675585*m.x286 - 0.0195237828932779*m.x287 - 0.00520836896675585*m.x341
                                >= 0, m.x159 >= 0))

m.c332 = Complementarity(expr=(   0.0318021850492297*m.x287 - 0.0119192282519139*m.x288 - 0.00318021850492297*m.x342
                                >= 0, m.x160 >= 0))

m.c333 = Complementarity(expr=(   0.0194151668548765*m.x288 - 0.00727568975463599*m.x289 - 0.00194151668548765*m.x343
                                >= 0, m.x161 >= 0))

m.c334 = Complementarity(expr=(   0.0118513319474262*m.x289 - 0.00444119873257859*m.x290 - 0.00118513319474262*m.x344
                                >= 0, m.x162 >= 0))

m.c335 = Complementarity(expr=(   0.000578739580155844*m.x190 + 0.00723424475194805*m.x290 - 0.000723424475194805*m.x345
                                >= 0, m.x163 >= 0))

m.c336 = Complementarity(expr=(   m.x291 - 0.374881720886499*m.x292 - 0.1*m.x346 >= 0, m.x165 >= 0))

m.c337 = Complementarity(expr=(   0.6106428208291*m.x292 - 0.228918831519399*m.x293 - 0.06106428208291*m.x347
                                >= 0, m.x166 >= 0))

m.c338 = Complementarity(expr=(   0.37288465463012*m.x293 - 0.139742741205508*m.x294 - 0.037288465463012*m.x348
                                >= 0, m.x167 >= 0))

m.c339 = Complementarity(expr=(   0.227626200280803*m.x294 - 0.0852882402232697*m.x295 - 0.0227626200280803*m.x349
                                >= 0, m.x168 >= 0))

m.c340 = Complementarity(expr=(   0.138925556226988*m.x295 - 0.0520533936691908*m.x296 - 0.0138925556226988*m.x350
                                >= 0, m.x169 >= 0))

m.c341 = Complementarity(expr=(   0.0847894932532758*m.x296 - 0.031766749223541*m.x297 - 0.00847894932532758*m.x351
                                >= 0, m.x170 >= 0))

m.c342 = Complementarity(expr=(   0.0517446871204124*m.x297 - 0.0193863701307264*m.x298 - 0.00517446871204124*m.x352
                                >= 0, m.x171 >= 0))

m.c343 = Complementarity(expr=(   0.0315783541386589*m.x298 - 0.0118310017207984*m.x299 - 0.00315783541386589*m.x353
                                >= 0, m.x172 >= 0))

m.c344 = Complementarity(expr=(   0.0192714551324032*m.x299 - 0.00722039146930828*m.x300 - 0.00192714551324032*m.x354
                                >= 0, m.x173 >= 0))

m.c345 = Complementarity(expr=(   0.0117612568675859*m.x300 - 0.00440656287610965*m.x301 - 0.00117612568675859*m.x355
                                >= 0, m.x174 >= 0))

m.c346 = Complementarity(expr=(   0.000523981341175993*m.x191 + 0.00717782659145195*m.x301 - 0.000717782659145195*m.x356
                                >= 0, m.x175 >= 0))

m.c347 = Complementarity(expr=( - 5.44803982009969*m.x192 - 4.05385327825123*m.x193 - 3.01644755623088*m.x194
                                - 2.19076188184491*m.x195 - 1.55307231439808*m.x196 - 1.10100218272858*m.x197
                                - 0.761916056839146*m.x198 - 0.527261513896945*m.x199 - 0.360508662256691*m.x200
                                - 0.243546734771942*m.x201 - 0.164531447446444*m.x202 - 11.3451169254332*m.x247
                                + 20.5554531413079*m.x357 - 0, m.x357 == 1))

m.c348 = Complementarity(expr=( - 9.5859929259656*m.x203 - 7.13287900445406*m.x204 - 5.30753186290888*m.x205
                                - 3.85471262973554*m.x206 - 2.7326783046642*m.x207 - 1.93724706199297*m.x208
                                - 1.3406146379646*m.x209 - 0.927732782661185*m.x210 - 0.634326032895758*m.x211
                                - 0.428527939177789*m.x212 - 0.289498121049276*m.x213 - 24.2837070917568*m.x258
                                + 36.6001120126456*m.x358 >= 0, m.x358 >= 0))

m.c349 = Complementarity(expr=( - 2.40143860491237*m.x214 - 1.78689585291337*m.x215 - 1.32961833070703*m.x216
                                - 0.965664776865849*m.x217 - 0.68457792805705*m.x218 - 0.485310172650098*m.x219
                                - 0.335844577685676*m.x220 - 0.232411325204575*m.x221 - 0.158908423494726*m.x222
                                - 0.107352837037632*m.x223 - 0.0725237301244195*m.x224 - 6.78681101789309*m.x269
                                + 9.23922766144211*m.x359 >= 0, m.x359 >= 0))

m.c350 = Complementarity(expr=( - 1.19578645473433*m.x225 - 1.08252987806956*m.x226 - 0.980000176681759*m.x227
                                - 0.865517463672848*m.x228 - 0.74578803693019*m.x229 - 0.64262111323316*m.x230
                                - 0.540269948212653*m.x231 - 0.454220396639531*m.x232 - 0.377216268575903*m.x233
                                - 0.309448724611492*m.x234 - 0.253855735133573*m.x235 - 2.98822276160965*m.x280
                                + 7.74607647265597*m.x360 >= 0, m.x360 >= 0))

m.c351 = Complementarity(expr=( - 3.3785127378709*m.x236 - 2.85440787875218*m.x237 - 2.41160681354041*m.x238
                                - 1.988081578042*m.x239 - 1.59928271373158*m.x240 - 1.28651923879283*m.x241
                                - 1.00994252170058*m.x242 - 0.792824441627466*m.x243 - 0.6148395187539*m.x244
                                - 0.471039511566696*m.x245 - 0.360871763589097*m.x246 - 8.84265302568771*m.x291
                                + 17.6521940205364*m.x361 >= 0, m.x361 >= 0))
