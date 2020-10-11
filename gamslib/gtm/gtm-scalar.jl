#  NLP written by GAMS Convert at 10/11/20 12:20:10
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         25        1       14       10        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         64       64        0        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        162      142       20        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2 <= 0.067, start=0)
@variable(m, 0 <= x3 <= 0.067, start=0)
@variable(m, 0 <= x4 <= 0.067, start=0)
@variable(m, 0 <= x5 <= 0.067, start=0)
@variable(m, 0 <= x6 <= 0.033, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9 <= 0.3, start=0)
@variable(m, 0 <= x10 <= 0.15, start=0)
@variable(m, 0 <= x11 <= 0.1, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19 <= 0.34, start=0)
@variable(m, 0 <= x20 <= 0.35, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22 <= 1.39, start=0)
@variable(m, 0 <= x23 <= 1.06, start=0)
@variable(m, 0 <= x24 <= 2, start=0)
@variable(m, 0 <= x25 <= 2.62, start=0)
@variable(m, 0 <= x26 <= 3.73, start=0)
@variable(m, 0 <= x27 <= 0.62, start=0)
@variable(m, 0 <= x28 <= 2.3, start=0)
@variable(m, 0 <= x29 <= 1.03, start=0)
@variable(m, 0 <= x30 <= 0.12, start=0)
@variable(m, 0 <= x31 <= 1.45, start=0)
@variable(m, 0 <= x32 <= 1.46, start=0)
@variable(m, 0 <= x33 <= 0.48, start=0)
@variable(m, 0 <= x34 <= 0.14, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36 <= 0.1, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38 <= 0.48, start=0)
@variable(m, 0 <= x39 <= 0.8, start=0)
@variable(m, 0 <= x40 <= 2.475, start=0)
@variable(m, 0 <= x41 <= 3.7125, start=0)
@variable(m, 0 <= x42 <= 0.297, start=0)
@variable(m, 0 <= x43 <= 0.7128, start=0)
@variable(m, 0 <= x44 <= 9.6525, start=0)
@variable(m, 0 <= x45 <= 2.5245, start=0)
@variable(m, 0 <= x46 <= 1.7028, start=0)
@variable(m, 0 <= x47 <= 1.4256, start=0)
@variable(m, 0 <= x48 <= 0.5148, start=0)
@variable(m, 0 <= x49 <= 99, start=0)
@variable(m, 2.2 <= x50 <= 2.2, start=2.2)
@variable(m, 0.2 <= x51 <= 0.2, start=0.2)
@variable(m, 1.47 <= x52 <= 1.47, start=1.47)
@variable(m, 1.38 <= x53 <= 1.38, start=1.38)
@variable(m, 0.2 <= x54, start=0.2)
@variable(m, 0.2 <= x55, start=0.2)
@variable(m, 0.2 <= x56, start=0.2)
@variable(m, 0.2 <= x57, start=0.2)
@variable(m, 0.2 <= x58, start=0.2)
@variable(m, 0.2 <= x59, start=0.2)
@variable(m, 0.2 <= x60, start=0.2)
@variable(m, 0.2 <= x61, start=0.2)
@variable(m, 0.2 <= x62, start=0.2)
@variable(m, 0.2 <= x63, start=0.2)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :((-4.84*$(x50)^(-1)) - 0.14*$(x51)^(-1) - 6.4827*$(x52)^(-1) - 6.6654*$(x53)^(-
    1) - 8.89583741831423*$(x54)^(-0.666666666666667) - 20.7788808225955*$(x55)^(-0.515151515151515) - 12.8222379289592*
    $(x56)^(-0.538461538461538) - 112.274462577384*$(x57)^(-0.123595505617978) - 78.984522912416*$(x58)^(-
    0.538461538461538) - 325.606233858943*$(x59)^(-0.19047619047619) - 19.9925533406708*$(x60)^(-0.492537313432836) - 
    20.2959676146409*$(x61)^(-0.851851851851852) - 34.6492709112034*$(x62)^(-1.32558139534884) - 2.07326743881507*$(x63)
    ^(-0.754385964912281) - (0.0372*$(x44) - 6.47537234042553*log(1 - 0.102564102564103*$(x44)) - 0.489999999999999*log(
    1 - 1.38888888888889*$(x43)) - 1.68*log(1 - 0.392156862745098*$(x45)) + (-1.2271875*log(1 - 0.581395348837209*$(x46)
    )) - 0.2187*$(x46) - 0.979999999999999*log(1 - 0.694444444444444*$(x47)) - 0.35*log(1 - 1.92307692307692*$(x48)))
     - 0.25*$(x1) - 2.29*$(x2) - 2.22*$(x3) - 2.03*$(x4) - 1.96*$(x5) - 2.13*$(x6) - 0.4*$(x7) - 0.9*$(x8) - 1.15*$(x9)
     - 1.1*$(x10) - 1.1*$(x11) - 0.8*$(x12) - 0.8*$(x13) - 0.65*$(x14) - 0.7*$(x15) - 0.65*$(x16) - 1.5*$(x18)
     - 0.72*$(x19) - 0.46*$(x20) - 2.12*$(x21) - 1.08*$(x22) - 1.01*$(x23) - 0.82*$(x24) - 0.75*$(x25) - 0.04*$(x26)
     - 0.86*$(x27) - 0.14*$(x28) - 0.64*$(x29) - 0.77*$(x30) - 0.05*$(x31) - 0.94*$(x32) - 0.53*$(x33) - 0.31*$(x34)
     - 0.58*$(x35) - 0.7*$(x36) - 1.91*$(x37) - 0.43*$(x38) - 6*$(x39) - 2*$(x49)))

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 - x40 <= 0)

@constraint(m, x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 - x41 <= 0)

@constraint(m, x17 + x18 - x42 <= 0)

@constraint(m, x19 + x20 - x43 <= 0)

@constraint(m, x21 + x22 + x23 + x24 + x25 + x26 - x44 <= 0)

@constraint(m, x27 + x28 + x29 - x45 <= 0)

@constraint(m, x30 + x31 + x32 - x46 <= 0)

@constraint(m, x33 + x34 + x35 + x36 + x37 - x47 <= 0)

@constraint(m, x38 - x48 <= 0)

@constraint(m, x39 - x49 <= 0)

@constraint(m, x1 - x50 >= 0)

@constraint(m, x17 - x51 >= 0)

@constraint(m, x7 - x52 >= 0)

@constraint(m, x8 - x53 >= 0)

@constraint(m, x9 + x18 + x21 - x54 >= 0)

@constraint(m, x2 + x10 + x22 - x55 >= 0)

@constraint(m, x3 + x11 + x19 + x23 - x56 >= 0)

@constraint(m, x4 + x24 - x57 >= 0)

@constraint(m, x5 + x12 + x20 + x25 + x27 + x30 + x33 + x39 - x58 >= 0)

@constraint(m, x26 + x28 + x31 - x59 >= 0)

@constraint(m, x13 + x29 + x34 - x60 >= 0)

@constraint(m, x14 + x35 - x61 >= 0)

@constraint(m, x6 + x15 + x32 + x36 + x38 - x62 >= 0)

@constraint(m, x16 + x37 - x63 >= 0)
