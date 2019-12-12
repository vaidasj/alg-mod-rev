#  NLP written by GAMS Convert at 12/13/18 11:43:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        166      166        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        264      264        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        715      489      226        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0.714277270296959)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=0.213455359357076)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=-0.000257460042516337)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=0.267446625046681)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=0.428981457932639)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=0.706421402256235)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=1.23179277222266)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=1.1923022297969)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0.531271066405917)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0.37852116602787)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0.0259822061255019)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=0.613866884603052)
m.x14 = Var(within=Reals,bounds=(None,None),initialize=0.912812569152467)
m.x15 = Var(within=Reals,bounds=(None,None),initialize=0.0233052515549957)
m.x16 = Var(within=Reals,bounds=(None,None),initialize=0.0359433346141142)
m.x17 = Var(within=Reals,bounds=(None,None),initialize=0.0397474756614438)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=0.0172169283352343)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=0.00761194936907785)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=0.0456959504315114)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=0.0141724551070975)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=0.307728859298738)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=0.0414914804160212)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=0.0659507832795914)
m.x25 = Var(within=Reals,bounds=(None,None),initialize=-0.280822769860641)
m.x26 = Var(within=Reals,bounds=(None,None),initialize=-0.192302229796904)
m.x27 = Var(within=Reals,bounds=(None,None),initialize=0.388881181040466)
m.x28 = Var(within=Reals,bounds=(None,None),initialize=0.268505801367806)
m.x29 = Var(within=Reals,bounds=(None,None),initialize=14.827424)
m.x30 = Var(within=Reals,bounds=(None,None),initialize=2.101049)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=-0.000327)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=1.488157)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=7.917504)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=6.953332)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=1.5645)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=2.5185)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=2.597798)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=9.805414)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=3.699706)
m.x40 = Var(within=Reals,bounds=(None,None),initialize=0.033)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=6)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=3.3)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=0.0296)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=0.2)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=0.7336)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=0.3574)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=0.0744)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=0.1652)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0.1395)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=1.7123)
m.x51 = Var(within=Reals,bounds=(None,None),initialize=0.15)
m.x52 = Var(within=Reals,bounds=(None,None),initialize=0.649156)
m.x53 = Var(within=Reals,bounds=(None,None),initialize=-0.356673)
m.x54 = Var(within=Reals,bounds=(None,None),initialize=-0.4062)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=2.163857)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=5.573815)
m.x57 = Var(within=Reals,bounds=(None,None),initialize=9.805414)
m.x58 = Var(within=Reals,bounds=(None,None),initialize=10.896741)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=18.4364105)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=21.1551365)
m.x61 = Var(within=Reals,bounds=(None,None),initialize=9.78976)
m.x62 = Var(within=Reals,bounds=(None,None),initialize=3.673953)
m.x63 = Var(within=Reals,bounds=(None,None),initialize=9.6863185)
m.x64 = Var(within=Reals,bounds=(None,None),initialize=1.3701)
m.x65 = Var(within=Reals,bounds=(None,None),initialize=1.9123)
m.x66 = Var(within=Reals,bounds=(None,None),initialize=2.398969)
m.x67 = Var(within=Reals,bounds=(None,None),initialize=5.5690645)
m.x68 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x69 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x70 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x73 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x74 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x77 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x78 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x79 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x81 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x90 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x91 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x106 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x108 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x109 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x110 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x111 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x112 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x113 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x114 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x115 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x116 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x117 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x118 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x119 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x120 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x121 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x122 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x123 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x124 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x125 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x126 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x127 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x128 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x129 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x130 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x131 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x132 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x133 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x134 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x135 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x136 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x137 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x138 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x139 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x140 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x141 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x142 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x143 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x144 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x145 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x146 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x147 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x148 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x149 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x150 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x151 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x152 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x153 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x154 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x155 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x156 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x157 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x158 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x159 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x160 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x161 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x162 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x163 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x164 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x165 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x166 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x167 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x168 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x169 = Var(within=Reals,bounds=(0,1),initialize=0.142857142857143)
m.x170 = Var(within=Reals,bounds=(0,1),initialize=0.00617283950617284)
m.x171 = Var(within=Reals,bounds=(0,1),initialize=0.197530864197531)
m.x172 = Var(within=Reals,bounds=(0,1),initialize=0.592592592592593)
m.x173 = Var(within=Reals,bounds=(0,1),initialize=0.197530864197531)
m.x174 = Var(within=Reals,bounds=(0,1),initialize=0.00617283950617284)
m.x175 = Var(within=Reals,bounds=(0,1),initialize=0.00617283950617284)
m.x176 = Var(within=Reals,bounds=(0,1),initialize=0.197530864197531)
m.x177 = Var(within=Reals,bounds=(0,1),initialize=0.592592592592593)
m.x178 = Var(within=Reals,bounds=(0,1),initialize=0.197530864197531)
m.x179 = Var(within=Reals,bounds=(0,1),initialize=0.00617283950617284)
m.x180 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x181 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x182 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x183 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x184 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x185 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x186 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x187 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x188 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x189 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x190 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x191 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x192 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x193 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x194 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x195 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x196 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x197 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x198 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x199 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x200 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x201 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x202 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x203 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x204 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x205 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x206 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x207 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x208 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x209 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x210 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x211 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x212 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x213 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x214 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x215 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x216 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x217 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x218 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x219 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x220 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x221 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x222 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x223 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x224 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x225 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x226 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x227 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x228 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x229 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x230 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x231 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x232 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x233 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x234 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x235 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x236 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x237 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x238 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x239 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x240 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x241 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x242 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x243 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x244 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x245 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x246 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x247 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x248 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x249 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x250 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x251 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x252 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x253 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x254 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x255 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x256 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x257 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x258 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x259 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x260 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x261 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)
m.x262 = Var(within=Reals,bounds=(0,1),initialize=0.888888888888889)
m.x263 = Var(within=Reals,bounds=(0,1),initialize=0.0555555555555556)

