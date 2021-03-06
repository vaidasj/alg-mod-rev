#  MINLP written by GAMS Convert at 10/11/20 12:27:14
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         92       84        1        7        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         98       91        7        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        451      169      282        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 1, start=0.4)
@variable(m, 0 <= x2 <= 1, start=0.6)
@variable(m, 0 <= x3 <= 1, start=0.4625)
@variable(m, 0 <= x4 <= 1, start=0.5375)
@variable(m, 0 <= x5 <= 1, start=0.525)
@variable(m, 0 <= x6 <= 1, start=0.475)
@variable(m, 0 <= x7 <= 1, start=0.5875)
@variable(m, 0 <= x8 <= 1, start=0.4125)
@variable(m, 0 <= x9 <= 1, start=0.65)
@variable(m, 0 <= x10 <= 1, start=0.35)
@variable(m, 0 <= x11 <= 1, start=0.7125)
@variable(m, 0 <= x12 <= 1, start=0.2875)
@variable(m, 0 <= x13 <= 1, start=0.775)
@variable(m, 0 <= x14 <= 1, start=0.225)
@variable(m, 0 <= x15 <= 1, start=0.8375)
@variable(m, 0 <= x16 <= 1, start=0.1625)
@variable(m, 0 <= x17 <= 1, start=0.9)
@variable(m, 0 <= x18 <= 1, start=0.1)
@variable(m, 0 <= x19 <= 1, start=0.2)
@variable(m, 0 <= x20 <= 1, start=0.8)
@variable(m, 0 <= x21 <= 1, start=0.3)
@variable(m, 0 <= x22 <= 1, start=0.7)
@variable(m, 0 <= x23 <= 1, start=0.4)
@variable(m, 0 <= x24 <= 1, start=0.6)
@variable(m, 0 <= x25 <= 1, start=0.5)
@variable(m, 0 <= x26 <= 1, start=0.5)
@variable(m, 0 <= x27 <= 1, start=0.6)
@variable(m, 0 <= x28 <= 1, start=0.4)
@variable(m, 0 <= x29 <= 1, start=0.7)
@variable(m, 0 <= x30 <= 1, start=0.3)
@variable(m, 0 <= x31 <= 1, start=0.8)
@variable(m, 0 <= x32 <= 1, start=0.2)
@variable(m, 0 <= x33 <= 1, start=0.9)
@variable(m, 0 <= x34 <= 1, start=0.1)
@variable(m, 0 <= x35 <= 1, start=1)
@variable(m, 0 <= x36 <= 1, start=0)
@variable(m, 0 <= x37, start=40)
@variable(m, 0 <= x38, start=127)
@variable(m, 0 <= x39, start=127)
@variable(m, 0 <= x40, start=127)
@variable(m, 0 <= x41, start=127)
@variable(m, 0 <= x42, start=127)
@variable(m, 0 <= x43, start=27)
@variable(m, 0 <= x44, start=27)
@variable(m, 0 <= x45, start=27)
@variable(m, 0 <= x46, start=87)
@variable(m, 0 <= x47, start=87)
@variable(m, 0 <= x48, start=87)
@variable(m, 0 <= x49, start=87)
@variable(m, 0 <= x50, start=87)
@variable(m, 0 <= x51, start=87)
@variable(m, 0 <= x52, start=87)
@variable(m, 0 <= x53, start=87)
@variable(m, 345 <= x54 <= 390, start=380)
@variable(m, 345 <= x55 <= 390, start=375)
@variable(m, 345 <= x56 <= 390, start=372.5)
@variable(m, 345 <= x57 <= 390, start=370)
@variable(m, 345 <= x58 <= 390, start=367.5)
@variable(m, 345 <= x59 <= 390, start=365)
@variable(m, 345 <= x60 <= 390, start=362.5)
@variable(m, 345 <= x61 <= 390, start=360)
@variable(m, 345 <= x62 <= 390, start=355)
@variable(m, 0 <= x63 <= 100, start=14.2857142857143)
@variable(m, 0 <= x64 <= 100, start=14.2857142857143)
@variable(m, 0 <= x65 <= 100, start=14.2857142857143)
@variable(m, 0 <= x66 <= 100, start=14.2857142857143)
@variable(m, 0 <= x67 <= 100, start=14.2857142857143)
@variable(m, 0 <= x68 <= 100, start=14.2857142857143)
@variable(m, 0 <= x69 <= 100, start=14.2857142857143)
@variable(m, 0.1 <= x70 <= 0.95, start=0.45)
@variable(m, 50 <= x71 <= 80, start=60)
@variable(m, 20 <= x72 <= 50, start=40)
@variable(m, -1.5 <= x73 <= -0.496714536653818, start=-0.954871459437791)
@variable(m, -1.5 <= x74 <= -0.496714536653818, start=-0.972170917937763)
@variable(m, -1.5 <= x75 <= -0.496714536653818, start=-0.977321724319633)
@variable(m, -1.5 <= x76 <= -0.496714536653818, start=-0.982151492959225)
@variable(m, -1.5 <= x77 <= -0.496714536653818, start=-0.986662793667597)
@variable(m, -1.5 <= x78 <= -0.496714536653818, start=-0.990858232660528)
@variable(m, -1.5 <= x79 <= -0.496714536653818, start=-0.994740453837617)
@variable(m, -1.5 <= x80 <= -0.496714536653818, start=-0.998312139997537)
@variable(m, -1.5 <= x81 <= -0.496714536653818, start=-1.01209290612999)
@variable(m, 0 <= x82 <= 0.151822697193183, start=0.0971285302367615)
@variable(m, 0 <= x83 <= 0.151822697193183, start=0.0755763285867959)
@variable(m, 0 <= x84 <= 0.151822697193183, start=0.0644929360644884)
@variable(m, 0 <= x85 <= 0.151822697193183, start=0.0538822972811404)
@variable(m, 0 <= x86 <= 0.151822697193183, start=0.0437417989462674)
@variable(m, 0 <= x87 <= 0.151822697193183, start=0.0340688284351046)
@variable(m, 0 <= x88 <= 0.151822697193183, start=0.0248607738701702)
@variable(m, 0 <= x89 <= 0.151822697193183, start=0.0161150242028288)
@variable(m, 0 <= x90 <= 0.151822697193183, start=0)
@variable(m, 0 <= b91 <= 1, binary=true, start=0.142857142857143)
@variable(m, 0 <= b92 <= 1, binary=true, start=0.142857142857143)
@variable(m, 0 <= b93 <= 1, binary=true, start=0.142857142857143)
@variable(m, 0 <= b94 <= 1, binary=true, start=0.142857142857143)
@variable(m, 0 <= b95 <= 1, binary=true, start=0.142857142857143)
@variable(m, 0 <= b96 <= 1, binary=true, start=0.142857142857143)
@variable(m, 0 <= b97 <= 1, binary=true, start=0.142857142857143)
@variable(m, x98 <= 100, start=0)

