#  MIP written by GAMS Convert at 10/11/20 12:20:41
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        238      112       24      102        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        279      259       20        0        0        0        0        0
#  FX      6        6        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        973      973        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0.45)
@variable(m, x2, start=0.5)
@variable(m, x3, start=0.334)
@variable(m, x4, start=0.4569)
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
@variable(m, 0 <= b135 <= 1, binary=true, start=0)
@variable(m, 0 <= b136 <= 1, binary=true, start=0)
@variable(m, 0 <= b137 <= 1, binary=true, start=0)
@variable(m, 0 <= b138 <= 1, binary=true, start=0)
@variable(m, 0 <= b139 <= 1, binary=true, start=0)
@variable(m, 0 <= b140 <= 1, binary=true, start=0)
@variable(m, 0 <= b141 <= 1, binary=true, start=0)
@variable(m, 0 <= b142 <= 1, binary=true, start=0)
@variable(m, 0 <= b143 <= 1, binary=true, start=0)
@variable(m, 0 <= b144 <= 1, binary=true, start=0)
@variable(m, 0 <= b145 <= 1, binary=true, start=0)
@variable(m, 0 <= b146 <= 1, binary=true, start=0)
@variable(m, 0 <= b147 <= 1, binary=true, start=0)
@variable(m, 0 <= b148 <= 1, binary=true, start=0)
@variable(m, 0 <= b149 <= 1, binary=true, start=0)
@variable(m, 0 <= b150 <= 1, binary=true, start=0)
@variable(m, 0 <= b151 <= 1, binary=true, start=0)
@variable(m, 0 <= b152 <= 1, binary=true, start=0)
@variable(m, 0 <= b153 <= 1, binary=true, start=0)
@variable(m, 0 <= b154 <= 1, binary=true, start=0)
@variable(m, 50 <= x155 <= 50, start=50)
@variable(m, 50 <= x156 <= 50, start=50)
@variable(m, 75 <= x157 <= 75, start=75)
@variable(m, 75 <= x158 <= 75, start=75)
@variable(m, 160 <= x159 <= 160, start=160)
@variable(m, 126.7 <= x160 <= 126.7, start=126.7)
@variable(m, x161, start=0)
@variable(m, x162, start=0)
@variable(m, x163, start=0)
@variable(m, x164, start=0)
@variable(m, x165, start=0)
@variable(m, x166, start=0)
@variable(m, x167, start=0)
@variable(m, x168, start=0)
@variable(m, x169, start=0)
@variable(m, x170, start=0)
@variable(m, x171, start=0)
@variable(m, x172, start=0)
@variable(m, x173, start=0)
@variable(m, x174, start=0)
@variable(m, x175, start=0)
@variable(m, x176, start=0)
@variable(m, x177, start=0)
@variable(m, x178, start=0)
@variable(m, x179, start=0)
@variable(m, x180, start=0)
@variable(m, x181, start=0)
@variable(m, x182, start=0)
@variable(m, x183, start=0)
@variable(m, x184, start=0)
@variable(m, x185, start=0)
@variable(m, x186, start=0)
@variable(m, x187, start=0)
@variable(m, x188, start=0)
@variable(m, x189, start=0)
@variable(m, x190, start=0)
@variable(m, x191, start=0)
@variable(m, x192, start=0)
@variable(m, x193, start=0)
@variable(m, x194, start=0)
@variable(m, x195, start=0)
@variable(m, x196, start=0)
@variable(m, x197, start=0)
@variable(m, x198, start=0)
@variable(m, x199, start=0)
@variable(m, x200, start=0)
@variable(m, x201, start=0)
@variable(m, x202, start=0)
@variable(m, x203, start=0)
@variable(m, x204, start=0)
@variable(m, x205, start=0)
@variable(m, x206, start=0)
@variable(m, x207, start=0)
@variable(m, x208, start=0)
@variable(m, x209, start=0)
@variable(m, x210, start=0)
@variable(m, x211, start=0)
@variable(m, x212, start=0)
@variable(m, x213, start=0)
@variable(m, x214, start=0)
@variable(m, x215, start=0)
@variable(m, x216, start=0)
@variable(m, x217, start=0)
@variable(m, x218, start=0)
@variable(m, x219, start=0)
@variable(m, x220, start=0)
@variable(m, 0 <= x221 <= 23.85, start=0)
@variable(m, 0 <= x222 <= 23.85, start=0)
@variable(m, 0 <= x223 <= 26.5, start=0)
@variable(m, 0 <= x224 <= 26.5, start=0)
@variable(m, 0 <= x225 <= 17.702, start=0)
@variable(m, 0 <= x226 <= 24.2157, start=0)
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
@variable(m, x243 <= 75, start=0)
@variable(m, x244 <= 75, start=0)
@variable(m, x245 <= 75, start=0)
@variable(m, x246 <= 75, start=0)
@variable(m, x247 <= 75, start=0)
@variable(m, x248 <= 75, start=0)
@variable(m, x249 <= 75, start=0)
@variable(m, x250 <= 75, start=0)
@variable(m, x251 <= 75, start=0)
@variable(m, x252 <= 75, start=0)
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
@variable(m, x278, start=0)

