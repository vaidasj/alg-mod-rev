#  NLP written by GAMS Convert at 10/11/20 12:42:58
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         45       42        3        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         65       65        0        0        0        0        0        0
#  FX      5        5        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        146      122       24        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=-0.656505736)
@variable(m, x2, start=0.686533416)
@variable(m, x3, start=0.100750712)
@variable(m, x4, start=-0.397724192)
@variable(m, x5, start=-0.415575766)
@variable(m, x6, start=-0.551894266)
@variable(m, x7, start=-0.300338992)
@variable(m, x8, start=0.712540694)
@variable(m, x9, start=-0.865772554)
@variable(m, 0 <= x10, start=0.000421337999999993)
@variable(m, 0 <= x11, start=0.996235254)
@variable(m, x12, start=0.157466756)
@variable(m, x13, start=0.982266078)
@variable(m, x14, start=0.524500934)
@variable(m, x15, start=-0.738615034)
@variable(m, x16, start=0.279437518)
@variable(m, x17, start=-0.680964272)
@variable(m, x18, start=-0.499838934)
@variable(m, x19, start=0.337857218)
@variable(m, x20, start=-0.129287238)
@variable(m, x21, start=-0.280599468)
@variable(m, 0 <= x22, start=0)
@variable(m, x23, start=-0.73701682)
@variable(m, x24, start=-0.699796424)
@variable(m, 0 <= x25 <= 1.2, start=0)
@variable(m, x26 <= -4.034, start=-4.034)
@variable(m, x27 <= -0.222, start=-0.222)
@variable(m, 0 <= x28 <= 0, start=0)
@variable(m, x29 <= -15.616, start=-15.616)
@variable(m, x30 <= -3.918, start=-3.918)
@variable(m, 0 <= x31 <= 8.4, start=0)
@variable(m, x32 <= -5.256, start=-5.256)
@variable(m, x33 <= -6.385, start=-6.385)
@variable(m, 0 <= x34 <= 4.8, start=0)
@variable(m, x35 <= -6.848, start=-6.848)
@variable(m, x36 <= -2.12, start=-2.12)
@variable(m, x37 <= -1.919, start=-1.919)
@variable(m, 0 <= x38 <= 0.96, start=0)
@variable(m, 0 <= x39 <= 0, start=0)
@variable(m, 20.344 <= x40 <= 22.012, start=20.344)
@variable(m, 0 <= x41 <= 0, start=0)
@variable(m, 0 <= x42 <= 0, start=0)
@variable(m, 8.87 <= x43 <= 11.594, start=8.87)
@variable(m, 0 <= x44 <= 0, start=0)
@variable(m, 0 <= x45 <= 4382.44, start=0)
@variable(m, 900 <= x46 <= 6400, start=900)
@variable(m, 0 <= x47 <= 4382.44, start=0)
@variable(m, 0 <= x48 <= 4382.44, start=0)
@variable(m, 2500 <= x49 <= 4382.44, start=2500)
@variable(m, 900 <= x50 <= 6400, start=900)
@variable(m, 0 <= x51 <= 5929, start=0)
@variable(m, 900 <= x52 <= 6400, start=900)
@variable(m, 900 <= x53 <= 4382.44, start=900)
@variable(m, 0 <= x54 <= 5929, start=0)
@variable(m, 0 <= x55 <= 4382.44, start=0)
@variable(m, 0 <= x56 <= 4382.44, start=0)
@variable(m, 625 <= x57 <= 4382.44, start=625)
@variable(m, 0 <= x58 <= 4382.44, start=0)
@variable(m, 0 <= x59 <= 3969, start=0)
@variable(m, 2500 <= x60 <= 4382.44, start=2500)
@variable(m, 0 <= x61 <= 4382.44, start=0)
@variable(m, 0 <= x62 <= 4382.44, start=0)
@variable(m, 0 <= x63 <= 5929, start=0)
@variable(m, 0 <= x64 <= 6400, start=0)

