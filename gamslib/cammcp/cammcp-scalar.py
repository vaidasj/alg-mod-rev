#  MCP written by GAMS Convert at 12/13/18 10:30:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        243      243        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        280      280        0        0        0        0        0        0
#  FX     38       38        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1404      496      908        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x7 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x8 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x9 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x11 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x12 = Var(within=Reals,bounds=(0.01,None),initialize=0.11)
m.x13 = Var(within=Reals,bounds=(0.01,None),initialize=0.15678)
m.x14 = Var(within=Reals,bounds=(0.01,None),initialize=1.8657)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0.94825)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0.34317)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0.6245)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0.23247)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0.39377)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0.30109)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0.38199)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0.68764)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0.45074)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0.72417)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0.65125)
m.x27 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x28 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x29 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x30 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x31 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x32 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x33 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x34 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x35 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x36 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x37 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x38 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x39 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x40 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x41 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x42 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x43 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x44 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x45 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x46 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x47 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x48 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x49 = Var(within=Reals,bounds=(0.01,None),initialize=330.48)
m.x50 = Var(within=Reals,bounds=(0.01,None),initialize=131.45)
m.x51 = Var(within=Reals,bounds=(0.01,None),initialize=29.503)
m.x52 = Var(within=Reals,bounds=(0.01,None),initialize=72.024)
m.x53 = Var(within=Reals,bounds=(0.01,None),initialize=118.43)
m.x54 = Var(within=Reals,bounds=(0.01,None),initialize=284.38)
m.x55 = Var(within=Reals,bounds=(0.01,None),initialize=34.169)
m.x56 = Var(within=Reals,bounds=(0.01,None),initialize=10.298)
m.x57 = Var(within=Reals,bounds=(0.01,None),initialize=174.12)
m.x58 = Var(within=Reals,bounds=(0.01,None),initialize=615.79)
m.x59 = Var(within=Reals,bounds=(0.01,None),initialize=163.98)
m.x60 = Var(within=Reals,bounds=(0.01,None),initialize=328.347)
m.x61 = Var(within=Reals,bounds=(0.01,None),initialize=14.419)
m.x62 = Var(within=Reals,bounds=(0.01,None),initialize=7.189)
m.x63 = Var(within=Reals,bounds=(0.01,None),initialize=66.534)
m.x64 = Var(within=Reals,bounds=(0.01,None),initialize=149.628)
m.x65 = Var(within=Reals,bounds=(0.01,None),initialize=321.62)
m.x66 = Var(within=Reals,bounds=(0.01,None),initialize=73.284)
m.x67 = Var(within=Reals,bounds=(0.01,None),initialize=141.18)
m.x68 = Var(within=Reals,bounds=(0.01,None),initialize=174.12)
m.x69 = Var(within=Reals,bounds=(0.01,None),initialize=608.603)
m.x70 = Var(within=Reals,bounds=(0.01,None),initialize=163.98)
m.x71 = Var(within=Reals,bounds=(0.01,None),initialize=325.886)
m.x72 = Var(within=Reals,bounds=(0.01,None),initialize=6.38)
m.x73 = Var(within=Reals,bounds=(0.01,None),initialize=7.166)
m.x74 = Var(within=Reals,bounds=(0.01,None),initialize=48.573)
m.x75 = Var(within=Reals,bounds=(0.01,None),initialize=112.566)
m.x76 = Var(within=Reals,bounds=(0.01,None),initialize=183.05)
m.x77 = Var(within=Reals,bounds=(0.01,None),initialize=23.668)
m.x78 = Var(within=Reals,bounds=(0.01,None),initialize=6.46)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=174.12)
m.x80 = Var(within=Reals,bounds=(0.01,None),initialize=534.164)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=163.98)
m.x82 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x83 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x84 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x85 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x86 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x87 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x88 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x89 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x90 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x92 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x100 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x101 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x102 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x103 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x104 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x105 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x106 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x107 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x108 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x109 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x110 = Var(within=Reals,bounds=(0.01,None),initialize=1)
m.x111 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x112 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x113 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x114 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x115 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x116 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x117 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x118 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x119 = Var(within=Reals,bounds=(0.01,None),initialize=4.76190476190476)
m.x120 = Var(within=Reals,bounds=(0.01,None),initialize=4.594)
m.x121 = Var(within=Reals,bounds=(0.01,None),initialize=125.07)
m.x122 = Var(within=Reals,bounds=(0.01,None),initialize=22.337)
m.x123 = Var(within=Reals,bounds=(0.01,None),initialize=23.451)
m.x124 = Var(within=Reals,bounds=(0.01,None),initialize=5.864)
m.x125 = Var(within=Reals,bounds=(0.01,None),initialize=101.33)
m.x126 = Var(within=Reals,bounds=(0.01,None),initialize=10.501)
m.x127 = Var(within=Reals,bounds=(0.01,None),initialize=3.838)
m.x128 = Var(within=Reals,bounds=(0.01,None),initialize=81.626)
m.x129 = Var(within=Reals,bounds=(0.01,None),initialize=2.461)
m.x130 = Var(within=Reals,bounds=(0.01,None),initialize=8.039)
m.x131 = Var(within=Reals,bounds=(0.01,None),initialize=0.023)
m.x132 = Var(within=Reals,bounds=(0.01,None),initialize=17.961)
m.x133 = Var(within=Reals,bounds=(0.01,None),initialize=37.062)
m.x134 = Var(within=Reals,bounds=(0.01,None),initialize=138.57)
m.x135 = Var(within=Reals,bounds=(0.01,None),initialize=49.616)
m.x136 = Var(within=Reals,bounds=(0.01,None),initialize=134.72)
m.x137 = Var(within=Reals,bounds=(0.01,None),initialize=74.439)
m.x138 = Var(within=Reals,bounds=(0.01,None),initialize=1654.43)
m.x139 = Var(within=Reals,bounds=(0.01,None),initialize=162.89)
m.x140 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x141 = Var(within=Reals,bounds=(0.01,None),initialize=399.93)
m.x142 = Var(within=Reals,bounds=(0.01,None),initialize=45.508)
m.x143 = Var(within=Reals,bounds=(0.01,None),initialize=5.057)
m.x144 = Var(within=Reals,bounds=(0.01,None),initialize=7.662)
m.x145 = Var(within=Reals,bounds=(0.01,None),initialize=1.789)
m.x146 = Var(within=Reals,bounds=(0.01,None),initialize=0.597)
m.x147 = Var(within=Reals,bounds=(0.01,None),initialize=12.989)
m.x148 = Var(within=Reals,bounds=(0.01,None),initialize=9.434)
m.x149 = Var(within=Reals,bounds=(0.01,None),initialize=2.358)
m.x150 = Var(within=Reals,bounds=(0.01,None),initialize=28.344)
m.x151 = Var(within=Reals,bounds=(0.01,None),initialize=37.462)
m.x152 = Var(within=Reals,bounds=(0.01,None),initialize=12.488)
m.x153 = Var(within=Reals,bounds=(0.01,None),initialize=18.331)
m.x154 = Var(within=Reals,bounds=(0.01,None),initialize=16.553)
m.x155 = Var(within=Reals,bounds=(0.01,None),initialize=8.3)
m.x156 = Var(within=Reals,bounds=(0.01,None),initialize=1.458)
m.x157 = Var(within=Reals,bounds=(0.01,None),initialize=1.317)
m.x158 = Var(within=Reals,bounds=(0.01,None),initialize=0.66)
m.x159 = Var(within=Reals,bounds=(0.01,None),initialize=3.112)
m.x160 = Var(within=Reals,bounds=(0.01,None),initialize=2.82)
m.x161 = Var(within=Reals,bounds=(0.01,None),initialize=1.208)
m.x162 = Var(within=Reals,bounds=(0.01,None),initialize=22.584)
m.x163 = Var(within=Reals,bounds=(0.01,None),initialize=28.462)
m.x164 = Var(within=Reals,bounds=(0.01,None),initialize=7.116)
m.x165 = Var(within=Reals,bounds=(0.01,None),initialize=121.2)
m.x166 = Var(within=Reals,bounds=(0.01,None),initialize=125.8)
m.x167 = Var(within=Reals,bounds=(0.01,None),initialize=61.96)
m.x168 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x169 = Var(within=Reals,bounds=(0.01,None),initialize=83.029)
m.x170 = Var(within=Reals,bounds=(0.01,None),initialize=32.771)
m.x171 = Var(within=Reals,bounds=(0.01,None),initialize=57.47971844)
m.x172 = Var(within=Reals,bounds=(0.01,None),initialize=6.69933242)
m.x173 = Var(within=Reals,bounds=(0.01,None),initialize=6.16406112)
m.x174 = Var(within=Reals,bounds=(0.01,None),initialize=10.25861314)
m.x175 = Var(within=Reals,bounds=(0.01,None),initialize=8.8786498)
m.x176 = Var(within=Reals,bounds=(0.01,None),initialize=149.97201818)
m.x177 = Var(within=Reals,bounds=(0.01,None),initialize=73.29046951)
m.x178 = Var(within=Reals,bounds=(0.01,None),initialize=27.38808426)
m.x179 = Var(within=Reals,bounds=(0.01,None),initialize=32.19509814)
m.x180 = Var(within=Reals,bounds=(0.01,None),initialize=305.99108721)
m.x181 = Var(within=Reals,bounds=(0.01,None),initialize=6.60153107)
m.x182 = Var(within=Reals,bounds=(0,None),initialize=4.033)
m.x183 = Var(within=Reals,bounds=(0,None),initialize=3.509)
m.x184 = Var(within=Reals,bounds=(0,None),initialize=1.025)
m.x185 = Var(within=Reals,bounds=(0,None),initialize=3.19)
m.x186 = Var(within=Reals,bounds=(0,None),initialize=7.101)
m.x187 = Var(within=Reals,bounds=(0,None),initialize=3.494)
m.x188 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x189 = Var(within=Reals,bounds=(0,None),initialize=0.433)
m.x190 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x191 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x192 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x193 = Var(within=Reals,bounds=(0,None),initialize=6.71)
m.x194 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x195 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x196 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x197 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x198 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x199 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x200 = Var(within=Reals,bounds=(0,None),initialize=113.36)
m.x201 = Var(within=Reals,bounds=(0,None),initialize=138.13)
m.x202 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x203 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x204 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x205 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x206 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x207 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x208 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x209 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x210 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x211 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x212 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x213 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x214 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x215 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x216 = Var(within=Reals,bounds=(1045.29814071,1045.29814071),initialize=1045.29814071)
m.x217 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x218 = Var(within=Reals,bounds=(0,None),initialize=260.125712)
m.x219 = Var(within=Reals,bounds=(0,None),initialize=4.218511)
m.x220 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x221 = Var(within=Reals,bounds=(0,None),initialize=53.0774002)
m.x222 = Var(within=Reals,bounds=(0,None),initialize=133.6557002)
m.x223 = Var(within=Reals,bounds=(0,None),initialize=168.1526924)
m.x224 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x225 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x226 = Var(within=Reals,bounds=(0,None),initialize=3.79192)
m.x227 = Var(within=Reals,bounds=(0,None),initialize=302.6046958)
m.x228 = Var(within=Reals,bounds=(0,None),initialize=22.3533684)
m.x229 = Var(within=Reals,bounds=(0,None),initialize=76.548)
m.x230 = Var(within=Reals,bounds=(0,None),initialize=102.45)
m.x231 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x232 = Var(within=Reals,bounds=(0,None),initialize=179)
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
m.x243 = Var(within=Reals,bounds=(0,None),initialize=135.03)
m.x244 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x245 = Var(within=Reals,bounds=(0,None),initialize=280.98)
m.x246 = Var(within=Reals,bounds=(3.90160160745986,3.90160160745986),initialize=3.90160160745986)
m.x247 = Var(within=Reals,bounds=(3.8620476576681,3.8620476576681),initialize=3.8620476576681)
m.x248 = Var(within=Reals,bounds=(3.72606006408823,3.72606006408823),initialize=3.72606006408823)
m.x249 = Var(within=Reals,bounds=(3.51847551492889,3.51847551492889),initialize=3.51847551492889)
m.x250 = Var(within=Reals,bounds=(3.44416661500417,3.44416661500417),initialize=3.44416661500417)
m.x251 = Var(within=Reals,bounds=(4.04648603153022,4.04648603153022),initialize=4.04648603153022)
m.x252 = Var(within=Reals,bounds=(3.7694172104051,3.7694172104051),initialize=3.7694172104051)
m.x253 = Var(within=Reals,bounds=(3.75544539582394,3.75544539582394),initialize=3.75544539582394)
m.x254 = Var(within=Reals,bounds=(4.76190476190476,4.76190476190476),initialize=4.76190476190476)
m.x255 = Var(within=Reals,bounds=(0.2205,0.2205),initialize=0.2205)
m.x256 = Var(within=Reals,bounds=(0.233,0.233),initialize=0.233)
m.x257 = Var(within=Reals,bounds=(0.278,0.278),initialize=0.278)
m.x258 = Var(within=Reals,bounds=(0.3534,0.3534),initialize=0.3534)
m.x259 = Var(within=Reals,bounds=(0.3826,0.3826),initialize=0.3826)
m.x260 = Var(within=Reals,bounds=(0.1768,0.1768),initialize=0.1768)
m.x261 = Var(within=Reals,bounds=(0.2633,0.2633),initialize=0.2633)
m.x262 = Var(within=Reals,bounds=(0.268,0.268),initialize=0.268)
m.x263 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x264 = Var(within=Reals,bounds=(495.73,495.73),initialize=495.73)
m.x265 = Var(within=Reals,bounds=(170.89,170.89),initialize=170.89)
m.x266 = Var(within=Reals,bounds=(73.76,73.76),initialize=73.76)
m.x267 = Var(within=Reals,bounds=(140,140),initialize=140)
m.x268 = Var(within=Reals,bounds=(236.87,236.87),initialize=236.87)
m.x269 = Var(within=Reals,bounds=(853.13,853.13),initialize=853.13)
m.x270 = Var(within=Reals,bounds=(102.51,102.51),initialize=102.51)
m.x271 = Var(within=Reals,bounds=(20.6,20.6),initialize=20.6)
m.x272 = Var(within=Reals,bounds=(435.29,435.29),initialize=435.29)
m.x273 = Var(within=Reals,bounds=(769.73,769.73),initialize=769.73)
m.x274 = Var(within=Reals,bounds=(180.36,180.36),initialize=180.36)
m.x275 = Var(within=Reals,bounds=(2270.04,2270.04),initialize=2270.04)
m.x276 = Var(within=Reals,bounds=(515.064,515.064),initialize=515.064)
m.x277 = Var(within=Reals,bounds=(132.515,132.515),initialize=132.515)
m.x278 = Var(within=Reals,bounds=(135.03,135.03),initialize=135.03)
m.x279 = Var(within=Reals,bounds=(0.09305,0.09305),initialize=0.09305)
m.x280 = Var(within=Reals,bounds=(36.841,36.841),initialize=36.841)

