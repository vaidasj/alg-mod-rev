#  NLP written by GAMS Convert at 10/11/20 12:16:53
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13        1        7        5        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         66       66        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        156       91       65        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=10)
@variable(m, 0 <= x2, start=10)
@variable(m, 0 <= x3, start=10)
@variable(m, 0 <= x4, start=10)
@variable(m, 0 <= x5, start=10)
@variable(m, 0 <= x6, start=10)
@variable(m, 0 <= x7, start=5)
@variable(m, 0 <= x8, start=5)
@variable(m, 0 <= x9, start=5)
@variable(m, 0 <= x10, start=5)
@variable(m, 0 <= x11, start=5)
@variable(m, 0 <= x12, start=5)
@variable(m, 0 <= x13, start=5)
@variable(m, 0 <= x14, start=5)
@variable(m, 0 <= x15, start=5)
@variable(m, 0 <= x16, start=5)
@variable(m, 0 <= x17, start=5)
@variable(m, 0 <= x18, start=5)
@variable(m, 0 <= x19, start=5)
@variable(m, 0 <= x20, start=5)
@variable(m, 0 <= x21, start=5)
@variable(m, 0 <= x22, start=5)
@variable(m, 0 <= x23, start=5)
@variable(m, 0 <= x24, start=5)
@variable(m, 0 <= x25, start=15)
@variable(m, 0 <= x26, start=15)
@variable(m, 0 <= x27, start=15)
@variable(m, 0 <= x28, start=15)
@variable(m, 0 <= x29, start=15)
@variable(m, 0 <= x30, start=15)
@variable(m, 0 <= x31, start=15)
@variable(m, 0 <= x32, start=15)
@variable(m, 0 <= x33, start=15)
@variable(m, 0 <= x34, start=15)
@variable(m, 0 <= x35, start=15)
@variable(m, 0 <= x36, start=15)
@variable(m, 0 <= x37, start=15)
@variable(m, 0 <= x38, start=15)
@variable(m, 0 <= x39, start=15)
@variable(m, 0 <= x40, start=15)
@variable(m, 0 <= x41, start=15)
@variable(m, 0 <= x42, start=15)
@variable(m, 0 <= x43, start=15)
@variable(m, 0 <= x44, start=15)
@variable(m, 0 <= x45, start=7.5)
@variable(m, 0 <= x46, start=7.5)
@variable(m, 0 <= x47, start=7.5)
@variable(m, 0 <= x48, start=7.5)
@variable(m, 0 <= x49, start=7.5)
@variable(m, 0 <= x50, start=7.5)
@variable(m, 0 <= x51, start=7.5)
@variable(m, 0 <= x52, start=12.5)
@variable(m, 0 <= x53, start=12.5)
@variable(m, 0 <= x54, start=12.5)
@variable(m, 0 <= x55, start=12.5)
@variable(m, 0 <= x56, start=12.5)
@variable(m, 0 <= x57, start=12.5)
@variable(m, 0 <= x58, start=12.5)
@variable(m, 0 <= x59, start=12.5)
@variable(m, 0 <= x60, start=12.5)
@variable(m, 0 <= x61, start=12.5)
@variable(m, 0 <= x62, start=12.5)
@variable(m, 0 <= x63, start=12.5)
@variable(m, 0 <= x64, start=12.5)
@variable(m, 0 <= x65, start=12.5)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :((-60*0.84^$(x7)*0.96^$(x25)*0.92^$(x52)) - 50*0.95^$(x1)*0.83^$(x8)*0.95^
    $(x26)*0.94^$(x53) - 50*0.85^$(x9)*0.96^$(x27)*0.92^$(x54) - 75*0.84^$(x10)*0.96^$(x28)*0.95^$(x55) - 40*0.85^$(x11)
    *0.96^$(x29)*0.95^$(x56) - 60*0.85^$(x2)*0.81^$(x12)*0.9^$(x30)*0.98^$(x57) - 35*0.9^$(x3)*0.81^$(x13)*0.92^$(x31)*
    0.98^$(x58) - 30*0.85^$(x4)*0.82^$(x14)*0.91^$(x32) - 25*0.8^$(x5)*0.8^$(x15)*0.92^$(x33) - 150*0.86^$(x16)*0.95^
    $(x34)*0.96^$(x45)*0.9^$(x59) - 30*0.99^$(x35)*0.91^$(x46)*0.95^$(x60) - 45*0.98^$(x17)*0.98^$(x36)*0.92^$(x47)*0.96
    ^$(x61) - 125*0.99^$(x37)*0.91^$(x48)*0.91^$(x62) - 200*0.88^$(x18)*0.98^$(x38)*0.92^$(x49)*0.98^$(x63) - 200*0.87^
    $(x19)*0.97^$(x39)*0.98^$(x50)*0.99^$(x64) - 130*0.88^$(x20)*0.98^$(x40)*0.93^$(x51)*0.99^$(x65) - 100*0.85^$(x21)*
    0.95^$(x41) - 100*0.95^$(x6)*0.84^$(x22)*0.92^$(x42) - 100*0.85^$(x23)*0.93^$(x43) - 150*0.85^$(x24)*0.92^$(x44)
     + 1755))

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 <= 200)

@constraint(m, x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
     <= 100)

@constraint(m, x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + x41 + x42
     + x43 + x44 <= 300)

@constraint(m, x45 + x46 + x47 + x48 + x49 + x50 + x51 <= 150)

@constraint(m, x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 + x61 + x62 + x63 + x64 + x65 <= 250)

@constraint(m, x7 + x25 + x52 >= 30)

@constraint(m, x2 + x12 + x30 + x57 >= 100)

@constraint(m, x16 + x34 + x45 + x59 >= 40)

@constraint(m, x18 + x38 + x49 + x63 >= 50)

@constraint(m, x19 + x39 + x50 + x64 >= 70)

@constraint(m, x20 + x40 + x51 + x65 >= 35)

@constraint(m, x24 + x44 >= 10)
