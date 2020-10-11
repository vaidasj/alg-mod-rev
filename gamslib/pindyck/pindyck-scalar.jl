#  NLP written by GAMS Convert at 10/11/20 12:17:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         97       97        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        117      117        0        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        337      257       80        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=14)
@variable(m, 0 <= x2, start=14)
@variable(m, 0 <= x3, start=14)
@variable(m, 0 <= x4, start=14)
@variable(m, 0 <= x5, start=14)
@variable(m, 0 <= x6, start=14)
@variable(m, 0 <= x7, start=14)
@variable(m, 0 <= x8, start=14)
@variable(m, 0 <= x9, start=14)
@variable(m, 0 <= x10, start=14)
@variable(m, 0 <= x11, start=14)
@variable(m, 0 <= x12, start=14)
@variable(m, 0 <= x13, start=14)
@variable(m, 0 <= x14, start=14)
@variable(m, 0 <= x15, start=14)
@variable(m, 0 <= x16, start=14)
@variable(m, 18 <= x17 <= 18, start=18)
@variable(m, 0 <= x18, start=18)
@variable(m, 0 <= x19, start=18)
@variable(m, 0 <= x20, start=18)
@variable(m, 0 <= x21, start=18)
@variable(m, 0 <= x22, start=18)
@variable(m, 0 <= x23, start=18)
@variable(m, 0 <= x24, start=18)
@variable(m, 0 <= x25, start=18)
@variable(m, 0 <= x26, start=18)
@variable(m, 0 <= x27, start=18)
@variable(m, 0 <= x28, start=18)
@variable(m, 0 <= x29, start=18)
@variable(m, 0 <= x30, start=18)
@variable(m, 0 <= x31, start=18)
@variable(m, 0 <= x32, start=18)
@variable(m, 0 <= x33, start=18)
@variable(m, 6.5 <= x34 <= 6.5, start=6.5)
@variable(m, 0 <= x35, start=7)
@variable(m, 0 <= x36, start=7)
@variable(m, 0 <= x37, start=7)
@variable(m, 0 <= x38, start=7)
@variable(m, 0 <= x39, start=7)
@variable(m, 0 <= x40, start=7)
@variable(m, 0 <= x41, start=7)
@variable(m, 0 <= x42, start=7)
@variable(m, 0 <= x43, start=7)
@variable(m, 0 <= x44, start=7)
@variable(m, 0 <= x45, start=7)
@variable(m, 0 <= x46, start=7)
@variable(m, 0 <= x47, start=7)
@variable(m, 0 <= x48, start=7)
@variable(m, 0 <= x49, start=7)
@variable(m, 0 <= x50, start=7)
@variable(m, 0 <= x51 <= 0, start=0)
@variable(m, 0 <= x52, start=7)
@variable(m, 0 <= x53, start=14)
@variable(m, 0 <= x54, start=21)
@variable(m, 0 <= x55, start=28)
@variable(m, 0 <= x56, start=35)
@variable(m, 0 <= x57, start=42)
@variable(m, 0 <= x58, start=49)
@variable(m, 0 <= x59, start=56)
@variable(m, 0 <= x60, start=63)
@variable(m, 0 <= x61, start=70)
@variable(m, 0 <= x62, start=77)
@variable(m, 0 <= x63, start=84)
@variable(m, 0 <= x64, start=91)
@variable(m, 0 <= x65, start=98)
@variable(m, 0 <= x66, start=105)
@variable(m, 0 <= x67, start=112)
@variable(m, 0 <= x68, start=11)
@variable(m, 0 <= x69, start=11)
@variable(m, 0 <= x70, start=11)
@variable(m, 0 <= x71, start=11)
@variable(m, 0 <= x72, start=11)
@variable(m, 0 <= x73, start=11)
@variable(m, 0 <= x74, start=11)
@variable(m, 0 <= x75, start=11)
@variable(m, 0 <= x76, start=11)
@variable(m, 0 <= x77, start=11)
@variable(m, 0 <= x78, start=11)
@variable(m, 0 <= x79, start=11)
@variable(m, 0 <= x80, start=11)
@variable(m, 0 <= x81, start=11)
@variable(m, 0 <= x82, start=11)
@variable(m, 0 <= x83, start=11)
@variable(m, 500 <= x84 <= 500, start=500)
@variable(m, 0 <= x85, start=489)
@variable(m, 0 <= x86, start=478)
@variable(m, 0 <= x87, start=467)
@variable(m, 0 <= x88, start=456)
@variable(m, 0 <= x89, start=445)
@variable(m, 0 <= x90, start=434)
@variable(m, 0 <= x91, start=423)
@variable(m, 0 <= x92, start=412)
@variable(m, 0 <= x93, start=401)
@variable(m, 0 <= x94, start=390)
@variable(m, 0 <= x95, start=379)
@variable(m, 0 <= x96, start=368)
@variable(m, 0 <= x97, start=357)
@variable(m, 0 <= x98, start=346)
@variable(m, 0 <= x99, start=335)
@variable(m, 0 <= x100, start=324)
@variable(m, x101, start=0)
@variable(m, x102, start=0)
@variable(m, x103, start=0)
@variable(m, x104, start=0)
@variable(m, x105, start=0)
@variable(m, x106, start=0)
@variable(m, x107, start=0)
@variable(m, x108, start=0)
@variable(m, x109, start=0)
@variable(m, x110, start=0)
@variable(m, x111, start=0)
@variable(m, x112, start=0)
@variable(m, x113, start=0)
@variable(m, x114, start=0)
@variable(m, x115, start=0)
@variable(m, x116, start=0)

