#  MIP written by GAMS Convert at 10/11/20 12:26:08
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        328      192       64       72        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        293      237       56        0        0        0        0        0
#  FX      7        7        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1000     1000        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2 <= 0, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7 <= 0, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14 <= 0, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23 <= 0, start=0)
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
@variable(m, 0 <= x34 <= 0, start=0)
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
@variable(m, 0 <= x45 <= 0, start=0)
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
@variable(m, 0 <= x56 <= 0, start=0)
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
@variable(m, x96, start=0)
@variable(m, x97, start=0)
@variable(m, x98, start=0)
@variable(m, x99, start=0)
@variable(m, x100, start=0)
@variable(m, x101, start=0)
@variable(m, x102, start=0)
@variable(m, x103, start=0)
@variable(m, x104, start=0)
@variable(m, x105, start=0)
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
@variable(m, x165, start=0)
@variable(m, x166, start=0)
@variable(m, x167, start=0)
@variable(m, x168, start=0)
@variable(m, x169, start=0)
@variable(m, x170, start=0)
@variable(m, 0 <= b171 <= 1, binary=true, start=0)
@variable(m, 0 <= b172 <= 1, binary=true, start=0)
@variable(m, 0 <= b173 <= 1, binary=true, start=0)
@variable(m, 0 <= b174 <= 1, binary=true, start=0)
@variable(m, 0 <= b175 <= 1, binary=true, start=0)
@variable(m, 0 <= b176 <= 1, binary=true, start=0)
@variable(m, 0 <= b177 <= 1, binary=true, start=0)
@variable(m, 0 <= b178 <= 1, binary=true, start=0)
@variable(m, 0 <= b179 <= 1, binary=true, start=0)
@variable(m, 0 <= b180 <= 1, binary=true, start=0)
@variable(m, 0 <= b181 <= 1, binary=true, start=0)
@variable(m, 0 <= b182 <= 1, binary=true, start=0)
@variable(m, 0 <= b183 <= 1, binary=true, start=0)
@variable(m, 0 <= b184 <= 1, binary=true, start=0)
@variable(m, 0 <= b185 <= 1, binary=true, start=0)
@variable(m, 0 <= b186 <= 1, binary=true, start=0)
@variable(m, 0 <= b187 <= 1, binary=true, start=0)
@variable(m, 0 <= b188 <= 1, binary=true, start=0)
@variable(m, 0 <= b189 <= 1, binary=true, start=0)
@variable(m, 0 <= b190 <= 1, binary=true, start=0)
@variable(m, 0 <= b191 <= 1, binary=true, start=0)
@variable(m, 0 <= b192 <= 1, binary=true, start=0)
@variable(m, 0 <= b193 <= 1, binary=true, start=0)
@variable(m, 0 <= b194 <= 1, binary=true, start=0)
@variable(m, 0 <= b195 <= 1, binary=true, start=0)
@variable(m, 0 <= b196 <= 1, binary=true, start=0)
@variable(m, 0 <= b197 <= 1, binary=true, start=0)
@variable(m, 0 <= b198 <= 1, binary=true, start=0)
@variable(m, 0 <= b199 <= 1, binary=true, start=0)
@variable(m, 0 <= b200 <= 1, binary=true, start=0)
@variable(m, 0 <= b201 <= 1, binary=true, start=0)
@variable(m, 0 <= b202 <= 1, binary=true, start=0)
@variable(m, 0 <= b203 <= 1, binary=true, start=0)
@variable(m, 0 <= b204 <= 1, binary=true, start=0)
@variable(m, 0 <= b205 <= 1, binary=true, start=0)
@variable(m, 0 <= b206 <= 1, binary=true, start=0)
@variable(m, 0 <= b207 <= 1, binary=true, start=0)
@variable(m, 0 <= b208 <= 1, binary=true, start=0)
@variable(m, 0 <= b209 <= 1, binary=true, start=0)
@variable(m, 0 <= b210 <= 1, binary=true, start=0)
@variable(m, 0 <= b211 <= 1, binary=true, start=0)
@variable(m, 0 <= b212 <= 1, binary=true, start=0)
@variable(m, 0 <= b213 <= 1, binary=true, start=0)
@variable(m, 0 <= b214 <= 1, binary=true, start=0)
@variable(m, 0 <= b215 <= 1, binary=true, start=0)
@variable(m, 0 <= b216 <= 1, binary=true, start=0)
@variable(m, 0 <= b217 <= 1, binary=true, start=0)
@variable(m, 0 <= b218 <= 1, binary=true, start=0)
@variable(m, 0 <= b219 <= 1, binary=true, start=0)
@variable(m, 0 <= x220, start=0)
@variable(m, 0 <= x221, start=0)
@variable(m, 0 <= x222, start=0)
@variable(m, 0 <= x223, start=0)
@variable(m, 0 <= x224, start=0)
@variable(m, 0 <= x225, start=0)
@variable(m, 0 <= x226, start=0)
@variable(m, 0 <= x227, start=0)
@variable(m, 0 <= x228, start=0)
@variable(m, 0 <= x229, start=0)
@variable(m, 0 <= x230, start=0)
@variable(m, 0 <= x231, start=0)
@variable(m, 0 <= x232, start=0)
@variable(m, 0 <= x233, start=0)
@variable(m, 0 <= x234, start=0)
@variable(m, 0 <= x235, start=0)
@variable(m, 0 <= x236, start=0)
@variable(m, 0 <= x237, start=0)
@variable(m, 0 <= x238, start=0)
@variable(m, 0 <= x239, start=0)
@variable(m, 0 <= x240, start=0)
@variable(m, 0 <= x241, start=0)
@variable(m, 0 <= x242, start=0)
@variable(m, 0 <= x243, start=0)
@variable(m, 0 <= x244, start=0)
@variable(m, 0 <= x245, start=0)
@variable(m, 0 <= x246, start=0)
@variable(m, 0 <= x247, start=0)
@variable(m, 0 <= x248, start=0)
@variable(m, 0 <= x249, start=0)
@variable(m, 0 <= x250, start=0)
@variable(m, 0 <= x251, start=0)
@variable(m, 0 <= x252, start=0)
@variable(m, 0 <= x253, start=0)
@variable(m, 0 <= x254, start=0)
@variable(m, 0 <= x255, start=0)
@variable(m, 0 <= x256, start=0)
@variable(m, 0 <= x257, start=0)
@variable(m, 0 <= x258, start=0)
@variable(m, 0 <= x259, start=0)
@variable(m, 0 <= x260, start=0)
@variable(m, 0 <= x261, start=0)
@variable(m, 0 <= x262, start=0)
@variable(m, 0 <= x263, start=0)
@variable(m, 0 <= x264, start=0)
@variable(m, 0 <= x265, start=0)
@variable(m, 0 <= x266, start=0)
@variable(m, 0 <= x267, start=0)
@variable(m, 0 <= x268, start=0)
@variable(m, 0 <= x269, start=0)
@variable(m, 0 <= x270, start=0)
@variable(m, 0 <= x271, start=0)
@variable(m, 0 <= x272, start=0)
@variable(m, 0 <= x273, start=0)
@variable(m, 0 <= x274, start=0)
@variable(m, 0 <= x275, start=0)
@variable(m, 0 <= x276, start=0)
@variable(m, 0 <= x277, start=0)
@variable(m, 0 <= b278 <= 1, binary=true, start=0)
@variable(m, 0 <= b279 <= 1, binary=true, start=0)
@variable(m, 0 <= b280 <= 1, binary=true, start=0)
@variable(m, 0 <= b281 <= 1, binary=true, start=0)
@variable(m, 0 <= b282 <= 1, binary=true, start=0)
@variable(m, 0 <= b283 <= 1, binary=true, start=0)
@variable(m, 0 <= b284 <= 1, binary=true, start=0)
@variable(m, x285, start=0)
@variable(m, x286, start=0)
@variable(m, x287, start=0)
@variable(m, x288, start=0)
@variable(m, x289, start=0)
@variable(m, x290, start=0)
@variable(m, x291, start=0)
@variable(m, x292, start=0)