m.c1 = Complementarity(expr=(   m.x60 - m.x171 - m.x182 - m.x193 - m.x218 - m.x233 >= 0, m.x1 >= 0.01))

m.c2 = Complementarity(expr=(   m.x61 - m.x172 - m.x183 - m.x194 - m.x219 - m.x234 >= 0, m.x2 >= 0.01))

m.c3 = Complementarity(expr=(   m.x62 - m.x173 - m.x184 - m.x195 - m.x220 - m.x235 >= 0, m.x3 >= 0.01))

m.c4 = Complementarity(expr=(   m.x63 - m.x174 - m.x185 - m.x196 - m.x221 - m.x236 >= 0, m.x4 >= 0.01))

m.c5 = Complementarity(expr=(   m.x64 - m.x175 - m.x186 - m.x197 - m.x222 - m.x237 >= 0, m.x5 >= 0.01))

m.c6 = Complementarity(expr=(   m.x65 - m.x176 - m.x187 - m.x198 - m.x223 - m.x238 >= 0, m.x6 >= 0.01))

m.c7 = Complementarity(expr=(   m.x66 - m.x177 - m.x188 - m.x199 - m.x224 - m.x239 >= 0, m.x7 >= 0.01))

m.c8 = Complementarity(expr=(   m.x67 - m.x178 - m.x189 - m.x200 - m.x225 - m.x240 >= 0, m.x8 >= 0.01))

