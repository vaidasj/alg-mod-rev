#  LP written by GAMS Convert at 10/11/20 13:32:33
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
@variable(m, 0 <= x93, start=0)
@variable(m, 0 <= x94, start=0)
@variable(m, 0 <= x95, start=0)
@variable(m, 0 <= x96, start=0)
@variable(m, 0 <= x97, start=0)
@variable(m, 0 <= x98, start=0)
@variable(m, 0 <= x99, start=0)
@variable(m, 0 <= x100, start=0)
@variable(m, 0 <= x101, start=0)
@variable(m, 0 <= x102, start=0)
@variable(m, 0 <= x103, start=0)
@variable(m, 0 <= x104, start=0)
@variable(m, 0 <= x105, start=0)
@variable(m, 0 <= x106, start=0)
@variable(m, 0 <= x107, start=0)
@variable(m, 0 <= x108, start=0)
@variable(m, 0 <= x109, start=0)
@variable(m, 0 <= x110, start=0)
@variable(m, 0 <= x111, start=0)
@variable(m, 0 <= x112, start=0)
@variable(m, 0 <= x113, start=0)
@variable(m, 0 <= x114, start=0)
@variable(m, 0 <= x115, start=0)
@variable(m, 0 <= x116, start=0)
@variable(m, 0 <= x117, start=0)
@variable(m, 0 <= x118, start=0)
@variable(m, 0 <= x119, start=0)
@variable(m, 0 <= x120, start=0)
@variable(m, 0 <= x121, start=0)
@variable(m, 0 <= x122, start=0)
@variable(m, 0 <= x123, start=0)
@variable(m, 0 <= x124, start=0)
@variable(m, 0 <= x125, start=0)
@variable(m, 0 <= x126, start=0)
@variable(m, 0 <= x127, start=0)
@variable(m, 0 <= x128, start=0)
@variable(m, 0 <= x129, start=0)
@variable(m, 0 <= x130, start=0)
@variable(m, 0 <= x131, start=0)
@variable(m, 0 <= x132, start=0)
@variable(m, 0 <= x133, start=0)
@variable(m, 0 <= x134, start=0)
@variable(m, 0 <= x135, start=0)
@variable(m, 0 <= x136, start=0)
@variable(m, 0 <= x137, start=0)
@variable(m, 0 <= x138, start=0)
@variable(m, 0 <= x139, start=0)
@variable(m, 0 <= x140, start=0)
@variable(m, 0 <= x141, start=0)
@variable(m, 0 <= x142, start=0)
@variable(m, 0 <= x143, start=0)
@variable(m, 0 <= x144, start=0)
@variable(m, 0 <= x145, start=0)
@variable(m, 0 <= x146, start=0)
@variable(m, 0 <= x147, start=0)
@variable(m, 0 <= x148, start=0)
@variable(m, 0 <= x149, start=0)
@variable(m, 0 <= x150, start=0)
@variable(m, 0 <= x151, start=0)
@variable(m, 0 <= x152, start=0)
@variable(m, 0 <= x153, start=0)
@variable(m, 0 <= x154, start=0)
@variable(m, 0 <= x155, start=0)
@variable(m, 0 <= x156, start=0)
@variable(m, 0 <= x157, start=0)
@variable(m, 0 <= x158, start=0)
@variable(m, 0 <= x159, start=0)
@variable(m, 0 <= x160, start=0)
@variable(m, 0 <= x161, start=0)
@variable(m, 0 <= x162, start=0)
@variable(m, 0 <= x163, start=0)
@variable(m, 0 <= x164, start=0)
@variable(m, 0 <= x165, start=0)
@variable(m, 0 <= x166, start=0)
@variable(m, 0 <= x167, start=0)