@objective(m, Max, x101 + 0.952380952380952*x102 + 0.90702947845805*x103 + 0.863837598531476*x104
     + 0.822702474791882*x105 + 0.783526166468459*x106 + 0.746215396636627*x107 + 0.710681330130121*x108
     + 0.676839362028687*x109 + 0.644608916217797*x110 + 0.613913253540759*x111 + 0.584679289086437*x112
     + 0.556837418177559*x113 + 0.530321350645295*x114 + 0.505067952995519*x115 + 0.48101709809097*x116)

@constraint(m, 0.13*x1 - 0.87*x17 + x18 == 3.3)

@constraint(m, 0.13*x2 - 0.87*x18 + x19 == 3.3345)

@constraint(m, 0.13*x3 - 0.87*x19 + x20 == 3.3695175)

@constraint(m, 0.13*x4 - 0.87*x20 + x21 == 3.4050602625)

@constraint(m, 0.13*x5 - 0.87*x21 + x22 == 3.4411361664375)

@constraint(m, 0.13*x6 - 0.87*x22 + x23 == 3.47775320893406)

@constraint(m, 0.13*x7 - 0.87*x23 + x24 == 3.51491950706807)

@constraint(m, 0.13*x8 - 0.87*x24 + x25 == 3.55264329967409)

@constraint(m, 0.13*x9 - 0.87*x25 + x26 == 3.5909329491692)

@constraint(m, 0.13*x10 - 0.87*x26 + x27 == 3.62979694340674)

@constraint(m, 0.13*x11 - 0.87*x27 + x28 == 3.66924389755784)

@constraint(m, 0.13*x12 - 0.87*x28 + x29 == 3.70928255602121)

@constraint(m, 0.13*x13 - 0.87*x29 + x30 == 3.74992179436153)

@constraint(m, 0.13*x14 - 0.87*x30 + x31 == 3.79117062127695)

@constraint(m, 0.13*x15 - 0.87*x31 + x32 == 3.8330381805961)

@constraint(m, 0.13*x16 - 0.87*x32 + x33 == 3.87553375330505)

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x52))*(1.1 + 0.1*$(x1)) - 0.75*$(x34) + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x53))*(1.1 + 0.1*$(x2)) - 0.75*$(x35) + $(x36) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x54))*(1.1 + 0.1*$(x3)) - 0.75*$(x36) + $(x37) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x55))*(1.1 + 0.1*$(x4)) - 0.75*$(x37) + $(x38) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x56))*(1.1 + 0.1*$(x5)) - 0.75*$(x38) + $(x39) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x57))*(1.1 + 0.1*$(x6)) - 0.75*$(x39) + $(x40) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x58))*(1.1 + 0.1*$(x7)) - 0.75*$(x40) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x59))*(1.1 + 0.1*$(x8)) - 0.75*$(x41) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x60))*(1.1 + 0.1*$(x9)) - 0.75*$(x42) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x61))*(1.1 + 0.1*$(x10)) - 0.75*$(x43) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x62))*(1.1 + 0.1*$(x11)) - 0.75*$(x44) + $(x45) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x63))*(1.1 + 0.1*$(x12)) - 0.75*$(x45) + $(x46) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x64))*(1.1 + 0.1*$(x13)) - 0.75*$(x46) + $(x47) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x65))*(1.1 + 0.1*$(x14)) - 0.75*$(x47) + $(x48) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x66))*(1.1 + 0.1*$(x15)) - 0.75*$(x48) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-1.02^(-0.142857142857143*$(x67))*(1.1 + 0.1*$(x16)) - 0.75*$(x49) + $(x50) == 0))

@constraint(m,  - x35 - x51 + x52 == 0)

@constraint(m,  - x36 - x52 + x53 == 0)

@constraint(m,  - x37 - x53 + x54 == 0)

@constraint(m,  - x38 - x54 + x55 == 0)

