#  NLP written by GAMS Convert at 10/11/20 14:06:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        116      116        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        117      117        0        0        0        0        0        0
#  FX     11       11        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        521      233      288        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=6517.516)
@variable(m, x2, start=15985.062)
@variable(m, x3, start=63568.944)
@variable(m, x4, start=385778.096)
@variable(m, x5, start=5082.506)
@variable(m, x6, start=7042.697)
@variable(m, x7, start=21058.821)
@variable(m, x8, start=163045.396)
@variable(m, x9, start=1435.01)
@variable(m, x10, start=8942.365)
@variable(m, x11, start=42510.123)
@variable(m, x12, start=222732.7)
@variable(m, x13, start=1643.017)
@variable(m, x14, start=7560.896)
@variable(m, x15, start=237.841)
@variable(m, x16, start=1409.202)
@variable(m, x17, start=1485.854)
@variable(m, x18, start=10803.527)
@variable(m, x19, start=15330.764)
@variable(m, x20, start=18597.27)
@variable(m, x21, start=1071.954)
@variable(m, x22, start=4277.721)
@variable(m, x23, start=113390.269)
@variable(m, x24, start=48734.424)
@variable(m, x25, start=2002.38)
@variable(m, x26, start=11406.26)
@variable(m, x27, start=50513.476)
@variable(m, x28, start=177675.714)
@variable(m, x29, start=12720.721)
@variable(m, x30, start=50033.466)
@variable(m, x31, start=243041.294)
@variable(m, x32, start=632194.706)
@variable(m, x33, start=3563.257)
@variable(m, x34, start=32220.169)
@variable(m, x35, start=27648.678)
@variable(m, x36, start=234243.865)
@variable(m, -1719.66812524877 <= x37 <= -1719.66812524877, start=-1719.66812524877)
@variable(m, -902.778746345937 <= x38 <= -902.778746345937, start=-902.778746345937)
@variable(m, -65393.6006677317 <= x39 <= -65393.6006677317, start=-65393.6006677317)
@variable(m, 16278.6211142947 <= x40 <= 16278.6211142947, start=16278.6211142947)
@variable(m, x41, start=1869.12371065651)
@variable(m, x42, start=1629.89286504737)
@variable(m, x43, start=71086.637254232)
@variable(m, x44, start=160889.650170064)
@variable(m, x45, start=62.464)
@variable(m, x46, start=1196.525)
@variable(m, x47, start=55083.516)
@variable(m, x48, start=17426.156)
@variable(m, x49, start=2092.569)
@variable(m, x50, start=23796.669)
@variable(m, x51, start=30982.559)
@variable(m, x52, start=10837.256)
@variable(m, x53, start=15333.958)
@variable(m, x54, start=79569.079)
@variable(m, x55, start=230107.78)
@variable(m, x56, start=645718.298)
@variable(m, x57, start=13092.111)
@variable(m, x58, start=52905.557)
@variable(m, x59, start=197375.836)
@variable(m, x60, start=634872.467)
@variable(m, 499247.83846016 <= x61 <= 499247.83846016, start=499247.83846016)
@variable(m, x62, start=1)
@variable(m, x63, start=1)
@variable(m, x64, start=1)
@variable(m, x65, start=1)
@variable(m, x66, start=1)
@variable(m, x67, start=1)
@variable(m, x68, start=1)
@variable(m, x69, start=1)
@variable(m, x70, start=1)
@variable(m, x71, start=1)
@variable(m, x72, start=1)
@variable(m, x73, start=1)
@variable(m, x74, start=1)
@variable(m, x75, start=1)
@variable(m, x76, start=1)
@variable(m, x77, start=1)
@variable(m, x78, start=1)
@variable(m, x79, start=1)
@variable(m, x80, start=1)
@variable(m, x81, start=1)
@variable(m, x82, start=1)
@variable(m, x83, start=1)
@variable(m, x84, start=1)
@variable(m, x85, start=1)
@variable(m, x86, start=1)
@variable(m, x87, start=1)
@variable(m, x88, start=1)
@variable(m, x89, start=1)
@variable(m, x90, start=1)
@variable(m, x91, start=1)
@variable(m, x92, start=1)
@variable(m, x93, start=1)
@variable(m, x94, start=1)
@variable(m, x95, start=1)
@variable(m, x96, start=241534.912)
@variable(m, -10976.1411459254 <= x97 <= -10976.1411459254, start=-10976.1411459254)
@variable(m, x98, start=-67361.263)
@variable(m, x99, start=433.854)
@variable(m, x100, start=4068.616)
@variable(m, x101, start=9418.058)
@variable(m, x102, start=20103.917)
@variable(m, x103, start=149.278)
@variable(m, x104, start=2866.853)
@variable(m, x105, start=1749.385)
@variable(m, x106, start=8.575)
@variable(m, 137539.847651341 <= x107 <= 137539.847651341, start=137539.847651341)
@variable(m, 190585.40657592 <= x108 <= 190585.40657592, start=190585.40657592)
@variable(m, 569881.674917227 <= x109 <= 569881.674917227, start=569881.674917227)
@variable(m, 4412240.52191823 <= x110 <= 4412240.52191823, start=4412240.52191823)
@variable(m, x111, start=6099.0072)
@variable(m, x112, start=8451.2364)
@variable(m, x113, start=25270.5852)
@variable(m, x114, start=195654.4752)
@variable(m, x115, start=235475.304)
@variable(m, 1 <= x116 <= 1, start=1)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(2.01967455881457*$(x33)^0.0119702541389896*$(x34)^0.108239066486418*$(x35)^
    0.092881793894488*$(x36)^0.786908885480104))

