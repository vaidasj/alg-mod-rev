#  MIP written by GAMS Convert at 10/11/20 12:19:57
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        168       43       56       69        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        258      204       54        0        0        0        0        0
#  FX      1        0        1        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        953      953        0        0
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
@variable(m, 0 <= b180 <= 1, binary=true, start=0)
@variable(m, 0 <= b181 <= 1, binary=true, start=0)
@variable(m, 0 <= b182 <= 1, binary=true, start=0)
@variable(m, 0 <= b183 <= 1, binary=true, start=0)
@variable(m, 0 <= b184 <= 1, binary=true, start=0)
@variable(m, 0 <= b185 <= 1, binary=true, start=0)
@variable(m, 0 <= b186 <= 1, binary=true, start=0)
@variable(m, 0 <= b187 <= 1, binary=true, start=0)
@variable(m, 0 <= b188 <= 1, binary=true, start=0)
@variable(m, 0 <= b189 <= 1, binary=true, start=0)
@variable(m, 0 <= b190 <= 1, binary=true, start=0)
@variable(m, 0 <= b191 <= 1, binary=true, start=0)
@variable(m, 0 <= b192 <= 1, binary=true, start=0)
@variable(m, 0 <= b193 <= 1, binary=true, start=0)
@variable(m, 0 <= b194 <= 1, binary=true, start=0)
@variable(m, 0 <= b195 <= 1, binary=true, start=0)
@variable(m, 0 <= b196 <= 1, binary=true, start=0)
@variable(m, 0 <= b197 <= 1, binary=true, start=0)
@variable(m, 1 <= b198 <= 1, binary=true, start=1)
@variable(m, 0 <= b199 <= 1, binary=true, start=0)
@variable(m, 0 <= b200 <= 1, binary=true, start=0)
@variable(m, 0 <= b201 <= 1, binary=true, start=0)
@variable(m, 0 <= b202 <= 1, binary=true, start=0)
@variable(m, 0 <= b203 <= 1, binary=true, start=0)
@variable(m, 0 <= b204 <= 1, binary=true, start=0)
@variable(m, 0 <= b205 <= 1, binary=true, start=0)
@variable(m, 0 <= b206 <= 1, binary=true, start=0)
@variable(m, 0 <= b207 <= 1, binary=true, start=0)
@variable(m, 0 <= b208 <= 1, binary=true, start=0)
@variable(m, 0 <= b209 <= 1, binary=true, start=0)
@variable(m, 0 <= b210 <= 1, binary=true, start=0)
@variable(m, 0 <= b211 <= 1, binary=true, start=0)
@variable(m, 0 <= b212 <= 1, binary=true, start=0)
@variable(m, 0 <= b213 <= 1, binary=true, start=0)
@variable(m, 0 <= b214 <= 1, binary=true, start=0)
@variable(m, 0 <= b215 <= 1, binary=true, start=0)
@variable(m, 0 <= b216 <= 1, binary=true, start=0)
@variable(m, 0 <= b217 <= 1, binary=true, start=0)
@variable(m, 0 <= b218 <= 1, binary=true, start=0)
@variable(m, 0 <= b219 <= 1, binary=true, start=0)
@variable(m, 0 <= b220 <= 1, binary=true, start=0)
@variable(m, 0 <= b221 <= 1, binary=true, start=0)
@variable(m, 0 <= b222 <= 1, binary=true, start=0)
@variable(m, 0 <= b223 <= 1, binary=true, start=0)
@variable(m, 0 <= b224 <= 1, binary=true, start=0)
@variable(m, 0 <= b225 <= 1, binary=true, start=0)
@variable(m, 0 <= b226 <= 1, binary=true, start=0)
@variable(m, 0 <= b227 <= 1, binary=true, start=0)
@variable(m, 0 <= b228 <= 1, binary=true, start=0)
@variable(m, 0 <= b229 <= 1, binary=true, start=0)
@variable(m, 0 <= b230 <= 1, binary=true, start=0)
@variable(m, 0 <= b231 <= 1, binary=true, start=0)
@variable(m, 0 <= b232 <= 1, binary=true, start=0)
@variable(m, 0 <= b233 <= 1, binary=true, start=0)
@variable(m, x235, start=0)
@variable(m, x236, start=0)
@variable(m, x237, start=0)
@variable(m, x238, start=0)
@variable(m, x239, start=0)
@variable(m, x240, start=0)
@variable(m, x241, start=0)
@variable(m, x242, start=0)
@variable(m, x243, start=0)
@variable(m, x244, start=0)
@variable(m, x245, start=0)
@variable(m, x246, start=0)
@variable(m, x247, start=0)
@variable(m, x248, start=0)
@variable(m, x249, start=0)
@variable(m, x250, start=0)
@variable(m, x251, start=0)
@variable(m, x252, start=0)
@variable(m, x253, start=0)
@variable(m, x254, start=0)
@variable(m, x255, start=0)
@variable(m, x256, start=0)
@variable(m, x257, start=0)
@variable(m, x258, start=0)

