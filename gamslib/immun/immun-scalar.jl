#  QCP written by GAMS Convert at 10/11/20 12:25:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         14       13        1        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         28       28        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         76       69        7        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=1089285.30694525)
@variable(m, 0 <= x2, start=956.904106888042)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=45.5987315339224)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=40.6641597628655)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=955599.420380714)
@variable(m, 0 <= x12, start=956871.834993597)
@variable(m, 0 <= x13, start=944624.33610509)
@variable(m, 0 <= x14, start=1010042.12618163)
@variable(m, 0 <= x15, start=1094337.52145315)
@variable(m, 0 <= x16, start=0)
@variable(m, 50000 <= x17, start=50000)
@variable(m, 42000 <= x18, start=42000)
@variable(m, 40000 <= x19, start=40000)
@variable(m, 40000 <= x20, start=40000)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, x25, start=0)
@variable(m, x26, start=0)
@variable(m, x27, start=0)
@variable(m, x28, start=0)

@objective(m, Min, x22)

JuMP.add_NL_constraint(m, :($(x22)^2 - ($(x23)^2 + $(x24)^2 + $(x25)^2 + $(x26)^2 + $(x27)^2 + $(x28)^2) >= 0))

@constraint(m, x16 + x23 == 0)

@constraint(m, x17 + x24 == 50000)

@constraint(m, x18 + x25 == 42000)

@constraint(m, x19 + x26 == 40000)

@constraint(m, x20 + x27 == 40000)

@constraint(m, x21 + x28 == 45000)

@constraint(m,  - x10 - x16 == 0)

@constraint(m, 1044.80727456326*x2 + 1079.40354193291*x3 + 74.5442033113223*x4 + 36.3324688408125*x5
     + 41.3438438533384*x6 + 43.2231094830356*x7 + 43.8495313596014*x8 + 59.5100782737447*x9 + 1.00940093153723*x10
     - x11 - x17 == 0)

@constraint(m, 75.57763951196*x4 + 36.8361604344007*x5 + 41.9170101494904*x6 + 43.8223287926491*x7 + 44.4574350070353*x8
     + 60.3350903666908*x9 + 1.0391091639109*x11 - x12 - x18 == 0)

@constraint(m, 75.456505608033*x4 + 36.7771203803858*x5 + 41.8498266397494*x6 + 43.7520914870108*x7
     + 44.3861797694312*x8 + 60.2383868299423*x9 + 1.02284761238063*x12 - x13 - x19 == 0)

@constraint(m, 1167.30216560492*x4 + 74.4548991299823*x5 + 84.7245403892903*x6 + 88.5756558615307*x7
     + 89.8593610189442*x8 + 121.951989954281*x9 + 1.05*x13 - x14 - x20 == 0)

@constraint(m, 1115.8195763046*x5 + 1126.3428356729*x6 + 134.503508270593*x7 + 136.452834477414*x8 + 185.185989647919*x9
     + 1.07600174350434*x14 - x15 - x21 == 0)

@constraint(m, x1 - 40.9351218608642*x2 - 43.2018652628815*x3 - 45.3473311101868*x4 - 39.805625287987*x5
     - 41.3125769494053*x6 - 41.878149854114*x7 - 42.1403213448083*x8 - 46.6038914670337*x9 == 0)