JuMP.add_NL_constraint(m, :(-1.69406751680297*$(x5)^0.779822558164798*$(x9)^0.220177441835202 + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-1.98589355705571*$(x6)^0.440579898908118*$(x10)^0.559420101091882 + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-1.88716953992159*$(x7)^0.331275300089931*$(x11)^0.668724699910069 + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-1.97610935451085*$(x8)^0.422640366808177*$(x12)^0.577359633191823 + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-0.779822558164798*$(x70)*$(x1)/$(x62) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.440579898908118*$(x71)*$(x2)/$(x63) + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-0.331275300089931*$(x72)*$(x3)/$(x64) + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-0.422640366808177*$(x73)*$(x4)/$(x65) + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-0.220177441835202*$(x70)*$(x1)/$(x66) + $(x9) == 0))

JuMP.add_NL_constraint(m, :(-0.559420101091882*$(x71)*$(x2)/$(x67) + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-0.668724699910069*$(x72)*$(x3)/$(x68) + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-0.577359633191823*$(x73)*$(x4)/$(x69) + $(x12) == 0))

@constraint(m, x13 - 0.129160682008512*x29 == 0)

@constraint(m, x14 - 0.151116774520478*x30 == 0)

@constraint(m, x15 - 0.000978603249207519*x31 == 0)

@constraint(m, x16 - 0.00222906327216223*x32 == 0)

@constraint(m, x17 - 0.116805800551714*x29 == 0)

@constraint(m, x18 - 0.215926016398704*x30 == 0)

@constraint(m, x19 - 0.0630788445357767*x31 == 0)

@constraint(m, x20 - 0.0294169973641*x32 == 0)

@constraint(m, x21 - 0.0842683366768283*x29 == 0)

@constraint(m, x22 - 0.0854971950174309*x30 == 0)

@constraint(m, x23 - 0.466547339070701*x31 == 0)

@constraint(m, x24 - 0.0770876812752051*x32 == 0)

@constraint(m, x25 - 0.15741088889537*x29 == 0)

@constraint(m, x26 - 0.227972613370419*x30 == 0)

@constraint(m, x27 - 0.207839067874614*x31 == 0)

@constraint(m, x28 - 0.281045874496773*x32 == 0)

@constraint(m, x1 - 0.512354291867576*x29 == 0)

@constraint(m, x2 - 0.319487400692968*x30 == 0)

