#  LP written by GAMS Convert at 12/13/18 10:24:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         52        2       28       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         67       67        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        602      602        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,15),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,7),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,500),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,10000),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(4,None),initialize=4)
m.x51 = Var(within=Reals,bounds=(1.2,None),initialize=1.2)
m.x52 = Var(within=Reals,bounds=(4,None),initialize=4)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x62 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x63 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x64 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x65 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x66 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   226*m.x44 + 316*m.x45 + 232*m.x46 + 238*m.x47 + 272*m.x48 + 233*m.x49 + 720*m.x50 + 44*m.x51
                        + 1200*m.x52 + 1800*m.x53 + 375*m.x54 + 339*m.x55 + 474*m.x56 + 348*m.x57 + 357*m.x58
                        + 408*m.x59 + 349.5*m.x60 + 1080*m.x61 + 48.4*m.x62 + 1320*m.x63 + 1980*m.x64 + 412.5*m.x65
                        - m.x66, sense=maximize)

m.c1 = Constraint(expr=   0.476388636363636*m.x1 + 0.476388636363636*m.x2 + 0.454584090909091*m.x3
                        + 0.333409090909091*m.x4 + 0.333409090909091*m.x5 + 0.454584090909091*m.x6
                        + 0.333409090909091*m.x7 + 0.333409090909091*m.x8 + 0.215588636363636*m.x9
                        + 0.215588636363636*m.x10 + 0.136363636363636*m.x11 + 0.136363636363636*m.x12
                        + 0.718140909090909*m.x14 + 0.136363636363636*m.x15 <= 137)

m.c2 = Constraint(expr=   0.1605575*m.x1 + 0.1605575*m.x2 + 0.16342125*m.x3 + 0.103125*m.x4 + 0.103125*m.x5
                        + 0.16342125*m.x6 + 0.103125*m.x7 + 0.103125*m.x8 + 0.1227175*m.x9 + 0.1227175*m.x10
                        + 0.11725*m.x11 + 0.11725*m.x12 + 0.05475*m.x13 + 0.218540416666667*m.x14
                        + 0.110091666666667*m.x15 <= 137)

m.c3 = Constraint(expr=   0.164056875*m.x1 + 0.164056875*m.x2 + 0.10530625*m.x3 + 0.108125*m.x4 + 0.108125*m.x5
                        + 0.10530625*m.x6 + 0.108125*m.x7 + 0.108125*m.x8 + 0.115656875*m.x9 + 0.115656875*m.x10
                        + 0.04625*m.x11 + 0.04625*m.x12 + 0.04625*m.x13 + 0.145571875*m.x14 + 0.04625*m.x15 <= 137)

m.c4 = Constraint(expr=   0.19877*m.x1 + 0.19877*m.x2 + 0.0695733333333333*m.x3 + 0.0706666666666667*m.x4
                        + 0.0706666666666667*m.x5 + 0.0695733333333333*m.x6 + 0.0706666666666667*m.x7
                        + 0.0706666666666667*m.x8 + 0.179996666666667*m.x9 + 0.179996666666667*m.x10
                        + 0.0466666666666667*m.x11 + 0.0466666666666667*m.x12 + 0.0466666666666667*m.x13
                        + 0.0466666666666667*m.x14 + 0.0466666666666667*m.x15 <= 137)

m.c5 = Constraint(expr=   0.234588*m.x1 + 0.234588*m.x2 + 0.0982066666666667*m.x3 + 0.100666666666667*m.x4
                        + 0.100666666666667*m.x5 + 0.0982066666666667*m.x6 + 0.100666666666667*m.x7
                        + 0.100666666666667*m.x8 + 0.192348*m.x9 + 0.192348*m.x10 + 0.0466666666666667*m.x11
                        + 0.0466666666666667*m.x12 + 0.0466666666666667*m.x13 + 0.103933333333333*m.x14
                        + 0.0466666666666667*m.x15 <= 137)

m.c6 = Constraint(expr=   0.485485714285714*m.x1 + 0.485485714285714*m.x2 + 0.3582*m.x3 + 0.242857142857143*m.x4
                        + 0.242857142857143*m.x5 + 0.3582*m.x6 + 0.242857142857143*m.x7 + 0.242857142857143*m.x8
                        + 0.626285714285714*m.x9 + 0.626285714285714*m.x10 + 0.53*m.x11 + 0.337142857142857*m.x12
                        + 0.422857142857143*m.x13 + 0.40115*m.x14 + 0.345928571428571*m.x15 <= 137)