@objective(m, Min, 0.826446280991735*x235 + 0.620921323059155*x236 + 0.466507380209733*x237 + 0.350493899481392*x238
     + 0.826446280991735*x239 + 0.620921323059155*x240 + 0.466507380209733*x241 + 0.350493899481392*x242
     + 0.826446280991735*x243 + 0.620921323059155*x244 + 0.466507380209733*x245 + 0.350493899481392*x246
     + 0.826446280991735*x247 + 0.620921323059155*x248 + 0.466507380209733*x249 + 0.350493899481392*x250
     - 0.826446280991735*x251 - 0.620921323059155*x252 - 0.466507380209733*x253 - 0.350493899481392*x254
     + 0.826446280991735*x255 + 0.620921323059155*x256 + 0.466507380209733*x257 + 0.350493899481392*x258)

@constraint(m,  - 0.1127*x1 - 0.1465*x13 + x117 >= 0)

@constraint(m,  - 0.1127*x2 - 0.1465*x14 + x118 >= 0)

@constraint(m,  - 0.1127*x3 - 0.1465*x15 + x119 >= 0)

@constraint(m,  - 0.1127*x4 - 0.1465*x16 + x120 >= 0)

@constraint(m,  - 0.1127*x5 - 0.1465*x17 + x121 >= 0)

@constraint(m,  - 0.1127*x6 - 0.1465*x18 + x122 >= 0)

@constraint(m,  - 0.1127*x7 - 0.1465*x19 + x123 >= 0)

@constraint(m,  - 0.1127*x8 - 0.1465*x20 + x124 >= 0)

@constraint(m,  - 0.1127*x9 - 0.1465*x21 + x125 >= 0)

@constraint(m,  - 0.1127*x10 - 0.1465*x22 + x126 >= 0)

@constraint(m,  - 0.1127*x11 - 0.1465*x23 + x127 >= 0)

@constraint(m,  - 0.1127*x12 - 0.1465*x24 + x128 >= 0)

@constraint(m, 0.96*x1 + 0.96*x13 - 0.96*x25 + x129 >= 0)

@constraint(m, 0.96*x2 + 0.96*x14 - 0.96*x26 + x130 >= 0)

@constraint(m, 0.96*x3 + 0.96*x15 - 0.96*x27 + x131 >= 0)

@constraint(m, 0.96*x4 + 0.96*x16 - 0.96*x28 + x132 >= 0)

@constraint(m, 0.96*x5 + 0.96*x17 - 0.96*x29 + x133 >= 0)

@constraint(m, 0.96*x6 + 0.96*x18 - 0.96*x30 + x134 >= 0)

@constraint(m, 0.96*x7 + 0.96*x19 - 0.96*x31 + x135 >= 0)

@constraint(m, 0.96*x8 + 0.96*x20 - 0.96*x32 + x136 >= 0)

@constraint(m, 0.96*x9 + 0.96*x21 - 0.96*x33 + x137 >= 0)

@constraint(m, 0.96*x10 + 0.96*x22 - 0.96*x34 + x138 >= 0)

@constraint(m, 0.96*x11 + 0.96*x23 - 0.96*x35 + x139 >= 0)

