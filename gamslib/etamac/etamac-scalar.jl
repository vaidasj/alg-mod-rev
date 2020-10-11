#  NLP written by GAMS Convert at 10/11/20 12:22:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         71       70        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         98       98        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        226      191       35        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 12.32657617084 <= x1 <= 12.32657617084, start=12.32657617084)
@variable(m, 10.9 <= x2, start=14.6486885348509)
@variable(m, 10.9 <= x3, start=16.9818448409483)
@variable(m, 10.9 <= x4, start=19.6866124578966)
@variable(m, 10.9 <= x5, start=22.8221794332309)
@variable(m, 10.9 <= x6, start=26.4571609359673)
@variable(m, 10.9 <= x7, start=30.6711007526496)
@variable(m, 10.9 <= x8, start=35.5562119327899)
@variable(m, 10.9 <= x9, start=41.2193946739997)
@variable(m, 1.0317041301 <= x10, start=1.0317041301)
@variable(m, 1.0317041301 <= x11, start=1.0317041301)
@variable(m, 1.0317041301 <= x12, start=1.0317041301)
@variable(m, 1.0317041301 <= x13, start=1.0317041301)
@variable(m, 1.0317041301 <= x14, start=1.0317041301)
@variable(m, 1.0317041301 <= x15, start=1.0317041301)
@variable(m, 1.0317041301 <= x16, start=1.0317041301)
@variable(m, 1.0317041301 <= x17, start=1.0317041301)
@variable(m, 4.25 <= x18, start=4.926914815775)
@variable(m, 4.25 <= x19, start=5.71164461221252)
@variable(m, 4.25 <= x20, start=6.62136152055325)
@variable(m, 4.25 <= x21, start=7.67597274734501)
@variable(m, 4.25 <= x22, start=8.89855620103042)
@variable(m, 4.25 <= x23, start=10.3158655025561)
@variable(m, 4.25 <= x24, start=11.958915431079)
@variable(m, 4.25 <= x25, start=13.8636606159961)
@variable(m, 4.25 <= x26, start=16.0717823270182)
@variable(m, 0.508311836408595 <= x27, start=0.508311836408595)
@variable(m, 0.589272733608307 <= x28, start=0.589272733608307)
@variable(m, 0.683128602764001 <= x29, start=0.683128602764001)
@variable(m, 0.79193327859709 <= x30, start=0.79193327859709)
@variable(m, 0.918067718453005 <= x31, start=0.918067718453005)
@variable(m, 1.06429210445432 <= x32, start=1.06429210445432)
@variable(m, 1.23380624417608 <= x33, start=1.23380624417608)
@variable(m, 1.43031959158279 <= x34, start=1.43031959158279)
@variable(m, 2.5 <= x35, start=2.89818518575)
@variable(m, 2.5 <= x36, start=3.35979094836031)
@variable(m, 2.5 <= x37, start=3.89491854150191)
@variable(m, 2.5 <= x38, start=4.51527808667354)
@variable(m, 2.5 <= x39, start=5.23444482413554)
@variable(m, 2.5 <= x40, start=6.06815617797415)
@variable(m, 2.5 <= x41, start=7.03465613592881)
@variable(m, 2.5 <= x42, start=8.15509447999769)
@variable(m, 2.5 <= x43, start=9.45398960412836)
@variable(m, 0.257926032525 <= x44, start=0.257926032525)
@variable(m, 0.299006962593291 <= x45, start=0.299006962593291)
@variable(m, 0.346631019769593 <= x46, start=0.346631019769593)
@variable(m, 0.401840354567059 <= x47, start=0.401840354567059)
@variable(m, 0.465843105057112 <= x48, start=0.465843105057112)
@variable(m, 0.540039834384121 <= x49, start=0.540039834384121)
@variable(m, 0.626054179090777 <= x50, start=0.626054179090777)
@variable(m, 0.725768378927107 <= x51, start=0.725768378927107)
@variable(m, 0.841364465636933 <= x52, start=0.841364465636933)
@variable(m, 50 <= x53, start=57.963703715)
@variable(m, 50 <= x54, start=67.1958189672061)
@variable(m, 50 <= x55, start=77.8983708300382)
@variable(m, 50 <= x56, start=90.3055617334707)
@variable(m, 50 <= x57, start=104.688896482711)
@variable(m, 50 <= x58, start=121.363123559483)
@variable(m, 50 <= x59, start=140.693122718576)
@variable(m, 50 <= x60, start=163.101889599954)
@variable(m, 50 <= x61, start=189.079792082567)
@variable(m, 5.1585206505 <= x62, start=5.1585206505)
@variable(m, 5.98013925186582 <= x63, start=5.98013925186582)
@variable(m, 6.93262039539185 <= x64, start=6.93262039539185)
@variable(m, 8.03680709134119 <= x65, start=8.03680709134119)
@variable(m, 9.31686210114223 <= x66, start=9.31686210114223)
@variable(m, 10.8007966876824 <= x67, start=10.8007966876824)
@variable(m, 12.5210835818155 <= x68, start=12.5210835818155)
@variable(m, 14.5153675785421 <= x69, start=14.5153675785421)
@variable(m, 16.8272893127387 <= x70, start=16.8272893127387)
@variable(m, 3.2 <= x71, start=3.70967703776)
@variable(m, 3.2 <= x72, start=4.30053241390119)
@variable(m, 3.2 <= x73, start=4.98549573312245)
@variable(m, 3.2 <= x74, start=5.77955595094213)
@variable(m, 3.2 <= x75, start=6.70008937489349)
@variable(m, 3.2 <= x76, start=7.76723990780692)
@variable(m, 3.2 <= x77, start=9.00435985398888)
@variable(m, 3.2 <= x78, start=10.438520934397)
@variable(m, 3.2 <= x79, start=12.1011066932843)
@variable(m, 0.7 <= x80, start=0.81149185201)
@variable(m, 0.7 <= x81, start=0.940741465540885)
@variable(m, 0.7 <= x82, start=1.09057719162054)
@variable(m, 0.7 <= x83, start=1.26427786426859)
@variable(m, 0.7 <= x84, start=1.46564455075795)
@variable(m, 0.7 <= x85, start=1.69908372983276)
@variable(m, 0.7 <= x86, start=1.96970371806007)
@variable(m, 0.7 <= x87, start=2.28342645439935)
@variable(m, 0.7 <= x88, start=2.64711708915594)
@variable(m, x89, start=0)
@variable(m, x90, start=0)
@variable(m, x91, start=0)
@variable(m, x92, start=0)
@variable(m, x93, start=0)
@variable(m, x94, start=0)
@variable(m, x95, start=0)
@variable(m, x96, start=0)
@variable(m, x97, start=0)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(0.8153726976*log($(x71)) + 0.664832635991501*log($(x72)) + 0.542086379860909*
    log($(x73)) + 0.442002433879407*log($(x74)) + 0.360396716858018*log($(x75)) + 0.293857643230706*log($(x76)) + 
    0.239603499271399*log($(x77)) + 0.19536615155532*log($(x78)) + 3.98240565033479*log($(x79))))

