#  NLP written by GAMS Convert at 10/11/20 14:05:18
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0.714277270296959)
@variable(m, x2, start=0.213455359357076)
@variable(m, x3, start=-0.000257460042516337)
@variable(m, x4, start=0.267446625046681)
@variable(m, x5, start=0.428981457932639)
@variable(m, x6, start=0.706421402256235)
@variable(m, x7, start=1.23179277222266)
@variable(m, x8, start=1.1923022297969)
@variable(m, x9, start=1)
@variable(m, x10, start=0.531271066405917)
@variable(m, x11, start=0.37852116602787)
@variable(m, x12, start=0.0259822061255019)
@variable(m, x13, start=0.613866884603052)
@variable(m, x14, start=0.912812569152467)
@variable(m, x15, start=0.0233052515549957)
@variable(m, x16, start=0.0359433346141142)
@variable(m, x17, start=0.0397474756614438)
@variable(m, x18, start=0.0172169283352343)
@variable(m, x19, start=0.00761194936907785)
@variable(m, x20, start=0.0456959504315114)
@variable(m, x21, start=0.0141724551070975)
@variable(m, x22, start=0.307728859298738)
@variable(m, x23, start=0.0414914804160212)
@variable(m, x24, start=0.0659507832795914)
@variable(m, x25, start=-0.280822769860641)
@variable(m, x26, start=-0.192302229796904)
@variable(m, x27, start=0.388881181040466)
@variable(m, x28, start=0.268505801367806)
@variable(m, x29, start=14.827424)
@variable(m, x30, start=2.101049)
@variable(m, x31, start=-0.000327)
@variable(m, x32, start=1.488157)
@variable(m, x33, start=7.917504)
@variable(m, x34, start=6.953332)
@variable(m, x35, start=1.5645)
@variable(m, x36, start=2.5185)
@variable(m, x37, start=2.597798)
@variable(m, x38, start=9.805414)
@variable(m, x39, start=3.699706)
@variable(m, x40, start=0.033)
@variable(m, x41, start=6)
@variable(m, x42, start=3.3)
@variable(m, x43, start=0.0296)
@variable(m, x44, start=0.2)
@variable(m, x45, start=0.7336)
@variable(m, x46, start=0.3574)
@variable(m, x47, start=0.0744)
@variable(m, x48, start=0.1652)
@variable(m, x49, start=0.1395)
@variable(m, x50, start=1.7123)
@variable(m, x51, start=0.15)
@variable(m, x52, start=0.649156)
@variable(m, x53, start=-0.356673)
@variable(m, x54, start=-0.4062)
@variable(m, x55, start=2.163857)
@variable(m, x56, start=5.573815)
@variable(m, x57, start=9.805414)
@variable(m, x58, start=10.896741)
@variable(m, x59, start=18.4364105)
@variable(m, x60, start=21.1551365)
@variable(m, x61, start=9.78976)
@variable(m, x62, start=3.673953)
@variable(m, x63, start=9.6863185)
@variable(m, x64, start=1.3701)
@variable(m, x65, start=1.9123)
@variable(m, x66, start=2.398969)
@variable(m, x67, start=5.5690645)
@variable(m, x68, start=0)
@variable(m, x69, start=0)
@variable(m, x70, start=0)
@variable(m, x71, start=0)
@variable(m, x72, start=0)
@variable(m, x73, start=0)
@variable(m, x74, start=0)
@variable(m, x75, start=0)
@variable(m, x76, start=0)
@variable(m, x77, start=0)
@variable(m, x78, start=0)
@variable(m, x79, start=0)
@variable(m, x80, start=0)
@variable(m, x81, start=0)
@variable(m, x82, start=0)
@variable(m, x83, start=0)
@variable(m, x84, start=0)
@variable(m, x85, start=0)
@variable(m, x86, start=0)
@variable(m, x87, start=0)
@variable(m, x88, start=0)
@variable(m, x89, start=0)
@variable(m, x90, start=0)
@variable(m, x91, start=0)
@variable(m, x92, start=0)
@variable(m, x93, start=0)
@variable(m, x94, start=0)
@variable(m, x95, start=0)
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
@variable(m, x106, start=0)
@variable(m, 0 <= x107 <= 1, start=0.142857142857143)
@variable(m, 0 <= x108 <= 1, start=0.142857142857143)
@variable(m, 0 <= x109 <= 1, start=0.142857142857143)
@variable(m, 0 <= x110 <= 1, start=0.142857142857143)
@variable(m, 0 <= x111 <= 1, start=0.142857142857143)
@variable(m, 0 <= x112 <= 1, start=0.142857142857143)
@variable(m, 0 <= x113 <= 1, start=0.142857142857143)
@variable(m, 0 <= x114 <= 1, start=0.142857142857143)
@variable(m, 0 <= x115 <= 1, start=0.142857142857143)
@variable(m, 0 <= x116 <= 1, start=0.142857142857143)
@variable(m, 0 <= x117 <= 1, start=0.142857142857143)
@variable(m, 0 <= x118 <= 1, start=0.142857142857143)
@variable(m, 0 <= x119 <= 1, start=0.142857142857143)
@variable(m, 0 <= x120 <= 1, start=0.142857142857143)
@variable(m, 0 <= x121 <= 1, start=0.142857142857143)
@variable(m, 0 <= x122 <= 1, start=0.142857142857143)
@variable(m, 0 <= x123 <= 1, start=0.142857142857143)
@variable(m, 0 <= x124 <= 1, start=0.142857142857143)
@variable(m, 0 <= x125 <= 1, start=0.142857142857143)
@variable(m, 0 <= x126 <= 1, start=0.142857142857143)
@variable(m, 0 <= x127 <= 1, start=0.142857142857143)
@variable(m, 0 <= x128 <= 1, start=0.142857142857143)
@variable(m, 0 <= x129 <= 1, start=0.142857142857143)
@variable(m, 0 <= x130 <= 1, start=0.142857142857143)
@variable(m, 0 <= x131 <= 1, start=0.142857142857143)
@variable(m, 0 <= x132 <= 1, start=0.142857142857143)
@variable(m, 0 <= x133 <= 1, start=0.142857142857143)
@variable(m, 0 <= x134 <= 1, start=0.142857142857143)
@variable(m, 0 <= x135 <= 1, start=0.142857142857143)
@variable(m, 0 <= x136 <= 1, start=0.142857142857143)
@variable(m, 0 <= x137 <= 1, start=0.142857142857143)
@variable(m, 0 <= x138 <= 1, start=0.142857142857143)
@variable(m, 0 <= x139 <= 1, start=0.142857142857143)
@variable(m, 0 <= x140 <= 1, start=0.142857142857143)
@variable(m, 0 <= x141 <= 1, start=0.142857142857143)
@variable(m, 0 <= x142 <= 1, start=0.142857142857143)
@variable(m, 0 <= x143 <= 1, start=0.142857142857143)
@variable(m, 0 <= x144 <= 1, start=0.142857142857143)
@variable(m, 0 <= x145 <= 1, start=0.142857142857143)
@variable(m, 0 <= x146 <= 1, start=0.142857142857143)
@variable(m, 0 <= x147 <= 1, start=0.142857142857143)
@variable(m, 0 <= x148 <= 1, start=0.142857142857143)
@variable(m, 0 <= x149 <= 1, start=0.142857142857143)
@variable(m, 0 <= x150 <= 1, start=0.142857142857143)
@variable(m, 0 <= x151 <= 1, start=0.142857142857143)
@variable(m, 0 <= x152 <= 1, start=0.142857142857143)
@variable(m, 0 <= x153 <= 1, start=0.142857142857143)
@variable(m, 0 <= x154 <= 1, start=0.142857142857143)
@variable(m, 0 <= x155 <= 1, start=0.142857142857143)
@variable(m, 0 <= x156 <= 1, start=0.142857142857143)
@variable(m, 0 <= x157 <= 1, start=0.142857142857143)
@variable(m, 0 <= x158 <= 1, start=0.142857142857143)
@variable(m, 0 <= x159 <= 1, start=0.142857142857143)
@variable(m, 0 <= x160 <= 1, start=0.142857142857143)
@variable(m, 0 <= x161 <= 1, start=0.142857142857143)
@variable(m, 0 <= x162 <= 1, start=0.142857142857143)
@variable(m, 0 <= x163 <= 1, start=0.142857142857143)
@variable(m, 0 <= x164 <= 1, start=0.142857142857143)
@variable(m, 0 <= x165 <= 1, start=0.142857142857143)
@variable(m, 0 <= x166 <= 1, start=0.142857142857143)
@variable(m, 0 <= x167 <= 1, start=0.142857142857143)
@variable(m, 0 <= x168 <= 1, start=0.142857142857143)
@variable(m, 0 <= x169 <= 1, start=0.142857142857143)
@variable(m, 0 <= x170 <= 1, start=0.00617283950617284)
@variable(m, 0 <= x171 <= 1, start=0.197530864197531)
@variable(m, 0 <= x172 <= 1, start=0.592592592592593)
@variable(m, 0 <= x173 <= 1, start=0.197530864197531)
@variable(m, 0 <= x174 <= 1, start=0.00617283950617284)
@variable(m, 0 <= x175 <= 1, start=0.00617283950617284)
@variable(m, 0 <= x176 <= 1, start=0.197530864197531)
@variable(m, 0 <= x177 <= 1, start=0.592592592592593)
@variable(m, 0 <= x178 <= 1, start=0.197530864197531)
@variable(m, 0 <= x179 <= 1, start=0.00617283950617284)
@variable(m, 0 <= x180 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x181 <= 1, start=0.888888888888889)
@variable(m, 0 <= x182 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x183 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x184 <= 1, start=0.888888888888889)
@variable(m, 0 <= x185 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x186 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x187 <= 1, start=0.888888888888889)
@variable(m, 0 <= x188 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x189 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x190 <= 1, start=0.888888888888889)
@variable(m, 0 <= x191 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x192 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x193 <= 1, start=0.888888888888889)
@variable(m, 0 <= x194 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x195 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x196 <= 1, start=0.888888888888889)
@variable(m, 0 <= x197 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x198 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x199 <= 1, start=0.888888888888889)
@variable(m, 0 <= x200 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x201 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x202 <= 1, start=0.888888888888889)
@variable(m, 0 <= x203 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x204 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x205 <= 1, start=0.888888888888889)
@variable(m, 0 <= x206 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x207 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x208 <= 1, start=0.888888888888889)
@variable(m, 0 <= x209 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x210 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x211 <= 1, start=0.888888888888889)
@variable(m, 0 <= x212 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x213 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x214 <= 1, start=0.888888888888889)
@variable(m, 0 <= x215 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x216 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x217 <= 1, start=0.888888888888889)
@variable(m, 0 <= x218 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x219 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x220 <= 1, start=0.888888888888889)
@variable(m, 0 <= x221 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x222 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x223 <= 1, start=0.888888888888889)
@variable(m, 0 <= x224 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x225 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x226 <= 1, start=0.888888888888889)
@variable(m, 0 <= x227 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x228 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x229 <= 1, start=0.888888888888889)
@variable(m, 0 <= x230 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x231 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x232 <= 1, start=0.888888888888889)
@variable(m, 0 <= x233 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x234 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x235 <= 1, start=0.888888888888889)
@variable(m, 0 <= x236 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x237 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x238 <= 1, start=0.888888888888889)
@variable(m, 0 <= x239 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x240 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x241 <= 1, start=0.888888888888889)
@variable(m, 0 <= x242 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x243 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x244 <= 1, start=0.888888888888889)
@variable(m, 0 <= x245 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x246 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x247 <= 1, start=0.888888888888889)
@variable(m, 0 <= x248 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x249 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x250 <= 1, start=0.888888888888889)
@variable(m, 0 <= x251 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x252 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x253 <= 1, start=0.888888888888889)
@variable(m, 0 <= x254 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x255 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x256 <= 1, start=0.888888888888889)
@variable(m, 0 <= x257 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x258 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x259 <= 1, start=0.888888888888889)
@variable(m, 0 <= x260 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x261 <= 1, start=0.0555555555555556)
@variable(m, 0 <= x262 <= 1, start=0.888888888888889)
@variable(m, 0 <= x263 <= 1, start=0.0555555555555556)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(Centropy($(x180),0.0555555555555556) + Centropy($(x181),0.888888888888889) + 
    Centropy($(x182),0.0555555555555556) + Centropy($(x183),0.0555555555555556) + Centropy($(x184),0.888888888888889) + 
    Centropy($(x185),0.0555555555555556) + Centropy($(x186),0.0555555555555556) + Centropy($(x187),0.888888888888889) + 
    Centropy($(x188),0.0555555555555556) + Centropy($(x189),0.0555555555555556) + Centropy($(x190),0.888888888888889) + 
    Centropy($(x191),0.0555555555555556) + Centropy($(x192),0.0555555555555556) + Centropy($(x193),0.888888888888889) + 
    Centropy($(x194),0.0555555555555556) + Centropy($(x195),0.0555555555555556) + Centropy($(x196),0.888888888888889) + 
    Centropy($(x197),0.0555555555555556) + Centropy($(x198),0.0555555555555556) + Centropy($(x199),0.888888888888889) + 
    Centropy($(x200),0.0555555555555556) + Centropy($(x201),0.0555555555555556) + Centropy($(x202),0.888888888888889) + 
    Centropy($(x203),0.0555555555555556) + Centropy($(x204),0.0555555555555556) + Centropy($(x205),0.888888888888889) + 
    Centropy($(x206),0.0555555555555556) + Centropy($(x207),0.0555555555555556) + Centropy($(x208),0.888888888888889) + 
    Centropy($(x209),0.0555555555555556) + Centropy($(x210),0.0555555555555556) + Centropy($(x211),0.888888888888889) + 
    Centropy($(x212),0.0555555555555556) + Centropy($(x213),0.0555555555555556) + Centropy($(x214),0.888888888888889) + 
    Centropy($(x215),0.0555555555555556) + Centropy($(x216),0.0555555555555556) + Centropy($(x217),0.888888888888889) + 
    Centropy($(x218),0.0555555555555556) + Centropy($(x219),0.0555555555555556) + Centropy($(x220),0.888888888888889) + 
    Centropy($(x221),0.0555555555555556) + Centropy($(x222),0.0555555555555556) + Centropy($(x223),0.888888888888889) + 
    Centropy($(x224),0.0555555555555556) + Centropy($(x225),0.0555555555555556) + Centropy($(x226),0.888888888888889) + 
    Centropy($(x227),0.0555555555555556) + Centropy($(x228),0.0555555555555556) + Centropy($(x229),0.888888888888889) + 
    Centropy($(x230),0.0555555555555556) + Centropy($(x231),0.0555555555555556) + Centropy($(x232),0.888888888888889) + 
    Centropy($(x233),0.0555555555555556) + Centropy($(x234),0.0555555555555556) + Centropy($(x235),0.888888888888889) + 
    Centropy($(x236),0.0555555555555556) + Centropy($(x237),0.0555555555555556) + Centropy($(x238),0.888888888888889) + 
    Centropy($(x239),0.0555555555555556) + Centropy($(x240),0.0555555555555556) + Centropy($(x241),0.888888888888889) + 
    Centropy($(x242),0.0555555555555556) + Centropy($(x243),0.0555555555555556) + Centropy($(x244),0.888888888888889) + 
    Centropy($(x245),0.0555555555555556) + Centropy($(x246),0.0555555555555556) + Centropy($(x247),0.888888888888889) + 
    Centropy($(x248),0.0555555555555556) + Centropy($(x249),0.0555555555555556) + Centropy($(x250),0.888888888888889) + 
    Centropy($(x251),0.0555555555555556) + Centropy($(x252),0.0555555555555556) + Centropy($(x253),0.888888888888889) + 
    Centropy($(x254),0.0555555555555556) + Centropy($(x255),0.0555555555555556) + Centropy($(x256),0.888888888888889) + 
    Centropy($(x257),0.0555555555555556) + Centropy($(x258),0.0555555555555556) + Centropy($(x259),0.888888888888889) + 
    Centropy($(x260),0.0555555555555556) + Centropy($(x261),0.0555555555555556) + Centropy($(x262),0.888888888888889) + 
    Centropy($(x263),0.0555555555555556) + Centropy($(x107),0.142857142857143) + Centropy($(x108),0.142857142857143) + 
    Centropy($(x109),0.142857142857143) + Centropy($(x110),0.142857142857143) + Centropy($(x111),0.142857142857143) + 
    Centropy($(x112),0.142857142857143) + Centropy($(x113),0.142857142857143) + Centropy($(x114),0.142857142857143) + 
    Centropy($(x115),0.142857142857143) + Centropy($(x116),0.142857142857143) + Centropy($(x117),0.142857142857143) + 
    Centropy($(x118),0.142857142857143) + Centropy($(x119),0.142857142857143) + Centropy($(x120),0.142857142857143) + 
    Centropy($(x121),0.142857142857143) + Centropy($(x122),0.142857142857143) + Centropy($(x123),0.142857142857143) + 
    Centropy($(x124),0.142857142857143) + Centropy($(x125),0.142857142857143) + Centropy($(x126),0.142857142857143) + 
    Centropy($(x127),0.142857142857143) + Centropy($(x128),0.142857142857143) + Centropy($(x129),0.142857142857143) + 
    Centropy($(x130),0.142857142857143) + Centropy($(x131),0.142857142857143) + Centropy($(x132),0.142857142857143) + 
    Centropy($(x133),0.142857142857143) + Centropy($(x134),0.142857142857143) + Centropy($(x135),0.142857142857143) + 
    Centropy($(x136),0.142857142857143) + Centropy($(x137),0.142857142857143) + Centropy($(x138),0.142857142857143) + 
    Centropy($(x139),0.142857142857143) + Centropy($(x140),0.142857142857143) + Centropy($(x141),0.142857142857143) + 
    Centropy($(x142),0.142857142857143) + Centropy($(x143),0.142857142857143) + Centropy($(x144),0.142857142857143) + 
    Centropy($(x145),0.142857142857143) + Centropy($(x146),0.142857142857143) + Centropy($(x147),0.142857142857143) + 
    Centropy($(x148),0.142857142857143) + Centropy($(x149),0.142857142857143) + Centropy($(x150),0.142857142857143) + 
    Centropy($(x151),0.142857142857143) + Centropy($(x152),0.142857142857143) + Centropy($(x153),0.142857142857143) + 
    Centropy($(x154),0.142857142857143) + Centropy($(x155),0.142857142857143) + Centropy($(x156),0.142857142857143) + 
    Centropy($(x157),0.142857142857143) + Centropy($(x158),0.142857142857143) + Centropy($(x159),0.142857142857143) + 
    Centropy($(x160),0.142857142857143) + Centropy($(x161),0.142857142857143) + Centropy($(x162),0.142857142857143) + 
    Centropy($(x163),0.142857142857143) + Centropy($(x164),0.142857142857143) + Centropy($(x165),0.142857142857143) + 
    Centropy($(x166),0.142857142857143) + Centropy($(x167),0.142857142857143) + Centropy($(x168),0.142857142857143) + 
    Centropy($(x169),0.142857142857143) + Centropy($(x170),0.00617283950617284) + Centropy($(x171),0.197530864197531) + 
    Centropy($(x172),0.592592592592593) + Centropy($(x173),0.197530864197531) + Centropy($(x174),0.00617283950617284) + 
    Centropy($(x175),0.00617283950617284) + Centropy($(x176),0.197530864197531) + Centropy($(x177),0.592592592592593) + 
    Centropy($(x178),0.197530864197531) + Centropy($(x179),0.00617283950617284)))