@objective(m, Max, x285 + x286 + x287 + x288 + x289 + x290 + x291 + x292)

@constraint(m,  - 0.906110643564382*x106 + x285 == 0)

@constraint(m,  - 0.905302207746877*x107 - 0.819572087351369*x108 - 0.74196042008691*x109 - 0.67169840636548*x110 + x286
     == 0)

@constraint(m,  - 0.905302207746877*x111 - 0.819572087351369*x112 - 0.74196042008691*x113 - 0.67169840636548*x114
     - 0.608090050222728*x115 - 0.550505264975544*x116 + x287 == 0)

@constraint(m,  - 0.904673964560121*x117 - 0.818434982152927*x118 - 0.74041682003898*x119 - 0.669835820011661*x120
     - 0.605983026894329*x121 - 0.548217067396635*x122 - 0.495957707801236*x123 - 0.448680025770694*x124 + x288 == 0)

@constraint(m,  - 0.904404862077705*x125 - 0.817948154549793*x126 - 0.739756287902319*x127 - 0.669039183531412*x128
     - 0.605082290506307*x129 - 0.547239365491018*x130 - 0.494925942870395*x131 - 0.447613429100378*x132
     - 0.404823761609656*x133 - 0.366124578284359*x134 + x289 == 0)

@constraint(m,  - 0.903687679316622*x135 - 0.816651421748662*x136 - 0.737997828130668*x137 - 0.66691954464411*x138
     - 0.602686975590334*x139 - 0.544640794325583*x140 - 0.492185175485247*x141 - 0.444781679028308*x142
     - 0.401943723323642*x143 - 0.363231590546224*x144 + x290 == 0)