m.obj = Objective(expr=Centropy(m.x180,0.0555555555555556) + Centropy(m.x181,0.888888888888889) + Centropy(m.x182,
                       0.0555555555555556) + Centropy(m.x183,0.0555555555555556) + Centropy(m.x184,0.888888888888889) + 
                       Centropy(m.x185,0.0555555555555556) + Centropy(m.x186,0.0555555555555556) + Centropy(m.x187,
                       0.888888888888889) + Centropy(m.x188,0.0555555555555556) + Centropy(m.x189,0.0555555555555556) + 
                       Centropy(m.x190,0.888888888888889) + Centropy(m.x191,0.0555555555555556) + Centropy(m.x192,
                       0.0555555555555556) + Centropy(m.x193,0.888888888888889) + Centropy(m.x194,0.0555555555555556) + 
                       Centropy(m.x195,0.0555555555555556) + Centropy(m.x196,0.888888888888889) + Centropy(m.x197,
                       0.0555555555555556) + Centropy(m.x198,0.0555555555555556) + Centropy(m.x199,0.888888888888889) + 
                       Centropy(m.x200,0.0555555555555556) + Centropy(m.x201,0.0555555555555556) + Centropy(m.x202,
                       0.888888888888889) + Centropy(m.x203,0.0555555555555556) + Centropy(m.x204,0.0555555555555556) + 
                       Centropy(m.x205,0.888888888888889) + Centropy(m.x206,0.0555555555555556) + Centropy(m.x207,
                       0.0555555555555556) + Centropy(m.x208,0.888888888888889) + Centropy(m.x209,0.0555555555555556) + 
                       Centropy(m.x210,0.0555555555555556) + Centropy(m.x211,0.888888888888889) + Centropy(m.x212,
                       0.0555555555555556) + Centropy(m.x213,0.0555555555555556) + Centropy(m.x214,0.888888888888889) + 
                       Centropy(m.x215,0.0555555555555556) + Centropy(m.x216,0.0555555555555556) + Centropy(m.x217,
                       0.888888888888889) + Centropy(m.x218,0.0555555555555556) + Centropy(m.x219,0.0555555555555556) + 
                       Centropy(m.x220,0.888888888888889) + Centropy(m.x221,0.0555555555555556) + Centropy(m.x222,
                       0.0555555555555556) + Centropy(m.x223,0.888888888888889) + Centropy(m.x224,0.0555555555555556) + 
                       Centropy(m.x225,0.0555555555555556) + Centropy(m.x226,0.888888888888889) + Centropy(m.x227,
                       0.0555555555555556) + Centropy(m.x228,0.0555555555555556) + Centropy(m.x229,0.888888888888889) + 
                       Centropy(m.x230,0.0555555555555556) + Centropy(m.x231,0.0555555555555556) + Centropy(m.x232,
                       0.888888888888889) + Centropy(m.x233,0.0555555555555556) + Centropy(m.x234,0.0555555555555556) + 
                       Centropy(m.x235,0.888888888888889) + Centropy(m.x236,0.0555555555555556) + Centropy(m.x237,
                       0.0555555555555556) + Centropy(m.x238,0.888888888888889) + Centropy(m.x239,0.0555555555555556) + 
                       Centropy(m.x240,0.0555555555555556) + Centropy(m.x241,0.888888888888889) + Centropy(m.x242,
                       0.0555555555555556) + Centropy(m.x243,0.0555555555555556) + Centropy(m.x244,0.888888888888889) + 
                       Centropy(m.x245,0.0555555555555556) + Centropy(m.x246,0.0555555555555556) + Centropy(m.x247,
                       0.888888888888889) + Centropy(m.x248,0.0555555555555556) + Centropy(m.x249,0.0555555555555556) + 
                       Centropy(m.x250,0.888888888888889) + Centropy(m.x251,0.0555555555555556) + Centropy(m.x252,
                       0.0555555555555556) + Centropy(m.x253,0.888888888888889) + Centropy(m.x254,0.0555555555555556) + 
                       Centropy(m.x255,0.0555555555555556) + Centropy(m.x256,0.888888888888889) + Centropy(m.x257,
                       0.0555555555555556) + Centropy(m.x258,0.0555555555555556) + Centropy(m.x259,0.888888888888889) + 
                       Centropy(m.x260,0.0555555555555556) + Centropy(m.x261,0.0555555555555556) + Centropy(m.x262,
                       0.888888888888889) + Centropy(m.x263,0.0555555555555556) + Centropy(m.x107,0.142857142857143) + 
                       Centropy(m.x108,0.142857142857143) + Centropy(m.x109,0.142857142857143) + Centropy(m.x110,
                       0.142857142857143) + Centropy(m.x111,0.142857142857143) + Centropy(m.x112,0.142857142857143) + 
                       Centropy(m.x113,0.142857142857143) + Centropy(m.x114,0.142857142857143) + Centropy(m.x115,
                       0.142857142857143) + Centropy(m.x116,0.142857142857143) + Centropy(m.x117,0.142857142857143) + 
                       Centropy(m.x118,0.142857142857143) + Centropy(m.x119,0.142857142857143) + Centropy(m.x120,
                       0.142857142857143) + Centropy(m.x121,0.142857142857143) + Centropy(m.x122,0.142857142857143) + 
                       Centropy(m.x123,0.142857142857143) + Centropy(m.x124,0.142857142857143) + Centropy(m.x125,
                       0.142857142857143) + Centropy(m.x126,0.142857142857143) + Centropy(m.x127,0.142857142857143) + 
                       Centropy(m.x128,0.142857142857143) + Centropy(m.x129,0.142857142857143) + Centropy(m.x130,
                       0.142857142857143) + Centropy(m.x131,0.142857142857143) + Centropy(m.x132,0.142857142857143) + 
                       Centropy(m.x133,0.142857142857143) + Centropy(m.x134,0.142857142857143) + Centropy(m.x135,
                       0.142857142857143) + Centropy(m.x136,0.142857142857143) + Centropy(m.x137,0.142857142857143) + 
                       Centropy(m.x138,0.142857142857143) + Centropy(m.x139,0.142857142857143) + Centropy(m.x140,
                       0.142857142857143) + Centropy(m.x141,0.142857142857143) + Centropy(m.x142,0.142857142857143) + 
                       Centropy(m.x143,0.142857142857143) + Centropy(m.x144,0.142857142857143) + Centropy(m.x145,
                       0.142857142857143) + Centropy(m.x146,0.142857142857143) + Centropy(m.x147,0.142857142857143) + 
                       Centropy(m.x148,0.142857142857143) + Centropy(m.x149,0.142857142857143) + Centropy(m.x150,
                       0.142857142857143) + Centropy(m.x151,0.142857142857143) + Centropy(m.x152,0.142857142857143) + 
                       Centropy(m.x153,0.142857142857143) + Centropy(m.x154,0.142857142857143) + Centropy(m.x155,
                       0.142857142857143) + Centropy(m.x156,0.142857142857143) + Centropy(m.x157,0.142857142857143) + 
                       Centropy(m.x158,0.142857142857143) + Centropy(m.x159,0.142857142857143) + Centropy(m.x160,
                       0.142857142857143) + Centropy(m.x161,0.142857142857143) + Centropy(m.x162,0.142857142857143) + 
                       Centropy(m.x163,0.142857142857143) + Centropy(m.x164,0.142857142857143) + Centropy(m.x165,
                       0.142857142857143) + Centropy(m.x166,0.142857142857143) + Centropy(m.x167,0.142857142857143) + 
                       Centropy(m.x168,0.142857142857143) + Centropy(m.x169,0.142857142857143) + Centropy(m.x170,
                       0.00617283950617284) + Centropy(m.x171,0.197530864197531) + Centropy(m.x172,0.592592592592593) + 
                       Centropy(m.x173,0.197530864197531) + Centropy(m.x174,0.00617283950617284) + Centropy(m.x175,
                       0.00617283950617284) + Centropy(m.x176,0.197530864197531) + Centropy(m.x177,0.592592592592593) + 
                       Centropy(m.x178,0.197530864197531) + Centropy(m.x179,0.00617283950617284), sense=minimize)

