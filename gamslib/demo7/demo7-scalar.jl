#  NLP written by GAMS Convert at 10/11/20 12:23:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         58       30        2       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         71       71        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        295      283       12        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=756.650246305419)
@variable(m, 0 <= x2, start=551.724137931034)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=2001.97044334975)
@variable(m, 0 <= x5, start=1241.37931034483)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=2068.96551724138)
@variable(m, x8, start=1472022.69950739)
@variable(m, x9, start=2260788.1773399)
@variable(m, x10, start=310423.645320197)
@variable(m, x11, start=0)
@variable(m, x12, start=478341.832512315)
@variable(m, x13, start=900000)
@variable(m, x14, start=1688765.47783251)
@variable(m, 0 <= x15 <= 25000, start=25000)
@variable(m, 0 <= x16 <= 25000, start=25000)
@variable(m, 0 <= x17 <= 25000, start=25000)
@variable(m, 0 <= x18 <= 25000, start=25000)
@variable(m, 0 <= x19 <= 25000, start=25000)
@variable(m, 0 <= x20 <= 25000, start=25000)
@variable(m, 0 <= x21 <= 25000, start=25000)
@variable(m, 0 <= x22 <= 25000, start=25000)
@variable(m, 0 <= x23 <= 25000, start=25000)
@variable(m, 0 <= x24 <= 25000, start=25000)
@variable(m, 0 <= x25 <= 25000, start=25000)
@variable(m, 0 <= x26 <= 25000, start=25000)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=24472.4729064039)
@variable(m, 0 <= x31, start=7311.64532019705)
@variable(m, 0 <= x32, start=0)
@variable(m, 0 <= x33, start=15344.8275862069)
@variable(m, 0 <= x34, start=11827.5862068966)
@variable(m, 0 <= x35, start=4379.31034482759)
@variable(m, 0 <= x36, start=25068.9655172414)
@variable(m, 0 <= x37, start=31180.6502463054)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=1655.1724137931)
@variable(m, 0 <= x41, start=1134.97536945813)
@variable(m, 0 <= x42, start=3310.34482758621)
@variable(m, 0 <= x43, start=0)
@variable(m, 0 <= x44, start=6005.91133004926)
@variable(m, 0 <= x45, start=1862.06896551724)
@variable(m, 0 <= x46, start=0)
@variable(m, 0 <= x47, start=6206.89655172414)
@variable(m, 0 <= x48, start=0)
@variable(m, 0 <= x49, start=0)
@variable(m, 0 <= x50, start=1134.97536945813)
@variable(m, 0 <= x51, start=0)
@variable(m, 0 <= x52, start=6005.91133004926)
@variable(m, 0 <= x53, start=1862.06896551724)
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=6206.89655172414)
@variable(m, x56, start=100)
@variable(m, x57, start=200)
@variable(m, x58, start=125)
@variable(m, x59, start=350)
@variable(m, x60, start=70)
@variable(m, x61, start=120)
@variable(m, 0 <= x62, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= x66, start=0)
@variable(m, 0 <= x67, start=0)
@variable(m, x69, start=2260788.1773399)
@variable(m, x70, start=1133.15599343186)
@variable(m, x71, start=0)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(225*$(x50) - 0.0231481481481481*$(x50)^2 + 700*$(x51) - 0.277777777777778*
    $(x51)^2 + 250*$(x52) - 0.0892857142857143*$(x52)^2 + 700*$(x53) - 0.0833333333333333*$(x53)^2 + 210*$(x54) - 
    0.0184210526315789*$(x54)^2 + 220*$(x55) - 0.1*$(x55)^2 - $(x14) + 40*$(x62) + 300*$(x63) + 60*$(x64) - 140*$(x65)
     - 270*$(x66) - 85*$(x67)))

@constraint(m, x1 + x2 + x3 + x4 <= 4000)

@constraint(m, x1 + x2 + x3 + x4 <= 4000)

@constraint(m, x1 + 0.5*x2 + x3 + x4 + 0.5*x5 <= 4000)

@constraint(m, x1 + x3 + x4 + x5 <= 4000)

@constraint(m, x1 + 0.25*x4 + x5 + 0.25*x6 <= 4000)

@constraint(m, x5 + x6 <= 4000)

@constraint(m, x5 + x6 + 0.75*x7 <= 4000)

@constraint(m, x5 + x6 + x7 <= 4000)

@constraint(m, x5 + x6 + x7 <= 4000)

@constraint(m, x5 + 0.5*x6 + x7 <= 4000)

@constraint(m, 0.5*x1 + 0.25*x2 + 0.25*x3 + 0.5*x4 + 0.75*x5 + 0.75*x7 <= 4000)

@constraint(m, x1 + x2 + x3 + x4 <= 4000)

@constraint(m, 1.72*x1 + 4.5*x2 + 0.75*x3 + 5.16*x4 - x15 - x27 + 2*x39 + 2*x40 <= 0)

@constraint(m, 0.5*x1 + x2 + 0.75*x3 + 5*x4 - x16 - x28 + 2*x39 + 2*x40 <= 0)

@constraint(m, x1 + 8*x2 + 0.75*x3 + 5*x4 + 5*x5 - x17 - x29 + 2*x39 + 2*x40 <= 0)