@objective(m, Min, 2.28*x31 + 2.28*x34 + 1.68*x38 + 1.68*x40 + 2.28*x43)

@constraint(m,  - x17 + x18 - x25 == 0)

@constraint(m,  - x6 + x7 - x26 == 0)

@constraint(m,  - x23 + x24 - x27 == 0)

@constraint(m,  - x10 - x11 + x12 + x13 - x28 == 0)

@constraint(m,  - x20 - x29 == 0)

@constraint(m,  - x3 - x4 + x5 - x30 == 0)

@constraint(m,  - x1 - x2 + x3 + x4 - x31 == 0)

@constraint(m,  - x7 + x8 - x32 == 0)

@constraint(m,  - x12 - x13 + x14 + x15 - x33 == 0)

@constraint(m, x6 - x34 == 0)

@constraint(m,  - x19 + x20 - x35 == 0)

@constraint(m,  - x16 + x17 - x36 == 0)

@constraint(m,  - x24 - x37 == 0)

@constraint(m,  - x9 - x18 + x19 - x38 == 0)

@constraint(m,  - x22 + x23 - x39 == 0)

@constraint(m, x10 + x11 - x40 == 0)

@constraint(m,  - x21 + x22 - x41 == 0)

@constraint(m,  - x14 - x15 + x16 + x21 - x42 == 0)

@constraint(m, x1 + x2 - x43 == 0)

@constraint(m,  - x5 - x8 + x9 - x44 == 0)

JuMP.add_NL_constraint(m, :(SignPower($(x1),2) + 8.99076279639866*$(x51) - 8.99076279639866*$(x63) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x2),2) + 8.99076279639866*$(x51) - 8.99076279639866*$(x63) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x3),2) + 5.99384186426577*$(x50) - 5.99384186426577*$(x51) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x4),2) + 5.99384186426577*$(x50) - 5.99384186426577*$(x51) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x5),2) - 1.38319427636902*$(x50) + 1.38319427636902*$(x64) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x6),2) + 0.0993769948466698*$(x46) - 0.0993769948466698*$(x54) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x7),2) - 0.147352095807131*$(x46) + 0.147352095807131*$(x52) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x8),2) - 0.224905830442463*$(x52) + 0.224905830442463*$(x64) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x9),2) + 0.653873657919902*$(x58) - 0.653873657919902*$(x64) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x12),2) - 1.79815255927973*$(x48) + 1.79815255927973*$(x53) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x13),2) - 0.0265962529480588*$(x48) + 0.0265962529480588*$(x53) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x14),2) - 1.43852204742379*$(x53) + 1.43852204742379*$(x62) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x15),2) - 0.021277002358447*$(x53) + 0.021277002358447*$(x62) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x16),2) + 0.856263123466539*$(x56) - 0.856263123466539*$(x62) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x17),2) + 0.899076279639866*$(x45) - 0.899076279639866*$(x56) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x18),2) - 7.19261023711893*$(x45) + 7.19261023711893*$(x58) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x19),2) + 3.59630511855946*$(x55) - 3.59630511855946*$(x58) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x20),2) + 1.43852204742379*$(x49) - 1.43852204742379*$(x55) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x21),2) + 0.0509935163731392*$(x61) - 0.0509935163731392*$(x62) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x23),2) + 0.0016882734118691*$(x47) - 0.0016882734118691*$(x59) == 0))

JuMP.add_NL_constraint(m, :(SignPower($(x24),2) - 0.0275751323938619*$(x47) + 0.0275751323938619*$(x57) == 0))

JuMP.add_NL_constraint(m, :(-$(x10)^2 + 7.19261023711893*$(x48) - 7.19261023711893*$(x60) >= 0))

JuMP.add_NL_constraint(m, :(-$(x11)^2 + 0.106385011792235*$(x48) - 0.106385011792235*$(x60) >= 0))

JuMP.add_NL_constraint(m, :(-$(x22)^2 + 0.0063634920908912*$(x59) - 0.0063634920908912*$(x61) >= 0))