m.c1 = Constraint(expr=   m.x59 - m.x68 == 18.4364105)

m.c2 = Constraint(expr=   m.x60 - m.x69 == 21.1551365)

m.c3 = Constraint(expr=   m.x61 - m.x70 == 9.78976)

m.c4 = Constraint(expr=   m.x62 - m.x71 == 3.673953)

m.c5 = Constraint(expr=   m.x63 - m.x72 == 9.6863185)

m.c6 = Constraint(expr=   m.x64 - m.x73 == 1.3701)

m.c7 = Constraint(expr=   m.x65 - m.x74 == 1.9123)

m.c8 = Constraint(expr=   m.x66 - m.x75 == 2.398969)

m.c9 = Constraint(expr=   m.x67 - m.x76 == 5.5690645)

m.c10 = Constraint(expr=   m.x29 + m.x30 + m.x31 + m.x32 - m.x59 == 0)

m.c11 = Constraint(expr=   m.x33 + m.x34 + m.x35 + m.x36 + m.x37 - m.x60 == 0)

m.c12 = Constraint(expr=   m.x38 - m.x61 == 0)

m.c13 = Constraint(expr=   m.x39 + m.x40 - m.x62 == 0)

m.c14 = Constraint(expr=   m.x41 + m.x42 + m.x43 + m.x44 - m.x63 == 0)

