#  MIP written by GAMS Convert at 12/13/18 10:24:51
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


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x34 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x45 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x56 = Var(within=Reals,bounds=(0,0),initialize=0)
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
m.x96 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x165 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x166 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x167 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x168 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x169 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x170 = Var(within=Reals,bounds=(None,None),initialize=0)
m.b171 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b172 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b173 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b174 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b175 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b176 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b177 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b178 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b179 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b180 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b181 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b182 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b183 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b184 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b185 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b186 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b187 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b188 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b189 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b190 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b191 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b192 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b193 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b194 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b195 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b196 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b197 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b198 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b199 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b200 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b201 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b202 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b203 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b204 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b205 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b206 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b207 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b208 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b209 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b210 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b211 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b212 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b213 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b214 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b215 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b216 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b217 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b218 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b219 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x220 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x221 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x222 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x223 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x224 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x225 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x226 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x227 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x228 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x229 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x230 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x231 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x232 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x233 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x234 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x235 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x236 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x237 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x238 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x239 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x240 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x241 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x242 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x243 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x244 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x245 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x246 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x247 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x248 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x249 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x250 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x251 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x252 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x253 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x254 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x255 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x256 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x257 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x258 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x259 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x260 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x261 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x262 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x263 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x264 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x265 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x266 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x267 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x268 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x269 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x270 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x271 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x272 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x273 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x274 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x275 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x276 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x277 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b278 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b279 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b280 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b281 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b282 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b283 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b284 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x285 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x286 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x287 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x288 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x289 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x290 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x291 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x292 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x285 + m.x286 + m.x287 + m.x288 + m.x289 + m.x290 + m.x291 + m.x292, sense=maximize)

m.c2 = Constraint(expr= - 0.906110643564382*m.x106 + m.x285 == 0)

m.c3 = Constraint(expr= - 0.905302207746877*m.x107 - 0.819572087351369*m.x108 - 0.74196042008691*m.x109
                        - 0.67169840636548*m.x110 + m.x286 == 0)

m.c4 = Constraint(expr= - 0.905302207746877*m.x111 - 0.819572087351369*m.x112 - 0.74196042008691*m.x113
                        - 0.67169840636548*m.x114 - 0.608090050222728*m.x115 - 0.550505264975544*m.x116 + m.x287 == 0)

m.c5 = Constraint(expr= - 0.904673964560121*m.x117 - 0.818434982152927*m.x118 - 0.74041682003898*m.x119
                        - 0.669835820011661*m.x120 - 0.605983026894329*m.x121 - 0.548217067396635*m.x122
                        - 0.495957707801236*m.x123 - 0.448680025770694*m.x124 + m.x288 == 0)

m.c6 = Constraint(expr= - 0.904404862077705*m.x125 - 0.817948154549793*m.x126 - 0.739756287902319*m.x127
                        - 0.669039183531412*m.x128 - 0.605082290506307*m.x129 - 0.547239365491018*m.x130
                        - 0.494925942870395*m.x131 - 0.447613429100378*m.x132 - 0.404823761609656*m.x133
                        - 0.366124578284359*m.x134 + m.x289 == 0)

m.c7 = Constraint(expr= - 0.903687679316622*m.x135 - 0.816651421748662*m.x136 - 0.737997828130668*m.x137
                        - 0.66691954464411*m.x138 - 0.602686975590334*m.x139 - 0.544640794325583*m.x140
                        - 0.492185175485247*m.x141 - 0.444781679028308*m.x142 - 0.401943723323642*m.x143
                        - 0.363231590546224*m.x144 + m.x290 == 0)

m.c8 = Constraint(expr= - 0.900735806210138*m.x145 - 0.811324992589027*m.x146 - 0.730789471298111*m.x147
                        - 0.658248243599585*m.x148 - 0.592907762385079*m.x149 - 0.534053251360173*m.x150
                        - 0.481040885923051*m.x151 - 0.433290750201938*m.x152 - 0.390280493206538*m.x153
                        - 0.351539614696481*m.x154 + m.x291 == 0)

m.c9 = Constraint(expr= - 0.880014528399164*m.x155 - 0.774425570193603*m.x156 - 0.681505752934177*m.x157
                        - 0.599734963769687*m.x158 - 0.527775481306271*m.x159 - 0.46445009128238*m.x160
                        - 0.408722828044812*m.x161 - 0.359682026767828*m.x162 - 0.316525409159745*m.x163
                        - 0.278546958668066*m.x164 + m.x292 == 0)

m.c10 = Constraint(expr= - m.x1 + m.x2 + m.x57 == 0)

m.c11 = Constraint(expr= - m.x3 + m.x4 + m.x58 == 0)

