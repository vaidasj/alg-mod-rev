#  NLP written by GAMS Convert at 10/11/20 12:44:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        325        1        0      324        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1299       49     1250        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 1, start=0.14792899408284)
@variable(m, 0 <= x2 <= 1, start=0.284023668639053)
@variable(m, 0 <= x3 <= 1, start=0.408284023668639)
@variable(m, 0 <= x4 <= 1, start=0.520710059171598)
@variable(m, 0 <= x5 <= 1, start=0.621301775147929)
@variable(m, 0 <= x6 <= 1, start=0.710059171597633)
@variable(m, 0 <= x7 <= 1, start=0.78698224852071)
@variable(m, 0 <= x8 <= 1, start=0.85207100591716)
@variable(m, 0 <= x9 <= 1, start=0.905325443786982)
@variable(m, 0 <= x10 <= 1, start=0.946745562130177)
@variable(m, 0 <= x11 <= 1, start=0.976331360946746)
@variable(m, 0 <= x12 <= 1, start=0.994082840236686)
@variable(m, 0 <= x13 <= 1, start=1)
@variable(m, 0 <= x14 <= 1, start=0.994082840236686)
@variable(m, 0 <= x15 <= 1, start=0.976331360946746)
@variable(m, 0 <= x16 <= 1, start=0.946745562130177)
@variable(m, 0 <= x17 <= 1, start=0.905325443786982)
@variable(m, 0 <= x18 <= 1, start=0.85207100591716)
@variable(m, 0 <= x19 <= 1, start=0.78698224852071)
@variable(m, 0 <= x20 <= 1, start=0.710059171597633)
@variable(m, 0 <= x21 <= 1, start=0.621301775147929)
@variable(m, 0 <= x22 <= 1, start=0.520710059171598)
@variable(m, 0 <= x23 <= 1, start=0.408284023668639)
@variable(m, 0 <= x24 <= 1, start=0.284023668639053)
@variable(m, 0 <= x25 <= 0, start=0)
@variable(m, 0 <= x26 <= 3.14159265358979, start=0.125663706143592)
@variable(m, 0 <= x27 <= 3.14159265358979, start=0.251327412287183)
@variable(m, 0 <= x28 <= 3.14159265358979, start=0.376991118430775)
@variable(m, 0 <= x29 <= 3.14159265358979, start=0.502654824574367)
@variable(m, 0 <= x30 <= 3.14159265358979, start=0.628318530717959)
@variable(m, 0 <= x31 <= 3.14159265358979, start=0.75398223686155)
@variable(m, 0 <= x32 <= 3.14159265358979, start=0.879645943005142)
@variable(m, 0 <= x33 <= 3.14159265358979, start=1.00530964914873)
@variable(m, 0 <= x34 <= 3.14159265358979, start=1.13097335529233)
@variable(m, 0 <= x35 <= 3.14159265358979, start=1.25663706143592)
@variable(m, 0 <= x36 <= 3.14159265358979, start=1.38230076757951)
@variable(m, 0 <= x37 <= 3.14159265358979, start=1.5079644737231)
@variable(m, 0 <= x38 <= 3.14159265358979, start=1.63362817986669)
@variable(m, 0 <= x39 <= 3.14159265358979, start=1.75929188601028)
@variable(m, 0 <= x40 <= 3.14159265358979, start=1.88495559215388)
@variable(m, 0 <= x41 <= 3.14159265358979, start=2.01061929829747)
@variable(m, 0 <= x42 <= 3.14159265358979, start=2.13628300444106)
@variable(m, 0 <= x43 <= 3.14159265358979, start=2.26194671058465)
@variable(m, 0 <= x44 <= 3.14159265358979, start=2.38761041672824)
@variable(m, 0 <= x45 <= 3.14159265358979, start=2.51327412287183)
@variable(m, 0 <= x46 <= 3.14159265358979, start=2.63893782901543)
@variable(m, 0 <= x47 <= 3.14159265358979, start=2.76460153515902)
@variable(m, 0 <= x48 <= 3.14159265358979, start=2.89026524130261)
@variable(m, 0 <= x49 <= 3.14159265358979, start=3.0159289474462)
@variable(m, 3.14159265358979 <= x50 <= 3.14159265358979, start=3.14159265358979)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(0.5*($(x2)*$(x1)*sin($(x27) - $(x26)) + $(x3)*$(x2)*sin($(x28) - $(x27)) + 
    $(x4)*$(x3)*sin($(x29) - $(x28)) + $(x5)*$(x4)*sin($(x30) - $(x29)) + $(x6)*$(x5)*sin($(x31) - $(x30)) + $(x7)*$(x6)
    *sin($(x32) - $(x31)) + $(x8)*$(x7)*sin($(x33) - $(x32)) + $(x9)*$(x8)*sin($(x34) - $(x33)) + $(x10)*$(x9)*sin(
    $(x35) - $(x34)) + $(x11)*$(x10)*sin($(x36) - $(x35)) + $(x12)*$(x11)*sin($(x37) - $(x36)) + $(x13)*$(x12)*sin(
    $(x38) - $(x37)) + $(x14)*$(x13)*sin($(x39) - $(x38)) + $(x15)*$(x14)*sin($(x40) - $(x39)) + $(x16)*$(x15)*sin(
    $(x41) - $(x40)) + $(x17)*$(x16)*sin($(x42) - $(x41)) + $(x18)*$(x17)*sin($(x43) - $(x42)) + $(x19)*$(x18)*sin(
    $(x44) - $(x43)) + $(x20)*$(x19)*sin($(x45) - $(x44)) + $(x21)*$(x20)*sin($(x46) - $(x45)) + $(x22)*$(x21)*sin(
    $(x47) - $(x46)) + $(x23)*$(x22)*sin($(x48) - $(x47)) + $(x24)*$(x23)*sin($(x49) - $(x48)) + $(x25)*$(x24)*sin(
    $(x50) - $(x49)))))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x2)^2 - 2*$(x1)*$(x2)*cos($(x27) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x3)^2 - 2*$(x1)*$(x3)*cos($(x28) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x4)^2 - 2*$(x1)*$(x4)*cos($(x29) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x5)^2 - 2*$(x1)*$(x5)*cos($(x30) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x6)^2 - 2*$(x1)*$(x6)*cos($(x31) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x7)^2 - 2*$(x1)*$(x7)*cos($(x32) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x8)^2 - 2*$(x1)*$(x8)*cos($(x33) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x9)^2 - 2*$(x1)*$(x9)*cos($(x34) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x10)^2 - 2*$(x1)*$(x10)*cos($(x35) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x11)^2 - 2*$(x1)*$(x11)*cos($(x36) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x12)^2 - 2*$(x1)*$(x12)*cos($(x37) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x13)^2 - 2*$(x1)*$(x13)*cos($(x38) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x14)^2 - 2*$(x1)*$(x14)*cos($(x39) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x15)^2 - 2*$(x1)*$(x15)*cos($(x40) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x16)^2 - 2*$(x1)*$(x16)*cos($(x41) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x17)^2 - 2*$(x1)*$(x17)*cos($(x42) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x18)^2 - 2*$(x1)*$(x18)*cos($(x43) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x19)^2 - 2*$(x1)*$(x19)*cos($(x44) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x20)^2 - 2*$(x1)*$(x20)*cos($(x45) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x21)^2 - 2*$(x1)*$(x21)*cos($(x46) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x22)^2 - 2*$(x1)*$(x22)*cos($(x47) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x23)^2 - 2*$(x1)*$(x23)*cos($(x48) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x24)^2 - 2*$(x1)*$(x24)*cos($(x49) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x1)^2 + $(x25)^2 - 2*$(x1)*$(x25)*cos($(x50) - $(x26)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x3)^2 - 2*$(x2)*$(x3)*cos($(x28) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x4)^2 - 2*$(x2)*$(x4)*cos($(x29) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x5)^2 - 2*$(x2)*$(x5)*cos($(x30) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x6)^2 - 2*$(x2)*$(x6)*cos($(x31) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x7)^2 - 2*$(x2)*$(x7)*cos($(x32) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x8)^2 - 2*$(x2)*$(x8)*cos($(x33) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x9)^2 - 2*$(x2)*$(x9)*cos($(x34) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x10)^2 - 2*$(x2)*$(x10)*cos($(x35) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x11)^2 - 2*$(x2)*$(x11)*cos($(x36) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x12)^2 - 2*$(x2)*$(x12)*cos($(x37) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x13)^2 - 2*$(x2)*$(x13)*cos($(x38) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x14)^2 - 2*$(x2)*$(x14)*cos($(x39) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x15)^2 - 2*$(x2)*$(x15)*cos($(x40) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x16)^2 - 2*$(x2)*$(x16)*cos($(x41) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x17)^2 - 2*$(x2)*$(x17)*cos($(x42) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x18)^2 - 2*$(x2)*$(x18)*cos($(x43) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x19)^2 - 2*$(x2)*$(x19)*cos($(x44) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x20)^2 - 2*$(x2)*$(x20)*cos($(x45) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x21)^2 - 2*$(x2)*$(x21)*cos($(x46) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x22)^2 - 2*$(x2)*$(x22)*cos($(x47) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x23)^2 - 2*$(x2)*$(x23)*cos($(x48) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x24)^2 - 2*$(x2)*$(x24)*cos($(x49) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x2)^2 + $(x25)^2 - 2*$(x2)*$(x25)*cos($(x50) - $(x27)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x4)^2 - 2*$(x3)*$(x4)*cos($(x29) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x5)^2 - 2*$(x3)*$(x5)*cos($(x30) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x6)^2 - 2*$(x3)*$(x6)*cos($(x31) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x7)^2 - 2*$(x3)*$(x7)*cos($(x32) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x8)^2 - 2*$(x3)*$(x8)*cos($(x33) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x9)^2 - 2*$(x3)*$(x9)*cos($(x34) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x10)^2 - 2*$(x3)*$(x10)*cos($(x35) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x11)^2 - 2*$(x3)*$(x11)*cos($(x36) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x12)^2 - 2*$(x3)*$(x12)*cos($(x37) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x13)^2 - 2*$(x3)*$(x13)*cos($(x38) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x14)^2 - 2*$(x3)*$(x14)*cos($(x39) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x15)^2 - 2*$(x3)*$(x15)*cos($(x40) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x16)^2 - 2*$(x3)*$(x16)*cos($(x41) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x17)^2 - 2*$(x3)*$(x17)*cos($(x42) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x18)^2 - 2*$(x3)*$(x18)*cos($(x43) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x19)^2 - 2*$(x3)*$(x19)*cos($(x44) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x20)^2 - 2*$(x3)*$(x20)*cos($(x45) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x21)^2 - 2*$(x3)*$(x21)*cos($(x46) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x22)^2 - 2*$(x3)*$(x22)*cos($(x47) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x23)^2 - 2*$(x3)*$(x23)*cos($(x48) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x24)^2 - 2*$(x3)*$(x24)*cos($(x49) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x25)^2 - 2*$(x3)*$(x25)*cos($(x50) - $(x28)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x5)^2 - 2*$(x4)*$(x5)*cos($(x30) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x6)^2 - 2*$(x4)*$(x6)*cos($(x31) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x7)^2 - 2*$(x4)*$(x7)*cos($(x32) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x8)^2 - 2*$(x4)*$(x8)*cos($(x33) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x9)^2 - 2*$(x4)*$(x9)*cos($(x34) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x10)^2 - 2*$(x4)*$(x10)*cos($(x35) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x11)^2 - 2*$(x4)*$(x11)*cos($(x36) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x12)^2 - 2*$(x4)*$(x12)*cos($(x37) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x13)^2 - 2*$(x4)*$(x13)*cos($(x38) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x14)^2 - 2*$(x4)*$(x14)*cos($(x39) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x15)^2 - 2*$(x4)*$(x15)*cos($(x40) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x16)^2 - 2*$(x4)*$(x16)*cos($(x41) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x17)^2 - 2*$(x4)*$(x17)*cos($(x42) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x18)^2 - 2*$(x4)*$(x18)*cos($(x43) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x19)^2 - 2*$(x4)*$(x19)*cos($(x44) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x20)^2 - 2*$(x4)*$(x20)*cos($(x45) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x21)^2 - 2*$(x4)*$(x21)*cos($(x46) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x22)^2 - 2*$(x4)*$(x22)*cos($(x47) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x23)^2 - 2*$(x4)*$(x23)*cos($(x48) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x24)^2 - 2*$(x4)*$(x24)*cos($(x49) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x4)^2 + $(x25)^2 - 2*$(x4)*$(x25)*cos($(x50) - $(x29)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x6)^2 - 2*$(x5)*$(x6)*cos($(x31) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x7)^2 - 2*$(x5)*$(x7)*cos($(x32) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x8)^2 - 2*$(x5)*$(x8)*cos($(x33) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x9)^2 - 2*$(x5)*$(x9)*cos($(x34) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x10)^2 - 2*$(x5)*$(x10)*cos($(x35) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x11)^2 - 2*$(x5)*$(x11)*cos($(x36) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x12)^2 - 2*$(x5)*$(x12)*cos($(x37) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x13)^2 - 2*$(x5)*$(x13)*cos($(x38) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x14)^2 - 2*$(x5)*$(x14)*cos($(x39) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x15)^2 - 2*$(x5)*$(x15)*cos($(x40) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x16)^2 - 2*$(x5)*$(x16)*cos($(x41) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x17)^2 - 2*$(x5)*$(x17)*cos($(x42) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x18)^2 - 2*$(x5)*$(x18)*cos($(x43) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x19)^2 - 2*$(x5)*$(x19)*cos($(x44) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x20)^2 - 2*$(x5)*$(x20)*cos($(x45) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x21)^2 - 2*$(x5)*$(x21)*cos($(x46) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x22)^2 - 2*$(x5)*$(x22)*cos($(x47) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x23)^2 - 2*$(x5)*$(x23)*cos($(x48) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x24)^2 - 2*$(x5)*$(x24)*cos($(x49) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x5)^2 + $(x25)^2 - 2*$(x5)*$(x25)*cos($(x50) - $(x30)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x7)^2 - 2*$(x6)*$(x7)*cos($(x32) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x8)^2 - 2*$(x6)*$(x8)*cos($(x33) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x9)^2 - 2*$(x6)*$(x9)*cos($(x34) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x10)^2 - 2*$(x6)*$(x10)*cos($(x35) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x11)^2 - 2*$(x6)*$(x11)*cos($(x36) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x12)^2 - 2*$(x6)*$(x12)*cos($(x37) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x13)^2 - 2*$(x6)*$(x13)*cos($(x38) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x14)^2 - 2*$(x6)*$(x14)*cos($(x39) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x15)^2 - 2*$(x6)*$(x15)*cos($(x40) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x16)^2 - 2*$(x6)*$(x16)*cos($(x41) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x17)^2 - 2*$(x6)*$(x17)*cos($(x42) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x18)^2 - 2*$(x6)*$(x18)*cos($(x43) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x19)^2 - 2*$(x6)*$(x19)*cos($(x44) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x20)^2 - 2*$(x6)*$(x20)*cos($(x45) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x21)^2 - 2*$(x6)*$(x21)*cos($(x46) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x22)^2 - 2*$(x6)*$(x22)*cos($(x47) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x23)^2 - 2*$(x6)*$(x23)*cos($(x48) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x24)^2 - 2*$(x6)*$(x24)*cos($(x49) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x6)^2 + $(x25)^2 - 2*$(x6)*$(x25)*cos($(x50) - $(x31)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x8)^2 - 2*$(x7)*$(x8)*cos($(x33) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x9)^2 - 2*$(x7)*$(x9)*cos($(x34) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x10)^2 - 2*$(x7)*$(x10)*cos($(x35) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x11)^2 - 2*$(x7)*$(x11)*cos($(x36) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x12)^2 - 2*$(x7)*$(x12)*cos($(x37) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x13)^2 - 2*$(x7)*$(x13)*cos($(x38) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x14)^2 - 2*$(x7)*$(x14)*cos($(x39) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x15)^2 - 2*$(x7)*$(x15)*cos($(x40) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x16)^2 - 2*$(x7)*$(x16)*cos($(x41) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x17)^2 - 2*$(x7)*$(x17)*cos($(x42) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x18)^2 - 2*$(x7)*$(x18)*cos($(x43) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x19)^2 - 2*$(x7)*$(x19)*cos($(x44) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x20)^2 - 2*$(x7)*$(x20)*cos($(x45) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x21)^2 - 2*$(x7)*$(x21)*cos($(x46) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x22)^2 - 2*$(x7)*$(x22)*cos($(x47) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x23)^2 - 2*$(x7)*$(x23)*cos($(x48) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x24)^2 - 2*$(x7)*$(x24)*cos($(x49) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x7)^2 + $(x25)^2 - 2*$(x7)*$(x25)*cos($(x50) - $(x32)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x9)^2 - 2*$(x8)*$(x9)*cos($(x34) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x10)^2 - 2*$(x8)*$(x10)*cos($(x35) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x11)^2 - 2*$(x8)*$(x11)*cos($(x36) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x12)^2 - 2*$(x8)*$(x12)*cos($(x37) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x13)^2 - 2*$(x8)*$(x13)*cos($(x38) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x14)^2 - 2*$(x8)*$(x14)*cos($(x39) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x15)^2 - 2*$(x8)*$(x15)*cos($(x40) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x16)^2 - 2*$(x8)*$(x16)*cos($(x41) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x17)^2 - 2*$(x8)*$(x17)*cos($(x42) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x18)^2 - 2*$(x8)*$(x18)*cos($(x43) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x19)^2 - 2*$(x8)*$(x19)*cos($(x44) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x20)^2 - 2*$(x8)*$(x20)*cos($(x45) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x21)^2 - 2*$(x8)*$(x21)*cos($(x46) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x22)^2 - 2*$(x8)*$(x22)*cos($(x47) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x23)^2 - 2*$(x8)*$(x23)*cos($(x48) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x24)^2 - 2*$(x8)*$(x24)*cos($(x49) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x8)^2 + $(x25)^2 - 2*$(x8)*$(x25)*cos($(x50) - $(x33)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x10)^2 - 2*$(x9)*$(x10)*cos($(x35) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x11)^2 - 2*$(x9)*$(x11)*cos($(x36) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x12)^2 - 2*$(x9)*$(x12)*cos($(x37) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x13)^2 - 2*$(x9)*$(x13)*cos($(x38) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x14)^2 - 2*$(x9)*$(x14)*cos($(x39) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x15)^2 - 2*$(x9)*$(x15)*cos($(x40) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x16)^2 - 2*$(x9)*$(x16)*cos($(x41) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x17)^2 - 2*$(x9)*$(x17)*cos($(x42) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x18)^2 - 2*$(x9)*$(x18)*cos($(x43) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x19)^2 - 2*$(x9)*$(x19)*cos($(x44) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x20)^2 - 2*$(x9)*$(x20)*cos($(x45) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x21)^2 - 2*$(x9)*$(x21)*cos($(x46) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x22)^2 - 2*$(x9)*$(x22)*cos($(x47) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x23)^2 - 2*$(x9)*$(x23)*cos($(x48) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x24)^2 - 2*$(x9)*$(x24)*cos($(x49) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x9)^2 + $(x25)^2 - 2*$(x9)*$(x25)*cos($(x50) - $(x34)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x11)^2 - 2*$(x10)*$(x11)*cos($(x36) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x12)^2 - 2*$(x10)*$(x12)*cos($(x37) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x13)^2 - 2*$(x10)*$(x13)*cos($(x38) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x14)^2 - 2*$(x10)*$(x14)*cos($(x39) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x15)^2 - 2*$(x10)*$(x15)*cos($(x40) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x16)^2 - 2*$(x10)*$(x16)*cos($(x41) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x17)^2 - 2*$(x10)*$(x17)*cos($(x42) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x18)^2 - 2*$(x10)*$(x18)*cos($(x43) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x19)^2 - 2*$(x10)*$(x19)*cos($(x44) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x20)^2 - 2*$(x10)*$(x20)*cos($(x45) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x21)^2 - 2*$(x10)*$(x21)*cos($(x46) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x22)^2 - 2*$(x10)*$(x22)*cos($(x47) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x23)^2 - 2*$(x10)*$(x23)*cos($(x48) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x24)^2 - 2*$(x10)*$(x24)*cos($(x49) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x10)^2 + $(x25)^2 - 2*$(x10)*$(x25)*cos($(x50) - $(x35)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x12)^2 - 2*$(x11)*$(x12)*cos($(x37) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x13)^2 - 2*$(x11)*$(x13)*cos($(x38) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x14)^2 - 2*$(x11)*$(x14)*cos($(x39) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x15)^2 - 2*$(x11)*$(x15)*cos($(x40) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x16)^2 - 2*$(x11)*$(x16)*cos($(x41) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x17)^2 - 2*$(x11)*$(x17)*cos($(x42) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x18)^2 - 2*$(x11)*$(x18)*cos($(x43) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x19)^2 - 2*$(x11)*$(x19)*cos($(x44) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x20)^2 - 2*$(x11)*$(x20)*cos($(x45) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x21)^2 - 2*$(x11)*$(x21)*cos($(x46) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x22)^2 - 2*$(x11)*$(x22)*cos($(x47) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x23)^2 - 2*$(x11)*$(x23)*cos($(x48) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x24)^2 - 2*$(x11)*$(x24)*cos($(x49) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x11)^2 + $(x25)^2 - 2*$(x11)*$(x25)*cos($(x50) - $(x36)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x13)^2 - 2*$(x12)*$(x13)*cos($(x38) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x14)^2 - 2*$(x12)*$(x14)*cos($(x39) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x15)^2 - 2*$(x12)*$(x15)*cos($(x40) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x16)^2 - 2*$(x12)*$(x16)*cos($(x41) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x17)^2 - 2*$(x12)*$(x17)*cos($(x42) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x18)^2 - 2*$(x12)*$(x18)*cos($(x43) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x19)^2 - 2*$(x12)*$(x19)*cos($(x44) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x20)^2 - 2*$(x12)*$(x20)*cos($(x45) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x21)^2 - 2*$(x12)*$(x21)*cos($(x46) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x22)^2 - 2*$(x12)*$(x22)*cos($(x47) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x23)^2 - 2*$(x12)*$(x23)*cos($(x48) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x24)^2 - 2*$(x12)*$(x24)*cos($(x49) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x12)^2 + $(x25)^2 - 2*$(x12)*$(x25)*cos($(x50) - $(x37)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x14)^2 - 2*$(x13)*$(x14)*cos($(x39) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x15)^2 - 2*$(x13)*$(x15)*cos($(x40) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x16)^2 - 2*$(x13)*$(x16)*cos($(x41) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x17)^2 - 2*$(x13)*$(x17)*cos($(x42) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x18)^2 - 2*$(x13)*$(x18)*cos($(x43) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x19)^2 - 2*$(x13)*$(x19)*cos($(x44) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x20)^2 - 2*$(x13)*$(x20)*cos($(x45) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x21)^2 - 2*$(x13)*$(x21)*cos($(x46) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x22)^2 - 2*$(x13)*$(x22)*cos($(x47) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x23)^2 - 2*$(x13)*$(x23)*cos($(x48) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x24)^2 - 2*$(x13)*$(x24)*cos($(x49) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x13)^2 + $(x25)^2 - 2*$(x13)*$(x25)*cos($(x50) - $(x38)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x15)^2 - 2*$(x14)*$(x15)*cos($(x40) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x16)^2 - 2*$(x14)*$(x16)*cos($(x41) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x17)^2 - 2*$(x14)*$(x17)*cos($(x42) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x18)^2 - 2*$(x14)*$(x18)*cos($(x43) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x19)^2 - 2*$(x14)*$(x19)*cos($(x44) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x20)^2 - 2*$(x14)*$(x20)*cos($(x45) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x21)^2 - 2*$(x14)*$(x21)*cos($(x46) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x22)^2 - 2*$(x14)*$(x22)*cos($(x47) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x23)^2 - 2*$(x14)*$(x23)*cos($(x48) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x24)^2 - 2*$(x14)*$(x24)*cos($(x49) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x14)^2 + $(x25)^2 - 2*$(x14)*$(x25)*cos($(x50) - $(x39)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x16)^2 - 2*$(x15)*$(x16)*cos($(x41) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x17)^2 - 2*$(x15)*$(x17)*cos($(x42) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x18)^2 - 2*$(x15)*$(x18)*cos($(x43) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x19)^2 - 2*$(x15)*$(x19)*cos($(x44) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x20)^2 - 2*$(x15)*$(x20)*cos($(x45) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x21)^2 - 2*$(x15)*$(x21)*cos($(x46) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x22)^2 - 2*$(x15)*$(x22)*cos($(x47) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x23)^2 - 2*$(x15)*$(x23)*cos($(x48) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x24)^2 - 2*$(x15)*$(x24)*cos($(x49) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x15)^2 + $(x25)^2 - 2*$(x15)*$(x25)*cos($(x50) - $(x40)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x17)^2 - 2*$(x16)*$(x17)*cos($(x42) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x18)^2 - 2*$(x16)*$(x18)*cos($(x43) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x19)^2 - 2*$(x16)*$(x19)*cos($(x44) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x20)^2 - 2*$(x16)*$(x20)*cos($(x45) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x21)^2 - 2*$(x16)*$(x21)*cos($(x46) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x22)^2 - 2*$(x16)*$(x22)*cos($(x47) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x23)^2 - 2*$(x16)*$(x23)*cos($(x48) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x24)^2 - 2*$(x16)*$(x24)*cos($(x49) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x16)^2 + $(x25)^2 - 2*$(x16)*$(x25)*cos($(x50) - $(x41)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x18)^2 - 2*$(x17)*$(x18)*cos($(x43) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x19)^2 - 2*$(x17)*$(x19)*cos($(x44) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x20)^2 - 2*$(x17)*$(x20)*cos($(x45) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x21)^2 - 2*$(x17)*$(x21)*cos($(x46) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x22)^2 - 2*$(x17)*$(x22)*cos($(x47) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x23)^2 - 2*$(x17)*$(x23)*cos($(x48) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x24)^2 - 2*$(x17)*$(x24)*cos($(x49) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x17)^2 + $(x25)^2 - 2*$(x17)*$(x25)*cos($(x50) - $(x42)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x19)^2 - 2*$(x18)*$(x19)*cos($(x44) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x20)^2 - 2*$(x18)*$(x20)*cos($(x45) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x21)^2 - 2*$(x18)*$(x21)*cos($(x46) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x22)^2 - 2*$(x18)*$(x22)*cos($(x47) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x23)^2 - 2*$(x18)*$(x23)*cos($(x48) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x24)^2 - 2*$(x18)*$(x24)*cos($(x49) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x18)^2 + $(x25)^2 - 2*$(x18)*$(x25)*cos($(x50) - $(x43)) <= 1))