m.c15 = Constraint(expr=   m.x45 + m.x46 + m.x47 + m.x48 + m.x49 - m.x64 == 0)

m.c16 = Constraint(expr=   m.x50 - m.x65 == 0)

m.c17 = Constraint(expr=   m.x51 + m.x52 + m.x53 + m.x54 + m.x55 - m.x66 == 0)

m.c18 = Constraint(expr=   m.x56 - m.x67 == 0)

m.c19 = Constraint(expr=   m.x33 + m.x38 + m.x45 - m.x59 == 0)

m.c20 = Constraint(expr=   m.x29 + m.x46 + m.x56 - m.x60 == 0)

m.c21 = Constraint(expr=   m.x39 + m.x41 + m.x47 - m.x61 == 0)

m.c22 = Constraint(expr=   m.x42 + m.x48 + m.x51 - m.x62 == 0)

m.c23 = Constraint(expr=   m.x30 + m.x34 + m.x49 + m.x52 - m.x63 == 0)

m.c24 = Constraint(expr=   m.x31 + m.x35 + m.x40 + m.x43 + m.x53 - m.x64 == 0)

m.c25 = Constraint(expr=   m.x36 + m.x54 - m.x65 == 0)

m.c26 = Constraint(expr=   m.x37 - m.x66 == 0)

