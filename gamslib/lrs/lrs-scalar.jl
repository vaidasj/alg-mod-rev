#  MIP written by GAMS Convert at 10/11/20 13:01:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#       1209        1      604      604        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        351      303       48        0        0        0        0        0
#  FX    350        0      350        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       3975     3975        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 0, binary=true, start=0)
@variable(m, 0 <= b2 <= 0, binary=true, start=0)
@variable(m, 0 <= b3 <= 0, binary=true, start=0)
@variable(m, 0 <= b4 <= 0, binary=true, start=0)
@variable(m, 0 <= b5 <= 0, binary=true, start=0)
@variable(m, 0 <= b6 <= 0, binary=true, start=0)
@variable(m, 0 <= b7 <= 0, binary=true, start=0)
@variable(m, 0 <= b8 <= 0, binary=true, start=0)
@variable(m, 0 <= b9 <= 0, binary=true, start=0)
@variable(m, 0 <= b10 <= 0, binary=true, start=0)
@variable(m, 0 <= b11 <= 0, binary=true, start=0)
@variable(m, 0 <= b12 <= 0, binary=true, start=0)
@variable(m, 0 <= b13 <= 0, binary=true, start=0)
@variable(m, 0 <= b14 <= 0, binary=true, start=0)
@variable(m, 0 <= b15 <= 0, binary=true, start=0)
@variable(m, 0 <= b16 <= 0, binary=true, start=0)
@variable(m, 0 <= b17 <= 0, binary=true, start=0)
@variable(m, 0 <= b18 <= 0, binary=true, start=0)
@variable(m, 0 <= b19 <= 0, binary=true, start=0)
@variable(m, 0 <= b20 <= 0, binary=true, start=0)
@variable(m, 0 <= b21 <= 0, binary=true, start=0)
@variable(m, 0 <= b22 <= 0, binary=true, start=0)
@variable(m, 0 <= b23 <= 0, binary=true, start=0)
@variable(m, 0 <= b24 <= 0, binary=true, start=0)
@variable(m, 0 <= b25 <= 0, binary=true, start=0)
@variable(m, 0 <= b26 <= 0, binary=true, start=0)
@variable(m, 0 <= b27 <= 0, binary=true, start=0)
@variable(m, 0 <= b28 <= 0, binary=true, start=0)
@variable(m, 0 <= b29 <= 0, binary=true, start=0)
@variable(m, 0 <= b30 <= 0, binary=true, start=0)
@variable(m, 0 <= b31 <= 0, binary=true, start=0)
@variable(m, 0 <= b32 <= 0, binary=true, start=0)
@variable(m, 0 <= b33 <= 0, binary=true, start=0)
@variable(m, 0 <= b34 <= 0, binary=true, start=0)
@variable(m, 0 <= b35 <= 0, binary=true, start=0)
@variable(m, 0 <= b36 <= 0, binary=true, start=0)
@variable(m, 0 <= b37 <= 0, binary=true, start=0)
@variable(m, 0 <= b38 <= 0, binary=true, start=0)
@variable(m, 0 <= b39 <= 0, binary=true, start=0)
@variable(m, 0 <= b40 <= 0, binary=true, start=0)
@variable(m, 0 <= b41 <= 0, binary=true, start=0)
@variable(m, 0 <= b42 <= 0, binary=true, start=0)
@variable(m, 0 <= b43 <= 0, binary=true, start=0)
@variable(m, 0 <= b44 <= 0, binary=true, start=0)
@variable(m, 0 <= b45 <= 0, binary=true, start=0)
@variable(m, 0 <= b46 <= 0, binary=true, start=0)
@variable(m, 0 <= b47 <= 0, binary=true, start=0)
@variable(m, 0 <= b48 <= 0, binary=true, start=0)
@variable(m, 0 <= x49 <= 0, start=0)
@variable(m, 0 <= x50 <= 0, start=0)
@variable(m, 0 <= x51 <= 0, start=0)
@variable(m, 0 <= x52 <= 0, start=0)
@variable(m, 0 <= x53 <= 0, start=0)
@variable(m, 0 <= x54 <= 0, start=0)
@variable(m, 0 <= x55 <= 0, start=0)
@variable(m, 0 <= x56 <= 0, start=0)
@variable(m, 0 <= x57 <= 0, start=0)
@variable(m, 0 <= x58 <= 0, start=0)
@variable(m, 0 <= x59 <= 0, start=0)
@variable(m, 0 <= x60 <= 0, start=0)
@variable(m, 0 <= x61 <= 0, start=0)
@variable(m, 0 <= x62 <= 0, start=0)
@variable(m, 0 <= x63 <= 0, start=0)
@variable(m, 0 <= x64 <= 0, start=0)
@variable(m, 0 <= x65 <= 0, start=0)
@variable(m, 0 <= x66 <= 0, start=0)
@variable(m, 0 <= x67 <= 0, start=0)
@variable(m, 0 <= x68 <= 0, start=0)
@variable(m, 0 <= x69 <= 0, start=0)
@variable(m, 0 <= x70 <= 0, start=0)
@variable(m, 0 <= x71 <= 0, start=0)
@variable(m, 0 <= x72 <= 0, start=0)
@variable(m, 0 <= x73 <= 0, start=0)
@variable(m, 0 <= x74 <= 0, start=0)
@variable(m, 0 <= x75 <= 0, start=0)
@variable(m, 0 <= x76 <= 0, start=0)
@variable(m, 0 <= x77 <= 0, start=0)
@variable(m, 0 <= x78 <= 0, start=0)
@variable(m, 0 <= x79 <= 0, start=0)
@variable(m, 0 <= x80 <= 0, start=0)
@variable(m, 0 <= x81 <= 0, start=0)
@variable(m, 0 <= x82 <= 0, start=0)
@variable(m, 0 <= x83 <= 0, start=0)
@variable(m, 0 <= x84 <= 0, start=0)
@variable(m, 0 <= x85 <= 0, start=0)
@variable(m, 0 <= x86 <= 0, start=0)
@variable(m, 0 <= x87 <= 0, start=0)
@variable(m, 0 <= x88 <= 0, start=0)
@variable(m, 0 <= x89 <= 0, start=0)
@variable(m, 0 <= x90 <= 0, start=0)
@variable(m, 0 <= x91 <= 0, start=0)
@variable(m, 0 <= x92 <= 0, start=0)
@variable(m, 0 <= x93 <= 0, start=0)
@variable(m, 0 <= x94 <= 0, start=0)
@variable(m, 0 <= x95 <= 0, start=0)
@variable(m, 0 <= x96 <= 0, start=0)
@variable(m, 0 <= x97 <= 0, start=0)
@variable(m, 0 <= x98 <= 0, start=0)
@variable(m, 0 <= x99 <= 0, start=0)
@variable(m, 0 <= x100 <= 0, start=0)
@variable(m, 0 <= x101 <= 0, start=0)
@variable(m, 0 <= x102 <= 0, start=0)
@variable(m, 0 <= x103 <= 0, start=0)
@variable(m, 0 <= x104 <= 0, start=0)
@variable(m, 0 <= x105 <= 0, start=0)
@variable(m, 0 <= x106 <= 0, start=0)
@variable(m, 0 <= x107 <= 0, start=0)
@variable(m, 0 <= x108 <= 0, start=0)
@variable(m, 0 <= x109 <= 0, start=0)
@variable(m, 0 <= x110 <= 0, start=0)
@variable(m, 0 <= x111 <= 0, start=0)
@variable(m, 0 <= x112 <= 0, start=0)
@variable(m, 0 <= x113 <= 0, start=0)
@variable(m, 0 <= x114 <= 0, start=0)
@variable(m, 0 <= x115 <= 0, start=0)
@variable(m, 0 <= x116 <= 0, start=0)
@variable(m, 0 <= x117 <= 0, start=0)
@variable(m, 0 <= x118 <= 0, start=0)
@variable(m, 0 <= x119 <= 0, start=0)
@variable(m, 0 <= x120 <= 0, start=0)
@variable(m, 0 <= x121 <= 0, start=0)
@variable(m, 0 <= x122 <= 0, start=0)
@variable(m, 0 <= x123 <= 0, start=0)
@variable(m, 0 <= x124 <= 0, start=0)
@variable(m, 0 <= x125 <= 0, start=0)
@variable(m, 0 <= x126 <= 0, start=0)
@variable(m, 0 <= x127 <= 0, start=0)
@variable(m, 0 <= x128 <= 0, start=0)
@variable(m, 0 <= x129 <= 0, start=0)
@variable(m, 0 <= x130 <= 0, start=0)
@variable(m, 0 <= x131 <= 0, start=0)
@variable(m, 0 <= x132 <= 0, start=0)
@variable(m, 0 <= x133 <= 0, start=0)
@variable(m, 0 <= x134 <= 0, start=0)
@variable(m, 0 <= x135 <= 0, start=0)
@variable(m, 0 <= x136 <= 0, start=0)
@variable(m, 0 <= x137 <= 0, start=0)
@variable(m, 0 <= x138 <= 0, start=0)
@variable(m, 0 <= x139 <= 0, start=0)
@variable(m, 0 <= x140 <= 0, start=0)
@variable(m, 0 <= x141 <= 0, start=0)
@variable(m, 0 <= x142 <= 0, start=0)
@variable(m, 0 <= x143 <= 0, start=0)
@variable(m, 0 <= x144 <= 0, start=0)
@variable(m, 0 <= x145 <= 0, start=0)
@variable(m, 0 <= x146 <= 0, start=0)
@variable(m, 0 <= x147 <= 0, start=0)
@variable(m, 0 <= x148 <= 0, start=0)
@variable(m, 0 <= x149 <= 0, start=0)
@variable(m, 0 <= x150 <= 0, start=0)
@variable(m, 0 <= x151 <= 0, start=0)
@variable(m, 0 <= x152 <= 0, start=0)
@variable(m, 0 <= x153 <= 0, start=0)
@variable(m, 0 <= x154 <= 0, start=0)
@variable(m, 0 <= x155 <= 0, start=0)
@variable(m, 0 <= x156 <= 0, start=0)
@variable(m, 0 <= x157 <= 0, start=0)
@variable(m, 0 <= x158 <= 0, start=0)
@variable(m, 0 <= x159 <= 0, start=0)
@variable(m, 0 <= x160 <= 0, start=0)
@variable(m, 0 <= x161 <= 0, start=0)
@variable(m, 0 <= x162 <= 0, start=0)
@variable(m, 0 <= x163 <= 0, start=0)
@variable(m, 0 <= x164 <= 0, start=0)
@variable(m, 0 <= x165 <= 0, start=0)
@variable(m, 0 <= x166 <= 0, start=0)
@variable(m, 0 <= x167 <= 0, start=0)
@variable(m, 0 <= x168 <= 0, start=0)
@variable(m, 0 <= x169 <= 0, start=0)
@variable(m, 0 <= x170 <= 0, start=0)
@variable(m, 0 <= x171 <= 0, start=0)
@variable(m, 0 <= x172 <= 0, start=0)
@variable(m, 0 <= x173 <= 0, start=0)
@variable(m, 0 <= x174 <= 0, start=0)
@variable(m, 0 <= x175 <= 0, start=0)
@variable(m, 0 <= x176 <= 0, start=0)
@variable(m, 0 <= x177 <= 0, start=0)
@variable(m, 0 <= x178 <= 0, start=0)
@variable(m, 0 <= x179 <= 0, start=0)
@variable(m, 0 <= x180 <= 0, start=0)
@variable(m, 0 <= x181 <= 0, start=0)
@variable(m, 0 <= x182 <= 0, start=0)
@variable(m, 0 <= x183 <= 0, start=0)
@variable(m, 0 <= x184 <= 0, start=0)
@variable(m, 0 <= x185 <= 0, start=0)
@variable(m, 0 <= x186 <= 0, start=0)
@variable(m, 0 <= x187 <= 0, start=0)
@variable(m, 0 <= x188 <= 0, start=0)
@variable(m, 0 <= x189 <= 0, start=0)
@variable(m, 0 <= x190 <= 0, start=0)
@variable(m, 0 <= x191 <= 0, start=0)
@variable(m, 0 <= x192 <= 0, start=0)
@variable(m, 0 <= x193 <= 0, start=0)
@variable(m, 0 <= x194 <= 0, start=0)
@variable(m, 0 <= x195 <= 0, start=0)
@variable(m, 0 <= x196 <= 0, start=0)
@variable(m, 0 <= x197 <= 0, start=0)
@variable(m, 0 <= x198 <= 0, start=0)
@variable(m, 0 <= x199 <= 0, start=0)
@variable(m, 0 <= x200 <= 0, start=0)
@variable(m, 0 <= x201 <= 0, start=0)
@variable(m, 0 <= x202 <= 0, start=0)
@variable(m, 0 <= x203 <= 0, start=0)
@variable(m, 0 <= x204 <= 0, start=0)
@variable(m, 0 <= x205 <= 0, start=0)
@variable(m, 0 <= x206 <= 0, start=0)
@variable(m, 0 <= x207 <= 0, start=0)
@variable(m, 0 <= x208 <= 0, start=0)
@variable(m, 0 <= x209 <= 0, start=0)
@variable(m, 0 <= x210 <= 0, start=0)
@variable(m, 0 <= x211 <= 0, start=0)
@variable(m, 0 <= x212 <= 0, start=0)
@variable(m, 0 <= x213 <= 0, start=0)
@variable(m, 0 <= x214 <= 0, start=0)
@variable(m, 0 <= x215 <= 0, start=0)
@variable(m, 0 <= x216 <= 0, start=0)
@variable(m, 0 <= x217 <= 0, start=0)
@variable(m, 0 <= x218 <= 0, start=0)
@variable(m, 0 <= x219 <= 0, start=0)
@variable(m, 0 <= x220 <= 0, start=0)
@variable(m, 0 <= x221 <= 0, start=0)
@variable(m, 0 <= x222 <= 0, start=0)
@variable(m, 0 <= x223 <= 0, start=0)
@variable(m, 0 <= x224 <= 0, start=0)
@variable(m, 0 <= x225 <= 0, start=0)
@variable(m, 0 <= x226 <= 0, start=0)
@variable(m, 0 <= x227 <= 0, start=0)
@variable(m, 0 <= x228 <= 0, start=0)
@variable(m, 0 <= x229 <= 0, start=0)
@variable(m, 0 <= x230 <= 0, start=0)
@variable(m, 0 <= x231 <= 0, start=0)
@variable(m, 0 <= x232 <= 0, start=0)
@variable(m, 0 <= x233 <= 0, start=0)
@variable(m, 0 <= x234 <= 0, start=0)
@variable(m, 0 <= x235 <= 0, start=0)
@variable(m, 0 <= x236 <= 0, start=0)
@variable(m, 0 <= x237 <= 0, start=0)
@variable(m, 0 <= x238 <= 0, start=0)
@variable(m, 0 <= x239 <= 0, start=0)
@variable(m, 0 <= x240 <= 0, start=0)
@variable(m, 0 <= x241 <= 0, start=0)
@variable(m, 0 <= x242 <= 0, start=0)
@variable(m, 0 <= x243 <= 0, start=0)
@variable(m, 0 <= x244 <= 0, start=0)
@variable(m, 0 <= x245 <= 0, start=0)
@variable(m, 0 <= x246 <= 0, start=0)
@variable(m, 0 <= x247 <= 0, start=0)
@variable(m, 0 <= x248 <= 0, start=0)
@variable(m, 0 <= x249 <= 0, start=0)
@variable(m, 0 <= x250 <= 0, start=0)
@variable(m, 0 <= x251 <= 0, start=0)
@variable(m, 0 <= x252 <= 0, start=0)
@variable(m, 0 <= x253 <= 0, start=0)
@variable(m, 0 <= x254 <= 0, start=0)
@variable(m, 0 <= x255 <= 0, start=0)
@variable(m, 0 <= x256 <= 0, start=0)
@variable(m, 0 <= x257 <= 0, start=0)
@variable(m, 0 <= x258 <= 0, start=0)
@variable(m, 0 <= x259 <= 0, start=0)
@variable(m, 0 <= x260 <= 0, start=0)
@variable(m, 0 <= x261 <= 0, start=0)
@variable(m, 0 <= x262 <= 0, start=0)
@variable(m, 0 <= x263 <= 0, start=0)
@variable(m, 0 <= x264 <= 0, start=0)
@variable(m, 0 <= x265 <= 0, start=0)
@variable(m, 0 <= x266 <= 0, start=0)
@variable(m, 0 <= x267 <= 0, start=0)
@variable(m, 0 <= x268 <= 0, start=0)
@variable(m, 0 <= x269 <= 0, start=0)
@variable(m, 0 <= x270 <= 0, start=0)
@variable(m, 0 <= x271 <= 0, start=0)
@variable(m, 0 <= x272 <= 0, start=0)
@variable(m, 0 <= x273 <= 0, start=0)
@variable(m, 0 <= x274 <= 0, start=0)
@variable(m, 0 <= x275 <= 0, start=0)
@variable(m, 0 <= x276 <= 0, start=0)
@variable(m, 0 <= x277 <= 0, start=0)
@variable(m, 0 <= x278 <= 0, start=0)
@variable(m, 0 <= x279 <= 0, start=0)
@variable(m, 0 <= x280 <= 0, start=0)
@variable(m, 0 <= x281 <= 0, start=0)
@variable(m, 0 <= x282 <= 0, start=0)
@variable(m, 0 <= x283 <= 0, start=0)
@variable(m, 0 <= x284 <= 0, start=0)
@variable(m, 0 <= x285 <= 0, start=0)
@variable(m, 0 <= x286 <= 0, start=0)
@variable(m, 0 <= x287 <= 0, start=0)
@variable(m, 0 <= x288 <= 0, start=0)
@variable(m, 0 <= x289 <= 0, start=0)
@variable(m, 0 <= x290 <= 0, start=0)
@variable(m, 0 <= x291 <= 0, start=0)
@variable(m, 0 <= x292 <= 0, start=0)
@variable(m, 0 <= x293 <= 0, start=0)
@variable(m, 0 <= x294 <= 0, start=0)
@variable(m, 0 <= x295 <= 0, start=0)
@variable(m, 0 <= x296 <= 0, start=0)
@variable(m, 0 <= x297 <= 0, start=0)
@variable(m, 0 <= x298 <= 0, start=0)
@variable(m, 0 <= x299 <= 0, start=0)
@variable(m, 0 <= x300 <= 0, start=0)
@variable(m, 0 <= x301 <= 0, start=0)
@variable(m, 0 <= x302 <= 0, start=0)
@variable(m, 0 <= x303 <= 0, start=0)
@variable(m, 0 <= x304 <= 0, start=0)
@variable(m, 0 <= x305 <= 0, start=0)
@variable(m, 0 <= x306 <= 0, start=0)
@variable(m, 0 <= x307 <= 0, start=0)
@variable(m, 0 <= x308 <= 0, start=0)
@variable(m, 0 <= x309 <= 0, start=0)
@variable(m, 0 <= x310 <= 0, start=0)
@variable(m, 0 <= x311 <= 0, start=0)
@variable(m, 0 <= x312 <= 0, start=0)
@variable(m, 0 <= x313 <= 0, start=0)
@variable(m, 0 <= x314 <= 0, start=0)
@variable(m, 0 <= x315 <= 0, start=0)
@variable(m, 0 <= x316 <= 0, start=0)
@variable(m, 0 <= x317 <= 0, start=0)
@variable(m, 0 <= x318 <= 0, start=0)
@variable(m, 0 <= x319 <= 0, start=0)
@variable(m, 0 <= x320 <= 0, start=0)
@variable(m, 0 <= x321 <= 0, start=0)
@variable(m, 0 <= x322 <= 0, start=0)
@variable(m, 0 <= x323 <= 0, start=0)
@variable(m, 0 <= x324 <= 0, start=0)
@variable(m, 0 <= x325 <= 0, start=0)
@variable(m, 0 <= x326 <= 0, start=0)
@variable(m, 0 <= x327 <= 0, start=0)
@variable(m, 0 <= x328 <= 0, start=0)
@variable(m, 0 <= x329 <= 0, start=0)
@variable(m, 0 <= x330 <= 0, start=0)
@variable(m, 0 <= x331 <= 0, start=0)
@variable(m, 0 <= x332 <= 0, start=0)
@variable(m, 0 <= x333 <= 0, start=0)
@variable(m, 0 <= x334 <= 0, start=0)
@variable(m, 0 <= x335 <= 0, start=0)
@variable(m, 0 <= x336 <= 0, start=0)
@variable(m, 0 <= x337 <= 0, start=0)
@variable(m, 0 <= x338 <= 0, start=0)
@variable(m, 0 <= x339 <= 0, start=0)
@variable(m, 0 <= x340 <= 0, start=0)
@variable(m, 0 <= x341 <= 0, start=0)
@variable(m, 0 <= x342 <= 0, start=0)
@variable(m, 0 <= x343 <= 0, start=0)
@variable(m, 0 <= x344 <= 0, start=0)
@variable(m, 0 <= x345 <= 0, start=0)
@variable(m, 0 <= x346 <= 0, start=0)
@variable(m, 0 <= x347 <= 0, start=0)
@variable(m, 0 <= x348 <= 0, start=0)
@variable(m, 0 <= x349 <= 0, start=0)
@variable(m, 0 <= x350 <= 0, start=0)

