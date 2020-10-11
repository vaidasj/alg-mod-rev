#  QCP written by GAMS Convert at 10/11/20 12:23:42
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        4        1        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         27       11       16        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 92, start=0)
@variable(m, 90 <= x2 <= 110, start=90)
@variable(m, 20 <= x3 <= 25, start=20)
@variable(m, 0 <= x4, start=0)
@variable(m, 78 <= x5 <= 102, start=78.62)
@variable(m, 33 <= x6 <= 45, start=33.44)
@variable(m, 27 <= x7 <= 45, start=31.07)
@variable(m, 27 <= x8 <= 45, start=44.18)
@variable(m, 27 <= x9 <= 45, start=35.22)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(5.3578547*$(x7)^2 + 0.8356891*$(x5)*$(x9) + 37.293239*$(x5) + 5000*$(x4)
     - 40792.141))

@constraint(m, 5*x4 - x5 + 7*x7 - x9 >= 0)

JuMP.add_NL_constraint(m, :(-(0.0056858*$(x6)*$(x9) + 0.0006262*$(x5)*$(x8) - 0.0022053*$(x7)*$(x9)) + $(x1) + 2*$(x4)
     == 85.334407))

JuMP.add_NL_constraint(m, :(-(0.0071317*$(x6)*$(x9) + 0.0029955*$(x5)*$(x6) + 0.0021813*$(x7)^2) + $(x2) == 80.51249))

JuMP.add_NL_constraint(m, :(-(0.0047026*$(x7)*$(x9) + 0.0012547*$(x5)*$(x7) + 0.0019085*$(x7)*$(x8)) + $(x3) + 4*$(x4)
     == 9.300961))