@constraint(m,  - 0.900735806210138*x145 - 0.811324992589027*x146 - 0.730789471298111*x147 - 0.658248243599585*x148
     - 0.592907762385079*x149 - 0.534053251360173*x150 - 0.481040885923051*x151 - 0.433290750201938*x152
     - 0.390280493206538*x153 - 0.351539614696481*x154 + x291 == 0)

@constraint(m,  - 0.880014528399164*x155 - 0.774425570193603*x156 - 0.681505752934177*x157 - 0.599734963769687*x158
     - 0.527775481306271*x159 - 0.46445009128238*x160 - 0.408722828044812*x161 - 0.359682026767828*x162
     - 0.316525409159745*x163 - 0.278546958668066*x164 + x292 == 0)

@constraint(m,  - x1 + x2 + x57 == 0)

@constraint(m,  - x3 + x4 + x58 == 0)

@constraint(m,  - x4 + x5 + x59 == 0)

@constraint(m,  - x5 + x6 + x60 == 0)

@constraint(m,  - x6 + x7 + x61 == 0)

@constraint(m,  - x8 + x9 + x62 == 0)

@constraint(m,  - x9 + x10 + x63 == 0)

@constraint(m,  - x10 + x11 + x64 == 0)

@constraint(m,  - x11 + x12 + x65 == 0)

@constraint(m,  - x12 + x13 + x66 == 0)

@constraint(m,  - x13 + x14 + x67 == 0)

@constraint(m,  - x15 + x16 + x68 == 0)

@constraint(m,  - x16 + x17 + x69 == 0)

@constraint(m,  - x17 + x18 + x70 == 0)

@constraint(m,  - x18 + x19 + x71 == 0)

@constraint(m,  - x19 + x20 + x72 == 0)

@constraint(m,  - x20 + x21 + x73 == 0)

@constraint(m,  - x21 + x22 + x74 == 0)

@constraint(m,  - x22 + x23 + x75 == 0)

@constraint(m,  - x24 + x25 + x76 == 0)

@constraint(m,  - x25 + x26 + x77 == 0)

@constraint(m,  - x26 + x27 + x78 == 0)

@constraint(m,  - x27 + x28 + x79 == 0)

@constraint(m,  - x28 + x29 + x80 == 0)

@constraint(m,  - x29 + x30 + x81 == 0)

@constraint(m,  - x30 + x31 + x82 == 0)

@constraint(m,  - x31 + x32 + x83 == 0)

@constraint(m,  - x32 + x33 + x84 == 0)

@constraint(m,  - x33 + x34 + x85 == 0)

@constraint(m,  - x35 + x36 + x86 == 0)

@constraint(m,  - x36 + x37 + x87 == 0)

@constraint(m,  - x37 + x38 + x88 == 0)