@objective(m, Max, x98)

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x54))^1.5 + 0.012420366417645
    *$(x54) - 2.62863*(1 - 0.00177872643187478*$(x54))^3 - 3.33399*(1 - 0.00177872643187478*$(x54))^6)/$(x54))*$(x1)
     + 1.2*$(x19) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x54))^1.5 + 0.0123117100371747*
    $(x54) - 2.83433*(1 - 0.00168976005407232*$(x54))^3 - 2.79168*(1 - 0.00168976005407232*$(x54))^6)/$(x54))*$(x2)
     + 1.2*$(x20) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x55))^1.5 + 0.012420366417645
    *$(x55) - 2.62863*(1 - 0.00177872643187478*$(x55))^3 - 3.33399*(1 - 0.00177872643187478*$(x55))^6)/$(x55))*$(x3)
     + 1.12*$(x21) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x55))^1.5 + 0.0123117100371747*
    $(x55) - 2.83433*(1 - 0.00168976005407232*$(x55))^3 - 2.79168*(1 - 0.00168976005407232*$(x55))^6)/$(x55))*$(x4)
     + 1.12*$(x22) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x56))^1.5 + 0.012420366417645
    *$(x56) - 2.62863*(1 - 0.00177872643187478*$(x56))^3 - 3.33399*(1 - 0.00177872643187478*$(x56))^6)/$(x56))*$(x5)
     + 1.11333333333333*$(x23) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x56))^1.5 + 0.0123117100371747*
    $(x56) - 2.83433*(1 - 0.00168976005407232*$(x56))^3 - 2.79168*(1 - 0.00168976005407232*$(x56))^6)/$(x56))*$(x6)
     + 1.11333333333333*$(x24) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x57))^1.5 + 0.012420366417645
    *$(x57) - 2.62863*(1 - 0.00177872643187478*$(x57))^3 - 3.33399*(1 - 0.00177872643187478*$(x57))^6)/$(x57))*$(x7)
     + 1.10666666666667*$(x25) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x57))^1.5 + 0.0123117100371747*
    $(x57) - 2.83433*(1 - 0.00168976005407232*$(x57))^3 - 2.79168*(1 - 0.00168976005407232*$(x57))^6)/$(x57))*$(x8)
     + 1.10666666666667*$(x26) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x58))^1.5 + 0.012420366417645
    *$(x58) - 2.62863*(1 - 0.00177872643187478*$(x58))^3 - 3.33399*(1 - 0.00177872643187478*$(x58))^6)/$(x58))*$(x9)
     + 1.1*$(x27) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x58))^1.5 + 0.0123117100371747*
    $(x58) - 2.83433*(1 - 0.00168976005407232*$(x58))^3 - 2.79168*(1 - 0.00168976005407232*$(x58))^6)/$(x58))*$(x10)
     + 1.1*$(x28) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x59))^1.5 + 0.012420366417645
    *$(x59) - 2.62863*(1 - 0.00177872643187478*$(x59))^3 - 3.33399*(1 - 0.00177872643187478*$(x59))^6)/$(x59))*$(x11)
     + 1.09333333333333*$(x29) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x59))^1.5 + 0.0123117100371747*
    $(x59) - 2.83433*(1 - 0.00168976005407232*$(x59))^3 - 2.79168*(1 - 0.00168976005407232*$(x59))^6)/$(x59))*$(x12)
     + 1.09333333333333*$(x30) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x60))^1.5 + 0.012420366417645
    *$(x60) - 2.62863*(1 - 0.00177872643187478*$(x60))^3 - 3.33399*(1 - 0.00177872643187478*$(x60))^6)/$(x60))*$(x13)
     + 1.08666666666667*$(x31) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x60))^1.5 + 0.0123117100371747*
    $(x60) - 2.83433*(1 - 0.00168976005407232*$(x60))^3 - 2.79168*(1 - 0.00168976005407232*$(x60))^6)/$(x60))*$(x14)
     + 1.08666666666667*$(x32) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x61))^1.5 + 0.012420366417645
    *$(x61) - 2.62863*(1 - 0.00177872643187478*$(x61))^3 - 3.33399*(1 - 0.00177872643187478*$(x61))^6)/$(x61))*$(x15)
     + 1.08*$(x33) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x61))^1.5 + 0.0123117100371747*
    $(x61) - 2.83433*(1 - 0.00168976005407232*$(x61))^3 - 2.79168*(1 - 0.00168976005407232*$(x61))^6)/$(x61))*$(x16)
     + 1.08*$(x34) == 0))