@objective(m, Min, b1 - b2 - b3 - b4 + b5 + b6 - b7 - b8 + b9 - b10 - b11 - b12 - b13 - b14 + b15 - b16 + b17 + b18
     - b19 - b20 - b21 - b22 + b23 + b24 - b25 - b26 + b27 - b28 - b29 - b30 + b31 - b32 + b33 - b34 + b35 + b36 - b37
     - b38 - b39 - b40 - b41 + b42 - b43 + b44 - b45 + b46 - b47 - b48 - x49 + x50 - x51 - x52 - x53 + x54 + x55 + x56
     - x57 - x58 + x59 - x60 + x61 + x62 - x63 - x64 + x65 + x66 - x67 - x68 - x69 - x70 + x71 + x72 + x73 - x74 - x75
     - x76 - x77 + x78 - x79 + x80 + x81 + x82 + x83 - x84 + x85 + x86 - x87 - x88 - x89 - x90 - x91 - x92 - x93 - x94
     - x95 - x96 + x97 - x98 + x99 - x100 + x101 + x102 - x103 - x104 - x105 + x106 - x107 + x108 + x109 - x110 - x111
     + x112 - x113 - x114 + x115 - x116 + x117 + x118 + x119 - x120 + x121 - x122 - x123 + x124 + x125 - x126 - x127
     + x128 - x129 - x130 - x131 - x132 - x133 - x134 - x135 - x136 + x137 - x138 - x139 + x140 - x141 + x142 - x143
     - x144 - x145 + x146 + x147 + x148 + x149 - x150 - x151 + x152 + x153 - x154 + x155 - x156 - x157 + x158 - x159
     - x160 - x161 - x162 - x163 + x164 + x165 + x166 - x167 + x168 - x169 + x170 - x171 - x172 - x173 - x174 + x175
     - x176 - x177 - x178 + x179 + x180 + x181 + x182 + x183 + x184 - x185 - x186 + x187 + x188 - x189 - x190 - x191
     + x192 - x193 + x194 - x195 - x196 - x197 - x198 - x199 - x200 - x201 - x202 + x203 - x204 - x205 - x206 - x207
     - x208 + x209 - x210 - x211 + x212 - x213 - x214 - x215 - x216 + x217 - x218 - x219 - x220 + x221 - x222 - x223
     - x224 + x225 - x226 + x227 - x228 - x229 - x230 - x231 - x232 + x233 - x234 - x235 - x236 - x237 - x238 - x239
     - x240 - x241 - x242 + x243 - x244 + x245 - x246 + x247 + x248 - x249 - x250 - x251 - x252 + x253 + x254 - x255
     - x256 - x257 + x258 - x259 + x260 - x261 - x262 - x263 + x264 - x265 - x266 + x267 - x268 + x269 - x270 + x271
     - x272 - x273 - x274 - x275 - x276 - x277 + x278 - x279 + x280 - x281 - x282 + x283 - x284 - x285 - x286 + x287
     - x288 - x289 + x290 - x291 + x292 - x293 + x294 - x295 - x296 - x297 - x298 - x299 - x300 - x301 - x302 - x303
     + x304 - x305 - x306 - x307 + x308 - x309 - x310 - x311 - x312 + x313 - x314 - x315 - x316 - x317 - x318 + x319
     - x320 - x321 + x322 - x323 - x324 + x325 - x326 - x327 - x328 - x329 + x330 + x331 + x332 - x333 - x334 - x335
     - x336 + x337 + x338 - x339 + x340 - x341 - x342 - x343 + x344 - x345 - x346 + x347 - x348 - x349 - x350 + 230)