@objective(m, Max, 0.934579439252336*x233 + 0.873438728273212*x234 + 0.816297876890852*x235 + 0.762895212047525*x236
     + 0.712986179483668*x237 + 0.666342223816512*x238 + 0.622749741884591*x239 + 0.582009104565038*x240
     + 0.543933742584148*x241 + 0.508349292134718*x242 + x278)

@constraint(m, x1 == 0.45)

@constraint(m,  - 0.4*x1 + x2 == 0.32)

@constraint(m,  - 0.12*x1 - 0.48*x2 + x3 == 0.04)

@constraint(m,  - 0.1*x1 - 0.21*x2 - 0.35*x3 + x4 == 0.19)

@constraint(m, x5 + x45 - 0.45*x233 == 90)

@constraint(m,  - 0.4*x5 + x6 + x46 - 0.32*x233 == 75)

@constraint(m,  - 0.12*x5 - 0.48*x6 + x7 - x65 - 0.04*x233 == 11.5)

@constraint(m,  - 0.1*x5 - 0.21*x6 - 0.35*x7 + x8 - 0.19*x233 == 50)

@constraint(m, x9 + x47 - 0.45*x234 == 90)

@constraint(m,  - 0.4*x9 + x10 + x48 - 0.32*x234 == 75)

@constraint(m,  - 0.12*x9 - 0.48*x10 + x11 - x66 - 0.04*x234 == 11.5)

@constraint(m,  - 0.1*x9 - 0.21*x10 - 0.35*x11 + x12 - 0.19*x234 == 50)

@constraint(m, x13 + x49 - 0.45*x235 == 90)

@constraint(m,  - 0.4*x13 + x14 + x50 - 0.32*x235 == 75)

@constraint(m,  - 0.12*x13 - 0.48*x14 + x15 - x67 - 0.04*x235 == 11.5)

@constraint(m,  - 0.1*x13 - 0.21*x14 - 0.35*x15 + x16 - 0.19*x235 == 50)

@constraint(m, x17 + x51 - 0.45*x236 == 90)

@constraint(m,  - 0.4*x17 + x18 + x52 - 0.32*x236 == 75)

@constraint(m,  - 0.12*x17 - 0.48*x18 + x19 - x68 - 0.04*x236 == 11.5)

@constraint(m,  - 0.1*x17 - 0.21*x18 - 0.35*x19 + x20 - 0.19*x236 == 50)

@constraint(m, x21 + x53 - 0.45*x237 == 90)

@constraint(m,  - 0.4*x21 + x22 + x54 - 0.32*x237 == 75)

@constraint(m,  - 0.12*x21 - 0.48*x22 + x23 - x69 - 0.04*x237 == 11.5)

@constraint(m,  - 0.1*x21 - 0.21*x22 - 0.35*x23 + x24 - 0.19*x237 == 50)

