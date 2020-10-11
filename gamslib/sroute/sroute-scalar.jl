#  LP written by GAMS Convert at 10/11/20 12:15:44
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)
@variable(m, 0 <= x31, start=0)
@variable(m, 0 <= x32, start=0)
@variable(m, 0 <= x33, start=0)
@variable(m, 0 <= x34, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=0)
@variable(m, 0 <= x41, start=0)
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=0)
@variable(m, 0 <= x44, start=0)
@variable(m, 0 <= x45, start=0)
@variable(m, 0 <= x46, start=0)
@variable(m, 0 <= x47, start=0)
@variable(m, 0 <= x48, start=0)
@variable(m, 0 <= x49, start=0)
@variable(m, 0 <= x50, start=0)
@variable(m, 0 <= x51, start=0)
@variable(m, 0 <= x52, start=0)
@variable(m, 0 <= x53, start=0)
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=0)
@variable(m, 0 <= x56, start=0)
@variable(m, 0 <= x57, start=0)
@variable(m, 0 <= x58, start=0)
@variable(m, 0 <= x59, start=0)
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= x66, start=0)
@variable(m, 0 <= x67, start=0)
@variable(m, 0 <= x68, start=0)
@variable(m, 0 <= x69, start=0)
@variable(m, 0 <= x70, start=0)
@variable(m, 0 <= x71, start=0)
@variable(m, 0 <= x72, start=0)
@variable(m, 0 <= x73, start=0)
@variable(m, 0 <= x74, start=0)
@variable(m, 0 <= x75, start=0)
@variable(m, 0 <= x76, start=0)
@variable(m, 0 <= x77, start=0)
@variable(m, 0 <= x78, start=0)
@variable(m, 0 <= x79, start=0)
@variable(m, 0 <= x80, start=0)
@variable(m, 0 <= x81, start=0)
@variable(m, 0 <= x82, start=0)
@variable(m, 0 <= x83, start=0)
@variable(m, 0 <= x84, start=0)
@variable(m, 0 <= x85, start=0)
@variable(m, 0 <= x86, start=0)
@variable(m, 0 <= x87, start=0)
@variable(m, 0 <= x88, start=0)
@variable(m, 0 <= x89, start=0)
@variable(m, 0 <= x90, start=0)
@variable(m, 0 <= x91, start=0)
@variable(m, 0 <= x92, start=0)
@variable(m, 0 <= x93, start=0)
@variable(m, 0 <= x94, start=0)
@variable(m, 0 <= x95, start=0)
@variable(m, 0 <= x96, start=0)
@variable(m, 0 <= x97, start=0)
@variable(m, 0 <= x98, start=0)
@variable(m, 0 <= x99, start=0)
@variable(m, 0 <= x100, start=0)
@variable(m, 0 <= x101, start=0)
@variable(m, 0 <= x102, start=0)
@variable(m, 0 <= x103, start=0)
@variable(m, 0 <= x104, start=0)
@variable(m, 0 <= x105, start=0)
@variable(m, 0 <= x106, start=0)
@variable(m, 0 <= x107, start=0)
@variable(m, 0 <= x108, start=0)
@variable(m, 0 <= x109, start=0)
@variable(m, 0 <= x110, start=0)
@variable(m, 0 <= x111, start=0)
@variable(m, 0 <= x112, start=0)
@variable(m, 0 <= x113, start=0)
@variable(m, 0 <= x114, start=0)
@variable(m, 0 <= x115, start=0)
@variable(m, 0 <= x116, start=0)
@variable(m, 0 <= x117, start=0)
@variable(m, 0 <= x118, start=0)
@variable(m, 0 <= x119, start=0)
@variable(m, 0 <= x120, start=0)
@variable(m, 0 <= x121, start=0)
@variable(m, 0 <= x122, start=0)
@variable(m, 0 <= x123, start=0)
@variable(m, 0 <= x124, start=0)
@variable(m, 0 <= x125, start=0)
@variable(m, 0 <= x126, start=0)
@variable(m, 0 <= x127, start=0)
@variable(m, 0 <= x128, start=0)
@variable(m, 0 <= x129, start=0)
@variable(m, 0 <= x130, start=0)
@variable(m, 0 <= x131, start=0)
@variable(m, 0 <= x132, start=0)
@variable(m, 0 <= x133, start=0)
@variable(m, 0 <= x134, start=0)
@variable(m, 0 <= x135, start=0)
@variable(m, 0 <= x136, start=0)
@variable(m, 0 <= x137, start=0)
@variable(m, 0 <= x138, start=0)
@variable(m, 0 <= x139, start=0)
@variable(m, 0 <= x140, start=0)
@variable(m, 0 <= x141, start=0)
@variable(m, 0 <= x142, start=0)
@variable(m, 0 <= x143, start=0)
@variable(m, 0 <= x144, start=0)
@variable(m, 0 <= x145, start=0)
@variable(m, 0 <= x146, start=0)
@variable(m, 0 <= x147, start=0)
@variable(m, 0 <= x148, start=0)
@variable(m, 0 <= x149, start=0)
@variable(m, 0 <= x150, start=0)
@variable(m, 0 <= x151, start=0)
@variable(m, 0 <= x152, start=0)
@variable(m, 0 <= x153, start=0)
@variable(m, 0 <= x154, start=0)
@variable(m, 0 <= x155, start=0)
@variable(m, 0 <= x156, start=0)
@variable(m, 0 <= x157, start=0)
@variable(m, 0 <= x158, start=0)
@variable(m, 0 <= x159, start=0)
@variable(m, 0 <= x160, start=0)
@variable(m, 0 <= x161, start=0)
@variable(m, 0 <= x162, start=0)
@variable(m, 0 <= x163, start=0)
@variable(m, 0 <= x164, start=0)
@variable(m, 0 <= x165, start=0)
@variable(m, 0 <= x166, start=0)
@variable(m, 0 <= x167, start=0)
@variable(m, 0 <= x168, start=0)
@variable(m, 0 <= x169, start=0)
@variable(m, 0 <= x170, start=0)
@variable(m, 0 <= x171, start=0)
@variable(m, 0 <= x172, start=0)
@variable(m, 0 <= x173, start=0)
@variable(m, 0 <= x174, start=0)
@variable(m, 0 <= x175, start=0)
@variable(m, 0 <= x176, start=0)
@variable(m, 0 <= x177, start=0)
@variable(m, 0 <= x178, start=0)
@variable(m, 0 <= x179, start=0)
@variable(m, 0 <= x180, start=0)
@variable(m, 0 <= x181, start=0)
@variable(m, 0 <= x182, start=0)
@variable(m, 0 <= x183, start=0)
@variable(m, 0 <= x184, start=0)
@variable(m, 0 <= x185, start=0)
@variable(m, 0 <= x186, start=0)
@variable(m, 0 <= x187, start=0)
@variable(m, 0 <= x188, start=0)
@variable(m, 0 <= x189, start=0)
@variable(m, 0 <= x190, start=0)
@variable(m, 0 <= x191, start=0)
@variable(m, 0 <= x192, start=0)
@variable(m, 0 <= x193, start=0)
@variable(m, 0 <= x194, start=0)
@variable(m, 0 <= x195, start=0)
@variable(m, 0 <= x196, start=0)
@variable(m, 0 <= x197, start=0)
@variable(m, 0 <= x198, start=0)
@variable(m, 0 <= x199, start=0)
@variable(m, 0 <= x200, start=0)
@variable(m, 0 <= x201, start=0)
@variable(m, 0 <= x202, start=0)
@variable(m, 0 <= x203, start=0)
@variable(m, 0 <= x204, start=0)
@variable(m, 0 <= x205, start=0)
@variable(m, 0 <= x206, start=0)
@variable(m, 0 <= x207, start=0)
@variable(m, 0 <= x208, start=0)
@variable(m, 0 <= x209, start=0)
@variable(m, 0 <= x210, start=0)
@variable(m, 0 <= x211, start=0)
@variable(m, 0 <= x212, start=0)
@variable(m, 0 <= x213, start=0)
@variable(m, 0 <= x214, start=0)
@variable(m, 0 <= x215, start=0)
@variable(m, 0 <= x216, start=0)
@variable(m, 0 <= x217, start=0)
@variable(m, 0 <= x218, start=0)
@variable(m, 0 <= x219, start=0)
@variable(m, 0 <= x220, start=0)
@variable(m, 0 <= x221, start=0)
@variable(m, 0 <= x222, start=0)
@variable(m, 0 <= x223, start=0)
@variable(m, 0 <= x224, start=0)
@variable(m, 0 <= x225, start=0)
@variable(m, 0 <= x226, start=0)
@variable(m, 0 <= x227, start=0)
@variable(m, 0 <= x228, start=0)
@variable(m, 0 <= x229, start=0)
@variable(m, 0 <= x230, start=0)
@variable(m, 0 <= x231, start=0)
@variable(m, 0 <= x232, start=0)
@variable(m, 0 <= x233, start=0)
@variable(m, 0 <= x234, start=0)
@variable(m, 0 <= x235, start=0)
@variable(m, 0 <= x236, start=0)
@variable(m, 0 <= x237, start=0)
@variable(m, 0 <= x238, start=0)
@variable(m, 0 <= x239, start=0)
@variable(m, 0 <= x240, start=0)
@variable(m, 0 <= x241, start=0)
@variable(m, 0 <= x242, start=0)
@variable(m, 0 <= x243, start=0)
@variable(m, 0 <= x244, start=0)
@variable(m, 0 <= x245, start=0)
@variable(m, 0 <= x246, start=0)
@variable(m, 0 <= x247, start=0)
@variable(m, 0 <= x248, start=0)
@variable(m, 0 <= x249, start=0)
@variable(m, 0 <= x250, start=0)
@variable(m, 0 <= x251, start=0)
@variable(m, 0 <= x252, start=0)
@variable(m, 0 <= x253, start=0)
@variable(m, 0 <= x254, start=0)
@variable(m, 0 <= x255, start=0)
@variable(m, 0 <= x256, start=0)
@variable(m, 0 <= x257, start=0)
@variable(m, 0 <= x258, start=0)
@variable(m, 0 <= x259, start=0)
@variable(m, 0 <= x260, start=0)
@variable(m, 0 <= x261, start=0)
@variable(m, 0 <= x262, start=0)
@variable(m, 0 <= x263, start=0)
@variable(m, 0 <= x264, start=0)
@variable(m, 0 <= x265, start=0)
@variable(m, 0 <= x266, start=0)
@variable(m, 0 <= x267, start=0)
@variable(m, 0 <= x268, start=0)
@variable(m, 0 <= x269, start=0)
@variable(m, 0 <= x270, start=0)
@variable(m, 0 <= x271, start=0)
@variable(m, 0 <= x272, start=0)
@variable(m, 0 <= x273, start=0)
@variable(m, 0 <= x274, start=0)
@variable(m, 0 <= x275, start=0)
@variable(m, 0 <= x276, start=0)
@variable(m, 0 <= x277, start=0)
@variable(m, 0 <= x278, start=0)
@variable(m, 0 <= x279, start=0)
@variable(m, 0 <= x280, start=0)
@variable(m, 0 <= x281, start=0)
@variable(m, 0 <= x282, start=0)
@variable(m, 0 <= x283, start=0)
@variable(m, 0 <= x284, start=0)
@variable(m, 0 <= x285, start=0)
@variable(m, 0 <= x286, start=0)
@variable(m, 0 <= x287, start=0)
@variable(m, 0 <= x288, start=0)
@variable(m, 0 <= x289, start=0)
@variable(m, 0 <= x290, start=0)
@variable(m, 0 <= x291, start=0)
@variable(m, 0 <= x292, start=0)
@variable(m, 0 <= x293, start=0)
@variable(m, 0 <= x294, start=0)
@variable(m, 0 <= x295, start=0)
@variable(m, 0 <= x296, start=0)
@variable(m, 0 <= x297, start=0)
@variable(m, 0 <= x298, start=0)
@variable(m, 0 <= x299, start=0)
@variable(m, 0 <= x300, start=0)
@variable(m, 0 <= x301, start=0)
@variable(m, 0 <= x302, start=0)
@variable(m, 0 <= x303, start=0)
@variable(m, 0 <= x304, start=0)
@variable(m, 0 <= x305, start=0)
@variable(m, 0 <= x306, start=0)