m.c12 = Constraint(expr= - m.x4 + m.x5 + m.x59 == 0)

m.c13 = Constraint(expr= - m.x5 + m.x6 + m.x60 == 0)

m.c14 = Constraint(expr= - m.x6 + m.x7 + m.x61 == 0)

m.c15 = Constraint(expr= - m.x8 + m.x9 + m.x62 == 0)

m.c16 = Constraint(expr= - m.x9 + m.x10 + m.x63 == 0)

m.c17 = Constraint(expr= - m.x10 + m.x11 + m.x64 == 0)

m.c18 = Constraint(expr= - m.x11 + m.x12 + m.x65 == 0)

m.c19 = Constraint(expr= - m.x12 + m.x13 + m.x66 == 0)

m.c20 = Constraint(expr= - m.x13 + m.x14 + m.x67 == 0)

m.c21 = Constraint(expr= - m.x15 + m.x16 + m.x68 == 0)

m.c22 = Constraint(expr= - m.x16 + m.x17 + m.x69 == 0)

m.c23 = Constraint(expr= - m.x17 + m.x18 + m.x70 == 0)

m.c24 = Constraint(expr= - m.x18 + m.x19 + m.x71 == 0)

m.c25 = Constraint(expr= - m.x19 + m.x20 + m.x72 == 0)

m.c26 = Constraint(expr= - m.x20 + m.x21 + m.x73 == 0)

m.c27 = Constraint(expr= - m.x21 + m.x22 + m.x74 == 0)

m.c28 = Constraint(expr= - m.x22 + m.x23 + m.x75 == 0)

m.c29 = Constraint(expr= - m.x24 + m.x25 + m.x76 == 0)

m.c30 = Constraint(expr= - m.x25 + m.x26 + m.x77 == 0)

m.c31 = Constraint(expr= - m.x26 + m.x27 + m.x78 == 0)

m.c32 = Constraint(expr= - m.x27 + m.x28 + m.x79 == 0)

m.c33 = Constraint(expr= - m.x28 + m.x29 + m.x80 == 0)

m.c34 = Constraint(expr= - m.x29 + m.x30 + m.x81 == 0)

m.c35 = Constraint(expr= - m.x30 + m.x31 + m.x82 == 0)

m.c36 = Constraint(expr= - m.x31 + m.x32 + m.x83 == 0)

m.c37 = Constraint(expr= - m.x32 + m.x33 + m.x84 == 0)

m.c38 = Constraint(expr= - m.x33 + m.x34 + m.x85 == 0)

m.c39 = Constraint(expr= - m.x35 + m.x36 + m.x86 == 0)

m.c40 = Constraint(expr= - m.x36 + m.x37 + m.x87 == 0)

m.c41 = Constraint(expr= - m.x37 + m.x38 + m.x88 == 0)

m.c42 = Constraint(expr= - m.x38 + m.x39 + m.x89 == 0)

m.c43 = Constraint(expr= - m.x39 + m.x40 + m.x90 == 0)

m.c44 = Constraint(expr= - m.x40 + m.x41 + m.x91 == 0)

m.c45 = Constraint(expr= - m.x41 + m.x42 + m.x92 == 0)

m.c46 = Constraint(expr= - m.x42 + m.x43 + m.x93 == 0)

m.c47 = Constraint(expr= - m.x43 + m.x44 + m.x94 == 0)

m.c48 = Constraint(expr= - m.x44 + m.x45 + m.x95 == 0)

m.c49 = Constraint(expr= - m.x46 + m.x47 + m.x96 == 0)

m.c50 = Constraint(expr= - m.x47 + m.x48 + m.x97 == 0)

m.c51 = Constraint(expr= - m.x48 + m.x49 + m.x98 == 0)

m.c52 = Constraint(expr= - m.x49 + m.x50 + m.x99 == 0)

m.c53 = Constraint(expr= - m.x50 + m.x51 + m.x100 == 0)

m.c54 = Constraint(expr= - m.x51 + m.x52 + m.x101 == 0)

m.c55 = Constraint(expr= - m.x52 + m.x53 + m.x102 == 0)

m.c56 = Constraint(expr= - m.x53 + m.x54 + m.x103 == 0)

m.c57 = Constraint(expr= - m.x54 + m.x55 + m.x104 == 0)

m.c58 = Constraint(expr= - m.x55 + m.x56 + m.x105 == 0)

m.c59 = Constraint(expr= - 0.0883909058926351*m.x1 - m.x57 + m.x106 == 0)

m.c60 = Constraint(expr= - 0.0883909058926351*m.x3 - m.x58 + m.x107 == 0)

m.c61 = Constraint(expr= - 0.0883909058926351*m.x4 - m.x59 + m.x108 == 0)