@constraint(m, x25 + x55 - 0.45*x238 == 90)

@constraint(m,  - 0.4*x25 + x26 + x56 - 0.32*x238 == 75)

@constraint(m,  - 0.12*x25 - 0.48*x26 + x27 - x70 - 0.04*x238 == 11.5)

@constraint(m,  - 0.1*x25 - 0.21*x26 - 0.35*x27 + x28 - 0.19*x238 == 50)

@constraint(m, x29 + x57 - 0.45*x239 == 90)

@constraint(m,  - 0.4*x29 + x30 + x58 - 0.32*x239 == 75)

@constraint(m,  - 0.12*x29 - 0.48*x30 + x31 - x71 - 0.04*x239 == 11.5)

@constraint(m,  - 0.1*x29 - 0.21*x30 - 0.35*x31 + x32 - 0.19*x239 == 50)

@constraint(m, x33 + x59 - 0.45*x240 == 90)

@constraint(m,  - 0.4*x33 + x34 + x60 - 0.32*x240 == 75)

@constraint(m,  - 0.12*x33 - 0.48*x34 + x35 - x72 - 0.04*x240 == 11.5)

@constraint(m,  - 0.1*x33 - 0.21*x34 - 0.35*x35 + x36 - 0.19*x240 == 50)

@constraint(m, x37 + x61 - 0.45*x241 == 90)

@constraint(m,  - 0.4*x37 + x38 + x62 - 0.32*x241 == 75)

@constraint(m,  - 0.12*x37 - 0.48*x38 + x39 - x73 - 0.04*x241 == 11.5)

@constraint(m,  - 0.1*x37 - 0.21*x38 - 0.35*x39 + x40 - 0.19*x241 == 50)

@constraint(m, x41 + x63 - 0.45*x242 == 90)

@constraint(m,  - 0.4*x41 + x42 + x64 - 0.32*x242 == 75)

@constraint(m,  - 0.12*x41 - 0.48*x42 + x43 - x74 - 0.04*x242 == 11.5)

@constraint(m,  - 0.1*x41 - 0.21*x42 - 0.35*x43 + x44 - 0.19*x242 == 50)

@constraint(m, x5 - x161 <= 0)

@constraint(m, x5 - x162 <= 0)

@constraint(m, x6 - x163 <= 0)

@constraint(m, x6 - x164 <= 0)

@constraint(m, x7 - x165 <= 0)

@constraint(m, x8 - x166 <= 0)

@constraint(m, x9 - x167 <= 0)

@constraint(m, x9 - x168 <= 0)

@constraint(m, x10 - x169 <= 0)

@constraint(m, x10 - x170 <= 0)

@constraint(m, x11 - x171 <= 0)

@constraint(m, x12 - x172 <= 0)

@constraint(m, x13 - x173 <= 0)

@constraint(m, x13 - x174 <= 0)

@constraint(m, x14 - x175 <= 0)

@constraint(m, x14 - x176 <= 0)

@constraint(m, x15 - x177 <= 0)

@constraint(m, x16 - x178 <= 0)

@constraint(m, x17 - x179 <= 0)

@constraint(m, x17 - x180 <= 0)

@constraint(m, x18 - x181 <= 0)

@constraint(m, x18 - x182 <= 0)

@constraint(m, x19 - x183 <= 0)

@constraint(m, x20 - x184 <= 0)

@constraint(m, x21 - x185 <= 0)

@constraint(m, x21 - x186 <= 0)

@constraint(m, x22 - x187 <= 0)

@constraint(m, x22 - x188 <= 0)

@constraint(m, x23 - x189 <= 0)

@constraint(m, x24 - x190 <= 0)

@constraint(m, x25 - x191 <= 0)

@constraint(m, x25 - x192 <= 0)

@constraint(m, x26 - x193 <= 0)

@constraint(m, x26 - x194 <= 0)

@constraint(m, x27 - x195 <= 0)

@constraint(m, x28 - x196 <= 0)

@constraint(m, x29 - x197 <= 0)

