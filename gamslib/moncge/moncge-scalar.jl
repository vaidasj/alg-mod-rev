#  NLP written by GAMS Convert at 10/11/20 12:52:20
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51       51        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        189       95       94        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1E-5 <= x1, start=11.6666666666667)
@variable(m, 1E-5 <= x2, start=31)
@variable(m, 1E-5 <= x3, start=6.66666666666667)
@variable(m, 1E-5 <= x4, start=16.9090909090909)
@variable(m, 1E-5 <= x5, start=5)
@variable(m, 1E-5 <= x6, start=14.0909090909091)
@variable(m, 1E-5 <= x7, start=21)
@variable(m, 1E-5 <= x8, start=8)
@variable(m, 1E-5 <= x9, start=17)
@variable(m, 1E-5 <= x10, start=9)
@variable(m, 1E-5 <= x11, start=49.6666666666667)
@variable(m, 1E-5 <= x12, start=48)
@variable(m, 1E-5 <= x13, start=20)
@variable(m, 1E-5 <= x14, start=30)
@variable(m, 1E-5 <= x15, start=19)
@variable(m, 1E-5 <= x16, start=14)
@variable(m, 1E-5 <= x17, start=16)
@variable(m, 1E-5 <= x18, start=15)
@variable(m, 1E-5 <= x19, start=8)
@variable(m, 1E-5 <= x20, start=4)
@variable(m, 1E-5 <= x21, start=13)
@variable(m, 1E-5 <= x22, start=11)
@variable(m, 1E-5 <= x23, start=84)
@variable(m, 1E-5 <= x24, start=85)
@variable(m, 1E-5 <= x25, start=46.6666666666667)
@variable(m, 1E-5 <= x26, start=48)
@variable(m, 1E-5 <= x27, start=1)
@variable(m, 1 <= x28 <= 1, start=1)
@variable(m, 1E-5 <= x29, start=1)
@variable(m, 1E-5 <= x30, start=1)
@variable(m, 1E-5 <= x31, start=1)
@variable(m, 1E-5 <= x32, start=1)
@variable(m, 1E-5 <= x33, start=1)
@variable(m, 1E-5 <= x34, start=1)
@variable(m, 1E-5 <= x35, start=1)
@variable(m, 1E-5 <= x36, start=1)
@variable(m, 1E-5 <= x37, start=1)
@variable(m, 1E-5 <= x38, start=1)
@variable(m, 1E-5 <= x39, start=1)
@variable(m, 1E-5 <= x40, start=1)
@variable(m, 1E-5 <= x41, start=1)
@variable(m, 1E-5 <= x42, start=17)
@variable(m, 1E-5 <= x43, start=2)
@variable(m, 1E-5 <= x44, start=23)
@variable(m, 0 <= x45, start=5)
@variable(m, 0 <= x46, start=4)
@variable(m, 0 <= x47, start=1)
@variable(m, 0 <= x48, start=2)
@variable(m, x49, start=23.3333333333333)
@variable(m, x50, start=24)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x13)^0.4*$(x14)^0.6))

JuMP.add_NL_constraint(m, :(-1.97962633005252*$(x3)^0.571428571428571*$(x5)^0.428571428571429 + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-1.99174121480513*$(x4)^0.545454545454546*$(x6)^0.454545454545455 + $(x2) == 0))

@constraint(m, x7 - 0.422818791946309*x11 == 0)

@constraint(m, x8 - 0.166666666666667*x12 == 0)

@constraint(m, x9 - 0.342281879194631*x11 == 0)

@constraint(m, x10 - 0.1875*x12 == 0)

@constraint(m, x1 - 0.23489932885906*x11 == 0)

@constraint(m, x2 - 0.645833333333333*x12 == 0)

JuMP.add_NL_constraint(m, :(-0.571428571428571*$(x29)*$(x1)/$(x27) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-0.545454545454546*$(x30)*$(x2)/$(x27) + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-0.428571428571429*$(x29)*$(x1)/$(x28) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.454545454545455*$(x30)*$(x2)/$(x28) + $(x6) == 0))

@constraint(m,  - 0.23489932885906*x29 + x31 - 0.422818791946309*x33 - 0.342281879194631*x34 == 0)

@constraint(m,  - 0.645833333333333*x30 + x32 - 0.166666666666667*x33 - 0.1875*x34 == 0)

@constraint(m,  - 6.02491582491582*x27 - 4.87878787878788*x28 + x44 - 0.255555555555556*x49 - 0.255555555555556*x50
     == 0)