@constraint(m,  - x38 + x39 + x89 == 0)

@constraint(m,  - x39 + x40 + x90 == 0)

@constraint(m,  - x40 + x41 + x91 == 0)

@constraint(m,  - x41 + x42 + x92 == 0)

@constraint(m,  - x42 + x43 + x93 == 0)

@constraint(m,  - x43 + x44 + x94 == 0)

@constraint(m,  - x44 + x45 + x95 == 0)

@constraint(m,  - x46 + x47 + x96 == 0)

@constraint(m,  - x47 + x48 + x97 == 0)

@constraint(m,  - x48 + x49 + x98 == 0)

@constraint(m,  - x49 + x50 + x99 == 0)

@constraint(m,  - x50 + x51 + x100 == 0)

@constraint(m,  - x51 + x52 + x101 == 0)

@constraint(m,  - x52 + x53 + x102 == 0)

@constraint(m,  - x53 + x54 + x103 == 0)

@constraint(m,  - x54 + x55 + x104 == 0)

@constraint(m,  - x55 + x56 + x105 == 0)

@constraint(m,  - 0.0883909058926351*x1 - x57 + x106 == 0)

@constraint(m,  - 0.0883909058926351*x3 - x58 + x107 == 0)

@constraint(m,  - 0.0883909058926351*x4 - x59 + x108 == 0)

@constraint(m,  - 0.0883909058926351*x5 - x60 + x109 == 0)

@constraint(m,  - 0.0883909058926351*x6 - x61 + x110 == 0)

@constraint(m,  - 0.0883909058926351*x8 - x62 + x111 == 0)

@constraint(m,  - 0.0883909058926351*x9 - x63 + x112 == 0)

@constraint(m,  - 0.0883909058926351*x10 - x64 + x113 == 0)

@constraint(m,  - 0.0883909058926351*x11 - x65 + x114 == 0)

@constraint(m,  - 0.0883909058926351*x12 - x66 + x115 == 0)

@constraint(m,  - 0.0883909058926351*x13 - x67 + x116 == 0)

@constraint(m,  - 0.0910958213328976*x15 - x68 + x117 == 0)

@constraint(m,  - 0.0910958213328976*x16 - x69 + x118 == 0)

@constraint(m,  - 0.0910958213328976*x17 - x70 + x119 == 0)

@constraint(m,  - 0.0910958213328976*x18 - x71 + x120 == 0)

@constraint(m,  - 0.0910958213328976*x19 - x72 + x121 == 0)

@constraint(m,  - 0.0910958213328976*x20 - x73 + x122 == 0)

@constraint(m,  - 0.0910958213328976*x21 - x74 + x123 == 0)

@constraint(m,  - 0.0910958213328976*x22 - x75 + x124 == 0)

@constraint(m,  - 0.0910958213328976*x24 - x76 + x125 == 0)

@constraint(m,  - 0.0910958213328976*x25 - x77 + x126 == 0)

@constraint(m,  - 0.0910958213328976*x26 - x78 + x127 == 0)

@constraint(m,  - 0.0910958213328976*x27 - x79 + x128 == 0)

@constraint(m,  - 0.0910958213328976*x28 - x80 + x129 == 0)

@constraint(m,  - 0.0910958213328976*x29 - x81 + x130 == 0)

@constraint(m,  - 0.0910958213328976*x30 - x82 + x131 == 0)

@constraint(m,  - 0.0910958213328976*x31 - x83 + x132 == 0)

@constraint(m,  - 0.0910958213328976*x32 - x84 + x133 == 0)

@constraint(m,  - 0.0910958213328976*x33 - x85 + x134 == 0)

@constraint(m,  - 0.0910958213328976*x35 - x86 + x135 == 0)

@constraint(m,  - 0.0910958213328976*x36 - x87 + x136 == 0)

@constraint(m,  - 0.0910958213328976*x37 - x88 + x137 == 0)

@constraint(m,  - 0.0910958213328976*x38 - x89 + x138 == 0)

@constraint(m,  - 0.0910958213328976*x39 - x90 + x139 == 0)

@constraint(m,  - 0.0910958213328976*x40 - x91 + x140 == 0)

@constraint(m,  - 0.0910958213328976*x41 - x92 + x141 == 0)