m.c62 = Constraint(expr= - 0.0883909058926351*m.x5 - m.x60 + m.x109 == 0)

m.c63 = Constraint(expr= - 0.0883909058926351*m.x6 - m.x61 + m.x110 == 0)

m.c64 = Constraint(expr= - 0.0883909058926351*m.x8 - m.x62 + m.x111 == 0)

m.c65 = Constraint(expr= - 0.0883909058926351*m.x9 - m.x63 + m.x112 == 0)

m.c66 = Constraint(expr= - 0.0883909058926351*m.x10 - m.x64 + m.x113 == 0)

m.c67 = Constraint(expr= - 0.0883909058926351*m.x11 - m.x65 + m.x114 == 0)

m.c68 = Constraint(expr= - 0.0883909058926351*m.x12 - m.x66 + m.x115 == 0)

m.c69 = Constraint(expr= - 0.0883909058926351*m.x13 - m.x67 + m.x116 == 0)

m.c70 = Constraint(expr= - 0.0910958213328976*m.x15 - m.x68 + m.x117 == 0)

m.c71 = Constraint(expr= - 0.0910958213328976*m.x16 - m.x69 + m.x118 == 0)

m.c72 = Constraint(expr= - 0.0910958213328976*m.x17 - m.x70 + m.x119 == 0)

m.c73 = Constraint(expr= - 0.0910958213328976*m.x18 - m.x71 + m.x120 == 0)

m.c74 = Constraint(expr= - 0.0910958213328976*m.x19 - m.x72 + m.x121 == 0)

m.c75 = Constraint(expr= - 0.0910958213328976*m.x20 - m.x73 + m.x122 == 0)

m.c76 = Constraint(expr= - 0.0910958213328976*m.x21 - m.x74 + m.x123 == 0)

m.c77 = Constraint(expr= - 0.0910958213328976*m.x22 - m.x75 + m.x124 == 0)

m.c78 = Constraint(expr= - 0.0910958213328976*m.x24 - m.x76 + m.x125 == 0)

m.c79 = Constraint(expr= - 0.0910958213328976*m.x25 - m.x77 + m.x126 == 0)

m.c80 = Constraint(expr= - 0.0910958213328976*m.x26 - m.x78 + m.x127 == 0)

m.c81 = Constraint(expr= - 0.0910958213328976*m.x27 - m.x79 + m.x128 == 0)

m.c82 = Constraint(expr= - 0.0910958213328976*m.x28 - m.x80 + m.x129 == 0)

m.c83 = Constraint(expr= - 0.0910958213328976*m.x29 - m.x81 + m.x130 == 0)

m.c84 = Constraint(expr= - 0.0910958213328976*m.x30 - m.x82 + m.x131 == 0)

m.c85 = Constraint(expr= - 0.0910958213328976*m.x31 - m.x83 + m.x132 == 0)

m.c86 = Constraint(expr= - 0.0910958213328976*m.x32 - m.x84 + m.x133 == 0)

m.c87 = Constraint(expr= - 0.0910958213328976*m.x33 - m.x85 + m.x134 == 0)

m.c88 = Constraint(expr= - 0.0910958213328976*m.x35 - m.x86 + m.x135 == 0)

m.c89 = Constraint(expr= - 0.0910958213328976*m.x36 - m.x87 + m.x136 == 0)

m.c90 = Constraint(expr= - 0.0910958213328976*m.x37 - m.x88 + m.x137 == 0)

m.c91 = Constraint(expr= - 0.0910958213328976*m.x38 - m.x89 + m.x138 == 0)

m.c92 = Constraint(expr= - 0.0910958213328976*m.x39 - m.x90 + m.x139 == 0)

m.c93 = Constraint(expr= - 0.0910958213328976*m.x40 - m.x91 + m.x140 == 0)

m.c94 = Constraint(expr= - 0.0910958213328976*m.x41 - m.x92 + m.x141 == 0)

m.c95 = Constraint(expr= - 0.0910958213328976*m.x42 - m.x93 + m.x142 == 0)

m.c96 = Constraint(expr= - 0.0910958213328976*m.x43 - m.x94 + m.x143 == 0)

m.c97 = Constraint(expr= - 0.0910958213328976*m.x44 - m.x95 + m.x144 == 0)

m.c98 = Constraint(expr= - 0.104165400318551*m.x46 - m.x96 + m.x145 == 0)

m.c99 = Constraint(expr= - 0.104165400318551*m.x47 - m.x97 + m.x146 == 0)

m.c100 = Constraint(expr= - 0.104165400318551*m.x48 - m.x98 + m.x147 == 0)

m.c101 = Constraint(expr= - 0.104165400318551*m.x49 - m.x99 + m.x148 == 0)