m.c27 = Constraint(expr=   m.x32 + m.x44 + m.x50 + m.x55 - m.x67 == 0)

m.c28 = Constraint(expr=-m.x1*m.x60 + m.x29 == 0)

m.c29 = Constraint(expr=-m.x2*m.x63 + m.x30 == 0)

m.c30 = Constraint(expr=-m.x3*m.x64 + m.x31 == 0)

m.c31 = Constraint(expr=-m.x4*m.x67 + m.x32 == 0)

m.c32 = Constraint(expr=-m.x5*m.x59 + m.x33 == 0)

m.c33 = Constraint(expr=-m.x6*m.x63 + m.x34 == 0)

m.c34 = Constraint(expr=-m.x7*m.x64 + m.x35 == 0)

m.c35 = Constraint(expr=-m.x8*m.x65 + m.x36 == 0)

m.c36 = Constraint(expr=-m.x9*m.x66 + m.x37 == 0)

m.c37 = Constraint(expr=-m.x10*m.x59 + m.x38 == 0)

m.c38 = Constraint(expr=-m.x11*m.x61 + m.x39 == 0)

m.c39 = Constraint(expr=-m.x12*m.x64 + m.x40 == 0)

m.c40 = Constraint(expr=-m.x13*m.x61 + m.x41 == 0)

m.c41 = Constraint(expr=-m.x14*m.x62 + m.x42 == 0)

m.c42 = Constraint(expr=-m.x15*m.x64 + m.x43 == 0)

m.c43 = Constraint(expr=-m.x16*m.x67 + m.x44 == 0)

m.c44 = Constraint(expr=-m.x17*m.x59 + m.x45 == 0)

m.c45 = Constraint(expr=-m.x18*m.x60 + m.x46 == 0)

m.c46 = Constraint(expr=-m.x19*m.x61 + m.x47 == 0)

m.c47 = Constraint(expr=-m.x20*m.x62 + m.x48 == 0)

m.c48 = Constraint(expr=-m.x21*m.x63 + m.x49 == 0)

m.c49 = Constraint(expr=-m.x22*m.x67 + m.x50 == 0)

m.c50 = Constraint(expr=-m.x23*m.x62 + m.x51 == 0)

m.c51 = Constraint(expr=-m.x24*m.x63 + m.x52 == 0)

m.c52 = Constraint(expr=-m.x25*m.x64 + m.x53 == 0)

m.c53 = Constraint(expr=-m.x26*m.x65 + m.x54 == 0)

m.c54 = Constraint(expr=-m.x27*m.x67 + m.x55 == 0)

m.c55 = Constraint(expr=-m.x28*m.x60 + m.x56 == 0)

m.c56 = Constraint(expr=   m.x29 - m.x79 == 14.827424)

m.c57 = Constraint(expr=   m.x31 - m.x81 == -0.000327)

m.c58 = Constraint(expr=   m.x32 - m.x82 == 1.488157)

m.c59 = Constraint(expr=   m.x35 - m.x85 == 1.5645)

m.c60 = Constraint(expr=   m.x36 - m.x86 == 2.5185)

m.c61 = Constraint(expr=   m.x37 - m.x87 == 2.597798)

m.c62 = Constraint(expr=   m.x40 - m.x90 == 0.033)

m.c63 = Constraint(expr=   m.x43 - m.x93 == 0.0296)

m.c64 = Constraint(expr=   m.x44 - m.x94 == 0.2)

m.c65 = Constraint(expr=   m.x46 - m.x96 == 0.3574)

m.c66 = Constraint(expr=   m.x50 - m.x100 == 1.7123)

m.c67 = Constraint(expr=   m.x53 - m.x103 == -0.356673)

