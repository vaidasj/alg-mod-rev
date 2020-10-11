#  MINLP written by GAMS Convert at 10/11/20 13:32:56
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         74       23       27       24        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         47       38        9        0        0        0        0        0
#  FX      5        1        4        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        291      228       63        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
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
@variable(m, 0 <= x12, start=0)
@variable(m, 643 <= x13 <= 643, start=643)
@variable(m, 643 <= x14 <= 4018.36, start=643)
@variable(m, 643 <= x15 <= 4018.36, start=643)
@variable(m, 536 <= x16 <= 3348.63, start=536)
@variable(m, 536 <= x17 <= 3348.63, start=536)
@variable(m, 536 <= x18 <= 3348.63, start=536)
@variable(m, 214 <= x19 <= 1339.45, start=214)
@variable(m, 214 <= x20 <= 1339.45, start=214)
@variable(m, 214 <= x21 <= 1339.45, start=214)
@variable(m, 643 <= x22 <= 4018.36, start=643)
@variable(m, 536 <= x23 <= 3348.63, start=536)
@variable(m, 214 <= x24 <= 1339.45, start=214)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)
@variable(m, 0 <= x31, start=0)
@variable(m, 0 <= x32, start=0)
@variable(m, 0 <= x33, start=0)
@variable(m, 0 <= x34, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 1 <= b38 <= 1, binary=true, start=1)
@variable(m, 0 <= b39 <= 0, binary=true, start=0)
@variable(m, 0 <= b40 <= 1, binary=true, start=0.550375356)
@variable(m, 0 <= b41 <= 0, binary=true, start=0)
@variable(m, 0 <= b42 <= 1, binary=true, start=0.292212117)
@variable(m, 0 <= b43 <= 1, binary=true, start=0.224052867)
@variable(m, 0 <= b44 <= 0, binary=true, start=0)
@variable(m, 0 <= b45 <= 1, binary=true, start=0.856270347)
@variable(m, 0 <= b46 <= 1, binary=true, start=0.067113723)
@variable(m, x47, start=0)

@objective(m, Min, x47)

@constraint(m, x1 + x2 + x3 - x37 + 0.4*b38 + 0.4*b39 + 0.4*b40 + 0.2*b41 + 0.2*b42 + 0.2*b43 + 0.1*b44 + 0.1*b45
     + 0.1*b46 == 0)

@constraint(m, b38 + b41 + b44 <= 1)

@constraint(m, b39 + b42 + b45 <= 1)

@constraint(m, b40 + b43 + b46 <= 1)

@constraint(m, 11.4794520547945*x1 - x4 - x13 + x14 + 4.59178082191781*b38 + 2.2958904109589*b41 + 1.14794520547945*b44
     == 0)

@constraint(m, 11.4794520547945*x2 - x5 - x14 + x15 + 4.59178082191781*b39 + 2.2958904109589*b42 + 1.14794520547945*b45
     == 0)

@constraint(m, 11.4794520547945*x3 - x6 + x13 - x15 + 4.59178082191781*b40 + 2.2958904109589*b43 + 1.14794520547945*b46
     == 0)

@constraint(m, 9.56712328767123*x1 - x7 - x16 + x17 + 3.82684931506849*b38 + 1.91342465753425*b41
     + 0.956712328767123*b44 == 0)

@constraint(m, 9.56712328767123*x2 - x8 - x17 + x18 + 3.82684931506849*b39 + 1.91342465753425*b42
     + 0.956712328767123*b45 == 0)

@constraint(m, 9.56712328767123*x3 - x9 + x16 - x18 + 3.82684931506849*b40 + 1.91342465753425*b43
     + 0.956712328767123*b46 == 0)

@constraint(m, 3.82739726027397*x1 - x10 - x19 + x20 + 1.53095890410959*b38 + 0.765479452054795*b41
     + 0.382739726027397*b44 == 0)

@constraint(m, 3.82739726027397*x2 - x11 - x20 + x21 + 1.53095890410959*b39 + 0.765479452054795*b42
     + 0.382739726027397*b45 == 0)

@constraint(m, 3.82739726027397*x3 - x12 + x19 - x21 + 1.53095890410959*b40 + 0.765479452054795*b43
     + 0.382739726027397*b46 == 0)

@constraint(m, x13 - x22 <= 0)

@constraint(m, x14 - x22 <= 0)

@constraint(m, x15 - x22 <= 0)

@constraint(m, x16 - x23 <= 0)

@constraint(m, x17 - x23 <= 0)

@constraint(m, x18 - x23 <= 0)

@constraint(m, x19 - x24 <= 0)

@constraint(m, x20 - x24 <= 0)

@constraint(m, x21 - x24 <= 0)

JuMP.add_NL_constraint(m, :(-50*$(x1)*$(b38) + $(x4) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x2)*$(b39) + $(x5) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x3)*$(b40) + $(x6) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x1)*$(b41) + $(x7) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x2)*$(b42) + $(x8) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x3)*$(b43) + $(x9) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x1)*$(b44) + $(x10) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x2)*$(b45) + $(x11) <= 0))

JuMP.add_NL_constraint(m, :(-50*$(x3)*$(b46) + $(x12) <= 0))