@constraint(m, x10 - 4.91287681*x80 == 0)

@constraint(m, x11 - 4.91287681*x81 == 0)

@constraint(m, x12 - 4.91287681*x82 == 0)

@constraint(m, x13 - 4.91287681*x83 == 0)

@constraint(m, x14 - 4.91287681*x84 == 0)

@constraint(m, x15 - 4.91287681*x85 == 0)

@constraint(m, x16 - 4.91287681*x86 == 0)

@constraint(m, x17 - 4.91287681*x87 == 0)

JuMP.add_NL_constraint(m, :(-(0.820744282617517*$(x10)^(-0.342222222222222) + 0.306708090151269*$(x45)^(-
    0.427777777777778)*$(x63)^(-0.794444444444445))^(-0.818181818181818) + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-(0.720649479632698*$(x11)^(-0.342222222222222) + 0.306708090151269*$(x46)^(-
    0.427777777777778)*$(x64)^(-0.794444444444445))^(-0.818181818181818) + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-(0.632761852252706*$(x12)^(-0.342222222222222) + 0.306708090151269*$(x47)^(-
    0.427777777777778)*$(x65)^(-0.794444444444445))^(-0.818181818181818) + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-(0.555592660485019*$(x13)^(-0.342222222222222) + 0.306708090151269*$(x48)^(-
    0.427777777777778)*$(x66)^(-0.794444444444445))^(-0.818181818181818) + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-(0.487834725317074*$(x14)^(-0.342222222222222) + 0.306708090151269*$(x49)^(-
    0.427777777777778)*$(x67)^(-0.794444444444445))^(-0.818181818181818) + $(x31) == 0))

JuMP.add_NL_constraint(m, :(-(0.428340286240339*$(x15)^(-0.342222222222222) + 0.306708090151269*$(x50)^(-
    0.427777777777778)*$(x68)^(-0.794444444444445))^(-0.818181818181818) + $(x32) == 0))

JuMP.add_NL_constraint(m, :(-(0.376101559185242*$(x16)^(-0.342222222222222) + 0.306708090151269*$(x51)^(-
    0.427777777777778)*$(x69)^(-0.794444444444445))^(-0.818181818181818) + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-(0.330233665535262*$(x17)^(-0.342222222222222) + 0.306708090151269*$(x52)^(-
    0.427777777777778)*$(x70)^(-0.794444444444445))^(-0.818181818181818) + $(x34) == 0))