@objective(m, Min, 58*x1 + 25*x2 + 58*x3 + 29*x4 + 32*x5 + 130*x6 + 85*x7 + 29*x8 + 85*x9 + 28*x10 + 75*x11 + 29*x12
     + 29*x13 + 27*x14 + 66*x15 + 62*x16 + 85*x17 + 58*x18 + 43*x19 + 32*x20 + 28*x21 + 27*x22 + 53*x23 + 130*x24
     + 58*x25 + 48*x26 + 85*x27 + 75*x28 + 66*x29 + 43*x30 + 48*x31 + 25*x32 + 62*x33 + 53*x34 + 58*x35 + 25*x36
     + 58*x37 + 29*x38 + 32*x39 + 130*x40 + 85*x41 + 29*x42 + 85*x43 + 28*x44 + 75*x45 + 29*x46 + 29*x47 + 27*x48
     + 66*x49 + 62*x50 + 85*x51 + 58*x52 + 43*x53 + 32*x54 + 28*x55 + 27*x56 + 53*x57 + 130*x58 + 58*x59 + 48*x60
     + 85*x61 + 75*x62 + 66*x63 + 43*x64 + 48*x65 + 25*x66 + 62*x67 + 53*x68 + 58*x69 + 25*x70 + 58*x71 + 29*x72
     + 32*x73 + 130*x74 + 85*x75 + 29*x76 + 85*x77 + 28*x78 + 75*x79 + 29*x80 + 29*x81 + 27*x82 + 66*x83 + 62*x84
     + 85*x85 + 58*x86 + 43*x87 + 32*x88 + 28*x89 + 27*x90 + 53*x91 + 130*x92 + 58*x93 + 48*x94 + 85*x95 + 75*x96
     + 66*x97 + 43*x98 + 48*x99 + 25*x100 + 62*x101 + 53*x102 + 58*x103 + 25*x104 + 58*x105 + 29*x106 + 32*x107
     + 130*x108 + 85*x109 + 29*x110 + 85*x111 + 28*x112 + 75*x113 + 29*x114 + 29*x115 + 27*x116 + 66*x117 + 62*x118
     + 85*x119 + 58*x120 + 43*x121 + 32*x122 + 28*x123 + 27*x124 + 53*x125 + 130*x126 + 58*x127 + 48*x128 + 85*x129
     + 75*x130 + 66*x131 + 43*x132 + 48*x133 + 25*x134 + 62*x135 + 53*x136 + 58*x137 + 25*x138 + 58*x139 + 29*x140
     + 32*x141 + 130*x142 + 85*x143 + 29*x144 + 85*x145 + 28*x146 + 75*x147 + 29*x148 + 29*x149 + 27*x150 + 66*x151
     + 62*x152 + 85*x153 + 58*x154 + 43*x155 + 32*x156 + 28*x157 + 27*x158 + 53*x159 + 130*x160 + 58*x161 + 48*x162
     + 85*x163 + 75*x164 + 66*x165 + 43*x166 + 48*x167 + 25*x168 + 62*x169 + 53*x170 + 58*x171 + 25*x172 + 58*x173
     + 29*x174 + 32*x175 + 130*x176 + 85*x177 + 29*x178 + 85*x179 + 28*x180 + 75*x181 + 29*x182 + 29*x183 + 27*x184
     + 66*x185 + 62*x186 + 85*x187 + 58*x188 + 43*x189 + 32*x190 + 28*x191 + 27*x192 + 53*x193 + 130*x194 + 58*x195
     + 48*x196 + 85*x197 + 75*x198 + 66*x199 + 43*x200 + 48*x201 + 25*x202 + 62*x203 + 53*x204 + 58*x205 + 25*x206
     + 58*x207 + 29*x208 + 32*x209 + 130*x210 + 85*x211 + 29*x212 + 85*x213 + 28*x214 + 75*x215 + 29*x216 + 29*x217
     + 27*x218 + 66*x219 + 62*x220 + 85*x221 + 58*x222 + 43*x223 + 32*x224 + 28*x225 + 27*x226 + 53*x227 + 130*x228
     + 58*x229 + 48*x230 + 85*x231 + 75*x232 + 66*x233 + 43*x234 + 48*x235 + 25*x236 + 62*x237 + 53*x238 + 58*x239
     + 25*x240 + 58*x241 + 29*x242 + 32*x243 + 130*x244 + 85*x245 + 29*x246 + 85*x247 + 28*x248 + 75*x249 + 29*x250
     + 29*x251 + 27*x252 + 66*x253 + 62*x254 + 85*x255 + 58*x256 + 43*x257 + 32*x258 + 28*x259 + 27*x260 + 53*x261
     + 130*x262 + 58*x263 + 48*x264 + 85*x265 + 75*x266 + 66*x267 + 43*x268 + 48*x269 + 25*x270 + 62*x271 + 53*x272
     + 58*x273 + 25*x274 + 58*x275 + 29*x276 + 32*x277 + 130*x278 + 85*x279 + 29*x280 + 85*x281 + 28*x282 + 75*x283
     + 29*x284 + 29*x285 + 27*x286 + 66*x287 + 62*x288 + 85*x289 + 58*x290 + 43*x291 + 32*x292 + 28*x293 + 27*x294
     + 53*x295 + 130*x296 + 58*x297 + 48*x298 + 85*x299 + 75*x300 + 66*x301 + 43*x302 + 48*x303 + 25*x304 + 62*x305
     + 53*x306)