@constraint(m,  - b1 - b9 + x49 <= 0)

@constraint(m,  - b2 - b10 + x50 <= 0)

@constraint(m,  - b3 - b11 + x51 <= 0)

@constraint(m,  - b4 - b12 + x52 <= 0)

@constraint(m,  - b5 - b13 + x53 <= 0)

@constraint(m,  - b6 - b14 + x54 <= 0)

@constraint(m,  - b7 - b15 + x55 <= 0)

@constraint(m,  - b8 - b16 + x56 <= 0)

@constraint(m,  - b9 - b17 + x57 <= 0)

@constraint(m,  - b10 - b18 + x58 <= 0)

@constraint(m,  - b11 - b19 + x59 <= 0)

@constraint(m,  - b12 - b20 + x60 <= 0)

@constraint(m,  - b13 - b21 + x61 <= 0)

@constraint(m,  - b14 - b22 + x62 <= 0)

@constraint(m,  - b15 - b23 + x63 <= 0)

@constraint(m,  - b16 - b24 + x64 <= 0)

@constraint(m,  - b17 - b25 + x65 <= 0)

@constraint(m,  - b18 - b26 + x66 <= 0)

@constraint(m,  - b19 - b27 + x67 <= 0)

@constraint(m,  - b20 - b28 + x68 <= 0)

@constraint(m,  - b21 - b29 + x69 <= 0)

@constraint(m,  - b22 - b30 + x70 <= 0)

@constraint(m,  - b23 - b31 + x71 <= 0)

@constraint(m,  - b24 - b32 + x72 <= 0)

@constraint(m,  - b25 - b33 + x73 <= 0)

@constraint(m,  - b26 - b34 + x74 <= 0)

@constraint(m,  - b27 - b35 + x75 <= 0)

@constraint(m,  - b28 - b36 + x76 <= 0)

@constraint(m,  - b29 - b37 + x77 <= 0)

@constraint(m,  - b30 - b38 + x78 <= 0)

@constraint(m,  - b31 - b39 + x79 <= 0)

@constraint(m,  - b32 - b40 + x80 <= 0)

@constraint(m,  - b33 - b41 + x81 <= 0)

@constraint(m,  - b34 - b42 + x82 <= 0)

@constraint(m,  - b35 - b43 + x83 <= 0)

@constraint(m,  - b36 - b44 + x84 <= 0)

@constraint(m,  - b37 - b45 + x85 <= 0)

@constraint(m,  - b38 - b46 + x86 <= 0)

@constraint(m,  - b39 - b47 + x87 <= 0)

@constraint(m,  - b40 - b48 + x88 <= 0)

@constraint(m,  - b41 - x49 + x89 <= 0)

@constraint(m,  - b42 - x50 + x90 <= 0)

@constraint(m,  - b43 - x51 + x91 <= 0)

@constraint(m,  - b44 - x52 + x92 <= 0)

@constraint(m,  - b45 - x53 + x93 <= 0)

@constraint(m,  - b46 - x54 + x94 <= 0)

@constraint(m,  - b47 - x55 + x95 <= 0)

@constraint(m,  - b48 - x56 + x96 <= 0)

@constraint(m,  - x49 - x57 + x97 <= 0)

@constraint(m,  - x50 - x58 + x98 <= 0)

@constraint(m,  - x51 - x59 + x99 <= 0)

@constraint(m,  - x52 - x60 + x100 <= 0)

@constraint(m,  - x53 - x61 + x101 <= 0)

@constraint(m,  - x54 - x62 + x102 <= 0)

@constraint(m,  - x55 - x63 + x103 <= 0)

@constraint(m,  - x56 - x64 + x104 <= 0)

@constraint(m,  - x57 - x65 + x105 <= 0)

@constraint(m,  - x58 - x66 + x106 <= 0)

@constraint(m,  - x59 - x67 + x107 <= 0)

@constraint(m,  - x60 - x68 + x108 <= 0)

@constraint(m,  - x61 - x69 + x109 <= 0)

@constraint(m,  - x62 - x70 + x110 <= 0)

@constraint(m,  - x63 - x71 + x111 <= 0)

@constraint(m,  - x64 - x72 + x112 <= 0)

@constraint(m,  - x65 - x73 + x113 <= 0)

@constraint(m,  - x66 - x74 + x114 <= 0)

@constraint(m,  - x67 - x75 + x115 <= 0)

@constraint(m,  - x68 - x76 + x116 <= 0)

@constraint(m,  - x69 - x77 + x117 <= 0)

@constraint(m,  - x70 - x78 + x118 <= 0)

@constraint(m,  - x71 - x79 + x119 <= 0)

@constraint(m,  - x72 - x80 + x120 <= 0)

@constraint(m,  - x73 - x81 + x121 <= 0)

@constraint(m,  - x74 - x82 + x122 <= 0)

@constraint(m,  - x75 - x83 + x123 <= 0)

@constraint(m,  - x76 - x84 + x124 <= 0)

@constraint(m,  - x77 - x85 + x125 <= 0)

@constraint(m,  - x78 - x86 + x126 <= 0)

@constraint(m,  - x79 - x87 + x127 <= 0)

@constraint(m,  - x80 - x88 + x128 <= 0)

@constraint(m,  - x81 - x89 + x129 <= 0)

@constraint(m,  - x82 - x90 + x130 <= 0)

@constraint(m,  - x83 - x91 + x131 <= 0)

@constraint(m,  - x84 - x92 + x132 <= 0)

@constraint(m,  - x85 - x93 + x133 <= 0)

@constraint(m,  - x86 - x94 + x134 <= 0)

@constraint(m,  - x87 - x95 + x135 <= 0)

@constraint(m,  - x88 - x96 + x136 <= 0)

@constraint(m,  - x89 - x97 + x137 <= 0)

@constraint(m,  - x90 - x98 + x138 <= 0)

@constraint(m,  - x91 - x99 + x139 <= 0)

@constraint(m,  - x92 - x100 + x140 <= 0)

@constraint(m,  - x93 - x101 + x141 <= 0)

@constraint(m,  - x94 - x102 + x142 <= 0)

@constraint(m,  - x95 - x103 + x143 <= 0)

@constraint(m,  - x96 - x104 + x144 <= 0)

@constraint(m,  - x97 - x105 + x145 <= 0)

@constraint(m,  - x98 - x106 + x146 <= 0)

@constraint(m,  - x99 - x107 + x147 <= 0)

@constraint(m,  - x100 - x108 + x148 <= 0)

@constraint(m,  - x101 - x109 + x149 <= 0)

@constraint(m,  - x102 - x110 + x150 <= 0)

@constraint(m,  - x103 - x111 + x151 <= 0)

@constraint(m,  - x104 - x112 + x152 <= 0)

@constraint(m,  - x105 - x113 + x153 <= 0)

@constraint(m,  - x106 - x114 + x154 <= 0)

@constraint(m,  - x107 - x115 + x155 <= 0)

@constraint(m,  - x108 - x116 + x156 <= 0)

@constraint(m,  - x109 - x117 + x157 <= 0)

@constraint(m,  - x110 - x118 + x158 <= 0)

@constraint(m,  - x111 - x119 + x159 <= 0)

@constraint(m,  - x112 - x120 + x160 <= 0)

@constraint(m,  - x113 - x121 + x161 <= 0)

@constraint(m,  - x114 - x122 + x162 <= 0)

@constraint(m,  - x115 - x123 + x163 <= 0)

@constraint(m,  - x116 - x124 + x164 <= 0)

@constraint(m,  - x117 - x125 + x165 <= 0)

@constraint(m,  - x118 - x126 + x166 <= 0)

@constraint(m,  - x119 - x127 + x167 <= 0)

@constraint(m,  - x120 - x128 + x168 <= 0)

@constraint(m,  - x121 - x129 + x169 <= 0)

@constraint(m,  - x122 - x130 + x170 <= 0)

@constraint(m,  - x123 - x131 + x171 <= 0)

@constraint(m,  - x124 - x132 + x172 <= 0)

@constraint(m,  - x125 - x133 + x173 <= 0)

@constraint(m,  - x126 - x134 + x174 <= 0)

@constraint(m,  - x127 - x135 + x175 <= 0)

@constraint(m,  - x128 - x136 + x176 <= 0)

@constraint(m,  - x129 - x137 + x177 <= 0)

@constraint(m,  - x130 - x138 + x178 <= 0)

@constraint(m,  - x131 - x139 + x179 <= 0)

@constraint(m,  - x132 - x140 + x180 <= 0)

@constraint(m,  - x133 - x141 + x181 <= 0)

@constraint(m,  - x134 - x142 + x182 <= 0)

@constraint(m,  - x135 - x143 + x183 <= 0)

@constraint(m,  - x136 - x144 + x184 <= 0)

@constraint(m,  - x137 - x145 + x185 <= 0)

@constraint(m,  - x138 - x146 + x186 <= 0)

@constraint(m,  - x139 - x147 + x187 <= 0)

@constraint(m,  - x140 - x148 + x188 <= 0)

@constraint(m,  - x141 - x149 + x189 <= 0)

@constraint(m,  - x142 - x150 + x190 <= 0)

@constraint(m,  - x143 - x151 + x191 <= 0)

@constraint(m,  - x144 - x152 + x192 <= 0)

@constraint(m,  - x145 - x153 + x193 <= 0)

@constraint(m,  - x146 - x154 + x194 <= 0)

@constraint(m,  - x147 - x155 + x195 <= 0)

@constraint(m,  - x148 - x156 + x196 <= 0)

@constraint(m,  - x149 - x157 + x197 <= 0)

@constraint(m,  - x150 - x158 + x198 <= 0)

@constraint(m,  - x151 - x159 + x199 <= 0)

@constraint(m,  - x152 - x160 + x200 <= 0)

@constraint(m,  - x153 - x161 + x201 <= 0)

@constraint(m,  - x154 - x162 + x202 <= 0)

@constraint(m,  - x155 - x163 + x203 <= 0)

@constraint(m,  - x156 - x164 + x204 <= 0)

@constraint(m,  - x157 - x165 + x205 <= 0)

@constraint(m,  - x158 - x166 + x206 <= 0)

@constraint(m,  - x159 - x167 + x207 <= 0)

@constraint(m,  - x160 - x168 + x208 <= 0)

@constraint(m,  - x161 - x169 + x209 <= 0)

@constraint(m,  - x162 - x170 + x210 <= 0)

@constraint(m,  - x163 - x171 + x211 <= 0)

@constraint(m,  - x164 - x172 + x212 <= 0)

@constraint(m,  - x165 - x173 + x213 <= 0)

@constraint(m,  - x166 - x174 + x214 <= 0)

@constraint(m,  - x167 - x175 + x215 <= 0)

@constraint(m,  - x168 - x176 + x216 <= 0)

@constraint(m,  - x169 - x177 + x217 <= 0)

@constraint(m,  - x170 - x178 + x218 <= 0)

@constraint(m,  - x171 - x179 + x219 <= 0)

@constraint(m,  - x172 - x180 + x220 <= 0)

@constraint(m,  - x173 - x181 + x221 <= 0)

@constraint(m,  - x174 - x182 + x222 <= 0)

@constraint(m,  - x175 - x183 + x223 <= 0)

@constraint(m,  - x176 - x184 + x224 <= 0)

@constraint(m,  - x177 - x185 + x225 <= 0)

@constraint(m,  - x178 - x186 + x226 <= 0)

@constraint(m,  - x179 - x187 + x227 <= 0)

@constraint(m,  - x180 - x188 + x228 <= 0)

@constraint(m,  - x181 - x189 + x229 <= 0)

@constraint(m,  - x182 - x190 + x230 <= 0)

@constraint(m,  - x183 - x191 + x231 <= 0)

@constraint(m,  - x184 - x192 + x232 <= 0)

@constraint(m,  - x185 - x193 + x233 <= 0)

@constraint(m,  - x186 - x194 + x234 <= 0)

@constraint(m,  - x187 - x195 + x235 <= 0)

@constraint(m,  - x188 - x196 + x236 <= 0)

@constraint(m,  - x189 - x197 + x237 <= 0)

@constraint(m,  - x190 - x198 + x238 <= 0)

@constraint(m,  - x191 - x199 + x239 <= 0)