@constraint(m,  - 0.0910958213328976*x42 - x93 + x142 == 0)

@constraint(m,  - 0.0910958213328976*x43 - x94 + x143 == 0)

@constraint(m,  - 0.0910958213328976*x44 - x95 + x144 == 0)

@constraint(m,  - 0.104165400318551*x46 - x96 + x145 == 0)

@constraint(m,  - 0.104165400318551*x47 - x97 + x146 == 0)

@constraint(m,  - 0.104165400318551*x48 - x98 + x147 == 0)

@constraint(m,  - 0.104165400318551*x49 - x99 + x148 == 0)

@constraint(m,  - 0.104165400318551*x50 - x100 + x149 == 0)

@constraint(m,  - 0.104165400318551*x51 - x101 + x150 == 0)

@constraint(m,  - 0.104165400318551*x52 - x102 + x151 == 0)

@constraint(m,  - 0.104165400318551*x53 - x103 + x152 == 0)

@constraint(m,  - 0.104165400318551*x54 - x104 + x153 == 0)

@constraint(m,  - 0.104165400318551*x55 - x105 + x154 == 0)

@constraint(m,  - 0.104165400318551*x46 + x57 + x58 + x62 + x68 + x76 + x86 + x145 == 12.2484831531748)

@constraint(m,  - 0.104165400318551*x47 + x59 + x63 + x69 + x77 + x87 + x146 == 11.5832895131723)

@constraint(m,  - 0.104165400318551*x48 + x60 + x64 + x70 + x78 + x88 + x147 == 10.9697879902878)

@constraint(m,  - 0.104165400318551*x49 + x61 + x65 + x71 + x79 + x89 + x148 == 10.4045955503453)

@constraint(m,  - 0.104165400318551*x50 + x66 + x72 + x80 + x90 + x149 == 9.88456834472537)

@constraint(m,  - 0.104165400318551*x51 + x67 + x73 + x81 + x91 + x150 == 9.40678538515838)

@constraint(m,  - 0.104165400318551*x52 + x74 + x82 + x92 + x151 == 8.96853335045284)

@constraint(m,  - 0.104165400318551*x53 + x75 + x83 + x93 + x152 == 8.56729244722486)

@constraint(m,  - 0.104165400318551*x54 + x84 + x94 + x153 == 8.20072325207494)

@constraint(m,  - 0.104165400318551*x55 + x85 + x95 + x154 == 7.86665446767081)

@constraint(m, x57 - 22.5810847001566*b171 <= 0)

@constraint(m, x58 - 22.5810847001566*b172 <= 0)

@constraint(m, x59 - 20.6162935725221*b173 <= 0)

@constraint(m, x60 - 18.7754871235587*b174 <= 0)

@constraint(m, x61 - 17.0497803526134*b175 <= 0)

@constraint(m, x62 - 22.5810847001566*b176 <= 0)

@constraint(m, x63 - 20.6162935725221*b177 <= 0)

@constraint(m, x64 - 18.7754871235587*b178 <= 0)

@constraint(m, x65 - 17.0497803526134*b179 <= 0)

@constraint(m, x66 - 15.4308919214357*b180 <= 0)

@constraint(m, x67 - 13.9111022336098*b181 <= 0)

@constraint(m, x68 - 22.5810847001566*b182 <= 0)

@constraint(m, x69 - 20.6162935725221*b183 <= 0)

@constraint(m, x70 - 18.7754871235587*b184 <= 0)

@constraint(m, x71 - 17.0497803526134*b185 <= 0)

@constraint(m, x72 - 15.4308919214357*b186 <= 0)

@constraint(m, x73 - 13.9111022336098*b187 <= 0)

@constraint(m, x74 - 12.4832143988764*b188 <= 0)

@constraint(m, x75 - 11.1405178830677*b189 <= 0)

@constraint(m, x76 - 22.5810847001566*b190 <= 0)

@constraint(m, x77 - 20.6162935725221*b191 <= 0)

@constraint(m, x78 - 18.7754871235587*b192 <= 0)

@constraint(m, x79 - 17.0497803526134*b193 <= 0)

@constraint(m, x80 - 15.4308919214357*b194 <= 0)