@constraint(m, x1 - x3 - x4 - x5 - x6 - x7 + x12 + x20 + x24 + x27 >= 1)

@constraint(m,  - x8 - x9 - x10 - x11 + x13 + x17 + x21 + x28 >= 1)

@constraint(m, x4 + x8 - x12 - x13 - x14 - x15 - x16 + x22 + x29 + x33 >= 1)

@constraint(m, x9 - x17 - x18 - x19 + x25 + x30 >= 1)

@constraint(m, x5 + x10 + x14 - x20 - x21 - x22 - x23 + x34 >= 1)

@constraint(m, x6 + x18 - x24 - x25 - x26 + x31 >= 1)

@constraint(m, x7 + x11 + x15 + x19 + x26 - x27 - x28 - x29 - x30 - x31 >= 1)

@constraint(m, x2 + x16 + x23 - x32 - x33 - x34 >= 1)

@constraint(m,  - x35 - x36 + x37 + x66 >= 1)

@constraint(m,  - x42 - x43 - x44 - x45 + x47 + x51 + x55 + x62 >= 1)

@constraint(m, x38 + x42 - x46 - x47 - x48 - x49 - x50 + x56 + x63 + x67 >= 1)

@constraint(m, x43 - x51 - x52 - x53 + x59 + x64 >= 1)