@constraint(m,  - x192 - x200 + x240 <= 0)

@constraint(m,  - x193 - x201 + x241 <= 0)

@constraint(m,  - x194 - x202 + x242 <= 0)

@constraint(m,  - x195 - x203 + x243 <= 0)

@constraint(m,  - x196 - x204 + x244 <= 0)

@constraint(m,  - x197 - x205 + x245 <= 0)

@constraint(m,  - x198 - x206 + x246 <= 0)

@constraint(m,  - x199 - x207 + x247 <= 0)

@constraint(m,  - x200 - x208 + x248 <= 0)

@constraint(m,  - x201 - x209 + x249 <= 0)

@constraint(m,  - x202 - x210 + x250 <= 0)

@constraint(m,  - x203 - x211 + x251 <= 0)

@constraint(m,  - x204 - x212 + x252 <= 0)

@constraint(m,  - x205 - x213 + x253 <= 0)

@constraint(m,  - x206 - x214 + x254 <= 0)

@constraint(m,  - x207 - x215 + x255 <= 0)

@constraint(m,  - x208 - x216 + x256 <= 0)

@constraint(m,  - x209 - x217 + x257 <= 0)

@constraint(m,  - x210 - x218 + x258 <= 0)

@constraint(m,  - x211 - x219 + x259 <= 0)

@constraint(m,  - x212 - x220 + x260 <= 0)

@constraint(m,  - x213 - x221 + x261 <= 0)

@constraint(m,  - x214 - x222 + x262 <= 0)

@constraint(m,  - x215 - x223 + x263 <= 0)

@constraint(m,  - x216 - x224 + x264 <= 0)

@constraint(m,  - x217 - x225 + x265 <= 0)

@constraint(m,  - x218 - x226 + x266 <= 0)

@constraint(m,  - x219 - x227 + x267 <= 0)

@constraint(m,  - x220 - x228 + x268 <= 0)

@constraint(m,  - x221 - x229 + x269 <= 0)

@constraint(m,  - x222 - x230 + x270 <= 0)

@constraint(m,  - x223 - x231 + x271 <= 0)

@constraint(m,  - x224 - x232 + x272 <= 0)

@constraint(m,  - x225 - x233 + x273 <= 0)

@constraint(m,  - x226 - x234 + x274 <= 0)

@constraint(m,  - x227 - x235 + x275 <= 0)

@constraint(m,  - x228 - x236 + x276 <= 0)

@constraint(m,  - x229 - x237 + x277 <= 0)

@constraint(m,  - x230 - x238 + x278 <= 0)

@constraint(m,  - x231 - x239 + x279 <= 0)

@constraint(m,  - x232 - x240 + x280 <= 0)

@constraint(m,  - x233 - x241 + x281 <= 0)

@constraint(m,  - x234 - x242 + x282 <= 0)

@constraint(m,  - x235 - x243 + x283 <= 0)

@constraint(m,  - x236 - x244 + x284 <= 0)

@constraint(m,  - x237 - x245 + x285 <= 0)

@constraint(m,  - x238 - x246 + x286 <= 0)

@constraint(m,  - x239 - x247 + x287 <= 0)

@constraint(m,  - x240 - x248 + x288 <= 0)

@constraint(m,  - x241 - x249 + x289 <= 0)

@constraint(m,  - x242 - x250 + x290 <= 0)

@constraint(m,  - x243 - x251 + x291 <= 0)

@constraint(m,  - x244 - x252 + x292 <= 0)

@constraint(m,  - x245 - x253 + x293 <= 0)

@constraint(m,  - x246 - x254 + x294 <= 0)

@constraint(m,  - x247 - x255 + x295 <= 0)

@constraint(m,  - x248 - x256 + x296 <= 0)

@constraint(m,  - x249 - x257 + x297 <= 0)

@constraint(m,  - x250 - x258 + x298 <= 0)

@constraint(m,  - x251 - x259 + x299 <= 0)

@constraint(m,  - x252 - x260 + x300 <= 0)

@constraint(m,  - x253 - x261 + x301 <= 0)

@constraint(m,  - x254 - x262 + x302 <= 0)

@constraint(m,  - x255 - x263 + x303 <= 0)

@constraint(m,  - x256 - x264 + x304 <= 0)

@constraint(m,  - x257 - x265 + x305 <= 0)

@constraint(m,  - x258 - x266 + x306 <= 0)

@constraint(m,  - x259 - x267 + x307 <= 0)

@constraint(m,  - x260 - x268 + x308 <= 0)

@constraint(m,  - x261 - x269 + x309 <= 0)

@constraint(m,  - x262 - x270 + x310 <= 0)

@constraint(m,  - x263 - x271 + x311 <= 0)

@constraint(m,  - x264 - x272 + x312 <= 0)

@constraint(m,  - x265 - x273 + x313 <= 0)

@constraint(m,  - x266 - x274 + x314 <= 0)

@constraint(m,  - x267 - x275 + x315 <= 0)

@constraint(m,  - x268 - x276 + x316 <= 0)

@constraint(m,  - x269 - x277 + x317 <= 0)

@constraint(m,  - x270 - x278 + x318 <= 0)

@constraint(m,  - x271 - x279 + x319 <= 0)

@constraint(m,  - x272 - x280 + x320 <= 0)

@constraint(m,  - x273 - x281 + x321 <= 0)

@constraint(m,  - x274 - x282 + x322 <= 0)

@constraint(m,  - x275 - x283 + x323 <= 0)

@constraint(m,  - x276 - x284 + x324 <= 0)

@constraint(m,  - x277 - x285 + x325 <= 0)

@constraint(m,  - x278 - x286 + x326 <= 0)

@constraint(m,  - x279 - x287 + x327 <= 0)

@constraint(m,  - x280 - x288 + x328 <= 0)

@constraint(m,  - x281 - x289 + x329 <= 0)

@constraint(m,  - x282 - x290 + x330 <= 0)

@constraint(m,  - x283 - x291 + x331 <= 0)

@constraint(m,  - x284 - x292 + x332 <= 0)

@constraint(m,  - x285 - x293 + x333 <= 0)

@constraint(m,  - x286 - x294 + x334 <= 0)

@constraint(m,  - x287 - x295 + x335 <= 0)

@constraint(m,  - x288 - x296 + x336 <= 0)

@constraint(m,  - x289 - x297 + x337 <= 0)

@constraint(m,  - x290 - x298 + x338 <= 0)

@constraint(m,  - x291 - x299 + x339 <= 0)

@constraint(m,  - x292 - x300 + x340 <= 0)

@constraint(m,  - x293 - x301 + x341 <= 0)

@constraint(m,  - x294 - x302 + x342 <= 0)

@constraint(m,  - x295 - x303 + x343 <= 0)

@constraint(m,  - x296 - x304 + x344 <= 0)

@constraint(m,  - x297 - x305 + x345 <= 0)

@constraint(m,  - x298 - x306 + x346 <= 0)

@constraint(m,  - x299 - x307 + x347 <= 0)

@constraint(m,  - x300 - x308 + x348 <= 0)

@constraint(m,  - x301 - x309 + x349 <= 0)

@constraint(m,  - x302 - x310 + x350 <= 0)

@constraint(m, b1 + b9 + x49 <= 2)

@constraint(m, b2 + b10 + x50 <= 2)

@constraint(m, b3 + b11 + x51 <= 2)

@constraint(m, b4 + b12 + x52 <= 2)

@constraint(m, b5 + b13 + x53 <= 2)

@constraint(m, b6 + b14 + x54 <= 2)

@constraint(m, b7 + b15 + x55 <= 2)

@constraint(m, b8 + b16 + x56 <= 2)

@constraint(m, b9 + b17 + x57 <= 2)

@constraint(m, b10 + b18 + x58 <= 2)

@constraint(m, b11 + b19 + x59 <= 2)

@constraint(m, b12 + b20 + x60 <= 2)

@constraint(m, b13 + b21 + x61 <= 2)

@constraint(m, b14 + b22 + x62 <= 2)

@constraint(m, b15 + b23 + x63 <= 2)

@constraint(m, b16 + b24 + x64 <= 2)

@constraint(m, b17 + b25 + x65 <= 2)

@constraint(m, b18 + b26 + x66 <= 2)

@constraint(m, b19 + b27 + x67 <= 2)

@constraint(m, b20 + b28 + x68 <= 2)

@constraint(m, b21 + b29 + x69 <= 2)

@constraint(m, b22 + b30 + x70 <= 2)

@constraint(m, b23 + b31 + x71 <= 2)

@constraint(m, b24 + b32 + x72 <= 2)

@constraint(m, b25 + b33 + x73 <= 2)

@constraint(m, b26 + b34 + x74 <= 2)

@constraint(m, b27 + b35 + x75 <= 2)

@constraint(m, b28 + b36 + x76 <= 2)

@constraint(m, b29 + b37 + x77 <= 2)

@constraint(m, b30 + b38 + x78 <= 2)

@constraint(m, b31 + b39 + x79 <= 2)

@constraint(m, b32 + b40 + x80 <= 2)

@constraint(m, b33 + b41 + x81 <= 2)

@constraint(m, b34 + b42 + x82 <= 2)

@constraint(m, b35 + b43 + x83 <= 2)

@constraint(m, b36 + b44 + x84 <= 2)

@constraint(m, b37 + b45 + x85 <= 2)

@constraint(m, b38 + b46 + x86 <= 2)

@constraint(m, b39 + b47 + x87 <= 2)

@constraint(m, b40 + b48 + x88 <= 2)

@constraint(m, b41 + x49 + x89 <= 2)

@constraint(m, b42 + x50 + x90 <= 2)

@constraint(m, b43 + x51 + x91 <= 2)

@constraint(m, b44 + x52 + x92 <= 2)

@constraint(m, b45 + x53 + x93 <= 2)

@constraint(m, b46 + x54 + x94 <= 2)

@constraint(m, b47 + x55 + x95 <= 2)

@constraint(m, b48 + x56 + x96 <= 2)

@constraint(m, x49 + x57 + x97 <= 2)

@constraint(m, x50 + x58 + x98 <= 2)

@constraint(m, x51 + x59 + x99 <= 2)

@constraint(m, x52 + x60 + x100 <= 2)

@constraint(m, x53 + x61 + x101 <= 2)

@constraint(m, x54 + x62 + x102 <= 2)

@constraint(m, x55 + x63 + x103 <= 2)

@constraint(m, x56 + x64 + x104 <= 2)

@constraint(m, x57 + x65 + x105 <= 2)

@constraint(m, x58 + x66 + x106 <= 2)

@constraint(m, x59 + x67 + x107 <= 2)

@constraint(m, x60 + x68 + x108 <= 2)

@constraint(m, x61 + x69 + x109 <= 2)

@constraint(m, x62 + x70 + x110 <= 2)

@constraint(m, x63 + x71 + x111 <= 2)

@constraint(m, x64 + x72 + x112 <= 2)

@constraint(m, x65 + x73 + x113 <= 2)

@constraint(m, x66 + x74 + x114 <= 2)

@constraint(m, x67 + x75 + x115 <= 2)

@constraint(m, x68 + x76 + x116 <= 2)

@constraint(m, x69 + x77 + x117 <= 2)

@constraint(m, x70 + x78 + x118 <= 2)

@constraint(m, x71 + x79 + x119 <= 2)

@constraint(m, x72 + x80 + x120 <= 2)

@constraint(m, x73 + x81 + x121 <= 2)

@constraint(m, x74 + x82 + x122 <= 2)

@constraint(m, x75 + x83 + x123 <= 2)

@constraint(m, x76 + x84 + x124 <= 2)

@constraint(m, x77 + x85 + x125 <= 2)

@constraint(m, x78 + x86 + x126 <= 2)

@constraint(m, x79 + x87 + x127 <= 2)

@constraint(m, x80 + x88 + x128 <= 2)

@constraint(m, x81 + x89 + x129 <= 2)

@constraint(m, x82 + x90 + x130 <= 2)

@constraint(m, x83 + x91 + x131 <= 2)

@constraint(m, x84 + x92 + x132 <= 2)

@constraint(m, x85 + x93 + x133 <= 2)

@constraint(m, x86 + x94 + x134 <= 2)

@constraint(m, x87 + x95 + x135 <= 2)

@constraint(m, x88 + x96 + x136 <= 2)

@constraint(m, x89 + x97 + x137 <= 2)

@constraint(m, x90 + x98 + x138 <= 2)

