#  DNLP written by GAMS Convert at 10/11/20 12:50:19
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         78        0        0       78        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         27       27        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        390       78      312        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 0, start=0)
@variable(m, 0 <= x2 <= 0, start=0)
@variable(m, 0 <= x3 <= 1, start=0.550375356)
@variable(m, 0 <= x4 <= 1, start=0.301137904)
@variable(m, 0 <= x5 <= 1, start=0.292212117)
@variable(m, 0 <= x6 <= 1, start=0.224052867)
@variable(m, 0 <= x7 <= 1, start=0.349830504)
@variable(m, 0 <= x8 <= 1, start=0.856270347)
@variable(m, 0 <= x9 <= 1, start=0.067113723)
@variable(m, 0 <= x10 <= 1, start=0.500210669)
@variable(m, 0 <= x11 <= 1, start=0.998117627)
@variable(m, 0 <= x12 <= 1, start=0.578733378)
@variable(m, 0 <= x13 <= 1, start=0.991133039)
@variable(m, 0 <= x14 <= 1, start=0.762250467)
@variable(m, 0 <= x15 <= 1, start=0.130692483)
@variable(m, 0 <= x16 <= 1, start=0.639718759)
@variable(m, 0 <= x17 <= 1, start=0.159517864)
@variable(m, 0 <= x18 <= 1, start=0.250080533)
@variable(m, 0 <= x19 <= 1, start=0.668928609)
@variable(m, 0 <= x20 <= 1, start=0.435356381)
@variable(m, 0 <= x21 <= 1, start=0.359700266)
@variable(m, 0 <= x22 <= 1, start=0.351441368)
@variable(m, 0 <= x23 <= 1, start=0.13149159)
@variable(m, 0 <= x24 <= 1, start=0.150101788)
@variable(m, 0 <= x25 <= 1, start=0.58911365)
@variable(m, 0 <= x26 <= 1, start=0.830892812)
@variable(m, x27, start=0)

@objective(m, Max, x27)

JuMP.add_NL_constraint(m, :(-sqrt(($(x3) - $(x1))^2 + ($(x4) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x5) - $(x1))^2 + ($(x6) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x5) - $(x3))^2 + ($(x6) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x7) - $(x1))^2 + ($(x8) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x7) - $(x3))^2 + ($(x8) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x7) - $(x5))^2 + ($(x8) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x9) - $(x1))^2 + ($(x10) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x9) - $(x3))^2 + ($(x10) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x9) - $(x5))^2 + ($(x10) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x9) - $(x7))^2 + ($(x10) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x11) - $(x1))^2 + ($(x12) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x11) - $(x3))^2 + ($(x12) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x11) - $(x5))^2 + ($(x12) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x11) - $(x7))^2 + ($(x12) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x11) - $(x9))^2 + ($(x12) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x13) - $(x1))^2 + ($(x14) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x13) - $(x3))^2 + ($(x14) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x13) - $(x5))^2 + ($(x14) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x13) - $(x7))^2 + ($(x14) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x13) - $(x9))^2 + ($(x14) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x13) - $(x11))^2 + ($(x14) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x1))^2 + ($(x16) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x3))^2 + ($(x16) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x5))^2 + ($(x16) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x7))^2 + ($(x16) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x9))^2 + ($(x16) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x11))^2 + ($(x16) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x15) - $(x13))^2 + ($(x16) - $(x14))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x1))^2 + ($(x18) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x3))^2 + ($(x18) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x5))^2 + ($(x18) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x7))^2 + ($(x18) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x9))^2 + ($(x18) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x11))^2 + ($(x18) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x13))^2 + ($(x18) - $(x14))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x17) - $(x15))^2 + ($(x18) - $(x16))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x1))^2 + ($(x20) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x3))^2 + ($(x20) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x5))^2 + ($(x20) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x7))^2 + ($(x20) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x9))^2 + ($(x20) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x11))^2 + ($(x20) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x13))^2 + ($(x20) - $(x14))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x15))^2 + ($(x20) - $(x16))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x19) - $(x17))^2 + ($(x20) - $(x18))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x1))^2 + ($(x22) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x3))^2 + ($(x22) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x5))^2 + ($(x22) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x7))^2 + ($(x22) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x9))^2 + ($(x22) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x11))^2 + ($(x22) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x13))^2 + ($(x22) - $(x14))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x15))^2 + ($(x22) - $(x16))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x17))^2 + ($(x22) - $(x18))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x21) - $(x19))^2 + ($(x22) - $(x20))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x1))^2 + ($(x24) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x3))^2 + ($(x24) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x5))^2 + ($(x24) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x7))^2 + ($(x24) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x9))^2 + ($(x24) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x11))^2 + ($(x24) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x13))^2 + ($(x24) - $(x14))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x15))^2 + ($(x24) - $(x16))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x17))^2 + ($(x24) - $(x18))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x19))^2 + ($(x24) - $(x20))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x23) - $(x21))^2 + ($(x24) - $(x22))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x1))^2 + ($(x26) - $(x2))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x3))^2 + ($(x26) - $(x4))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x5))^2 + ($(x26) - $(x6))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x7))^2 + ($(x26) - $(x8))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x9))^2 + ($(x26) - $(x10))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x11))^2 + ($(x26) - $(x12))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x13))^2 + ($(x26) - $(x14))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x15))^2 + ($(x26) - $(x16))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x17))^2 + ($(x26) - $(x18))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x19))^2 + ($(x26) - $(x20))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x21))^2 + ($(x26) - $(x22))^2) + $(x27) <= 0))

JuMP.add_NL_constraint(m, :(-sqrt(($(x25) - $(x23))^2 + ($(x26) - $(x24))^2) + $(x27) <= 0))