JuMP.add_NL_constraint(m, :(-48.9*exp(562.2*(-6.98273 + 1.33213*(1 - 0.00177872643187478*$(x62))^1.5 + 0.012420366417645
    *$(x62) - 2.62863*(1 - 0.00177872643187478*$(x62))^3 - 3.33399*(1 - 0.00177872643187478*$(x62))^6)/$(x62))*$(x17)
     + 1.05*$(x35) == 0))

JuMP.add_NL_constraint(m, :(-41*exp(591.8*(-7.28607 + 1.38091*(1 - 0.00168976005407232*$(x62))^1.5 + 0.0123117100371747*
    $(x62) - 2.83433*(1 - 0.00168976005407232*$(x62))^3 - 2.79168*(1 - 0.00168976005407232*$(x62))^6)/$(x62))*$(x18)
     + 1.05*$(x36) == 0))

@constraint(m,  - x1 - x2 + x19 + x20 == 0)

@constraint(m,  - x3 - x4 + x21 + x22 == 0)

@constraint(m,  - x5 - x6 + x23 + x24 == 0)

@constraint(m,  - x7 - x8 + x25 + x26 == 0)

@constraint(m,  - x9 - x10 + x27 + x28 == 0)

@constraint(m,  - x11 - x12 + x29 + x30 == 0)

