#  MINLP written by GAMS Convert at 10/11/20 12:31:06
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         16        7        6        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         16       13        3        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         39       33        6        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, x4, start=100)
@variable(m, x5, start=100)
@variable(m, x6, start=100)
@variable(m, 50 <= x7 <= 700, start=50)
@variable(m, 50 <= x8 <= 700, start=50)
@variable(m, 50 <= x9 <= 700, start=50)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13 <= 4000, start=0)
@variable(m, 0 <= x14 <= 4000, start=0)
@variable(m, 2000 <= x15 <= 4000, start=2000)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(0.0025*$(x7)^2 + 6*$(x7) + 0.0025*$(x8)^2 + 6*$(x8) + 0.0025*$(x9)^2 + 6*$(x9)
     + 900))

@constraint(m,  - 100*b1 + x4 >= 0)

@constraint(m,  - 100*b2 + x5 >= 0)

@constraint(m,  - 100*b3 + x6 >= 0)

@constraint(m,  - 500*b1 + x4 <= 0)

@constraint(m,  - 500*b2 + x5 <= 0)

@constraint(m,  - 500*b3 + x6 <= 0)

@constraint(m, x10 + x13 == 3500)

@constraint(m, x11 - x13 + x14 == 500)

@constraint(m, x12 - x14 + x15 == 500)

@constraint(m, x4 + x7 >= 400)

@constraint(m, x5 + x8 >= 900)

@constraint(m, x6 + x9 >= 700)

JuMP.add_NL_constraint(m, :(-(0.005*$(x4)^2 + $(x4)) - 50*$(b1) + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-(0.005*$(x5)^2 + $(x5)) - 50*$(b2) + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-(0.005*$(x6)^2 + $(x6)) - 50*$(b3) + $(x12) == 0))
