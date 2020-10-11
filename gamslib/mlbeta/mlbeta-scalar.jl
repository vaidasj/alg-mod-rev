#  NLP written by GAMS Convert at 10/11/20 13:00:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          1        1        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
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

@variable(m, 0.0001 <= x1, start=0.406253228038076)
@variable(m, 0.0001 <= x2, start=0.702047665836708)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(75*(LogGamma($(x1) + $(x2)) - LogGamma($(x1)) - LogGamma($(x2))) - 
    149.384617555698*$(x1) - 61.9950852353139*$(x2) + 211.379702791012))