@constraint(m,  - x13 - x14 + x31 + x32 == 0)

@constraint(m,  - x15 - x16 + x33 + x34 == 0)

@constraint(m,  - x17 - x18 + x35 + x36 == 0)

JuMP.add_NL_constraint(m, :($(x38)*$(x3) + $(x47)*$(x21) - $(x39)*$(x5) - $(x46)*$(x19) - 0.7*$(x63) == 0))

JuMP.add_NL_constraint(m, :($(x38)*$(x4) + $(x47)*$(x22) - $(x39)*$(x6) - $(x46)*$(x20) - 0.3*$(x63) == 0))

JuMP.add_NL_constraint(m, :($(x39)*$(x5) + $(x48)*$(x23) - $(x40)*$(x7) - $(x47)*$(x21) - 0.7*$(x64) == 0))

JuMP.add_NL_constraint(m, :($(x39)*$(x6) + $(x48)*$(x24) - $(x40)*$(x8) - $(x47)*$(x22) - 0.3*$(x64) == 0))

JuMP.add_NL_constraint(m, :($(x40)*$(x7) + $(x49)*$(x25) - $(x41)*$(x9) - $(x48)*$(x23) - 0.7*$(x65) == 0))

JuMP.add_NL_constraint(m, :($(x40)*$(x8) + $(x49)*$(x26) - $(x41)*$(x10) - $(x48)*$(x24) - 0.3*$(x65) == 0))

JuMP.add_NL_constraint(m, :($(x41)*$(x9) + $(x50)*$(x27) - $(x42)*$(x11) - $(x49)*$(x25) - 0.7*$(x66) == 0))

JuMP.add_NL_constraint(m, :($(x41)*$(x10) + $(x50)*$(x28) - $(x42)*$(x12) - $(x49)*$(x26) - 0.3*$(x66) == 0))

JuMP.add_NL_constraint(m, :($(x42)*$(x11) + $(x51)*$(x29) - $(x43)*$(x13) - $(x50)*$(x27) - 0.7*$(x67) == 0))

JuMP.add_NL_constraint(m, :($(x42)*$(x12) + $(x51)*$(x30) - $(x43)*$(x14) - $(x50)*$(x28) - 0.3*$(x67) == 0))

JuMP.add_NL_constraint(m, :($(x43)*$(x13) + $(x52)*$(x31) - $(x44)*$(x15) - $(x51)*$(x29) - 0.7*$(x68) == 0))

JuMP.add_NL_constraint(m, :($(x43)*$(x14) + $(x52)*$(x32) - $(x44)*$(x16) - $(x51)*$(x30) - 0.3*$(x68) == 0))

JuMP.add_NL_constraint(m, :($(x44)*$(x15) + $(x53)*$(x33) - $(x45)*$(x17) - $(x52)*$(x31) - 0.7*$(x69) == 0))

JuMP.add_NL_constraint(m, :($(x44)*$(x16) + $(x53)*$(x34) - $(x45)*$(x18) - $(x52)*$(x32) - 0.3*$(x69) == 0))

JuMP.add_NL_constraint(m, :($(x37)*$(x1) + $(x46)*$(x19) - $(x38)*$(x3) == 0))

JuMP.add_NL_constraint(m, :($(x37)*$(x2) + $(x46)*$(x20) - $(x38)*$(x4) == 0))

JuMP.add_NL_constraint(m, :(($(x45) + $(x71))*$(x17) - $(x53)*$(x33) == 0))

JuMP.add_NL_constraint(m, :(($(x45) + $(x71))*$(x18) - $(x53)*$(x34) == 0))

@constraint(m, x38 - x39 - x46 + x47 - x63 == 0)

@constraint(m, x39 - x40 - x47 + x48 - x64 == 0)

@constraint(m, x40 - x41 - x48 + x49 - x65 == 0)

@constraint(m, x41 - x42 - x49 + x50 - x66 == 0)

@constraint(m, x42 - x43 - x50 + x51 - x67 == 0)

@constraint(m, x43 - x44 - x51 + x52 - x68 == 0)