@constraint(m, x81 - 13.9111022336098*b195 <= 0)

@constraint(m, x82 - 12.4832143988764*b196 <= 0)

@constraint(m, x83 - 11.1405178830677*b197 <= 0)

@constraint(m, x84 - 9.87675465812501*b198 <= 0)

@constraint(m, x85 - 8.68608767946346*b199 <= 0)

@constraint(m, x86 - 22.5810847001566*b200 <= 0)

@constraint(m, x87 - 20.6162935725221*b201 <= 0)

@constraint(m, x88 - 18.7754871235587*b202 <= 0)

@constraint(m, x89 - 17.0497803526134*b203 <= 0)

@constraint(m, x90 - 15.4308919214357*b204 <= 0)

@constraint(m, x91 - 13.9111022336098*b205 <= 0)

@constraint(m, x92 - 12.4832143988764*b206 <= 0)

@constraint(m, x93 - 11.1405178830677*b207 <= 0)

@constraint(m, x94 - 9.87675465812501*b208 <= 0)

@constraint(m, x95 - 8.68608767946346*b209 <= 0)

@constraint(m, x145 - 22.5810847001566*b210 <= 0)

@constraint(m, x146 - 20.6162935725221*b211 <= 0)

@constraint(m, x147 - 18.7754871235587*b212 <= 0)

@constraint(m, x148 - 17.0497803526134*b213 <= 0)

@constraint(m, x149 - 15.4308919214357*b214 <= 0)

@constraint(m, x150 - 13.9111022336098*b215 <= 0)

@constraint(m, x151 - 12.4832143988764*b216 <= 0)

@constraint(m, x152 - 11.1405178830677*b217 <= 0)

@constraint(m, x153 - 9.87675465812501*b218 <= 0)

@constraint(m, x154 - 8.68608767946346*b219 <= 0)

@constraint(m, x96 - 12.2484831531748*b210 <= 0)

@constraint(m, x97 - 11.5832895131723*b211 <= 0)

@constraint(m, x98 - 10.9697879902878*b212 <= 0)

@constraint(m, x99 - 10.4045955503453*b213 <= 0)

@constraint(m, x100 - 9.88456834472537*b214 <= 0)

@constraint(m, x101 - 9.40678538515838*b215 <= 0)

@constraint(m, x102 - 8.96853335045284*b216 <= 0)

@constraint(m, x103 - 8.56729244722486*b217 <= 0)

@constraint(m, x104 - 8.20072325207494*b218 <= 0)

@constraint(m, x105 - 7.86665446767081*b219 <= 0)

@constraint(m, x106 + x107 + x111 + x117 + x125 + x135 + x145 + x155 == 22.5810847001566)

@constraint(m, x108 + x112 + x118 + x126 + x136 + x146 + x156 == 20.6162935725221)

@constraint(m, x109 + x113 + x119 + x127 + x137 + x147 + x157 == 18.7754871235587)

@constraint(m, x110 + x114 + x120 + x128 + x138 + x148 + x158 == 17.0497803526134)

@constraint(m, x115 + x121 + x129 + x139 + x149 + x159 == 15.4308919214357)

@constraint(m, x116 + x122 + x130 + x140 + x150 + x160 == 13.9111022336098)

@constraint(m, x123 + x131 + x141 + x151 + x161 == 12.4832143988764)

@constraint(m, x124 + x132 + x142 + x152 + x162 == 11.1405178830677)

@constraint(m, x133 + x143 + x153 + x163 == 9.87675465812501)

@constraint(m, x134 + x144 + x154 + x164 == 8.68608767946346)

@constraint(m,  - x57 + x165 == 0)

@constraint(m,  - x58 - 2*x59 - 3*x60 - 4*x61 + x166 == 0)

@constraint(m,  - x62 - 2*x63 - 3*x64 - 4*x65 - 5*x66 - 6*x67 + x167 == 0)

@constraint(m,  - x68 - 2*x69 - 3*x70 - 4*x71 - 5*x72 - 6*x73 - 7*x74 - 8*x75 + x168 == 0)

@constraint(m,  - x76 - 2*x77 - 3*x78 - 4*x79 - 5*x80 - 6*x81 - 7*x82 - 8*x83 - 9*x84 - 10*x85 + x169 == 0)