@constraint(m, x29 - x198 <= 0)

@constraint(m, x30 - x199 <= 0)

@constraint(m, x30 - x200 <= 0)

@constraint(m, x31 - x201 <= 0)

@constraint(m, x32 - x202 <= 0)

@constraint(m, x33 - x203 <= 0)

@constraint(m, x33 - x204 <= 0)

@constraint(m, x34 - x205 <= 0)

@constraint(m, x34 - x206 <= 0)

@constraint(m, x35 - x207 <= 0)

@constraint(m, x36 - x208 <= 0)

@constraint(m, x37 - x209 <= 0)

@constraint(m, x37 - x210 <= 0)

@constraint(m, x38 - x211 <= 0)

@constraint(m, x38 - x212 <= 0)

@constraint(m, x39 - x213 <= 0)

@constraint(m, x40 - x214 <= 0)

@constraint(m, x41 - x215 <= 0)

@constraint(m, x41 - x216 <= 0)

@constraint(m, x42 - x217 <= 0)

@constraint(m, x42 - x218 <= 0)

@constraint(m, x43 - x219 <= 0)

@constraint(m, x44 - x220 <= 0)

@constraint(m, x41 - x215 + x221 + x227 == 0)

@constraint(m, x41 - x216 + x222 + x228 == 0)

@constraint(m, x42 - x217 + x223 + x229 == 0)

@constraint(m, x42 - x218 + x224 + x230 == 0)

@constraint(m, x43 - x219 + x225 + x231 == 0)

@constraint(m, x44 - x220 + x226 + x232 == 0)

@constraint(m,  - x75 - x155 + x161 == 0)

@constraint(m,  - x76 - x156 + x162 == 0)

@constraint(m,  - x77 - x157 + x163 == 0)

@constraint(m,  - x78 - x158 + x164 == 0)

@constraint(m,  - x79 - x159 + x165 == 0)

@constraint(m,  - x80 - x160 + x166 == 0)

@constraint(m,  - x81 - x161 + x167 == 0)

@constraint(m,  - x82 - x162 + x168 == 0)

@constraint(m,  - x83 - x163 + x169 == 0)

@constraint(m,  - x84 - x164 + x170 == 0)

@constraint(m,  - x85 - x165 + x171 == 0)

@constraint(m,  - x86 - x166 + x172 == 0)

@constraint(m,  - x87 - x167 + x173 == 0)

@constraint(m,  - x88 - x168 + x174 == 0)

@constraint(m,  - x89 - x169 + x175 == 0)

@constraint(m,  - x90 - x170 + x176 == 0)

@constraint(m,  - x91 - x171 + x177 == 0)

@constraint(m,  - x92 - x172 + x178 == 0)

@constraint(m,  - x93 - x173 + x179 == 0)

@constraint(m,  - x94 - x174 + x180 == 0)

@constraint(m,  - x95 - x175 + x181 == 0)

@constraint(m,  - x96 - x176 + x182 == 0)

@constraint(m,  - x97 - x177 + x183 == 0)

@constraint(m,  - x98 - x178 + x184 == 0)

@constraint(m,  - x99 - x179 + x185 == 0)

@constraint(m,  - x100 - x180 + x186 == 0)

@constraint(m,  - x101 - x181 + x187 == 0)

@constraint(m,  - x102 - x182 + x188 == 0)

@constraint(m,  - x103 - x183 + x189 == 0)

@constraint(m,  - x104 - x184 + x190 == 0)

@constraint(m,  - x105 - x185 + x191 == 0)

@constraint(m,  - x106 - x186 + x192 == 0)

@constraint(m,  - x107 - x187 + x193 == 0)

@constraint(m,  - x108 - x188 + x194 == 0)

@constraint(m,  - x109 - x189 + x195 == 0)

@constraint(m,  - x110 - x190 + x196 == 0)

@constraint(m,  - x111 - x191 + x197 == 0)

@constraint(m,  - x112 - x192 + x198 == 0)

@constraint(m,  - x113 - x193 + x199 == 0)

