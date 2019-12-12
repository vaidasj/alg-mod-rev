#  LP written by GAMS Convert at 12/13/18 11:30:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        157       12      145        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        168      168        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        479      479        0        0
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
m.x37 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x66 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x67 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x68 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x69 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x70 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x73 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x74 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x77 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x78 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x90 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x109 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x110 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x111 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x112 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x113 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x114 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x119 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x120 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x121 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x122 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x123 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x124 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x125 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x126 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x127 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x128 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x129 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x130 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x131 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x132 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x133 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x134 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x135 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x136 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x137 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x138 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x139 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x140 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x141 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x142 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x143 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x144 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x145 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x146 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x147 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x148 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x149 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x150 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x151 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x152 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x153 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x154 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x155 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x156 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x157 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x158 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x159 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x160 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x161 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x162 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x163 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x164 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x165 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x166 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x167 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   m.x1 + 0.080974037844*m.x2 + 0.06298166245*m.x3 + 0.007258758552*m.x4 + 0.058226987028*m.x5
                        + 0.08008834568*m.x6 + 0.045833726652*m.x7 + 0.04553907666*m.x8 + 0.06408962448*m.x9
                        + 0.022962373764*m.x10 + 0.001120420976*m.x11 + 0.00336572274157864*m.x12
                        + 0.00101827350420911*m.x13 + 0.00262674864250621*m.x14 + 0.00283696104402397*m.x15
                        + 2.22301600538088E-6*m.x16 + 0.000756861005869382*m.x17 + 0.00815916723192756*m.x18
                        + 3.83102431804083E-6*m.x19 + 0.000619543732009134*m.x20 + 0.000837212214607246*m.x21
                        + 0.00629038196458779*m.x22 + 0.0011001387722344*m.x23 + 0.00172633860064771*m.x24
                        + 0.00202939672968222*m.x25 + 9.72308898238801E-5*m.x26 + 0.000768677938643549*m.x27
                        + 0.00347483599951483*m.x28 + 0.00149275494452211*m.x29 + 0.00365934457936474*m.x30
                        + 0.00325520161616446*m.x31 + 0.000780326954613105*m.x32 + 0.00218777937607949*m.x33
                        + 0.001258034435536*m.x34 + 0.00310580645193932*m.x35 + 0.000922832984161498*m.x36
                        + 0.00768348338051926*m.x37 + 0.00554317344642831*m.x38 + 0.00558771046297615*m.x39
                        + 0.00250965078988669*m.x40 + 0.00435159199864626*m.x41 + 0.00216892069071819*m.x42
                        + 0.00484529205292612*m.x43 + 0.00688451918845347*m.x44 + 0.0035452550766699*m.x45
                        + 0.00679049756383187*m.x46 + 0.00264152313612098*m.x47 + 0.00101123375174686*m.x48
                        + 0.00385407561525169*m.x49 + 0.00771440929779874*m.x50 + 0.00553384720615069*m.x51
                        + 0.000958504544182276*m.x52 + 0.00720928714512881*m.x53 + 0.00231357981027474*m.x54
                        + 0.00193502430178828*m.x55 + 0.0100292302127232*m.x56 + 0.00586923998260571*m.x57
                        + 0.00440970337382992*m.x58 + 0.0044033577629193*m.x59 + 0.00654174463509765*m.x60
                        + 0.00563430588097975*m.x61 + 0.000200319794638761*m.x62 + 0.000821619210591793*m.x63
                        + 0.00293276619406415*m.x64 + 0.00713813435729441*m.x65 + 0.00184635655537454*m.x66
                        + 0.00547421881830473*m.x67 + 0.00104283089608845*m.x68 + 0.00368210610355045*m.x69
                        + 0.00716820270599932*m.x70 + 8.25497892846638E-5*m.x71 + 0.000819676739315786*m.x72
                        + 0.00165175427371017*m.x73 + 0.0100754441867998*m.x74 + 0.00444709974894708*m.x75
                        + 0.00320828076625745*m.x76 + 0.0098019049607729*m.x77 + 0.00596751278401516*m.x78
                        + 0.00037829979877213*m.x79 + 0.000496441219658525*m.x80 + 0.00267064534607768*m.x81
                        + 0.00124851130735319*m.x82 + 0.0051435784578595*m.x83 + 0.00335137109522716*m.x84
                        + 0.00125857747945631*m.x85 + 0.00626004582462345*m.x86 + 0.00111020366448434*m.x87
                        + 0.00277081196487037*m.x88 + 0.00773712403323243*m.x89 + 0.00382939130906471*m.x90
                        + 0.00283083423722311*m.x91 + 0.00305935409855113*m.x92 + 0.00307513465313198*m.x93
                        + 0.00223509849772626*m.x94 + 0.000275374084181898*m.x95 + 0.000701754924492107*m.x96
                        + 0.00075231745699317*m.x97 + 0.00518649144692681*m.x98 + 0.00133753257501625*m.x99
                        + 0.00432509034272093*m.x100 + 0.00147155834215524*m.x101 + 0.0102407778419989*m.x102
                        + 0.000818834550381364*m.x103 + 0.000935247155521584*m.x104 + 0.00356450249148091*m.x105
                        + 0.00215113257082189*m.x106 + 0.00234233109133731*m.x107 + 0.00325153945579905*m.x108
                        + 0.00468760269378838*m.x109 + 0.00187452165585971*m.x110 + 0.00402187559474737*m.x111
                        + 0.00612324620844291*m.x112 + 0.00257332388938634*m.x113 + 0.00777804708096101*m.x114
                        + 0.00179693991744296*m.x115 + 0.00283919259912033*m.x116 + 0.00326955479711356*m.x117
                        + 0.0044864483628577*m.x118 + 0.0071568716210616*m.x119 + 0.00535010115103024*m.x120
                        + 0.000326836946634268*m.x121 + 0.00568907141989392*m.x122 + 0.00438908111365014*m.x123
                        + 0.00784996494585283*m.x124 + 0.00163968752399519*m.x125 + 0.00838360484268558*m.x126
                        + 0.00439126660429051*m.x127 + 0.00116941964657498*m.x128 + 0.00603649284274796*m.x129
                        + 0.00121638267396879*m.x130 + 0.00454450074082352*m.x131 + 0.000151923958538576*m.x132
                        + 0.00594628949953065*m.x133 + 0.000438668622129342*m.x134 + 0.00506506076886676*m.x135
                        + 0.00247552224940751*m.x136 + 0.00323869008293068*m.x137 + 0.00568908759760121*m.x138
                        + 0.00302174094231101*m.x139 + 0.00242471414533727*m.x140 + 0.00442519394123758*m.x141
                        + 0.00236425972753211*m.x142 + 0.00234754174298313*m.x143 + 0.00371833904258767*m.x144
                        + 0.000636057572268682*m.x145 + 0.00119610843137578*m.x146 + 0.000731266685523024*m.x147
                        + 0.000601064301636256*m.x148 + 0.00786227644789204*m.x149 + 0.00233687591267553*m.x150
                        + 0.00188007602969642*m.x151 + 0.00300120106946929*m.x152 + 0.00755151483991548*m.x153
                        + 0.00370700849235465*m.x154 + 0.000751794414197832*m.x155 + 0.00424612035072884*m.x156
                       , sense=minimize)