@constraint(m, x91 + x99 + x139 <= 2)

@constraint(m, x92 + x100 + x140 <= 2)

@constraint(m, x93 + x101 + x141 <= 2)

@constraint(m, x94 + x102 + x142 <= 2)

@constraint(m, x95 + x103 + x143 <= 2)

@constraint(m, x96 + x104 + x144 <= 2)

@constraint(m, x97 + x105 + x145 <= 2)

@constraint(m, x98 + x106 + x146 <= 2)

@constraint(m, x99 + x107 + x147 <= 2)

@constraint(m, x100 + x108 + x148 <= 2)

@constraint(m, x101 + x109 + x149 <= 2)

@constraint(m, x102 + x110 + x150 <= 2)

@constraint(m, x103 + x111 + x151 <= 2)

@constraint(m, x104 + x112 + x152 <= 2)

@constraint(m, x105 + x113 + x153 <= 2)

@constraint(m, x106 + x114 + x154 <= 2)

@constraint(m, x107 + x115 + x155 <= 2)

@constraint(m, x108 + x116 + x156 <= 2)

@constraint(m, x109 + x117 + x157 <= 2)

@constraint(m, x110 + x118 + x158 <= 2)

@constraint(m, x111 + x119 + x159 <= 2)

@constraint(m, x112 + x120 + x160 <= 2)

@constraint(m, x113 + x121 + x161 <= 2)

@constraint(m, x114 + x122 + x162 <= 2)

@constraint(m, x115 + x123 + x163 <= 2)

@constraint(m, x116 + x124 + x164 <= 2)

@constraint(m, x117 + x125 + x165 <= 2)

@constraint(m, x118 + x126 + x166 <= 2)

@constraint(m, x119 + x127 + x167 <= 2)

@constraint(m, x120 + x128 + x168 <= 2)

@constraint(m, x121 + x129 + x169 <= 2)

@constraint(m, x122 + x130 + x170 <= 2)

@constraint(m, x123 + x131 + x171 <= 2)

@constraint(m, x124 + x132 + x172 <= 2)

@constraint(m, x125 + x133 + x173 <= 2)

@constraint(m, x126 + x134 + x174 <= 2)

@constraint(m, x127 + x135 + x175 <= 2)

@constraint(m, x128 + x136 + x176 <= 2)

@constraint(m, x129 + x137 + x177 <= 2)

@constraint(m, x130 + x138 + x178 <= 2)

@constraint(m, x131 + x139 + x179 <= 2)

@constraint(m, x132 + x140 + x180 <= 2)

@constraint(m, x133 + x141 + x181 <= 2)

@constraint(m, x134 + x142 + x182 <= 2)

@constraint(m, x135 + x143 + x183 <= 2)

@constraint(m, x136 + x144 + x184 <= 2)

@constraint(m, x137 + x145 + x185 <= 2)

@constraint(m, x138 + x146 + x186 <= 2)

@constraint(m, x139 + x147 + x187 <= 2)

@constraint(m, x140 + x148 + x188 <= 2)

@constraint(m, x141 + x149 + x189 <= 2)

@constraint(m, x142 + x150 + x190 <= 2)

@constraint(m, x143 + x151 + x191 <= 2)

@constraint(m, x144 + x152 + x192 <= 2)

@constraint(m, x145 + x153 + x193 <= 2)

@constraint(m, x146 + x154 + x194 <= 2)

@constraint(m, x147 + x155 + x195 <= 2)

@constraint(m, x148 + x156 + x196 <= 2)

@constraint(m, x149 + x157 + x197 <= 2)

@constraint(m, x150 + x158 + x198 <= 2)

@constraint(m, x151 + x159 + x199 <= 2)

@constraint(m, x152 + x160 + x200 <= 2)

@constraint(m, x153 + x161 + x201 <= 2)

@constraint(m, x154 + x162 + x202 <= 2)

@constraint(m, x155 + x163 + x203 <= 2)

@constraint(m, x156 + x164 + x204 <= 2)

@constraint(m, x157 + x165 + x205 <= 2)

@constraint(m, x158 + x166 + x206 <= 2)

@constraint(m, x159 + x167 + x207 <= 2)

@constraint(m, x160 + x168 + x208 <= 2)

@constraint(m, x161 + x169 + x209 <= 2)

@constraint(m, x162 + x170 + x210 <= 2)

@constraint(m, x163 + x171 + x211 <= 2)

@constraint(m, x164 + x172 + x212 <= 2)

@constraint(m, x165 + x173 + x213 <= 2)

@constraint(m, x166 + x174 + x214 <= 2)

@constraint(m, x167 + x175 + x215 <= 2)

@constraint(m, x168 + x176 + x216 <= 2)

@constraint(m, x169 + x177 + x217 <= 2)

@constraint(m, x170 + x178 + x218 <= 2)

@constraint(m, x171 + x179 + x219 <= 2)

@constraint(m, x172 + x180 + x220 <= 2)

@constraint(m, x173 + x181 + x221 <= 2)

@constraint(m, x174 + x182 + x222 <= 2)

@constraint(m, x175 + x183 + x223 <= 2)

@constraint(m, x176 + x184 + x224 <= 2)

@constraint(m, x177 + x185 + x225 <= 2)

@constraint(m, x178 + x186 + x226 <= 2)

@constraint(m, x179 + x187 + x227 <= 2)

@constraint(m, x180 + x188 + x228 <= 2)

@constraint(m, x181 + x189 + x229 <= 2)

@constraint(m, x182 + x190 + x230 <= 2)

@constraint(m, x183 + x191 + x231 <= 2)

@constraint(m, x184 + x192 + x232 <= 2)

@constraint(m, x185 + x193 + x233 <= 2)

@constraint(m, x186 + x194 + x234 <= 2)

@constraint(m, x187 + x195 + x235 <= 2)

@constraint(m, x188 + x196 + x236 <= 2)

@constraint(m, x189 + x197 + x237 <= 2)

@constraint(m, x190 + x198 + x238 <= 2)

@constraint(m, x191 + x199 + x239 <= 2)

@constraint(m, x192 + x200 + x240 <= 2)

@constraint(m, x193 + x201 + x241 <= 2)

@constraint(m, x194 + x202 + x242 <= 2)

@constraint(m, x195 + x203 + x243 <= 2)

@constraint(m, x196 + x204 + x244 <= 2)

@constraint(m, x197 + x205 + x245 <= 2)

@constraint(m, x198 + x206 + x246 <= 2)

@constraint(m, x199 + x207 + x247 <= 2)

@constraint(m, x200 + x208 + x248 <= 2)

@constraint(m, x201 + x209 + x249 <= 2)

@constraint(m, x202 + x210 + x250 <= 2)

@constraint(m, x203 + x211 + x251 <= 2)

@constraint(m, x204 + x212 + x252 <= 2)

@constraint(m, x205 + x213 + x253 <= 2)

@constraint(m, x206 + x214 + x254 <= 2)

@constraint(m, x207 + x215 + x255 <= 2)

@constraint(m, x208 + x216 + x256 <= 2)

@constraint(m, x209 + x217 + x257 <= 2)

@constraint(m, x210 + x218 + x258 <= 2)

@constraint(m, x211 + x219 + x259 <= 2)

@constraint(m, x212 + x220 + x260 <= 2)

@constraint(m, x213 + x221 + x261 <= 2)

@constraint(m, x214 + x222 + x262 <= 2)

@constraint(m, x215 + x223 + x263 <= 2)

@constraint(m, x216 + x224 + x264 <= 2)

@constraint(m, x217 + x225 + x265 <= 2)

@constraint(m, x218 + x226 + x266 <= 2)

@constraint(m, x219 + x227 + x267 <= 2)

@constraint(m, x220 + x228 + x268 <= 2)

@constraint(m, x221 + x229 + x269 <= 2)

@constraint(m, x222 + x230 + x270 <= 2)

@constraint(m, x223 + x231 + x271 <= 2)

@constraint(m, x224 + x232 + x272 <= 2)

@constraint(m, x225 + x233 + x273 <= 2)

@constraint(m, x226 + x234 + x274 <= 2)

@constraint(m, x227 + x235 + x275 <= 2)

@constraint(m, x228 + x236 + x276 <= 2)

@constraint(m, x229 + x237 + x277 <= 2)

@constraint(m, x230 + x238 + x278 <= 2)

@constraint(m, x231 + x239 + x279 <= 2)

@constraint(m, x232 + x240 + x280 <= 2)

@constraint(m, x233 + x241 + x281 <= 2)

@constraint(m, x234 + x242 + x282 <= 2)

@constraint(m, x235 + x243 + x283 <= 2)

@constraint(m, x236 + x244 + x284 <= 2)

@constraint(m, x237 + x245 + x285 <= 2)

@constraint(m, x238 + x246 + x286 <= 2)

@constraint(m, x239 + x247 + x287 <= 2)

@constraint(m, x240 + x248 + x288 <= 2)

@constraint(m, x241 + x249 + x289 <= 2)

@constraint(m, x242 + x250 + x290 <= 2)

@constraint(m, x243 + x251 + x291 <= 2)

@constraint(m, x244 + x252 + x292 <= 2)

@constraint(m, x245 + x253 + x293 <= 2)

@constraint(m, x246 + x254 + x294 <= 2)

@constraint(m, x247 + x255 + x295 <= 2)

@constraint(m, x248 + x256 + x296 <= 2)

@constraint(m, x249 + x257 + x297 <= 2)

@constraint(m, x250 + x258 + x298 <= 2)

@constraint(m, x251 + x259 + x299 <= 2)

@constraint(m, x252 + x260 + x300 <= 2)

@constraint(m, x253 + x261 + x301 <= 2)

@constraint(m, x254 + x262 + x302 <= 2)

@constraint(m, x255 + x263 + x303 <= 2)

@constraint(m, x256 + x264 + x304 <= 2)

@constraint(m, x257 + x265 + x305 <= 2)

@constraint(m, x258 + x266 + x306 <= 2)

@constraint(m, x259 + x267 + x307 <= 2)

@constraint(m, x260 + x268 + x308 <= 2)

@constraint(m, x261 + x269 + x309 <= 2)

@constraint(m, x262 + x270 + x310 <= 2)

@constraint(m, x263 + x271 + x311 <= 2)

@constraint(m, x264 + x272 + x312 <= 2)

@constraint(m, x265 + x273 + x313 <= 2)

@constraint(m, x266 + x274 + x314 <= 2)

@constraint(m, x267 + x275 + x315 <= 2)

@constraint(m, x268 + x276 + x316 <= 2)

@constraint(m, x269 + x277 + x317 <= 2)

@constraint(m, x270 + x278 + x318 <= 2)

@constraint(m, x271 + x279 + x319 <= 2)

@constraint(m, x272 + x280 + x320 <= 2)

@constraint(m, x273 + x281 + x321 <= 2)

@constraint(m, x274 + x282 + x322 <= 2)

@constraint(m, x275 + x283 + x323 <= 2)

@constraint(m, x276 + x284 + x324 <= 2)

@constraint(m, x277 + x285 + x325 <= 2)

@constraint(m, x278 + x286 + x326 <= 2)

@constraint(m, x279 + x287 + x327 <= 2)

@constraint(m, x280 + x288 + x328 <= 2)

@constraint(m, x281 + x289 + x329 <= 2)

@constraint(m, x282 + x290 + x330 <= 2)

@constraint(m, x283 + x291 + x331 <= 2)

@constraint(m, x284 + x292 + x332 <= 2)

@constraint(m, x285 + x293 + x333 <= 2)

@constraint(m, x286 + x294 + x334 <= 2)

@constraint(m, x287 + x295 + x335 <= 2)

@constraint(m, x288 + x296 + x336 <= 2)

@constraint(m, x289 + x297 + x337 <= 2)

@constraint(m, x290 + x298 + x338 <= 2)

@constraint(m, x291 + x299 + x339 <= 2)

@constraint(m, x292 + x300 + x340 <= 2)

@constraint(m, x293 + x301 + x341 <= 2)

@constraint(m, x294 + x302 + x342 <= 2)

@constraint(m, x295 + x303 + x343 <= 2)

@constraint(m, x296 + x304 + x344 <= 2)

@constraint(m, x297 + x305 + x345 <= 2)

@constraint(m, x298 + x306 + x346 <= 2)

@constraint(m, x299 + x307 + x347 <= 2)

@constraint(m, x300 + x308 + x348 <= 2)