JuMP.add_NL_constraint(m, :($(x19)^2 + $(x20)^2 - 2*$(x19)*$(x20)*cos($(x45) - $(x44)) <= 1))

JuMP.add_NL_constraint(m, :($(x19)^2 + $(x21)^2 - 2*$(x19)*$(x21)*cos($(x46) - $(x44)) <= 1))

JuMP.add_NL_constraint(m, :($(x19)^2 + $(x22)^2 - 2*$(x19)*$(x22)*cos($(x47) - $(x44)) <= 1))

JuMP.add_NL_constraint(m, :($(x19)^2 + $(x23)^2 - 2*$(x19)*$(x23)*cos($(x48) - $(x44)) <= 1))

JuMP.add_NL_constraint(m, :($(x19)^2 + $(x24)^2 - 2*$(x19)*$(x24)*cos($(x49) - $(x44)) <= 1))

JuMP.add_NL_constraint(m, :($(x19)^2 + $(x25)^2 - 2*$(x19)*$(x25)*cos($(x50) - $(x44)) <= 1))

JuMP.add_NL_constraint(m, :($(x20)^2 + $(x21)^2 - 2*$(x20)*$(x21)*cos($(x46) - $(x45)) <= 1))

JuMP.add_NL_constraint(m, :($(x20)^2 + $(x22)^2 - 2*$(x20)*$(x22)*cos($(x47) - $(x45)) <= 1))