m.c2 = Constraint(expr= - m.x1 + m.x157 == 0)

m.c3 = Constraint(expr= - m.x2 - m.x157 + m.x158 == 0)

m.c4 = Constraint(expr= - m.x3 - m.x157 + m.x159 == 0)

m.c5 = Constraint(expr= - m.x4 - m.x157 + m.x160 == 0)

m.c6 = Constraint(expr= - m.x5 - m.x157 + m.x161 == 0)

m.c7 = Constraint(expr= - m.x6 - m.x157 + m.x162 == 0)

m.c8 = Constraint(expr= - m.x7 - m.x157 + m.x163 == 0)

m.c9 = Constraint(expr= - m.x8 - m.x157 + m.x164 == 0)

m.c10 = Constraint(expr= - m.x9 - m.x157 + m.x165 == 0)

m.c11 = Constraint(expr= - m.x10 - m.x157 + m.x166 == 0)

m.c12 = Constraint(expr= - m.x11 - m.x157 + m.x167 == 0)

m.c13 = Constraint(expr=   m.x12 + m.x166 >= 1)

m.c14 = Constraint(expr=   m.x13 + m.x162 >= 1)

m.c15 = Constraint(expr=   m.x14 + m.x160 >= 1)

m.c16 = Constraint(expr=   m.x15 + m.x166 >= 1)