@constraint(m,  - x35 + x44 == -2.038431744)

@constraint(m, 0.8153726976*x35 - x36 + x45 == 0)

@constraint(m, 0.8153726976*x36 - x37 + x46 == 0)

@constraint(m, 0.8153726976*x37 - x38 + x47 == 0)

@constraint(m, 0.8153726976*x38 - x39 + x48 == 0)

@constraint(m, 0.8153726976*x39 - x40 + x49 == 0)

@constraint(m, 0.8153726976*x40 - x41 + x50 == 0)

@constraint(m, 0.8153726976*x41 - x42 + x51 == 0)

@constraint(m, 0.8153726976*x42 - x43 + x52 == 0)

@constraint(m,  - x53 + x62 == -40.76863488)

@constraint(m, 0.8153726976*x53 - x54 + x63 == 0)

@constraint(m, 0.8153726976*x54 - x55 + x64 == 0)

@constraint(m, 0.8153726976*x55 - x56 + x65 == 0)

@constraint(m, 0.8153726976*x56 - x57 + x66 == 0)

@constraint(m, 0.8153726976*x57 - x58 + x67 == 0)

@constraint(m, 0.8153726976*x58 - x59 + x68 == 0)

@constraint(m, 0.8153726976*x59 - x60 + x69 == 0)

@constraint(m, 0.8153726976*x60 - x61 + x70 == 0)

@constraint(m,  - 0.8153726976*x1 + x2 - x10 == 0)

@constraint(m,  - 0.8153726976*x2 + x3 - x11 == 0)

@constraint(m,  - 0.8153726976*x3 + x4 - x12 == 0)

@constraint(m,  - 0.8153726976*x4 + x5 - x13 == 0)

@constraint(m,  - 0.8153726976*x5 + x6 - x14 == 0)

@constraint(m,  - 0.8153726976*x6 + x7 - x15 == 0)

@constraint(m,  - 0.8153726976*x7 + x8 - x16 == 0)

@constraint(m,  - 0.8153726976*x8 + x9 - x17 == 0)

JuMP.add_NL_constraint(m, :(-(0.612508399277048 + 0.306708090151269*$(x44)^(-0.427777777777778)*$(x62)^(-
    0.794444444444445))^(-0.818181818181818) + $(x18) == 3.4653339648))

@constraint(m,  - 0.8153726976*x18 + x19 - x27 == 0)

@constraint(m,  - 0.8153726976*x19 + x20 - x28 == 0)

@constraint(m,  - 0.8153726976*x20 + x21 - x29 == 0)

@constraint(m,  - 0.8153726976*x21 + x22 - x30 == 0)

@constraint(m,  - 0.8153726976*x22 + x23 - x31 == 0)

@constraint(m,  - 0.8153726976*x23 + x24 - x32 == 0)

@constraint(m,  - 0.8153726976*x24 + x25 - x33 == 0)

@constraint(m,  - 0.8153726976*x25 + x26 - x34 == 0)

@constraint(m,  - 52.550502505*x35 - 4.9683636144*x53 + 1000*x89 == 0)

@constraint(m,  - 55.2311062705602*x36 - 5.48547488997641*x54 + 1000*x90 == 0)

@constraint(m,  - 58.0484477684999*x37 - 6.05640752245858*x55 + 1000*x91 == 0)

@constraint(m,  - 61.0095019973984*x38 - 6.68676328190259*x56 + 1000*x92 == 0)

@constraint(m,  - 64.1215997508617*x39 - 7.38272697509128*x57 + 1000*x93 == 0)

@constraint(m,  - 67.3924457666453*x40 - 8.15112712846509*x58 + 1000*x94 == 0)

@constraint(m,  - 70.8301378015635*x41 - 8.99950298698105*x59 + 1000*x95 == 0)

@constraint(m,  - 74.4431866794111*x42 - 9.93617848626683*x60 + 1000*x96 == 0)

@constraint(m,  - 78.2405373615315*x43 - 10.970343923856*x61 + 1000*x97 == 0)

@constraint(m, x18 - x71 - x80 - x89 == 0)

@constraint(m, x19 - x72 - x81 - x90 == 0)

@constraint(m, x20 - x73 - x82 - x91 == 0)

@constraint(m, x21 - x74 - x83 - x92 == 0)

@constraint(m, x22 - x75 - x84 - x93 == 0)

@constraint(m, x23 - x76 - x85 - x94 == 0)

@constraint(m, x24 - x77 - x86 - x95 == 0)

@constraint(m, x25 - x78 - x87 - x96 == 0)

@constraint(m, x26 - x79 - x88 - x97 == 0)

@constraint(m, 0.07*x9 - x88 <= 0)