@constraint(m, x301 + x309 + x349 <= 2)

@constraint(m, x302 + x310 + x350 <= 2)

@constraint(m, b1 - b9 + x49 >= 0)

@constraint(m, b2 - b10 + x50 >= 0)

@constraint(m, b3 - b11 + x51 >= 0)

@constraint(m, b4 - b12 + x52 >= 0)

@constraint(m, b5 - b13 + x53 >= 0)

@constraint(m, b6 - b14 + x54 >= 0)

@constraint(m, b7 - b15 + x55 >= 0)

@constraint(m, b8 - b16 + x56 >= 0)

@constraint(m, b9 - b17 + x57 >= 0)

@constraint(m, b10 - b18 + x58 >= 0)

@constraint(m, b11 - b19 + x59 >= 0)

@constraint(m, b12 - b20 + x60 >= 0)

@constraint(m, b13 - b21 + x61 >= 0)

@constraint(m, b14 - b22 + x62 >= 0)

@constraint(m, b15 - b23 + x63 >= 0)

@constraint(m, b16 - b24 + x64 >= 0)

@constraint(m, b17 - b25 + x65 >= 0)

@constraint(m, b18 - b26 + x66 >= 0)

@constraint(m, b19 - b27 + x67 >= 0)

@constraint(m, b20 - b28 + x68 >= 0)

@constraint(m, b21 - b29 + x69 >= 0)

@constraint(m, b22 - b30 + x70 >= 0)

@constraint(m, b23 - b31 + x71 >= 0)

@constraint(m, b24 - b32 + x72 >= 0)

@constraint(m, b25 - b33 + x73 >= 0)

@constraint(m, b26 - b34 + x74 >= 0)

@constraint(m, b27 - b35 + x75 >= 0)

@constraint(m, b28 - b36 + x76 >= 0)

@constraint(m, b29 - b37 + x77 >= 0)

@constraint(m, b30 - b38 + x78 >= 0)

@constraint(m, b31 - b39 + x79 >= 0)

@constraint(m, b32 - b40 + x80 >= 0)

@constraint(m, b33 - b41 + x81 >= 0)

@constraint(m, b34 - b42 + x82 >= 0)

@constraint(m, b35 - b43 + x83 >= 0)

@constraint(m, b36 - b44 + x84 >= 0)

@constraint(m, b37 - b45 + x85 >= 0)

@constraint(m, b38 - b46 + x86 >= 0)

@constraint(m, b39 - b47 + x87 >= 0)

@constraint(m, b40 - b48 + x88 >= 0)

@constraint(m, b41 - x49 + x89 >= 0)

@constraint(m, b42 - x50 + x90 >= 0)

@constraint(m, b43 - x51 + x91 >= 0)

@constraint(m, b44 - x52 + x92 >= 0)

@constraint(m, b45 - x53 + x93 >= 0)

@constraint(m, b46 - x54 + x94 >= 0)

@constraint(m, b47 - x55 + x95 >= 0)

@constraint(m, b48 - x56 + x96 >= 0)

@constraint(m, x49 - x57 + x97 >= 0)

@constraint(m, x50 - x58 + x98 >= 0)

@constraint(m, x51 - x59 + x99 >= 0)

@constraint(m, x52 - x60 + x100 >= 0)

@constraint(m, x53 - x61 + x101 >= 0)

@constraint(m, x54 - x62 + x102 >= 0)

@constraint(m, x55 - x63 + x103 >= 0)

@constraint(m, x56 - x64 + x104 >= 0)

@constraint(m, x57 - x65 + x105 >= 0)

@constraint(m, x58 - x66 + x106 >= 0)

@constraint(m, x59 - x67 + x107 >= 0)

@constraint(m, x60 - x68 + x108 >= 0)

@constraint(m, x61 - x69 + x109 >= 0)

@constraint(m, x62 - x70 + x110 >= 0)

@constraint(m, x63 - x71 + x111 >= 0)

@constraint(m, x64 - x72 + x112 >= 0)

@constraint(m, x65 - x73 + x113 >= 0)

@constraint(m, x66 - x74 + x114 >= 0)

@constraint(m, x67 - x75 + x115 >= 0)

@constraint(m, x68 - x76 + x116 >= 0)

@constraint(m, x69 - x77 + x117 >= 0)

@constraint(m, x70 - x78 + x118 >= 0)

@constraint(m, x71 - x79 + x119 >= 0)

@constraint(m, x72 - x80 + x120 >= 0)

@constraint(m, x73 - x81 + x121 >= 0)

@constraint(m, x74 - x82 + x122 >= 0)

@constraint(m, x75 - x83 + x123 >= 0)

@constraint(m, x76 - x84 + x124 >= 0)

@constraint(m, x77 - x85 + x125 >= 0)

@constraint(m, x78 - x86 + x126 >= 0)

@constraint(m, x79 - x87 + x127 >= 0)

@constraint(m, x80 - x88 + x128 >= 0)

@constraint(m, x81 - x89 + x129 >= 0)

@constraint(m, x82 - x90 + x130 >= 0)

@constraint(m, x83 - x91 + x131 >= 0)

@constraint(m, x84 - x92 + x132 >= 0)

@constraint(m, x85 - x93 + x133 >= 0)

@constraint(m, x86 - x94 + x134 >= 0)

@constraint(m, x87 - x95 + x135 >= 0)

@constraint(m, x88 - x96 + x136 >= 0)

@constraint(m, x89 - x97 + x137 >= 0)

@constraint(m, x90 - x98 + x138 >= 0)

@constraint(m, x91 - x99 + x139 >= 0)

@constraint(m, x92 - x100 + x140 >= 0)

@constraint(m, x93 - x101 + x141 >= 0)

@constraint(m, x94 - x102 + x142 >= 0)

@constraint(m, x95 - x103 + x143 >= 0)

@constraint(m, x96 - x104 + x144 >= 0)

@constraint(m, x97 - x105 + x145 >= 0)

@constraint(m, x98 - x106 + x146 >= 0)

@constraint(m, x99 - x107 + x147 >= 0)

@constraint(m, x100 - x108 + x148 >= 0)

@constraint(m, x101 - x109 + x149 >= 0)

@constraint(m, x102 - x110 + x150 >= 0)

@constraint(m, x103 - x111 + x151 >= 0)

@constraint(m, x104 - x112 + x152 >= 0)

@constraint(m, x105 - x113 + x153 >= 0)

@constraint(m, x106 - x114 + x154 >= 0)

@constraint(m, x107 - x115 + x155 >= 0)

@constraint(m, x108 - x116 + x156 >= 0)

@constraint(m, x109 - x117 + x157 >= 0)

@constraint(m, x110 - x118 + x158 >= 0)

@constraint(m, x111 - x119 + x159 >= 0)

@constraint(m, x112 - x120 + x160 >= 0)

@constraint(m, x113 - x121 + x161 >= 0)

@constraint(m, x114 - x122 + x162 >= 0)

@constraint(m, x115 - x123 + x163 >= 0)

@constraint(m, x116 - x124 + x164 >= 0)

@constraint(m, x117 - x125 + x165 >= 0)

@constraint(m, x118 - x126 + x166 >= 0)

@constraint(m, x119 - x127 + x167 >= 0)

@constraint(m, x120 - x128 + x168 >= 0)

@constraint(m, x121 - x129 + x169 >= 0)

@constraint(m, x122 - x130 + x170 >= 0)

@constraint(m, x123 - x131 + x171 >= 0)

@constraint(m, x124 - x132 + x172 >= 0)

@constraint(m, x125 - x133 + x173 >= 0)

@constraint(m, x126 - x134 + x174 >= 0)

@constraint(m, x127 - x135 + x175 >= 0)

@constraint(m, x128 - x136 + x176 >= 0)

@constraint(m, x129 - x137 + x177 >= 0)

@constraint(m, x130 - x138 + x178 >= 0)

@constraint(m, x131 - x139 + x179 >= 0)

@constraint(m, x132 - x140 + x180 >= 0)

@constraint(m, x133 - x141 + x181 >= 0)

@constraint(m, x134 - x142 + x182 >= 0)

@constraint(m, x135 - x143 + x183 >= 0)

@constraint(m, x136 - x144 + x184 >= 0)

@constraint(m, x137 - x145 + x185 >= 0)

@constraint(m, x138 - x146 + x186 >= 0)

@constraint(m, x139 - x147 + x187 >= 0)

@constraint(m, x140 - x148 + x188 >= 0)

@constraint(m, x141 - x149 + x189 >= 0)

@constraint(m, x142 - x150 + x190 >= 0)

@constraint(m, x143 - x151 + x191 >= 0)

@constraint(m, x144 - x152 + x192 >= 0)

@constraint(m, x145 - x153 + x193 >= 0)

@constraint(m, x146 - x154 + x194 >= 0)

@constraint(m, x147 - x155 + x195 >= 0)

@constraint(m, x148 - x156 + x196 >= 0)

@constraint(m, x149 - x157 + x197 >= 0)

@constraint(m, x150 - x158 + x198 >= 0)

@constraint(m, x151 - x159 + x199 >= 0)

@constraint(m, x152 - x160 + x200 >= 0)

@constraint(m, x153 - x161 + x201 >= 0)

@constraint(m, x154 - x162 + x202 >= 0)

@constraint(m, x155 - x163 + x203 >= 0)

@constraint(m, x156 - x164 + x204 >= 0)

@constraint(m, x157 - x165 + x205 >= 0)

@constraint(m, x158 - x166 + x206 >= 0)

@constraint(m, x159 - x167 + x207 >= 0)

@constraint(m, x160 - x168 + x208 >= 0)

@constraint(m, x161 - x169 + x209 >= 0)

@constraint(m, x162 - x170 + x210 >= 0)

@constraint(m, x163 - x171 + x211 >= 0)

@constraint(m, x164 - x172 + x212 >= 0)

@constraint(m, x165 - x173 + x213 >= 0)

@constraint(m, x166 - x174 + x214 >= 0)

@constraint(m, x167 - x175 + x215 >= 0)

@constraint(m, x168 - x176 + x216 >= 0)

@constraint(m, x169 - x177 + x217 >= 0)

@constraint(m, x170 - x178 + x218 >= 0)

@constraint(m, x171 - x179 + x219 >= 0)

@constraint(m, x172 - x180 + x220 >= 0)

@constraint(m, x173 - x181 + x221 >= 0)

@constraint(m, x174 - x182 + x222 >= 0)

@constraint(m, x175 - x183 + x223 >= 0)

@constraint(m, x176 - x184 + x224 >= 0)

@constraint(m, x177 - x185 + x225 >= 0)

@constraint(m, x178 - x186 + x226 >= 0)

@constraint(m, x179 - x187 + x227 >= 0)

@constraint(m, x180 - x188 + x228 >= 0)

@constraint(m, x181 - x189 + x229 >= 0)

@constraint(m, x182 - x190 + x230 >= 0)

@constraint(m, x183 - x191 + x231 >= 0)

@constraint(m, x184 - x192 + x232 >= 0)

@constraint(m, x185 - x193 + x233 >= 0)

@constraint(m, x186 - x194 + x234 >= 0)

@constraint(m, x187 - x195 + x235 >= 0)

@constraint(m, x188 - x196 + x236 >= 0)

@constraint(m, x189 - x197 + x237 >= 0)

@constraint(m, x190 - x198 + x238 >= 0)

@constraint(m, x191 - x199 + x239 >= 0)

@constraint(m, x192 - x200 + x240 >= 0)

@constraint(m, x193 - x201 + x241 >= 0)

@constraint(m, x194 - x202 + x242 >= 0)

@constraint(m, x195 - x203 + x243 >= 0)

@constraint(m, x196 - x204 + x244 >= 0)

@constraint(m, x197 - x205 + x245 >= 0)

@constraint(m, x198 - x206 + x246 >= 0)

@constraint(m, x199 - x207 + x247 >= 0)

@constraint(m, x200 - x208 + x248 >= 0)

@constraint(m, x201 - x209 + x249 >= 0)

@constraint(m, x202 - x210 + x250 >= 0)

@constraint(m, x203 - x211 + x251 >= 0)

@constraint(m, x204 - x212 + x252 >= 0)

@constraint(m, x205 - x213 + x253 >= 0)

@constraint(m, x206 - x214 + x254 >= 0)

@constraint(m, x207 - x215 + x255 >= 0)

@constraint(m, x208 - x216 + x256 >= 0)

@constraint(m, x209 - x217 + x257 >= 0)

