#  NLP written by GAMS Convert at 10/11/20 12:52:07
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         53       53        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         53       53        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        191       85      106        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1E-5 <= x1, start=35)
@variable(m, 1E-5 <= x2, start=55)
@variable(m, 1E-5 <= x3, start=20)
@variable(m, 1E-5 <= x4, start=30)
@variable(m, 1E-5 <= x5, start=15)
@variable(m, 1E-5 <= x6, start=25)
@variable(m, 1E-5 <= x7, start=21)
@variable(m, 1E-5 <= x8, start=8)
@variable(m, 1E-5 <= x9, start=17)
@variable(m, 1E-5 <= x10, start=9)
@variable(m, 1E-5 <= x11, start=73)
@variable(m, 1E-5 <= x12, start=72)
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
@variable(m, 1E-5 <= x25, start=70)
@variable(m, 1E-5 <= x26, start=72)
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
@variable(m, 1E-5 <= x42, start=1)
@variable(m, 1E-5 <= x43, start=1)
@variable(m, 1E-5 <= x44, start=1)
@variable(m, 1E-5 <= x45, start=1)
@variable(m, 1E-5 <= x46, start=17)
@variable(m, 1E-5 <= x47, start=2)
@variable(m, 1E-5 <= x48, start=23)
@variable(m, 0 <= x49, start=5)
@variable(m, 0 <= x50, start=4)
@variable(m, 0 <= x51, start=1)
@variable(m, 0 <= x52, start=2)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x13)^0.4*$(x14)^0.6))

JuMP.add_NL_constraint(m, :(-1.97962633005252*$(x3)^0.571428571428571*$(x5)^0.428571428571429 + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-1.99174121480513*$(x4)^0.545454545454545*$(x6)^0.454545454545455 + $(x2) == 0))

@constraint(m, x7 - 0.287671232876712*x11 == 0)

@constraint(m, x8 - 0.111111111111111*x12 == 0)

@constraint(m, x9 - 0.232876712328767*x11 == 0)

@constraint(m, x10 - 0.125*x12 == 0)

@constraint(m, x1 - 0.479452054794521*x11 == 0)

@constraint(m, x2 - 0.763888888888889*x12 == 0)

JuMP.add_NL_constraint(m, :(-0.571428571428571*$(x29)*$(x1)/$(x27) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-0.545454545454545*$(x30)*$(x2)/$(x27) + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-0.428571428571429*$(x29)*$(x1)/$(x28) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.454545454545455*$(x30)*$(x2)/$(x28) + $(x6) == 0))

@constraint(m,  - 0.479452054794521*x29 + x31 - 0.287671232876712*x33 - 0.232876712328767*x34 == 0)

@constraint(m,  - 0.763888888888889*x30 + x32 - 0.111111111111111*x33 - 0.125*x34 == 0)

@constraint(m,  - 12.7777777777778*x27 - 10.2222222222222*x28 + x48 == 0)

JuMP.add_NL_constraint(m, :(-0.0684931506849315*$(x31)*$(x11) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-0.0555555555555556*$(x32)*$(x12) + $(x50) == 0))

@constraint(m, x51 == 0)

@constraint(m, x52 == 0)

JuMP.add_NL_constraint(m, :(-(0.575757575757576*$(x48) - 0.575757575757576*$(x47) + 0.575757575757576*$(x49) + 
    0.575757575757576*$(x50) + 0.575757575757576*$(x51) + 0.575757575757576*$(x52))/$(x33) + $(x15) == 0))

JuMP.add_NL_constraint(m, :(-(0.424242424242424*$(x48) - 0.424242424242424*$(x47) + 0.424242424242424*$(x49) + 
    0.424242424242424*$(x50) + 0.424242424242424*$(x51) + 0.424242424242424*$(x52))/$(x34) + $(x16) == 0))

JuMP.add_NL_constraint(m, :(-(6.19354838709677*$(x41) + 0.516129032258065*$(x46) + 0.516129032258065*$(x47))/$(x33)
     + $(x17) == 0))

JuMP.add_NL_constraint(m, :(-(5.80645161290323*$(x41) + 0.483870967741935*$(x46) + 0.483870967741935*$(x47))/$(x34)
     + $(x18) == 0))

@constraint(m,  - 9.44444444444444*x27 - 7.55555555555556*x28 + x46 == 0)

@constraint(m, x47 - 0.0571428571428571*x48 - 0.0571428571428571*x49 - 0.0571428571428571*x50 - 0.0571428571428571*x51
     - 0.0571428571428571*x52 == 0)

JuMP.add_NL_constraint(m, :(-(20*$(x27) + 16*$(x28) - 0.4*$(x46) - 0.4*$(x48))/$(x33) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-(30*$(x27) + 24*$(x28) - 0.6*$(x46) - 0.6*$(x48))/$(x34) + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-$(x41)*$(x42) + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-$(x41)*$(x43) + $(x36) == 0))

JuMP.add_NL_constraint(m, :(-$(x41)*$(x44) + $(x37) == 0))

JuMP.add_NL_constraint(m, :(-$(x41)*$(x45) + $(x38) == 0))

JuMP.add_NL_constraint(m, :($(x42)*$(x19) + $(x43)*$(x20) - ($(x44)*$(x21) + $(x45)*$(x22)) == -12))

JuMP.add_NL_constraint(m, :(-$(x42)^(-2) + 0.125*$(x19) == 0))

JuMP.add_NL_constraint(m, :(-$(x43)^(-2) + 0.25*$(x20) == 0))

JuMP.add_NL_constraint(m, :(-$(x44)^2 + 0.0769230769230769*$(x21) == 0))

JuMP.add_NL_constraint(m, :(-$(x45)^2 + 0.0909090909090909*$(x22) == 0))

JuMP.add_NL_constraint(m, :(-1.78631298097427*(0.316984436431308*$(x21)^0.5 + 0.683015563568692*$(x25)^0.5)^2 + $(x23)
     == 0))

JuMP.add_NL_constraint(m, :(-1.8103795278422*(0.315975006847877*$(x22)^0.5 + 0.684024993152123*$(x26)^0.5)^2 + $(x24)
     == 0))

JuMP.add_NL_constraint(m, :(-(0.423659272868161*$(x33)/$(x37))^2*$(x23) + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-(0.425145461109024*$(x34)/$(x38))^2*$(x24) + $(x22) == 0))

JuMP.add_NL_constraint(m, :(-(0.912870929175277*$(x33)/$(x39))^2*$(x23) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-(0.920357986616845*$(x34)/$(x40))^2*$(x24) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-2.42780549270868*(0.747349691412928*$(x19)^1.5 + 0.252650308587072*$(x25)^1.5)^
    0.666666666666667 + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-2.91102542459458*(0.809256430169454*$(x20)^1.5 + 0.190743569830546*$(x26)^1.5)^
    0.666666666666667 + $(x12) == 0))

JuMP.add_NL_constraint(m, :(-(1.02120377146637*$(x31)/$(x39))^(-2)*$(x11) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-(1*$(x32)/$(x40))^(-2)*$(x12) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-(3.02076149339864*$(x31)/$(x35))^(-2)*$(x11) + $(x19) == 0))

JuMP.add_NL_constraint(m, :(-(4.24264068711929*$(x32)/$(x36))^(-2)*$(x12) + $(x20) == 0))

@constraint(m,  - x7 - x8 - x13 - x15 - x17 + x23 == 0)

@constraint(m,  - x9 - x10 - x14 - x16 - x18 + x24 == 0)

@constraint(m, x3 + x4 == 50)

@constraint(m, x5 + x6 == 40)