m.c68 = Constraint(expr=   m.x54 - m.x104 == -0.4062)

m.c69 = Constraint(expr=   m.x55 - m.x105 == 2.163857)

m.c70 = Constraint(expr=   m.x56 - m.x106 == 5.573815)

m.c71 = Constraint(expr=-0.213455359357076*exp(m.x80) + m.x2 == 0)

m.c72 = Constraint(expr=-0.428981457932639*exp(m.x83) + m.x5 == 0)

m.c73 = Constraint(expr=-0.706421402256235*exp(m.x84) + m.x6 == 0)

m.c74 = Constraint(expr=-0.531271066405917*exp(m.x88) + m.x10 == 0)

m.c75 = Constraint(expr=-0.37852116602787*exp(m.x89) + m.x11 == 0)

m.c76 = Constraint(expr=-0.613866884603052*exp(m.x91) + m.x13 == 0)

m.c77 = Constraint(expr=-0.912812569152467*exp(m.x92) + m.x14 == 0)

m.c78 = Constraint(expr=-0.0397474756614438*exp(m.x95) + m.x17 == 0)

m.c79 = Constraint(expr=-0.00761194936907785*exp(m.x97) + m.x19 == 0)

m.c80 = Constraint(expr=-0.0456959504315114*exp(m.x98) + m.x20 == 0)

m.c81 = Constraint(expr=-0.0141724551070975*exp(m.x99) + m.x21 == 0)

m.c82 = Constraint(expr=-0.0414914804160212*exp(m.x101) + m.x23 == 0)

m.c83 = Constraint(expr=-0.0659507832795914*exp(m.x102) + m.x24 == 0)

m.c84 = Constraint(expr= - m.x38 + m.x57 == 0)

m.c85 = Constraint(expr=   m.x31 - m.x38 - m.x45 - m.x46 + m.x58 == 0)

m.c86 = Constraint(expr=   m.x57 - m.x77 == 9.805414)

m.c87 = Constraint(expr=   m.x58 - m.x78 == 10.896741)

m.c88 = Constraint(expr=   m.x68 + 2.765461575*m.x107 + 1.84364105*m.x108 + 0.921820525*m.x109 - 0.921820525*m.x111
                         - 1.84364105*m.x112 - 2.765461575*m.x113 == 0)

m.c89 = Constraint(expr=   m.x69 + 3.173270475*m.x114 + 2.11551365*m.x115 + 1.057756825*m.x116 - 1.057756825*m.x118
                         - 2.11551365*m.x119 - 3.173270475*m.x120 == 0)

m.c90 = Constraint(expr=   m.x70 + 1.468464*m.x121 + 0.978976*m.x122 + 0.489488*m.x123 - 0.489488*m.x125
                         - 0.978976*m.x126 - 1.468464*m.x127 == 0)

m.c91 = Constraint(expr=   m.x71 + 0.55109295*m.x128 + 0.3673953*m.x129 + 0.18369765*m.x130 - 0.18369765*m.x132
                         - 0.3673953*m.x133 - 0.55109295*m.x134 == 0)

m.c92 = Constraint(expr=   m.x72 + 1.452947775*m.x135 + 0.96863185*m.x136 + 0.484315925*m.x137 - 0.484315925*m.x139
                         - 0.96863185*m.x140 - 1.452947775*m.x141 == 0)

m.c93 = Constraint(expr=   m.x73 + 0.205515*m.x142 + 0.13701*m.x143 + 0.068505*m.x144 - 0.068505*m.x146 - 0.13701*m.x147
                         - 0.205515*m.x148 == 0)

m.c94 = Constraint(expr=   m.x74 + 0.286845*m.x149 + 0.19123*m.x150 + 0.095615*m.x151 - 0.095615*m.x153 - 0.19123*m.x154
                         - 0.286845*m.x155 == 0)

m.c95 = Constraint(expr=   m.x75 + 0.35984535*m.x156 + 0.2398969*m.x157 + 0.11994845*m.x158 - 0.11994845*m.x160
                         - 0.2398969*m.x161 - 0.35984535*m.x162 == 0)