@constraint(m,  - x114 - x194 + x200 == 0)

@constraint(m,  - x115 - x195 + x201 == 0)

@constraint(m,  - x116 - x196 + x202 == 0)

@constraint(m,  - x117 - x197 + x203 == 0)

@constraint(m,  - x118 - x198 + x204 == 0)

@constraint(m,  - x119 - x199 + x205 == 0)

@constraint(m,  - x120 - x200 + x206 == 0)

@constraint(m,  - x121 - x201 + x207 == 0)

@constraint(m,  - x122 - x202 + x208 == 0)

@constraint(m,  - x123 - x203 + x209 == 0)

@constraint(m,  - x124 - x204 + x210 == 0)

@constraint(m,  - x125 - x205 + x211 == 0)

@constraint(m,  - x126 - x206 + x212 == 0)

@constraint(m,  - x127 - x207 + x213 == 0)

@constraint(m,  - x128 - x208 + x214 == 0)

@constraint(m,  - x129 - x209 + x215 == 0)

@constraint(m,  - x130 - x210 + x216 == 0)

@constraint(m,  - x131 - x211 + x217 == 0)

@constraint(m,  - x132 - x212 + x218 == 0)

@constraint(m,  - x133 - x213 + x219 == 0)

@constraint(m,  - x134 - x214 + x220 == 0)

@constraint(m, x77 - 200*b135 <= 0)

@constraint(m, x80 - 200*b136 <= 0)

@constraint(m, x83 - 200*b137 <= 0)

@constraint(m, x86 - 200*b138 <= 0)

@constraint(m, x89 - 200*b139 <= 0)

@constraint(m, x92 - 200*b140 <= 0)

@constraint(m, x95 - 200*b141 <= 0)

@constraint(m, x98 - 200*b142 <= 0)

@constraint(m, x101 - 200*b143 <= 0)

@constraint(m, x104 - 200*b144 <= 0)

@constraint(m, x107 - 200*b145 <= 0)

@constraint(m, x110 - 200*b146 <= 0)

@constraint(m, x113 - 200*b147 <= 0)

@constraint(m, x116 - 200*b148 <= 0)

@constraint(m, x119 - 200*b149 <= 0)

@constraint(m, x122 - 200*b150 <= 0)

@constraint(m, x125 - 200*b151 <= 0)

@constraint(m, x128 - 200*b152 <= 0)

@constraint(m, x131 - 200*b153 <= 0)

@constraint(m, x134 - 200*b154 <= 0)

@constraint(m, 0.2*x75 + 0.1*x76 + 0.15*x77 + 0.05*x78 + 0.6*x79 + 1.28*x80 + 19*b135 + 57.6*b136 - x243 + x253 + x263
     <= 40)

@constraint(m, 0.53*x75 + 0.27*x76 + 0.45*x77 + 0.15*x78 + 7*x79 + 2.4*x80 + 42*b135 + 108*b136 - x243 - 0.8*x263
     <= 82.3)

@constraint(m, 0.04*x5 + 0.06*x6 + x45 + x46 - x65 + 0.2*x81 + 0.1*x82 + 0.15*x83 + 0.05*x84 + 0.6*x85 + 1.28*x86
     + 19*b137 + 57.6*b138 + 1.07*x243 - x244 - x253 + x254 + x264 <= 0)

@constraint(m,  - 0.2*x5 - 0.2*x6 - 0.2*x7 - 0.2*x8 + 0.53*x81 + 0.27*x82 + 0.45*x83 + 0.15*x84 + 7*x85 + 2.4*x86
     + 42*b137 + 108*b138 + 1.07*x243 - x244 - 0.8*x264 <= 0)

@constraint(m, 0.04*x9 + 0.06*x10 + x47 + x48 - x66 + 0.2*x87 + 0.1*x88 + 0.15*x89 + 0.05*x90 + 0.6*x91 + 1.28*x92
     + 19*b139 + 57.6*b140 + 1.07*x244 - x245 - x254 + x255 + x265 <= 0)