m.c9 = Complementarity(expr=(   m.x68 - m.x179 - m.x190 - m.x201 - m.x226 - m.x241 >= 0, m.x9 >= 0.01))

m.c10 = Complementarity(expr=(   m.x69 - m.x180 - m.x191 - m.x202 - m.x227 - m.x242 >= 0, m.x10 >= 0.01))

m.c11 = Complementarity(expr=(   m.x70 - m.x181 - m.x192 - m.x203 - m.x228 - m.x243 >= 0, m.x11 >= 0.01))

m.c12 = Complementarity(expr=( - m.x138 - m.x141 - m.x144 - m.x147 - m.x150 - m.x153 - m.x156 - m.x159 - m.x162 - m.x165
                               - m.x168 + m.x275 >= 0, m.x12 >= 0.01))

m.c13 = Complementarity(expr=( - m.x139 - m.x142 - m.x145 - m.x148 - m.x151 - m.x154 - m.x157 - m.x160 - m.x163 - m.x166
                               - m.x169 + m.x276 >= 0, m.x13 >= 0.01))

m.c14 = Complementarity(expr=( - m.x140 - m.x143 - m.x146 - m.x149 - m.x152 - m.x155 - m.x158 - m.x161 - m.x164 - m.x167
                               - m.x170 + m.x277 >= 0, m.x14 >= 0.01))

m.c15 = Complementarity(expr=(m.x111*m.x120 + m.x112*m.x121 + m.x113*m.x122 + m.x114*m.x123 + m.x115*m.x124 + m.x116*
                              m.x125 + m.x117*m.x126 + m.x118*m.x127 + m.x119*m.x128 - (m.x246*m.x129 + m.x247*m.x130 + 
                              m.x248*m.x131 + m.x249*m.x132 + m.x250*m.x133 + m.x251*m.x134 + m.x252*m.x135 + m.x253*
                              m.x136 + m.x254*m.x137) + m.x280 >= 0, m.x15 >= 0))

m.c16 = Complementarity(expr=(0.348626201365843*m.x138**0.591704143715924*m.x139**0.0582597238824299*m.x264**
                              0.350036132401646 - m.x49 >= 0, m.x16 >= 0))

m.c17 = Complementarity(expr=(0.680185222690116*m.x141**0.483284656725633*m.x142**0.0550000588458315*m.x143**
                              0.0611187968573009*m.x265**0.400596487571234 - m.x50 >= 0, m.x17 >= 0))

m.c18 = Complementarity(expr=(1.11768973028935*m.x144**0.149254235561449*m.x145**0.0348456180057085*m.x146**
                              0.116263119367405*m.x266**0.699637027065438 - m.x51 >= 0, m.x18 >= 0))

m.c19 = Complementarity(expr=(2.21735910972658*m.x147**0.124340785725101*m.x148**0.0903068596031718*m.x149**
                              0.225706847485217*m.x267**0.559645507186511 - m.x52 >= 0, m.x19 >= 0))

m.c20 = Complementarity(expr=(1.88694831454469*m.x150**0.0757828604821368*m.x151**0.100164472424532*m.x152**
                              0.333883770474614*m.x268**0.490168896618717 - m.x53 >= 0, m.x20 >= 0))

m.c21 = Complementarity(expr=(2.65949045747237*m.x153**0.0731780145986263*m.x154**0.0660918641265778*m.x155**
                              0.331376040158155*m.x269**0.529354081116641 - m.x54 >= 0, m.x21 >= 0))

m.c22 = Complementarity(expr=(3.7126172626026*m.x156**0.0776869221224238*m.x157**0.0701815360171578*m.x158**
                              0.351675762826827*m.x270**0.500455779033592 - m.x55 >= 0, m.x22 >= 0))

m.c23 = Complementarity(expr=(2.96103064874706*m.x159**0.121022424767353*m.x160**0.109585314794393*m.x161**
                              0.469701808857944*m.x271**0.29969045158031 - m.x56 >= 0, m.x23 >= 0))

m.c24 = Complementarity(expr=(2.39484144268256*m.x162**0.0924402542329733*m.x163**0.116510660098669*m.x164**
                              0.291297085362681*m.x272**0.499752000305677 - m.x57 >= 0, m.x24 >= 0))

m.c25 = Complementarity(expr=(1.60641806885198*m.x165**0.0419718698591821*m.x166**0.043565548709225*m.x167**
                              0.214577655220338*m.x273**0.699884926211255 - m.x58 >= 0, m.x25 >= 0))

m.c26 = Complementarity(expr=(3.06021940672469*m.x169**0.161667833599912*m.x170**0.638134060622252*m.x274**
                              0.200198105777836 - m.x59 >= 0, m.x26 >= 0))

m.c27 = Complementarity(expr=(-5.72216894860588*(0.944861892175094*m.x120**1.66666666666667 + 0.0551381078249061*m.x71**
                              1.66666666666667)**0.6 + m.x49 >= 0, m.x27 >= 0.01))

m.c28 = Complementarity(expr=(-4.99979321888645*(0.0353543488443489*m.x121**2.11111111111111 + 0.964645651155651*m.x72**
                              2.11111111111111)**0.473684210526316 + m.x50 >= 0, m.x28 >= 0.01))

m.c29 = Complementarity(expr=(-2.79269101167534*(0.05508371623155*m.x122**3.5 + 0.94491628376845*m.x73**3.5)**
                              0.285714285714286 + m.x51 >= 0, m.x29 >= 0.01))

m.c30 = Complementarity(expr=(-2.10689150598303*(0.641647913381258*m.x123**1.8 + 0.358352086618742*m.x74**1.8)**
                              0.555555555555556 + m.x52 >= 0, m.x30 >= 0.01))

m.c31 = Complementarity(expr=(-3.99769535823714*(0.914022236523412*m.x124**1.8 + 0.0859777634765883*m.x75**1.8)**
                              0.555555555555556 + m.x53 >= 0, m.x31 >= 0.01))

m.c32 = Complementarity(expr=(-2.17505279839047*(0.765442555052006*m.x125**3 + 0.234557444947994*m.x76**3)**
                              0.333333333333333 + m.x54 >= 0, m.x32 >= 0.01))

m.c33 = Complementarity(expr=(-2.2235735647324*(0.747162916304351*m.x126**2.33333333333333 + 0.252837083695649*m.x77**
                              2.33333333333333)**0.428571428571429 + m.x55 >= 0, m.x33 >= 0.01))

m.c34 = Complementarity(expr=(-2.16789079504864*(0.786120077017958*m.x127**3.5 + 0.213879922982042*m.x78**3.5)**
                              0.285714285714286 + m.x56 >= 0, m.x34 >= 0.01))

m.c35 = Complementarity(expr=(   m.x57 - m.x79 >= 0, m.x35 >= 0.01))