@constraint(m, x59 - x68 == 18.4364105)

@constraint(m, x60 - x69 == 21.1551365)

@constraint(m, x61 - x70 == 9.78976)

@constraint(m, x62 - x71 == 3.673953)

@constraint(m, x63 - x72 == 9.6863185)

@constraint(m, x64 - x73 == 1.3701)

@constraint(m, x65 - x74 == 1.9123)

@constraint(m, x66 - x75 == 2.398969)

@constraint(m, x67 - x76 == 5.5690645)

@constraint(m, x29 + x30 + x31 + x32 - x59 == 0)

@constraint(m, x33 + x34 + x35 + x36 + x37 - x60 == 0)

@constraint(m, x38 - x61 == 0)

@constraint(m, x39 + x40 - x62 == 0)

@constraint(m, x41 + x42 + x43 + x44 - x63 == 0)

@constraint(m, x45 + x46 + x47 + x48 + x49 - x64 == 0)

@constraint(m, x50 - x65 == 0)

@constraint(m, x51 + x52 + x53 + x54 + x55 - x66 == 0)

@constraint(m, x56 - x67 == 0)

@constraint(m, x33 + x38 + x45 - x59 == 0)

@constraint(m, x29 + x46 + x56 - x60 == 0)

@constraint(m, x39 + x41 + x47 - x61 == 0)