JuMP.add_NL_constraint(m, :($(x20)^2 + $(x23)^2 - 2*$(x20)*$(x23)*cos($(x48) - $(x45)) <= 1))

JuMP.add_NL_constraint(m, :($(x20)^2 + $(x24)^2 - 2*$(x20)*$(x24)*cos($(x49) - $(x45)) <= 1))

JuMP.add_NL_constraint(m, :($(x20)^2 + $(x25)^2 - 2*$(x20)*$(x25)*cos($(x50) - $(x45)) <= 1))

JuMP.add_NL_constraint(m, :($(x21)^2 + $(x22)^2 - 2*$(x21)*$(x22)*cos($(x47) - $(x46)) <= 1))

JuMP.add_NL_constraint(m, :($(x21)^2 + $(x23)^2 - 2*$(x21)*$(x23)*cos($(x48) - $(x46)) <= 1))

JuMP.add_NL_constraint(m, :($(x21)^2 + $(x24)^2 - 2*$(x21)*$(x24)*cos($(x49) - $(x46)) <= 1))

JuMP.add_NL_constraint(m, :($(x21)^2 + $(x25)^2 - 2*$(x21)*$(x25)*cos($(x50) - $(x46)) <= 1))

JuMP.add_NL_constraint(m, :($(x22)^2 + $(x23)^2 - 2*$(x22)*$(x23)*cos($(x48) - $(x47)) <= 1))