@constraint(m, 0.96*x12 + 0.96*x24 - 0.96*x36 + x140 >= 0)

@constraint(m, x25 - x37 - x41 - x45 - x49 - x53 - x141 >= 0)

@constraint(m, x26 - x38 - x42 - x46 - x50 - x54 - x142 >= 0)

@constraint(m, x27 - x39 - x43 - x47 - x51 - x55 - x143 >= 0)

@constraint(m, x28 - x40 - x44 - x48 - x52 - x56 - x144 >= 0)

@constraint(m, x29 - x57 - x61 - x65 - x69 - x73 - x145 >= 0)

@constraint(m, x30 - x58 - x62 - x66 - x70 - x74 - x146 >= 0)

@constraint(m, x31 - x59 - x63 - x67 - x71 - x75 - x147 >= 0)

@constraint(m, x32 - x60 - x64 - x68 - x72 - x76 - x148 >= 0)

@constraint(m, x33 - x77 - x81 - x85 - x89 - x93 - x149 >= 0)

@constraint(m, x34 - x78 - x82 - x86 - x90 - x94 - x150 >= 0)

@constraint(m, x35 - x79 - x83 - x87 - x91 - x95 - x151 >= 0)

@constraint(m, x36 - x80 - x84 - x88 - x92 - x96 - x152 >= 0)

@constraint(m, x1 <= 500)

@constraint(m, x2 - x153 <= 500)

@constraint(m, x3 - x153 - x154 <= 500)

@constraint(m, x4 - x153 - x154 - x155 <= 500)

@constraint(m, x5 <= 0)

@constraint(m, x6 - x156 <= 0)

@constraint(m, x7 - x156 - x157 <= 0)

@constraint(m, x8 - x156 - x157 - x158 <= 0)

@constraint(m, x9 <= 0)

@constraint(m, x10 - x159 <= 0)

@constraint(m, x11 - x159 - x160 <= 0)

@constraint(m, x12 - x159 - x160 - x161 <= 0)

@constraint(m, x13 <= 0)

@constraint(m, x14 - x162 <= 0)

@constraint(m, x15 - x162 - x163 <= 0)

@constraint(m, x16 - x162 - x163 - x164 <= 0)

@constraint(m, x17 <= 320)

@constraint(m, x18 - x165 <= 320)

@constraint(m, x19 - x165 - x166 <= 320)

@constraint(m, x20 - x165 - x166 - x167 <= 320)

@constraint(m, x21 <= 0)

@constraint(m, x22 - x168 <= 0)

@constraint(m, x23 - x168 - x169 <= 0)

@constraint(m, x24 - x168 - x169 - x170 <= 0)

@constraint(m, x25 <= 500)

@constraint(m, x26 - x171 <= 500)

@constraint(m, x27 - x171 - x172 <= 500)

@constraint(m, x28 - x171 - x172 - x173 <= 500)

@constraint(m, x29 <= 320)

@constraint(m, x30 - x174 <= 320)

@constraint(m, x31 - x174 - x175 <= 320)

@constraint(m, x32 - x174 - x175 - x176 <= 320)

@constraint(m, x33 <= 0)

@constraint(m, x34 - x177 <= 0)

@constraint(m, x35 - x177 - x178 <= 0)

@constraint(m, x36 - x177 - x178 - x179 <= 0)

@constraint(m, x153 - 500*b180 - 750*b183 - 1000*b186 == 0)

@constraint(m, x154 - 500*b181 - 750*b184 - 1000*b187 == 0)

@constraint(m, x155 - 500*b182 - 750*b185 - 1000*b188 == 0)

@constraint(m, x156 - 500*b189 - 750*b192 - 1000*b195 == 0)

@constraint(m, x157 - 500*b190 - 750*b193 - 1000*b196 == 0)

@constraint(m, x158 - 500*b191 - 750*b194 - 1000*b197 == 0)

@constraint(m, x159 - 500*b198 - 750*b201 - 1000*b204 == 0)

@constraint(m, x160 - 500*b199 - 750*b202 - 1000*b205 == 0)

@constraint(m, x161 - 500*b200 - 750*b203 - 1000*b206 == 0)