m.c102 = Constraint(expr= - 0.104165400318551*m.x50 - m.x100 + m.x149 == 0)

m.c103 = Constraint(expr= - 0.104165400318551*m.x51 - m.x101 + m.x150 == 0)

m.c104 = Constraint(expr= - 0.104165400318551*m.x52 - m.x102 + m.x151 == 0)

m.c105 = Constraint(expr= - 0.104165400318551*m.x53 - m.x103 + m.x152 == 0)

m.c106 = Constraint(expr= - 0.104165400318551*m.x54 - m.x104 + m.x153 == 0)

m.c107 = Constraint(expr= - 0.104165400318551*m.x55 - m.x105 + m.x154 == 0)

m.c108 = Constraint(expr= - 0.104165400318551*m.x46 + m.x57 + m.x58 + m.x62 + m.x68 + m.x76 + m.x86 + m.x145
                          == 12.2484831531748)

m.c109 = Constraint(expr= - 0.104165400318551*m.x47 + m.x59 + m.x63 + m.x69 + m.x77 + m.x87 + m.x146
                          == 11.5832895131723)

m.c110 = Constraint(expr= - 0.104165400318551*m.x48 + m.x60 + m.x64 + m.x70 + m.x78 + m.x88 + m.x147
                          == 10.9697879902878)

m.c111 = Constraint(expr= - 0.104165400318551*m.x49 + m.x61 + m.x65 + m.x71 + m.x79 + m.x89 + m.x148
                          == 10.4045955503453)

m.c112 = Constraint(expr= - 0.104165400318551*m.x50 + m.x66 + m.x72 + m.x80 + m.x90 + m.x149 == 9.88456834472537)

m.c113 = Constraint(expr= - 0.104165400318551*m.x51 + m.x67 + m.x73 + m.x81 + m.x91 + m.x150 == 9.40678538515838)

m.c114 = Constraint(expr= - 0.104165400318551*m.x52 + m.x74 + m.x82 + m.x92 + m.x151 == 8.96853335045284)

m.c115 = Constraint(expr= - 0.104165400318551*m.x53 + m.x75 + m.x83 + m.x93 + m.x152 == 8.56729244722486)

m.c116 = Constraint(expr= - 0.104165400318551*m.x54 + m.x84 + m.x94 + m.x153 == 8.20072325207494)

m.c117 = Constraint(expr= - 0.104165400318551*m.x55 + m.x85 + m.x95 + m.x154 == 7.86665446767081)

m.c118 = Constraint(expr=   m.x57 - 22.5810847001566*m.b171 <= 0)

m.c119 = Constraint(expr=   m.x58 - 22.5810847001566*m.b172 <= 0)

m.c120 = Constraint(expr=   m.x59 - 20.6162935725221*m.b173 <= 0)

m.c121 = Constraint(expr=   m.x60 - 18.7754871235587*m.b174 <= 0)

m.c122 = Constraint(expr=   m.x61 - 17.0497803526134*m.b175 <= 0)

m.c123 = Constraint(expr=   m.x62 - 22.5810847001566*m.b176 <= 0)

m.c124 = Constraint(expr=   m.x63 - 20.6162935725221*m.b177 <= 0)

m.c125 = Constraint(expr=   m.x64 - 18.7754871235587*m.b178 <= 0)

m.c126 = Constraint(expr=   m.x65 - 17.0497803526134*m.b179 <= 0)

m.c127 = Constraint(expr=   m.x66 - 15.4308919214357*m.b180 <= 0)

m.c128 = Constraint(expr=   m.x67 - 13.9111022336098*m.b181 <= 0)

m.c129 = Constraint(expr=   m.x68 - 22.5810847001566*m.b182 <= 0)

m.c130 = Constraint(expr=   m.x69 - 20.6162935725221*m.b183 <= 0)

m.c131 = Constraint(expr=   m.x70 - 18.7754871235587*m.b184 <= 0)

m.c132 = Constraint(expr=   m.x71 - 17.0497803526134*m.b185 <= 0)

m.c133 = Constraint(expr=   m.x72 - 15.4308919214357*m.b186 <= 0)

m.c134 = Constraint(expr=   m.x73 - 13.9111022336098*m.b187 <= 0)

m.c135 = Constraint(expr=   m.x74 - 12.4832143988764*m.b188 <= 0)

m.c136 = Constraint(expr=   m.x75 - 11.1405178830677*m.b189 <= 0)

m.c137 = Constraint(expr=   m.x76 - 22.5810847001566*m.b190 <= 0)

m.c138 = Constraint(expr=   m.x77 - 20.6162935725221*m.b191 <= 0)

m.c139 = Constraint(expr=   m.x78 - 18.7754871235587*m.b192 <= 0)