@constraint(m, x42 + x48 + x51 - x62 == 0)

@constraint(m, x30 + x34 + x49 + x52 - x63 == 0)

@constraint(m, x31 + x35 + x40 + x43 + x53 - x64 == 0)

@constraint(m, x36 + x54 - x65 == 0)

@constraint(m, x37 - x66 == 0)

@constraint(m, x32 + x44 + x50 + x55 - x67 == 0)

JuMP.add_NL_constraint(m, :(-$(x1)*$(x60) + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-$(x2)*$(x63) + $(x30) == 0))

JuMP.add_NL_constraint(m, :(-$(x3)*$(x64) + $(x31) == 0))

JuMP.add_NL_constraint(m, :(-$(x4)*$(x67) + $(x32) == 0))

JuMP.add_NL_constraint(m, :(-$(x5)*$(x59) + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-$(x6)*$(x63) + $(x34) == 0))

JuMP.add_NL_constraint(m, :(-$(x7)*$(x64) + $(x35) == 0))

JuMP.add_NL_constraint(m, :(-$(x8)*$(x65) + $(x36) == 0))

JuMP.add_NL_constraint(m, :(-$(x9)*$(x66) + $(x37) == 0))

JuMP.add_NL_constraint(m, :(-$(x10)*$(x59) + $(x38) == 0))

