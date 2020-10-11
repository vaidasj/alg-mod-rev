#  QCP written by GAMS Convert at 10/11/20 14:05:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        191       55      136        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        170      170        0        0        0        0        0        0
#  FX      6        6        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1494      354     1140        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1000 <= x1 <= 1000, start=1000)
@variable(m, 1000 <= x2 <= 1000, start=1000)
@variable(m, 0 <= x3 <= 2000, start=1100.750712)
@variable(m, 0 <= x4 <= 2000, start=602.275808)
@variable(m, 0 <= x5 <= 2000, start=584.424234)
@variable(m, 0 <= x6 <= 2000, start=448.105734)
@variable(m, 0 <= x7 <= 2000, start=699.661008)
@variable(m, 0 <= x8 <= 2000, start=1712.540694)
@variable(m, 0 <= x9 <= 2000, start=134.227446)
@variable(m, 0 <= x10 <= 2000, start=1000.421338)
@variable(m, 0 <= x11 <= 2000, start=1996.235254)
@variable(m, 0 <= x12 <= 2000, start=1157.466756)
@variable(m, 0 <= x13 <= 2000, start=1982.266078)
@variable(m, 0 <= x14 <= 2000, start=1524.500934)
@variable(m, 0 <= x15 <= 2000, start=261.384966)
@variable(m, 0 <= x16 <= 2000, start=1279.437518)
@variable(m, 0 <= x17 <= 2000, start=319.035728)
@variable(m, 0 <= x18 <= 2000, start=500.161066)
@variable(m, 1500 <= x19 <= 1500, start=1500)
@variable(m, 2000 <= x20 <= 2000, start=2000)
@variable(m, 0 <= x21 <= 2000, start=719.400532)
@variable(m, 0 <= x22 <= 2000, start=702.882736)
@variable(m, 0 <= x23 <= 2000, start=262.98318)
@variable(m, 0 <= x24 <= 2000, start=300.203576)
@variable(m, 0 <= x25 <= 2000, start=1178.2273)
@variable(m, 0 <= x26 <= 2000, start=1661.785624)
@variable(m, 0 <= x27 <= 2000, start=461.631476)
@variable(m, 0 <= x28 <= 2000, start=1331.46892)
@variable(m, 0 <= x29 <= 2000, start=1551.715212)
@variable(m, 0 <= x30 <= 2000, start=607.316954)
@variable(m, 0 <= x31 <= 2000, start=220.984582)
@variable(m, 0 <= x32 <= 2000, start=1004.769732)
@variable(m, 0 <= x33 <= 2000, start=320.345524)
@variable(m, 0 <= x34 <= 2000, start=1744.924622)
@variable(m, 0 <= x35 <= 2000, start=530.22909)
@variable(m, 0 <= x36 <= 2000, start=571.628644)
@variable(m, 0 <= x37 <= 2000, start=1187.911844)
@variable(m, 0 <= x38 <= 2000, start=1445.438142)
@variable(m, 2000 <= x39 <= 2000, start=2000)
@variable(m, 1000 <= x40 <= 1000, start=1000)
@variable(m, 0.1 <= x41, start=100)
@variable(m, 0.1 <= x42, start=100)
@variable(m, 0.1 <= x43, start=100)
@variable(m, 0.1 <= x44, start=100)
@variable(m, 0.1 <= x45, start=100)
@variable(m, 0.1 <= x46, start=100)
@variable(m, 0.1 <= x47, start=100)
@variable(m, 0.1 <= x48, start=100)
@variable(m, 0.1 <= x49, start=100)
@variable(m, 0.1 <= x50, start=100)
@variable(m, 0.1 <= x51, start=100)
@variable(m, 0.1 <= x52, start=100)
@variable(m, 0.1 <= x53, start=100)
@variable(m, 0.1 <= x54, start=100)
@variable(m, 0.1 <= x55, start=100)
@variable(m, 0.1 <= x56, start=100)
@variable(m, 0.1 <= x57, start=100)
@variable(m, 0.1 <= x58, start=100)
@variable(m, 0.1 <= x59, start=100)
@variable(m, 0.1 <= x60, start=100)
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

