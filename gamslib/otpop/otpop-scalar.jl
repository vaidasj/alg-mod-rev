#  NLP written by GAMS Convert at 10/11/20 12:19:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         79       79        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        106      106        0        0        0        0        0        0
#  FX     11       11        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        324      189      135        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 29.4 <= x1 <= 29.4, start=29.4)
@variable(m, 0 <= x2 <= 35.25, start=0)
@variable(m, 0 <= x3 <= 38.25, start=0)
@variable(m, 0 <= x4 <= 41.25, start=0)
@variable(m, 0 <= x5 <= 44.25, start=0)
@variable(m, 0 <= x6 <= 47.25, start=0)
@variable(m, 0 <= x7 <= 50.25, start=0)
@variable(m, 0 <= x8 <= 51.15, start=0)
@variable(m, 0 <= x9 <= 52.05, start=0)
@variable(m, 0 <= x10 <= 52.95, start=0)
@variable(m, 0 <= x11 <= 53.85, start=0)
@variable(m, 0 <= x12 <= 54.75, start=0)
@variable(m, 0 <= x13 <= 55.65, start=0)
@variable(m, 0 <= x14 <= 56.55, start=0)
@variable(m, 0 <= x15 <= 57.45, start=0)
@variable(m, 0 <= x16 <= 58.35, start=0)
@variable(m, 0 <= x17 <= 59.25, start=0)
@variable(m, x18, start=0)
@variable(m, x19, start=0)
@variable(m, x20, start=0)
@variable(m, x21, start=0)
@variable(m, x22, start=0)
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, x25, start=0)
@variable(m, x26, start=0)
@variable(m, x27, start=0)
@variable(m, x28, start=0)
@variable(m, x29, start=0)
@variable(m, x30, start=0)
@variable(m, x31, start=0)
@variable(m, x32, start=0)
@variable(m, x33, start=0)
@variable(m, x34, start=0)
@variable(m, x35, start=0)
@variable(m, x36, start=0)
@variable(m, x37, start=0)
@variable(m, x38, start=0)
@variable(m, x39, start=0)
@variable(m, x40, start=0)
@variable(m, x41, start=0)
@variable(m, x42, start=0)
@variable(m, x43, start=0)
@variable(m, x44, start=0)
@variable(m, x45, start=0)
@variable(m, x46, start=0)
@variable(m, x47, start=0)
@variable(m, x48, start=0)
@variable(m, x49, start=0)
@variable(m, x50, start=0)
@variable(m, x51, start=0)
@variable(m, 3.5 <= x52 <= 3.5, start=3.5)
@variable(m, 3.5 <= x53 <= 3.5, start=3.5)
@variable(m, 3.5 <= x54 <= 3.5, start=3.5)
@variable(m, 3.5 <= x55 <= 3.5, start=3.5)
@variable(m, 3.5 <= x56 <= 3.5, start=3.5)
@variable(m, 3.5 <= x57 <= 3.5, start=3.5)
@variable(m, 3.5 <= x58 <= 3.5, start=3.5)
@variable(m, 4 <= x59 <= 4, start=4)
@variable(m, 7 <= x60 <= 7, start=7)
@variable(m, 10 <= x61 <= 10, start=10)
@variable(m, 1 <= x62, start=1)
@variable(m, 1 <= x63, start=1)
@variable(m, 1 <= x64, start=1)
@variable(m, 1 <= x65, start=1)
@variable(m, 1 <= x66, start=1)
@variable(m, 1 <= x67, start=1)
@variable(m, 1 <= x68, start=1)
@variable(m, 1 <= x69, start=1)
@variable(m, 1 <= x70, start=1)
@variable(m, 1 <= x71, start=1)
@variable(m, 1 <= x72, start=1)
@variable(m, 1 <= x73, start=1)
@variable(m, 1 <= x74, start=1)
@variable(m, 1 <= x75, start=1)
@variable(m, 1 <= x76, start=1)
@variable(m, 1 <= x77, start=1)
@variable(m, x78, start=0)
@variable(m, x79, start=0)
@variable(m, x80, start=0)
@variable(m, x81, start=0)
@variable(m, x82, start=0)
@variable(m, x83, start=0)
@variable(m, x84, start=0)
@variable(m, x85, start=0)
@variable(m, x86, start=0)
@variable(m, x87, start=0)
@variable(m, x88, start=0)
@variable(m, x89, start=0)
@variable(m, x90, start=0)
@variable(m, x91, start=0)
@variable(m, x92, start=0)
@variable(m, x93, start=0)
@variable(m, x94, start=0)
@variable(m, x95, start=0)
@variable(m, x96, start=0)
@variable(m, x97, start=0)
@variable(m, x98, start=0)
@variable(m, x99, start=0)
@variable(m, x100, start=0)
@variable(m, x101, start=0)
@variable(m, x102, start=0)
@variable(m, x103, start=0)
@variable(m, x104, start=0)
@variable(m, x105, start=0)