@constraint(m, x3 - 0.261556145269701*x31 == 0)

@constraint(m, x4 - 0.61022038359176*x32 == 0)

@constraint(m,  - 0.512354291867576*x70 + x74 - 0.129160682008512*x78 - 0.116805800551714*x79 - 0.0842683366768283*x80
     - 0.15741088889537*x81 == 0)

@constraint(m,  - 0.319487400692968*x71 + x75 - 0.151116774520478*x78 - 0.215926016398704*x79 - 0.0854971950174309*x80
     - 0.227972613370419*x81 == 0)

@constraint(m,  - 0.261556145269701*x72 + x76 - 0.000978603249207519*x78 - 0.0630788445357767*x79
     - 0.466547339070701*x80 - 0.207839067874614*x81 == 0)

@constraint(m,  - 0.61022038359176*x73 + x77 - 0.00222906327216223*x78 - 0.0294169973641*x79 - 0.0770876812752051*x80
     - 0.281045874496773*x81 == 0)

JuMP.add_NL_constraint(m, :(-($(x78)*$(x37) + $(x79)*$(x38) + $(x80)*$(x39) + $(x81)*$(x40)) + $(x98) + $(x99) + $(x100)
     + $(x101) + $(x102) + $(x103) + $(x104) + $(x105) + $(x106) == 0))

JuMP.add_NL_constraint(m, :(-0.0341060856534783*$(x74)*$(x29) + $(x99) == 0))

JuMP.add_NL_constraint(m, :(-0.0813178923083202*$(x75)*$(x30) + $(x100) == 0))

JuMP.add_NL_constraint(m, :(-0.0387508552353247*$(x76)*$(x31) + $(x101) == 0))

JuMP.add_NL_constraint(m, :(-0.031800198276257*$(x77)*$(x32) + $(x102) == 0))

@constraint(m, x103 == 0)

@constraint(m, x104 == 0)

@constraint(m, x105 == 0)

@constraint(m, x106 == 0)