@objective(m, Min, x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72 + x73 + x74 + x75 + x76 + x77
     + x78 + x79 + x80 + x81 + x82 + x83 + x84 + x85 + x86 + x87 + x88 + x89 + x90 + x91 + x92 + x93 + x94 + x95 + x96
     + x97 + x98 + x99 + x100 + x101 + x102 + x103 + x104 + x105 + x106 + x107 + x108 + x109 + x110 + x111 + x112 + x113
     + x114 + x115 + x116 + x117 + x118 + x119 + x120 + x121 + x122 + x123 + x124 + x125 + x126 + x127 + x128 + x129
     + x130 + x131 + x132 + x133 + x134 + x135 + x136 + x137 + x138 + x139 + x140 + x141 + x142 + x143 + x144 + x145
     + x146 + x147 + x148 + x149 + x150 + x151 + x152 + x153 + x154 + x155 + x156 + x157 + x158 + x159 + x160 + x161
     + x162 + x163 + x164 + x165 + x166 + x167 + x168 + 100*x169)

JuMP.add_NL_constraint(m, :(($(x1) - $(x3))^2 + ($(x2) - $(x4))^2 - ($(x41) + $(x42))^2 - $(x61) + $(x115) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x5))^2 + ($(x2) - $(x6))^2 - ($(x41) + $(x43))^2 - $(x62) + $(x116) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x7))^2 + ($(x2) - $(x8))^2 - ($(x41) + $(x44))^2 - $(x63) + $(x117) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x11))^2 + ($(x2) - $(x12))^2 - ($(x41) + $(x46))^2 - $(x64) + $(x118) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x13))^2 + ($(x2) - $(x14))^2 - ($(x41) + $(x47))^2 - $(x65) + $(x119) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x15))^2 + ($(x2) - $(x16))^2 - ($(x41) + $(x48))^2 - $(x66) + $(x120) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x19))^2 + ($(x2) - $(x20))^2 - ($(x41) + $(x50))^2 - $(x67) + $(x121) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x23))^2 + ($(x2) - $(x24))^2 - ($(x41) + $(x52))^2 - $(x68) + $(x122) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x39))^2 + ($(x2) - $(x40))^2 - ($(x41) + $(x60))^2 - $(x69) + $(x123) == 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x5))^2 + ($(x4) - $(x6))^2 - ($(x42) + $(x43))^2 - $(x70) + $(x124) == 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x7))^2 + ($(x4) - $(x8))^2 - ($(x42) + $(x44))^2 - $(x71) + $(x125) == 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x7))^2 + ($(x6) - $(x8))^2 - ($(x43) + $(x44))^2 - $(x72) + $(x126) == 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x9))^2 + ($(x6) - $(x10))^2 - ($(x43) + $(x45))^2 - $(x73) + $(x127) == 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x15))^2 + ($(x6) - $(x16))^2 - ($(x43) + $(x48))^2 - $(x74) + $(x128) == 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x9))^2 + ($(x8) - $(x10))^2 - ($(x44) + $(x45))^2 - $(x75) + $(x129) == 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x11))^2 + ($(x8) - $(x12))^2 - ($(x44) + $(x46))^2 - $(x76) + $(x130) == 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x11))^2 + ($(x10) - $(x12))^2 - ($(x45) + $(x46))^2 - $(x77) + $(x131) == 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x13))^2 + ($(x10) - $(x14))^2 - ($(x45) + $(x47))^2 - $(x78) + $(x132) == 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x15))^2 + ($(x10) - $(x16))^2 - ($(x45) + $(x48))^2 - $(x79) + $(x133) == 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x13))^2 + ($(x12) - $(x14))^2 - ($(x46) + $(x47))^2 - $(x80) + $(x134) == 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x15))^2 + ($(x14) - $(x16))^2 - ($(x47) + $(x48))^2 - $(x81) + $(x135) == 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x17))^2 + ($(x14) - $(x18))^2 - ($(x47) + $(x49))^2 - $(x82) + $(x136) == 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x21))^2 + ($(x14) - $(x22))^2 - ($(x47) + $(x51))^2 - $(x83) + $(x137) == 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x23))^2 + ($(x14) - $(x24))^2 - ($(x47) + $(x52))^2 - $(x84) + $(x138) == 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x17))^2 + ($(x16) - $(x18))^2 - ($(x48) + $(x49))^2 - $(x85) + $(x139) == 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x19))^2 + ($(x16) - $(x20))^2 - ($(x48) + $(x50))^2 - $(x86) + $(x140) == 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x19))^2 + ($(x18) - $(x20))^2 - ($(x49) + $(x50))^2 - $(x87) + $(x141) == 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x21))^2 + ($(x18) - $(x22))^2 - ($(x49) + $(x51))^2 - $(x88) + $(x142) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x21))^2 + ($(x20) - $(x22))^2 - ($(x50) + $(x51))^2 - $(x89) + $(x143) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x23))^2 + ($(x20) - $(x24))^2 - ($(x50) + $(x52))^2 - $(x90) + $(x144) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x25))^2 + ($(x20) - $(x26))^2 - ($(x50) + $(x53))^2 - $(x91) + $(x145) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x27))^2 + ($(x20) - $(x28))^2 - ($(x50) + $(x54))^2 - $(x92) + $(x146) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x29))^2 + ($(x20) - $(x30))^2 - ($(x50) + $(x55))^2 - $(x93) + $(x147) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x31))^2 + ($(x20) - $(x32))^2 - ($(x50) + $(x56))^2 - $(x94) + $(x148) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x37))^2 + ($(x20) - $(x38))^2 - ($(x50) + $(x59))^2 - $(x95) + $(x149) == 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x39))^2 + ($(x20) - $(x40))^2 - ($(x50) + $(x60))^2 - $(x96) + $(x150) == 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x23))^2 + ($(x22) - $(x24))^2 - ($(x51) + $(x52))^2 - $(x97) + $(x151) == 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x25))^2 + ($(x24) - $(x26))^2 - ($(x52) + $(x53))^2 - $(x98) + $(x152) == 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x27))^2 + ($(x24) - $(x28))^2 - ($(x52) + $(x54))^2 - $(x99) + $(x153) == 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x29))^2 + ($(x24) - $(x30))^2 - ($(x52) + $(x55))^2 - $(x100) + $(x154) == 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x33))^2 + ($(x24) - $(x34))^2 - ($(x52) + $(x57))^2 - $(x101) + $(x155) == 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x35))^2 + ($(x24) - $(x36))^2 - ($(x52) + $(x58))^2 - $(x102) + $(x156) == 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x39))^2 + ($(x24) - $(x40))^2 - ($(x52) + $(x60))^2 - $(x103) + $(x157) == 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x27))^2 + ($(x26) - $(x28))^2 - ($(x53) + $(x54))^2 - $(x104) + $(x158) == 0))

