#  NLP written by GAMS Convert at 10/11/20 12:30:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        2        1        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         12        6        6        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 50 <= x1 <= 200, start=50)
@variable(m, 37.5 <= x2 <= 150, start=37.5)
@variable(m, 45 <= x3 <= 180, start=45)
@variable(m, 0 <= x4 <= 0, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(240 + 200 + 213.1 + 11.669*$(x1) + 0.00533*$(x1)^2 + 10.333*$(x2) + 0.00889*
    $(x2)^2 + 10.833*$(x3) + 0.00741*$(x3)^2))

JuMP.add_NL_constraint(m, :(-(0.01*(0.0676*$(x1)*$(x1) + 0.00953*$(x1)*$(x2) - 0.00507*$(x1)*$(x3) + 0.00953*$(x2)*$(x1)
     + 0.0521*$(x2)*$(x2) + 0.00901*$(x2)*$(x3) - 0.00507*$(x3)*$(x1) + 0.00901*$(x3)*$(x2) + 0.0294*$(x3)*$(x3)) - 
    0.000766*$(x1) - 3.42e-5*$(x2) + 0.000189*$(x3)) + $(x4) == 0.040357))

@constraint(m, x1 + x2 + x3 - x4 >= 210)