@constraint(m,  - 0.2*x9 - 0.2*x10 - 0.2*x11 - 0.2*x12 + 0.53*x87 + 0.27*x88 + 0.45*x89 + 0.15*x90 + 7*x91 + 2.4*x92
     + 42*b139 + 108*b140 + 1.07*x244 - x245 - 0.8*x265 <= 0)

@constraint(m, 0.04*x13 + 0.06*x14 + x49 + x50 - x67 + 0.2*x93 + 0.1*x94 + 0.15*x95 + 0.05*x96 + 0.6*x97 + 1.28*x98
     + 19*b141 + 57.6*b142 + 1.07*x245 - x246 - x255 + x256 + x266 <= 0)

@constraint(m,  - 0.2*x13 - 0.2*x14 - 0.2*x15 - 0.2*x16 + 0.53*x93 + 0.27*x94 + 0.45*x95 + 0.15*x96 + 7*x97 + 2.4*x98
     + 42*b141 + 108*b142 + 1.07*x245 - x246 - 0.8*x266 <= 0)

@constraint(m, 0.04*x17 + 0.06*x18 + x51 + x52 - x68 + 0.2*x99 + 0.1*x100 + 0.15*x101 + 0.05*x102 + 0.6*x103 + 1.28*x104
     + 19*b143 + 57.6*b144 + 1.07*x246 - x247 - x256 + x257 + x267 <= 0)

@constraint(m,  - 0.2*x17 - 0.2*x18 - 0.2*x19 - 0.2*x20 + 0.53*x99 + 0.27*x100 + 0.45*x101 + 0.15*x102 + 7*x103
     + 2.4*x104 + 42*b143 + 108*b144 + 1.07*x246 - x247 - 0.8*x267 <= 0)

@constraint(m, 0.04*x21 + 0.06*x22 + x53 + x54 - x69 + 0.2*x105 + 0.1*x106 + 0.15*x107 + 0.05*x108 + 0.6*x109
     + 1.28*x110 + 19*b145 + 57.6*b146 + 1.07*x247 - x248 - x257 + x258 + x268 <= 0)

@constraint(m,  - 0.2*x21 - 0.2*x22 - 0.2*x23 - 0.2*x24 + 0.53*x105 + 0.27*x106 + 0.45*x107 + 0.15*x108 + 7*x109
     + 2.4*x110 + 42*b145 + 108*b146 + 1.07*x247 - x248 - 0.8*x268 <= 0)

@constraint(m, 0.04*x25 + 0.06*x26 + x55 + x56 - x70 + 0.2*x111 + 0.1*x112 + 0.15*x113 + 0.05*x114 + 0.6*x115
     + 1.28*x116 + 19*b147 + 57.6*b148 + 1.07*x248 - x249 - x258 + x259 + x269 <= 0)

@constraint(m,  - 0.2*x25 - 0.2*x26 - 0.2*x27 - 0.2*x28 + 0.53*x111 + 0.27*x112 + 0.45*x113 + 0.15*x114 + 7*x115
     + 2.4*x116 + 42*b147 + 108*b148 + 1.07*x248 - x249 - 0.8*x269 <= 0)

@constraint(m, 0.04*x29 + 0.06*x30 + x57 + x58 - x71 + 0.2*x117 + 0.1*x118 + 0.15*x119 + 0.05*x120 + 0.6*x121
     + 1.28*x122 + 19*b149 + 57.6*b150 + 1.07*x249 - x250 - x259 + x260 + x270 <= 0)

@constraint(m,  - 0.2*x29 - 0.2*x30 - 0.2*x31 - 0.2*x32 + 0.53*x117 + 0.27*x118 + 0.45*x119 + 0.15*x120 + 7*x121
     + 2.4*x122 + 42*b149 + 108*b150 + 1.07*x249 - x250 - 0.8*x270 <= 0)

@constraint(m, 0.04*x33 + 0.06*x34 + x59 + x60 - x72 + 0.2*x123 + 0.1*x124 + 0.15*x125 + 0.05*x126 + 0.6*x127
     + 1.28*x128 + 19*b151 + 57.6*b152 + 1.07*x250 - x251 - x260 + x261 + x271 <= 0)