m.c140 = Constraint(expr=   m.x79 - 17.0497803526134*m.b193 <= 0)

m.c141 = Constraint(expr=   m.x80 - 15.4308919214357*m.b194 <= 0)

m.c142 = Constraint(expr=   m.x81 - 13.9111022336098*m.b195 <= 0)

m.c143 = Constraint(expr=   m.x82 - 12.4832143988764*m.b196 <= 0)

m.c144 = Constraint(expr=   m.x83 - 11.1405178830677*m.b197 <= 0)

m.c145 = Constraint(expr=   m.x84 - 9.87675465812501*m.b198 <= 0)

m.c146 = Constraint(expr=   m.x85 - 8.68608767946346*m.b199 <= 0)

m.c147 = Constraint(expr=   m.x86 - 22.5810847001566*m.b200 <= 0)

m.c148 = Constraint(expr=   m.x87 - 20.6162935725221*m.b201 <= 0)

m.c149 = Constraint(expr=   m.x88 - 18.7754871235587*m.b202 <= 0)

m.c150 = Constraint(expr=   m.x89 - 17.0497803526134*m.b203 <= 0)

m.c151 = Constraint(expr=   m.x90 - 15.4308919214357*m.b204 <= 0)

m.c152 = Constraint(expr=   m.x91 - 13.9111022336098*m.b205 <= 0)

m.c153 = Constraint(expr=   m.x92 - 12.4832143988764*m.b206 <= 0)

m.c154 = Constraint(expr=   m.x93 - 11.1405178830677*m.b207 <= 0)

m.c155 = Constraint(expr=   m.x94 - 9.87675465812501*m.b208 <= 0)

m.c156 = Constraint(expr=   m.x95 - 8.68608767946346*m.b209 <= 0)

m.c157 = Constraint(expr=   m.x145 - 22.5810847001566*m.b210 <= 0)

m.c158 = Constraint(expr=   m.x146 - 20.6162935725221*m.b211 <= 0)

m.c159 = Constraint(expr=   m.x147 - 18.7754871235587*m.b212 <= 0)

m.c160 = Constraint(expr=   m.x148 - 17.0497803526134*m.b213 <= 0)

m.c161 = Constraint(expr=   m.x149 - 15.4308919214357*m.b214 <= 0)

m.c162 = Constraint(expr=   m.x150 - 13.9111022336098*m.b215 <= 0)

m.c163 = Constraint(expr=   m.x151 - 12.4832143988764*m.b216 <= 0)

m.c164 = Constraint(expr=   m.x152 - 11.1405178830677*m.b217 <= 0)

m.c165 = Constraint(expr=   m.x153 - 9.87675465812501*m.b218 <= 0)

m.c166 = Constraint(expr=   m.x154 - 8.68608767946346*m.b219 <= 0)

m.c167 = Constraint(expr=   m.x96 - 12.2484831531748*m.b210 <= 0)

m.c168 = Constraint(expr=   m.x97 - 11.5832895131723*m.b211 <= 0)

m.c169 = Constraint(expr=   m.x98 - 10.9697879902878*m.b212 <= 0)

m.c170 = Constraint(expr=   m.x99 - 10.4045955503453*m.b213 <= 0)

m.c171 = Constraint(expr=   m.x100 - 9.88456834472537*m.b214 <= 0)

m.c172 = Constraint(expr=   m.x101 - 9.40678538515838*m.b215 <= 0)

m.c173 = Constraint(expr=   m.x102 - 8.96853335045284*m.b216 <= 0)

m.c174 = Constraint(expr=   m.x103 - 8.56729244722486*m.b217 <= 0)

m.c175 = Constraint(expr=   m.x104 - 8.20072325207494*m.b218 <= 0)

m.c176 = Constraint(expr=   m.x105 - 7.86665446767081*m.b219 <= 0)

m.c177 = Constraint(expr=   m.x106 + m.x107 + m.x111 + m.x117 + m.x125 + m.x135 + m.x145 + m.x155 == 22.5810847001566)

m.c178 = Constraint(expr=   m.x108 + m.x112 + m.x118 + m.x126 + m.x136 + m.x146 + m.x156 == 20.6162935725221)

m.c179 = Constraint(expr=   m.x109 + m.x113 + m.x119 + m.x127 + m.x137 + m.x147 + m.x157 == 18.7754871235587)

m.c180 = Constraint(expr=   m.x110 + m.x114 + m.x120 + m.x128 + m.x138 + m.x148 + m.x158 == 17.0497803526134)

m.c181 = Constraint(expr=   m.x115 + m.x121 + m.x129 + m.x139 + m.x149 + m.x159 == 15.4308919214357)

m.c182 = Constraint(expr=   m.x116 + m.x122 + m.x130 + m.x140 + m.x150 + m.x160 == 13.9111022336098)