@constraint(m, x162 - 500*b207 - 750*b210 - 1000*b213 == 0)

@constraint(m, x163 - 500*b208 - 750*b211 - 1000*b214 == 0)

@constraint(m, x164 - 500*b209 - 750*b212 - 1000*b215 == 0)

@constraint(m, x165 - 500*b216 - 750*b219 - 1000*b222 == 0)

@constraint(m, x166 - 500*b217 - 750*b220 - 1000*b223 == 0)

@constraint(m, x167 - 500*b218 - 750*b221 - 1000*b224 == 0)

@constraint(m, x168 - 500*b225 - 750*b228 - 1000*b231 == 0)

@constraint(m, x169 - 500*b226 - 750*b229 - 1000*b232 == 0)

@constraint(m, x170 - 500*b227 - 750*b230 - 1000*b233 == 0)

@constraint(m, b180 + b183 + b186 <= 1)

@constraint(m, b181 + b184 + b187 <= 1)

@constraint(m, b182 + b185 + b188 <= 1)

@constraint(m, b189 + b192 + b195 <= 1)

@constraint(m, b190 + b193 + b196 <= 1)

@constraint(m, b191 + b194 + b197 <= 1)

@constraint(m, b198 + b201 + b204 <= 1)

@constraint(m, b199 + b202 + b205 <= 1)

@constraint(m, b200 + b203 + b206 <= 1)

@constraint(m, b207 + b210 + b213 <= 1)

@constraint(m, b208 + b211 + b214 <= 1)

@constraint(m, b209 + b212 + b215 <= 1)

@constraint(m, b216 + b219 + b222 <= 1)

@constraint(m, b217 + b220 + b223 <= 1)

@constraint(m, b218 + b221 + b224 <= 1)

@constraint(m, b225 + b228 + b231 <= 1)

@constraint(m, b226 + b229 + b232 <= 1)

@constraint(m, b227 + b230 + b233 <= 1)

@constraint(m, x153 + x154 + x155 + x162 + x163 + x164 <= 1500)

@constraint(m, x156 + x157 + x158 + x165 + x166 + x167 <= 1680)

@constraint(m, x159 + x160 + x161 + x168 + x169 + x170 <= 2000)

@constraint(m, x37 + x57 + x77 + x97 >= 382.55374332)

@constraint(m, x38 + x58 + x78 + x98 >= 523.192358530475)

@constraint(m, x39 + x59 + x79 + x99 >= 715.534088489393)

@constraint(m, x40 + x60 + x80 + x100 >= 978.586600974837)

@constraint(m, x41 + x61 + x81 + x101 >= 368.89110963)

@constraint(m, x42 + x62 + x82 + x102 >= 504.506917154387)

@constraint(m, x43 + x63 + x83 + x103 >= 689.979299614772)

@constraint(m, x44 + x64 + x84 + x104 >= 943.63707951145)

@constraint(m, x45 + x65 + x85 + x105 >= 273.2526738)

@constraint(m, x46 + x66 + x86 + x106 >= 373.708827521768)

@constraint(m, x47 + x67 + x87 + x107 >= 511.095777492423)

@constraint(m, x48 + x68 + x88 + x108 >= 698.990429267741)

@constraint(m, x49 + x69 + x89 + x109 >= 170.782921125)

@constraint(m, x50 + x70 + x90 + x110 >= 233.568017201105)

@constraint(m, x51 + x71 + x91 + x111 >= 319.434860932765)

@constraint(m, x52 + x72 + x92 + x112 >= 436.869018292338)

@constraint(m, x53 + x73 + x93 + x113 >= 170.782921125)

@constraint(m, x54 + x74 + x94 + x114 >= 233.568017201105)

@constraint(m, x55 + x75 + x95 + x115 >= 319.434860932765)

@constraint(m, x56 + x76 + x96 + x116 >= 436.869018292338)

@constraint(m, x141 + x145 + x149 <= 1000)

@constraint(m, x142 + x146 + x150 <= 1000)

@constraint(m, x143 + x147 + x151 <= 1000)

@constraint(m, x144 + x148 + x152 <= 1000)