@constraint(m, x39 + x44 + x48 - x54 - x55 - x56 - x57 + x68 >= 1)

@constraint(m, x40 + x52 - x58 - x59 - x60 + x65 >= 1)

@constraint(m, x41 + x45 + x49 + x53 + x60 - x61 - x62 - x63 - x64 - x65 >= 1)

@constraint(m, x36 + x50 + x57 - x66 - x67 - x68 >= 1)

@constraint(m,  - x69 - x70 + x71 + x100 >= 1)

@constraint(m, x69 - x71 - x72 - x73 - x74 - x75 + x80 + x88 + x92 + x95 >= 1)

@constraint(m, x72 + x76 - x80 - x81 - x82 - x83 - x84 + x90 + x97 + x101 >= 1)

@constraint(m, x77 - x85 - x86 - x87 + x93 + x98 >= 1)

@constraint(m, x73 + x78 + x82 - x88 - x89 - x90 - x91 + x102 >= 1)

@constraint(m, x74 + x86 - x92 - x93 - x94 + x99 >= 1)

@constraint(m, x75 + x79 + x83 + x87 + x94 - x95 - x96 - x97 - x98 - x99 >= 1)

@constraint(m, x70 + x84 + x91 - x100 - x101 - x102 >= 1)

@constraint(m,  - x103 - x104 + x105 + x134 >= 1)