m.c96 = Constraint(expr=   m.x76 + 0.835359675*m.x163 + 0.55690645*m.x164 + 0.278453225*m.x165 - 0.278453225*m.x167
                         - 0.55690645*m.x168 - 0.835359675*m.x169 == 0)

m.c97 = Constraint(expr=   m.x77 + 1.4708121*m.x170 + 0.73540605*m.x171 - 0.73540605*m.x173 - 1.4708121*m.x174 == 0)

m.c98 = Constraint(expr=   m.x78 + 1.63451115*m.x175 + 0.817255575*m.x176 - 0.817255575*m.x178 - 1.63451115*m.x179 == 0)

m.c99 = Constraint(expr=   m.x79 + 11.120568*m.x180 - 11.120568*m.x182 == 0)

m.c100 = Constraint(expr=   m.x80 + 0.75*m.x183 - 0.75*m.x185 == 0)

m.c101 = Constraint(expr=   m.x81 + 0.00024525*m.x186 - 0.00024525*m.x188 == 0)

m.c102 = Constraint(expr=   m.x82 + 1.11611775*m.x189 - 1.11611775*m.x191 == 0)

m.c103 = Constraint(expr=   m.x83 + 0.75*m.x192 - 0.75*m.x194 == 0)

m.c104 = Constraint(expr=   m.x84 + 0.75*m.x195 - 0.75*m.x197 == 0)

m.c105 = Constraint(expr=   m.x85 + 1.173375*m.x198 - 1.173375*m.x200 == 0)

m.c106 = Constraint(expr=   m.x86 + 1.888875*m.x201 - 1.888875*m.x203 == 0)

m.c107 = Constraint(expr=   m.x87 + 1.9483485*m.x204 - 1.9483485*m.x206 == 0)

m.c108 = Constraint(expr=   m.x88 + 0.75*m.x207 - 0.75*m.x209 == 0)

m.c109 = Constraint(expr=   m.x89 + 0.75*m.x210 - 0.75*m.x212 == 0)

m.c110 = Constraint(expr=   m.x90 + 0.02475*m.x213 - 0.02475*m.x215 == 0)

m.c111 = Constraint(expr=   m.x91 + 0.75*m.x216 - 0.75*m.x218 == 0)

m.c112 = Constraint(expr=   m.x92 + 0.75*m.x219 - 0.75*m.x221 == 0)

m.c113 = Constraint(expr=   m.x93 + 0.0222*m.x222 - 0.0222*m.x224 == 0)

m.c114 = Constraint(expr=   m.x94 + 0.15*m.x225 - 0.15*m.x227 == 0)

m.c115 = Constraint(expr=   m.x95 + 0.75*m.x228 - 0.75*m.x230 == 0)

m.c116 = Constraint(expr=   m.x96 + 0.26805*m.x231 - 0.26805*m.x233 == 0)

m.c117 = Constraint(expr=   m.x97 + 0.75*m.x234 - 0.75*m.x236 == 0)

m.c118 = Constraint(expr=   m.x98 + 0.75*m.x237 - 0.75*m.x239 == 0)

m.c119 = Constraint(expr=   m.x99 + 0.75*m.x240 - 0.75*m.x242 == 0)

m.c120 = Constraint(expr=   m.x100 + 1.284225*m.x243 - 1.284225*m.x245 == 0)

m.c121 = Constraint(expr=   m.x101 + 0.75*m.x246 - 0.75*m.x248 == 0)

m.c122 = Constraint(expr=   m.x102 + 0.75*m.x249 - 0.75*m.x251 == 0)

m.c123 = Constraint(expr=   m.x103 + 0.26750475*m.x252 - 0.26750475*m.x254 == 0)

m.c124 = Constraint(expr=   m.x104 + 0.30465*m.x255 - 0.30465*m.x257 == 0)

m.c125 = Constraint(expr=   m.x105 + 1.62289275*m.x258 - 1.62289275*m.x260 == 0)

m.c126 = Constraint(expr=   m.x106 + 4.18036125*m.x261 - 4.18036125*m.x263 == 0)