JuMP.add_NL_constraint(m, :(-$(x11)*$(x61) + $(x39) == 0))

JuMP.add_NL_constraint(m, :(-$(x12)*$(x64) + $(x40) == 0))

JuMP.add_NL_constraint(m, :(-$(x13)*$(x61) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(-$(x14)*$(x62) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(-$(x15)*$(x64) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(-$(x16)*$(x67) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(-$(x17)*$(x59) + $(x45) == 0))

JuMP.add_NL_constraint(m, :(-$(x18)*$(x60) + $(x46) == 0))

JuMP.add_NL_constraint(m, :(-$(x19)*$(x61) + $(x47) == 0))

JuMP.add_NL_constraint(m, :(-$(x20)*$(x62) + $(x48) == 0))

JuMP.add_NL_constraint(m, :(-$(x21)*$(x63) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(-$(x22)*$(x67) + $(x50) == 0))

JuMP.add_NL_constraint(m, :(-$(x23)*$(x62) + $(x51) == 0))

JuMP.add_NL_constraint(m, :(-$(x24)*$(x63) + $(x52) == 0))

JuMP.add_NL_constraint(m, :(-$(x25)*$(x64) + $(x53) == 0))

JuMP.add_NL_constraint(m, :(-$(x26)*$(x65) + $(x54) == 0))

JuMP.add_NL_constraint(m, :(-$(x27)*$(x67) + $(x55) == 0))

JuMP.add_NL_constraint(m, :(-$(x28)*$(x60) + $(x56) == 0))

@constraint(m, x29 - x79 == 14.827424)

@constraint(m, x31 - x81 == -0.000327)

@constraint(m, x32 - x82 == 1.488157)

@constraint(m, x35 - x85 == 1.5645)

@constraint(m, x36 - x86 == 2.5185)

@constraint(m, x37 - x87 == 2.597798)

@constraint(m, x40 - x90 == 0.033)

@constraint(m, x43 - x93 == 0.0296)

@constraint(m, x44 - x94 == 0.2)

@constraint(m, x46 - x96 == 0.3574)

@constraint(m, x50 - x100 == 1.7123)

@constraint(m, x53 - x103 == -0.356673)

@constraint(m, x54 - x104 == -0.4062)

@constraint(m, x55 - x105 == 2.163857)

@constraint(m, x56 - x106 == 5.573815)

JuMP.add_NL_constraint(m, :(-0.213455359357076*exp($(x80)) + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-0.428981457932639*exp($(x83)) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.706421402256235*exp($(x84)) + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-0.531271066405917*exp($(x88)) + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-0.37852116602787*exp($(x89)) + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-0.613866884603052*exp($(x91)) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-0.912812569152467*exp($(x92)) + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-0.0397474756614438*exp($(x95)) + $(x17) == 0))

JuMP.add_NL_constraint(m, :(-0.00761194936907785*exp($(x97)) + $(x19) == 0))

JuMP.add_NL_constraint(m, :(-0.0456959504315114*exp($(x98)) + $(x20) == 0))

JuMP.add_NL_constraint(m, :(-0.0141724551070975*exp($(x99)) + $(x21) == 0))

JuMP.add_NL_constraint(m, :(-0.0414914804160212*exp($(x101)) + $(x23) == 0))

JuMP.add_NL_constraint(m, :(-0.0659507832795914*exp($(x102)) + $(x24) == 0))

@constraint(m,  - x38 + x57 == 0)

@constraint(m, x31 - x38 - x45 - x46 + x58 == 0)

@constraint(m, x57 - x77 == 9.805414)

@constraint(m, x58 - x78 == 10.896741)

@constraint(m, x68 + 2.765461575*x107 + 1.84364105*x108 + 0.921820525*x109 - 0.921820525*x111 - 1.84364105*x112
     - 2.765461575*x113 == 0)

@constraint(m, x69 + 3.173270475*x114 + 2.11551365*x115 + 1.057756825*x116 - 1.057756825*x118 - 2.11551365*x119
     - 3.173270475*x120 == 0)

@constraint(m, x70 + 1.468464*x121 + 0.978976*x122 + 0.489488*x123 - 0.489488*x125 - 0.978976*x126 - 1.468464*x127 == 0)

@constraint(m, x71 + 0.55109295*x128 + 0.3673953*x129 + 0.18369765*x130 - 0.18369765*x132 - 0.3673953*x133
     - 0.55109295*x134 == 0)

@constraint(m, x72 + 1.452947775*x135 + 0.96863185*x136 + 0.484315925*x137 - 0.484315925*x139 - 0.96863185*x140
     - 1.452947775*x141 == 0)

@constraint(m, x73 + 0.205515*x142 + 0.13701*x143 + 0.068505*x144 - 0.068505*x146 - 0.13701*x147 - 0.205515*x148 == 0)

@constraint(m, x74 + 0.286845*x149 + 0.19123*x150 + 0.095615*x151 - 0.095615*x153 - 0.19123*x154 - 0.286845*x155 == 0)

@constraint(m, x75 + 0.35984535*x156 + 0.2398969*x157 + 0.11994845*x158 - 0.11994845*x160 - 0.2398969*x161
     - 0.35984535*x162 == 0)

@constraint(m, x76 + 0.835359675*x163 + 0.55690645*x164 + 0.278453225*x165 - 0.278453225*x167 - 0.55690645*x168
     - 0.835359675*x169 == 0)

@constraint(m, x77 + 1.4708121*x170 + 0.73540605*x171 - 0.73540605*x173 - 1.4708121*x174 == 0)

@constraint(m, x78 + 1.63451115*x175 + 0.817255575*x176 - 0.817255575*x178 - 1.63451115*x179 == 0)

@constraint(m, x79 + 11.120568*x180 - 11.120568*x182 == 0)

@constraint(m, x80 + 0.75*x183 - 0.75*x185 == 0)

@constraint(m, x81 + 0.00024525*x186 - 0.00024525*x188 == 0)

@constraint(m, x82 + 1.11611775*x189 - 1.11611775*x191 == 0)

@constraint(m, x83 + 0.75*x192 - 0.75*x194 == 0)

@constraint(m, x84 + 0.75*x195 - 0.75*x197 == 0)

@constraint(m, x85 + 1.173375*x198 - 1.173375*x200 == 0)

@constraint(m, x86 + 1.888875*x201 - 1.888875*x203 == 0)

@constraint(m, x87 + 1.9483485*x204 - 1.9483485*x206 == 0)

@constraint(m, x88 + 0.75*x207 - 0.75*x209 == 0)

@constraint(m, x89 + 0.75*x210 - 0.75*x212 == 0)

@constraint(m, x90 + 0.02475*x213 - 0.02475*x215 == 0)

@constraint(m, x91 + 0.75*x216 - 0.75*x218 == 0)

@constraint(m, x92 + 0.75*x219 - 0.75*x221 == 0)

@constraint(m, x93 + 0.0222*x222 - 0.0222*x224 == 0)

@constraint(m, x94 + 0.15*x225 - 0.15*x227 == 0)

@constraint(m, x95 + 0.75*x228 - 0.75*x230 == 0)

@constraint(m, x96 + 0.26805*x231 - 0.26805*x233 == 0)

@constraint(m, x97 + 0.75*x234 - 0.75*x236 == 0)

@constraint(m, x98 + 0.75*x237 - 0.75*x239 == 0)

@constraint(m, x99 + 0.75*x240 - 0.75*x242 == 0)

@constraint(m, x100 + 1.284225*x243 - 1.284225*x245 == 0)

@constraint(m, x101 + 0.75*x246 - 0.75*x248 == 0)

@constraint(m, x102 + 0.75*x249 - 0.75*x251 == 0)

@constraint(m, x103 + 0.26750475*x252 - 0.26750475*x254 == 0)

@constraint(m, x104 + 0.30465*x255 - 0.30465*x257 == 0)

@constraint(m, x105 + 1.62289275*x258 - 1.62289275*x260 == 0)

@constraint(m, x106 + 4.18036125*x261 - 4.18036125*x263 == 0)

@constraint(m, x107 + x108 + x109 + x110 + x111 + x112 + x113 == 1)

@constraint(m, x114 + x115 + x116 + x117 + x118 + x119 + x120 == 1)

@constraint(m, x121 + x122 + x123 + x124 + x125 + x126 + x127 == 1)

@constraint(m, x128 + x129 + x130 + x131 + x132 + x133 + x134 == 1)

@constraint(m, x135 + x136 + x137 + x138 + x139 + x140 + x141 == 1)

@constraint(m, x142 + x143 + x144 + x145 + x146 + x147 + x148 == 1)

@constraint(m, x149 + x150 + x151 + x152 + x153 + x154 + x155 == 1)

@constraint(m, x156 + x157 + x158 + x159 + x160 + x161 + x162 == 1)

@constraint(m, x163 + x164 + x165 + x166 + x167 + x168 + x169 == 1)

@constraint(m, x170 + x171 + x172 + x173 + x174 == 1)

@constraint(m, x175 + x176 + x177 + x178 + x179 == 1)

@constraint(m, x180 + x181 + x182 == 1)

@constraint(m, x183 + x184 + x185 == 1)

@constraint(m, x186 + x187 + x188 == 1)

@constraint(m, x189 + x190 + x191 == 1)

@constraint(m, x192 + x193 + x194 == 1)

@constraint(m, x195 + x196 + x197 == 1)

@constraint(m, x198 + x199 + x200 == 1)

@constraint(m, x201 + x202 + x203 == 1)

@constraint(m, x204 + x205 + x206 == 1)

@constraint(m, x207 + x208 + x209 == 1)

@constraint(m, x210 + x211 + x212 == 1)

@constraint(m, x213 + x214 + x215 == 1)

@constraint(m, x216 + x217 + x218 == 1)

@constraint(m, x219 + x220 + x221 == 1)

@constraint(m, x222 + x223 + x224 == 1)

@constraint(m, x225 + x226 + x227 == 1)

@constraint(m, x228 + x229 + x230 == 1)

@constraint(m, x231 + x232 + x233 == 1)

@constraint(m, x234 + x235 + x236 == 1)

@constraint(m, x237 + x238 + x239 == 1)

@constraint(m, x240 + x241 + x242 == 1)

@constraint(m, x243 + x244 + x245 == 1)

@constraint(m, x246 + x247 + x248 == 1)

@constraint(m, x249 + x250 + x251 == 1)

@constraint(m, x252 + x253 + x254 == 1)

@constraint(m, x255 + x256 + x257 == 1)

@constraint(m, x258 + x259 + x260 == 1)

@constraint(m, x261 + x262 + x263 == 1)
