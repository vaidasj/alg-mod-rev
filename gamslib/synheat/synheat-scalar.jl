#  MINLP written by GAMS Convert at 10/11/20 12:26:31
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         65       21       12       32        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         57       45       12        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        225      193       32        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 370 <= x13 <= 650, start=650)
@variable(m, 370 <= x14 <= 650, start=650)
@variable(m, 370 <= x15 <= 650, start=650)
@variable(m, 370 <= x16 <= 590, start=590)
@variable(m, 370 <= x17 <= 590, start=590)
@variable(m, 370 <= x18 <= 590, start=590)
@variable(m, 410 <= x19 <= 650, start=410)
@variable(m, 410 <= x20 <= 650, start=410)
@variable(m, 410 <= x21 <= 650, start=410)
@variable(m, 350 <= x22 <= 500, start=350)
@variable(m, 350 <= x23 <= 500, start=350)
@variable(m, 350 <= x24 <= 500, start=350)
@variable(m, 0 <= x25, start=2800)
@variable(m, 0 <= x26, start=2800)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=1950)
@variable(m, 0 <= x29, start=1950)
@variable(m, 0 <= x30, start=0)
@variable(m, 0 <= x31, start=3600)
@variable(m, 0 <= x32, start=3600)
@variable(m, 0 <= x33, start=0)
@variable(m, 0 <= x34, start=1950)
@variable(m, 0 <= x35, start=1950)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=0)
@variable(m, 10 <= x41, start=240)
@variable(m, 10 <= x42, start=240)
@variable(m, 10 <= x43, start=240)
@variable(m, 10 <= x44, start=300)
@variable(m, 10 <= x45, start=300)
@variable(m, 10 <= x46, start=300)
@variable(m, 10 <= x47, start=180)
@variable(m, 10 <= x48, start=180)
@variable(m, 10 <= x49, start=180)
@variable(m, 10 <= x50, start=240)
@variable(m, 10 <= x51, start=240)
@variable(m, 10 <= x52, start=240)
@variable(m, 10 <= x53, start=330)
@variable(m, 10 <= x54, start=270)
@variable(m, 10 <= x55, start=270)
@variable(m, 10 <= x56, start=330)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(150*((1e-6 + 2*$(x25)/(1e-6 + (1e-6 + 0.5*$(x41)*$(x42)*($(x41) + $(x42)))^
    0.33333))^1 + (1e-6 + 2*$(x26)/(1e-6 + (1e-6 + 0.5*$(x42)*$(x43)*($(x42) + $(x43)))^0.33333))^1 + (1e-6 + 
    199.970793713208*$(x27))^1 + (1e-6 + 2*$(x28)/(1e-6 + (1e-6 + 0.5*$(x44)*$(x45)*($(x44) + $(x45)))^0.33333))^1 + (
    1e-6 + 2*$(x29)/(1e-6 + (1e-6 + 0.5*$(x45)*$(x46)*($(x45) + $(x46)))^0.33333))^1 + (1e-6 + 199.970793713208*$(x30))^
    1 + (1e-6 + 2*$(x31)/(1e-6 + (1e-6 + 0.5*$(x47)*$(x48)*($(x47) + $(x48)))^0.33333))^1 + (1e-6 + 2*$(x32)/(1e-6 + (
    1e-6 + 0.5*$(x48)*$(x49)*($(x48) + $(x49)))^0.33333))^1 + (1e-6 + 199.970793713208*$(x33))^1 + (1e-6 + 2*$(x34)/(
    1e-6 + (1e-6 + 0.5*$(x50)*$(x51)*($(x50) + $(x51)))^0.33333))^1 + (1e-6 + 2*$(x35)/(1e-6 + (1e-6 + 0.5*$(x51)*$(x52)
    *($(x51) + $(x52)))^0.33333))^1 + (1e-6 + 199.970793713208*$(x36))^1) + 150*(2e-6 + 1.2*$(x39)/(1e-6 + 30*$(x55)*(15
     + 0.5*$(x55)))^0.33333 + 1.2*$(x40)/(1e-6 + 180*$(x56)*(90 + 0.5*$(x56)))^0.33333)^1 + 150*((1e-6 + 2*$(x37)/(1e-6
     + 35*$(x53)*(70 + $(x53)))^0.33333)^1 + (1e-6 + 2*$(x38)/(1e-6 + 35*$(x54)*(70 + $(x54)))^0.33333)^1) + 80*$(x39)
     + 80*$(x40) + 15*$(x37) + 15*$(x38) + 5500*$(b1) + 5500*$(b2) + 5500*$(b3) + 5500*$(b4) + 5500*$(b5) + 5500*$(b6)
     + 5500*$(b7) + 5500*$(b8) + 5500*$(b9) + 5500*$(b10) + 5500*$(b11) + 5500*$(b12)))

