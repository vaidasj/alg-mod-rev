#  MINLP written by GAMS Convert at 10/11/20 12:26:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         20        6       13        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         20       11        9        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         53       43       10        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=1)
@variable(m, 0 <= b8 <= 1, binary=true, start=1)
@variable(m, 0 <= b9 <= 1, binary=true, start=1)
@variable(m, 5.52146091786225 <= x10 <= 7.82404601085629, start=6.70502272492805)
@variable(m, 5.52146091786225 <= x11 <= 7.82404601085629, start=7.11048783303622)
@variable(m, 5.52146091786225 <= x12 <= 7.82404601085629, start=7.30700912709102)
@variable(m, 5.40367788220586 <= x13 <= 6.4377516497364, start=5.92071476597113)
@variable(m, 4.60517018598809 <= x14 <= 6.03228654162824, start=5.31872836380816)
@variable(m, 1.89711998488588 <= x15 <= 2.99573227355399, start=1.89711998488588)
@variable(m, 1.38629436111989 <= x16 <= 2.484906649788, start=1.38629436111989)
@variable(m, 0 <= x17 <= 1.09861228866811, start=1.09861228866811)
@variable(m, 0 <= x18 <= 1.09861228866811, start=1.09861228866811)
@variable(m, 0 <= x19 <= 1.09861228866811, start=1.09861228866811)
@variable(m, x20, start=0)

@objective(m, Min, x20)

@constraint(m, x10 - x13 >= 0.693147180559945)

@constraint(m, x11 - x13 >= 1.09861228866811)

@constraint(m, x12 - x13 >= 1.38629436111989)

@constraint(m, x10 - x14 >= 1.38629436111989)

@constraint(m, x11 - x14 >= 1.79175946922805)

@constraint(m, x12 - x14 >= 1.09861228866811)

@constraint(m, x15 + x17 >= 2.07944154167984)

@constraint(m, x15 + x18 >= 2.99573227355399)

@constraint(m, x15 + x19 >= 1.38629436111989)

@constraint(m, x16 + x17 >= 2.30258509299405)

@constraint(m, x16 + x18 >= 2.484906649788)

@constraint(m, x16 + x19 >= 1.09861228866811)

JuMP.add_NL_constraint(m, :(200000*exp($(x15) - $(x13)) + 150000*exp($(x16) - $(x14)) <= 6000))

@constraint(m,  - 0.693147180559945*b4 - 1.09861228866811*b7 + x17 == 0)

@constraint(m,  - 0.693147180559945*b5 - 1.09861228866811*b8 + x18 == 0)

@constraint(m,  - 0.693147180559945*b6 - 1.09861228866811*b9 + x19 == 0)

@constraint(m, b1 + b4 + b7 == 1)

@constraint(m, b2 + b5 + b8 == 1)

@constraint(m, b3 + b6 + b9 == 1)

JuMP.add_NL_constraint(m, :(-(250*exp(0.6*$(x10) + $(x17)) + 500*exp(0.6*$(x11) + $(x18)) + 340*exp(0.6*$(x12) + $(x19))
    ) + $(x20) >= 0))
