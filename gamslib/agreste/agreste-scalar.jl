#  LP written by GAMS Convert at 10/11/20 12:23:12
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         52       27        9       16        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        101      101        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        645      645        0        0
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
@variable(m, 0 <= x12 <= 0.036, start=0)
@variable(m, 0 <= x13 <= 0.298, start=0)
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
@variable(m, x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, x30, start=0)
@variable(m, x31, start=0)
@variable(m, x32, start=0)
@variable(m, x33, start=0)
@variable(m, x34, start=0)
@variable(m, x35, start=0)
@variable(m, x36, start=0)
@variable(m, x37, start=0)
@variable(m, x38, start=0)
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
@variable(m, 0 <= x49, start=0)
@variable(m, 0 <= x50, start=0)
@variable(m, 0 <= x51 <= 70.5, start=0)
@variable(m, 0 <= x52 <= 70.5, start=0)
@variable(m, 0 <= x53 <= 70.5, start=0)
@variable(m, 0 <= x54 <= 70.5, start=0)
@variable(m, 0 <= x55 <= 70.5, start=0)
@variable(m, 0 <= x56 <= 70.5, start=0)
@variable(m, 0 <= x57 <= 70.5, start=0)
@variable(m, 0 <= x58 <= 70.5, start=0)
@variable(m, 0 <= x59 <= 70.5, start=0)
@variable(m, 0 <= x60 <= 70.5, start=0)
@variable(m, 0 <= x61 <= 70.5, start=0)
@variable(m, 0 <= x62 <= 70.5, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= x66, start=0)
@variable(m, 0 <= x67, start=0)
@variable(m, 0 <= x68, start=0)
@variable(m, 0 <= x69, start=0)
@variable(m, 0 <= x70, start=0)
@variable(m, 0 <= x71, start=0)
@variable(m, 0 <= x72, start=0)
@variable(m, 0 <= x73, start=0)
@variable(m, 0 <= x74, start=0)
@variable(m, 0 <= x75, start=0)
@variable(m, x76, start=0)
@variable(m, 0 <= x77, start=0)
@variable(m, 0 <= x78, start=0)
@variable(m, 0 <= x79, start=0)
@variable(m, 0 <= x80, start=0)
@variable(m, 0 <= x81, start=0)
@variable(m, 0 <= x82, start=0)
@variable(m, 0 <= x83, start=0)
@variable(m, 0 <= x84, start=0)
@variable(m, 0 <= x85, start=0)
@variable(m, 0 <= x86, start=0)
@variable(m, 0 <= x87, start=0)
@variable(m, 0 <= x88, start=0)
@variable(m, 0 <= x89, start=0)
@variable(m, 0 <= x90, start=0)
@variable(m, 0 <= x91, start=0)
@variable(m, 0 <= x92, start=0)
@variable(m, 0 <= x93, start=0)
@variable(m, 0 <= x94, start=0)
@variable(m, 0 <= x95, start=0)
@variable(m, 0 <= x96, start=0)
@variable(m, x98, start=0)
@variable(m, x99, start=0)
@variable(m, x100, start=0)
@variable(m, x101, start=0)

@objective(m, Max, 934*x39 + 934*x40 + 934*x41 - x76 + x98 - x99 - x100 - x101)

@constraint(m, x3 + x5 + x7 + x8 + x10 + x12 + x14 + x20 + x22 + x28 <= 8.775)

@constraint(m, x4 + x6 + x9 + x11 + x13 + x15 + x21 + x23 + 1.407*x24 + 0.611*x25 + 0.631*x26 - x28 + x29 <= 11.64)

@constraint(m, 0.209*x24 + 2.03*x25 + 0.9*x26 - x29 <= 21.92)

@constraint(m,  - x24 - x25 - x26 + x27 == 0)

@constraint(m,  - 5.141*x24 - 21.646*x25 - 49.845*x26 + x76 == 0)

@constraint(m, 0.848*x1 + 0.569*x2 + 0.269*x16 + 0.149*x17 + 0.403*x18 + 0.133*x19 - x42 >= 0)

@constraint(m, 0.221*x3 + 0.174*x4 - x43 >= 0)

@constraint(m, 0.045*x5 + 0.03*x6 - x44 >= 0)

@constraint(m, 0.285*x16 + 0.221*x17 + 0.274*x20 + 0.26*x21 + 0.288*x22 + 0.287*x23 - 0.225*x39 - 0.152*x40 - 0.15*x41
     - x45 >= 0)