@constraint(m, 10*x13 - 10*x14 - x25 - x28 == 0)

@constraint(m, 10*x14 - 10*x15 - x26 - x29 == 0)

@constraint(m, 20*x16 - 20*x17 - x31 - x34 == 0)

@constraint(m, 20*x17 - 20*x18 - x32 - x35 == 0)

@constraint(m, 10*x15 - x37 == 3700)

@constraint(m, 20*x18 - x38 == 7400)

@constraint(m,  - x25 - x26 - x28 - x29 - x37 == -2800)

@constraint(m,  - x31 - x32 - x34 - x35 - x38 == -4400)

@constraint(m, 15*x19 - 15*x20 - x25 - x31 == 0)

@constraint(m, 15*x20 - 15*x21 - x26 - x32 == 0)

@constraint(m, 13*x22 - 13*x23 - x28 - x34 == 0)

@constraint(m, 13*x23 - 13*x24 - x29 - x35 == 0)

@constraint(m,  - 15*x19 - x39 == -9750)

@constraint(m,  - 13*x22 - x40 == -6500)

@constraint(m,  - x25 - x26 - x31 - x32 - x39 == -3600)

@constraint(m,  - x28 - x29 - x34 - x35 - x40 == -1950)

@constraint(m, x13 - x14 >= 0)

@constraint(m, x14 - x15 >= 0)

@constraint(m, x16 - x17 >= 0)

@constraint(m, x17 - x18 >= 0)

@constraint(m, x19 - x20 >= 0)

@constraint(m, x20 - x21 >= 0)

@constraint(m, x22 - x23 >= 0)

@constraint(m, x23 - x24 >= 0)

@constraint(m, x15 >= 370)

@constraint(m, x18 >= 370)

@constraint(m,  - x19 >= -650)

@constraint(m,  - x22 >= -500)

@constraint(m,  - x13 == -650)

@constraint(m,  - x16 == -590)

@constraint(m,  - x21 == -410)

@constraint(m,  - x24 == -350)

@constraint(m,  - 2800*b1 + x25 <= 0)

@constraint(m,  - 2800*b2 + x26 <= 0)

@constraint(m,  - 1950*b3 + x28 <= 0)

@constraint(m,  - 1950*b4 + x29 <= 0)

@constraint(m,  - 3600*b5 + x31 <= 0)

@constraint(m,  - 3600*b6 + x32 <= 0)

@constraint(m,  - 1950*b7 + x34 <= 0)

@constraint(m,  - 1950*b8 + x35 <= 0)

@constraint(m,  - 3600*b11 + x39 <= 0)

@constraint(m,  - 1950*b12 + x40 <= 0)

@constraint(m,  - 2800*b9 + x37 <= 0)

@constraint(m,  - 4400*b10 + x38 <= 0)

@constraint(m, 280*b1 - x13 + x19 + x41 <= 280)

@constraint(m, 280*b2 - x14 + x20 + x42 <= 280)

@constraint(m, 130*b3 - x13 + x22 + x44 <= 130)

@constraint(m, 130*b4 - x14 + x23 + x45 <= 130)

@constraint(m, 280*b5 - x16 + x19 + x47 <= 280)

@constraint(m, 280*b6 - x17 + x20 + x48 <= 280)

@constraint(m, 130*b7 - x16 + x22 + x50 <= 130)

@constraint(m, 130*b8 - x17 + x23 + x51 <= 130)

@constraint(m, 280*b1 - x14 + x20 + x42 <= 280)

@constraint(m, 280*b2 - x15 + x21 + x43 <= 280)

@constraint(m, 130*b3 - x14 + x23 + x45 <= 130)

@constraint(m, 130*b4 - x15 + x24 + x46 <= 130)

@constraint(m, 280*b5 - x17 + x20 + x48 <= 280)

@constraint(m, 280*b6 - x18 + x21 + x49 <= 280)

@constraint(m, 130*b7 - x17 + x23 + x51 <= 130)

@constraint(m, 130*b8 - x18 + x24 + x52 <= 130)

@constraint(m,  - x15 + x53 <= -320)

@constraint(m,  - x18 + x54 <= -320)

@constraint(m, x19 + x55 <= 680)

@constraint(m, x22 + x56 <= 680)