m.c36 = Complementarity(expr=(-4.24607449264426*(0.99095437853716*m.x128**3.5 + 0.00904562146284027*m.x80**3.5)**
                              0.285714285714286 + m.x58 >= 0, m.x36 >= 0.01))

m.c37 = Complementarity(expr=(   m.x59 - m.x81 >= 0, m.x37 >= 0.01))

m.c38 = Complementarity(expr=(1.10325026662151*(0.0370647458905842*m.x129**0.333333333333333 + 0.962935254109416*m.x71**
                              0.333333333333333)**3 - m.x60 >= 0, m.x38 >= 0.01))

m.c39 = Complementarity(expr=(1.98532386803851*(0.563854034767165*m.x130**(-0.111111111111111) + 0.436145965232835*m.x72
                              **(-0.111111111111111))**(-9) - m.x61 >= 0, m.x39 >= 0.01))

m.c40 = Complementarity(expr=(1.00535466469863*(5.83616184527435e-7*m.x131**(-1.5) + 0.999999416383816*m.x73**(-1.5))**(
                              -0.666666666666667) - m.x62 >= 0, m.x40 >= 0.01))

m.c41 = Complementarity(expr=(1.82814005462734*(0.310904931212933*m.x132**0.2 + 0.689095068787067*m.x74**0.2)**5 - m.x63
                               >= 0, m.x41 >= 0.01))

m.c42 = Complementarity(expr=(1.79253695247653*(0.291366194102231*m.x133**0.2 + 0.708633805897769*m.x75**0.2)**5 - m.x64
                               >= 0, m.x42 >= 0.01))

m.c43 = Complementarity(expr=(1.96246423998974*(0.364295738146347*m.x134**(-1) + 0.635704261853653*m.x76**(-1))**(-1)
                               - m.x65 >= 0, m.x43 >= 0.01))

m.c44 = Complementarity(expr=(1.83992769362744*(0.728478987270361*m.x135**(-0.333333333333333) + 0.271521012729639*m.x77
                              **(-0.333333333333333))**(-3) - m.x66 >= 0, m.x44 >= 0.01))

m.c45 = Complementarity(expr=(1.08082678039911*(0.999496751491372*m.x136**(-1.5) + 0.000503248508628373*m.x78**(-1.5))**
                              (-0.666666666666667) - m.x67 >= 0, m.x45 >= 0.01))

m.c46 = Complementarity(expr=( - m.x68 + m.x79 >= 0, m.x46 >= 0.01))

m.c47 = Complementarity(expr=(1.2369183993012*(0.00719743378715518*m.x137**(-1.5) + 0.992802566212845*m.x80**(-1.5))**(-
                              0.666666666666667) - m.x69 >= 0, m.x47 >= 0.01))

m.c48 = Complementarity(expr=( - m.x70 + m.x81 >= 0, m.x48 >= 0.01))

m.c49 = Complementarity(expr=(   0.03046*m.x1 + 0.00341*m.x4 + 0.00676*m.x6 + 2E-5*m.x7 + 0.00041*m.x8 + 0.00472*m.x9
                               + 0.00375*m.x10 + 0.00022*m.x11 + m.x16 - 0.998*m.x27 >= 0, m.x49 >= 0.01))

m.c50 = Complementarity(expr=(   0.01518*m.x2 + 0.00629*m.x4 + 0.12385*m.x6 + 0.00025*m.x7 + 0.00971*m.x8 + 0.00113*m.x9
                               + 0.30649*m.x10 + 0.00293*m.x11 + m.x17 - 0.809*m.x28 >= 0, m.x50 >= 0.01))

m.c51 = Complementarity(expr=(   0.02095*m.x6 + 0.00017*m.x7 + 0.02427*m.x8 + 0.00318*m.x9 + 0.26666*m.x10
                               + 0.00327*m.x11 + m.x18 - 0.943*m.x29 >= 0, m.x51 >= 0.01))

m.c52 = Complementarity(expr=(   0.30266*m.x1 + 0.02043*m.x2 + 0.00243*m.x3 + 0.03241*m.x4 + 0.00105*m.x5 + 0.03794*m.x6
                               + 0.11238*m.x7 + 0.00931*m.x8 + 0.10456*m.x9 + 0.101*m.x10 + 0.00536*m.x11 + m.x19
                               - 0.962*m.x30 >= 0, m.x52 >= 0.01))

m.c53 = Complementarity(expr=(   0.00206*m.x1 + 0.01123*m.x2 + 0.01234*m.x4 + 0.05385*m.x5 + 0.08309*m.x6 + 0.05095*m.x7
                               + 0.01229*m.x8 + 0.01831*m.x9 + 0.26072*m.x10 + 0.00539*m.x11 + m.x20 - 0.904*m.x31
                               >= 0, m.x53 >= 0.01))

m.c54 = Complementarity(expr=(   0.00669*m.x2 + 0.02106*m.x3 + 0.00503*m.x4 + 0.00435*m.x5 + 0.23461*m.x6 + 0.05593*m.x7
                               + 0.05259*m.x8 + 0.05302*m.x9 + 0.23006*m.x10 + 0.00957*m.x11 + m.x21 - 0.974*m.x32
                               >= 0, m.x54 >= 0.01))

m.c55 = Complementarity(expr=(   0.18289*m.x6 + 0.27608*m.x7 + 0.02053*m.x8 + 0.00172*m.x9 + 0.11793*m.x10
                               + 0.00486*m.x11 + m.x22 - 0.986*m.x33 >= 0, m.x55 >= 0.01))

m.c56 = Complementarity(expr=(   0.01567*m.x6 + 0.11722*m.x7 + 0.05013*m.x8 + 0.00031*m.x9 + 0.09922*m.x10
                               + 0.00081*m.x11 + m.x23 - 0.971*m.x34 >= 0, m.x56 >= 0.01))

m.c57 = Complementarity(expr=(   0.14665*m.x6 + 0.18643*m.x7 + 0.02622*m.x8 + 0.01457*m.x9 + 0.13692*m.x10
                               + 0.00447*m.x11 + m.x24 - 0.966*m.x35 >= 0, m.x57 >= 0.01))

m.c58 = Complementarity(expr=(   0.0412*m.x1 + 0.00092*m.x4 + 0.00103*m.x5 + 0.00929*m.x6 + 0.00018*m.x7 + 0.00389*m.x8
                               + 0.00385*m.x9 + 0.13728*m.x10 + 0.00219*m.x11 + m.x25 - 0.924*m.x36
                               >= 0, m.x58 >= 0.01))

m.c59 = Complementarity(expr=(   0.01532*m.x4 + 0.00338*m.x5 + 0.08466*m.x6 + 0.00394*m.x9 + 0.24145*m.x10 + m.x26
                               - m.x37 >= 0, m.x59 >= 0.01))

m.c60 = Complementarity(expr=(m.x38*m.x71 + m.x82*m.x129 - m.x1*m.x60 >= 0, m.x60 >= 0.01))

m.c61 = Complementarity(expr=(m.x39*m.x72 + m.x83*m.x130 - m.x2*m.x61 >= 0, m.x61 >= 0.01))

m.c62 = Complementarity(expr=(m.x40*m.x73 + m.x84*m.x131 - m.x3*m.x62 >= 0, m.x62 >= 0.01))

m.c63 = Complementarity(expr=(m.x41*m.x74 + m.x85*m.x132 - m.x4*m.x63 >= 0, m.x63 >= 0.01))

m.c64 = Complementarity(expr=(m.x42*m.x75 + m.x86*m.x133 - m.x5*m.x64 >= 0, m.x64 >= 0.01))

m.c65 = Complementarity(expr=(m.x43*m.x76 + m.x87*m.x134 - m.x6*m.x65 >= 0, m.x65 >= 0.01))