@constraint(m, 0.251*x14 + 0.211*x15 + 0.115*x18 + 0.352*x19 - x46 >= 0)

@constraint(m, 0.092*x7 - x47 >= 0)

@constraint(m, 4.456*x8 + 3.964*x9 + 3.408*x22 + 1.031*x23 - 0.965*x39 - 2.64*x40 - 0.935*x41 - x48 >= 0)

@constraint(m, 0.725*x10 + 0.563*x11 + 0.373*x14 + 0.264*x15 + 0.536*x16 + 0.544*x17 + 0.361*x18 + 0.212*x19 + 0.594*x20
     + 0.442*x21 + 0.503*x22 + 0.328*x23 - 0.235*x39 - 0.232*x40 - 0.581*x41 - x49 >= 0)

@constraint(m, 2.244*x12 + 1.666*x13 - x50 >= 0)

@constraint(m,  - 0.848*x1 - 0.569*x2 - 0.269*x16 - 0.149*x17 - 0.403*x18 - 0.133*x19 + x30 == 0)

@constraint(m,  - 0.221*x3 - 0.174*x4 + x31 == 0)

@constraint(m,  - 0.045*x5 - 0.03*x6 + x32 == 0)

@constraint(m,  - 0.285*x16 - 0.221*x17 - 0.274*x20 - 0.26*x21 - 0.288*x22 - 0.287*x23 + x33 == 0)

@constraint(m,  - 0.251*x14 - 0.211*x15 - 0.115*x18 - 0.352*x19 + x34 == 0)

@constraint(m,  - 0.092*x7 + x35 == 0)

@constraint(m,  - 4.456*x8 - 3.964*x9 - 3.408*x22 - 1.031*x23 + x36 == 0)

@constraint(m,  - 0.725*x10 - 0.563*x11 - 0.373*x14 - 0.264*x15 - 0.536*x16 - 0.544*x17 - 0.361*x18 - 0.212*x19
     - 0.594*x20 - 0.442*x21 - 0.503*x22 - 0.328*x23 + x37 == 0)

@constraint(m,  - 2.244*x12 - 1.666*x13 + x38 == 0)

@constraint(m, x39 + x40 + x41 == 1)

@constraint(m, 4.79*x1 + 4.79*x2 + 8.24*x3 + 8.24*x4 + 5.78*x5 + 5.78*x6 + 2*x7 + 5.71*x8 + 5.71*x9 + 9.19*x10
     + 9.19*x11 + 1.22*x12 + 1.22*x13 + 12.46*x14 + 12.46*x15 + 5.54*x16 + 5.54*x17 + 9.18*x18 + 9.18*x19 + 6.87*x20
     + 6.87*x21 + 7.44*x22 + 7.44*x23 + 4.261*x24 + 1.873*x25 + 1.933*x26 - x51 - x63 - 25*x75 <= 0)

@constraint(m, 10.89*x1 + 10.89*x2 + 0.89*x3 + 0.89*x4 + 3.37*x5 + 3.37*x6 + 2.36*x7 + 7.6*x8 + 7.6*x9 + 14.42*x10
     + 14.42*x11 + 1.11*x12 + 1.11*x13 + 11.35*x14 + 11.35*x15 + 10.3*x16 + 10.3*x17 + 3.94*x18 + 3.94*x19 + 10.19*x20
     + 10.19*x21 + 10.21*x22 + 10.21*x23 + 2.854*x24 + 1.262*x25 + 1.302*x26 - x52 - x64 - 25*x75 <= 0)

@constraint(m, 18.7*x1 + 18.7*x2 + 5.43*x3 + 5.43*x4 + 4.03*x5 + 4.03*x6 + 4.13*x7 + 7.28*x8 + 7.28*x9 + 10.59*x10
     + 10.59*x11 + 0.56*x12 + 0.56*x13 + 24.38*x14 + 24.38*x15 + 9.24*x16 + 9.24*x17 + 16.15*x18 + 16.15*x19 + 10.61*x20
     + 10.61*x21 + 9.63*x22 + 9.63*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x53 - x65 - 25*x75 <= 0)

