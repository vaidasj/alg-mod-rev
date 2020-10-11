#  NLP written by GAMS Convert at 10/11/20 12:52:13
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        107      107        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        107      107        0        0        0        0        0        0
#  FX      3        3        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        385      181      204        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1E-5 <= x1, start=35)
@variable(m, 1E-5 <= x2, start=48)
@variable(m, 1E-5 <= x3, start=55)
@variable(m, 1E-5 <= x4, start=61)
@variable(m, 1E-5 <= x5, start=20)
@variable(m, 1E-5 <= x6, start=33)
@variable(m, 1E-5 <= x7, start=30)
@variable(m, 1E-5 <= x8, start=30)
@variable(m, 1E-5 <= x9, start=15)
@variable(m, 1E-5 <= x10, start=15)
@variable(m, 1E-5 <= x11, start=25)
@variable(m, 1E-5 <= x12, start=31)
@variable(m, 1E-5 <= x13, start=21)
@variable(m, 1E-5 <= x14, start=40)
@variable(m, 1E-5 <= x15, start=8)
@variable(m, 1E-5 <= x16, start=1)
@variable(m, 1E-5 <= x17, start=17)
@variable(m, 1E-5 <= x18, start=17)
@variable(m, 1E-5 <= x19, start=9)
@variable(m, 1E-5 <= x20, start=29)
@variable(m, 1E-5 <= x21, start=73)
@variable(m, 1E-5 <= x22, start=105)
@variable(m, 1E-5 <= x23, start=72)
@variable(m, 1E-5 <= x24, start=91)
@variable(m, 1E-5 <= x25, start=20)
@variable(m, 1E-5 <= x26, start=30)
@variable(m, 1E-5 <= x27, start=30)
@variable(m, 1E-5 <= x28, start=30)
@variable(m, 1E-5 <= x29, start=19)
@variable(m, 1E-5 <= x30, start=20)
@variable(m, 1E-5 <= x31, start=14)
@variable(m, 1E-5 <= x32, start=14)
@variable(m, 1E-5 <= x33, start=16)
@variable(m, 1E-5 <= x34, start=20)
@variable(m, 1E-5 <= x35, start=15)
@variable(m, 1E-5 <= x36, start=15)
@variable(m, 1E-5 <= x37, start=8)
@variable(m, 1E-5 <= x38, start=13)
@variable(m, 1E-5 <= x39, start=4)
@variable(m, 1E-5 <= x40, start=11)
@variable(m, 1E-5 <= x41, start=13)
@variable(m, 1E-5 <= x42, start=8)
@variable(m, 1E-5 <= x43, start=11)
@variable(m, 1E-5 <= x44, start=4)
@variable(m, 1E-5 <= x45, start=84)
@variable(m, 1E-5 <= x46, start=111)
@variable(m, 1E-5 <= x47, start=85)
@variable(m, 1E-5 <= x48, start=105)
@variable(m, 1E-5 <= x49, start=70)
@variable(m, 1E-5 <= x50, start=102)
@variable(m, 1E-5 <= x51, start=72)
@variable(m, 1E-5 <= x52, start=100)
@variable(m, 1E-5 <= x53, start=1)
@variable(m, 1E-5 <= x54, start=1)
@variable(m, 1 <= x55 <= 1, start=1)
@variable(m, 1 <= x56 <= 1, start=1)
@variable(m, 1E-5 <= x57, start=1)
@variable(m, 1E-5 <= x58, start=1)
@variable(m, 1E-5 <= x59, start=1)
@variable(m, 1E-5 <= x60, start=1)
@variable(m, 1E-5 <= x61, start=1)
@variable(m, 1E-5 <= x62, start=1)
@variable(m, 1E-5 <= x63, start=1)
@variable(m, 1E-5 <= x64, start=1)
@variable(m, 1E-5 <= x65, start=1)
@variable(m, 1E-5 <= x66, start=1)
@variable(m, 1E-5 <= x67, start=1)
@variable(m, 1E-5 <= x68, start=1)
@variable(m, 1E-5 <= x69, start=1)
@variable(m, 1E-5 <= x70, start=1)
@variable(m, 1E-5 <= x71, start=1)
@variable(m, 1E-5 <= x72, start=1)
@variable(m, 1E-5 <= x73, start=1)
@variable(m, 1E-5 <= x74, start=1)
@variable(m, 1E-5 <= x75, start=1)
@variable(m, 1E-5 <= x76, start=1)
@variable(m, 1E-5 <= x77, start=1)
@variable(m, 1E-5 <= x78, start=1)
@variable(m, 1E-5 <= x79, start=1)
@variable(m, 1E-5 <= x80, start=1)
@variable(m, 1E-5 <= x81, start=1)
@variable(m, 1 <= x82 <= 1, start=1)
@variable(m, 1E-5 <= x83, start=1)
@variable(m, 1E-5 <= x84, start=1)
@variable(m, 1E-5 <= x85, start=1)
@variable(m, 1E-5 <= x86, start=1)
@variable(m, 1E-5 <= x87, start=1)
@variable(m, 1E-5 <= x88, start=1)
@variable(m, 1E-5 <= x89, start=1)
@variable(m, 1E-5 <= x90, start=1)
@variable(m, 1E-5 <= x91, start=17)
@variable(m, 1E-5 <= x92, start=20)
@variable(m, 1E-5 <= x93, start=2)
@variable(m, 1E-5 <= x94, start=27)
@variable(m, 1E-5 <= x95, start=23)
@variable(m, 1E-5 <= x96, start=29)
@variable(m, 0 <= x97, start=5)
@variable(m, 0 <= x98, start=10)
@variable(m, 0 <= x99, start=4)
@variable(m, 0 <= x100, start=20)
@variable(m, 0 <= x101, start=1)
@variable(m, 0 <= x102, start=1)
@variable(m, 0 <= x103, start=2)
@variable(m, 0 <= x104, start=1)
@variable(m, x105, start=0)
@variable(m, x106, start=0)