m.c66 = Complementarity(expr=(m.x44*m.x77 + m.x88*m.x135 - m.x7*m.x66 >= 0, m.x66 >= 0.01))

m.c67 = Complementarity(expr=(m.x45*m.x78 + m.x89*m.x136 - m.x8*m.x67 >= 0, m.x67 >= 0.01))

m.c68 = Complementarity(expr=(m.x46*m.x79 - m.x9*m.x68 >= 0, m.x68 >= 0.01))

m.c69 = Complementarity(expr=(m.x47*m.x80 + m.x90*m.x137 - m.x10*m.x69 >= 0, m.x69 >= 0.01))

m.c70 = Complementarity(expr=(m.x48*m.x81 - m.x11*m.x70 >= 0, m.x70 >= 0.01))

m.c71 = Complementarity(expr=(m.x27*m.x49 - (m.x38*m.x71 + m.x91*m.x120) >= 0, m.x71 >= 0.01))

m.c72 = Complementarity(expr=(m.x28*m.x50 - (m.x39*m.x72 + m.x92*m.x121) >= 0, m.x72 >= 0.01))

m.c73 = Complementarity(expr=(m.x29*m.x51 - (m.x40*m.x73 + m.x93*m.x122) >= 0, m.x73 >= 0.01))

m.c74 = Complementarity(expr=(m.x30*m.x52 - (m.x41*m.x74 + m.x94*m.x123) >= 0, m.x74 >= 0.01))

m.c75 = Complementarity(expr=(m.x31*m.x53 - (m.x42*m.x75 + m.x95*m.x124) >= 0, m.x75 >= 0.01))

m.c76 = Complementarity(expr=(m.x32*m.x54 - (m.x43*m.x76 + m.x96*m.x125) >= 0, m.x76 >= 0.01))

m.c77 = Complementarity(expr=(m.x33*m.x55 - (m.x44*m.x77 + m.x97*m.x126) >= 0, m.x77 >= 0.01))

m.c78 = Complementarity(expr=(m.x34*m.x56 - (m.x45*m.x78 + m.x98*m.x127) >= 0, m.x78 >= 0.01))

m.c79 = Complementarity(expr=(m.x35*m.x57 - m.x46*m.x79 >= 0, m.x79 >= 0))

m.c80 = Complementarity(expr=(m.x36*m.x58 - (m.x47*m.x80 + m.x99*m.x128) >= 0, m.x80 >= 0.01))

m.c81 = Complementarity(expr=(m.x37*m.x59 - m.x48*m.x81 >= 0, m.x81 >= 0))

m.c82 = Complementarity(expr=(-0.21*m.x246*m.x15*(1 + m.x255) + m.x82 >= 0, m.x82 >= 0.01))

m.c83 = Complementarity(expr=(-0.21*m.x247*m.x15*(1 + m.x256) + m.x83 >= 0, m.x83 >= 0.01))

m.c84 = Complementarity(expr=(-0.21*m.x248*m.x15*(1 + m.x257) + m.x84 >= 0, m.x84 >= 0.01))

m.c85 = Complementarity(expr=(-0.21*m.x249*m.x15*(1 + m.x258) + m.x85 >= 0, m.x85 >= 0.01))

m.c86 = Complementarity(expr=(-0.21*m.x250*m.x15*(1 + m.x259) + m.x86 >= 0, m.x86 >= 0.01))

m.c87 = Complementarity(expr=(-0.21*m.x251*m.x15*(1 + m.x260) + m.x87 >= 0, m.x87 >= 0.01))

m.c88 = Complementarity(expr=(-0.21*m.x252*m.x15*(1 + m.x261) + m.x88 >= 0, m.x88 >= 0.01))

m.c89 = Complementarity(expr=(-0.21*m.x253*m.x15*(1 + m.x262) + m.x89 >= 0, m.x89 >= 0.01))

m.c90 = Complementarity(expr=(-0.21*m.x254*m.x15*(1 + m.x263) + m.x90 >= 0, m.x90 >= 0.01))

m.c91 = Complementarity(expr=(-0.21*m.x111*m.x15 + m.x91 >= 0, m.x91 >= 0))

m.c92 = Complementarity(expr=(-0.21*m.x112*m.x15 + m.x92 >= 0, m.x92 >= 0))

m.c93 = Complementarity(expr=(-0.21*m.x113*m.x15 + m.x93 >= 0, m.x93 >= 0))

m.c94 = Complementarity(expr=(-0.21*m.x114*m.x15 + m.x94 >= 0, m.x94 >= 0))

m.c95 = Complementarity(expr=(-0.21*m.x115*m.x15 + m.x95 >= 0, m.x95 >= 0))

m.c96 = Complementarity(expr=(-0.21*m.x116*m.x15 + m.x96 >= 0, m.x96 >= 0))

m.c97 = Complementarity(expr=(-0.21*m.x117*m.x15 + m.x97 >= 0, m.x97 >= 0))

m.c98 = Complementarity(expr=(-0.21*m.x118*m.x15 + m.x98 >= 0, m.x98 >= 0))

m.c99 = Complementarity(expr=(-0.21*m.x119*m.x15 + m.x99 >= 0, m.x99 >= 0))

m.c100 = Complementarity(expr=( - 0.23637*m.x1 - 0.5953*m.x8 - 0.16833*m.x9 + m.x100 >= 0, m.x100 >= 0.01))

m.c101 = Complementarity(expr=( - 0.60608*m.x8 - 0.39392*m.x9 + m.x101 >= 0, m.x101 >= 0.01))

m.c102 = Complementarity(expr=( - 0.63876*m.x8 - 0.36124*m.x9 + m.x102 >= 0, m.x102 >= 0.01))

m.c103 = Complementarity(expr=( - 0.60608*m.x8 - 0.39392*m.x9 + m.x103 >= 0, m.x103 >= 0.01))

m.c104 = Complementarity(expr=( - 0.78723*m.x8 - 0.21277*m.x9 + m.x104 >= 0, m.x104 >= 0.01))

m.c105 = Complementarity(expr=( - 0.63876*m.x8 - 0.36124*m.x9 + m.x105 >= 0, m.x105 >= 0.01))

m.c106 = Complementarity(expr=( - 0.63876*m.x8 - 0.36124*m.x9 + m.x106 >= 0, m.x106 >= 0.01))

m.c107 = Complementarity(expr=( - 0.60608*m.x8 - 0.39392*m.x9 + m.x107 >= 0, m.x107 >= 0.01))

m.c108 = Complementarity(expr=( - 0.71728*m.x8 - 0.28272*m.x9 + m.x108 >= 0, m.x108 >= 0.01))

m.c109 = Complementarity(expr=( - 0.1761*m.x8 - 0.8239*m.x9 + m.x109 >= 0, m.x109 >= 0.01))

m.c110 = Complementarity(expr=( - 0.1761*m.x8 - 0.8239*m.x9 + m.x110 >= 0, m.x110 >= 0.01))

m.c111 = Complementarity(expr=(-(4.76190476190476/m.x111)**1 + 0.21767522855899*m.x120 >= 0, m.x111 >= 0.01))

m.c112 = Complementarity(expr=(-(4.76190476190476/m.x112)**1 + 0.00799552250739586*m.x121 >= 0, m.x112 >= 0.01))

m.c113 = Complementarity(expr=(-(4.76190476190476/m.x113)**1 + 0.0447687693065318*m.x122 >= 0, m.x113 >= 0.01))

m.c114 = Complementarity(expr=(-(4.76190476190476/m.x114)**4 + 0.0426421048142936*m.x123 >= 0, m.x114 >= 0.01))

m.c115 = Complementarity(expr=(-(4.76190476190476/m.x115)**4 + 0.170532060027285*m.x124 >= 0, m.x115 >= 0.01))