@constraint(m,  - x86 - 2*x87 - 3*x88 - 4*x89 - 5*x90 - 6*x91 - 7*x92 - 8*x93 - 9*x94 - 10*x95 + x170 == 0)

@constraint(m, x1 - x165 <= 0)

@constraint(m, 2*x3 - x166 <= 0)

@constraint(m, 3*x8 - x167 <= 0)

@constraint(m, 4*x15 - x168 <= 0)

@constraint(m, 5*x24 - x169 <= 0)

@constraint(m, 7*x35 - x170 <= 0)

@constraint(m, 1.24*x1 - x165 >= 0)

@constraint(m, 2.44*x3 - x166 >= 0)

@constraint(m, 3.44*x8 - x167 >= 0)

@constraint(m, 4.44*x15 - x168 >= 0)

@constraint(m, 5.65*x24 - x169 >= 0)

@constraint(m, 7.94*x35 - x170 >= 0)

@constraint(m, b171 + b172 + b176 + b182 + b190 + b200 + b210 == 1)

@constraint(m, b173 + b177 + b183 + b191 + b201 + b211 == 1)

@constraint(m, b174 + b178 + b184 + b192 + b202 + b212 == 1)

@constraint(m, b175 + b179 + b185 + b193 + b203 + b213 == 1)

@constraint(m, b180 + b186 + b194 + b204 + b214 == 1)

@constraint(m, b181 + b187 + b195 + b205 + b215 == 1)

@constraint(m, b188 + b196 + b206 + b216 == 1)

@constraint(m, b189 + b197 + b207 + b217 == 1)

@constraint(m, b198 + b208 + b218 == 1)

@constraint(m, b199 + b209 + b219 == 1)

@constraint(m, x220 - x221 >= 0)

@constraint(m, x224 - x225 >= 0)

@constraint(m, x225 - x226 >= 0)

@constraint(m, x226 - x227 >= 0)

@constraint(m, x227 - x228 >= 0)

@constraint(m, x230 - x231 >= 0)

@constraint(m, x231 - x232 >= 0)

@constraint(m, x232 - x233 >= 0)

@constraint(m, x233 - x234 >= 0)

@constraint(m, x234 - x235 >= 0)

@constraint(m, x235 - x236 >= 0)

@constraint(m, x238 - x239 >= 0)

@constraint(m, x239 - x240 >= 0)

@constraint(m, x240 - x241 >= 0)

@constraint(m, x241 - x242 >= 0)

@constraint(m, x242 - x243 >= 0)

@constraint(m, x243 - x244 >= 0)

@constraint(m, x244 - x245 >= 0)

@constraint(m, x245 - x246 >= 0)

@constraint(m, x248 - x249 >= 0)

@constraint(m, x249 - x250 >= 0)

@constraint(m, x250 - x251 >= 0)

@constraint(m, x251 - x252 >= 0)

@constraint(m, x252 - x253 >= 0)

@constraint(m, x253 - x254 >= 0)

@constraint(m, x254 - x255 >= 0)

@constraint(m, x255 - x256 >= 0)

@constraint(m, x256 - x257 >= 0)

@constraint(m, x257 >= 0)

@constraint(m, x258 - x259 >= 0)

@constraint(m, x259 - x260 >= 0)

@constraint(m, x260 - x261 >= 0)

@constraint(m, x261 - x262 >= 0)

@constraint(m, x262 - x263 >= 0)

@constraint(m, x263 - x264 >= 0)

@constraint(m, x264 - x265 >= 0)

@constraint(m, x265 - x266 >= 0)

@constraint(m, x266 - x267 >= 0)

@constraint(m, x267 >= 0)

@constraint(m, x268 - x269 >= 0)

@constraint(m, x269 - x270 >= 0)

@constraint(m, x270 - x271 >= 0)

@constraint(m, x271 - x272 >= 0)

@constraint(m, x272 - x273 >= 0)

@constraint(m, x273 - x274 >= 0)

@constraint(m, x274 - x275 >= 0)

@constraint(m, x275 - x276 >= 0)

@constraint(m, x276 - x277 >= 0)

@constraint(m, x277 >= 0)