@objective(m, Min, x1 + 0.080974037844*x2 + 0.06298166245*x3 + 0.007258758552*x4 + 0.058226987028*x5 + 0.08008834568*x6
     + 0.045833726652*x7 + 0.04553907666*x8 + 0.06408962448*x9 + 0.022962373764*x10 + 0.001120420976*x11
     + 0.00336572274157864*x12 + 0.00101827350420911*x13 + 0.00262674864250621*x14 + 0.00283696104402397*x15
     + 2.22301600538088E-6*x16 + 0.000756861005869382*x17 + 0.00815916723192756*x18 + 3.83102431804083E-6*x19
     + 0.000619543732009134*x20 + 0.000837212214607246*x21 + 0.00629038196458779*x22 + 0.0011001387722344*x23
     + 0.00172633860064771*x24 + 0.00202939672968222*x25 + 9.72308898238801E-5*x26 + 0.000768677938643549*x27
     + 0.00347483599951483*x28 + 0.00149275494452211*x29 + 0.00365934457936474*x30 + 0.00325520161616446*x31
     + 0.000780326954613105*x32 + 0.00218777937607949*x33 + 0.001258034435536*x34 + 0.00310580645193932*x35
     + 0.000922832984161498*x36 + 0.00768348338051926*x37 + 0.00554317344642831*x38 + 0.00558771046297615*x39
     + 0.00250965078988669*x40 + 0.00435159199864626*x41 + 0.00216892069071819*x42 + 0.00484529205292612*x43
     + 0.00688451918845347*x44 + 0.0035452550766699*x45 + 0.00679049756383187*x46 + 0.00264152313612098*x47
     + 0.00101123375174686*x48 + 0.00385407561525169*x49 + 0.00771440929779874*x50 + 0.00553384720615069*x51
     + 0.000958504544182276*x52 + 0.00720928714512881*x53 + 0.00231357981027474*x54 + 0.00193502430178828*x55
     + 0.0100292302127232*x56 + 0.00586923998260571*x57 + 0.00440970337382992*x58 + 0.0044033577629193*x59
     + 0.00654174463509765*x60 + 0.00563430588097975*x61 + 0.000200319794638761*x62 + 0.000821619210591793*x63
     + 0.00293276619406415*x64 + 0.00713813435729441*x65 + 0.00184635655537454*x66 + 0.00547421881830473*x67
     + 0.00104283089608845*x68 + 0.00368210610355045*x69 + 0.00716820270599932*x70 + 8.25497892846638E-5*x71
     + 0.000819676739315786*x72 + 0.00165175427371017*x73 + 0.0100754441867998*x74 + 0.00444709974894708*x75
     + 0.00320828076625745*x76 + 0.0098019049607729*x77 + 0.00596751278401516*x78 + 0.00037829979877213*x79
     + 0.000496441219658525*x80 + 0.00267064534607768*x81 + 0.00124851130735319*x82 + 0.0051435784578595*x83
     + 0.00335137109522716*x84 + 0.00125857747945631*x85 + 0.00626004582462345*x86 + 0.00111020366448434*x87
     + 0.00277081196487037*x88 + 0.00773712403323243*x89 + 0.00382939130906471*x90 + 0.00283083423722311*x91
     + 0.00305935409855113*x92 + 0.00307513465313198*x93 + 0.00223509849772626*x94 + 0.000275374084181898*x95
     + 0.000701754924492107*x96 + 0.00075231745699317*x97 + 0.00518649144692681*x98 + 0.00133753257501625*x99
     + 0.00432509034272093*x100 + 0.00147155834215524*x101 + 0.0102407778419989*x102 + 0.000818834550381364*x103
     + 0.000935247155521584*x104 + 0.00356450249148091*x105 + 0.00215113257082189*x106 + 0.00234233109133731*x107
     + 0.00325153945579905*x108 + 0.00468760269378838*x109 + 0.00187452165585971*x110 + 0.00402187559474737*x111
     + 0.00612324620844291*x112 + 0.00257332388938634*x113 + 0.00777804708096101*x114 + 0.00179693991744296*x115
     + 0.00283919259912033*x116 + 0.00326955479711356*x117 + 0.0044864483628577*x118 + 0.0071568716210616*x119
     + 0.00535010115103024*x120 + 0.000326836946634268*x121 + 0.00568907141989392*x122 + 0.00438908111365014*x123
     + 0.00784996494585283*x124 + 0.00163968752399519*x125 + 0.00838360484268558*x126 + 0.00439126660429051*x127
     + 0.00116941964657498*x128 + 0.00603649284274796*x129 + 0.00121638267396879*x130 + 0.00454450074082352*x131
     + 0.000151923958538576*x132 + 0.00594628949953065*x133 + 0.000438668622129342*x134 + 0.00506506076886676*x135
     + 0.00247552224940751*x136 + 0.00323869008293068*x137 + 0.00568908759760121*x138 + 0.00302174094231101*x139
     + 0.00242471414533727*x140 + 0.00442519394123758*x141 + 0.00236425972753211*x142 + 0.00234754174298313*x143
     + 0.00371833904258767*x144 + 0.000636057572268682*x145 + 0.00119610843137578*x146 + 0.000731266685523024*x147
     + 0.000601064301636256*x148 + 0.00786227644789204*x149 + 0.00233687591267553*x150 + 0.00188007602969642*x151
     + 0.00300120106946929*x152 + 0.00755151483991548*x153 + 0.00370700849235465*x154 + 0.000751794414197832*x155
     + 0.00424612035072884*x156)

