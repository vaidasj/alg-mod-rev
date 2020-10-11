#  MINLP written by GAMS Convert at 10/11/20 12:51:20
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         28       22        2        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        102       62        2       38        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        190       74      116        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, 0.4 <= x4 <= 1, start=0.4)
@variable(m, 0.4 <= x5 <= 1, start=0.4)
@variable(m, 0.4 <= x6 <= 1, start=0.4)
@variable(m, 0.4 <= x7 <= 1, start=0.4)
@variable(m, 0.4 <= x8 <= 1, start=0.4)
@variable(m, 0.4 <= x9 <= 1, start=0.4)
@variable(m, 0.4 <= x10 <= 1, start=0.4)
@variable(m, 0.4 <= x11 <= 1, start=0.4)
@variable(m, 0.4 <= x12 <= 1, start=0.4)
@variable(m, 0.4 <= x13 <= 1, start=0.4)
@variable(m, 0.4 <= x14 <= 1, start=0.4)
@variable(m, 0.4 <= x15 <= 1, start=0.4)
@variable(m, 0.4 <= x16 <= 1, start=0.4)
@variable(m, 0.4 <= x17 <= 1, start=0.4)
@variable(m, 0.4 <= x18 <= 1, start=0.4)
@variable(m, 0.4 <= x19 <= 1, start=0.4)
@variable(m, 0.4 <= x20 <= 1, start=0.4)
@variable(m, 0.4 <= x21 <= 1, start=0.4)
@variable(m, 0.4 <= x22 <= 1, start=0.4)
@variable(m, 0.4 <= x23 <= 1, start=0.4)
@variable(m, 0.4 <= x24 <= 1, start=0.4)
@variable(m, 0.4 <= x25 <= 1, start=0.4)
@variable(m, 0.4 <= x26 <= 1, start=0.4)
@variable(m, 0.4 <= x27 <= 1, start=0.4)
@variable(m, 0.4 <= x28 <= 1, start=0.4)
@variable(m, 0.4 <= x29 <= 1, start=0.4)
@variable(m, 0.4 <= x30 <= 1, start=0.4)
@variable(m, 0.4 <= x31 <= 1, start=0.4)
@variable(m, 0.4 <= x32 <= 1, start=0.4)
@variable(m, 0.4 <= x33 <= 1, start=0.4)
@variable(m, 0.4 <= x34 <= 1, start=0.4)
@variable(m, 0.4 <= x35 <= 1, start=0.4)
@variable(m, 0.4 <= x36 <= 1, start=0.4)
@variable(m, 0.4 <= x37 <= 1, start=0.4)
@variable(m, 0.4 <= x38 <= 1, start=0.4)
@variable(m, 0.4 <= x39 <= 1, start=0.4)
@variable(m, 0.4 <= x40 <= 1, start=0.4)
@variable(m, 0.4 <= x41 <= 1, start=0.4)
@variable(m, 102.14 <= x42, start=102.14)
@variable(m, 176.07 <= x43, start=176.07)
@variable(m, 0 <= x44 <= 1, start=0)
@variable(m, 0 <= x45 <= 1, start=0)
@variable(m, 0 <= x46 <= 1, start=0)
@variable(m, 0 <= x47 <= 1, start=0)
@variable(m, 0 <= x48 <= 1, start=0)
@variable(m, 0 <= x49 <= 1, start=0)
@variable(m, 0 <= x50 <= 1, start=0)
@variable(m, 0 <= x51 <= 1, start=0)
@variable(m, 0 <= x52 <= 1, start=0)
@variable(m, 0 <= x53 <= 1, start=0)
@variable(m, 0 <= x54 <= 1, start=0)
@variable(m, 0 <= x55 <= 1, start=0)
@variable(m, 0 <= x56 <= 1, start=0)
@variable(m, 0 <= x57 <= 1, start=0)
@variable(m, 0 <= x58 <= 1, start=0)
@variable(m, 0 <= x59 <= 1, start=0)
@variable(m, 0 <= x60 <= 1, start=0)
@variable(m, 0 <= x61 <= 1, start=0)
@variable(m, 0 <= x62 <= 1, start=0)
@variable(m, 0 <= b63 <= 1, binary=true, start=0)
@variable(m, 0 <= b64 <= 1, binary=true, start=0)
@variable(m, 0 <= i65 <= 28, integer=true, start=0)
@variable(m, 0 <= i66 <= 28, integer=true, start=0)
@variable(m, 0 <= i67 <= 28, integer=true, start=0)
@variable(m, 0 <= i68 <= 25, integer=true, start=0)
@variable(m, 0 <= i69 <= 25, integer=true, start=0)
@variable(m, 0 <= i70 <= 13, integer=true, start=0)
@variable(m, 0 <= i71 <= 12, integer=true, start=0)
@variable(m, 0 <= i72 <= 11, integer=true, start=0)
@variable(m, 0 <= i73 <= 7, integer=true, start=0)
@variable(m, 0 <= i74 <= 4, integer=true, start=0)
@variable(m, 0 <= i75 <= 3, integer=true, start=0)
@variable(m, 0 <= i76 <= 19, integer=true, start=0)
@variable(m, 0 <= i77 <= 12, integer=true, start=0)
@variable(m, 0 <= i78 <= 7, integer=true, start=0)
@variable(m, 0 <= i79 <= 4, integer=true, start=0)
@variable(m, 0 <= i80 <= 3, integer=true, start=0)
@variable(m, 0 <= i81 <= 2, integer=true, start=0)
@variable(m, 0 <= i82 <= 2, integer=true, start=0)
@variable(m, 0 <= i83 <= 2, integer=true, start=0)
@variable(m, 0 <= i84 <= 28, integer=true, start=0)
@variable(m, 0 <= i85 <= 28, integer=true, start=0)
@variable(m, 0 <= i86 <= 28, integer=true, start=0)
@variable(m, 0 <= i87 <= 15, integer=true, start=0)
@variable(m, 0 <= i88 <= 15, integer=true, start=0)
@variable(m, 0 <= i89 <= 7, integer=true, start=0)
@variable(m, 0 <= i90 <= 7, integer=true, start=0)
@variable(m, 0 <= i91 <= 6, integer=true, start=0)
@variable(m, 0 <= i92 <= 4, integer=true, start=0)
@variable(m, 0 <= i93 <= 2, integer=true, start=0)
@variable(m, 0 <= i94 <= 1, integer=true, start=0)
@variable(m, 0 <= i95 <= 11, integer=true, start=0)
@variable(m, 0 <= i96 <= 7, integer=true, start=0)
@variable(m, 0 <= i97 <= 4, integer=true, start=0)
@variable(m, 0 <= i98 <= 2, integer=true, start=0)
@variable(m, 0 <= i99 <= 1, integer=true, start=0)
@variable(m, 0 <= i100 <= 1, integer=true, start=0)
@variable(m, 0 <= i101 <= 1, integer=true, start=0)
@variable(m, 0 <= i102 <= 1, integer=true, start=0)