JuMP.add_NL_constraint(m, :(($(x27) - $(x29))^2 + ($(x28) - $(x30))^2 - ($(x54) + $(x55))^2 - $(x105) + $(x159) == 0))

JuMP.add_NL_constraint(m, :(($(x29) - $(x31))^2 + ($(x30) - $(x32))^2 - ($(x55) + $(x56))^2 - $(x106) + $(x160) == 0))

JuMP.add_NL_constraint(m, :(($(x29) - $(x33))^2 + ($(x30) - $(x34))^2 - ($(x55) + $(x57))^2 - $(x107) + $(x161) == 0))

JuMP.add_NL_constraint(m, :(($(x31) - $(x33))^2 + ($(x32) - $(x34))^2 - ($(x56) + $(x57))^2 - $(x108) + $(x162) == 0))

JuMP.add_NL_constraint(m, :(($(x31) - $(x35))^2 + ($(x32) - $(x36))^2 - ($(x56) + $(x58))^2 - $(x109) + $(x163) == 0))

JuMP.add_NL_constraint(m, :(($(x31) - $(x37))^2 + ($(x32) - $(x38))^2 - ($(x56) + $(x59))^2 - $(x110) + $(x164) == 0))

JuMP.add_NL_constraint(m, :(($(x33) - $(x35))^2 + ($(x34) - $(x36))^2 - ($(x57) + $(x58))^2 - $(x111) + $(x165) == 0))