m.c127 = Constraint(expr=   m.x107 + m.x108 + m.x109 + m.x110 + m.x111 + m.x112 + m.x113 == 1)

m.c128 = Constraint(expr=   m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119 + m.x120 == 1)

m.c129 = Constraint(expr=   m.x121 + m.x122 + m.x123 + m.x124 + m.x125 + m.x126 + m.x127 == 1)

m.c130 = Constraint(expr=   m.x128 + m.x129 + m.x130 + m.x131 + m.x132 + m.x133 + m.x134 == 1)

m.c131 = Constraint(expr=   m.x135 + m.x136 + m.x137 + m.x138 + m.x139 + m.x140 + m.x141 == 1)

m.c132 = Constraint(expr=   m.x142 + m.x143 + m.x144 + m.x145 + m.x146 + m.x147 + m.x148 == 1)

m.c133 = Constraint(expr=   m.x149 + m.x150 + m.x151 + m.x152 + m.x153 + m.x154 + m.x155 == 1)

m.c134 = Constraint(expr=   m.x156 + m.x157 + m.x158 + m.x159 + m.x160 + m.x161 + m.x162 == 1)

m.c135 = Constraint(expr=   m.x163 + m.x164 + m.x165 + m.x166 + m.x167 + m.x168 + m.x169 == 1)

m.c136 = Constraint(expr=   m.x170 + m.x171 + m.x172 + m.x173 + m.x174 == 1)

m.c137 = Constraint(expr=   m.x175 + m.x176 + m.x177 + m.x178 + m.x179 == 1)

m.c138 = Constraint(expr=   m.x180 + m.x181 + m.x182 == 1)

m.c139 = Constraint(expr=   m.x183 + m.x184 + m.x185 == 1)

m.c140 = Constraint(expr=   m.x186 + m.x187 + m.x188 == 1)

m.c141 = Constraint(expr=   m.x189 + m.x190 + m.x191 == 1)

m.c142 = Constraint(expr=   m.x192 + m.x193 + m.x194 == 1)

m.c143 = Constraint(expr=   m.x195 + m.x196 + m.x197 == 1)

m.c144 = Constraint(expr=   m.x198 + m.x199 + m.x200 == 1)

m.c145 = Constraint(expr=   m.x201 + m.x202 + m.x203 == 1)

m.c146 = Constraint(expr=   m.x204 + m.x205 + m.x206 == 1)

m.c147 = Constraint(expr=   m.x207 + m.x208 + m.x209 == 1)

m.c148 = Constraint(expr=   m.x210 + m.x211 + m.x212 == 1)

m.c149 = Constraint(expr=   m.x213 + m.x214 + m.x215 == 1)

m.c150 = Constraint(expr=   m.x216 + m.x217 + m.x218 == 1)

m.c151 = Constraint(expr=   m.x219 + m.x220 + m.x221 == 1)

m.c152 = Constraint(expr=   m.x222 + m.x223 + m.x224 == 1)

m.c153 = Constraint(expr=   m.x225 + m.x226 + m.x227 == 1)

m.c154 = Constraint(expr=   m.x228 + m.x229 + m.x230 == 1)

m.c155 = Constraint(expr=   m.x231 + m.x232 + m.x233 == 1)

m.c156 = Constraint(expr=   m.x234 + m.x235 + m.x236 == 1)

m.c157 = Constraint(expr=   m.x237 + m.x238 + m.x239 == 1)

m.c158 = Constraint(expr=   m.x240 + m.x241 + m.x242 == 1)

m.c159 = Constraint(expr=   m.x243 + m.x244 + m.x245 == 1)

m.c160 = Constraint(expr=   m.x246 + m.x247 + m.x248 == 1)

m.c161 = Constraint(expr=   m.x249 + m.x250 + m.x251 == 1)

m.c162 = Constraint(expr=   m.x252 + m.x253 + m.x254 == 1)

m.c163 = Constraint(expr=   m.x255 + m.x256 + m.x257 == 1)

m.c164 = Constraint(expr=   m.x258 + m.x259 + m.x260 == 1)

m.c165 = Constraint(expr=   m.x261 + m.x262 + m.x263 == 1)