m.c183 = Constraint(expr=   m.x123 + m.x131 + m.x141 + m.x151 + m.x161 == 12.4832143988764)

m.c184 = Constraint(expr=   m.x124 + m.x132 + m.x142 + m.x152 + m.x162 == 11.1405178830677)

m.c185 = Constraint(expr=   m.x133 + m.x143 + m.x153 + m.x163 == 9.87675465812501)

m.c186 = Constraint(expr=   m.x134 + m.x144 + m.x154 + m.x164 == 8.68608767946346)

m.c187 = Constraint(expr= - m.x57 + m.x165 == 0)

m.c188 = Constraint(expr= - m.x58 - 2*m.x59 - 3*m.x60 - 4*m.x61 + m.x166 == 0)

m.c189 = Constraint(expr= - m.x62 - 2*m.x63 - 3*m.x64 - 4*m.x65 - 5*m.x66 - 6*m.x67 + m.x167 == 0)

m.c190 = Constraint(expr= - m.x68 - 2*m.x69 - 3*m.x70 - 4*m.x71 - 5*m.x72 - 6*m.x73 - 7*m.x74 - 8*m.x75 + m.x168 == 0)

m.c191 = Constraint(expr= - m.x76 - 2*m.x77 - 3*m.x78 - 4*m.x79 - 5*m.x80 - 6*m.x81 - 7*m.x82 - 8*m.x83 - 9*m.x84
                          - 10*m.x85 + m.x169 == 0)

m.c192 = Constraint(expr= - m.x86 - 2*m.x87 - 3*m.x88 - 4*m.x89 - 5*m.x90 - 6*m.x91 - 7*m.x92 - 8*m.x93 - 9*m.x94
                          - 10*m.x95 + m.x170 == 0)

m.c193 = Constraint(expr=   m.x1 - m.x165 <= 0)

m.c194 = Constraint(expr=   2*m.x3 - m.x166 <= 0)

m.c195 = Constraint(expr=   3*m.x8 - m.x167 <= 0)

m.c196 = Constraint(expr=   4*m.x15 - m.x168 <= 0)

m.c197 = Constraint(expr=   5*m.x24 - m.x169 <= 0)

m.c198 = Constraint(expr=   7*m.x35 - m.x170 <= 0)

m.c199 = Constraint(expr=   1.24*m.x1 - m.x165 >= 0)

m.c200 = Constraint(expr=   2.44*m.x3 - m.x166 >= 0)

m.c201 = Constraint(expr=   3.44*m.x8 - m.x167 >= 0)

m.c202 = Constraint(expr=   4.44*m.x15 - m.x168 >= 0)

m.c203 = Constraint(expr=   5.65*m.x24 - m.x169 >= 0)

m.c204 = Constraint(expr=   7.94*m.x35 - m.x170 >= 0)

m.c205 = Constraint(expr=   m.b171 + m.b172 + m.b176 + m.b182 + m.b190 + m.b200 + m.b210 == 1)

m.c206 = Constraint(expr=   m.b173 + m.b177 + m.b183 + m.b191 + m.b201 + m.b211 == 1)

m.c207 = Constraint(expr=   m.b174 + m.b178 + m.b184 + m.b192 + m.b202 + m.b212 == 1)

m.c208 = Constraint(expr=   m.b175 + m.b179 + m.b185 + m.b193 + m.b203 + m.b213 == 1)

m.c209 = Constraint(expr=   m.b180 + m.b186 + m.b194 + m.b204 + m.b214 == 1)

m.c210 = Constraint(expr=   m.b181 + m.b187 + m.b195 + m.b205 + m.b215 == 1)

m.c211 = Constraint(expr=   m.b188 + m.b196 + m.b206 + m.b216 == 1)

m.c212 = Constraint(expr=   m.b189 + m.b197 + m.b207 + m.b217 == 1)

m.c213 = Constraint(expr=   m.b198 + m.b208 + m.b218 == 1)

m.c214 = Constraint(expr=   m.b199 + m.b209 + m.b219 == 1)

m.c215 = Constraint(expr=   m.x220 - m.x221 >= 0)

m.c216 = Constraint(expr=   m.x224 - m.x225 >= 0)

m.c217 = Constraint(expr=   m.x225 - m.x226 >= 0)

m.c218 = Constraint(expr=   m.x226 - m.x227 >= 0)

m.c219 = Constraint(expr=   m.x227 - m.x228 >= 0)

m.c220 = Constraint(expr=   m.x230 - m.x231 >= 0)

m.c221 = Constraint(expr=   m.x231 - m.x232 >= 0)

m.c222 = Constraint(expr=   m.x232 - m.x233 >= 0)