@constraint(m, 9.83*x1 + 9.83*x2 + 3.31*x3 + 3.31*x4 + 7.09*x5 + 7.09*x6 + 2.13*x7 + 8.15*x8 + 8.15*x9 + 12.01*x10
     + 12.01*x11 + 0.78*x12 + 0.78*x13 + 22.03*x14 + 22.03*x15 + 8.97*x16 + 8.97*x17 + 23.69*x18 + 23.69*x19 + 9.14*x20
     + 9.14*x21 + 16.18*x22 + 16.18*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x54 - x66 - 25*x75 <= 0)

@constraint(m, 8.03*x1 + 8.03*x2 + 11.13*x3 + 11.13*x4 + 4.64*x5 + 4.64*x6 + 7.18*x7 + 8.48*x8 + 8.48*x9 + 3.47*x10
     + 3.47*x11 + 1.19*x12 + 1.19*x13 + 16.91*x14 + 16.91*x15 + 15.82*x16 + 15.82*x17 + 28.12*x18 + 28.12*x19
     + 18.38*x20 + 18.38*x21 + 20.11*x22 + 20.11*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x55 - x67 - 25*x75 <= 0)

@constraint(m, 20.95*x1 + 20.95*x2 + 10.33*x3 + 10.33*x4 + 5.91*x5 + 5.91*x6 + 5.88*x7 + 10.71*x8 + 10.71*x9 + 10.75*x10
     + 10.75*x11 + 0.44*x12 + 0.44*x13 + 9.47*x14 + 9.47*x15 + 13*x16 + 13*x17 + 20.58*x18 + 20.58*x19 + 11.5*x20
     + 11.5*x21 + 16.86*x22 + 16.86*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x56 - x68 - 25*x75 <= 0)

@constraint(m, 15.67*x1 + 15.67*x2 + 3.27*x3 + 3.27*x4 + 7.67*x5 + 7.67*x6 + 3.21*x7 + 9.34*x8 + 9.34*x9 + 5.88*x10
     + 5.88*x11 + 1.89*x12 + 1.89*x13 + 10.97*x14 + 10.97*x15 + 14.74*x16 + 14.74*x17 + 17.73*x18 + 17.73*x19 + 9.22*x20
     + 9.22*x21 + 14.86*x22 + 14.86*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x57 - x69 - 25*x75 <= 0)

@constraint(m, 15.48*x1 + 15.48*x2 + 2.65*x3 + 2.65*x4 + 9.23*x5 + 9.23*x6 + 9.2*x7 + 12.76*x8 + 12.76*x9 + 7.3*x10
     + 7.3*x11 + 3.04*x12 + 3.04*x13 + 9.7*x14 + 9.7*x15 + 10.64*x16 + 10.64*x17 + 15.06*x18 + 15.06*x19 + 13.36*x20
     + 13.36*x21 + 14*x22 + 14*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x58 - x70 - 25*x75 <= 0)

@constraint(m, 11.35*x1 + 11.35*x2 + 5.47*x3 + 5.47*x4 + 5.93*x5 + 5.93*x6 + 6.89*x7 + 8.93*x8 + 8.93*x9 + 4.14*x10
     + 4.14*x11 + 2.93*x12 + 2.93*x13 + 4.93*x14 + 4.93*x15 + 5.64*x16 + 5.64*x17 + 4.58*x18 + 4.58*x19 + 3.85*x20
     + 3.85*x21 + 8.04*x22 + 8.04*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x59 - x71 - 25*x75 <= 0)

@constraint(m, 8.38*x1 + 8.38*x2 + 3.67*x3 + 3.67*x4 + 9.05*x5 + 9.05*x6 + 3.3*x7 + 10.22*x8 + 10.22*x9 + 4.25*x10
     + 4.25*x11 + 4.99*x12 + 4.99*x13 + 6.41*x14 + 6.41*x15 + 4.9*x16 + 4.9*x17 + 9.76*x18 + 9.76*x19 + 3.87*x20
     + 3.87*x21 + 6.69*x22 + 6.69*x23 + 0.04*x24 + 0.04*x25 + 0.04*x26 - x60 - x72 - 25*x75 <= 0)

@constraint(m, 8.23*x1 + 8.23*x2 + 3.18*x3 + 3.18*x4 + 7.59*x5 + 7.59*x6 + 9.7*x7 + 6.18*x8 + 6.18*x9 + 3.49*x10
     + 3.49*x11 + 7.73*x12 + 7.73*x13 + 0.53*x14 + 0.53*x15 + 4.73*x16 + 4.73*x17 + 7.39*x18 + 7.39*x19 + 2.65*x20
     + 2.65*x21 + 5.49*x22 + 5.49*x23 + 7.075*x24 + 3.095*x25 + 3.195*x26 - x61 - x73 - 25*x75 <= 0)

