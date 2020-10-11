#  MCP written by GAMS Convert at 10/11/20 12:28:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        0        8        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          8        8        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         32        6       26        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1 <= 1, start=1)
@variable(m, 0.0001 <= x2, start=1)
@variable(m, 0.0001 <= x3, start=1)
@variable(m, 0.0001 <= x4, start=1)
@variable(m, 0 <= x5, start=10)
@variable(m, 0 <= x6, start=10)
@variable(m, 0 <= x7, start=25)
@variable(m, 0 <= x8, start=60)

JuMP.add_NL_constraint(m, :(-(1.5*(0.4*(0.36*$(x1)^(-1) + 0.16*(1.5*$(x2))^(-1))^(-1)/$(x1))^2*$(x5) + 0.707106781186548
    *(0.35*(0.836660026534076*$(x1)^0.5 + 0.547722557505166*$(x2)^0.5)^2/$(x1))^0.5*$(x6)) >= -60))

JuMP.add_NL_constraint(m, :(-(1.5*(0.177777777777778*(0.36*$(x1)^(-1) + 0.16*(1.5*$(x2))^(-1))^(-1)/$(x2))^2*$(x5) + 
    0.707106781186548*(0.15*(0.836660026534076*$(x1)^0.5 + 0.547722557505166*$(x2)^0.5)^2/$(x2))^0.5*$(x6)) >= -25))

JuMP.add_NL_constraint(m, :(-(0.5*$(x7)/(0.5*$(x3)^(-0.5) + 0.5*$(x4)^(-0.5))*(1/$(x3))^1.5 + 0.3*$(x8)/(0.3*$(x3)^0.25
     + 0.7*$(x4)^0.25)*(1/$(x3))^0.75) + $(x5) >= 0))

JuMP.add_NL_constraint(m, :(-(0.5*$(x7)/(0.5*$(x3)^(-0.5) + 0.5*$(x4)^(-0.5))*(1/$(x4))^1.5 + 0.7*$(x8)/(0.3*$(x3)^0.25
     + 0.7*$(x4)^0.25)*(1/$(x4))^0.75) + $(x6) >= 0))

JuMP.add_NL_constraint(m, :(0.666666666666667*(0.36*$(x1)^(-1) + 0.16*(1.5*$(x2))^(-1))^(-1) - $(x3) >= 0))

JuMP.add_NL_constraint(m, :(0.5*(0.836660026534076*$(x1)^0.5 + 0.547722557505166*$(x2)^0.5)^2 - $(x4) >= 0))

JuMP.add_NL_constraint(m, :(-(0.3*$(x2)*$(x5)*(0.177777777777778*(0.36*$(x1)^(-1) + 0.16*(1.5*$(x2))^(-1))^(-1)/$(x2))^2
     + 25*$(x2)) + $(x7) >= 0))

JuMP.add_NL_constraint(m, :(-(0.45*$(x2)*$(x5)*(0.177777777777778*(0.36*$(x1)^(-1) + 0.16*(1.5*$(x2))^(-1))^(-1)/$(x2))^
    2 + 60*$(x1)) + $(x8) >= 0))