@constraint(m,  - x1 + x157 == 0)

@constraint(m,  - x2 - x157 + x158 == 0)

@constraint(m,  - x3 - x157 + x159 == 0)

@constraint(m,  - x4 - x157 + x160 == 0)

@constraint(m,  - x5 - x157 + x161 == 0)

@constraint(m,  - x6 - x157 + x162 == 0)

@constraint(m,  - x7 - x157 + x163 == 0)

@constraint(m,  - x8 - x157 + x164 == 0)

@constraint(m,  - x9 - x157 + x165 == 0)

@constraint(m,  - x10 - x157 + x166 == 0)

@constraint(m,  - x11 - x157 + x167 == 0)

@constraint(m, x12 + x166 >= 1)

@constraint(m, x13 + x162 >= 1)

@constraint(m, x14 + x160 >= 1)

@constraint(m, x15 + x166 >= 1)

@constraint(m, x16 + x163 >= 1)

@constraint(m, x17 + x163 >= 1)

@constraint(m, x18 + x158 >= 1)

@constraint(m, x19 + x164 >= 1)

@constraint(m, x20 + x160 >= 1)

@constraint(m, x21 + x167 >= 1)

@constraint(m, x22 + x160 >= 1)

@constraint(m, x23 + x164 >= 1)

@constraint(m, x24 + x160 >= 1)

@constraint(m, x25 + x163 >= 1)

@constraint(m, x26 + x162 >= 1)

@constraint(m, x27 + x158 >= 1)

@constraint(m, x28 + x159 >= 1)

@constraint(m, x29 + x166 >= 1)

@constraint(m, x30 + x159 >= 1)

@constraint(m, x31 + x166 >= 1)

@constraint(m, x32 + x164 >= 1)

@constraint(m, x33 + x166 >= 1)

@constraint(m, x34 + x165 >= 1)

@constraint(m, x35 + x167 >= 1)

@constraint(m, x36 + x160 >= 1)

@constraint(m, x37 + x166 >= 1)

@constraint(m, x38 + x163 >= 1)

@constraint(m, x39 + x163 >= 1)

@constraint(m, x40 + x158 >= 1)

@constraint(m, x41 + x165 >= 1)

@constraint(m, x42 + x158 >= 1)

@constraint(m, x43 + x167 >= 1)

@constraint(m, x44 + x163 >= 1)

@constraint(m, x45 + x162 >= 1)

@constraint(m, x46 + x161 >= 1)

@constraint(m, x47 + x162 >= 1)

@constraint(m, x48 + x158 >= 1)

@constraint(m, x49 + x161 >= 1)

@constraint(m, x50 + x159 >= 1)

@constraint(m, x51 + x159 >= 1)

@constraint(m, x52 + x166 >= 1)

@constraint(m, x53 + x158 >= 1)

@constraint(m, x54 + x165 >= 1)

@constraint(m, x55 + x161 >= 1)

@constraint(m, x56 + x163 >= 1)

@constraint(m, x57 + x161 >= 1)

@constraint(m, x58 + x164 >= 1)

@constraint(m, x59 + x163 >= 1)

@constraint(m, x60 + x159 >= 1)

@constraint(m, x61 + x159 >= 1)

@constraint(m, x62 + x160 >= 1)

@constraint(m, x63 + x161 >= 1)

@constraint(m, x64 + x160 >= 1)

@constraint(m, x65 + x162 >= 1)

@constraint(m, x66 + x163 >= 1)

@constraint(m, x67 + x162 >= 1)

@constraint(m, x68 + x166 >= 1)

@constraint(m, x69 + x162 >= 1)

@constraint(m, x70 + x165 >= 1)

