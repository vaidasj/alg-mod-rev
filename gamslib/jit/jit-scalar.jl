#  MINLP written by GAMS Convert at 10/11/20 12:47:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         33       13       18        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         26       22        0        4        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        112      100       12        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= i1, integer=true, start=1)
@variable(m, 1 <= i2, integer=true, start=1)
@variable(m, 1 <= i3, integer=true, start=1)
@variable(m, 1 <= i4, integer=true, start=1)
@variable(m, 0.000101010101010101 <= x5, start=0.000101010101010101)
@variable(m, 0.000203355363497712 <= x6, start=0.000203355363497712)
@variable(m, 0.000254065040650407 <= x7, start=0.000254065040650407)
@variable(m, 0.000254582484725051 <= x8, start=0.000254582484725051)
@variable(m, 0.000344580043072505 <= x9, start=0.000344580043072505)
@variable(m, 0.000175284837861525 <= x10, start=0.000175284837861525)
@variable(m, 0.000173510699826489 <= x11, start=0.000173510699826489)
@variable(m, 0.000115673799884326 <= x12, start=0.000115673799884326)
@variable(m, 8.97867564534231E-5 <= x13, start=8.97867564534231E-5)
@variable(m, 0.000135570242331808 <= x14, start=0.000135570242331808)
@variable(m, 8.96057347670251E-5 <= x15, start=8.96057347670251E-5)
@variable(m, 0.000134952766531714 <= x16, start=0.000134952766531714)
@variable(m, x17, start=0)
@variable(m, x18, start=0)
@variable(m, x19, start=0)
@variable(m, x20, start=0)
@variable(m, x21, start=0)
@variable(m, x22, start=0)
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, x25, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(3/$(x5) + 2.25/$(x6) + 4.5/$(x7) + 3/$(x8) + 3.42857142857143/$(x9) + 
    2.85714285714286/$(x10) + 1.14285714285714/$(x11) + 2.28571428571429/$(x12) + 3.55555555555556/$(x13) + 
    3.55555555555556/$(x14) + 3.55555555555556/$(x15) + 1.77777777777778/$(x16) + 5000*$(i1) + 5500*$(i2) + 4000*$(i3)
     + 6000*$(i4) + 6000000*$(x17) + 9000000*$(x18) + 6000000*$(x19) + 9000000*$(x20) + 8000000*$(x21) + 8000000*$(x22)
     + 8000000*$(x23) + 10000000*$(x24) + 8000000*$(x25)))

@constraint(m,  - 0.000101010101010101*i1 + x5 == 0)

@constraint(m,  - 0.000203355363497712*i2 + x6 == 0)

@constraint(m,  - 0.000254065040650407*i3 + x7 == 0)

@constraint(m,  - 0.000254582484725051*i4 + x8 == 0)

@constraint(m,  - 0.000344580043072505*i1 + x9 == 0)

@constraint(m,  - 0.000175284837861525*i2 + x10 == 0)

@constraint(m,  - 0.000173510699826489*i3 + x11 == 0)

@constraint(m,  - 0.000115673799884326*i4 + x12 == 0)

@constraint(m,  - 8.97867564534231E-5*i1 + x13 == 0)

@constraint(m,  - 0.000135570242331808*i2 + x14 == 0)

@constraint(m,  - 8.96057347670251E-5*i3 + x15 == 0)

@constraint(m,  - 0.000134952766531714*i4 + x16 == 0)

@constraint(m, 5000*i1 + 5500*i2 + 4000*i3 + 6000*i4 <= 6000000)

@constraint(m, 60*i1 + 50*i2 + 80*i3 + 40*i4 <= 3000)

@constraint(m,  - x5 + x6 + x17 >= 0)

@constraint(m,  - x6 + x7 + x18 >= 0)

@constraint(m,  - x7 + x8 + x19 >= 0)

@constraint(m,  - x9 + x10 + x20 >= 0)

@constraint(m,  - x10 + x11 + x21 >= 0)

@constraint(m,  - x11 + x12 + x22 >= 0)

@constraint(m,  - x13 + x14 + x23 >= 0)

@constraint(m,  - x14 + x15 + x24 >= 0)

@constraint(m,  - x15 + x16 + x25 >= 0)

@constraint(m, x5 - x6 + x17 >= 0)

@constraint(m, x6 - x7 + x18 >= 0)

@constraint(m, x7 - x8 + x19 >= 0)

@constraint(m, x9 - x10 + x20 >= 0)

@constraint(m, x10 - x11 + x21 >= 0)

@constraint(m, x11 - x12 + x22 >= 0)

@constraint(m, x13 - x14 + x23 >= 0)

@constraint(m, x14 - x15 + x24 >= 0)

@constraint(m, x15 - x16 + x25 >= 0)