JuMP.add_NL_constraint(m, :(-0.100671140939597*$(x31)*$(x11) + $(x45) == 0))

JuMP.add_NL_constraint(m, :(-0.0833333333333333*$(x32)*$(x12) + $(x46) == 0))

@constraint(m, x47 == 0)

@constraint(m, x48 == 0)

JuMP.add_NL_constraint(m, :(-(0.575757575757576*$(x44) - 0.575757575757576*$(x43) + 0.575757575757576*$(x45) + 
    0.575757575757576*$(x46) + 0.575757575757576*$(x47) + 0.575757575757576*$(x48))/$(x33) + $(x15) == 0))

JuMP.add_NL_constraint(m, :(-(0.424242424242424*$(x44) - 0.424242424242424*$(x43) + 0.424242424242424*$(x45) + 
    0.424242424242424*$(x46) + 0.424242424242424*$(x47) + 0.424242424242424*$(x48))/$(x34) + $(x16) == 0))

JuMP.add_NL_constraint(m, :(-(6.19354838709677*$(x41) + 0.516129032258065*$(x42) + 0.516129032258065*$(x43))/$(x33)
     + $(x17) == 0))

JuMP.add_NL_constraint(m, :(-(5.80645161290323*$(x41) + 0.483870967741935*$(x42) + 0.483870967741935*$(x43))/$(x34)
     + $(x18) == 0))

@constraint(m,  - 4.45319865319865*x27 - 3.60606060606061*x28 + x42 - 0.188888888888889*x49 - 0.188888888888889*x50
     == 0)

@constraint(m, x43 - 0.0571428571428571*x44 - 0.0571428571428571*x45 - 0.0571428571428571*x46 - 0.0571428571428571*x47
     - 0.0571428571428571*x48 == 0)

JuMP.add_NL_constraint(m, :(-(9.43030303030303*$(x27) + 7.63636363636363*$(x28) - 0.4*$(x42) - 0.4*$(x44) + 0.4*$(x49)
     + 0.4*$(x50))/$(x33) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-(14.1454545454545*$(x27) + 11.4545454545455*$(x28) - 0.6*$(x42) - 0.6*$(x44) + 0.6*$(x49)
     + 0.6*$(x50))/$(x34) + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-0.5*$(x39)*$(x25) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-0.5*$(x40)*$(x26) + $(x50) == 0))

@constraint(m, x35 - x41 == 0)

@constraint(m, x36 - x41 == 0)

@constraint(m, x37 - x41 == 0)

@constraint(m, x38 - x41 == 0)

@constraint(m, x19 + x20 - x21 - x22 == -12)

JuMP.add_NL_constraint(m, :(-2.43772760307852*(0.319214484027929*$(x21)^0.666666666666667 + 0.680785515972071*$(x25)^
    0.666666666666667)^1.5 + $(x23) == 0))

JuMP.add_NL_constraint(m, :(-2.49105629778685*(0.325301619326159*$(x22)^0.666666666666667 + 0.674698380673841*$(x26)^
    0.666666666666667)^1.5 + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-(0.578192834851047*$(x33)/$(x37))^3*$(x23) + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-(0.597780742720094*$(x34)/$(x38))^3*$(x24) + $(x22) == 0))

JuMP.add_NL_constraint(m, :(-(0.82207069144349*$(x33)/$(x39))^3*$(x23) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-(0.826559465943655*$(x34)/$(x40))^3*$(x24) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-2.17200564514278*(0.707193905303813*$(x19)^1.5 + 0.292806094696188*$(x25)^1.5)^
    0.666666666666667 + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-2.57028516937072*(0.775990762260204*$(x20)^1.5 + 0.224009237739796*$(x26)^1.5)^
    0.666666666666667 + $(x12) == 0))

JuMP.add_NL_constraint(m, :(-(1.03164224142176*$(x31)/$(x39))^(-2)*$(x11) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-(0.999999999999999*$(x32)/$(x40))^(-2)*$(x12) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-(2.49165273128767*$(x31)/$(x35))^(-2)*$(x11) + $(x19) == 0))

JuMP.add_NL_constraint(m, :(-(3.46410161513775*$(x32)/$(x36))^(-2)*$(x12) + $(x20) == 0))

@constraint(m,  - x7 - x8 - x13 - x15 - x17 + x23 == 0)

@constraint(m,  - x9 - x10 - x14 - x16 - x18 + x24 == 0)

@constraint(m, x3 + x4 == 23.5757575757576)

@constraint(m, x5 + x6 == 19.0909090909091)