@constraint(m,  - b171 + x220 == 0)

@constraint(m,  - b172 - x220 + x224 == 0)

@constraint(m,  - b173 - x221 + x225 == 0)

@constraint(m,  - b174 - x222 + x226 == 0)

@constraint(m,  - b175 - x223 + x227 == 0)

@constraint(m,  - b176 - x224 + x230 == 0)

@constraint(m,  - b177 - x225 + x231 == 0)

@constraint(m,  - b178 - x226 + x232 == 0)

@constraint(m,  - b179 - x227 + x233 == 0)

@constraint(m,  - b180 - x228 + x234 == 0)

@constraint(m,  - b181 - x229 + x235 == 0)

@constraint(m,  - b182 - x230 + x238 == 0)

@constraint(m,  - b183 - x231 + x239 == 0)

@constraint(m,  - b184 - x232 + x240 == 0)

@constraint(m,  - b185 - x233 + x241 == 0)

@constraint(m,  - b186 - x234 + x242 == 0)

@constraint(m,  - b187 - x235 + x243 == 0)

@constraint(m,  - b188 - x236 + x244 == 0)

@constraint(m,  - b189 - x237 + x245 == 0)

@constraint(m,  - b190 - x238 + x248 == 0)

@constraint(m,  - b191 - x239 + x249 == 0)

@constraint(m,  - b192 - x240 + x250 == 0)

@constraint(m,  - b193 - x241 + x251 == 0)

@constraint(m,  - b194 - x242 + x252 == 0)

@constraint(m,  - b195 - x243 + x253 == 0)

@constraint(m,  - b196 - x244 + x254 == 0)

@constraint(m,  - b197 - x245 + x255 == 0)

@constraint(m,  - b198 - x246 + x256 == 0)

@constraint(m,  - b199 - x247 + x257 == 0)

@constraint(m,  - b200 - x248 + x258 == 0)

@constraint(m,  - b201 - x249 + x259 == 0)

@constraint(m,  - b202 - x250 + x260 == 0)

@constraint(m,  - b203 - x251 + x261 == 0)

@constraint(m,  - b204 - x252 + x262 == 0)

@constraint(m,  - b205 - x253 + x263 == 0)

@constraint(m,  - b206 - x254 + x264 == 0)

@constraint(m,  - b207 - x255 + x265 == 0)

@constraint(m,  - b208 - x256 + x266 == 0)

@constraint(m,  - b209 - x257 + x267 == 0)

@constraint(m,  - b210 - x258 + x268 == 0)

@constraint(m,  - b211 - x259 + x269 == 0)

@constraint(m,  - b212 - x260 + x270 == 0)

@constraint(m,  - b213 - x261 + x271 == 0)

@constraint(m,  - b214 - x262 + x272 == 0)

@constraint(m,  - b215 - x263 + x273 == 0)

@constraint(m,  - b216 - x264 + x274 == 0)

@constraint(m,  - b217 - x265 + x275 == 0)

@constraint(m,  - b218 - x266 + x276 == 0)

@constraint(m,  - b219 - x267 + x277 == 0)

@constraint(m, x1 - 68.6704994180012*b278 <= 0)

@constraint(m, x3 - 68.6704994180012*b279 <= 0)

@constraint(m, x8 - 68.6704994180012*b280 <= 0)

@constraint(m, x15 - 68.6704994180012*b281 <= 0)

@constraint(m, x24 - 68.6704994180012*b282 <= 0)

@constraint(m, x35 - 68.6704994180012*b283 <= 0)

@constraint(m, x46 - 68.6704994180012*b284 <= 0)

@constraint(m, x1 - 2.94302140362862*b278 >= 0)

@constraint(m, x3 - 2.94302140362862*b279 >= 0)

@constraint(m, x8 - 2.94302140362862*b280 >= 0)

@constraint(m, x15 - 2.94302140362862*b281 >= 0)

@constraint(m, x24 - 2.94302140362862*b282 >= 0)

@constraint(m, x35 - 2.94302140362862*b283 >= 0)

@constraint(m, x46 - 2.94302140362862*b284 >= 0)

@constraint(m, b284 >= 1)

@constraint(m, b278 + b279 + b280 + b281 + b282 + b283 >= 3)