m.c223 = Constraint(expr=   m.x233 - m.x234 >= 0)

m.c224 = Constraint(expr=   m.x234 - m.x235 >= 0)

m.c225 = Constraint(expr=   m.x235 - m.x236 >= 0)

m.c226 = Constraint(expr=   m.x238 - m.x239 >= 0)

m.c227 = Constraint(expr=   m.x239 - m.x240 >= 0)

m.c228 = Constraint(expr=   m.x240 - m.x241 >= 0)

m.c229 = Constraint(expr=   m.x241 - m.x242 >= 0)

m.c230 = Constraint(expr=   m.x242 - m.x243 >= 0)

m.c231 = Constraint(expr=   m.x243 - m.x244 >= 0)

m.c232 = Constraint(expr=   m.x244 - m.x245 >= 0)

m.c233 = Constraint(expr=   m.x245 - m.x246 >= 0)

m.c234 = Constraint(expr=   m.x248 - m.x249 >= 0)

m.c235 = Constraint(expr=   m.x249 - m.x250 >= 0)

m.c236 = Constraint(expr=   m.x250 - m.x251 >= 0)

m.c237 = Constraint(expr=   m.x251 - m.x252 >= 0)

m.c238 = Constraint(expr=   m.x252 - m.x253 >= 0)

m.c239 = Constraint(expr=   m.x253 - m.x254 >= 0)

m.c240 = Constraint(expr=   m.x254 - m.x255 >= 0)

m.c241 = Constraint(expr=   m.x255 - m.x256 >= 0)

m.c242 = Constraint(expr=   m.x256 - m.x257 >= 0)

m.c243 = Constraint(expr=   m.x257 >= 0)

m.c244 = Constraint(expr=   m.x258 - m.x259 >= 0)

m.c245 = Constraint(expr=   m.x259 - m.x260 >= 0)

m.c246 = Constraint(expr=   m.x260 - m.x261 >= 0)

m.c247 = Constraint(expr=   m.x261 - m.x262 >= 0)

m.c248 = Constraint(expr=   m.x262 - m.x263 >= 0)

m.c249 = Constraint(expr=   m.x263 - m.x264 >= 0)

m.c250 = Constraint(expr=   m.x264 - m.x265 >= 0)

m.c251 = Constraint(expr=   m.x265 - m.x266 >= 0)

m.c252 = Constraint(expr=   m.x266 - m.x267 >= 0)

m.c253 = Constraint(expr=   m.x267 >= 0)

m.c254 = Constraint(expr=   m.x268 - m.x269 >= 0)

m.c255 = Constraint(expr=   m.x269 - m.x270 >= 0)

m.c256 = Constraint(expr=   m.x270 - m.x271 >= 0)

m.c257 = Constraint(expr=   m.x271 - m.x272 >= 0)

m.c258 = Constraint(expr=   m.x272 - m.x273 >= 0)

m.c259 = Constraint(expr=   m.x273 - m.x274 >= 0)

m.c260 = Constraint(expr=   m.x274 - m.x275 >= 0)

m.c261 = Constraint(expr=   m.x275 - m.x276 >= 0)

m.c262 = Constraint(expr=   m.x276 - m.x277 >= 0)

m.c263 = Constraint(expr=   m.x277 >= 0)

m.c264 = Constraint(expr= - m.b171 + m.x220 == 0)

m.c265 = Constraint(expr= - m.b172 - m.x220 + m.x224 == 0)

m.c266 = Constraint(expr= - m.b173 - m.x221 + m.x225 == 0)

m.c267 = Constraint(expr= - m.b174 - m.x222 + m.x226 == 0)

m.c268 = Constraint(expr= - m.b175 - m.x223 + m.x227 == 0)

m.c269 = Constraint(expr= - m.b176 - m.x224 + m.x230 == 0)

m.c270 = Constraint(expr= - m.b177 - m.x225 + m.x231 == 0)

m.c271 = Constraint(expr= - m.b178 - m.x226 + m.x232 == 0)

m.c272 = Constraint(expr= - m.b179 - m.x227 + m.x233 == 0)

m.c273 = Constraint(expr= - m.b180 - m.x228 + m.x234 == 0)

m.c274 = Constraint(expr= - m.b181 - m.x229 + m.x235 == 0)

m.c275 = Constraint(expr= - m.b182 - m.x230 + m.x238 == 0)

m.c276 = Constraint(expr= - m.b183 - m.x231 + m.x239 == 0)

m.c277 = Constraint(expr= - m.b184 - m.x232 + m.x240 == 0)

m.c278 = Constraint(expr= - m.b185 - m.x233 + m.x241 == 0)

m.c279 = Constraint(expr= - m.b186 - m.x234 + m.x242 == 0)

