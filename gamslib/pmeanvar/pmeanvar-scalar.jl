#  MIQCP written by GAMS Convert at 10/11/20 14:03:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         44       12       22       10        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       33       10        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        179      137       42        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, x22, start=0)
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, x25, start=0)
@variable(m, x26, start=0)
@variable(m, x27, start=0)
@variable(m, x28, start=0)
@variable(m, x29, start=0)
@variable(m, x30, start=0)
@variable(m, x31, start=0)
@variable(m, 0 <= x32, start=0)
@variable(m, 0.5 <= x33 <= 0.5, start=0.5)
@variable(m, 0 <= x34, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=0)
@variable(m, 0 <= x41, start=0)
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=0)

@objective(m, Min, x32 + 1452.87264558178*x34 + 1452.87264558178*x35 + 1452.87264558178*x36 + 1452.87264558178*x37
     + 1452.87264558178*x38 + 1452.87264558178*x39 + 1452.87264558178*x40 + 1452.87264558178*x41 + 1452.87264558178*x42
     + 1452.87264558178*x43)

@constraint(m,  - 9.87743272359323*x2 - 0.607445291494459*x3 - 0.30372264574723*x4 - 0.809927055325945*x5
     - 0.607445291494459*x6 - 0.506204409578716*x7 - 0.506204409578716*x8 - 0.809927055325945*x9 - 0.911167937241689*x10
     - 0.809927055325945*x11 + x22 == 0)

@constraint(m,  - 1.09301757851905*x3 - 6.23549450883952*x4 - 4.12437431234754*x5 - 4.23690369565314*x6
     - 7.0378634946479*x7 - 0.633574910849987*x8 - 6.8690694196895*x9 - 3.15321125158075*x10 - 6.8690694196895*x11 + x23
     == 0)

@constraint(m,  - 7.78396030268674*x4 + 2.82163650777699*x5 + 3.28928766645546*x6 + 5.01522405040153*x7
     - 0.115057290256366*x8 + 5.27726712856418*x9 + 1.27680170434983*x10 + 5.40573643738823*x11 + x24 == 0)

@constraint(m,  - 19.8478109453861*x5 + 1.27206659596757*x6 + 2.04495656699646*x7 - 0.367877401526234*x8
     + 1.75722778630175*x9 + 0.823550435809022*x10 + 2.17855856756107*x11 + x25 == 0)

@constraint(m,  - 20.9238086333115*x6 + 1.92240703366248*x7 - 0.0886327028593968*x8 + 2.15970874257025*x9
     + 0.772360159642335*x10 + 2.06214205621545*x11 + x26 == 0)

@constraint(m,  - 18.5942448971673*x7 - 0.311088883698966*x8 + 4.40811298406741*x9 + 1.51796805048201*x10
     + 4.04877290837814*x11 + x27 == 0)

@constraint(m,  - 16.4818934933157*x8 - 0.2459856646908*x9 + 0.0284240686306067*x10 - 0.188306921713024*x11 + x28 == 0)

@constraint(m,  - 7.78651860347111*x9 + 4.7434872436698*x10 + 12.2703400205172*x11 + x29 == 0)

@constraint(m,  - 9.43822042085177*x10 + 9.32710640095092*x11 + x30 == 0)

@constraint(m,  - 1.58709399995353*x11 + x31 == 0)

JuMP.add_NL_constraint(m, :(2*$(x34)*$(b12) - $(x2)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x35)*$(b13) - $(x3)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x36)*$(b14) - $(x4)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x37)*$(b15) - $(x5)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x38)*$(b16) - $(x6)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x39)*$(b17) - $(x7)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x40)*$(b18) - $(x8)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x41)*$(b19) - $(x9)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x42)*$(b20) - $(x10)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x43)*$(b21) - $(x11)^2 >= 0))

JuMP.add_NL_constraint(m, :(2*$(x33)*$(x32) - ($(x22)^2 + $(x23)^2 + $(x24)^2 + $(x25)^2 + $(x26)^2 + $(x27)^2 + $(x28)^
    2 + $(x29)^2 + $(x30)^2 + $(x31)^2) >= 0))

@constraint(m, x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 == 1)

@constraint(m, 0.00510823*x2 + 0.00428357*x3 + 0.00233976*x4 + 0.00459156*x5 + 0.0077475*x6 + 0.00851154*x7
     + 0.00961483*x8 + 0.0026363*x9 + 0.0062024*x10 + 0.00557745*x11 >= 0.0044635)

@constraint(m, x2 - 0.11665305*b12 >= 0)

@constraint(m, x3 - 0.08608984*b13 >= 0)

@constraint(m, x4 - 0.09019614*b14 >= 0)

@constraint(m, x5 - 0.12100282*b15 >= 0)

@constraint(m, x6 - 0.07911833*b16 >= 0)

@constraint(m, x7 - 0.10907854*b17 >= 0)

@constraint(m, x8 - 0.12264871*b18 >= 0)

@constraint(m, x9 - 0.1130799*b19 >= 0)

@constraint(m, x10 - 0.07906355*b20 >= 0)

@constraint(m, x11 - 0.09599385*b21 >= 0)

@constraint(m, x2 - 0.39835244*b12 <= 0)

@constraint(m, x3 - 0.39486243*b13 <= 0)

@constraint(m, x4 - 0.38205737*b14 <= 0)

@constraint(m, x5 - 0.39297053*b15 <= 0)

@constraint(m, x6 - 0.39886594*b16 <= 0)

@constraint(m, x7 - 0.40689465*b17 <= 0)

@constraint(m, x8 - 0.39141883*b18 <= 0)

@constraint(m, x9 - 0.39760512*b19 <= 0)

@constraint(m, x10 - 0.40413791*b20 <= 0)

@constraint(m, x11 - 0.38879835*b21 <= 0)