@constraint(m, x1 + 16*x3 + 19.58*x4 + 5*x5 - x18 - x30 + 2*x39 + 2*x40 <= 0)

@constraint(m, 17.16*x1 + 2.42*x4 + 9*x5 + 4.3*x6 - x19 - x31 + 2*x39 + 2*x40 <= 0)

@constraint(m, 2.34*x1 + 2*x5 + 5.04*x6 - x20 - x32 + 2*x39 + 2*x40 <= 0)

@constraint(m, 1.5*x5 + 7.16*x6 + 17*x7 - x21 - x33 + 2*x39 + 2*x40 <= 0)

@constraint(m, 2*x5 + 7.97*x6 + 15*x7 - x22 - x34 + 2*x39 + 2*x40 <= 0)

@constraint(m, x5 + 4.41*x6 + 12*x7 - x23 - x35 + 2*x39 + 2*x40 <= 0)

@constraint(m, 26*x5 + 1.12*x6 + 7*x7 - x24 - x36 + 2*x39 + 2*x40 <= 0)

@constraint(m, 2.43*x1 + 2.5*x2 + 7.5*x3 + 11.16*x4 + 12*x5 + 6*x7 - x25 - x37 + 2*x39 + 2*x40 <= 0)

@constraint(m, 1.35*x1 + 7.5*x2 + 0.75*x3 + 4.68*x4 - x26 - x38 + 2*x39 + 2*x40 <= 0)

@constraint(m, x5 + x6 + x7 - 2*x39 - 2*x40 - x48 <= 0)

@constraint(m, x1 + x2 + x3 + x4 - 2*x39 - 2*x40 - x49 <= 0)

@constraint(m, x13 - 3*x15 - 3*x16 - 3*x17 - 3*x18 - 3*x19 - 3*x20 - 3*x21 - 3*x22 - 3*x23 - 3*x24 - 3*x25 - 3*x26 == 0)

JuMP.add_NL_constraint(m, :(-(225*$(x50) - 0.0462962962962963*$(x50)^2 + 700*$(x51) - 0.555555555555555*$(x51)^2 + 250*
    $(x52) - 0.178571428571429*$(x52)^2 + 700*$(x53) - 0.166666666666667*$(x53)^2 + 210*$(x54) - 0.0368421052631579*
    $(x54)^2 + 220*$(x55) - 0.2*$(x55)^2) + $(x9) - 40*$(x62) - 300*$(x63) - 60*$(x64) == 0))

@constraint(m, x12 - 4*x27 - 4*x28 - 4*x29 - 4*x30 - 4*x31 - 4*x32 - 4*x33 - 4*x34 - 4*x35 - 4*x36 - 4*x37 - 4*x38 == 0)

@constraint(m,  - x10 - x11 - x12 - x13 + x14 == 0)

@constraint(m,  - x41 + x50 - x65 == 0)

@constraint(m,  - x43 + x51 - x66 == 0)

@constraint(m,  - x44 + x52 + x62 == 0)

@constraint(m,  - x45 + x53 + x63 == 0)

@constraint(m,  - x46 + x54 - x67 == 0)

@constraint(m,  - x47 + x55 + x64 == 0)

@constraint(m,  - 0.0916666666666667*x1 - 0.0783333333333333*x2 - 0.0883333333333333*x3 - 0.176666666666667*x4
     - 0.211666666666667*x5 - 0.1*x6 - 0.19*x7 - 0.00666666666666667*x39 - 0.00666666666666667*x40 + x70 == 0)

@constraint(m,  - 1.5*x1 + x41 == 0)

@constraint(m,  - 6*x2 + x42 == 0)

@constraint(m,  - x3 + x43 == 0)

@constraint(m,  - 3*x4 + x44 == 0)

@constraint(m,  - 1.5*x5 + x45 == 0)

@constraint(m,  - 2*x6 + x46 == 0)

@constraint(m,  - 3*x7 + x47 == 0)

@constraint(m,  - 100*x41 - 200*x43 - 125*x44 - 350*x45 - 70*x46 - 120*x47 + x69 == 0)

@constraint(m,  - 10*x1 - 5*x3 - 50*x4 - 80*x5 - 5*x6 - 50*x7 + x10 == 0)

@constraint(m, x11 - 40*x48 - 40*x49 == 0)

@constraint(m, 6*x2 - 1.3*x39 - 2*x40 >= 0)

@constraint(m, 1.75*x1 - 1.6*x39 - 0.8*x40 >= 0)

@constraint(m, x8 - x9 - x13 + x14 == 0)

@constraint(m,  - 40*x62 - 300*x63 - 60*x64 + 140*x65 + 270*x66 + 85*x67 + x71 == 0)

@constraint(m, 0.0462962962962963*x50 + x56 == 225)

@constraint(m, 0.555555555555555*x51 + x57 == 700)

@constraint(m, 0.178571428571429*x52 + x58 == 250)

@constraint(m, 0.166666666666667*x53 + x59 == 700)

@constraint(m, 0.0368421052631579*x54 + x60 == 210)

@constraint(m, 0.2*x55 + x61 == 220)