m.c280 = Constraint(expr= - m.b187 - m.x235 + m.x243 == 0)

m.c281 = Constraint(expr= - m.b188 - m.x236 + m.x244 == 0)

m.c282 = Constraint(expr= - m.b189 - m.x237 + m.x245 == 0)

m.c283 = Constraint(expr= - m.b190 - m.x238 + m.x248 == 0)

m.c284 = Constraint(expr= - m.b191 - m.x239 + m.x249 == 0)

m.c285 = Constraint(expr= - m.b192 - m.x240 + m.x250 == 0)

m.c286 = Constraint(expr= - m.b193 - m.x241 + m.x251 == 0)

m.c287 = Constraint(expr= - m.b194 - m.x242 + m.x252 == 0)

m.c288 = Constraint(expr= - m.b195 - m.x243 + m.x253 == 0)

m.c289 = Constraint(expr= - m.b196 - m.x244 + m.x254 == 0)

m.c290 = Constraint(expr= - m.b197 - m.x245 + m.x255 == 0)

m.c291 = Constraint(expr= - m.b198 - m.x246 + m.x256 == 0)

m.c292 = Constraint(expr= - m.b199 - m.x247 + m.x257 == 0)

m.c293 = Constraint(expr= - m.b200 - m.x248 + m.x258 == 0)

m.c294 = Constraint(expr= - m.b201 - m.x249 + m.x259 == 0)

m.c295 = Constraint(expr= - m.b202 - m.x250 + m.x260 == 0)

m.c296 = Constraint(expr= - m.b203 - m.x251 + m.x261 == 0)

m.c297 = Constraint(expr= - m.b204 - m.x252 + m.x262 == 0)

m.c298 = Constraint(expr= - m.b205 - m.x253 + m.x263 == 0)

m.c299 = Constraint(expr= - m.b206 - m.x254 + m.x264 == 0)

m.c300 = Constraint(expr= - m.b207 - m.x255 + m.x265 == 0)

m.c301 = Constraint(expr= - m.b208 - m.x256 + m.x266 == 0)

m.c302 = Constraint(expr= - m.b209 - m.x257 + m.x267 == 0)

m.c303 = Constraint(expr= - m.b210 - m.x258 + m.x268 == 0)

m.c304 = Constraint(expr= - m.b211 - m.x259 + m.x269 == 0)

m.c305 = Constraint(expr= - m.b212 - m.x260 + m.x270 == 0)

m.c306 = Constraint(expr= - m.b213 - m.x261 + m.x271 == 0)

m.c307 = Constraint(expr= - m.b214 - m.x262 + m.x272 == 0)

m.c308 = Constraint(expr= - m.b215 - m.x263 + m.x273 == 0)

m.c309 = Constraint(expr= - m.b216 - m.x264 + m.x274 == 0)

m.c310 = Constraint(expr= - m.b217 - m.x265 + m.x275 == 0)

m.c311 = Constraint(expr= - m.b218 - m.x266 + m.x276 == 0)

m.c312 = Constraint(expr= - m.b219 - m.x267 + m.x277 == 0)

m.c313 = Constraint(expr=   m.x1 - 68.6704994180012*m.b278 <= 0)

m.c314 = Constraint(expr=   m.x3 - 68.6704994180012*m.b279 <= 0)

m.c315 = Constraint(expr=   m.x8 - 68.6704994180012*m.b280 <= 0)

m.c316 = Constraint(expr=   m.x15 - 68.6704994180012*m.b281 <= 0)

m.c317 = Constraint(expr=   m.x24 - 68.6704994180012*m.b282 <= 0)

m.c318 = Constraint(expr=   m.x35 - 68.6704994180012*m.b283 <= 0)

m.c319 = Constraint(expr=   m.x46 - 68.6704994180012*m.b284 <= 0)

m.c320 = Constraint(expr=   m.x1 - 2.94302140362862*m.b278 >= 0)

m.c321 = Constraint(expr=   m.x3 - 2.94302140362862*m.b279 >= 0)

m.c322 = Constraint(expr=   m.x8 - 2.94302140362862*m.b280 >= 0)

m.c323 = Constraint(expr=   m.x15 - 2.94302140362862*m.b281 >= 0)

m.c324 = Constraint(expr=   m.x24 - 2.94302140362862*m.b282 >= 0)

m.c325 = Constraint(expr=   m.x35 - 2.94302140362862*m.b283 >= 0)

m.c326 = Constraint(expr=   m.x46 - 2.94302140362862*m.b284 >= 0)

m.c327 = Constraint(expr=   m.b284 >= 1)

m.c328 = Constraint(expr=   m.b278 + m.b279 + m.b280 + m.b281 + m.b282 + m.b283 >= 3)