@constraint(m,  - 0.2*x33 - 0.2*x34 - 0.2*x35 - 0.2*x36 + 0.53*x123 + 0.27*x124 + 0.45*x125 + 0.15*x126 + 7*x127
     + 2.4*x128 + 42*b151 + 108*b152 + 1.07*x250 - x251 - 0.8*x271 <= 0)

@constraint(m, 0.04*x37 + 0.06*x38 + x61 + x62 - x73 + 0.2*x129 + 0.1*x130 + 0.15*x131 + 0.05*x132 + 0.6*x133
     + 1.28*x134 + 19*b153 + 57.6*b154 + 1.07*x251 - x252 - x261 + x262 + x272 <= 0)

@constraint(m,  - 0.2*x37 - 0.2*x38 - 0.2*x39 - 0.2*x40 + 0.53*x129 + 0.27*x130 + 0.45*x131 + 0.15*x132 + 7*x133
     + 2.4*x134 + 42*b153 + 108*b154 + 1.07*x251 - x252 - 0.8*x272 <= 0)

@constraint(m, 0.04*x41 + 0.06*x42 + x63 + x64 - x74 + 1.07*x252 - x262 + x273 + 1.30928860377358*x274 <= 0)

@constraint(m,  - 0.2*x41 - 0.2*x42 - 0.2*x43 - 0.2*x44 + 1.07*x252 - 0.8*x273 + 4.66059773584906*x274 <= 0)

@constraint(m, 0.2*x221 + 0.1*x222 + 0.293396226415094*x223 + 0.05*x224 + 0.6*x225 + 1.7557244267149*x226 + 0.2*x227
     + 0.1*x228 + 0.293396226415094*x229 + 0.05*x230 + 0.6*x231 + 1.7557244267149*x232 - 1.30928860377358*x275
     - 1.30928860377358*x276 >= 0)

@constraint(m, 0.53*x221 + 0.27*x222 + 0.766981132075472*x223 + 0.15*x224 + 7*x225 + 3.29198330009044*x226 + 0.53*x227
     + 0.27*x228 + 0.766981132075472*x229 + 0.15*x230 + 7*x231 + 3.29198330009044*x232 - 4.66059773584906*x275
     - 4.66059773584906*x276 >= 0)

@constraint(m,  - x233 + x234 >= 10.6)

@constraint(m,  - x234 + x235 >= 10.6)

@constraint(m,  - x235 + x236 >= 10.6)

@constraint(m,  - x236 + x237 >= 10.6)

@constraint(m,  - x237 + x238 >= 10.6)

@constraint(m,  - x238 + x239 >= 10.6)

@constraint(m,  - x239 + x240 >= 10.6)

@constraint(m,  - x240 + x241 >= 10.6)

@constraint(m,  - x241 + x242 >= 10.6)

@constraint(m,  - x7 + x11 >= 0)

@constraint(m,  - x11 + x15 >= 0)

@constraint(m,  - x15 + x19 >= 0)

@constraint(m,  - x19 + x23 >= 0)

@constraint(m,  - x23 + x27 >= 0)

@constraint(m,  - x27 + x31 >= 0)

@constraint(m,  - x31 + x35 >= 0)

@constraint(m,  - x35 + x39 >= 0)

@constraint(m,  - x39 + x43 >= 0)

@constraint(m, x41 - 0.45*x277 >= 50)

@constraint(m,  - 0.4*x41 + x42 - 0.32*x277 >= 55)

@constraint(m,  - 0.12*x41 - 0.48*x42 + x43 - 0.04*x277 >= 118)

@constraint(m,  - 0.1*x41 - 0.21*x42 - 0.35*x43 + x44 - 0.19*x277 >= 49.95)

@constraint(m,  - 7.7704820369164*x274 - 6.7870399483941*x275 - 4.83906568280854*x276 - 7.7704820369164*x277 + x278
     == 0)