m.c7 = Constraint(expr=   0.680020625*m.x1 + 0.680020625*m.x2 + 0.4546*m.x3 + 0.6825*m.x4 + 0.6825*m.x5 + 0.4009125*m.x6
                        + 0.62625*m.x7 + 0.62625*m.x8 + 0.442420625*m.x9 + 0.442420625*m.x10 + 0.1646875*m.x11
                        + 0.353125*m.x12 + 0.37875*m.x13 + 0.390175*m.x14 + 0.1646875*m.x15 <= 137)

m.c8 = Constraint(expr=   0.352163333333333*m.x1 + 0.352163333333333*m.x2 + 0.599333333333333*m.x3
                        + 0.293333333333333*m.x4 + 0.293333333333333*m.x5 + 0.713866666666667*m.x6
                        + 0.413333333333333*m.x7 + 0.413333333333333*m.x8 + 0.352163333333333*m.x9
                        + 0.352163333333333*m.x10 + 0.599333333333333*m.x11 + 0.599333333333333*m.x12
                        + 0.293333333333333*m.x13 + 0.599333333333333*m.x14 + 0.599333333333333*m.x15 <= 137)

m.c9 = Constraint(expr=   0.333424*m.x1 + 0.333424*m.x2 + 0.333333333333333*m.x3 + 0.360666666666667*m.x4
                        + 0.360666666666667*m.x5 + 0.333333333333333*m.x6 + 0.360666666666667*m.x7
                        + 0.360666666666667*m.x8 + 0.333424*m.x9 + 0.333424*m.x10 + 0.333333333333333*m.x11
                        + 0.333333333333333*m.x12 + 0.360666666666667*m.x13 + 0.333333333333333*m.x14
                        + 0.333333333333333*m.x15 <= 137)

m.c10 = Constraint(expr=   0.297075*m.x1 + 0.297075*m.x2 + 0.375*m.x3 + 0.465833333333333*m.x4 + 0.465833333333333*m.x5
                         + 0.375*m.x6 + 0.465833333333333*m.x7 + 0.465833333333333*m.x8 + 0.297075*m.x9 + 0.297075*m.x10
                         + 0.375*m.x11 + 0.375*m.x12 + 0.465833333333333*m.x13 + 0.375*m.x14 + 0.375*m.x15 <= 137)

m.c11 = Constraint(expr=   1.15321*m.x1 + 1.15321*m.x2 + 0.101428571428571*m.x3 + 0.0714285714285714*m.x4
                         + 0.0714285714285714*m.x5 + 0.101428571428571*m.x6 + 0.0714285714285714*m.x7
                         + 0.0714285714285714*m.x8 + 1.15321*m.x9 + 1.15321*m.x10 + 0.101428571428571*m.x11
                         + 0.101428571428571*m.x12 + 0.0714285714285714*m.x13 + 0.101428571428571*m.x14
                         + 0.101428571428571*m.x15 <= 153.44)

m.c12 = Constraint(expr=   0.306531428571429*m.x1 + 0.306531428571429*m.x2 + 0.216190476190476*m.x3
                         + 0.173809523809524*m.x4 + 0.173809523809524*m.x5 + 0.216190476190476*m.x6
                         + 0.173809523809524*m.x7 + 0.173809523809524*m.x8 + 0.306531428571429*m.x9
                         + 0.306531428571429*m.x10 + 0.216190476190476*m.x11 + 0.216190476190476*m.x12
                         + 0.173809523809524*m.x13 + 0.216190476190476*m.x14 + 0.216190476190476*m.x15 <= 137)

m.c13 = Constraint(expr=   0.208536666666667*m.x1 + 0.208536666666667*m.x2 + 0.175556666666667*m.x3
                         + 0.145666666666667*m.x4 + 0.145666666666667*m.x5 + 0.175556666666667*m.x6
                         + 0.145666666666667*m.x7 + 0.145666666666667*m.x8 + 0.17803*m.x9 + 0.17803*m.x10
                         + 0.138333333333333*m.x11 + 0.138333333333333*m.x12 + 0.106666666666667*m.x13
                         + 0.166966666666667*m.x14 + 0.138333333333333*m.x15 <= 137)