@objective(m, Max, x104 + x105)

JuMP.add_NL_constraint(m, :(-88.2*$(x61)^0 + $(x18) == 0))

JuMP.add_NL_constraint(m, :(-91.728*$(x62)^0 + $(x19) == 0))

JuMP.add_NL_constraint(m, :(-95.39712*$(x63)^0 + $(x20) == 0))

JuMP.add_NL_constraint(m, :(-99.2130048*$(x64)^0 + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-103.181524992*$(x65)^0 + $(x22) == 0))

JuMP.add_NL_constraint(m, :(-107.30878599168*$(x66)^0 + $(x23) == 0))

JuMP.add_NL_constraint(m, :(-111.601137431347*$(x67)^0 + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-116.065182928601*$(x68)^0 + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-120.707790245745*$(x69)^0 + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-125.536101855575*$(x70)^0 + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-130.557545929798*$(x71)^0 + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-135.77984776699*$(x72)^0 + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-141.21104167767*$(x73)^0 + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-146.859483344776*$(x74)^0 + $(x31) == 0))

JuMP.add_NL_constraint(m, :(-152.733862678567*$(x75)^0 + $(x32) == 0))

JuMP.add_NL_constraint(m, :(-158.84321718571*$(x76)^0 + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-165.196945873138*$(x77)^0 + $(x34) == 0))

JuMP.add_NL_constraint(m, :($(x61)^0.2*$(x35) + $(x1) - $(x18) == 0))

JuMP.add_NL_constraint(m, :($(x62)^0.2*$(x36) + $(x2) - $(x19) == 0))

JuMP.add_NL_constraint(m, :($(x63)^0.2*$(x37) + $(x3) - $(x20) == 0))

JuMP.add_NL_constraint(m, :($(x64)^0.2*$(x38) + $(x4) - $(x21) == 0))

JuMP.add_NL_constraint(m, :($(x65)^0.2*$(x39) + $(x5) - $(x22) == 0))

JuMP.add_NL_constraint(m, :($(x66)^0.2*$(x40) + $(x6) - $(x23) == 0))

JuMP.add_NL_constraint(m, :($(x67)^0.2*$(x41) + $(x7) - $(x24) == 0))

JuMP.add_NL_constraint(m, :($(x68)^0.2*$(x42) + $(x8) - $(x25) == 0))

JuMP.add_NL_constraint(m, :($(x69)^0.2*$(x43) + $(x9) - $(x26) == 0))

JuMP.add_NL_constraint(m, :($(x70)^0.2*$(x44) + $(x10) - $(x27) == 0))

JuMP.add_NL_constraint(m, :($(x71)^0.2*$(x45) + $(x11) - $(x28) == 0))

JuMP.add_NL_constraint(m, :($(x72)^0.2*$(x46) + $(x12) - $(x29) == 0))

JuMP.add_NL_constraint(m, :($(x73)^0.2*$(x47) + $(x13) - $(x30) == 0))

JuMP.add_NL_constraint(m, :($(x74)^0.2*$(x48) + $(x14) - $(x31) == 0))

JuMP.add_NL_constraint(m, :($(x75)^0.2*$(x49) + $(x15) - $(x32) == 0))

JuMP.add_NL_constraint(m, :($(x76)^0.2*$(x50) + $(x16) - $(x33) == 0))

JuMP.add_NL_constraint(m, :($(x77)^0.2*$(x51) + $(x17) - $(x34) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x18)*(-3 + $(x84)) - $(x35) + $(x36) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x19)*(-3 + $(x85)) - $(x36) + $(x37) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x20)*(-3 + $(x86)) - $(x37) + $(x38) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x21)*(-3 + $(x87)) - $(x38) + $(x39) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x22)*(-3 + $(x88)) - $(x39) + $(x40) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x23)*(-3 + $(x89)) - $(x40) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x24)*(-3 + $(x90)) - $(x41) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x25)*(-3 + $(x91)) - $(x42) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x26)*(-3 + $(x92)) - $(x43) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x27)*(-3 + $(x93)) - $(x44) + $(x45) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x28)*(-3 + $(x94)) - $(x45) + $(x46) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x29)*(-3 + $(x95)) - $(x46) + $(x47) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x30)*(-3 + $(x96)) - $(x47) + $(x48) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x31)*(-3 + $(x97)) - $(x48) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x32)*(-3 + $(x98)) - $(x49) + $(x50) == 0))

JuMP.add_NL_constraint(m, :(-0.00429596009984836*$(x33)*(-3 + $(x99)) - $(x50) + $(x51) == 0))

@constraint(m,  - 0.5*x52 + x78 == 0)

@constraint(m,  - 0.3*x52 - 0.5*x53 + x79 == 0)