m.c17 = Constraint(expr=   m.x16 + m.x163 >= 1)

m.c18 = Constraint(expr=   m.x17 + m.x163 >= 1)

m.c19 = Constraint(expr=   m.x18 + m.x158 >= 1)

m.c20 = Constraint(expr=   m.x19 + m.x164 >= 1)

m.c21 = Constraint(expr=   m.x20 + m.x160 >= 1)

m.c22 = Constraint(expr=   m.x21 + m.x167 >= 1)

m.c23 = Constraint(expr=   m.x22 + m.x160 >= 1)

m.c24 = Constraint(expr=   m.x23 + m.x164 >= 1)

m.c25 = Constraint(expr=   m.x24 + m.x160 >= 1)

m.c26 = Constraint(expr=   m.x25 + m.x163 >= 1)

m.c27 = Constraint(expr=   m.x26 + m.x162 >= 1)

m.c28 = Constraint(expr=   m.x27 + m.x158 >= 1)

m.c29 = Constraint(expr=   m.x28 + m.x159 >= 1)

m.c30 = Constraint(expr=   m.x29 + m.x166 >= 1)

m.c31 = Constraint(expr=   m.x30 + m.x159 >= 1)

m.c32 = Constraint(expr=   m.x31 + m.x166 >= 1)

m.c33 = Constraint(expr=   m.x32 + m.x164 >= 1)

m.c34 = Constraint(expr=   m.x33 + m.x166 >= 1)

m.c35 = Constraint(expr=   m.x34 + m.x165 >= 1)

m.c36 = Constraint(expr=   m.x35 + m.x167 >= 1)

m.c37 = Constraint(expr=   m.x36 + m.x160 >= 1)

m.c38 = Constraint(expr=   m.x37 + m.x166 >= 1)

m.c39 = Constraint(expr=   m.x38 + m.x163 >= 1)

m.c40 = Constraint(expr=   m.x39 + m.x163 >= 1)

m.c41 = Constraint(expr=   m.x40 + m.x158 >= 1)

m.c42 = Constraint(expr=   m.x41 + m.x165 >= 1)

m.c43 = Constraint(expr=   m.x42 + m.x158 >= 1)

m.c44 = Constraint(expr=   m.x43 + m.x167 >= 1)

m.c45 = Constraint(expr=   m.x44 + m.x163 >= 1)

m.c46 = Constraint(expr=   m.x45 + m.x162 >= 1)

m.c47 = Constraint(expr=   m.x46 + m.x161 >= 1)

m.c48 = Constraint(expr=   m.x47 + m.x162 >= 1)

m.c49 = Constraint(expr=   m.x48 + m.x158 >= 1)

m.c50 = Constraint(expr=   m.x49 + m.x161 >= 1)

m.c51 = Constraint(expr=   m.x50 + m.x159 >= 1)

m.c52 = Constraint(expr=   m.x51 + m.x159 >= 1)

m.c53 = Constraint(expr=   m.x52 + m.x166 >= 1)

m.c54 = Constraint(expr=   m.x53 + m.x158 >= 1)

m.c55 = Constraint(expr=   m.x54 + m.x165 >= 1)

m.c56 = Constraint(expr=   m.x55 + m.x161 >= 1)

m.c57 = Constraint(expr=   m.x56 + m.x163 >= 1)