m.c116 = Complementarity(expr=(-(4.76190476190476/m.x116)**4 + 0.00986874568242376*m.x125 >= 0, m.x116 >= 0.01))

m.c117 = Complementarity(expr=(-(4.76190476190476/m.x117)**4 + 0.095229025807066*m.x126 >= 0, m.x117 >= 0.01))

m.c118 = Complementarity(expr=(-(4.76190476190476/m.x118)**4 + 0.260552371026576*m.x127 >= 0, m.x118 >= 0.01))

m.c119 = Complementarity(expr=(-(4.76190476190476/m.x119)**4 + 0.0122509984563742*m.x128 >= 0, m.x119 >= 0.01))

m.c120 = Complementarity(expr=(m.x120/m.x71 - (0.0583557324954411*m.x91/m.x38)**1.5 >= 0, m.x120 >= 0.01))

m.c121 = Complementarity(expr=(m.x121/m.x72 - (27.2850634416321*m.x92/m.x39)**0.9 >= 0, m.x121 >= 0.01))

m.c122 = Complementarity(expr=(m.x122/m.x73 - (17.1541854546705*m.x93/m.x40)**0.4 >= 0, m.x122 >= 0.01))

m.c123 = Complementarity(expr=(m.x123/m.x74 - (0.558487106628856*m.x94/m.x41)**1.25 >= 0, m.x123 >= 0.01))

m.c124 = Complementarity(expr=(m.x124/m.x75 - (0.0940652864241187*m.x95/m.x42)**1.25 >= 0, m.x124 >= 0.01))

m.c125 = Complementarity(expr=(m.x125/m.x76 - (0.306433766191713*m.x96/m.x43)**0.5 >= 0, m.x125 >= 0.01))

m.c126 = Complementarity(expr=(m.x126/m.x77 - (0.338396189342804*m.x97/m.x44)**0.75 >= 0, m.x126 >= 0.01))

m.c127 = Complementarity(expr=(m.x127/m.x78 - (0.272070297190942*m.x98/m.x45)**0.4 >= 0, m.x127 >= 0.01))

m.c128 = Complementarity(expr=(m.x128/m.x80 - (0.00912819162895607*m.x99/m.x47)**0.4 >= 0, m.x128 >= 0.01))

m.c129 = Complementarity(expr=(m.x129/m.x71 - (0.0384914206146332*m.x38/m.x82)**1.5 >= 0, m.x129 >= 0.01))

m.c130 = Complementarity(expr=(m.x130/m.x72 - (1.29281038852704*m.x39/m.x83)**0.9 >= 0, m.x130 >= 0.01))

m.c131 = Complementarity(expr=(m.x131/m.x73 - (5.83616525135484e-7*m.x40/m.x84)**0.4 >= 0, m.x131 >= 0.01))

m.c132 = Complementarity(expr=(m.x132/m.x74 - (0.451178575055227*m.x41/m.x85)**1.25 >= 0, m.x132 >= 0.01))

m.c133 = Complementarity(expr=(m.x133/m.x75 - (0.411166094077461*m.x42/m.x86)**1.25 >= 0, m.x133 >= 0.01))

m.c134 = Complementarity(expr=(m.x134/m.x76 - (0.573058511648319*m.x43/m.x87)**0.5 >= 0, m.x134 >= 0.01))

m.c135 = Complementarity(expr=(m.x135/m.x77 - (2.68295621008061*m.x44/m.x88)**0.75 >= 0, m.x135 >= 0.01))

m.c136 = Complementarity(expr=(m.x136/m.x78 - (1986.08984299933*m.x45/m.x89)**0.4 >= 0, m.x136 >= 0.01))

m.c137 = Complementarity(expr=(m.x137/m.x80 - (0.00724961239233152*m.x47/m.x90)**0.4 >= 0, m.x137 >= 0.01))

m.c138 = Complementarity(expr=(1.0189*m.x12*m.x138 - 0.591704143715924*m.x49*m.x16 >= 0, m.x138 >= 0.01))

m.c139 = Complementarity(expr=(0.71491*m.x13*m.x139 - 0.0582597238824299*m.x49*m.x16 >= 0, m.x139 >= 0.01))

m.c140 = Complementarity(expr=(0.49556*m.x12*m.x141 - 0.483284656725633*m.x50*m.x17 >= 0, m.x141 >= 0.01))

m.c141 = Complementarity(expr=(0.34774*m.x13*m.x142 - 0.0550000588458315*m.x50*m.x17 >= 0, m.x142 >= 0.01))

m.c142 = Complementarity(expr=(0.29222*m.x14*m.x143 - 0.0611187968573009*m.x50*m.x17 >= 0, m.x143 >= 0.01))

m.c143 = Complementarity(expr=(3.2628*m.x12*m.x144 - 0.149254235561449*m.x51*m.x18 >= 0, m.x144 >= 0.01))

m.c144 = Complementarity(expr=(2.289*m.x13*m.x145 - 0.0348456180057085*m.x51*m.x18 >= 0, m.x145 >= 0.01))

m.c145 = Complementarity(expr=(1.9232*m.x14*m.x146 - 0.116263119367405*m.x51*m.x18 >= 0, m.x146 >= 0.01))

m.c146 = Complementarity(expr=(1.4571*m.x12*m.x147 - 0.124340785725101*m.x52*m.x19 >= 0, m.x147 >= 0.01))

m.c147 = Complementarity(expr=(1.0223*m.x13*m.x148 - 0.0903068596031718*m.x52*m.x19 >= 0, m.x148 >= 0.01))

m.c148 = Complementarity(expr=(0.85902*m.x14*m.x149 - 0.225706847485217*m.x52*m.x19 >= 0, m.x149 >= 0.01))

m.c149 = Complementarity(expr=(1.1335*m.x12*m.x150 - 0.0757828604821368*m.x53*m.x20 >= 0, m.x150 >= 0.01))

m.c150 = Complementarity(expr=(0.79531*m.x13*m.x151 - 0.100164472424532*m.x53*m.x20 >= 0, m.x151 >= 0.01))

m.c151 = Complementarity(expr=(0.66829*m.x14*m.x152 - 0.333883770474614*m.x53*m.x20 >= 0, m.x152 >= 0.01))

m.c152 = Complementarity(expr=(3.1074*m.x12*m.x153 - 0.0731780145986263*m.x54*m.x21 >= 0, m.x153 >= 0.01))

m.c153 = Complementarity(expr=(2.1806*m.x13*m.x154 - 0.0660918641265778*m.x54*m.x21 >= 0, m.x154 >= 0.01))

m.c154 = Complementarity(expr=(1.8323*m.x14*m.x155 - 0.331376040158155*m.x54*m.x21 >= 0, m.x155 >= 0.01))

m.c155 = Complementarity(expr=(6.3224*m.x12*m.x156 - 0.0776869221224238*m.x55*m.x22 >= 0, m.x156 >= 0.01))

m.c156 = Complementarity(expr=(4.4364*m.x13*m.x157 - 0.0701815360171578*m.x55*m.x22 >= 0, m.x157 >= 0.01))

m.c157 = Complementarity(expr=(3.7277*m.x14*m.x158 - 0.351675762826827*m.x55*m.x22 >= 0, m.x158 >= 0.01))

m.c158 = Complementarity(expr=(2.5035*m.x12*m.x159 - 0.121022424767353*m.x56*m.x23 >= 0, m.x159 >= 0.01))

m.c159 = Complementarity(expr=(1.7552*m.x13*m.x160 - 0.109585314794393*m.x56*m.x23 >= 0, m.x160 >= 0.01))

m.c160 = Complementarity(expr=(1.4758*m.x14*m.x161 - 0.469701808857944*m.x56*m.x23 >= 0, m.x161 >= 0.01))