@constraint(m, x210 - x218 + x258 >= 0)

@constraint(m, x211 - x219 + x259 >= 0)

@constraint(m, x212 - x220 + x260 >= 0)

@constraint(m, x213 - x221 + x261 >= 0)

@constraint(m, x214 - x222 + x262 >= 0)

@constraint(m, x215 - x223 + x263 >= 0)

@constraint(m, x216 - x224 + x264 >= 0)

@constraint(m, x217 - x225 + x265 >= 0)

@constraint(m, x218 - x226 + x266 >= 0)

@constraint(m, x219 - x227 + x267 >= 0)

@constraint(m, x220 - x228 + x268 >= 0)

@constraint(m, x221 - x229 + x269 >= 0)

@constraint(m, x222 - x230 + x270 >= 0)

@constraint(m, x223 - x231 + x271 >= 0)

@constraint(m, x224 - x232 + x272 >= 0)

@constraint(m, x225 - x233 + x273 >= 0)

@constraint(m, x226 - x234 + x274 >= 0)

@constraint(m, x227 - x235 + x275 >= 0)

@constraint(m, x228 - x236 + x276 >= 0)

@constraint(m, x229 - x237 + x277 >= 0)

@constraint(m, x230 - x238 + x278 >= 0)

@constraint(m, x231 - x239 + x279 >= 0)

@constraint(m, x232 - x240 + x280 >= 0)

@constraint(m, x233 - x241 + x281 >= 0)

@constraint(m, x234 - x242 + x282 >= 0)

@constraint(m, x235 - x243 + x283 >= 0)

@constraint(m, x236 - x244 + x284 >= 0)

@constraint(m, x237 - x245 + x285 >= 0)

@constraint(m, x238 - x246 + x286 >= 0)

@constraint(m, x239 - x247 + x287 >= 0)

@constraint(m, x240 - x248 + x288 >= 0)

@constraint(m, x241 - x249 + x289 >= 0)

@constraint(m, x242 - x250 + x290 >= 0)

@constraint(m, x243 - x251 + x291 >= 0)

@constraint(m, x244 - x252 + x292 >= 0)

@constraint(m, x245 - x253 + x293 >= 0)

@constraint(m, x246 - x254 + x294 >= 0)

@constraint(m, x247 - x255 + x295 >= 0)

@constraint(m, x248 - x256 + x296 >= 0)

@constraint(m, x249 - x257 + x297 >= 0)

@constraint(m, x250 - x258 + x298 >= 0)

@constraint(m, x251 - x259 + x299 >= 0)

@constraint(m, x252 - x260 + x300 >= 0)

@constraint(m, x253 - x261 + x301 >= 0)

@constraint(m, x254 - x262 + x302 >= 0)

@constraint(m, x255 - x263 + x303 >= 0)

@constraint(m, x256 - x264 + x304 >= 0)

@constraint(m, x257 - x265 + x305 >= 0)

@constraint(m, x258 - x266 + x306 >= 0)

@constraint(m, x259 - x267 + x307 >= 0)

@constraint(m, x260 - x268 + x308 >= 0)

@constraint(m, x261 - x269 + x309 >= 0)

@constraint(m, x262 - x270 + x310 >= 0)

@constraint(m, x263 - x271 + x311 >= 0)

@constraint(m, x264 - x272 + x312 >= 0)

@constraint(m, x265 - x273 + x313 >= 0)

@constraint(m, x266 - x274 + x314 >= 0)

@constraint(m, x267 - x275 + x315 >= 0)

@constraint(m, x268 - x276 + x316 >= 0)

@constraint(m, x269 - x277 + x317 >= 0)

@constraint(m, x270 - x278 + x318 >= 0)

@constraint(m, x271 - x279 + x319 >= 0)

@constraint(m, x272 - x280 + x320 >= 0)

@constraint(m, x273 - x281 + x321 >= 0)

@constraint(m, x274 - x282 + x322 >= 0)

@constraint(m, x275 - x283 + x323 >= 0)

@constraint(m, x276 - x284 + x324 >= 0)

@constraint(m, x277 - x285 + x325 >= 0)

@constraint(m, x278 - x286 + x326 >= 0)

@constraint(m, x279 - x287 + x327 >= 0)

@constraint(m, x280 - x288 + x328 >= 0)

@constraint(m, x281 - x289 + x329 >= 0)

@constraint(m, x282 - x290 + x330 >= 0)

@constraint(m, x283 - x291 + x331 >= 0)

@constraint(m, x284 - x292 + x332 >= 0)

@constraint(m, x285 - x293 + x333 >= 0)

@constraint(m, x286 - x294 + x334 >= 0)

@constraint(m, x287 - x295 + x335 >= 0)

@constraint(m, x288 - x296 + x336 >= 0)

@constraint(m, x289 - x297 + x337 >= 0)

@constraint(m, x290 - x298 + x338 >= 0)

@constraint(m, x291 - x299 + x339 >= 0)

@constraint(m, x292 - x300 + x340 >= 0)

@constraint(m, x293 - x301 + x341 >= 0)

@constraint(m, x294 - x302 + x342 >= 0)

@constraint(m, x295 - x303 + x343 >= 0)

@constraint(m, x296 - x304 + x344 >= 0)

@constraint(m, x297 - x305 + x345 >= 0)

@constraint(m, x298 - x306 + x346 >= 0)

@constraint(m, x299 - x307 + x347 >= 0)

@constraint(m, x300 - x308 + x348 >= 0)

@constraint(m, x301 - x309 + x349 >= 0)

@constraint(m, x302 - x310 + x350 >= 0)

@constraint(m,  - b1 + b9 + x49 >= 0)

@constraint(m,  - b2 + b10 + x50 >= 0)

@constraint(m,  - b3 + b11 + x51 >= 0)

@constraint(m,  - b4 + b12 + x52 >= 0)

@constraint(m,  - b5 + b13 + x53 >= 0)

@constraint(m,  - b6 + b14 + x54 >= 0)

@constraint(m,  - b7 + b15 + x55 >= 0)

@constraint(m,  - b8 + b16 + x56 >= 0)

@constraint(m,  - b9 + b17 + x57 >= 0)

@constraint(m,  - b10 + b18 + x58 >= 0)

@constraint(m,  - b11 + b19 + x59 >= 0)

@constraint(m,  - b12 + b20 + x60 >= 0)

@constraint(m,  - b13 + b21 + x61 >= 0)

@constraint(m,  - b14 + b22 + x62 >= 0)

@constraint(m,  - b15 + b23 + x63 >= 0)

@constraint(m,  - b16 + b24 + x64 >= 0)

@constraint(m,  - b17 + b25 + x65 >= 0)

@constraint(m,  - b18 + b26 + x66 >= 0)

@constraint(m,  - b19 + b27 + x67 >= 0)

@constraint(m,  - b20 + b28 + x68 >= 0)

@constraint(m,  - b21 + b29 + x69 >= 0)

@constraint(m,  - b22 + b30 + x70 >= 0)

@constraint(m,  - b23 + b31 + x71 >= 0)

@constraint(m,  - b24 + b32 + x72 >= 0)

@constraint(m,  - b25 + b33 + x73 >= 0)

@constraint(m,  - b26 + b34 + x74 >= 0)

@constraint(m,  - b27 + b35 + x75 >= 0)

@constraint(m,  - b28 + b36 + x76 >= 0)

@constraint(m,  - b29 + b37 + x77 >= 0)

@constraint(m,  - b30 + b38 + x78 >= 0)

@constraint(m,  - b31 + b39 + x79 >= 0)

@constraint(m,  - b32 + b40 + x80 >= 0)

@constraint(m,  - b33 + b41 + x81 >= 0)

@constraint(m,  - b34 + b42 + x82 >= 0)

@constraint(m,  - b35 + b43 + x83 >= 0)

@constraint(m,  - b36 + b44 + x84 >= 0)

@constraint(m,  - b37 + b45 + x85 >= 0)

@constraint(m,  - b38 + b46 + x86 >= 0)

@constraint(m,  - b39 + b47 + x87 >= 0)

@constraint(m,  - b40 + b48 + x88 >= 0)

@constraint(m,  - b41 + x49 + x89 >= 0)

@constraint(m,  - b42 + x50 + x90 >= 0)

@constraint(m,  - b43 + x51 + x91 >= 0)

@constraint(m,  - b44 + x52 + x92 >= 0)

@constraint(m,  - b45 + x53 + x93 >= 0)

@constraint(m,  - b46 + x54 + x94 >= 0)

@constraint(m,  - b47 + x55 + x95 >= 0)

@constraint(m,  - b48 + x56 + x96 >= 0)

@constraint(m,  - x49 + x57 + x97 >= 0)

@constraint(m,  - x50 + x58 + x98 >= 0)

@constraint(m,  - x51 + x59 + x99 >= 0)

@constraint(m,  - x52 + x60 + x100 >= 0)

@constraint(m,  - x53 + x61 + x101 >= 0)

@constraint(m,  - x54 + x62 + x102 >= 0)

@constraint(m,  - x55 + x63 + x103 >= 0)

@constraint(m,  - x56 + x64 + x104 >= 0)

@constraint(m,  - x57 + x65 + x105 >= 0)

@constraint(m,  - x58 + x66 + x106 >= 0)

@constraint(m,  - x59 + x67 + x107 >= 0)

@constraint(m,  - x60 + x68 + x108 >= 0)

@constraint(m,  - x61 + x69 + x109 >= 0)

@constraint(m,  - x62 + x70 + x110 >= 0)

@constraint(m,  - x63 + x71 + x111 >= 0)

@constraint(m,  - x64 + x72 + x112 >= 0)

@constraint(m,  - x65 + x73 + x113 >= 0)

@constraint(m,  - x66 + x74 + x114 >= 0)

@constraint(m,  - x67 + x75 + x115 >= 0)

@constraint(m,  - x68 + x76 + x116 >= 0)

@constraint(m,  - x69 + x77 + x117 >= 0)

@constraint(m,  - x70 + x78 + x118 >= 0)

@constraint(m,  - x71 + x79 + x119 >= 0)

@constraint(m,  - x72 + x80 + x120 >= 0)

@constraint(m,  - x73 + x81 + x121 >= 0)

@constraint(m,  - x74 + x82 + x122 >= 0)

@constraint(m,  - x75 + x83 + x123 >= 0)

@constraint(m,  - x76 + x84 + x124 >= 0)

@constraint(m,  - x77 + x85 + x125 >= 0)

@constraint(m,  - x78 + x86 + x126 >= 0)

@constraint(m,  - x79 + x87 + x127 >= 0)

@constraint(m,  - x80 + x88 + x128 >= 0)

@constraint(m,  - x81 + x89 + x129 >= 0)

@constraint(m,  - x82 + x90 + x130 >= 0)

@constraint(m,  - x83 + x91 + x131 >= 0)

@constraint(m,  - x84 + x92 + x132 >= 0)

@constraint(m,  - x85 + x93 + x133 >= 0)

@constraint(m,  - x86 + x94 + x134 >= 0)

@constraint(m,  - x87 + x95 + x135 >= 0)

@constraint(m,  - x88 + x96 + x136 >= 0)

@constraint(m,  - x89 + x97 + x137 >= 0)

@constraint(m,  - x90 + x98 + x138 >= 0)

@constraint(m,  - x91 + x99 + x139 >= 0)

@constraint(m,  - x92 + x100 + x140 >= 0)

@constraint(m,  - x93 + x101 + x141 >= 0)

@constraint(m,  - x94 + x102 + x142 >= 0)

@constraint(m,  - x95 + x103 + x143 >= 0)

@constraint(m,  - x96 + x104 + x144 >= 0)

@constraint(m,  - x97 + x105 + x145 >= 0)

@constraint(m,  - x98 + x106 + x146 >= 0)

@constraint(m,  - x99 + x107 + x147 >= 0)

@constraint(m,  - x100 + x108 + x148 >= 0)

@constraint(m,  - x101 + x109 + x149 >= 0)

@constraint(m,  - x102 + x110 + x150 >= 0)

@constraint(m,  - x103 + x111 + x151 >= 0)

@constraint(m,  - x104 + x112 + x152 >= 0)

@constraint(m,  - x105 + x113 + x153 >= 0)

@constraint(m,  - x106 + x114 + x154 >= 0)

@constraint(m,  - x107 + x115 + x155 >= 0)

@constraint(m,  - x108 + x116 + x156 >= 0)