@constraint(m,  - 0.2*x52 - 0.3*x53 - 0.5*x54 + x80 == 0)

@constraint(m,  - 0.2*x53 - 0.3*x54 - 0.5*x55 + x81 == 0)

@constraint(m,  - 0.2*x54 - 0.3*x55 - 0.5*x56 + x82 == 0)

@constraint(m,  - 0.2*x55 - 0.3*x56 - 0.5*x57 + x83 == 0)

@constraint(m,  - 0.2*x56 - 0.3*x57 - 0.5*x58 + x84 == 0)

@constraint(m,  - 0.2*x57 - 0.3*x58 - 0.5*x59 + x85 == 0)

@constraint(m,  - 0.2*x58 - 0.3*x59 - 0.5*x60 + x86 == 0)

@constraint(m,  - 0.2*x59 - 0.3*x60 - 0.5*x61 + x87 == 0)

@constraint(m,  - 0.2*x60 - 0.3*x61 - 0.5*x62 + x88 == 0)

@constraint(m,  - 0.2*x61 - 0.3*x62 - 0.5*x63 + x89 == 0)

@constraint(m,  - 0.2*x62 - 0.3*x63 - 0.5*x64 + x90 == 0)

@constraint(m,  - 0.2*x63 - 0.3*x64 - 0.5*x65 + x91 == 0)

@constraint(m,  - 0.2*x64 - 0.3*x65 - 0.5*x66 + x92 == 0)

@constraint(m,  - 0.2*x65 - 0.3*x66 - 0.5*x67 + x93 == 0)

@constraint(m,  - 0.2*x66 - 0.3*x67 - 0.5*x68 + x94 == 0)

@constraint(m,  - 0.2*x67 - 0.3*x68 - 0.5*x69 + x95 == 0)

@constraint(m,  - 0.2*x68 - 0.3*x69 - 0.5*x70 + x96 == 0)

@constraint(m,  - 0.2*x69 - 0.3*x70 - 0.5*x71 + x97 == 0)

@constraint(m,  - 0.2*x70 - 0.3*x71 - 0.5*x72 + x98 == 0)

@constraint(m,  - 0.2*x71 - 0.3*x72 - 0.5*x73 + x99 == 0)

@constraint(m,  - 0.2*x72 - 0.3*x73 - 0.5*x74 + x100 == 0)

@constraint(m,  - 0.2*x73 - 0.3*x74 - 0.5*x75 + x101 == 0)

@constraint(m,  - 0.2*x74 - 0.3*x75 - 0.5*x76 + x102 == 0)

@constraint(m,  - 0.2*x75 - 0.3*x76 - 0.5*x77 + x103 == 0)

JuMP.add_NL_constraint(m, :(-(0.439288387703293*$(x61)*$(x1) + 0.426493580294459*$(x62)*$(x2) + 0.414071437179087*$(x63)
    *$(x3) + 0.402011104057366*$(x64)*$(x4) + 0.390302042774142*$(x65)*$(x5) + 0.378934022110817*$(x66)*$(x6) + 
    0.367897108845453*$(x67)*$(x7) + 0.357181659073256*$(x68)*$(x8) + 0.34677830977986*$(x69)*$(x9) + 0.336677970660058*
    $(x70)*$(x10) + 0.326871816174814*$(x71)*$(x11) + 0.317351277839625*$(x72)*$(x12) + 0.3081080367375*$(x73)*$(x13) + 
    0.29913401625*$(x74)*$(x14) + 0.290421375*$(x75)*$(x15) + 0.2819625*$(x76)*$(x16) + 0.27375*$(x77)*$(x17)) + $(x104)
     == -752.983789346618))

JuMP.add_NL_constraint(m, :(-0.25*((11.77125 - 0.365*$(x1))*$(x77) + (12.86625 - 0.365*$(x2))*$(x77) + (13.96125 - 0.365
    *$(x3))*$(x77) + (15.05625 - 0.365*$(x4))*$(x77) + (16.15125 - 0.365*$(x5))*$(x77) + (17.24625 - 0.365*$(x6))*$(x77)
     + (18.34125 - 0.365*$(x7))*$(x77) + (18.66975 - 0.365*$(x8))*$(x77) + (18.99825 - 0.365*$(x9))*$(x77) + (19.32675
     - 0.365*$(x10))*$(x77) + (19.65525 - 0.365*$(x11))*$(x77) + (19.98375 - 0.365*$(x12))*$(x77) + (20.31225 - 0.365*
    $(x13))*$(x77) + (20.64075 - 0.365*$(x14))*$(x77) + (20.96925 - 0.365*$(x15))*$(x77) + (21.29775 - 0.365*$(x16))*
    $(x77) + (21.62625 - 0.365*$(x17))*$(x77)) + $(x105) == 0))