@objective(m, Max, x105 + x106)

JuMP.add_NL_constraint(m, :(-1.97962633005252*$(x5)^0.571428571428571*$(x9)^0.428571428571429 + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-1.86094863133081*$(x6)^0.6875*$(x10)^0.3125 + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-1.99174121480513*$(x7)^0.545454545454545*$(x11)^0.454545454545455 + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-1.99973126105714*$(x8)^0.491803278688525*$(x12)^0.508196721311475 + $(x4) == 0))

@constraint(m, x13 - 0.287671232876712*x21 == 0)

@constraint(m, x14 - 0.380952380952381*x22 == 0)

@constraint(m, x15 - 0.111111111111111*x23 == 0)

@constraint(m, x16 - 0.010989010989011*x24 == 0)

@constraint(m, x17 - 0.232876712328767*x21 == 0)

@constraint(m, x18 - 0.161904761904762*x22 == 0)

@constraint(m, x19 - 0.125*x23 == 0)

@constraint(m, x20 - 0.318681318681319*x24 == 0)

@constraint(m, x1 - 0.479452054794521*x21 == 0)

@constraint(m, x2 - 0.457142857142857*x22 == 0)

@constraint(m, x3 - 0.763888888888889*x23 == 0)

@constraint(m, x4 - 0.67032967032967*x24 == 0)

JuMP.add_NL_constraint(m, :(-0.571428571428571*$(x57)*$(x1)/$(x53) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.6875*$(x58)*$(x2)/$(x54) + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-0.545454545454545*$(x59)*$(x3)/$(x53) + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-0.491803278688525*$(x60)*$(x4)/$(x54) + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-0.428571428571429*$(x57)*$(x1)/$(x55) + $(x9) == 0))

JuMP.add_NL_constraint(m, :(-0.3125*$(x58)*$(x2)/$(x56) + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-0.454545454545455*$(x59)*$(x3)/$(x55) + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-0.508196721311475*$(x60)*$(x4)/$(x56) + $(x12) == 0))

@constraint(m,  - 0.479452054794521*x57 + x61 - 0.287671232876712*x65 - 0.232876712328767*x67 == 0)

@constraint(m,  - 0.457142857142857*x58 + x62 - 0.380952380952381*x66 - 0.161904761904762*x68 == 0)

@constraint(m,  - 0.763888888888889*x59 + x63 - 0.111111111111111*x65 - 0.125*x67 == 0)

@constraint(m,  - 0.67032967032967*x60 + x64 - 0.010989010989011*x66 - 0.318681318681319*x68 == 0)

@constraint(m,  - 12.7777777777778*x53 - 10.2222222222222*x55 + x95 == 0)

@constraint(m,  - 16.7614678899083*x54 - 12.2385321100917*x56 + x96 == 0)

JuMP.add_NL_constraint(m, :(-0.0684931506849315*$(x61)*$(x21) + $(x97) == 0))

JuMP.add_NL_constraint(m, :(-0.0952380952380952*$(x62)*$(x22) + $(x98) == 0))

JuMP.add_NL_constraint(m, :(-0.0555555555555556*$(x63)*$(x23) + $(x99) == 0))

