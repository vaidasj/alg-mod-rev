#  LP written by GAMS Convert at 10/11/20 12:18:53
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         40       39        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         52       52        0        0        0        0        0        0
#  FX     13       13        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        170      170        0        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, 1 <= x7 <= 1, start=1)
@variable(m, 1 <= x8 <= 1, start=1)
@variable(m, x9, start=0)
@variable(m, 1 <= x10 <= 1, start=1)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, x13, start=0)
@variable(m, 3 <= x14 <= 3, start=3)
@variable(m, 3 <= x15 <= 3, start=3)
@variable(m, x16, start=0)
@variable(m, x17, start=0)
@variable(m, x18, start=0)
@variable(m, x19, start=0)
@variable(m, x20, start=0)
@variable(m, x21, start=0)
@variable(m, x22, start=0)
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, 0 <= x25 <= 0, start=0)
@variable(m, x26, start=0)
@variable(m, x27, start=0)
@variable(m, x28, start=0)
@variable(m, x29, start=0)
@variable(m, -2 <= x30 <= -2, start=-2)
@variable(m, -2 <= x31 <= -2, start=-2)
@variable(m, x32, start=0)
@variable(m, x33, start=0)
@variable(m, x34, start=0)
@variable(m, x35, start=0)
@variable(m, 0 <= x36 <= 0, start=0)
@variable(m, 0 <= x37 <= 0, start=0)
@variable(m, 0 <= x38 <= 0, start=0)
@variable(m, x39, start=0)
@variable(m, x40, start=0)
@variable(m, 0 <= x41 <= 0, start=0)
@variable(m, x42, start=0)
@variable(m, x43, start=0)
@variable(m, x44, start=0)
@variable(m, x45, start=0)
@variable(m, x46, start=0)
@variable(m, x47, start=0)
@variable(m, x48, start=0)
@variable(m, x49, start=0)
@variable(m, 2 <= x50 <= 2, start=2)
@variable(m, x51, start=0)
@variable(m, x52, start=0)

@objective(m, Min, x24)

@constraint(m, x2 + 0.329749103942652*x20 - 0.039426523297491*x21 + 0.548387096774194*x22 + 0.161290322580645*x23 - x50
     == 0)

@constraint(m, x3 - 0.670250896057348*x20 + 0.960573476702509*x21 + 0.548387096774194*x22 + 0.161290322580645*x23 - x50
     == 0)

@constraint(m, x4 + 0.274193548387097*x20 + 0.0161290322580645*x21 + 0.775659824046921*x22 - 0.0659824046920821*x23
     - x50 == 0)

@constraint(m, x5 + 0.274193548387097*x20 + 0.0161290322580645*x21 - 0.224340175953079*x22 + 0.934017595307918*x23 - x50
     == 0)

@constraint(m,  - x7 + 0.5*x9 + x28 == 0)

@constraint(m,  - x8 + 0.05*x10 + x29 == 0)

@constraint(m,  - 0.262295081967213*x20 + 0.262295081967213*x22 + x32 - x51 == 0)

@constraint(m,  - 0.795454545454545*x20 + 0.795454545454545*x22 + x33 - x52 == 0)

@constraint(m, 0.737704918032787*x20 - 0.737704918032787*x22 + x34 - x51 == 0)

@constraint(m, 0.204545454545455*x20 - 0.204545454545455*x22 + x35 - x52 == 0)

@constraint(m, 0.0909090909090909*x20 - 0.0909090909090909*x21 + x42 - x51 == 0)

@constraint(m, 0.5*x20 - 0.5*x21 + x43 - x52 == 0)

@constraint(m,  - 0.909090909090909*x20 + 0.909090909090909*x21 + x44 - x51 == 0)

@constraint(m,  - 0.5*x20 + 0.5*x21 + x45 - x52 == 0)

@constraint(m, 0.25*x22 - 0.25*x23 + x46 - x51 == 0)

@constraint(m, 0.666666666666667*x22 - 0.666666666666667*x23 + x47 - x52 == 0)

@constraint(m,  - 0.75*x22 + 0.75*x23 + x48 - x51 == 0)

@constraint(m,  - 0.333333333333333*x22 + 0.333333333333333*x23 + x49 - x52 == 0)

@constraint(m, x12 + 0.666666666666667*x26 - 0.666666666666667*x40 - x51 == 0)

@constraint(m, x13 + 0.8*x27 - 0.8*x40 - x52 == 0)

@constraint(m, x17 - 0.333333333333333*x26 + 0.333333333333333*x40 - x51 == 0)

@constraint(m, x18 - 0.2*x27 + 0.2*x40 - x52 == 0)

@constraint(m, 0.573770491803279*x20 - 0.0163934426229508*x21 + 0.0163934426229508*x22 - 0.0819672131147541*x23
     - 0.163934426229508*x26 - 0.327868852459016*x40 == 0)

@constraint(m, 0.0227272727272727*x20 - 0.181818181818182*x21 + 0.772727272727273*x22 - 0.0454545454545455*x23
     - 0.113636363636364*x27 - 0.454545454545455*x40 == 0)

@constraint(m, x20 - x25 - x28 - x38 == 0)

@constraint(m, x22 - x25 - x29 - x39 == 0)

@constraint(m, x21 - x25 - x30 - x36 == 0)

@constraint(m, x23 - x25 - x31 - x37 == 0)

@constraint(m,  - 0.314814814814815*x2 - 0.351851851851852*x9 + 0.833333333333333*x32 + 0.166666666666667*x33
     - 0.185185185185185*x42 - 0.148148148148148*x43 == 0)

@constraint(m,  - 0.666666666666667*x4 - 0.0196078431372549*x10 + 0.313725490196078*x34 + 0.686274509803922*x35
     - 0.294117647058824*x46 - 0.0196078431372549*x47 == 0)

@constraint(m,  - x16 + 0.5*x17 + 0.5*x18 == 0)

@constraint(m, x12 - x14 == 0)

@constraint(m, x13 - x15 == 0)

@constraint(m,  - 0.0428571428571429*x3 - 0.336134453781513*x5 + x19 - 0.428571428571429*x30 - 0.571428571428571*x31
     - 0.0428571428571429*x44 - 0.342857142857143*x45 - 0.168067226890756*x48 - 0.0672268907563025*x49 == 0)

@constraint(m,  - 0.95*x9 - 0.05*x10 + x11 - 0.95*x28 - 0.05*x29 == 0)

@constraint(m, x1 - 0.2*x11 + 0.21*x19 == 0)

@constraint(m,  - 0.274193548387097*x20 - 0.0161290322580645*x21 - 0.548387096774194*x22 - 0.161290322580645*x23 + x24
     == 0)

@constraint(m,  - x24 + x40 - x41 == 0)

@constraint(m, x6 + x24 - x50 == 0)

@constraint(m, x24 <= 100000)
