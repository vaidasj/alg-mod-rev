#  NLP written by GAMS Convert at 10/11/20 12:18:59
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23        1        0       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         21       21        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        129      103       26        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.2 <= x2, start=0.5942)
@variable(m, 0.2 <= x3, start=1.6167)
@variable(m, 0.2 <= x4, start=1.31077)
@variable(m, 0 <= x5, start=352)
@variable(m, 0 <= x6, start=430)
@variable(m, 0 <= x7, start=222)
@variable(m, 0 <= x8, start=292)
@variable(m, 0 <= x9, start=0.130670360422406)
@variable(m, 0 <= x10, start=0.130670360422406)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=500.14934)
@variable(m, 0 <= x21, start=638.25084)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x5)*$(x2) + $(x6)*$(x2) + $(x7)*$(x4) + $(x8)*$(x4) - 3712*$(x9)
     - 5000*$(x10)))

@constraint(m, x5 + x6 - 0.94*x11 - 0.94*x12 - 0.94*x13 + 0.244*x17 + 0.244*x18 + 0.244*x19 <= 0)

@constraint(m, 0.064*x11 + 0.064*x12 + 0.064*x13 - 0.58*x14 - 0.58*x15 - 0.58*x16 + 0.172*x17 + 0.172*x18 + 0.172*x19
     <= 0)

@constraint(m, x7 + x8 + 0.048*x11 + 0.048*x12 + 0.048*x13 + 0.247*x14 + 0.247*x15 + 0.247*x16 - 0.916*x17 - 0.916*x18
     - 0.916*x19 <= 0)

@constraint(m, x11 + 1.2*x12 + 0.8*x13 + 2*x14 + 1.8*x15 + 2.4*x16 + 3*x17 + 2.7*x18 + 3.2*x19 <= 3712)

@constraint(m, 2*x11 + 1.8*x12 + 2.2*x13 + 3*x14 + 3.5*x15 + 2.3*x16 + 3*x17 + 3.2*x18 + 2.7*x19 <= 5000)

JuMP.add_NL_constraint(m, :(-1.86209632732148*$(x2)^(-0.601754015877537)*$(x4)^(-0.19999800801138)*$(x20)^
    0.801752023888917 + $(x5) <= 0))

JuMP.add_NL_constraint(m, :(-7.12433327783374*$(x2)^(-0.469809650019847)*$(x4)^(-0.132728646338701)*$(x21)^
    0.602538296358548 + $(x6) <= 0))

JuMP.add_NL_constraint(m, :(-0.198865817348442*$(x2)^(-0.286251155604637)*$(x4)^(-0.85624547843707)*$(x20)^
    1.14249663404171 + $(x7) <= 0))

JuMP.add_NL_constraint(m, :(-0.087748933275084*$(x2)^(-0.353935053865204)*$(x4)^(-0.911395368487747)*$(x21)^
    1.26533042235295 + $(x8) <= 0))

JuMP.add_NL_constraint(m, :($(x5)*$(x2) + $(x7)*$(x4) - $(x20) <= 0))

JuMP.add_NL_constraint(m, :($(x6)*$(x2) + $(x8)*$(x4) - $(x21) <= 0))

@constraint(m,  - 3340.8*x9 - 500*x10 + x20 <= 0)

@constraint(m,  - 371.2*x9 - 4500*x10 + x21 <= 0)

@constraint(m, 0.94*x2 - 0.064*x3 - 0.048*x4 - x9 - 2*x10 <= 0)

@constraint(m, 0.94*x2 - 0.064*x3 - 0.048*x4 - 1.2*x9 - 1.8*x10 <= 0)

@constraint(m, 0.94*x2 - 0.064*x3 - 0.048*x4 - 0.8*x9 - 2.2*x10 <= 0)

@constraint(m, 0.58*x3 - 0.247*x4 - 2*x9 - 3*x10 <= 0)

@constraint(m, 0.58*x3 - 0.247*x4 - 1.8*x9 - 3.5*x10 <= 0)

@constraint(m, 0.58*x3 - 0.247*x4 - 2.4*x9 - 2.3*x10 <= 0)

@constraint(m,  - 0.244*x2 - 0.172*x3 + 0.916*x4 - 3*x9 - 3*x10 <= 0)

@constraint(m,  - 0.244*x2 - 0.172*x3 + 0.916*x4 - 2.7*x9 - 3.2*x10 <= 0)

@constraint(m,  - 0.244*x2 - 0.172*x3 + 0.916*x4 - 3.2*x9 - 2.7*x10 <= 0)