@constraint(m, 4.54*x1 + 4.54*x2 + 1.44*x3 + 1.44*x4 + 6.37*x5 + 6.37*x6 + 8.87*x7 + 8.34*x8 + 8.34*x9 + 2.11*x10
     + 2.11*x11 + 9.44*x12 + 9.44*x13 + 0.89*x14 + 0.89*x15 + 4.92*x16 + 4.92*x17 + 2.67*x18 + 2.67*x19 + 1.09*x20
     + 1.09*x21 + 5.26*x22 + 5.26*x23 + 7.075*x24 + 3.095*x25 + 3.195*x26 - x62 - x74 - 25*x75 <= 0)

@constraint(m,  - 602.060322854716*x43 - 4703.49984422058*x44 - 215.898400752587*x46 - 62.2127194392644*x48
     - 34.3822170900693*x49 - x77 + x87 == 0)

@constraint(m, 350.573491928632*x43 - 487.070308443245*x44 - 124.1768579492*x46 - 1.32274451803741*x48
     + 13.6836027713626*x49 - x78 + x88 == 0)

@constraint(m, 893.266779949023*x43 - 505.244573683664*x44 + 1065.85136406397*x46 + 120.56652305318*x48
     + 85.5658198614319*x49 - x79 + x89 == 0)

@constraint(m, 556.60577740017*x43 + 5528.61148613563*x44 + 31.0442144873003*x46 + 9.17175744325124*x48
     - 7.53464203233256*x49 - x80 + x90 == 0)

@constraint(m, 241.716227697536*x43 + 6164.71076955032*x44 - 394.637817497648*x46 - 44.7218828371166*x48
     - 11.4318706697459*x49 - x81 + x91 == 0)

@constraint(m,  - 161.852166525064*x43 + 2566.20625194724*x44 - 39.5108184383818*x46 - 19.1415343064755*x48
     + 1.99191685912241*x49 - x82 + x92 == 0)

@constraint(m,  - 854.82158028887*x43 - 7756.77640461107*x44 - 77.140169332079*x46 - 21.6558420680342*x48
     - 15.7621247113164*x49 - x83 + x93 == 0)

@constraint(m,  - 422.047578589635*x43 - 414.373247481566*x44 - 281.749764816557*x46 + 16.0587743553469*x48
     - 10.5658198614319*x49 - x84 + x94 == 0)

@constraint(m,  - 165.569243840272*x43 - 450.721777962404*x44 - 279.397930385701*x46 + 0.535656870940797*x48
     - 22.6905311778291*x49 - x85 + x95 == 0)

@constraint(m, 164.188615123194*x43 + 58.1576487693447*x44 + 315.616180620884*x46 + 2.72201144620925*x48
     + 1.12586605080831*x49 - x86 + x96 == 0)

@constraint(m,  - 211*x27 - 1900*x42 - 4000*x43 - 35000*x44 - 2500*x45 - 1500*x46 - 10000*x47 - 170*x48 - 150*x49
     - 1000*x50 + x98 == 0)

@constraint(m,  - 122*x1 - 122*x2 - 45*x3 - 45*x4 - 36*x5 - 36*x6 - 291*x7 - 20*x8 - 20*x9 - 97*x10 - 97*x11 - 45*x16
     - 45*x17 - 27*x18 - 27*x19 - 53*x20 - 53*x21 - 105*x22 - 105*x23 + x99 == 0)

@constraint(m,  - 3*x51 - 3*x52 - 3*x53 - 3*x54 - 3*x55 - 3*x56 - 3*x57 - 3*x58 - 3*x59 - 3*x60 - 3*x61 - 3*x62 - 10*x63
     - 10*x64 - 10*x65 - 10*x66 - 10*x67 - 10*x68 - 10*x69 - 10*x70 - 10*x71 - 10*x72 - 10*x73 - 10*x74 - 2054*x75
     + x100 == 0)

@constraint(m, 10*x63 + 10*x64 + 10*x65 + 10*x66 + 10*x67 + 10*x68 + 10*x69 + 10*x70 + 10*x71 + 10*x72 + 10*x73 + 10*x74
     + 2054*x75 + x76 + x99 + x101 <= 7123.2)

@constraint(m,  - x27 + x101 == 0)