@objective(m, Min, x2 + x3)

@constraint(m, x3 - 2.45*b63 - 2.45*b64 == 0)

JuMP.add_NL_constraint(m, :(-(0.98488578017961*$(x42)^0.5 + 0.98488578017961*$(x43)^0.5) + $(x2) == 0))

@constraint(m,  - 168*b63 + 6*i65 + 6*i66 + 6*i67 + 6*i68 + 6*i69 + 6*i70 + 6*i71 + 6*i72 + 6*i73 + 6*i74 + 6*i75
     + 6*i76 + 6*i77 + 6*i78 + 6*i79 + 6*i80 + 6*i81 + 6*i82 + 6*i83 <= 0)

@constraint(m,  - 168*b64 + 6*i84 + 6*i85 + 6*i86 + 6*i87 + 6*i88 + 6*i89 + 6*i90 + 6*i91 + 6*i92 + 6*i93 + 6*i94
     + 6*i95 + 6*i96 + 6*i97 + 6*i98 + 6*i99 + 6*i100 + 6*i101 + 6*i102 <= 0)

JuMP.add_NL_constraint(m, :(-0.000384615384615385*($(i65)*$(x4)*$(x42) + $(i84)*$(x23)*$(x43)) + $(x44) == -1))

JuMP.add_NL_constraint(m, :(-0.000434782608695652*($(i66)*$(x5)*$(x42) + $(i85)*$(x24)*$(x43)) + $(x45) == -1))