@constraint(m, x97 + x101 + x105 + x109 + x113 <= 3000)

@constraint(m, x98 + x102 + x106 + x110 + x114 <= 3000)

@constraint(m, x99 + x103 + x107 + x111 + x115 <= 3000)

@constraint(m, x100 + x104 + x108 + x112 + x116 <= 3000)

@constraint(m, x129 + x133 + x137 <= 0)

@constraint(m, x130 + x134 + x138 <= 0)

@constraint(m, x131 + x135 + x139 <= 0)

@constraint(m, x132 + x136 + x140 <= 0)

@constraint(m,  - 0.01020325*x1 - 0.01020325*x5 - 0.01020325*x9 - 0.01020325*x13 - 0.01020325*x17 - 0.01020325*x21
     - 0.02846528*x25 - 0.02846528*x29 - 0.02846528*x33 + x239 == 47.1)

@constraint(m,  - 0.01020325*x2 - 0.01020325*x6 - 0.01020325*x10 - 0.01020325*x14 - 0.01020325*x18 - 0.01020325*x22
     - 0.02846528*x26 - 0.02846528*x30 - 0.02846528*x34 - 0.0558*x153 - 0.0558*x156 - 0.0558*x159 - 0.06*x162
     - 0.06*x165 - 0.06*x168 + x240 == 47.1)

@constraint(m,  - 0.01020325*x3 - 0.01020325*x7 - 0.01020325*x11 - 0.01020325*x15 - 0.01020325*x19 - 0.01020325*x23
     - 0.02846528*x27 - 0.02846528*x31 - 0.02846528*x35 - 0.0558*x153 - 0.0558*x154 - 0.0558*x156 - 0.0558*x157
     - 0.0558*x159 - 0.0558*x160 - 0.06*x162 - 0.06*x163 - 0.06*x165 - 0.06*x166 - 0.06*x168 - 0.06*x169 + x241 == 47.1)

@constraint(m,  - 0.01020325*x4 - 0.01020325*x8 - 0.01020325*x12 - 0.01020325*x16 - 0.01020325*x20 - 0.01020325*x24
     - 0.02846528*x28 - 0.02846528*x32 - 0.02846528*x36 - 0.0558*x153 - 0.0558*x154 - 0.0558*x155 - 0.0558*x156
     - 0.0558*x157 - 0.0558*x158 - 0.0558*x159 - 0.0558*x160 - 0.0558*x161 - 0.06*x162 - 0.06*x163 - 0.06*x164
     - 0.06*x165 - 0.06*x166 - 0.06*x167 - 0.06*x168 - 0.06*x169 - 0.06*x170 + x242 == 47.1)

@constraint(m, x235 == 0)

@constraint(m,  - 0.0267979094203776*x171 - 0.0256813298611952*x174 - 0.0234481707428304*x177 - 66.9949008460419*b180
     - 83.0558287330283*b183 - 96.7358932827346*b186 - 64.2034466441234*b189 - 79.5951692024855*b192
     - 92.7052310626207*b195 - 58.6205382402866*b198 - 72.6738501413998*b201 - 84.6439066223928*b204
     - 56.9457166371747*b207 - 71.4615065582968*b210 - 83.9533170947684*b213 - 54.5729784439591*b216
     - 68.4839437850345*b219 - 80.4552622158197*b222 - 49.8275020575279*b225 - 62.5288182385097*b228
     - 73.4591524579224*b231 + x236 == 0)