m.c14 = Constraint(expr=   0.191864285714286*m.x1 + 0.191864285714286*m.x2 + 0.0923535714285714*m.x3
                         + 0.530357142857143*m.x4 + 0.530357142857143*m.x5 + 0.0923535714285714*m.x6
                         + 0.530357142857143*m.x7 + 0.530357142857143*m.x8 + 0.18935*m.x9 + 0.18935*m.x10
                         + 0.0892857142857143*m.x11 + 0.0892857142857143*m.x12 + 0.527142857142857*m.x13
                         + 0.0432678571428571*m.x14 + 0.0125892857142857*m.x15 <= 137)

m.c15 = Constraint(expr=   0.124125*m.x1 + 0.124125*m.x2 + 0.121475*m.x3 + 0.5595*m.x4 + 0.5595*m.x5 + 0.121475*m.x6
                         + 0.5595*m.x7 + 0.5595*m.x8 + 0.106525*m.x9 + 0.106525*m.x10 + 0.1*m.x11 + 0.1*m.x12
                         + 0.537*m.x13 + 0.03987*m.x14 + 0.0141*m.x15 <= 137)

m.c16 = Constraint(expr=   0.1505152*m.x1 + 0.161051264*m.x2 + 0.1836542*m.x3 + 0.19242*m.x4 + 0.2058894*m.x5 - m.x20
                         - m.x44 - m.x55 >= 0)

m.c17 = Constraint(expr=   0.05117395*m.x1 + 0.0547561265*m.x2 + 0.22776385*m.x6 + 0.238635*m.x7 + 0.25533945*m.x8
                         + 0.05117395*m.x9 + 0.0547561265*m.x10 - m.x21 - m.x45 - m.x56 >= 0)

m.c18 = Constraint(expr=   0.27853605*m.x1 + 0.2980335735*m.x2 + 0.27853605*m.x9 + 0.2980335735*m.x10 - m.x22 - m.x46
                         - m.x57 >= 0)

m.c19 = Constraint(expr=   0.48135*m.x4 + 0.5150445*m.x5 + 0.48135*m.x7 + 0.5150445*m.x8 + 0.48135*m.x13 - m.x23 - m.x47
                         - m.x58 >= 0)

m.c20 = Constraint(expr=   0.2791*m.x1 + 0.298637*m.x2 + 0.2791*m.x9 + 0.298637*m.x10 - m.x24 - m.x48 - m.x59 >= 0)

m.c21 = Constraint(expr=   0.42885*m.x3 + 0.42885*m.x6 + 0.42885*m.x11 + 0.42885*m.x12 + 0.42885*m.x14 + 0.42885*m.x15
                         - m.x25 - m.x49 - m.x60 >= 0)

m.c22 = Constraint(expr=   0.35025105*m.x3 + 0.248405*m.x4 + 0.26579335*m.x5 + 0.35025105*m.x6 + 0.248405*m.x7
                         + 0.26579335*m.x8 + 1.7487712*m.x9 + 1.871185184*m.x10 + 2.48405*m.x11 + 0.248405*m.x12
                         + 2.48405*m.x13 + 0.35025105*m.x14 + 0.35025105*m.x15 - 0.12*m.x32 >= 0)

m.c23 = Constraint(expr=   0.09496245*m.x14 - m.x50 - m.x61 >= 0)

m.c24 = Constraint(expr=   0.5745*m.x3 + 0.5745*m.x4 + 0.614715*m.x5 + 0.5745*m.x6 + 0.5745*m.x11 + 0.5745*m.x13
                         + 0.5745*m.x14 - m.x26 >= 0)

m.c25 = Constraint(expr=   0.4934955*m.x3 + 0.4934955*m.x11 - 0.2*m.x26 >= 0)

m.c26 = Constraint(expr=   0.5154*m.x15 + 0.3*m.x16 - 0.55*m.x18 - 0.5*m.x19 >= 0)

m.c27 = Constraint(expr= - 3.3*m.x18 - 2.6*m.x19 + m.x20 + m.x21 + m.x22 + m.x23 + m.x24 + m.x25 >= 0)