@constraint(m,  - x39 - x55 + x56 == 0)

@constraint(m,  - x40 - x56 + x57 == 0)

@constraint(m,  - x41 - x57 + x58 == 0)

@constraint(m,  - x42 - x58 + x59 == 0)

@constraint(m,  - x43 - x59 + x60 == 0)

@constraint(m,  - x44 - x60 + x61 == 0)

@constraint(m,  - x45 - x61 + x62 == 0)

@constraint(m,  - x46 - x62 + x63 == 0)

@constraint(m,  - x47 - x63 + x64 == 0)

@constraint(m,  - x48 - x64 + x65 == 0)

@constraint(m,  - x49 - x65 + x66 == 0)

@constraint(m,  - x50 - x66 + x67 == 0)

@constraint(m,  - x18 + x35 + x68 == 0)

@constraint(m,  - x19 + x36 + x69 == 0)

@constraint(m,  - x20 + x37 + x70 == 0)

@constraint(m,  - x21 + x38 + x71 == 0)

@constraint(m,  - x22 + x39 + x72 == 0)

@constraint(m,  - x23 + x40 + x73 == 0)

@constraint(m,  - x24 + x41 + x74 == 0)

@constraint(m,  - x25 + x42 + x75 == 0)

@constraint(m,  - x26 + x43 + x76 == 0)

@constraint(m,  - x27 + x44 + x77 == 0)

@constraint(m,  - x28 + x45 + x78 == 0)

@constraint(m,  - x29 + x46 + x79 == 0)

@constraint(m,  - x30 + x47 + x80 == 0)

@constraint(m,  - x31 + x48 + x81 == 0)

@constraint(m,  - x32 + x49 + x82 == 0)

@constraint(m,  - x33 + x50 + x83 == 0)

@constraint(m, x68 - x84 + x85 == 0)

@constraint(m, x69 - x85 + x86 == 0)

@constraint(m, x70 - x86 + x87 == 0)

@constraint(m, x71 - x87 + x88 == 0)

@constraint(m, x72 - x88 + x89 == 0)

@constraint(m, x73 - x89 + x90 == 0)

@constraint(m, x74 - x90 + x91 == 0)

@constraint(m, x75 - x91 + x92 == 0)

@constraint(m, x76 - x92 + x93 == 0)

@constraint(m, x77 - x93 + x94 == 0)

@constraint(m, x78 - x94 + x95 == 0)

@constraint(m, x79 - x95 + x96 == 0)

@constraint(m, x80 - x96 + x97 == 0)

@constraint(m, x81 - x97 + x98 == 0)

@constraint(m, x82 - x98 + x99 == 0)

@constraint(m, x83 - x99 + x100 == 0)

JuMP.add_NL_constraint(m, :(-($(x1) - 250/$(x85))*$(x68) + $(x101) == 0))

JuMP.add_NL_constraint(m, :(-($(x2) - 250/$(x86))*$(x69) + $(x102) == 0))

JuMP.add_NL_constraint(m, :(-($(x3) - 250/$(x87))*$(x70) + $(x103) == 0))

JuMP.add_NL_constraint(m, :(-($(x4) - 250/$(x88))*$(x71) + $(x104) == 0))

JuMP.add_NL_constraint(m, :(-($(x5) - 250/$(x89))*$(x72) + $(x105) == 0))

JuMP.add_NL_constraint(m, :(-($(x6) - 250/$(x90))*$(x73) + $(x106) == 0))

JuMP.add_NL_constraint(m, :(-($(x7) - 250/$(x91))*$(x74) + $(x107) == 0))

JuMP.add_NL_constraint(m, :(-($(x8) - 250/$(x92))*$(x75) + $(x108) == 0))

JuMP.add_NL_constraint(m, :(-($(x9) - 250/$(x93))*$(x76) + $(x109) == 0))

JuMP.add_NL_constraint(m, :(-($(x10) - 250/$(x94))*$(x77) + $(x110) == 0))

JuMP.add_NL_constraint(m, :(-($(x11) - 250/$(x95))*$(x78) + $(x111) == 0))

JuMP.add_NL_constraint(m, :(-($(x12) - 250/$(x96))*$(x79) + $(x112) == 0))

JuMP.add_NL_constraint(m, :(-($(x13) - 250/$(x97))*$(x80) + $(x113) == 0))

JuMP.add_NL_constraint(m, :(-($(x14) - 250/$(x98))*$(x81) + $(x114) == 0))

JuMP.add_NL_constraint(m, :(-($(x15) - 250/$(x99))*$(x82) + $(x115) == 0))

JuMP.add_NL_constraint(m, :(-($(x16) - 250/$(x100))*$(x83) + $(x116) == 0))
