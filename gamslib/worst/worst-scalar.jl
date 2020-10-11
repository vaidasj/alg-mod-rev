#  NLP written by GAMS Convert at 10/11/20 12:25:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         30       30        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         35       35        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        112       59       53        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, x13, start=0)
@variable(m, x14, start=0)
@variable(m, x15, start=0)
@variable(m, x16, start=0)
@variable(m, x17, start=0)
@variable(m, 0.001 <= x18, start=96.1523975231246)
@variable(m, 0.001 <= x19, start=95.8007796007676)
@variable(m, 0.001 <= x20, start=96.1523975231246)
@variable(m, 0.001 <= x21, start=95.8007796007676)
@variable(m, 0.001 <= x22, start=95.303225278852)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)
@variable(m, 0.05245 <= x31 <= 0.0857, start=0.069075)
@variable(m, 0.06175 <= x32 <= 0.095, start=0.078375)
@variable(m, 0.0619 <= x33 <= 0.0939, start=0.0779)
@variable(m, 0.0368 <= x34 <= 0.0768, start=0.0568)
@variable(m, 0.0368 <= x35 <= 0.0768, start=0.0568)

@objective(m, Max, x18 + x19 + x20 + x21 + x22 - 30000*x23 + 25000*x24 - 30000*x25 - 50000*x26 + 25000*x27 + 5000*x28
     + 15000*x29 + 50000*x30 + 20682900)

JuMP.add_NL_constraint(m, :(-95.54*exp(0.09167*$(x31)) + $(x18) == 0))

JuMP.add_NL_constraint(m, :(-93.27*exp(0.33889*$(x32)) + $(x19) == 0))

JuMP.add_NL_constraint(m, :(-95.54*exp(0.09167*$(x31)) + $(x20) == 0))

JuMP.add_NL_constraint(m, :(-93.27*exp(0.33889*$(x32)) + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-91.03*exp(0.58889*$(x33)) + $(x22) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.33889*$(x32))*(errorf($(x2))*$(x21) - 95*errorf($(x10))) + $(x23) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.33889*$(x32))*(errorf($(x3))*$(x21) - 97*errorf($(x11))) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.58889*$(x33))*(errorf($(x6))*$(x22) - 95*errorf($(x14))) + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.58889*$(x33))*(errorf($(x7))*$(x22) - 97*errorf($(x15))) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.58889*$(x33))*(errorf($(x8))*$(x22) - 99*errorf($(x16))) + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.33889*$(x32))*(95*errorf(-$(x12)) - errorf(-$(x4))*$(x21)) + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.33889*$(x32))*(97*errorf(-$(x13)) - errorf(-$(x5))*$(x21)) + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-exp(-0.58889*$(x33))*(99*errorf(-$(x17)) - errorf(-$(x9))*$(x22)) + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-1.71779218689115*(log(0.0105263157894737*$(x21)) + 0.169445*$(x34)^2)/$(x34) + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-1.71779218689115*(log(0.0103092783505155*$(x21)) + 0.169445*$(x34)^2)/$(x34) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-1.71779218689115*(log(0.0105263157894737*$(x21)) + 0.169445*$(x34)^2)/$(x34) + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-1.71779218689115*(log(0.0103092783505155*$(x21)) + 0.169445*$(x34)^2)/$(x34) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-1.30311549893554*(log(0.0105263157894737*$(x22)) + 0.294445*$(x35)^2)/$(x35) + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-1.30311549893554*(log(0.0103092783505155*$(x22)) + 0.294445*$(x35)^2)/$(x35) + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-1.30311549893554*(log(0.0101010101010101*$(x22)) + 0.294445*$(x35)^2)/$(x35) + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-1.30311549893554*(log(0.0101010101010101*$(x22)) + 0.294445*$(x35)^2)/$(x35) + $(x9) == 0))

@constraint(m,  - x2 + x10 + 0.582142594215541*x34 == 0)

@constraint(m,  - x3 + x11 + 0.582142594215541*x34 == 0)

@constraint(m,  - x4 + x12 + 0.582142594215541*x34 == 0)

@constraint(m,  - x5 + x13 + 0.582142594215541*x34 == 0)

@constraint(m,  - x6 + x14 + 0.767391686168152*x35 == 0)

@constraint(m,  - x7 + x15 + 0.767391686168152*x35 == 0)

@constraint(m,  - x8 + x16 + 0.767391686168152*x35 == 0)

@constraint(m,  - x9 + x17 + 0.767391686168152*x35 == 0)
