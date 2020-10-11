#  NLP written by GAMS Convert at 10/11/20 12:24:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         78       78        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         96       96        0        0        0        0        0        0
#  FX     18       18        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        346      146      200        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1 <= 1, start=1)
@variable(m, 0.01 <= x2, start=1)
@variable(m, 0.01 <= x3, start=1)
@variable(m, 0.01 <= x4, start=1)
@variable(m, 0.01 <= x5, start=1)
@variable(m, 0.01 <= x6, start=1)
@variable(m, 0.01 <= x7, start=1)
@variable(m, x8, start=1)
@variable(m, x9, start=1)
@variable(m, x10, start=1)
@variable(m, 0.01 <= x11, start=1)
@variable(m, 0.01 <= x12, start=1)
@variable(m, 0.01 <= x13, start=1)
@variable(m, 0.01 <= x14, start=1)
@variable(m, 0.01 <= x15, start=1)
@variable(m, 0.01 <= x16, start=1)
@variable(m, 0.01 <= x17, start=1)
@variable(m, 0.01 <= x18, start=1)
@variable(m, 0.01 <= x19, start=1)
@variable(m, x20, start=0.737)
@variable(m, x21, start=0.2911)
@variable(m, x22, start=0.6625)
@variable(m, x23, start=0)
@variable(m, 1 <= x24 <= 1, start=1)
@variable(m, 0.01 <= x25, start=711.6443)
@variable(m, 0.01 <= x26, start=930.3509)
@variable(m, 0.01 <= x27, start=497.4428)
@variable(m, 0.01 <= x28, start=657.3677)
@variable(m, 0.01 <= x29, start=840.05)
@variable(m, 0.01 <= x30, start=515.4296)
@variable(m, 0.01 <= x31, start=641.7037)
@variable(m, 0.01 <= x32, start=812.2222)
@variable(m, 0.01 <= x33, start=492.0307)
@variable(m, 0.01 <= x34, start=15.6639)
@variable(m, 0.01 <= x35, start=27.8278)
@variable(m, 0.01 <= x36, start=23.3988)
@variable(m, 0.01 <= x37, start=69.9406)
@variable(m, 0.01 <= x38, start=118.1287)
@variable(m, 0.01 <= x39, start=5.412)
@variable(m, 657.5754 <= x40 <= 657.5754, start=657.5754)
@variable(m, 338.7076 <= x41 <= 338.7076, start=338.7076)
@variable(m, 1548.5192 <= x42 <= 1548.5192, start=1548.5192)
@variable(m, 0.01 <= x43, start=0.074)
@variable(m, 0.01 <= x44, start=0.14)
@variable(m, 0.01 <= x45, start=0.152)
@variable(m, 2515.9 <= x46 <= 2515.9, start=2515.9)
@variable(m, 1565.987 <= x47 <= 1565.987, start=1565.987)
@variable(m, 948.1 <= x48 <= 948.1, start=948.1)
@variable(m, 0.01 <= x49, start=2515.9)
@variable(m, 0.01 <= x50, start=442.643)
@variable(m, 0 <= x51 <= 0, start=0)
@variable(m, 0 <= x52 <= 0, start=0)
@variable(m, 0.01 <= x53, start=767.776)
@variable(m, 0 <= x54 <= 0, start=0)
@variable(m, 0 <= x55 <= 0, start=0)
@variable(m, 0.01 <= x56, start=355.568)
@variable(m, 0.01 <= x57, start=948.1)
@variable(m, 0.01 <= x58, start=256.645)
@variable(m, 0.01 <= x59, start=464.1656)
@variable(m, 0.01 <= x60, start=156.2598)
@variable(m, x61, start=452.1765)
@variable(m, x62, start=307.8561)
@variable(m, x63, start=202.0416)
@variable(m, x64, start=2.823)
@variable(m, x65, start=9.8806)
@variable(m, x66, start=128.4482)
@variable(m, x67, start=0)
@variable(m, x68, start=148.4488)
@variable(m, x69, start=10.6931)
@variable(m, x70, start=0)
@variable(m, x71, start=0)
@variable(m, x72, start=0)
@variable(m, 0.01 <= x73, start=1123.5941)
@variable(m, x74, start=194.0449)
@variable(m, x75, start=28.6572)
@variable(m, x76, start=65.2754)
@variable(m, x77, start=0)
@variable(m, 141.1519 <= x78 <= 141.1519, start=141.1519)
@variable(m, x79, start=61.4089)
@variable(m, x80, start=52.893)
@variable(m, x81, start=0)
@variable(m, x82, start=159.1419)
@variable(m, x83, start=159.1419)
@variable(m, 0.06 <= x84 <= 0.06, start=0.06)
@variable(m, 0.06 <= x85 <= 0.06, start=0.06)
@variable(m, 39.1744 <= x86 <= 39.1744, start=39.1744)
@variable(m, x87, start=20.6884)
@variable(m, x88, start=46.1511)
@variable(m, x89, start=92.3023)
@variable(m, x90, start=0)
@variable(m, 0 <= x91 <= 0, start=0)
@variable(m, 58.759 <= x92 <= 58.759, start=58.759)
@variable(m, x93, start=548.7478)
@variable(m, x94, start=574.8463)
@variable(m, x95, start=100.1122)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x61)^0.47*$(x62)^0.31999*$(x63)^0.21001))