m.c58 = Constraint(expr=   m.x57 + m.x161 >= 1)

m.c59 = Constraint(expr=   m.x58 + m.x164 >= 1)

m.c60 = Constraint(expr=   m.x59 + m.x163 >= 1)

m.c61 = Constraint(expr=   m.x60 + m.x159 >= 1)

m.c62 = Constraint(expr=   m.x61 + m.x159 >= 1)

m.c63 = Constraint(expr=   m.x62 + m.x160 >= 1)

m.c64 = Constraint(expr=   m.x63 + m.x161 >= 1)

m.c65 = Constraint(expr=   m.x64 + m.x160 >= 1)

m.c66 = Constraint(expr=   m.x65 + m.x162 >= 1)

m.c67 = Constraint(expr=   m.x66 + m.x163 >= 1)

m.c68 = Constraint(expr=   m.x67 + m.x162 >= 1)

m.c69 = Constraint(expr=   m.x68 + m.x166 >= 1)

m.c70 = Constraint(expr=   m.x69 + m.x162 >= 1)

m.c71 = Constraint(expr=   m.x70 + m.x165 >= 1)

m.c72 = Constraint(expr=   m.x71 + m.x159 >= 1)

m.c73 = Constraint(expr=   m.x72 + m.x167 >= 1)

m.c74 = Constraint(expr=   m.x73 + m.x165 >= 1)

m.c75 = Constraint(expr=   m.x74 + m.x159 >= 1)

m.c76 = Constraint(expr=   m.x75 + m.x159 >= 1)

m.c77 = Constraint(expr=   m.x76 + m.x164 >= 1)

m.c78 = Constraint(expr=   m.x77 + m.x158 >= 1)

m.c79 = Constraint(expr=   m.x78 + m.x161 >= 1)

m.c80 = Constraint(expr=   m.x79 + m.x166 >= 1)

m.c81 = Constraint(expr=   m.x80 + m.x167 >= 1)

m.c82 = Constraint(expr=   m.x81 + m.x162 >= 1)

m.c83 = Constraint(expr=   m.x82 + m.x166 >= 1)

m.c84 = Constraint(expr=   m.x83 + m.x160 >= 1)

m.c85 = Constraint(expr=   m.x84 + m.x160 >= 1)

m.c86 = Constraint(expr=   m.x85 + m.x164 >= 1)

m.c87 = Constraint(expr=   m.x86 + m.x158 >= 1)

m.c88 = Constraint(expr=   m.x87 + m.x166 >= 1)

m.c89 = Constraint(expr=   m.x88 + m.x163 >= 1)

m.c90 = Constraint(expr=   m.x89 + m.x158 >= 1)

m.c91 = Constraint(expr=   m.x90 + m.x166 >= 1)

m.c92 = Constraint(expr=   m.x91 + m.x161 >= 1)

m.c93 = Constraint(expr=   m.x92 + m.x166 >= 1)

m.c94 = Constraint(expr=   m.x93 + m.x164 >= 1)

m.c95 = Constraint(expr=   m.x94 + m.x164 >= 1)

m.c96 = Constraint(expr=   m.x95 + m.x162 >= 1)

m.c97 = Constraint(expr=   m.x96 + m.x162 >= 1)

m.c98 = Constraint(expr=   m.x97 + m.x167 >= 1)

m.c99 = Constraint(expr=   m.x98 + m.x163 >= 1)

m.c100 = Constraint(expr=   m.x99 + m.x166 >= 1)

m.c101 = Constraint(expr=   m.x100 + m.x159 >= 1)

m.c102 = Constraint(expr=   m.x101 + m.x161 >= 1)

m.c103 = Constraint(expr=   m.x102 + m.x164 >= 1)

m.c104 = Constraint(expr=   m.x103 + m.x163 >= 1)

m.c105 = Constraint(expr=   m.x104 + m.x162 >= 1)

m.c106 = Constraint(expr=   m.x105 + m.x165 >= 1)

m.c107 = Constraint(expr=   m.x106 + m.x164 >= 1)