@constraint(m, x44 - x45 - x52 + x53 - x69 == 0)

@constraint(m, x37 - x38 + x46 == 0)

@constraint(m, x45 - x53 + x71 == 0)

JuMP.add_NL_constraint(m, :(-$(x70)*$(x71) + $(x45) == 0))

@constraint(m, x37 - x72 == 0)

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x54)*(-0.000100566666666667
     + 1.7825e-8*$(x54)))*$(x54))*$(x54) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x54))^1.5 + 0.012420366417645*
    $(x54) - 2.62863*(1 - 0.00177872643187478*$(x54))^3 - 3.33399*(1 - 0.00177872643187478*$(x54))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x54))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x54))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x54))^5)*$(x54))*$(x1) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x54)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x54)))*$(x54))*$(x54) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x54))^1.5
     + 0.0123117100371747*$(x54) - 2.83433*(1 - 0.00168976005407232*$(x54))^3 - 2.79168*(1 - 0.00168976005407232*$(x54))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x54))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x54))^2
     - 16.75008*(1 - 0.00168976005407232*$(x54))^5)*$(x54))*$(x2)) + $(x73) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x55)*(-0.000100566666666667
     + 1.7825e-8*$(x55)))*$(x55))*$(x55) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x55))^1.5 + 0.012420366417645*
    $(x55) - 2.62863*(1 - 0.00177872643187478*$(x55))^3 - 3.33399*(1 - 0.00177872643187478*$(x55))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x55))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x55))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x55))^5)*$(x55))*$(x3) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x55)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x55)))*$(x55))*$(x55) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x55))^1.5
     + 0.0123117100371747*$(x55) - 2.83433*(1 - 0.00168976005407232*$(x55))^3 - 2.79168*(1 - 0.00168976005407232*$(x55))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x55))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x55))^2
     - 16.75008*(1 - 0.00168976005407232*$(x55))^5)*$(x55))*$(x4)) + $(x74) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x56)*(-0.000100566666666667
     + 1.7825e-8*$(x56)))*$(x56))*$(x56) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x56))^1.5 + 0.012420366417645*
    $(x56) - 2.62863*(1 - 0.00177872643187478*$(x56))^3 - 3.33399*(1 - 0.00177872643187478*$(x56))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x56))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x56))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x56))^5)*$(x56))*$(x5) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x56)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x56)))*$(x56))*$(x56) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x56))^1.5
     + 0.0123117100371747*$(x56) - 2.83433*(1 - 0.00168976005407232*$(x56))^3 - 2.79168*(1 - 0.00168976005407232*$(x56))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x56))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x56))^2
     - 16.75008*(1 - 0.00168976005407232*$(x56))^5)*$(x56))*$(x6)) + $(x75) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x57)*(-0.000100566666666667
     + 1.7825e-8*$(x57)))*$(x57))*$(x57) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x57))^1.5 + 0.012420366417645*
    $(x57) - 2.62863*(1 - 0.00177872643187478*$(x57))^3 - 3.33399*(1 - 0.00177872643187478*$(x57))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x57))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x57))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x57))^5)*$(x57))*$(x7) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x57)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x57)))*$(x57))*$(x57) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x57))^1.5
     + 0.0123117100371747*$(x57) - 2.83433*(1 - 0.00168976005407232*$(x57))^3 - 2.79168*(1 - 0.00168976005407232*$(x57))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x57))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x57))^2
     - 16.75008*(1 - 0.00168976005407232*$(x57))^5)*$(x57))*$(x8)) + $(x76) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x58)*(-0.000100566666666667
     + 1.7825e-8*$(x58)))*$(x58))*$(x58) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x58))^1.5 + 0.012420366417645*
    $(x58) - 2.62863*(1 - 0.00177872643187478*$(x58))^3 - 3.33399*(1 - 0.00177872643187478*$(x58))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x58))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x58))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x58))^5)*$(x58))*$(x9) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x58)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x58)))*$(x58))*$(x58) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x58))^1.5
     + 0.0123117100371747*$(x58) - 2.83433*(1 - 0.00168976005407232*$(x58))^3 - 2.79168*(1 - 0.00168976005407232*$(x58))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x58))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x58))^2
     - 16.75008*(1 - 0.00168976005407232*$(x58))^5)*$(x58))*$(x10)) + $(x77) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x59)*(-0.000100566666666667
     + 1.7825e-8*$(x59)))*$(x59))*$(x59) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x59))^1.5 + 0.012420366417645*
    $(x59) - 2.62863*(1 - 0.00177872643187478*$(x59))^3 - 3.33399*(1 - 0.00177872643187478*$(x59))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x59))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x59))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x59))^5)*$(x59))*$(x11) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x59)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x59)))*$(x59))*$(x59) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x59))^1.5
     + 0.0123117100371747*$(x59) - 2.83433*(1 - 0.00168976005407232*$(x59))^3 - 2.79168*(1 - 0.00168976005407232*$(x59))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x59))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x59))^2
     - 16.75008*(1 - 0.00168976005407232*$(x59))^5)*$(x59))*$(x12)) + $(x78) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x60)*(-0.000100566666666667
     + 1.7825e-8*$(x60)))*$(x60))*$(x60) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x60))^1.5 + 0.012420366417645*
    $(x60) - 2.62863*(1 - 0.00177872643187478*$(x60))^3 - 3.33399*(1 - 0.00177872643187478*$(x60))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x60))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x60))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x60))^5)*$(x60))*$(x13) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x60)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x60)))*$(x60))*$(x60) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x60))^1.5
     + 0.0123117100371747*$(x60) - 2.83433*(1 - 0.00168976005407232*$(x60))^3 - 2.79168*(1 - 0.00168976005407232*$(x60))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x60))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x60))^2
     - 16.75008*(1 - 0.00168976005407232*$(x60))^5)*$(x60))*$(x14)) + $(x79) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x61)*(-0.000100566666666667
     + 1.7825e-8*$(x61)))*$(x61))*$(x61) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x61))^1.5 + 0.012420366417645*
    $(x61) - 2.62863*(1 - 0.00177872643187478*$(x61))^3 - 3.33399*(1 - 0.00177872643187478*$(x61))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x61))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x61))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x61))^5)*$(x61))*$(x15) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x61)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x61)))*$(x61))*$(x61) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x61))^1.5
     + 0.0123117100371747*$(x61) - 2.83433*(1 - 0.00168976005407232*$(x61))^3 - 2.79168*(1 - 0.00168976005407232*$(x61))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x61))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x61))^2
     - 16.75008*(1 - 0.00168976005407232*$(x61))^5)*$(x61))*$(x16)) + $(x80) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-46242.079590558 + (-33.92 + (0.23695 + $(x62)*(-0.000100566666666667
     + 1.7825e-8*$(x62)))*$(x62))*$(x62) + 4674.1308*(1.33213*(1 - 0.00177872643187478*$(x62))^1.5 + 0.012420366417645*
    $(x62) - 2.62863*(1 - 0.00177872643187478*$(x62))^3 - 3.33399*(1 - 0.00177872643187478*$(x62))^6) + 8.314*(-6.98273
     + 1.998195*(1 - 0.00177872643187478*$(x62))^0.5 - 7.88589*(1 - 0.00177872643187478*$(x62))^2 - 20.00394*(1 - 
    0.00177872643187478*$(x62))^5)*$(x62))*$(x17) + (-55570.3234397208 + (-24.35 + (0.25625 + $(x62)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x62)))*$(x62))*$(x62) + 4920.2252*(1.38091*(1 - 0.00168976005407232*$(x62))^1.5
     + 0.0123117100371747*$(x62) - 2.83433*(1 - 0.00168976005407232*$(x62))^3 - 2.79168*(1 - 0.00168976005407232*$(x62))
    ^6) + 8.314*(-7.28607 + 2.071365*(1 - 0.00168976005407232*$(x62))^0.5 - 8.50299*(1 - 0.00168976005407232*$(x62))^2
     - 16.75008*(1 - 0.00168976005407232*$(x62))^5)*$(x62))*$(x18)) + $(x81) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x54)*(-0.000100566666666667
     + 1.7825e-8*$(x54)))*$(x54))*$(x54))*$(x19) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x54)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x54)))*$(x54))*$(x54))*$(x20)) + $(x82) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x55)*(-0.000100566666666667
     + 1.7825e-8*$(x55)))*$(x55))*$(x55))*$(x21) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x55)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x55)))*$(x55))*$(x55))*$(x22)) + $(x83) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x56)*(-0.000100566666666667
     + 1.7825e-8*$(x56)))*$(x56))*$(x56))*$(x23) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x56)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x56)))*$(x56))*$(x56))*$(x24)) + $(x84) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x57)*(-0.000100566666666667
     + 1.7825e-8*$(x57)))*$(x57))*$(x57))*$(x25) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x57)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x57)))*$(x57))*$(x57))*$(x26)) + $(x85) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x58)*(-0.000100566666666667
     + 1.7825e-8*$(x58)))*$(x58))*$(x58))*$(x27) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x58)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x58)))*$(x58))*$(x58))*$(x28)) + $(x86) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x59)*(-0.000100566666666667
     + 1.7825e-8*$(x59)))*$(x59))*$(x59))*$(x29) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x59)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x59)))*$(x59))*$(x59))*$(x30)) + $(x87) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x60)*(-0.000100566666666667
     + 1.7825e-8*$(x60)))*$(x60))*$(x60))*$(x31) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x60)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x60)))*$(x60))*$(x60))*$(x32)) + $(x88) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x61)*(-0.000100566666666667
     + 1.7825e-8*$(x61)))*$(x61))*$(x61))*$(x33) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x61)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x61)))*$(x61))*$(x61))*$(x34)) + $(x89) == 0))