@constraint(m,  - 0.0267979094203776*x171 - 0.0267979094203776*x172 - 0.0256813298611952*x174 - 0.0256813298611952*x175
     - 0.0234481707428304*x177 - 0.0234481707428304*x178 - 66.9949008460419*b180 - 66.9949008460419*b181
     - 83.0558287330283*b183 - 83.0558287330283*b184 - 96.7358932827346*b186 - 96.7358932827346*b187
     - 64.2034466441234*b189 - 64.2034466441234*b190 - 79.5951692024855*b192 - 79.5951692024855*b193
     - 92.7052310626207*b195 - 92.7052310626207*b196 - 58.6205382402866*b198 - 58.6205382402866*b199
     - 72.6738501413998*b201 - 72.6738501413998*b202 - 84.6439066223928*b204 - 84.6439066223928*b205
     - 56.9457166371747*b207 - 56.9457166371747*b208 - 71.4615065582968*b210 - 71.4615065582968*b211
     - 83.9533170947684*b213 - 83.9533170947684*b214 - 54.5729784439591*b216 - 54.5729784439591*b217
     - 68.4839437850345*b219 - 68.4839437850345*b220 - 80.4552622158197*b222 - 80.4552622158197*b223
     - 49.8275020575279*b225 - 49.8275020575279*b226 - 62.5288182385097*b228 - 62.5288182385097*b229
     - 73.4591524579224*b231 - 73.4591524579224*b232 + x237 == 0)

@constraint(m,  - 0.0267979094203776*x171 - 0.0267979094203776*x172 - 0.0267979094203776*x173 - 0.0256813298611952*x174
     - 0.0256813298611952*x175 - 0.0256813298611952*x176 - 0.0234481707428304*x177 - 0.0234481707428304*x178
     - 0.0234481707428304*x179 - 66.9949008460419*b180 - 66.9949008460419*b181 - 66.9949008460419*b182
     - 83.0558287330283*b183 - 83.0558287330283*b184 - 83.0558287330283*b185 - 96.7358932827346*b186
     - 96.7358932827346*b187 - 96.7358932827346*b188 - 64.2034466441234*b189 - 64.2034466441234*b190
     - 64.2034466441234*b191 - 79.5951692024855*b192 - 79.5951692024855*b193 - 79.5951692024855*b194
     - 92.7052310626207*b195 - 92.7052310626207*b196 - 92.7052310626207*b197 - 58.6205382402866*b198
     - 58.6205382402866*b199 - 58.6205382402866*b200 - 72.6738501413998*b201 - 72.6738501413998*b202
     - 72.6738501413998*b203 - 84.6439066223928*b204 - 84.6439066223928*b205 - 84.6439066223928*b206
     - 56.9457166371747*b207 - 56.9457166371747*b208 - 56.9457166371747*b209 - 71.4615065582968*b210
     - 71.4615065582968*b211 - 71.4615065582968*b212 - 83.9533170947684*b213 - 83.9533170947684*b214
     - 83.9533170947684*b215 - 54.5729784439591*b216 - 54.5729784439591*b217 - 54.5729784439591*b218
     - 68.4839437850345*b219 - 68.4839437850345*b220 - 68.4839437850345*b221 - 80.4552622158197*b222
     - 80.4552622158197*b223 - 80.4552622158197*b224 - 49.8275020575279*b225 - 49.8275020575279*b226
     - 49.8275020575279*b227 - 62.5288182385097*b228 - 62.5288182385097*b229 - 62.5288182385097*b230
     - 73.4591524579224*b231 - 73.4591524579224*b232 - 73.4591524579224*b233 + x238 == 0)

@constraint(m,  - 0.055944*x37 - 0.1794882*x41 - 0.1957408*x45 - 0.1439468*x49 - 0.1082268*x53 - 0.1216218*x57
     - 0.061302*x61 - 0.1861434*x65 - 0.2078856*x69 - 0.173397*x73 - 0.2039188*x77 - 0.1411221*x81 - 0.0646437*x85
     - 0.1155964*x89 - 0.150978*x93 - 0.1537698*x97 - 0.03235*x101 - 0.1778808*x105 - 0.2305255*x109 - 0.2093708*x113
     - 0.2119815*x117 - 0.079965*x121 - 0.16912575*x125 - 0.141321*x129 - 0.05331*x133 - 0.1127505*x137 - 0.1794882*x141
     - 0.061302*x145 - 0.1411221*x149 + x243 == 0)