m.c28 = Constraint(expr=   0.430086545*m.x1 + 0.46019260315*m.x2 + 0.6125042*m.x3 + 0.67377*m.x4 + 0.7209339*m.x5
                         + 0.679390235*m.x6 + 0.7438485*m.x7 + 0.795917895*m.x8 + 0.279571345*m.x9 + 0.29914133915*m.x10
                         + 0.42885*m.x11 + 0.42885*m.x12 + 0.48135*m.x13 + 0.571293675*m.x14 + 0.42885*m.x15 - 8.8*m.x18
                         - 8.8*m.x19 - 0.12*m.x31 - m.x51 - m.x62 >= 0)

m.c29 = Constraint(expr= - 0.12*m.x33 + m.x37 >= 0)

m.c30 = Constraint(expr= - 0.83*m.x31 - 0.83*m.x32 - 0.83*m.x33 + m.x38 >= 0)

m.c31 = Constraint(expr= - m.x27 + m.x39 >= 0)

m.c32 = Constraint(expr= - m.x28 + m.x40 >= 0)

m.c33 = Constraint(expr= - m.x29 + m.x41 >= 0)

m.c34 = Constraint(expr= - m.x30 + m.x42 >= 0)

m.c35 = Constraint(expr=   m.x19 - m.x52 - m.x63 >= 0)

m.c36 = Constraint(expr=   m.x18 - 0.12*m.x19 - m.x53 - m.x64 >= 0)

m.c37 = Constraint(expr= - 0.05*m.x31 - 0.05*m.x32 - 0.05*m.x33 - m.x34 + m.x43 >= 0)

m.c38 = Constraint(expr=   8*m.x18 + 8*m.x19 - m.x35 >= 0)

m.c39 = Constraint(expr=   0.07596996*m.x14 - m.x36 >= 0)

m.c40 = Constraint(expr=   0.24*m.x17 - m.x54 - m.x65 >= 0)

m.c41 = Constraint(expr=   0.05226476455593*m.x1 + 0.0495710179052076*m.x2 + 0.08201426202*m.x3 + 0.0775716345*m.x4
                         + 0.0775716345*m.x5 + 0.08673770008125*m.x6 + 0.082520521875*m.x7 + 0.082520521875*m.x8
                         + 0.03072603943593*m.x9 + 0.0280322927852076*m.x10 + 0.055733346*m.x11 + 0.055733346*m.x12
                         + 0.0500363325*m.x13 + 0.08086041027*m.x14 + 0.055733346*m.x15 - 0.0258*m.x26 - 0.214*m.x31
                         - 0.0234*m.x32 - 0.0264*m.x33 - 0.159*m.x35 <= 0)

m.c42 = Constraint(expr=   0.0067402017682056*m.x1 + 0.00741762059734249*m.x2 + 0.00454508022*m.x3 + 0.0072618795*m.x4
                         + 0.00798806745*m.x5 + 0.00477413364375*m.x6 + 0.007501865625*m.x7 + 0.0082520521875*m.x8
                         + 0.0046179374482056*m.x9 + 0.00508312984534249*m.x10 + 0.001955556*m.x11 + 0.001955556*m.x12
                         + 0.0045487575*m.x13 + 0.00581103147*m.x14 + 0.001955556*m.x15 + 0.002*m.x16 + 0.00458*m.x17
                         - 0.00068*m.x26 - 0.000585*m.x27 - 0.0075*m.x28 - 0.0374*m.x29 - 0.00063*m.x31 - 0.0004*m.x32
                         - 0.00024*m.x33 - 0.000315*m.x34 - 0.00054*m.x35 - 0.0046*m.x36 <= 0)

m.c43 = Constraint(expr=   0.0160754826548626*m.x1 + 0.0168620369492029*m.x2 + 0.013657776*m.x3 + 0.01588095*m.x4
                         + 0.0166749975*m.x5 + 0.014411655875*m.x6 + 0.0166708125*m.x7 + 0.017504353125*m.x8
                         + 0.0115600266548626*m.x9 + 0.0121208081492029*m.x10 + 0.00814815*m.x11 + 0.00814815*m.x12
                         + 0.01010835*m.x13 + 0.0147955215*m.x14 + 0.00814815*m.x15 + 0.011*m.x16 + 0.02135*m.x17
                         - 0.002584*m.x26 - 0.00494*m.x27 - 0.015*m.x28 - 0.0765*m.x29 - 0.004788*m.x31 - 0.00304*m.x32
                         - 0.001824*m.x33 - 0.00266*m.x34 - 0.00456*m.x35 - 0.03496*m.x36 <= 0)