m.c108 = Constraint(expr=   m.x107 + m.x162 >= 1)

m.c109 = Constraint(expr=   m.x108 + m.x165 >= 1)

m.c110 = Constraint(expr=   m.x109 + m.x163 >= 1)

m.c111 = Constraint(expr=   m.x110 + m.x159 >= 1)

m.c112 = Constraint(expr=   m.x111 + m.x158 >= 1)

m.c113 = Constraint(expr=   m.x112 + m.x161 >= 1)

m.c114 = Constraint(expr=   m.x113 + m.x162 >= 1)

m.c115 = Constraint(expr=   m.x114 + m.x162 >= 1)

m.c116 = Constraint(expr=   m.x115 + m.x167 >= 1)

m.c117 = Constraint(expr=   m.x116 + m.x161 >= 1)

m.c118 = Constraint(expr=   m.x117 + m.x163 >= 1)

m.c119 = Constraint(expr=   m.x118 + m.x162 >= 1)

m.c120 = Constraint(expr=   m.x119 + m.x165 >= 1)

m.c121 = Constraint(expr=   m.x120 + m.x158 >= 1)

m.c122 = Constraint(expr=   m.x121 + m.x163 >= 1)

m.c123 = Constraint(expr=   m.x122 + m.x163 >= 1)

m.c124 = Constraint(expr=   m.x123 + m.x166 >= 1)

m.c125 = Constraint(expr=   m.x124 + m.x166 >= 1)

m.c126 = Constraint(expr=   m.x125 + m.x163 >= 1)

m.c127 = Constraint(expr=   m.x126 + m.x165 >= 1)

m.c128 = Constraint(expr=   m.x127 + m.x163 >= 1)

m.c129 = Constraint(expr=   m.x128 + m.x161 >= 1)

m.c130 = Constraint(expr=   m.x129 + m.x167 >= 1)

m.c131 = Constraint(expr=   m.x130 + m.x159 >= 1)

m.c132 = Constraint(expr=   m.x131 + m.x162 >= 1)

m.c133 = Constraint(expr=   m.x132 + m.x158 >= 1)

m.c134 = Constraint(expr=   m.x133 + m.x162 >= 1)

m.c135 = Constraint(expr=   m.x134 + m.x166 >= 1)

m.c136 = Constraint(expr=   m.x135 + m.x166 >= 1)

m.c137 = Constraint(expr=   m.x136 + m.x162 >= 1)

m.c138 = Constraint(expr=   m.x137 + m.x162 >= 1)

m.c139 = Constraint(expr=   m.x138 + m.x164 >= 1)

m.c140 = Constraint(expr=   m.x139 + m.x158 >= 1)

m.c141 = Constraint(expr=   m.x140 + m.x164 >= 1)

m.c142 = Constraint(expr=   m.x141 + m.x164 >= 1)

m.c143 = Constraint(expr=   m.x142 + m.x164 >= 1)

m.c144 = Constraint(expr=   m.x143 + m.x159 >= 1)

m.c145 = Constraint(expr=   m.x144 + m.x162 >= 1)

m.c146 = Constraint(expr=   m.x145 + m.x167 >= 1)

m.c147 = Constraint(expr=   m.x146 + m.x162 >= 1)

m.c148 = Constraint(expr=   m.x147 + m.x163 >= 1)

m.c149 = Constraint(expr=   m.x148 + m.x164 >= 1)

m.c150 = Constraint(expr=   m.x149 + m.x163 >= 1)

m.c151 = Constraint(expr=   m.x150 + m.x162 >= 1)

m.c152 = Constraint(expr=   m.x151 + m.x160 >= 1)

m.c153 = Constraint(expr=   m.x152 + m.x167 >= 1)

m.c154 = Constraint(expr=   m.x153 + m.x165 >= 1)

m.c155 = Constraint(expr=   m.x154 + m.x159 >= 1)

m.c156 = Constraint(expr=   m.x155 + m.x164 >= 1)

m.c157 = Constraint(expr=   m.x156 + m.x162 >= 1)