@constraint(m, x103 - x105 - x106 - x107 - x108 - x109 + x114 + x122 + x126 + x129 >= 1)

@constraint(m,  - x110 - x111 - x112 - x113 + x115 + x119 + x123 + x130 >= 1)

@constraint(m, x111 - x119 - x120 - x121 + x127 + x132 >= 1)

@constraint(m, x107 + x112 + x116 - x122 - x123 - x124 - x125 + x136 >= 1)

@constraint(m, x108 + x120 - x126 - x127 - x128 + x133 >= 1)

@constraint(m, x109 + x113 + x117 + x121 + x128 - x129 - x130 - x131 - x132 - x133 >= 1)

@constraint(m, x104 + x118 + x125 - x134 - x135 - x136 >= 1)

@constraint(m,  - x137 - x138 + x139 + x168 >= 1)

@constraint(m, x137 - x139 - x140 - x141 - x142 - x143 + x148 + x156 + x160 + x163 >= 1)

@constraint(m,  - x144 - x145 - x146 - x147 + x149 + x153 + x157 + x164 >= 1)

@constraint(m, x140 + x144 - x148 - x149 - x150 - x151 - x152 + x158 + x165 + x169 >= 1)

@constraint(m, x141 + x146 + x150 - x156 - x157 - x158 - x159 + x170 >= 1)