JuMP.add_NL_constraint(m, :(-0.000588235294117647*($(i67)*$(x6)*$(x42) + $(i86)*$(x25)*$(x43)) + $(x46) == -1))

JuMP.add_NL_constraint(m, :(-0.00188679245283019*($(i68)*$(x7)*$(x42) + $(i87)*$(x26)*$(x43)) + $(x47) == -1))

JuMP.add_NL_constraint(m, :(-0.00188679245283019*($(i69)*$(x8)*$(x42) + $(i88)*$(x27)*$(x43)) + $(x48) == -1))

JuMP.add_NL_constraint(m, :(-0.00357142857142857*($(i70)*$(x9)*$(x42) + $(i89)*$(x28)*$(x43)) + $(x49) == -1))

JuMP.add_NL_constraint(m, :(-0.004*($(i71)*$(x10)*$(x42) + $(i90)*$(x29)*$(x43)) + $(x50) == -1))

JuMP.add_NL_constraint(m, :(-0.00434782608695652*($(i72)*$(x11)*$(x42) + $(i91)*$(x30)*$(x43)) + $(x51) == -1))

JuMP.add_NL_constraint(m, :(-0.00625*($(i73)*$(x12)*$(x42) + $(i92)*$(x31)*$(x43)) + $(x52) == -1))

JuMP.add_NL_constraint(m, :(-0.0111111111111111*($(i74)*$(x13)*$(x42) + $(i93)*$(x32)*$(x43)) + $(x53) == -1))

JuMP.add_NL_constraint(m, :(-0.0142857142857143*($(i75)*$(x14)*$(x42) + $(i94)*$(x33)*$(x43)) + $(x54) == -1))

JuMP.add_NL_constraint(m, :(-0.00256410256410256*($(i76)*$(x15)*$(x42) + $(i95)*$(x34)*$(x43)) + $(x55) == -1))

JuMP.add_NL_constraint(m, :(-0.004*($(i77)*$(x16)*$(x42) + $(i96)*$(x35)*$(x43)) + $(x56) == -1))

JuMP.add_NL_constraint(m, :(-0.00625*($(i78)*$(x17)*$(x42) + $(i97)*$(x36)*$(x43)) + $(x57) == -1))

JuMP.add_NL_constraint(m, :(-0.01*($(i79)*$(x18)*$(x42) + $(i98)*$(x37)*$(x43)) + $(x58) == -1))

JuMP.add_NL_constraint(m, :(-0.0142857142857143*($(i80)*$(x19)*$(x42) + $(i99)*$(x38)*$(x43)) + $(x59) == -1))

JuMP.add_NL_constraint(m, :(-0.02*($(i81)*$(x20)*$(x42) + $(i100)*$(x39)*$(x43)) + $(x60) == -1))

JuMP.add_NL_constraint(m, :(-0.02*($(i82)*$(x21)*$(x42) + $(i101)*$(x40)*$(x43)) + $(x61) == -1))

JuMP.add_NL_constraint(m, :(-0.02*($(i83)*$(x22)*$(x42) + $(i102)*$(x41)*$(x43)) + $(x62) == -1))

@constraint(m, x42 - 102.14*b63 >= 0)

@constraint(m, x43 - 176.07*b64 >= 0)

@constraint(m, x42 - 250*b63 <= 0)

@constraint(m, x43 - 250*b64 <= 0)