m.c161 = Complementarity(expr=(2.9204*m.x12*m.x162 - 0.0924402542329733*m.x57*m.x24 >= 0, m.x162 >= 0.01))

m.c162 = Complementarity(expr=(2.0492*m.x13*m.x163 - 0.116510660098669*m.x57*m.x24 >= 0, m.x163 >= 0.01))

m.c163 = Complementarity(expr=(1.722*m.x14*m.x164 - 0.291297085362681*m.x57*m.x24 >= 0, m.x164 >= 0.01))

m.c164 = Complementarity(expr=(1.4039*m.x12*m.x165 - 0.0419718698591821*m.x58*m.x25 >= 0, m.x165 >= 0.01))

m.c165 = Complementarity(expr=(0.98502*m.x13*m.x166 - 0.043565548709225*m.x58*m.x25 >= 0, m.x166 >= 0.01))

m.c166 = Complementarity(expr=(0.82776*m.x14*m.x167 - 0.214577655220338*m.x58*m.x25 >= 0, m.x167 >= 0.01))

m.c167 = Complementarity(expr=(1.3263*m.x13*m.x169 - 0.161667833599912*m.x59*m.x26 >= 0, m.x169 >= 0.01))

m.c168 = Complementarity(expr=(1.1146*m.x14*m.x170 - 0.638134060622252*m.x59*m.x26 >= 0, m.x170 >= 0.01))

m.c169 = Complementarity(expr=( - 0.03046*m.x49 - 0.30266*m.x52 - 0.00206*m.x53 - 0.0412*m.x58 + m.x171
                                >= 0, m.x171 >= 0.01))

m.c170 = Complementarity(expr=( - 0.01518*m.x50 - 0.02043*m.x52 - 0.01123*m.x53 - 0.00669*m.x54 + m.x172
                                >= 0, m.x172 >= 0.01))

m.c171 = Complementarity(expr=( - 0.00243*m.x52 - 0.02106*m.x54 + m.x173 >= 0, m.x173 >= 0.01))

m.c172 = Complementarity(expr=( - 0.00341*m.x49 - 0.00629*m.x50 - 0.03241*m.x52 - 0.01234*m.x53 - 0.00503*m.x54
                                - 0.00092*m.x58 - 0.01532*m.x59 + m.x174 >= 0, m.x174 >= 0.01))

m.c173 = Complementarity(expr=( - 0.00105*m.x52 - 0.05385*m.x53 - 0.00435*m.x54 - 0.00103*m.x58 - 0.00338*m.x59 + m.x175
                                >= 0, m.x175 >= 0.01))

m.c174 = Complementarity(expr=( - 0.00676*m.x49 - 0.12385*m.x50 - 0.02095*m.x51 - 0.03794*m.x52 - 0.08309*m.x53
                                - 0.23461*m.x54 - 0.18289*m.x55 - 0.01567*m.x56 - 0.14665*m.x57 - 0.00929*m.x58
                                - 0.08466*m.x59 + m.x176 >= 0, m.x176 >= 0.01))

m.c175 = Complementarity(expr=( - 2E-5*m.x49 - 0.00025*m.x50 - 0.00017*m.x51 - 0.11238*m.x52 - 0.05095*m.x53
                                - 0.05593*m.x54 - 0.27608*m.x55 - 0.11722*m.x56 - 0.18643*m.x57 - 0.00018*m.x58 + m.x177
                                >= 0, m.x177 >= 0.01))

m.c176 = Complementarity(expr=( - 0.00041*m.x49 - 0.00971*m.x50 - 0.02427*m.x51 - 0.00931*m.x52 - 0.01229*m.x53
                                - 0.05259*m.x54 - 0.02053*m.x55 - 0.05013*m.x56 - 0.02622*m.x57 - 0.00389*m.x58 + m.x178
                                >= 0, m.x178 >= 0.01))

m.c177 = Complementarity(expr=( - 0.00472*m.x49 - 0.00113*m.x50 - 0.00318*m.x51 - 0.10456*m.x52 - 0.01831*m.x53
                                - 0.05302*m.x54 - 0.00172*m.x55 - 0.00031*m.x56 - 0.01457*m.x57 - 0.00385*m.x58
                                - 0.00394*m.x59 + m.x179 >= 0, m.x179 >= 0.01))

m.c178 = Complementarity(expr=( - 0.00375*m.x49 - 0.30649*m.x50 - 0.26666*m.x51 - 0.101*m.x52 - 0.26072*m.x53
                                - 0.23006*m.x54 - 0.11793*m.x55 - 0.09922*m.x56 - 0.13692*m.x57 - 0.13728*m.x58
                                - 0.24145*m.x59 + m.x180 >= 0, m.x180 >= 0.01))

m.c179 = Complementarity(expr=( - 0.00022*m.x49 - 0.00293*m.x50 - 0.00327*m.x51 - 0.00536*m.x52 - 0.00539*m.x53
                                - 0.00957*m.x54 - 0.00486*m.x55 - 0.00081*m.x56 - 0.00447*m.x57 - 0.00219*m.x58 + m.x181
                                >= 0, m.x181 >= 0.01))

m.c180 = Complementarity(expr=( - 0.012203*m.x49 + m.x182 >= 0, m.x182 >= 0))

m.c181 = Complementarity(expr=( - 0.026694*m.x50 + m.x183 >= 0, m.x183 >= 0))

m.c182 = Complementarity(expr=( - 0.034742*m.x51 + m.x184 >= 0, m.x184 >= 0))

m.c183 = Complementarity(expr=( - 0.044291*m.x52 + m.x185 >= 0, m.x185 >= 0))

m.c184 = Complementarity(expr=( - 0.059958*m.x53 + m.x186 >= 0, m.x186 >= 0))

m.c185 = Complementarity(expr=( - 0.012287*m.x54 + m.x187 >= 0, m.x187 >= 0))

m.c186 = Complementarity(expr=(   m.x188 >= 0, m.x188 >= 0))

m.c187 = Complementarity(expr=( - 0.042047*m.x56 + m.x189 >= 0, m.x189 >= 0))

m.c188 = Complementarity(expr=(   m.x190 >= 0, m.x190 >= 0))

m.c189 = Complementarity(expr=(   m.x191 >= 0, m.x191 >= 0))

m.c190 = Complementarity(expr=(   m.x192 >= 0, m.x192 >= 0))

m.c191 = Complementarity(expr=(   m.x193 - 0.23637*m.x204 >= 0, m.x193 >= 0))

m.c192 = Complementarity(expr=(   m.x194 >= 0, m.x194 >= 0))

m.c193 = Complementarity(expr=(   m.x195 >= 0, m.x195 >= 0))

m.c194 = Complementarity(expr=(   m.x196 >= 0, m.x196 >= 0))

m.c195 = Complementarity(expr=(   m.x197 >= 0, m.x197 >= 0))

m.c196 = Complementarity(expr=(   m.x198 >= 0, m.x198 >= 0))

m.c197 = Complementarity(expr=(   m.x199 >= 0, m.x199 >= 0))

m.c198 = Complementarity(expr=(   m.x200 - 0.5953*m.x204 - 0.60608*m.x205 - 0.63876*m.x206 - 0.60608*m.x207
                                - 0.78723*m.x208 - 0.63876*m.x209 - 0.63876*m.x210 - 0.60608*m.x211 - 0.71728*m.x212
                                - 0.1761*m.x213 - 0.1761*m.x214 >= 0, m.x200 >= 0))

m.c199 = Complementarity(expr=(   m.x201 - 0.16833*m.x204 - 0.39392*m.x205 - 0.36124*m.x206 - 0.39392*m.x207
                                - 0.21277*m.x208 - 0.36124*m.x209 - 0.36124*m.x210 - 0.39392*m.x211 - 0.28272*m.x212
                                - 0.8239*m.x213 - 0.8239*m.x214 >= 0, m.x201 >= 0))

