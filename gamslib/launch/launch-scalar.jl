#  NLP written by GAMS Convert at 10/11/20 12:30:02
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         29       23        0        6        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         39       39        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        108       56       52        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1, start=1)
@variable(m, 1 <= x2, start=1)
@variable(m, 1 <= x3, start=1)
@variable(m, 5 <= x4, start=136)
@variable(m, 5 <= x5, start=47)
@variable(m, 5 <= x6, start=16)
@variable(m, 50 <= x7, start=2176)
@variable(m, 50 <= x8, start=564)
@variable(m, 50 <= x9, start=144)
@variable(m, 2.5 <= x10 <= 4, start=2.5)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, x13, start=0)
@variable(m, 125 <= x14 <= 150, start=125)
@variable(m, 75 <= x15 <= 100, start=75)
@variable(m, 50 <= x16 <= 70, start=50)
@variable(m, 1 <= x17, start=1)
@variable(m, 1 <= x18, start=1)
@variable(m, 1 <= x19, start=1)
@variable(m, 20 <= x20, start=746)
@variable(m, 20 <= x21, start=96)
@variable(m, 20 <= x22, start=129)
@variable(m, 0.25 <= x23 <= 0.3, start=0.3)
@variable(m, 0.24 <= x24 <= 0.29, start=0.29)
@variable(m, 0.16 <= x25 <= 0.21, start=0.21)
@variable(m, 1.2 <= x26 <= 1.4, start=1.2)
@variable(m, 0.6 <= x27 <= 0.75, start=0.6)
@variable(m, 0.7 <= x28 <= 0.9, start=0.7)
@variable(m, 100 <= x29, start=155)
@variable(m, 100 <= x30, start=314)
@variable(m, 100 <= x31, start=403)
@variable(m, 240 <= x32 <= 290, start=240)
@variable(m, 240 <= x33 <= 290, start=240)
@variable(m, 340 <= x34 <= 375, start=340)
@variable(m, 1000 <= x35, start=1000)
@variable(m, 1000 <= x36, start=1000)
@variable(m, 1000 <= x37, start=1000)
@variable(m, 35000 <= x38 <= 50000, start=38632)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(5272.77*($(x1)^1.2781*$(x4)^(-0.1959)*$(x23)^2.4242*$(x17)^0.38745*$(x7)^(-
    0.9904) + $(x2)^1.2781*$(x5)^(-0.1959)*$(x24)^2.4242*$(x18)^0.38745*$(x8)^(-0.9904) + $(x3)^1.2781*$(x6)^(-0.1959)*
    $(x25)^2.4242*$(x19)^0.38745*$(x9)^(-0.9904)) + 0.185214*(10.3027592771433*$(x1)^0.3322*$(x23)^(-1.5935)*$(x7)^
    0.2362*$(x14)^0.1079 + 10.3027592771433*$(x2)^0.3322*$(x24)^(-1.5935)*$(x8)^0.2362*$(x15)^0.1079 + 7.94328234724282*
    $(x3)^0.3322*$(x25)^(-1.5935)*$(x9)^0.2362*$(x16)^0.1079) + 160.99*(0.001*$(x20))^(-0.146) + 282.874*(0.001*$(x20))^
    0.648 + 160.99*(0.001*$(x21))^(-0.146) + 282.874*(0.001*$(x21))^0.648 + 181.806*(0.001*$(x22))^0.539 + 232.57*(0.001
    *$(x22))^0.772 + 38.0226256753606*(2.509*(0.001*$(x20))^0.736 + 0.0002085*$(x20) + 0.9744*(0.001*$(x20))^(-0.229))
     + 38.0226256753606*(2.509*(0.001*$(x21))^0.736 + 0.0002085*$(x21) + 0.9744*(0.001*$(x21))^(-0.229)) + 
    8.51138038202377*(7.05e-5*$(x22) - 0.000845197400305967*(0.001*$(x22))^(-1.33) + 52.5264761174087*(0.001*$(x22))^
    0.498) + 0.1637577*(1000*$(x10))^0.786 + 0.125678613298076*(1000*$(x10))^0.786 + 85*(0.003*$(x7) + 0.003*$(x8) + 
    0.003*$(x9))^0.46 - 850.76))

@constraint(m,  - x1 + 0.5*x4 == 0)

@constraint(m,  - x2 + 0.6*x5 == 0)

@constraint(m,  - x3 + 0.7*x6 == 0)

@constraint(m,  - x4 - x5 - x6 - x7 - x8 - x9 - x10 + x11 == 20)

@constraint(m,  - x5 - x6 - x8 - x9 - x10 + x12 == 20)

@constraint(m,  - x6 - x9 - x10 + x13 == 20)

@constraint(m, x17 - 5*x20 == 0)

@constraint(m, x18 - 5*x21 == 0)

@constraint(m, x19 - x22 == 0)

JuMP.add_NL_constraint(m, :($(x26)*$(x11) - $(x17) == 0))

JuMP.add_NL_constraint(m, :($(x27)*$(x12) - $(x18) == 0))

JuMP.add_NL_constraint(m, :($(x28)*$(x13) - $(x19) == 0))

JuMP.add_NL_constraint(m, :((1 - $(x23))*$(x11) - $(x7) == 0))

JuMP.add_NL_constraint(m, :((1 - $(x24))*$(x12) - $(x8) == 0))

JuMP.add_NL_constraint(m, :((1 - $(x25))*$(x13) - $(x9) == 0))

@constraint(m, 12*x4 - x7 <= 0)

@constraint(m, 10*x5 - x8 <= 0)

@constraint(m, 7*x6 - x9 <= 0)

@constraint(m,  - 16*x4 + x7 <= 0)

@constraint(m,  - 12*x5 + x8 <= 0)

@constraint(m,  - 9*x6 + x9 <= 0)

JuMP.add_NL_constraint(m, :($(x32)*$(x7) - $(x17)*$(x29) == 0))

JuMP.add_NL_constraint(m, :($(x33)*$(x8) - $(x18)*$(x30) == 0))

JuMP.add_NL_constraint(m, :($(x34)*$(x9) - $(x19)*$(x31) == 0))

JuMP.add_NL_constraint(m, :(-31.8*log(1/$(x23))*$(x32) + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-31.8*log(1/$(x24))*$(x33) + $(x36) == 0))

JuMP.add_NL_constraint(m, :(-31.8*log(1/$(x25))*$(x34) + $(x37) == 0))

@constraint(m,  - x35 - x36 - x37 + x38 == 0)