JuMP.add_NL_constraint(m, :(-0.00793766343606252*$(x94)*($(x111) + $(x112) + $(x113) + $(x114))/$(x78) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(-0.00692171466544692*$(x94)*($(x111) + $(x112) + $(x113) + $(x114))/$(x79) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(-0.30188574362869*$(x94)*($(x111) + $(x112) + $(x113) + $(x114))/$(x80) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(-0.6832548782698*$(x94)*($(x111) + $(x112) + $(x113) + $(x114))/$(x81) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(-0.447941465038796*($(x62)*$(x5) + $(x63)*$(x6) + $(x64)*$(x7) + $(x65)*$(x8) + $(x66)*$(x9)
     + $(x67)*$(x10) + $(x68)*$(x11) + $(x69)*$(x12)) + $(x96) + 0.447941465038796*$(x98) == 0))

JuMP.add_NL_constraint(m, :(-(0.0119702541389896*($(x62)*$(x5) + $(x63)*$(x6) + $(x64)*$(x7) + $(x65)*$(x8) + $(x66)*
    $(x9) + $(x67)*$(x10) + $(x68)*$(x11) + $(x69)*$(x12)) - 0.0119702541389896*$(x96) - 0.0119702541389896*$(x98))/
    $(x78) + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-(0.108239066486418*($(x62)*$(x5) + $(x63)*$(x6) + $(x64)*$(x7) + $(x65)*$(x8) + $(x66)*
    $(x9) + $(x67)*$(x10) + $(x68)*$(x11) + $(x69)*$(x12)) - 0.108239066486418*$(x96) - 0.108239066486418*$(x98))/$(x79)
     + $(x34) == 0))

JuMP.add_NL_constraint(m, :(-(0.092881793894488*($(x62)*$(x5) + $(x63)*$(x6) + $(x64)*$(x7) + $(x65)*$(x8) + $(x66)*
    $(x9) + $(x67)*$(x10) + $(x68)*$(x11) + $(x69)*$(x12)) - 0.092881793894488*$(x96) - 0.092881793894488*$(x98))/$(x80)
     + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-(0.786908885480104*($(x62)*$(x5) + $(x63)*$(x6) + $(x64)*$(x7) + $(x65)*$(x8) + $(x66)*
    $(x9) + $(x67)*$(x10) + $(x68)*$(x11) + $(x69)*$(x12)) - 0.786908885480104*$(x96) - 0.786908885480104*$(x98))/$(x81)
     + $(x36) == 0))

@constraint(m, x82 - x95 == 0)

@constraint(m, x83 - x95 == 0)

@constraint(m, x84 - x95 == 0)

@constraint(m, x85 - x95 == 0)

@constraint(m, x86 - x95 == 0)

@constraint(m, x87 - x95 == 0)

@constraint(m, x88 - x95 == 0)

@constraint(m, x89 - x95 == 0)

@constraint(m, x45 + x46 + x47 + x48 - x49 - x50 - x51 - x52 + x97 == 0)

JuMP.add_NL_constraint(m, :(-1.74181559989014*(0.299873337754138*$(x49)^0.5 + 0.700126662245862*$(x57)^0.5)^2 + $(x53)
     == 0))

JuMP.add_NL_constraint(m, :(-2.03967000415918*(0.42904941090414*$(x50)^0.5 + 0.57095058909586*$(x58)^0.5)^2 + $(x54)
     == 0))

JuMP.add_NL_constraint(m, :(-1.72608859013589*(0.295063822716336*$(x51)^0.5 + 0.704936177283664*$(x59)^0.5)^2 + $(x55)
     == 0))

JuMP.add_NL_constraint(m, :(-1.25713178423147*(0.115635509057695*$(x52)^0.5 + 0.884364490942305*$(x60)^0.5)^2 + $(x56)
     == 0))

JuMP.add_NL_constraint(m, :(-(0.395766419203511*$(x78)/$(x86))^2*$(x53) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-(0.612755565555217*$(x79)/$(x87))^2*$(x54) + $(x50) == 0))

JuMP.add_NL_constraint(m, :(-(0.387656888431472*$(x80)/$(x88))^2*$(x55) + $(x51) == 0))

JuMP.add_NL_constraint(m, :(-(0.129652716333586*$(x81)/$(x89))^2*$(x56) + $(x52) == 0))

JuMP.add_NL_constraint(m, :(-(0.92401219855408*$(x78)/$(x90))^2*$(x53) + $(x57) == 0))

JuMP.add_NL_constraint(m, :(-(0.815414593830276*$(x79)/$(x91))^2*$(x54) + $(x58) == 0))

JuMP.add_NL_constraint(m, :(-(0.926150019046142*$(x80)/$(x92))^2*$(x55) + $(x59) == 0))

JuMP.add_NL_constraint(m, :(-(0.991566166949901*$(x81)/$(x93))^2*$(x56) + $(x60) == 0))

JuMP.add_NL_constraint(m, :(-6.01527608470345*(0.935389577226454*$(x45)^1.5 + 0.0646104227735464*$(x57)^1.5)^
    0.666666666666667 + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-3.61720661816441*(0.869272702066364*$(x46)^1.5 + 0.130727297933637*$(x58)^1.5)^
    0.666666666666667 + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-2.12168261795511*(0.65433053205311*$(x47)^1.5 + 0.34566946794689*$(x59)^1.5)^
    0.666666666666667 + $(x31) == 0))

JuMP.add_NL_constraint(m, :(-3.59090892375353*(0.857871887526444*$(x48)^1.5 + 0.142128112473556*$(x60)^1.5)^
    0.666666666666667 + $(x32) == 0))

JuMP.add_NL_constraint(m, :(-(14.2705584239207*$(x74)/$(x82))^(-2)*$(x29) + $(x45) == 0))

JuMP.add_NL_constraint(m, :(-(6.46650184736328*$(x75)/$(x83))^(-2)*$(x30) + $(x46) == 0))

JuMP.add_NL_constraint(m, :(-(2.10053154298257*$(x76)/$(x84))^(-2)*$(x31) + $(x47) == 0))

JuMP.add_NL_constraint(m, :(-(6.02316317064515*$(x77)/$(x85))^(-2)*$(x32) + $(x48) == 0))

JuMP.add_NL_constraint(m, :(-(0.985714225850187*$(x74)/$(x90))^(-2)*$(x29) + $(x57) == 0))

JuMP.add_NL_constraint(m, :(-(0.972477694950249*$(x75)/$(x91))^(-2)*$(x30) + $(x58) == 0))

JuMP.add_NL_constraint(m, :(-(1.109667951135*$(x76)/$(x92))^(-2)*$(x31) + $(x59) == 0))

JuMP.add_NL_constraint(m, :(-(0.997888874797343*$(x77)/$(x93))^(-2)*$(x32) + $(x60) == 0))

@constraint(m,  - x13 - x14 - x15 - x16 - x33 - x37 - x41 + x53 == 0)

@constraint(m,  - x17 - x18 - x19 - x20 - x34 - x38 - x42 + x54 == 0)

@constraint(m,  - x21 - x22 - x23 - x24 - x35 - x39 - x43 + x55 == 0)

@constraint(m,  - x25 - x26 - x27 - x28 - x36 - x40 - x44 + x56 == 0)

@constraint(m, x9 + x10 + x11 + x12 - x61 == 0)

@constraint(m,  - x66 + x67 == 0)

@constraint(m,  - x66 + x68 == 0)

@constraint(m,  - x66 + x69 == 0)

@constraint(m, x66 - x67 == 0)

@constraint(m,  - x67 + x68 == 0)

@constraint(m,  - x67 + x69 == 0)

@constraint(m, x66 - x68 == 0)

@constraint(m, x67 - x68 == 0)

@constraint(m,  - x68 + x69 == 0)

@constraint(m, x66 - x69 == 0)

@constraint(m, x67 - x69 == 0)

@constraint(m, x68 - x69 == 0)

@constraint(m, x5 - 0.05*x107 == 0)

@constraint(m, x6 - 0.05*x108 == 0)

@constraint(m, x7 - 0.05*x109 == 0)

@constraint(m, x8 - 0.05*x110 == 0)

@constraint(m, x111 + x112 + x113 + x114 - x115 == 0)

JuMP.add_NL_constraint(m, :(-2.0029550751034*$(x41)^0.00793766343606252*$(x42)^0.00692171466544692*$(x43)^
    0.30188574362869*$(x44)^0.6832548782698 + $(x115) == 0))

JuMP.add_NL_constraint(m, :($(x94)*$(x111) - $(x62)^1*$(x5)/($(x62)^1*$(x5) + $(x63)^1*$(x6) + $(x64)^1*$(x7) + $(x65)^1
    *$(x8))*($(x95)*$(x97) + $(x96)) == 0))

JuMP.add_NL_constraint(m, :($(x94)*$(x112) - $(x63)^1*$(x6)/($(x62)^1*$(x5) + $(x63)^1*$(x6) + $(x64)^1*$(x7) + $(x65)^1
    *$(x8))*($(x95)*$(x97) + $(x96)) == 0))

JuMP.add_NL_constraint(m, :($(x94)*$(x113) - $(x64)^1*$(x7)/($(x62)^1*$(x5) + $(x63)^1*$(x6) + $(x64)^1*$(x7) + $(x65)^1
    *$(x8))*($(x95)*$(x97) + $(x96)) == 0))

JuMP.add_NL_constraint(m, :($(x94)*$(x114) - $(x65)^1*$(x8)/($(x62)^1*$(x5) + $(x63)^1*$(x6) + $(x64)^1*$(x7) + $(x65)^1
    *$(x8))*($(x95)*$(x97) + $(x96)) == 0))

@constraint(m,  - 0.0157963305757034*x78 - 0.0819683656032095*x79 - 0.237046336041955*x80 - 0.665188967779132*x81 + x116
     == 0)