JuMP.add_NL_constraint(m, :(($(x35) - $(x37))^2 + ($(x36) - $(x38))^2 - ($(x58) + $(x59))^2 - $(x112) + $(x166) == 0))

JuMP.add_NL_constraint(m, :(($(x35) - $(x39))^2 + ($(x36) - $(x40))^2 - ($(x58) + $(x60))^2 - $(x113) + $(x167) == 0))

JuMP.add_NL_constraint(m, :(($(x37) - $(x39))^2 + ($(x38) - $(x40))^2 - ($(x59) + $(x60))^2 - $(x114) + $(x168) == 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x9))^2 + ($(x2) - $(x10))^2 - ($(x41) + $(x45))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x17))^2 + ($(x2) - $(x18))^2 - ($(x41) + $(x49))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x21))^2 + ($(x2) - $(x22))^2 - ($(x41) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x25))^2 + ($(x2) - $(x26))^2 - ($(x41) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x27))^2 + ($(x2) - $(x28))^2 - ($(x41) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x29))^2 + ($(x2) - $(x30))^2 - ($(x41) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x31))^2 + ($(x2) - $(x32))^2 - ($(x41) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x33))^2 + ($(x2) - $(x34))^2 - ($(x41) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x35))^2 + ($(x2) - $(x36))^2 - ($(x41) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x1) - $(x37))^2 + ($(x2) - $(x38))^2 - ($(x41) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x9))^2 + ($(x4) - $(x10))^2 - ($(x42) + $(x45))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x11))^2 + ($(x4) - $(x12))^2 - ($(x42) + $(x46))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x13))^2 + ($(x4) - $(x14))^2 - ($(x42) + $(x47))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x15))^2 + ($(x4) - $(x16))^2 - ($(x42) + $(x48))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x17))^2 + ($(x4) - $(x18))^2 - ($(x42) + $(x49))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x19))^2 + ($(x4) - $(x20))^2 - ($(x42) + $(x50))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x21))^2 + ($(x4) - $(x22))^2 - ($(x42) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x23))^2 + ($(x4) - $(x24))^2 - ($(x42) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x25))^2 + ($(x4) - $(x26))^2 - ($(x42) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x27))^2 + ($(x4) - $(x28))^2 - ($(x42) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x29))^2 + ($(x4) - $(x30))^2 - ($(x42) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x31))^2 + ($(x4) - $(x32))^2 - ($(x42) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x33))^2 + ($(x4) - $(x34))^2 - ($(x42) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x35))^2 + ($(x4) - $(x36))^2 - ($(x42) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x37))^2 + ($(x4) - $(x38))^2 - ($(x42) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x39))^2 + ($(x4) - $(x40))^2 - ($(x42) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x11))^2 + ($(x6) - $(x12))^2 - ($(x43) + $(x46))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x13))^2 + ($(x6) - $(x14))^2 - ($(x43) + $(x47))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x17))^2 + ($(x6) - $(x18))^2 - ($(x43) + $(x49))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x19))^2 + ($(x6) - $(x20))^2 - ($(x43) + $(x50))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x21))^2 + ($(x6) - $(x22))^2 - ($(x43) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x23))^2 + ($(x6) - $(x24))^2 - ($(x43) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x25))^2 + ($(x6) - $(x26))^2 - ($(x43) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x27))^2 + ($(x6) - $(x28))^2 - ($(x43) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x29))^2 + ($(x6) - $(x30))^2 - ($(x43) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x31))^2 + ($(x6) - $(x32))^2 - ($(x43) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x33))^2 + ($(x6) - $(x34))^2 - ($(x43) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x35))^2 + ($(x6) - $(x36))^2 - ($(x43) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x37))^2 + ($(x6) - $(x38))^2 - ($(x43) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x39))^2 + ($(x6) - $(x40))^2 - ($(x43) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x13))^2 + ($(x8) - $(x14))^2 - ($(x44) + $(x47))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x15))^2 + ($(x8) - $(x16))^2 - ($(x44) + $(x48))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x17))^2 + ($(x8) - $(x18))^2 - ($(x44) + $(x49))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x19))^2 + ($(x8) - $(x20))^2 - ($(x44) + $(x50))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x21))^2 + ($(x8) - $(x22))^2 - ($(x44) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x23))^2 + ($(x8) - $(x24))^2 - ($(x44) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x25))^2 + ($(x8) - $(x26))^2 - ($(x44) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x27))^2 + ($(x8) - $(x28))^2 - ($(x44) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x29))^2 + ($(x8) - $(x30))^2 - ($(x44) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x31))^2 + ($(x8) - $(x32))^2 - ($(x44) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x33))^2 + ($(x8) - $(x34))^2 - ($(x44) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x35))^2 + ($(x8) - $(x36))^2 - ($(x44) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x37))^2 + ($(x8) - $(x38))^2 - ($(x44) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x7) - $(x39))^2 + ($(x8) - $(x40))^2 - ($(x44) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x17))^2 + ($(x10) - $(x18))^2 - ($(x45) + $(x49))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x19))^2 + ($(x10) - $(x20))^2 - ($(x45) + $(x50))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x21))^2 + ($(x10) - $(x22))^2 - ($(x45) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x23))^2 + ($(x10) - $(x24))^2 - ($(x45) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x25))^2 + ($(x10) - $(x26))^2 - ($(x45) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x27))^2 + ($(x10) - $(x28))^2 - ($(x45) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x29))^2 + ($(x10) - $(x30))^2 - ($(x45) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x31))^2 + ($(x10) - $(x32))^2 - ($(x45) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x33))^2 + ($(x10) - $(x34))^2 - ($(x45) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x35))^2 + ($(x10) - $(x36))^2 - ($(x45) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x37))^2 + ($(x10) - $(x38))^2 - ($(x45) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x9) - $(x39))^2 + ($(x10) - $(x40))^2 - ($(x45) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x15))^2 + ($(x12) - $(x16))^2 - ($(x46) + $(x48))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x17))^2 + ($(x12) - $(x18))^2 - ($(x46) + $(x49))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x19))^2 + ($(x12) - $(x20))^2 - ($(x46) + $(x50))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x21))^2 + ($(x12) - $(x22))^2 - ($(x46) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x23))^2 + ($(x12) - $(x24))^2 - ($(x46) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x25))^2 + ($(x12) - $(x26))^2 - ($(x46) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x27))^2 + ($(x12) - $(x28))^2 - ($(x46) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x29))^2 + ($(x12) - $(x30))^2 - ($(x46) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x31))^2 + ($(x12) - $(x32))^2 - ($(x46) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x33))^2 + ($(x12) - $(x34))^2 - ($(x46) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x35))^2 + ($(x12) - $(x36))^2 - ($(x46) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x37))^2 + ($(x12) - $(x38))^2 - ($(x46) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x11) - $(x39))^2 + ($(x12) - $(x40))^2 - ($(x46) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x19))^2 + ($(x14) - $(x20))^2 - ($(x47) + $(x50))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x25))^2 + ($(x14) - $(x26))^2 - ($(x47) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x27))^2 + ($(x14) - $(x28))^2 - ($(x47) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x29))^2 + ($(x14) - $(x30))^2 - ($(x47) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x31))^2 + ($(x14) - $(x32))^2 - ($(x47) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x33))^2 + ($(x14) - $(x34))^2 - ($(x47) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x35))^2 + ($(x14) - $(x36))^2 - ($(x47) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x37))^2 + ($(x14) - $(x38))^2 - ($(x47) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x13) - $(x39))^2 + ($(x14) - $(x40))^2 - ($(x47) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x21))^2 + ($(x16) - $(x22))^2 - ($(x48) + $(x51))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x23))^2 + ($(x16) - $(x24))^2 - ($(x48) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x25))^2 + ($(x16) - $(x26))^2 - ($(x48) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x27))^2 + ($(x16) - $(x28))^2 - ($(x48) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x29))^2 + ($(x16) - $(x30))^2 - ($(x48) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x31))^2 + ($(x16) - $(x32))^2 - ($(x48) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x33))^2 + ($(x16) - $(x34))^2 - ($(x48) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x35))^2 + ($(x16) - $(x36))^2 - ($(x48) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x37))^2 + ($(x16) - $(x38))^2 - ($(x48) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x15) - $(x39))^2 + ($(x16) - $(x40))^2 - ($(x48) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x23))^2 + ($(x18) - $(x24))^2 - ($(x49) + $(x52))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x25))^2 + ($(x18) - $(x26))^2 - ($(x49) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x27))^2 + ($(x18) - $(x28))^2 - ($(x49) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x29))^2 + ($(x18) - $(x30))^2 - ($(x49) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x31))^2 + ($(x18) - $(x32))^2 - ($(x49) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x33))^2 + ($(x18) - $(x34))^2 - ($(x49) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x35))^2 + ($(x18) - $(x36))^2 - ($(x49) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x37))^2 + ($(x18) - $(x38))^2 - ($(x49) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x17) - $(x39))^2 + ($(x18) - $(x40))^2 - ($(x49) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x33))^2 + ($(x20) - $(x34))^2 - ($(x50) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x19) - $(x35))^2 + ($(x20) - $(x36))^2 - ($(x50) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x25))^2 + ($(x22) - $(x26))^2 - ($(x51) + $(x53))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x27))^2 + ($(x22) - $(x28))^2 - ($(x51) + $(x54))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x29))^2 + ($(x22) - $(x30))^2 - ($(x51) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x31))^2 + ($(x22) - $(x32))^2 - ($(x51) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x33))^2 + ($(x22) - $(x34))^2 - ($(x51) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x35))^2 + ($(x22) - $(x36))^2 - ($(x51) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x37))^2 + ($(x22) - $(x38))^2 - ($(x51) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x21) - $(x39))^2 + ($(x22) - $(x40))^2 - ($(x51) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x31))^2 + ($(x24) - $(x32))^2 - ($(x52) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x23) - $(x37))^2 + ($(x24) - $(x38))^2 - ($(x52) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x29))^2 + ($(x26) - $(x30))^2 - ($(x53) + $(x55))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x31))^2 + ($(x26) - $(x32))^2 - ($(x53) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x33))^2 + ($(x26) - $(x34))^2 - ($(x53) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x35))^2 + ($(x26) - $(x36))^2 - ($(x53) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x37))^2 + ($(x26) - $(x38))^2 - ($(x53) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x25) - $(x39))^2 + ($(x26) - $(x40))^2 - ($(x53) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x27) - $(x31))^2 + ($(x28) - $(x32))^2 - ($(x54) + $(x56))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x27) - $(x33))^2 + ($(x28) - $(x34))^2 - ($(x54) + $(x57))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x27) - $(x35))^2 + ($(x28) - $(x36))^2 - ($(x54) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x27) - $(x37))^2 + ($(x28) - $(x38))^2 - ($(x54) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x27) - $(x39))^2 + ($(x28) - $(x40))^2 - ($(x54) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x29) - $(x35))^2 + ($(x30) - $(x36))^2 - ($(x55) + $(x58))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x29) - $(x37))^2 + ($(x30) - $(x38))^2 - ($(x55) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x29) - $(x39))^2 + ($(x30) - $(x40))^2 - ($(x55) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x31) - $(x39))^2 + ($(x32) - $(x40))^2 - ($(x56) + $(x60))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x33) - $(x37))^2 + ($(x34) - $(x38))^2 - ($(x57) + $(x59))^2 + $(x169) >= 0))

JuMP.add_NL_constraint(m, :(($(x33) - $(x39))^2 + ($(x34) - $(x40))^2 - ($(x57) + $(x60))^2 + $(x169) >= 0))
