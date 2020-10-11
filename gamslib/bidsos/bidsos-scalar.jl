#  MIP written by GAMS Convert at 10/11/20 12:30:12
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         20        1        0        0        0       19        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         42       42        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= s2s2, start=0)
@variable(m, 0 <= s2s3, start=0)
@variable(m, 0 <= s2s4, start=0)
@variable(m, 0 <= s2s5, start=0)
@variable(m, 0 <= s2s6, start=0)
@variable(m, 0 <= s2s7, start=0)
@variable(m, 0 <= s2s8, start=0)
@variable(m, 0 <= s2s9, start=0)
@variable(m, 0 <= s2s10, start=0)
@variable(m, 0 <= s2s11, start=0)
@variable(m, 0 <= s2s12, start=0)
@variable(m, 0 <= s2s13, start=0)
@variable(m, 0 <= s2s14, start=0)
@variable(m, 0 <= s2s15, start=0)
@variable(m, 0 <= s2s16, start=0)
@variable(m, 0 <= s2s17, start=0)
@variable(m, 0 <= s2s18, start=0)
@variable(m, 0 <= s2s19, start=0)
@variable(m, 0 <= s2s20, start=0)
@constraint(m, [s2s2, s2s3, s2s4] in MOI.SOS2(collect(1:3)))
@constraint(m, [s2s5, s2s6, s2s7, s2s8, s2s9, s2s10] in MOI.SOS2(collect(1:6)))
@constraint(m, [s2s11, s2s12, s2s13] in MOI.SOS2(collect(1:3)))
@constraint(m, [s2s14, s2s15, s2s16] in MOI.SOS2(collect(1:3)))
@constraint(m, [s2s17, s2s18, s2s19, s2s20] in MOI.SOS2(collect(1:4)))

@objective(m, Min, 3855.84*s2s3 + 2021805.84*s2s4 + 1623982.84*s2s6 + 4892734.84*s2s7 + 6874204.84*s2s8
     + 10079154.84*s2s9 + 10700344.84*s2s10 + 13456*s2s12 + 10312120*s2s13 + 6583.98*s2s15 + 876439.98*s2s16
     + 2946300*s2s19 + 5331550*s2s20)

@constraint(m,  - 33000*s2s4 - 70000*s2s7 - 100000*s2s8 - 150000*s2s9 - 160000*s2s10 - 165600*s2s13 - 12000*s2s16
     - 42000*s2s19 - 77000*s2s20 == -239600.48)

@constraint(m, s2s2 + s2s3 + s2s4 == 1)

@constraint(m, s2s5 + s2s6 + s2s7 + s2s8 + s2s9 + s2s10 == 1)

@constraint(m, s2s11 + s2s12 + s2s13 == 1)

@constraint(m, s2s14 + s2s15 + s2s16 == 1)

@constraint(m, s2s17 + s2s18 + s2s19 + s2s20 == 1)
