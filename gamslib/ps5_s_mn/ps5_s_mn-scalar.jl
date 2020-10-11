#  NLP written by GAMS Convert at 10/11/20 14:00:08
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21        6       15        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         16       16        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         58       53        5        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.0001 <= x1, start=0.0001)
@variable(m, 0.0001 <= x2, start=0.0001)
@variable(m, 0.0001 <= x3, start=0.0001)
@variable(m, 0.0001 <= x4, start=0.0001)
@variable(m, 0.0001 <= x5, start=0.0001)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)

@objective(m, Max, 0.204031699713663*x6 + 0.106424863577545*x7 + 0.0588209224827239*x8 + 0.268958777758543*x9
     + 0.361763736467525*x10 - 0.204031699713663*x11 - 0.106424863577545*x12 - 0.0588209224827239*x13
     - 0.268958777758543*x14 - 0.361763736467525*x15)

JuMP.add_NL_constraint(m, :(-$(x1)^0.5 + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-$(x2)^0.5 + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-$(x3)^0.5 + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-$(x4)^0.5 + $(x9) == 0))

JuMP.add_NL_constraint(m, :(-$(x5)^0.5 + $(x10) == 0))

@constraint(m,  - 0.2*x1 + x11 >= 0)

@constraint(m,  - 0.4*x2 + x12 >= 0)

@constraint(m,  - 0.6*x3 + x13 >= 0)

@constraint(m,  - 0.8*x4 + x14 >= 0)

@constraint(m,  - x5 + x15 >= 0)

@constraint(m,  - 0.2*x1 + 0.2*x2 + x11 - x12 >= 0)

@constraint(m,  - 0.4*x2 + 0.4*x3 + x12 - x13 >= 0)

@constraint(m,  - 0.6*x3 + 0.6*x4 + x13 - x14 >= 0)

@constraint(m,  - 0.8*x4 + 0.8*x5 + x14 - x15 >= 0)

@constraint(m,  - x5 + x15 >= 0)

@constraint(m, x1 - x2 >= 0)

@constraint(m, x2 - x3 >= 0)

@constraint(m, x3 - x4 >= 0)

@constraint(m, x4 - x5 >= 0)

@constraint(m, x5 >= 0)