@constraint(m, x142 + x154 - x160 - x161 - x162 + x167 >= 1)

@constraint(m, x143 + x147 + x151 + x155 + x162 - x163 - x164 - x165 - x166 - x167 >= 1)

@constraint(m, x138 + x152 + x159 - x168 - x169 - x170 >= 1)

@constraint(m,  - x171 - x172 + x173 + x202 >= 1)

@constraint(m, x171 - x173 - x174 - x175 - x176 - x177 + x182 + x190 + x194 + x197 >= 1)

@constraint(m,  - x178 - x179 - x180 - x181 + x183 + x187 + x191 + x198 >= 1)

@constraint(m, x174 + x178 - x182 - x183 - x184 - x185 - x186 + x192 + x199 + x203 >= 1)

@constraint(m, x179 - x187 - x188 - x189 + x195 + x200 >= 1)

@constraint(m, x176 + x188 - x194 - x195 - x196 + x201 >= 1)

@constraint(m, x177 + x181 + x185 + x189 + x196 - x197 - x198 - x199 - x200 - x201 >= 1)

@constraint(m, x172 + x186 + x193 - x202 - x203 - x204 >= 1)

@constraint(m,  - x205 - x206 + x207 + x236 >= 1)

@constraint(m, x205 - x207 - x208 - x209 - x210 - x211 + x216 + x224 + x228 + x231 >= 1)

@constraint(m,  - x212 - x213 - x214 - x215 + x217 + x221 + x225 + x232 >= 1)

@constraint(m, x208 + x212 - x216 - x217 - x218 - x219 - x220 + x226 + x233 + x237 >= 1)

@constraint(m, x213 - x221 - x222 - x223 + x229 + x234 >= 1)

@constraint(m, x209 + x214 + x218 - x224 - x225 - x226 - x227 + x238 >= 1)

@constraint(m, x211 + x215 + x219 + x223 + x230 - x231 - x232 - x233 - x234 - x235 >= 1)

@constraint(m, x206 + x220 + x227 - x236 - x237 - x238 >= 1)

@constraint(m,  - x239 - x240 + x241 + x270 >= 1)

@constraint(m, x239 - x241 - x242 - x243 - x244 - x245 + x250 + x258 + x262 + x265 >= 1)

@constraint(m,  - x246 - x247 - x248 - x249 + x251 + x255 + x259 + x266 >= 1)

@constraint(m, x242 + x246 - x250 - x251 - x252 - x253 - x254 + x260 + x267 + x271 >= 1)

@constraint(m, x247 - x255 - x256 - x257 + x263 + x268 >= 1)

@constraint(m, x243 + x248 + x252 - x258 - x259 - x260 - x261 + x272 >= 1)

@constraint(m, x244 + x256 - x262 - x263 - x264 + x269 >= 1)

@constraint(m, x240 + x254 + x261 - x270 - x271 - x272 >= 1)

@constraint(m,  - x273 - x274 + x275 + x304 >= 1)

@constraint(m, x273 - x275 - x276 - x277 - x278 - x279 + x284 + x292 + x296 + x299 >= 1)

@constraint(m,  - x280 - x281 - x282 - x283 + x285 + x289 + x293 + x300 >= 1)

@constraint(m, x276 + x280 - x284 - x285 - x286 - x287 - x288 + x294 + x301 + x305 >= 1)

@constraint(m, x281 - x289 - x290 - x291 + x297 + x302 >= 1)

@constraint(m, x277 + x282 + x286 - x292 - x293 - x294 - x295 + x306 >= 1)

@constraint(m, x278 + x290 - x296 - x297 - x298 + x303 >= 1)

@constraint(m, x279 + x283 + x287 + x291 + x298 - x299 - x300 - x301 - x302 - x303 >= 1)