JuMP.add_NL_constraint(m, :(-0.21978021978022*$(x64)*$(x24) + $(x100) == 0))

@constraint(m, x101 == 0)

@constraint(m, x102 == 0)

@constraint(m, x103 == 0)

@constraint(m, x104 == 0)

JuMP.add_NL_constraint(m, :(-(0.575757575757576*$(x95) - 0.575757575757576*$(x93) + 0.575757575757576*$(x97) + 
    0.575757575757576*$(x99) + 0.575757575757576*$(x101) + 0.575757575757576*$(x103))/$(x65) + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-(0.588235294117647*$(x96) - 0.588235294117647*$(x94) + 0.588235294117647*$(x98) + 
    0.588235294117647*$(x100) + 0.588235294117647*$(x102) + 0.588235294117647*$(x104))/$(x66) + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-(0.424242424242424*$(x95) - 0.424242424242424*$(x93) + 0.424242424242424*$(x97) + 
    0.424242424242424*$(x99) + 0.424242424242424*$(x101) + 0.424242424242424*$(x103))/$(x67) + $(x31) == 0))

JuMP.add_NL_constraint(m, :(-(0.411764705882353*$(x96) - 0.411764705882353*$(x94) + 0.411764705882353*$(x98) + 
    0.411764705882353*$(x100) + 0.411764705882353*$(x102) + 0.411764705882353*$(x104))/$(x68) + $(x32) == 0))

JuMP.add_NL_constraint(m, :(-(6.19354838709677*$(x81) + 0.516129032258065*$(x91) + 0.516129032258065*$(x93))/$(x65)
     + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-(0.571428571428571*$(x92) - 6.85714285714286*$(x82) + 0.571428571428571*$(x94))/$(x66)
     + $(x34) == 0))

JuMP.add_NL_constraint(m, :(-(5.80645161290323*$(x81) + 0.483870967741935*$(x91) + 0.483870967741935*$(x93))/$(x67)
     + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-(0.428571428571429*$(x92) - 5.14285714285714*$(x82) + 0.428571428571429*$(x94))/$(x68)
     + $(x36) == 0))

@constraint(m,  - 9.44444444444444*x53 - 7.55555555555556*x55 + x91 == 0)

@constraint(m,  - 11.5596330275229*x54 - 8.44036697247707*x56 + x92 == 0)

@constraint(m, x93 - 0.0571428571428571*x95 - 0.0571428571428571*x97 - 0.0571428571428571*x99 - 0.0571428571428571*x101
     - 0.0571428571428571*x103 == 0)

@constraint(m, x94 - 0.442622950819672*x96 - 0.442622950819672*x98 - 0.442622950819672*x100 - 0.442622950819672*x102
     - 0.442622950819672*x104 == 0)

JuMP.add_NL_constraint(m, :(-(20*$(x53) + 16*$(x55) - 0.4*$(x91) - 0.4*$(x95))/$(x65) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-(31.5*$(x54) + 23*$(x56) - 0.5*$(x92) - 0.5*$(x96))/$(x66) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-(30*$(x53) + 24*$(x55) - 0.6*$(x91) - 0.6*$(x95))/$(x67) + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-(31.5*$(x54) + 23*$(x56) - 0.5*$(x92) - 0.5*$(x96))/$(x68) + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-$(x81)*$(x83) + $(x69) == 0))

JuMP.add_NL_constraint(m, :(-$(x82)*$(x84) + $(x70) == 0))

JuMP.add_NL_constraint(m, :(-$(x81)*$(x85) + $(x71) == 0))

JuMP.add_NL_constraint(m, :(-$(x82)*$(x86) + $(x72) == 0))

JuMP.add_NL_constraint(m, :(-$(x81)*$(x87) + $(x73) == 0))

JuMP.add_NL_constraint(m, :(-$(x82)*$(x88) + $(x74) == 0))

JuMP.add_NL_constraint(m, :(-$(x81)*$(x89) + $(x75) == 0))

JuMP.add_NL_constraint(m, :(-$(x82)*$(x90) + $(x76) == 0))

JuMP.add_NL_constraint(m, :($(x83)*$(x37) + $(x85)*$(x39) - ($(x87)*$(x41) + $(x89)*$(x43)) == -12))

JuMP.add_NL_constraint(m, :($(x84)*$(x38) + $(x86)*$(x40) - ($(x88)*$(x42) + $(x90)*$(x44)) == 12))

JuMP.add_NL_constraint(m, :(-1.78631298097427*(0.316984436431308*$(x41)^0.5 + 0.683015563568692*$(x49)^0.5)^2 + $(x45)
     == 0))

