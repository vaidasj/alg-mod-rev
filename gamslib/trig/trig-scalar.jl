#  NLP written by GAMS Convert at 10/11/20 12:50:14
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        1        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          2        2        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          3        1        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, -2 <= x1 <= 5, start=1)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(sin(11*$(x1)) + cos(13*$(x1)) - sin(17*$(x1)) - cos(19*$(x1))))

JuMP.add_NL_constraint(m, :(5*sin($(x1)) - $(x1) <= 0))