JuMP.add_NL_constraint(m, :(-0.90909*$(x1)*(1.1 + $(x23)) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.81466*$(x1)*(1.22751 + $(x23)) + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-0.92521*$(x1)*(1.08084 + $(x23)) + $(x7) == 0))

@constraint(m,  - x1 + x8 == 0)

@constraint(m,  - x1 + x9 == 0)

@constraint(m,  - x1 + x10 == 0)

JuMP.add_NL_constraint(m, :($(x17)*$(x25) - ($(x2)*$(x31) + $(x5)*$(x37)) == 0))

JuMP.add_NL_constraint(m, :($(x18)*$(x26) - ($(x3)*$(x32) + $(x6)*$(x38)) == 0))

JuMP.add_NL_constraint(m, :($(x19)*$(x27) - ($(x4)*$(x33) + $(x7)*$(x39)) == 0))

JuMP.add_NL_constraint(m, :($(x14)*$(x28) - ($(x2)*$(x31) + $(x8)*$(x34)) == 0))

JuMP.add_NL_constraint(m, :($(x15)*$(x29) - ($(x3)*$(x32) + $(x9)*$(x35)) == 0))

JuMP.add_NL_constraint(m, :($(x16)*$(x30) - ($(x4)*$(x33) + $(x10)*$(x36)) == 0))

@constraint(m, 0.99*x14 - 0.12591*x17 - 0.10353*x18 - 0.02358*x19 - x20 == 0)

@constraint(m, 0.9608*x15 - 0.19834*x17 - 0.35524*x18 - 0.11608*x19 - x21 == 0)

@constraint(m, 0.95*x16 - 0.01407*x17 - 0.18954*x18 - 0.0839*x19 - x22 == 0)

@constraint(m, x11 - 0.93076*x18 - 0.06924*x19 == 0)

@constraint(m, x12 - 0.93774*x18 - 0.06226*x19 == 0)

@constraint(m, x13 - 0.9308*x18 - 0.0692*x19 == 0)

@constraint(m,  - 0.33263*x17 - 0.43486*x18 - 0.23251*x19 + x24 == 0)

JuMP.add_NL_constraint(m, :(-0.61447*$(x49)^0.38258*$(x50)^0.0674*$(x40)^0.55002 + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-1.60111*$(x53)^0.53476*$(x41)^0.46524 + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-0.52019*$(x56)^0.16234*$(x57)^0.42326*$(x42)^0.4144 + $(x30) == 0))

JuMP.add_NL_constraint(m, :($(x43)*$(x49) - 0.38258*$(x28)*$(x20) == 0))

JuMP.add_NL_constraint(m, :(0.5278*$(x44)*$(x50) - 0.0674*$(x28)*$(x20) == 0))

JuMP.add_NL_constraint(m, :(1.21879*$(x44)*$(x53) - 0.53476*$(x29)*$(x21) == 0))

JuMP.add_NL_constraint(m, :(1.11541*$(x44)*$(x56) - 0.16234*$(x30)*$(x22) == 0))

JuMP.add_NL_constraint(m, :($(x45)*$(x57) - 0.42326*$(x30)*$(x22) == 0))

@constraint(m,  - x46 + x49 + x52 + x55 == 0)

@constraint(m,  - x47 + x50 + x53 + x56 == 0)

@constraint(m,  - x48 + x51 + x54 + x57 == 0)

JuMP.add_NL_constraint(m, :(-3.85424*(0.86628*$(x34)^1.5 + 0.13372*$(x31)^1.5)^0.666666666666667 + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-3.51886*(0.84602*$(x35)^1.5 + 0.15398*$(x32)^1.5)^0.666666666666667 + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-3.23592*(0.82436*$(x36)^1.5 + 0.17564*$(x33)^1.5)^0.666666666666667 + $(x30) == 0))

JuMP.add_NL_constraint(m, :($(x34)/$(x31) - (0.154361176524911*$(x8)/$(x2))^2 == 0))

JuMP.add_NL_constraint(m, :($(x35)/$(x32) - (0.182005153542469*$(x9)/$(x3))^2 == 0))

JuMP.add_NL_constraint(m, :($(x36)/$(x33) - (0.213062254354894*$(x10)/$(x4))^2 == 0))

JuMP.add_NL_constraint(m, :(-1.59539*(0.2482*$(x37)^0.5 + 0.7518*$(x31)^0.5)^2 + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-1.34652*(0.05111*$(x38)^(-0.515151515151515) + 0.94889*$(x32)^(-0.515151515151515))^(-
    1.94117647058824) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-1.01839*(1e-5*$(x39)^(-1.5) + 0.99999*$(x33)^(-1.5))^(-0.666666666666667) + $(x27) == 0))