@constraint(m,  - x109 + x117 + x157 >= 0)

@constraint(m,  - x110 + x118 + x158 >= 0)

@constraint(m,  - x111 + x119 + x159 >= 0)

@constraint(m,  - x112 + x120 + x160 >= 0)

@constraint(m,  - x113 + x121 + x161 >= 0)

@constraint(m,  - x114 + x122 + x162 >= 0)

@constraint(m,  - x115 + x123 + x163 >= 0)

@constraint(m,  - x116 + x124 + x164 >= 0)

@constraint(m,  - x117 + x125 + x165 >= 0)

@constraint(m,  - x118 + x126 + x166 >= 0)

@constraint(m,  - x119 + x127 + x167 >= 0)

@constraint(m,  - x120 + x128 + x168 >= 0)

@constraint(m,  - x121 + x129 + x169 >= 0)

@constraint(m,  - x122 + x130 + x170 >= 0)

@constraint(m,  - x123 + x131 + x171 >= 0)

@constraint(m,  - x124 + x132 + x172 >= 0)

@constraint(m,  - x125 + x133 + x173 >= 0)

@constraint(m,  - x126 + x134 + x174 >= 0)

@constraint(m,  - x127 + x135 + x175 >= 0)

@constraint(m,  - x128 + x136 + x176 >= 0)

@constraint(m,  - x129 + x137 + x177 >= 0)

@constraint(m,  - x130 + x138 + x178 >= 0)

@constraint(m,  - x131 + x139 + x179 >= 0)

@constraint(m,  - x132 + x140 + x180 >= 0)

@constraint(m,  - x133 + x141 + x181 >= 0)

@constraint(m,  - x134 + x142 + x182 >= 0)

@constraint(m,  - x135 + x143 + x183 >= 0)

@constraint(m,  - x136 + x144 + x184 >= 0)

@constraint(m,  - x137 + x145 + x185 >= 0)

@constraint(m,  - x138 + x146 + x186 >= 0)

@constraint(m,  - x139 + x147 + x187 >= 0)

@constraint(m,  - x140 + x148 + x188 >= 0)

@constraint(m,  - x141 + x149 + x189 >= 0)

@constraint(m,  - x142 + x150 + x190 >= 0)

@constraint(m,  - x143 + x151 + x191 >= 0)

@constraint(m,  - x144 + x152 + x192 >= 0)

@constraint(m,  - x145 + x153 + x193 >= 0)

@constraint(m,  - x146 + x154 + x194 >= 0)

@constraint(m,  - x147 + x155 + x195 >= 0)

@constraint(m,  - x148 + x156 + x196 >= 0)

@constraint(m,  - x149 + x157 + x197 >= 0)

@constraint(m,  - x150 + x158 + x198 >= 0)

@constraint(m,  - x151 + x159 + x199 >= 0)

@constraint(m,  - x152 + x160 + x200 >= 0)

@constraint(m,  - x153 + x161 + x201 >= 0)

@constraint(m,  - x154 + x162 + x202 >= 0)

@constraint(m,  - x155 + x163 + x203 >= 0)

@constraint(m,  - x156 + x164 + x204 >= 0)

@constraint(m,  - x157 + x165 + x205 >= 0)

@constraint(m,  - x158 + x166 + x206 >= 0)

@constraint(m,  - x159 + x167 + x207 >= 0)

@constraint(m,  - x160 + x168 + x208 >= 0)

@constraint(m,  - x161 + x169 + x209 >= 0)

@constraint(m,  - x162 + x170 + x210 >= 0)

@constraint(m,  - x163 + x171 + x211 >= 0)

@constraint(m,  - x164 + x172 + x212 >= 0)

@constraint(m,  - x165 + x173 + x213 >= 0)

@constraint(m,  - x166 + x174 + x214 >= 0)

@constraint(m,  - x167 + x175 + x215 >= 0)

@constraint(m,  - x168 + x176 + x216 >= 0)

@constraint(m,  - x169 + x177 + x217 >= 0)

@constraint(m,  - x170 + x178 + x218 >= 0)

@constraint(m,  - x171 + x179 + x219 >= 0)

@constraint(m,  - x172 + x180 + x220 >= 0)

@constraint(m,  - x173 + x181 + x221 >= 0)

@constraint(m,  - x174 + x182 + x222 >= 0)

@constraint(m,  - x175 + x183 + x223 >= 0)

@constraint(m,  - x176 + x184 + x224 >= 0)

@constraint(m,  - x177 + x185 + x225 >= 0)

@constraint(m,  - x178 + x186 + x226 >= 0)

@constraint(m,  - x179 + x187 + x227 >= 0)

@constraint(m,  - x180 + x188 + x228 >= 0)

@constraint(m,  - x181 + x189 + x229 >= 0)

@constraint(m,  - x182 + x190 + x230 >= 0)

@constraint(m,  - x183 + x191 + x231 >= 0)

@constraint(m,  - x184 + x192 + x232 >= 0)

@constraint(m,  - x185 + x193 + x233 >= 0)

@constraint(m,  - x186 + x194 + x234 >= 0)

@constraint(m,  - x187 + x195 + x235 >= 0)

@constraint(m,  - x188 + x196 + x236 >= 0)

@constraint(m,  - x189 + x197 + x237 >= 0)

@constraint(m,  - x190 + x198 + x238 >= 0)

@constraint(m,  - x191 + x199 + x239 >= 0)

@constraint(m,  - x192 + x200 + x240 >= 0)

@constraint(m,  - x193 + x201 + x241 >= 0)

@constraint(m,  - x194 + x202 + x242 >= 0)

@constraint(m,  - x195 + x203 + x243 >= 0)

@constraint(m,  - x196 + x204 + x244 >= 0)

@constraint(m,  - x197 + x205 + x245 >= 0)

@constraint(m,  - x198 + x206 + x246 >= 0)

@constraint(m,  - x199 + x207 + x247 >= 0)

@constraint(m,  - x200 + x208 + x248 >= 0)

@constraint(m,  - x201 + x209 + x249 >= 0)

@constraint(m,  - x202 + x210 + x250 >= 0)

@constraint(m,  - x203 + x211 + x251 >= 0)

@constraint(m,  - x204 + x212 + x252 >= 0)

@constraint(m,  - x205 + x213 + x253 >= 0)

@constraint(m,  - x206 + x214 + x254 >= 0)

@constraint(m,  - x207 + x215 + x255 >= 0)

@constraint(m,  - x208 + x216 + x256 >= 0)

@constraint(m,  - x209 + x217 + x257 >= 0)

@constraint(m,  - x210 + x218 + x258 >= 0)

@constraint(m,  - x211 + x219 + x259 >= 0)

@constraint(m,  - x212 + x220 + x260 >= 0)

@constraint(m,  - x213 + x221 + x261 >= 0)

@constraint(m,  - x214 + x222 + x262 >= 0)

@constraint(m,  - x215 + x223 + x263 >= 0)

@constraint(m,  - x216 + x224 + x264 >= 0)

@constraint(m,  - x217 + x225 + x265 >= 0)

@constraint(m,  - x218 + x226 + x266 >= 0)

@constraint(m,  - x219 + x227 + x267 >= 0)

@constraint(m,  - x220 + x228 + x268 >= 0)

@constraint(m,  - x221 + x229 + x269 >= 0)

@constraint(m,  - x222 + x230 + x270 >= 0)

@constraint(m,  - x223 + x231 + x271 >= 0)

@constraint(m,  - x224 + x232 + x272 >= 0)

@constraint(m,  - x225 + x233 + x273 >= 0)

@constraint(m,  - x226 + x234 + x274 >= 0)

@constraint(m,  - x227 + x235 + x275 >= 0)

@constraint(m,  - x228 + x236 + x276 >= 0)

@constraint(m,  - x229 + x237 + x277 >= 0)

@constraint(m,  - x230 + x238 + x278 >= 0)

@constraint(m,  - x231 + x239 + x279 >= 0)

@constraint(m,  - x232 + x240 + x280 >= 0)

@constraint(m,  - x233 + x241 + x281 >= 0)

@constraint(m,  - x234 + x242 + x282 >= 0)

@constraint(m,  - x235 + x243 + x283 >= 0)

@constraint(m,  - x236 + x244 + x284 >= 0)

@constraint(m,  - x237 + x245 + x285 >= 0)

@constraint(m,  - x238 + x246 + x286 >= 0)

@constraint(m,  - x239 + x247 + x287 >= 0)

@constraint(m,  - x240 + x248 + x288 >= 0)

@constraint(m,  - x241 + x249 + x289 >= 0)

@constraint(m,  - x242 + x250 + x290 >= 0)

@constraint(m,  - x243 + x251 + x291 >= 0)

@constraint(m,  - x244 + x252 + x292 >= 0)

@constraint(m,  - x245 + x253 + x293 >= 0)

@constraint(m,  - x246 + x254 + x294 >= 0)

@constraint(m,  - x247 + x255 + x295 >= 0)

@constraint(m,  - x248 + x256 + x296 >= 0)

@constraint(m,  - x249 + x257 + x297 >= 0)

@constraint(m,  - x250 + x258 + x298 >= 0)

@constraint(m,  - x251 + x259 + x299 >= 0)

@constraint(m,  - x252 + x260 + x300 >= 0)

@constraint(m,  - x253 + x261 + x301 >= 0)

@constraint(m,  - x254 + x262 + x302 >= 0)

@constraint(m,  - x255 + x263 + x303 >= 0)

@constraint(m,  - x256 + x264 + x304 >= 0)

@constraint(m,  - x257 + x265 + x305 >= 0)

@constraint(m,  - x258 + x266 + x306 >= 0)

@constraint(m,  - x259 + x267 + x307 >= 0)

@constraint(m,  - x260 + x268 + x308 >= 0)

@constraint(m,  - x261 + x269 + x309 >= 0)

@constraint(m,  - x262 + x270 + x310 >= 0)

@constraint(m,  - x263 + x271 + x311 >= 0)

@constraint(m,  - x264 + x272 + x312 >= 0)

@constraint(m,  - x265 + x273 + x313 >= 0)

@constraint(m,  - x266 + x274 + x314 >= 0)

@constraint(m,  - x267 + x275 + x315 >= 0)

@constraint(m,  - x268 + x276 + x316 >= 0)

@constraint(m,  - x269 + x277 + x317 >= 0)

@constraint(m,  - x270 + x278 + x318 >= 0)

@constraint(m,  - x271 + x279 + x319 >= 0)

@constraint(m,  - x272 + x280 + x320 >= 0)

@constraint(m,  - x273 + x281 + x321 >= 0)

@constraint(m,  - x274 + x282 + x322 >= 0)

@constraint(m,  - x275 + x283 + x323 >= 0)

@constraint(m,  - x276 + x284 + x324 >= 0)

@constraint(m,  - x277 + x285 + x325 >= 0)

@constraint(m,  - x278 + x286 + x326 >= 0)

@constraint(m,  - x279 + x287 + x327 >= 0)

@constraint(m,  - x280 + x288 + x328 >= 0)

@constraint(m,  - x281 + x289 + x329 >= 0)

@constraint(m,  - x282 + x290 + x330 >= 0)

@constraint(m,  - x283 + x291 + x331 >= 0)

@constraint(m,  - x284 + x292 + x332 >= 0)

@constraint(m,  - x285 + x293 + x333 >= 0)

@constraint(m,  - x286 + x294 + x334 >= 0)

@constraint(m,  - x287 + x295 + x335 >= 0)

@constraint(m,  - x288 + x296 + x336 >= 0)

@constraint(m,  - x289 + x297 + x337 >= 0)

@constraint(m,  - x290 + x298 + x338 >= 0)

@constraint(m,  - x291 + x299 + x339 >= 0)

@constraint(m,  - x292 + x300 + x340 >= 0)

@constraint(m,  - x293 + x301 + x341 >= 0)

@constraint(m,  - x294 + x302 + x342 >= 0)

@constraint(m,  - x295 + x303 + x343 >= 0)

@constraint(m,  - x296 + x304 + x344 >= 0)

@constraint(m,  - x297 + x305 + x345 >= 0)

@constraint(m,  - x298 + x306 + x346 >= 0)

@constraint(m,  - x299 + x307 + x347 >= 0)

@constraint(m,  - x300 + x308 + x348 >= 0)

@constraint(m,  - x301 + x309 + x349 >= 0)

@constraint(m,  - x302 + x310 + x350 >= 0)
