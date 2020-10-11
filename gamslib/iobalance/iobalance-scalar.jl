#  NLP written by GAMS Convert at 10/11/20 14:03:18
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         28       19        9        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x2, start=1)
@variable(m, 1 <= x3, start=1)
@variable(m, 1 <= x4, start=1)
@variable(m, 1 <= x5, start=1)
@variable(m, 1 <= x6, start=1)
@variable(m, 1 <= x7, start=1)
@variable(m, 1 <= x8, start=1)
@variable(m, 1 <= x9, start=1)
@variable(m, 1 <= x10, start=1)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(log(0.0197941409342835*$(x2))*$(x2) + log(0.0352112676056338*$(x3))*$(x3) + 
    log(0.0721136511141559*$(x4))*$(x4) + log(0.0113109376767334*$(x5))*$(x5) + log(0.0142555739294064*$(x6))*$(x6) + 
    log(0.0133342222814854*$(x7))*$(x7) + log(0.0913575735428467*$(x8))*$(x8) + log(0.0141410713275638*$(x9))*$(x9) + 
    log(0.0243694407213354*$(x10))*$(x10)))

@constraint(m, x2 + x3 + x4 == 245)

@constraint(m, x5 + x6 + x7 == 136)

@constraint(m, x8 + x9 + x10 == 159)

@constraint(m, x2 + x5 + x8 == 251)

@constraint(m, x3 + x6 + x9 == 107)

@constraint(m, x4 + x7 + x10 == 182)