JuMP.add_NL_constraint(m, :(-3.13659116407937e-5*((-13603.886229474 + (-33.92 + (0.23695 + $(x62)*(-0.000100566666666667
     + 1.7825e-8*$(x62)))*$(x62))*$(x62))*$(x35) + (-19721.2182167568 + (-24.35 + (0.25625 + $(x62)*(-
    9.21666666666667e-5 + 1.22775e-8*$(x62)))*$(x62))*$(x62))*$(x36)) + $(x90) == 0))

JuMP.add_NL_constraint(m, :($(x38)*$(x74) + $(x47)*$(x83) - $(x39)*$(x75) - $(x46)*$(x82) + 0.999444137682208*$(x63)
     == 0))

JuMP.add_NL_constraint(m, :($(x39)*$(x75) + $(x48)*$(x84) - $(x40)*$(x76) - $(x47)*$(x83) + 0.999444137682208*$(x64)
     == 0))

JuMP.add_NL_constraint(m, :($(x40)*$(x76) + $(x49)*$(x85) - $(x41)*$(x77) - $(x48)*$(x84) + 0.999444137682208*$(x65)
     == 0))

JuMP.add_NL_constraint(m, :($(x41)*$(x77) + $(x50)*$(x86) - $(x42)*$(x78) - $(x49)*$(x85) + 0.999444137682208*$(x66)
     == 0))

