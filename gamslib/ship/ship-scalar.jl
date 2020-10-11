#  NLP written by GAMS Convert at 10/11/20 12:17:14
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         18        5       13        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         55       26       29        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=934.032)
@variable(m, x2, start=934.032)
@variable(m, x3, start=1011.868)
@variable(m, 1.05 <= x4, start=1.2)
@variable(m, 1.05 <= x5, start=1.2)
@variable(m, 1.05 <= x6, start=1.3)
@variable(m, x7, start=45.8)
@variable(m, x8, start=43.2)
@variable(m, x9, start=30.5)
@variable(m, 1 <= x10, start=76.3939536510076)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(0.001*(3.9*$(x7) + 3.9*$(x8))*(495*$(x4) + 385*$(x5) + 315*$(x6))/$(x10)))

JuMP.add_NL_constraint(m, :(-0.5*$(x9)*$(x4)*(0.8*$(x7) + 0.333333333333333*$(x8)) + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-0.5*$(x9)*$(x5)*(0.8*$(x7) + 0.333333333333333*$(x8)) + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-0.5*$(x9)*$(x6)*(0.8*$(x7) + 0.333333333333333*$(x8)) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-sqrt($(x8)*$(x8) - $(x9)*$(x9)) - $(x7) + $(x10) == 0))

@constraint(m, x1 - 8.4652734375*x10 >= 0)

@constraint(m, x2 - 9.65006510416667*x10 >= 0)

@constraint(m, x3 - 8.8716796875*x10 >= 0)

JuMP.add_NL_constraint(m, :(0.5*$(x1)*$(x9) - 2.2*(8.4652734375*$(x10))^1.33333333333333 >= 0))

JuMP.add_NL_constraint(m, :(0.5*$(x2)*$(x9) - 2.2*(9.65006510416667*$(x10))^1.33333333333333 >= 0))

JuMP.add_NL_constraint(m, :(0.5*$(x3)*$(x9) - 2.2*(8.8716796875*$(x10))^1.33333333333333 >= 0))

@constraint(m, x4 - 0.0111771747883801*x7 >= 0.2)

@constraint(m, x5 - 0.0137655360411427*x7 >= 0.2)

@constraint(m, x6 - 0.0155663872253648*x7 >= 0.2)

@constraint(m, x4 - 0.0111771747883801*x8 >= 0.2)

@constraint(m, x5 - 0.0137655360411427*x8 >= 0.2)

@constraint(m, x6 - 0.0155663872253648*x8 >= 0.2)

@constraint(m, x8 - x9 >= 0)