JuMP.add_NL_constraint(m, :(-15*$(x1)*$(b38) + $(x4) >= 0))

JuMP.add_NL_constraint(m, :(-15*$(x2)*$(b39) + $(x5) >= 0))

JuMP.add_NL_constraint(m, :(-15*$(x3)*$(b40) + $(x6) >= 0))

JuMP.add_NL_constraint(m, :(-15*$(x1)*$(b41) + $(x7) >= 0))

JuMP.add_NL_constraint(m, :(-15*$(x2)*$(b42) + $(x8) >= 0))

JuMP.add_NL_constraint(m, :(-15*$(x3)*$(b43) + $(x9) >= 0))

JuMP.add_NL_constraint(m, :(-7*$(x1)*$(b44) + $(x10) >= 0))

JuMP.add_NL_constraint(m, :(-7*$(x2)*$(b45) + $(x11) >= 0))

JuMP.add_NL_constraint(m, :(-7*$(x3)*$(b46) + $(x12) >= 0))

@constraint(m, x1 - 40*b38 - 40*b41 - 40*b44 <= 0)

@constraint(m, x2 - 40*b39 - 40*b42 - 40*b45 <= 0)

@constraint(m, x3 - 40*b40 - 40*b43 - 40*b46 <= 0)

@constraint(m, x1 - b38 - b41 - b44 >= 0)

@constraint(m, x2 - b39 - b42 - b45 >= 0)

@constraint(m, x3 - b40 - b43 - b46 >= 0)

@constraint(m, x35 - 10*b38 - 10*b39 - 10*b40 - 20*b41 - 20*b42 - 20*b43 - 30*b44 - 30*b45 - 30*b46 == 0)

JuMP.add_NL_constraint(m, :(-0.3271*(sqrt($(x22)) + sqrt($(x23)) + sqrt($(x24))) + $(x34) == 0))

JuMP.add_NL_constraint(m, :(-(0.0515901369863014*$(x25)*($(x1) + 0.4*$(b38) + 0.2*$(b41) + 0.1*$(b44)) + 
    0.0515901369863014*$(x26)*($(x2) + 0.4*$(b39) + 0.2*$(b42) + 0.1*$(b45)) + 0.0515901369863014*$(x27)*($(x3) + 0.4*
    $(b40) + 0.2*$(b43) + 0.1*$(b46)) + 0.0528586301369863*$(x28)*($(x1) + 0.4*$(b38) + 0.2*$(b41) + 0.1*$(b44)) + 
    0.0528586301369863*$(x29)*($(x2) + 0.4*$(b39) + 0.2*$(b42) + 0.1*$(b45)) + 0.0528586301369863*$(x30)*($(x3) + 0.4*
    $(b40) + 0.2*$(b43) + 0.1*$(b46)) + 0.0541268493150685*$(x31)*($(x1) + 0.4*$(b38) + 0.2*$(b41) + 0.1*$(b44)) + 
    0.0541268493150685*$(x32)*($(x2) + 0.4*$(b39) + 0.2*$(b42) + 0.1*$(b45)) + 0.0541268493150685*$(x33)*($(x3) + 0.4*
    $(b40) + 0.2*$(b43) + 0.1*$(b46))) + $(x36) == 0))

@constraint(m,  - 0.5*x13 - 0.5*x14 + x25 == -643)

@constraint(m,  - 0.5*x14 - 0.5*x15 + x26 == -643)

@constraint(m,  - 0.5*x13 - 0.5*x15 + x27 == -643)

@constraint(m,  - 0.5*x16 - 0.5*x17 + x28 == -536)

@constraint(m,  - 0.5*x17 - 0.5*x18 + x29 == -536)

@constraint(m,  - 0.5*x16 - 0.5*x18 + x30 == -536)

@constraint(m,  - 0.5*x19 - 0.5*x20 + x31 == -214)

@constraint(m,  - 0.5*x20 - 0.5*x21 + x32 == -214)

@constraint(m,  - 0.5*x19 - 0.5*x21 + x33 == -214)

JuMP.add_NL_constraint(m, :((24.8739726027397*$(x47) - $(x34))*$(x37) - $(x35) - $(x36) == 0))

@constraint(m,  - x1 + 40*b38 + 40*b41 + 40*b44 >= 0)

@constraint(m,  - x2 + 40*b39 + 40*b42 + 40*b45 >= 0)

@constraint(m,  - x3 + 40*b40 + 40*b43 + 40*b46 >= 0)

@constraint(m,  - b38 - b39 >= -1)

@constraint(m,  - b39 - b40 >= -1)

@constraint(m,  - b40 >= -1)

@constraint(m,  - b41 - b42 >= -1)

@constraint(m,  - b42 - b43 >= -1)

@constraint(m,  - b43 >= -1)

@constraint(m,  - b44 - b45 >= -1)

@constraint(m,  - b45 - b46 >= -1)

@constraint(m,  - b46 >= -1)

@constraint(m, b38 - b39 + b41 - b42 + b44 - b45 >= 0)

@constraint(m, b39 - b40 + b42 - b43 + b45 - b46 >= 0)

@constraint(m, b40 + b43 + b46 >= 0)