@constraint(m,  - 0.055944*x38 - 0.1794882*x42 - 0.1957408*x46 - 0.1439468*x50 - 0.1082268*x54 - 0.1216218*x58
     - 0.061302*x62 - 0.1861434*x66 - 0.2078856*x70 - 0.173397*x74 - 0.2039188*x78 - 0.1411221*x82 - 0.0646437*x86
     - 0.1155964*x90 - 0.150978*x94 - 0.1537698*x98 - 0.03235*x102 - 0.1778808*x106 - 0.2305255*x110 - 0.2093708*x114
     - 0.2119815*x118 - 0.079965*x122 - 0.16912575*x126 - 0.141321*x130 - 0.05331*x134 - 0.1127505*x138 - 0.1794882*x142
     - 0.061302*x146 - 0.1411221*x150 + x244 == 0)

@constraint(m,  - 0.055944*x39 - 0.1794882*x43 - 0.1957408*x47 - 0.1439468*x51 - 0.1082268*x55 - 0.1216218*x59
     - 0.061302*x63 - 0.1861434*x67 - 0.2078856*x71 - 0.173397*x75 - 0.2039188*x79 - 0.1411221*x83 - 0.0646437*x87
     - 0.1155964*x91 - 0.150978*x95 - 0.1537698*x99 - 0.03235*x103 - 0.1778808*x107 - 0.2305255*x111 - 0.2093708*x115
     - 0.2119815*x119 - 0.079965*x123 - 0.16912575*x127 - 0.141321*x131 - 0.05331*x135 - 0.1127505*x139 - 0.1794882*x143
     - 0.061302*x147 - 0.1411221*x151 + x245 == 0)

@constraint(m,  - 0.055944*x40 - 0.1794882*x44 - 0.1957408*x48 - 0.1439468*x52 - 0.1082268*x56 - 0.1216218*x60
     - 0.061302*x64 - 0.1861434*x68 - 0.2078856*x72 - 0.173397*x76 - 0.2039188*x80 - 0.1411221*x84 - 0.0646437*x88
     - 0.1155964*x92 - 0.150978*x96 - 0.1537698*x100 - 0.03235*x104 - 0.1778808*x108 - 0.2305255*x112 - 0.2093708*x116
     - 0.2119815*x120 - 0.079965*x124 - 0.16912575*x128 - 0.141321*x132 - 0.05331*x136 - 0.1127505*x140 - 0.1794882*x144
     - 0.061302*x148 - 0.1411221*x152 + x246 == 0)

@constraint(m,  - 0.28*x97 - 0.28*x101 - 0.28*x105 - 0.28*x109 - 0.28*x113 - 0.6*x117 - 0.6*x121 - 0.6*x125 - 0.224*x129
     - 0.224*x133 - 0.224*x137 + x247 == 0)

@constraint(m,  - 0.28*x98 - 0.28*x102 - 0.28*x106 - 0.28*x110 - 0.28*x114 - 0.6*x118 - 0.6*x122 - 0.6*x126 - 0.224*x130
     - 0.224*x134 - 0.224*x138 + x248 == 0)

@constraint(m,  - 0.28*x99 - 0.28*x103 - 0.28*x107 - 0.28*x111 - 0.28*x115 - 0.6*x119 - 0.6*x123 - 0.6*x127 - 0.224*x131
     - 0.224*x135 - 0.224*x139 + x249 == 0)

@constraint(m,  - 0.28*x100 - 0.28*x104 - 0.28*x108 - 0.28*x112 - 0.28*x116 - 0.6*x120 - 0.6*x124 - 0.6*x128
     - 0.224*x132 - 0.224*x136 - 0.224*x140 + x250 == 0)

@constraint(m,  - 0.001*x141 - 0.001*x145 - 0.001*x149 + x251 == 0)

@constraint(m,  - 0.001*x142 - 0.001*x146 - 0.001*x150 + x252 == 0)

@constraint(m,  - 0.001*x143 - 0.001*x147 - 0.001*x151 + x253 == 0)

@constraint(m,  - 0.001*x144 - 0.001*x148 - 0.001*x152 + x254 == 0)

@constraint(m,  - 0.025*x239 - 0.025*x247 + x255 == 0)

@constraint(m,  - 0.025*x240 - 0.025*x248 + x256 == 0)

@constraint(m,  - 0.025*x241 - 0.025*x249 + x257 == 0)

@constraint(m,  - 0.025*x242 - 0.025*x250 + x258 == 0)
