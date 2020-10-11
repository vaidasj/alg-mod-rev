#  LP written by GAMS Convert at 10/11/20 12:47:10
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23       23        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         92       92        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        157      157        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 100 <= x2 <= 100, start=100)
@variable(m, 0 <= x3 <= 250, start=0)
@variable(m, 0 <= x4 <= 250, start=0)
@variable(m, 0 <= x5 <= 250, start=0)
@variable(m, 0 <= x6 <= 250, start=0)
@variable(m, 0 <= x7 <= 250, start=0)
@variable(m, 0 <= x8 <= 250, start=0)
@variable(m, 0 <= x9 <= 250, start=0)
@variable(m, 0 <= x10 <= 250, start=0)
@variable(m, 0 <= x11 <= 250, start=0)
@variable(m, 0 <= x12 <= 250, start=0)
@variable(m, 0 <= x13 <= 250, start=0)
@variable(m, 0 <= x14 <= 250, start=0)
@variable(m, 0 <= x15 <= 250, start=0)
@variable(m, 0 <= x16 <= 250, start=0)
@variable(m, 0 <= x17 <= 250, start=0)
@variable(m, 0 <= x18 <= 250, start=0)
@variable(m, 0 <= x19 <= 250, start=0)
@variable(m, 0 <= x20 <= 250, start=0)
@variable(m, 0 <= x21 <= 250, start=0)
@variable(m, 0 <= x22 <= 250, start=0)
@variable(m, 0 <= x23 <= 250, start=0)
@variable(m, 0 <= x24 <= 250, start=0)
@variable(m, 0 <= x25 <= 200, start=0)
@variable(m, 0 <= x26 <= 200, start=0)
@variable(m, 0 <= x27 <= 200, start=0)
@variable(m, 0 <= x28 <= 200, start=0)
@variable(m, 0 <= x29 <= 200, start=0)
@variable(m, 0 <= x30 <= 200, start=0)
@variable(m, 0 <= x31 <= 200, start=0)
@variable(m, 0 <= x32 <= 200, start=0)
@variable(m, 0 <= x33 <= 200, start=0)
@variable(m, 0 <= x34 <= 200, start=0)
@variable(m, 0 <= x35 <= 200, start=0)
@variable(m, 0 <= x36 <= 200, start=0)
@variable(m, 0 <= x37 <= 200, start=0)
@variable(m, 0 <= x38 <= 200, start=0)
@variable(m, 0 <= x39 <= 200, start=0)
@variable(m, 0 <= x40 <= 200, start=0)
@variable(m, 0 <= x41 <= 200, start=0)
@variable(m, 0 <= x42 <= 200, start=0)
@variable(m, 0 <= x43 <= 200, start=0)
@variable(m, 0 <= x44 <= 200, start=0)
@variable(m, 0 <= x45 <= 200, start=0)
@variable(m, 0 <= x46 <= 200, start=0)
@variable(m, 0 <= x47, start=0)
@variable(m, 0 <= x48, start=0)
@variable(m, 0 <= x49, start=0)
@variable(m, 0 <= x50, start=0)
@variable(m, 0 <= x51, start=0)
@variable(m, 0 <= x52, start=0)
@variable(m, 0 <= x53, start=0)
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=0)
@variable(m, 0 <= x56, start=0)
@variable(m, 0 <= x57, start=0)
@variable(m, 0 <= x58, start=0)
@variable(m, 0 <= x59, start=0)
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62, start=0)
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
@variable(m, 0 <= x76, start=0)
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

@objective(m, Min, 10*x47 + 7.5*x48 + 2.5*x49 + 5.625*x50 + 1.875*x51 + 1.875*x52 + 0.625*x53 + 1.40625*x54 + 2.8125*x55
     + 1.40625*x56 + 1.875*x57 + 1.875*x58 + 0.625*x59 + 1.40625*x60 + 0.703125*x61 + 1.40625*x62 + 0.703125*x63
     + 1.40625*x64 + 0.46875*x65 + 0.9375*x66 + 0.46875*x67 + 1.875*x68 + 0.625*x69 + 5*x70 + 3.75*x71 + 1.25*x72
     + 2.8125*x73 + 0.9375*x74 + 0.9375*x75 + 0.3125*x76 + 0.703125*x77 + 1.40625*x78 + 0.703125*x79 + 0.9375*x80
     + 0.9375*x81 + 0.3125*x82 + 0.703125*x83 + 0.3515625*x84 + 0.703125*x85 + 0.3515625*x86 + 0.703125*x87
     + 0.234375*x88 + 0.46875*x89 + 0.234375*x90 + 0.9375*x91 + 0.3125*x92)

@constraint(m,  - x2 + x3 + x25 + x48 - x71 == 150)

@constraint(m,  - x2 + x4 + x26 + x49 - x72 == 350)

@constraint(m,  - x3 + x5 + x27 + x50 - x73 == 150)

@constraint(m,  - x3 + x6 + x28 + x51 - x74 == 350)

@constraint(m,  - x4 + x7 + x29 + x52 - x75 == 150)

@constraint(m,  - x4 + x8 + x30 + x53 - x76 == 350)

@constraint(m,  - x5 + x9 + x31 + x54 - x77 == -50)

@constraint(m,  - x5 + x10 + x32 + x55 - x78 == 100)

@constraint(m,  - x5 + x11 + x33 + x56 - x79 == 250)

@constraint(m,  - x6 + x12 + x34 + x57 - x80 == 100)

@constraint(m,  - x7 + x13 + x35 + x58 - x81 == 100)

@constraint(m,  - x8 + x14 + x36 + x59 - x82 == 100)

@constraint(m,  - x9 + x15 + x37 + x60 - x83 == 100)

@constraint(m,  - x10 + x16 + x38 + x61 - x84 == -50)

@constraint(m,  - x10 + x17 + x39 + x62 - x85 == 100)

@constraint(m,  - x10 + x18 + x40 + x63 - x86 == 250)

@constraint(m,  - x11 + x19 + x41 + x64 - x87 == 100)

@constraint(m,  - x12 + x20 + x42 + x65 - x88 == -50)

@constraint(m,  - x12 + x21 + x43 + x66 - x89 == 100)

@constraint(m,  - x12 + x22 + x44 + x67 - x90 == 250)

@constraint(m,  - x13 + x23 + x45 + x68 - x91 == 100)

@constraint(m,  - x14 + x24 + x46 + x69 - x92 == 100)
