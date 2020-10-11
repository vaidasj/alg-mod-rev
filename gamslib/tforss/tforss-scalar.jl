#  LP written by GAMS Convert at 10/11/20 12:20:58
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21       10        5        6        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         64       64        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        215      215        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)
@variable(m, 0 <= x31, start=0)
@variable(m, 0 <= x32, start=0)
@variable(m, 0 <= x33, start=0)
@variable(m, 0 <= x34, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=0)
@variable(m, 0 <= x41, start=0)
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=0)
@variable(m, 0 <= x44, start=0)
@variable(m, 0 <= x45, start=0)
@variable(m, 0 <= x46, start=0)
@variable(m, 0 <= x47, start=0)
@variable(m, 0 <= x48, start=0)
@variable(m, x49, start=0)
@variable(m, x50, start=0)
@variable(m, 0 <= x51, start=0)
@variable(m, 0 <= x52, start=0)
@variable(m, 0 <= x53, start=0)
@variable(m, 0 <= x54, start=0)
@variable(m, x55, start=0)
@variable(m, x56, start=0)
@variable(m, 0 <= x57, start=0)
@variable(m, 0 <= x58, start=0)
@variable(m, x59, start=0)
@variable(m, x60, start=0)
@variable(m, x61, start=0)
@variable(m, x62, start=0)
@variable(m, x63, start=0)

@objective(m, Max,  - x59 - x60 + x61 - x62 - x63)

@constraint(m,  - 120*x2 - 132.6*x3 - 121*x4 - 108*x5 - 104*x6 - 105*x7 - 102*x8 - 95*x10 - 120.2*x11 - 115.5*x12
     - 112*x13 - 106*x14 - 98*x15 - 105*x16 - 80*x18 - 115*x19 - 119*x20 - 112.2*x21 - 110*x22 - 97*x23 - 92*x24
     - 17.5*x25 - 66.8*x26 - 91.3*x27 - 91.3*x28 - 76*x29 - 76*x30 - 78*x31 - 76*x32 - 51.1*x34 - 81.4*x35 - 86.5*x36
     - 77*x37 - 76*x38 - 72*x39 - 80*x40 - 37.8*x42 - 71.3*x43 - 90.1*x44 - 92*x45 - 95.2*x46 - 88*x47 - 84*x48 + x49
     == 0)

@constraint(m,  - 37.4*x3 - 99*x4 - 162*x5 - 221*x6 - 270*x7 - 323*x8 - 14.8*x11 - 59.5*x12 - 108*x13 - 159*x14
     - 207*x15 - 235*x16 - 21*x20 - 57.8*x21 - 90*x22 - 128*x23 - 163*x24 - 25.7*x27 - 74.7*x28 - 114*x29 - 116*x30
     - 200*x31 - 240*x32 - 10*x35 - 44.5*x36 - 74*x37 - 113*x38 - 153*x39 - 177*x40 - 15.9*x44 - 47.6*x45 - 77.8*x46
     - 116*x47 - 148*x48 + x50 == 0)

@constraint(m, x49 - x51 >= 0)

@constraint(m, x50 - x52 - x54 >= 0)

@constraint(m,  - x53 + 0.4*x54 >= 0)

@constraint(m, 0.207*x51 + 0.207*x52 + 0.207*x53 - x57 >= 0)

@constraint(m, 0.6*x54 - x58 >= 0)

@constraint(m, x51 + x52 + x53 - x55 == 0)

@constraint(m, x54 - x56 == 0)

@constraint(m, 10*x1 + 20*x2 + 30*x3 + 40*x4 + 50*x5 + 60*x6 + 70*x7 + 80*x8 <= 35.91975)

@constraint(m, 10*x9 + 20*x10 + 30*x11 + 40*x12 + 50*x13 + 60*x14 + 70*x15 + 80*x16 <= 71.8395)

@constraint(m, 10*x17 + 20*x18 + 30*x19 + 40*x20 + 50*x21 + 60*x22 + 70*x23 + 80*x24 <= 35.91975)

@constraint(m, 10*x25 + 20*x26 + 30*x27 + 40*x28 + 50*x29 + 60*x30 + 70*x31 + 80*x32 <= 56.895)

@constraint(m, 10*x33 + 20*x34 + 30*x35 + 40*x36 + 50*x37 + 60*x38 + 70*x39 + 80*x40 <= 113.79)

@constraint(m, 10*x41 + 20*x42 + 30*x43 + 40*x44 + 50*x45 + 60*x46 + 70*x47 + 80*x48 <= 56.895)

@constraint(m,  - 4.00979558394956*x55 - 6.52387376753699*x56 + x59 == 0)

@constraint(m,  - 5.96*x51 - 5.96*x52 - 5.96*x53 - 6*x54 + x60 == 0)

@constraint(m,  - 147*x57 - 70*x58 + x61 == 0)

@constraint(m,  - 7*x49 - 7*x50 + x62 == 0)

@constraint(m,  - 389.061369015*x1 - 1009.12499239884*x2 - 2617.41034033297*x3 - 6788.88833522641*x4
     - 17608.6279319544*x5 - 45672.2459312129*x6 - 118462.043519916*x7 - 307260.032187822*x8 - 389.061369015*x9
     - 1009.12499239884*x10 - 2617.41034033297*x11 - 6788.88833522641*x12 - 17608.6279319544*x13 - 45672.2459312129*x14
     - 118462.043519916*x15 - 307260.032187822*x16 - 389.061369015*x17 - 1009.12499239884*x18 - 2617.41034033297*x19
     - 6788.88833522641*x20 - 17608.6279319544*x21 - 45672.2459312129*x22 - 118462.043519916*x23 - 307260.032187822*x24
     - 389.061369015*x25 - 1009.12499239884*x26 - 2617.41034033297*x27 - 6788.88833522641*x28 - 17608.6279319544*x29
     - 45672.2459312129*x30 - 118462.043519916*x31 - 307260.032187822*x32 - 389.061369015*x33 - 1009.12499239884*x34
     - 2617.41034033297*x35 - 6788.88833522641*x36 - 17608.6279319544*x37 - 45672.2459312129*x38 - 118462.043519916*x39
     - 307260.032187822*x40 - 389.061369015*x41 - 1009.12499239884*x42 - 2617.41034033297*x43 - 6788.88833522641*x44
     - 17608.6279319544*x45 - 45672.2459312129*x46 - 118462.043519916*x47 - 307260.032187822*x48 + x63 == 0)