m.c200 = Complementarity(expr=(   m.x202 >= 0, m.x202 >= 0))

m.c201 = Complementarity(expr=(   m.x203 >= 0, m.x203 >= 0))

m.c202 = Complementarity(expr=(m.x100*m.x204 + 0.11*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.11*m.x245 >= 0, m.x204 >= 0))

m.c203 = Complementarity(expr=(m.x101*m.x205 + 0.09*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.09*m.x245 >= 0, m.x205 >= 0))

m.c204 = Complementarity(expr=(m.x102*m.x206 + 0.06*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.06*m.x245 >= 0, m.x206 >= 0))

m.c205 = Complementarity(expr=(m.x103*m.x207 + 0.01*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.01*m.x245 >= 0, m.x207 >= 0))

m.c206 = Complementarity(expr=(m.x104*m.x208 + 0.04*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.04*m.x245 >= 0, m.x208 >= 0))

m.c207 = Complementarity(expr=(m.x105*m.x209 + 0.14*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.14*m.x245 >= 0, m.x209 >= 0))

m.c208 = Complementarity(expr=(m.x106*m.x210 + 0.02*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.02*m.x245 >= 0, m.x210 >= 0))

m.c209 = Complementarity(expr=(m.x107*m.x211 + 0.01*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.01*m.x245 >= 0, m.x211 >= 0))

m.c210 = Complementarity(expr=(m.x108*m.x212 + 0.08*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.08*m.x245 >= 0, m.x212 >= 0))

m.c211 = Complementarity(expr=(m.x109*m.x213 + 0.34*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.34*m.x245 >= 0, m.x213 >= 0))

m.c212 = Complementarity(expr=(m.x110*m.x214 + 0.1*(m.x182*m.x1 + m.x183*m.x2 + m.x184*m.x3 + m.x185*m.x4 + m.x186*m.x5
                                + m.x187*m.x6 + m.x188*m.x7 + m.x189*m.x8 + m.x190*m.x9 + m.x191*m.x10 + m.x192*m.x11)
                                - 0.1*m.x245 >= 0, m.x214 >= 0))

m.c213 = Complementarity(expr=(-(0.0246*m.x100*m.x264 + 0.0472*m.x101*m.x265 + 0.0244*m.x102*m.x266 + 0.0144*m.x103*
                               m.x267 + 0.0212*m.x104*m.x268 + 0.0335*m.x105*m.x269 + 0.0335*m.x106*m.x270 + 0.0111*
                               m.x107*m.x271 + 0.0232*m.x108*m.x272 + 0.0637*m.x109*m.x273 + 0.0637*m.x110*m.x274)
                                + m.x215 >= 0, m.x215 >= 0))

m.c214 = Complementarity(expr=(-(m.x16*m.x49 + m.x17*m.x50 + m.x18*m.x51 + m.x19*m.x52 + m.x20*m.x53 + m.x21*m.x54 + 
                               m.x22*m.x55 + m.x23*m.x56 + m.x24*m.x57 + m.x25*m.x58 + m.x26*m.x59) + m.x215 + m.x216
                                - 0, m.x216 == 1045.29814071))

m.c215 = Complementarity(expr=(-m.x279*m.x216 + m.x217 >= 0, m.x217 >= 0))

m.c216 = Complementarity(expr=(m.x1*m.x218 - (0.2744 - 0.2744*m.x279)*m.x216 >= 0, m.x218 >= 0))

m.c217 = Complementarity(expr=(m.x2*m.x219 - (0.00445 - 0.00445*m.x279)*m.x216 >= 0, m.x219 >= 0))

m.c218 = Complementarity(expr=(m.x3*m.x220 >= 0, m.x220 >= 0))

m.c219 = Complementarity(expr=(m.x4*m.x221 - (0.05599 - 0.05599*m.x279)*m.x216 >= 0, m.x221 >= 0))

m.c220 = Complementarity(expr=(m.x5*m.x222 - (0.14099 - 0.14099*m.x279)*m.x216 >= 0, m.x222 >= 0))

m.c221 = Complementarity(expr=(m.x6*m.x223 - (0.17738 - 0.17738*m.x279)*m.x216 >= 0, m.x223 >= 0))

m.c222 = Complementarity(expr=(m.x7*m.x224 >= 0, m.x224 >= 0))

m.c223 = Complementarity(expr=(m.x8*m.x225 >= 0, m.x225 >= 0))

m.c224 = Complementarity(expr=(m.x9*m.x226 - (0.004 - 0.004*m.x279)*m.x216 >= 0, m.x226 >= 0))

m.c225 = Complementarity(expr=(m.x10*m.x227 - (0.31921 - 0.31921*m.x279)*m.x216 >= 0, m.x227 >= 0))

m.c226 = Complementarity(expr=(m.x11*m.x228 - (0.02358 - 0.02358*m.x279)*m.x216 >= 0, m.x228 >= 0))

m.c227 = Complementarity(expr=(-0.21*(m.x255*m.x129*m.x246 + m.x256*m.x130*m.x247 + m.x257*m.x131*m.x248 + m.x258*m.x132
                               *m.x249 + m.x259*m.x133*m.x250 + m.x260*m.x134*m.x251 + m.x261*m.x135*m.x252 + m.x262*
                               m.x136*m.x253 + m.x263*m.x137*m.x254)*m.x15 + m.x229 >= 0, m.x229 >= 0))

m.c228 = Complementarity(expr=(-(0.002*m.x27*m.x49 + 0.191*m.x28*m.x50 + 0.057*m.x29*m.x51 + 0.038*m.x30*m.x52 + 0.096*
                               m.x31*m.x53 + 0.026*m.x32*m.x54 + 0.014*m.x33*m.x55 + 0.029*m.x34*m.x56 + 0.034*m.x35*
                               m.x57 + 0.076*m.x36*m.x58) + m.x230 >= 0, m.x230 >= 0))

m.c229 = Complementarity(expr=(   m.x231 >= 0, m.x231 >= 0))

m.c230 = Complementarity(expr=(   m.x229 + m.x230 + m.x231 - m.x232 >= 0, m.x232 >= 0))

m.c231 = Complementarity(expr=(   m.x233 >= 0, m.x233 >= 0))

m.c232 = Complementarity(expr=(   m.x234 >= 0, m.x234 >= 0))

m.c233 = Complementarity(expr=(   m.x235 >= 0, m.x235 >= 0))

m.c234 = Complementarity(expr=(   m.x236 >= 0, m.x236 >= 0))

m.c235 = Complementarity(expr=(   m.x237 >= 0, m.x237 >= 0))

m.c236 = Complementarity(expr=(   m.x238 >= 0, m.x238 >= 0))

m.c237 = Complementarity(expr=(   m.x239 >= 0, m.x239 >= 0))

m.c238 = Complementarity(expr=(   m.x240 >= 0, m.x240 >= 0))

m.c239 = Complementarity(expr=(   m.x241 >= 0, m.x241 >= 0))

m.c240 = Complementarity(expr=(   m.x242 >= 0, m.x242 >= 0))

m.c241 = Complementarity(expr=(   m.x243 - m.x278 >= 0, m.x243 >= 0))

m.c242 = Complementarity(expr=(m.x1*m.x233 + m.x2*m.x234 + m.x3*m.x235 + m.x4*m.x236 + m.x5*m.x237 + m.x6*m.x238 + m.x7*
                               m.x239 + m.x8*m.x240 + m.x9*m.x241 + m.x10*m.x242 + m.x11*m.x243 - m.x232 + m.x244
                                >= 0, m.x244 >= 0))

m.c243 = Complementarity(expr=(-0.21*m.x280*m.x15 - m.x215 - m.x217 - m.x244 + m.x245 >= 0, m.x245 >= 0))