m.c44 = Constraint(expr=   0.0042640119677464*m.x1 + 0.00533713594548865*m.x2 + 0.0044398119155*m.x3
                         + 0.00464780455*m.x4 + 0.0058097556875*m.x5 + 0.0047984615955*m.x6 + 0.00502357255*m.x7
                         + 0.0062794656875*m.x8 + 0.0038543159997464*m.x9 + 0.00482501598548865*m.x10
                         + 0.003939913*m.x11 + 0.00369399205*m.x12 + 0.0041240455*m.x13 + 0.0054145192155*m.x14
                         + 0.0037051951155*m.x15 + 0.001*m.x16 + 0.00257*m.x17 - 4E-5*m.x26 - 0.00024*m.x27
                         - 0.0375*m.x30 - 0.00022*m.x31 - 0.00022*m.x32 - 0.00014*m.x33 - 0.000256*m.x34 - 0.00016*m.x35
                         - 0.005*m.x36 <= 0)

m.c45 = Constraint(expr=   0.0073932884525828*m.x1 + 0.0081390369744386*m.x2 + 0.0094684963*m.x3 + 0.0095010775*m.x4
                         + 0.01045118525*m.x5 + 0.01072377018*m.x6 + 0.0108162655*m.x7 + 0.01189789205*m.x8
                         + 0.0059636756525828*m.x9 + 0.0065664628944386*m.x10 + 0.007724125*m.x11 + 0.007724125*m.x12
                         + 0.0076734475*m.x13 + 0.01176952537*m.x14 + 0.007724125*m.x15 + 0.0025*m.x16 + 0.00393*m.x17
                         - 0.000168*m.x26 - 0.0004*m.x27 - 0.00119*m.x31 - 0.00049*m.x32 - 0.000154*m.x33 - 0.0012*m.x34
                         - 0.00128*m.x35 - 0.00196*m.x36 <= 0)

m.c46 = Constraint(expr=   0.131724*m.x1 + 0.131724*m.x2 + 0.087655*m.x3 + 0.0895*m.x4 + 0.0895*m.x5 + 0.087655*m.x6
                         + 0.0895*m.x7 + 0.0895*m.x8 + 0.100044*m.x9 + 0.100044*m.x10 + 0.049*m.x11 + 0.0454*m.x12
                         + 0.049*m.x13 + 0.084219*m.x14 + 0.045564*m.x15 - m.x41 + 0.225*m.x52 + 0.17*m.x55 + 0.17*m.x56
                         + 0.17*m.x57 + 0.17*m.x58 + 0.17*m.x59 + 0.17*m.x60 + 0.45*m.x61 + 0.225*m.x63 >= 0)

m.c47 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10 + m.x11 + m.x12 + m.x13
                         + m.x14 + m.x15 <= 268.6)

m.c48 = Constraint(expr=   m.x16 + m.x17 <= 7.8)

m.c49 = Constraint(expr= - 0.02256*m.x3 - 0.016*m.x4 - 0.016*m.x5 - 0.02256*m.x6 - 0.016*m.x7 - 0.016*m.x8
                         - 0.11264*m.x9 - 0.11264*m.x10 - 0.16*m.x11 + 0.74*m.x12 - 0.16*m.x13 - 0.02256*m.x14
                         - 0.02256*m.x15 >= 0)

m.c50 = Constraint(expr=   m.x44 + m.x45 + m.x46 + m.x47 + m.x48 + m.x49 >= 100)

m.c51 = Constraint(expr= - 40.7913*m.x1 - 40.7913*m.x2 - 34.9733*m.x3 - 33.73*m.x4 - 33.73*m.x5 - 34.9733*m.x6
                         - 33.73*m.x7 - 33.73*m.x8 - 34.6665*m.x9 - 34.6665*m.x10 - 27.5*m.x11 - 25.43*m.x12
                         - 25.9*m.x13 - 33.9425*m.x14 - 25.5243*m.x15 - 90*m.x18 - 60*m.x19 - 1.3*m.x26 - 200*m.x36
                         - 20*m.x39 - 30*m.x40 - 123*m.x41 - 100*m.x42 - 12*m.x43 + m.x66 == 0)