JuMP.add_NL_constraint(m, :($(x42)*$(x78) + $(x51)*$(x87) - $(x43)*$(x79) - $(x50)*$(x86) + 0.999444137682208*$(x67)
     == 0))

JuMP.add_NL_constraint(m, :($(x43)*$(x79) + $(x52)*$(x88) - $(x44)*$(x80) - $(x51)*$(x87) + 0.999444137682208*$(x68)
     == 0))

JuMP.add_NL_constraint(m, :($(x44)*$(x80) + $(x53)*$(x89) - $(x45)*$(x81) - $(x52)*$(x88) + 0.999444137682208*$(x69)
     == 0))

@constraint(m, x17 >= 0.95)

@constraint(m, x63 + x64 + x65 + x66 + x67 + x68 + x69 == 100)

@constraint(m, b91 + b92 + b93 + b94 + b95 + b96 + b97 == 1)

@constraint(m, x63 - 100*b91 <= 0)

@constraint(m, x64 - 100*b92 <= 0)

@constraint(m, x65 - 100*b93 <= 0)

@constraint(m, x66 - 100*b94 <= 0)

@constraint(m, x67 - 100*b95 <= 0)

@constraint(m, x68 - 100*b96 <= 0)

@constraint(m, x69 - 100*b97 <= 0)

@constraint(m, 50*x70 - x71 + x98 == 0)