JuMP.add_NL_constraint(m, :(-1.58916987258455*(0.239580167928629*$(x42)^0.5 + 0.760419832071371*$(x50)^0.5)^2 + $(x46)
     == 0))

JuMP.add_NL_constraint(m, :(-1.8103795278422*(0.315975006847877*$(x43)^0.5 + 0.684024993152123*$(x51)^0.5)^2 + $(x47)
     == 0))

JuMP.add_NL_constraint(m, :(-1.48809523809524*(0.2*$(x44)^0.5 + 0.8*$(x52)^0.5)^2 + $(x48) == 0))

JuMP.add_NL_constraint(m, :(-(0.423659272868161*$(x65)/$(x73))^2*$(x45) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(-(0.302020224846311*$(x66)/$(x74))^2*$(x46) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(-(0.425145461109024*$(x67)/$(x75))^2*$(x47) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(-(0.243975018237133*$(x68)/$(x76))^2*$(x48) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(-(0.912870929175277*$(x65)/$(x77))^2*$(x45) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-(0.958602586538821*$(x66)/$(x78))^2*$(x46) + $(x50) == 0))

JuMP.add_NL_constraint(m, :(-(0.920357986616845*$(x67)/$(x79))^2*$(x47) + $(x51) == 0))

JuMP.add_NL_constraint(m, :(-(0.975900072948533*$(x68)/$(x80))^2*$(x48) + $(x52) == 0))

JuMP.add_NL_constraint(m, :(-2.42780549270868*(0.747349691412928*$(x37)^1.5 + 0.252650308587072*$(x49)^1.5)^
    0.666666666666667 + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-2.31453336100321*(0.736918169527346*$(x38)^1.5 + 0.263081830472654*$(x50)^1.5)^
    0.666666666666667 + $(x22) == 0))

JuMP.add_NL_constraint(m, :(-2.91102542459458*(0.809256430169454*$(x39)^1.5 + 0.190743569830546*$(x51)^1.5)^
    0.666666666666667 + $(x23) == 0))

JuMP.add_NL_constraint(m, :(-2.14432834749773*(0.750941034791528*$(x40)^1.5 + 0.249058965208472*$(x52)^1.5)^
    0.666666666666667 + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-(1.02120377146637*$(x61)/$(x77))^(-2)*$(x21) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-(1.01459931239178*$(x62)/$(x78))^(-2)*$(x22) + $(x50) == 0))

JuMP.add_NL_constraint(m, :(-(1*$(x63)/$(x79))^(-2)*$(x23) + $(x51) == 0))

JuMP.add_NL_constraint(m, :(-(0.953939201416945*$(x64)/$(x80))^(-2)*$(x24) + $(x52) == 0))

JuMP.add_NL_constraint(m, :(-(3.02076149339864*$(x61)/$(x69))^(-2)*$(x21) + $(x37) == 0))

JuMP.add_NL_constraint(m, :(-(2.84199280029402*$(x62)/$(x70))^(-2)*$(x22) + $(x38) == 0))

JuMP.add_NL_constraint(m, :(-(4.24264068711929*$(x63)/$(x71))^(-2)*$(x23) + $(x39) == 0))

JuMP.add_NL_constraint(m, :(-(2.87623491264661*$(x64)/$(x72))^(-2)*$(x24) + $(x40) == 0))

@constraint(m, x83 - x88 == 0)

@constraint(m, x84 - x87 == 0)

@constraint(m, x85 - x90 == 0)

@constraint(m, x86 - x89 == 0)

@constraint(m, x37 - x42 == 0)

@constraint(m, x38 - x41 == 0)

@constraint(m, x39 - x44 == 0)

@constraint(m, x40 - x43 == 0)

@constraint(m,  - x13 - x15 - x25 - x29 - x33 + x45 == 0)

@constraint(m,  - x14 - x16 - x26 - x30 - x34 + x46 == 0)

@constraint(m,  - x17 - x19 - x27 - x31 - x35 + x47 == 0)

@constraint(m,  - x18 - x20 - x28 - x32 - x36 + x48 == 0)

@constraint(m,  - x5 - x7 == -50)

@constraint(m,  - x6 - x8 == -63)

@constraint(m,  - x9 - x11 == -40)

@constraint(m,  - x10 - x12 == -46)

JuMP.add_NL_constraint(m, :(-$(x25)^0.4*$(x27)^0.6 + $(x105) == 0))

JuMP.add_NL_constraint(m, :(-$(x26)^0.5*$(x28)^0.5 + $(x106) == 0))