@constraint(m, x71 + x159 >= 1)

@constraint(m, x72 + x167 >= 1)

@constraint(m, x73 + x165 >= 1)

@constraint(m, x74 + x159 >= 1)

@constraint(m, x75 + x159 >= 1)

@constraint(m, x76 + x164 >= 1)

@constraint(m, x77 + x158 >= 1)

@constraint(m, x78 + x161 >= 1)

@constraint(m, x79 + x166 >= 1)

@constraint(m, x80 + x167 >= 1)

@constraint(m, x81 + x162 >= 1)

@constraint(m, x82 + x166 >= 1)

@constraint(m, x83 + x160 >= 1)

@constraint(m, x84 + x160 >= 1)

@constraint(m, x85 + x164 >= 1)

@constraint(m, x86 + x158 >= 1)

@constraint(m, x87 + x166 >= 1)

@constraint(m, x88 + x163 >= 1)

@constraint(m, x89 + x158 >= 1)

@constraint(m, x90 + x166 >= 1)

@constraint(m, x91 + x161 >= 1)

@constraint(m, x92 + x166 >= 1)

@constraint(m, x93 + x164 >= 1)

@constraint(m, x94 + x164 >= 1)

@constraint(m, x95 + x162 >= 1)

@constraint(m, x96 + x162 >= 1)

@constraint(m, x97 + x167 >= 1)

@constraint(m, x98 + x163 >= 1)

@constraint(m, x99 + x166 >= 1)

@constraint(m, x100 + x159 >= 1)

@constraint(m, x101 + x161 >= 1)

@constraint(m, x102 + x164 >= 1)

@constraint(m, x103 + x163 >= 1)

@constraint(m, x104 + x162 >= 1)

@constraint(m, x105 + x165 >= 1)

@constraint(m, x106 + x164 >= 1)

@constraint(m, x107 + x162 >= 1)

@constraint(m, x108 + x165 >= 1)

@constraint(m, x109 + x163 >= 1)

@constraint(m, x110 + x159 >= 1)

@constraint(m, x111 + x158 >= 1)

@constraint(m, x112 + x161 >= 1)

@constraint(m, x113 + x162 >= 1)

@constraint(m, x114 + x162 >= 1)

@constraint(m, x115 + x167 >= 1)

@constraint(m, x116 + x161 >= 1)

@constraint(m, x117 + x163 >= 1)

@constraint(m, x118 + x162 >= 1)

@constraint(m, x119 + x165 >= 1)

@constraint(m, x120 + x158 >= 1)

@constraint(m, x121 + x163 >= 1)

@constraint(m, x122 + x163 >= 1)

@constraint(m, x123 + x166 >= 1)

@constraint(m, x124 + x166 >= 1)

@constraint(m, x125 + x163 >= 1)

@constraint(m, x126 + x165 >= 1)

@constraint(m, x127 + x163 >= 1)

@constraint(m, x128 + x161 >= 1)

@constraint(m, x129 + x167 >= 1)

@constraint(m, x130 + x159 >= 1)

@constraint(m, x131 + x162 >= 1)

@constraint(m, x132 + x158 >= 1)

@constraint(m, x133 + x162 >= 1)

@constraint(m, x134 + x166 >= 1)

@constraint(m, x135 + x166 >= 1)

@constraint(m, x136 + x162 >= 1)

@constraint(m, x137 + x162 >= 1)

@constraint(m, x138 + x164 >= 1)

@constraint(m, x139 + x158 >= 1)

@constraint(m, x140 + x164 >= 1)

@constraint(m, x141 + x164 >= 1)

@constraint(m, x142 + x164 >= 1)

@constraint(m, x143 + x159 >= 1)

@constraint(m, x144 + x162 >= 1)

@constraint(m, x145 + x167 >= 1)

@constraint(m, x146 + x162 >= 1)

@constraint(m, x147 + x163 >= 1)

@constraint(m, x148 + x164 >= 1)

@constraint(m, x149 + x163 >= 1)

@constraint(m, x150 + x162 >= 1)

@constraint(m, x151 + x160 >= 1)

@constraint(m, x152 + x167 >= 1)

@constraint(m, x153 + x165 >= 1)

@constraint(m, x154 + x159 >= 1)

@constraint(m, x155 + x164 >= 1)

@constraint(m, x156 + x162 >= 1)