JuMP.add_NL_constraint(m, :($(x22)^2 + $(x24)^2 - 2*$(x22)*$(x24)*cos($(x49) - $(x47)) <= 1))

JuMP.add_NL_constraint(m, :($(x22)^2 + $(x25)^2 - 2*$(x22)*$(x25)*cos($(x50) - $(x47)) <= 1))

JuMP.add_NL_constraint(m, :($(x23)^2 + $(x24)^2 - 2*$(x23)*$(x24)*cos($(x49) - $(x48)) <= 1))

JuMP.add_NL_constraint(m, :($(x23)^2 + $(x25)^2 - 2*$(x23)*$(x25)*cos($(x50) - $(x48)) <= 1))

JuMP.add_NL_constraint(m, :($(x24)^2 + $(x25)^2 - 2*$(x24)*$(x25)*cos($(x50) - $(x49)) <= 1))

@constraint(m, x26 - x27 <= 0)

@constraint(m, x27 - x28 <= 0)

@constraint(m, x28 - x29 <= 0)

@constraint(m, x29 - x30 <= 0)

@constraint(m, x30 - x31 <= 0)

@constraint(m, x31 - x32 <= 0)

@constraint(m, x32 - x33 <= 0)

@constraint(m, x33 - x34 <= 0)

@constraint(m, x34 - x35 <= 0)

@constraint(m, x35 - x36 <= 0)

@constraint(m, x36 - x37 <= 0)

@constraint(m, x37 - x38 <= 0)

@constraint(m, x38 - x39 <= 0)

@constraint(m, x39 - x40 <= 0)

@constraint(m, x40 - x41 <= 0)

@constraint(m, x41 - x42 <= 0)

@constraint(m, x42 - x43 <= 0)

@constraint(m, x43 - x44 <= 0)

@constraint(m, x44 - x45 <= 0)

@constraint(m, x45 - x46 <= 0)

@constraint(m, x46 - x47 <= 0)

@constraint(m, x47 - x48 <= 0)

@constraint(m, x48 - x49 <= 0)

@constraint(m, x49 - x50 <= 0)