JuMP.add_NL_constraint(m, :($(x37)/$(x31) - (0.330140994945464*$(x2)/$(x5))^2 == 0))

JuMP.add_NL_constraint(m, :($(x38)/$(x32) - (0.0538629345867277*$(x3)/$(x6))^0.66 == 0))

JuMP.add_NL_constraint(m, :($(x39)/$(x33) - (1.0000100001e-5*$(x4)/$(x7))^0.4 == 0))

@constraint(m,  - 0.12591*x28 - 0.19834*x29 - 0.01407*x30 + x58 == 0)

@constraint(m,  - 0.10353*x28 - 0.35524*x29 - 0.18954*x30 + x59 == 0)

@constraint(m,  - 0.02358*x28 - 0.11608*x29 - 0.0839*x30 + x60 == 0)

JuMP.add_NL_constraint(m, :($(x17)*$(x61) - (0.9109*(0.47 - 0.47*$(x84))*$(x93) + 0.9109*(0.47 - 0.47*$(x85))*$(x94))
     == 0))

JuMP.add_NL_constraint(m, :($(x18)*$(x62) - (0.9109*(0.31999 - 0.31999*$(x84))*$(x93) + 0.9109*(0.31999 - 0.31999*$(x85)
    )*$(x94)) == 0))

JuMP.add_NL_constraint(m, :($(x19)*$(x63) - (0.9109*(0.21001 - 0.21001*$(x84))*$(x93) + 0.9109*(0.21001 - 0.21001*$(x85)
    )*$(x94)) == 0))

@constraint(m, x70 == 0)

@constraint(m, x71 == 0)

@constraint(m, x72 == 0)

@constraint(m, x73 - x93 - x94 == 0)

JuMP.add_NL_constraint(m, :(-($(x43)*$(x46) + $(x44)*$(x47) + $(x45)*$(x48) + $(x91)*$(x1)) + $(x93) == 0))

JuMP.add_NL_constraint(m, :(-($(x20)*$(x28) + $(x21)*$(x29) + $(x22)*$(x30) - ($(x43)*$(x46) + $(x44)*$(x47) + $(x45)*
    $(x48)) + $(x92)*$(x1)) + $(x81) - $(x90) + $(x94) == 0))

@constraint(m,  - 0.0891*x93 - 0.0891*x94 + x95 == 0)

@constraint(m, x64 - 0.02*x78 == 0)

@constraint(m, x65 - 0.07*x78 == 0)

@constraint(m, x66 - 0.91*x78 == 0)

@constraint(m, x74 - x75 - x76 + x77 - x95 == 0)

JuMP.add_NL_constraint(m, :(-(0.090909*$(x37) + 0.1853432966*$(x38) + 0.0747939764*$(x39))*$(x1) + $(x75) == 0))

JuMP.add_NL_constraint(m, :(-(0.90909*$(x37) + 0.81466*$(x38) + 0.92521*$(x39))*$(x1)*$(x23) + $(x90) == 0))

JuMP.add_NL_constraint(m, :(-(0.01*$(x14)*$(x28) + 0.0392*$(x15)*$(x29) + 0.05*$(x16)*$(x30)) + $(x76) == 0))

@constraint(m, x77 == 0)

JuMP.add_NL_constraint(m, :(-(0.9109*$(x84)*$(x93) + 0.9109*$(x85)*$(x94)) + $(x79) == 0))

JuMP.add_NL_constraint(m, :(-($(x17)*$(x64) + $(x18)*$(x65) + $(x19)*$(x66)) + $(x74) - $(x80) == 0))

@constraint(m, x81 == 0)

JuMP.add_NL_constraint(m, :(-$(x86)*$(x1) - $(x79) - $(x80) - $(x81) + $(x83) == 0))

JuMP.add_NL_constraint(m, :($(x11)*$(x87) + 0.13*($(x70)*$(x17) + $(x71)*$(x18) + $(x72)*$(x19)) - 0.13*$(x82) == 0))

JuMP.add_NL_constraint(m, :($(x12)*$(x88) + 0.29*($(x70)*$(x17) + $(x71)*$(x18) + $(x72)*$(x19)) - 0.29*$(x82) == 0))

JuMP.add_NL_constraint(m, :($(x13)*$(x89) + 0.58*($(x70)*$(x17) + $(x71)*$(x18) + $(x72)*$(x19)) - 0.58*$(x82) == 0))

@constraint(m, x67 == 0)

@constraint(m, x68 - 0.93076*x87 - 0.93774*x88 - 0.9308*x89 == 0)

@constraint(m, x69 - 0.06924*x87 - 0.06226*x88 - 0.0692*x89 == 0)

@constraint(m,  - x34 - x35 - x36 + 0.90909*x37 + 0.81466*x38 + 0.92521*x39 - x86 - x91 - x92 == 0)

@constraint(m, x25 - x58 - x61 - x64 - x67 - x70 == 0)

@constraint(m, x26 - x59 - x62 - x65 - x68 - x71 == 0)

@constraint(m, x27 - x60 - x63 - x66 - x69 - x72 == 0)
