#  MINLP written by GAMS Convert at 12/13/18 10:30:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        719      639       32       48        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        723      710       13        0        0        0        0        0
#  FX     16       16        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       2206     1742      464        0


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,40),initialize=0)
m.x2 = Var(within=Reals,bounds=(-9.98224908514663,15),initialize=-9.98224908514663)
m.x3 = Var(within=Reals,bounds=(0.000117760330057457,5.72649360184567),initialize=0.000117760330057457)
m.x4 = Var(within=Reals,bounds=(0.000184834977784634,15),initialize=0.000184834977784634)
m.x5 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x9 = Var(within=Reals,bounds=(1,2.66666666666667),initialize=1.37554181813974)
m.x10 = Var(within=Reals,bounds=(1,2.66666666666667),initialize=1)
m.x11 = Var(within=Reals,bounds=(1,2.66666666666667),initialize=1)
m.x12 = Var(within=Reals,bounds=(1,2.66666666666667),initialize=1)
m.x13 = Var(within=Reals,bounds=(0,4),initialize=2.5)
m.x14 = Var(within=Reals,bounds=(8,14),initialize=12)
m.x15 = Var(within=Reals,bounds=(0,4),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,16),initialize=10)
m.x17 = Var(within=Reals,bounds=(32,56),initialize=48)
m.x18 = Var(within=Reals,bounds=(0,16),initialize=0)
m.x19 = Var(within=Reals,bounds=(0.02,0.1),initialize=0.06)
m.x20 = Var(within=Reals,bounds=(0.5,2),initialize=1.3)
m.x21 = Var(within=Reals,bounds=(0.02,0.1),initialize=0.03)
m.x22 = Var(within=Reals,bounds=(0.024,0.12),initialize=0.072)
m.x23 = Var(within=Reals,bounds=(0.6,2.4),initialize=1.56)
m.x24 = Var(within=Reals,bounds=(0.024,0.12),initialize=0.036)
m.x25 = Var(within=Reals,bounds=(1.02,1.02),initialize=1.02)
m.x26 = Var(within=Reals,bounds=(0.1,0.4),initialize=0.1)
m.x27 = Var(within=Reals,bounds=(0.1,0.25),initialize=0.1)
m.x28 = Var(within=Reals,bounds=(71.4094021436986,965.279886771273),initialize=250)
m.x29 = Var(within=Reals,bounds=(2.02977124473149,2.60475742976692),initialize=2.5)
m.x30 = Var(within=Reals,bounds=(12.4449311655046,104.12320743221),initialize=40)
m.x31 = Var(within=Reals,bounds=(3,4.5),initialize=3)
m.x32 = Var(within=Reals,bounds=(3,4.5),initialize=3)
m.x33 = Var(within=Reals,bounds=(3,6.5),initialize=3)
m.x34 = Var(within=Reals,bounds=(2.5,3.25),initialize=2.5)
m.x35 = Var(within=Reals,bounds=(0.1,3.25),initialize=0.1)
m.x36 = Var(within=Reals,bounds=(0.1,3.25),initialize=0.1)
m.x37 = Var(within=Reals,bounds=(0.975,1),initialize=0.995)
m.x38 = Var(within=Reals,bounds=(0.975,1),initialize=0.99)
m.x39 = Var(within=Reals,bounds=(0,0.075),initialize=0.04)
m.x40 = Var(within=Reals,bounds=(0,0.05),initialize=0.01)
m.x41 = Var(within=Reals,bounds=(0,0.001),initialize=0.0001)
m.x42 = Var(within=Reals,bounds=(0.975,1),initialize=0.999)
m.x43 = Var(within=Reals,bounds=(0.975,1),initialize=0.999)
m.x44 = Var(within=Reals,bounds=(0,0.2),initialize=0.2)
m.x45 = Var(within=Reals,bounds=(0,0.1),initialize=0.1)
m.x46 = Var(within=Reals,bounds=(0,0.01),initialize=0.01)
m.x47 = Var(within=Reals,bounds=(0.99,1),initialize=0.99)
m.x48 = Var(within=Reals,bounds=(0.99,1),initialize=0.99)
m.x49 = Var(within=Reals,bounds=(0.9,1),initialize=0.9)
m.x50 = Var(within=Reals,bounds=(0.9,1),initialize=0.9)
m.x51 = Var(within=Reals,bounds=(0,0.4),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x60 = Var(within=Reals,bounds=(100,10000),initialize=100)
m.x61 = Var(within=Reals,bounds=(100,10000),initialize=100)
m.x62 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x63 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x64 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x65 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x66 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x67 = Var(within=Reals,bounds=(8.9427,9.776),initialize=9.2)
m.x68 = Var(within=Reals,bounds=(8.9427,9.776),initialize=9.2)
m.x69 = Var(within=Reals,bounds=(3.4474,3.4474),initialize=3.4474)
m.x70 = Var(within=Reals,bounds=(3.4474,3.4474),initialize=3.4474)
m.x71 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,200),initialize=100)
m.x73 = Var(within=Reals,bounds=(0.0123470606886499,0.149543100293268),initialize=0.0279876834879775)
m.x74 = Var(within=Reals,bounds=(0.0123470606886499,0.149543100293268),initialize=0.0279876834879775)
m.x75 = Var(within=Reals,bounds=(0,0.973),initialize=0)
m.x76 = Var(within=Reals,bounds=(0,0.973),initialize=0.631288202460474)
m.x77 = Var(within=Reals,bounds=(0,0.9964),initialize=0.9964)
m.x78 = Var(within=Reals,bounds=(0,0.9964),initialize=0.983198899851187)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=2.58828163008795)
m.x81 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x82 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x83 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x84 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x85 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x86 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x87 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x88 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x89 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x90 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x91 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x92 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x93 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x94 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x95 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x96 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x97 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x98 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x99 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x100 = Var(within=Reals,bounds=(64.5007008990702,77.2227743679247),initialize=64.5007008990702)
m.x101 = Var(within=Reals,bounds=(25.4212355554268,71.8155004462401),initialize=25.4212355554268)
m.x102 = Var(within=Reals,bounds=(0.0138111626934871,0.966001232416845),initialize=0.0138111626934871)
m.x103 = Var(within=Reals,bounds=(0.00417075923666799,0.485767742437289),initialize=0.00417075923666799)
m.x104 = Var(within=Reals,bounds=(4.61664420746077E-6,0.0127264482193605),initialize=4.61664420746077E-6)
m.x105 = Var(within=Reals,bounds=(30.9258989415266,30.9258989415266),initialize=30.9258989415266)
m.x106 = Var(within=Reals,bounds=(0.0320382713504675,0.0320382713504675),initialize=0.0320382713504675)
m.x107 = Var(within=Reals,bounds=(72.8375901865726,72.8375901865726),initialize=72.8375901865726)
m.x108 = Var(within=Reals,bounds=(1.02,1.02),initialize=1.02)
m.x109 = Var(within=Reals,bounds=(0.0999999999999999,0.4),initialize=0.134841135095974)
m.x110 = Var(within=Reals,bounds=(0.0383912908193329,0.181226443114204),initialize=0.0536586464719058)
m.x111 = Var(within=Reals,bounds=(0.235127309588761,0.811908497892595),initialize=0.30104160941061)
m.x112 = Var(within=Reals,bounds=(0.0999999999999999,0.4),initialize=0.131860029741654)
m.x113 = Var(within=Reals,bounds=(0.0999999999999999,0.25),initialize=0.131860029741654)
m.x114 = Var(within=Reals,bounds=(0.000960400687475034,0.00432018103288119),initialize=0.00151455376117237)
m.x115 = Var(within=Reals,bounds=(1.74971545292808,3.11123279137615),initialize=2.00246043473075)
m.x116 = Var(within=Reals,bounds=(0.0999999999999999,0.25),initialize=0.124026629740688)
m.x117 = Var(within=Reals,bounds=(72.5237288782701,86.3238670975489),initialize=73.815677824734)
m.x118 = Var(within=Reals,bounds=(50.1320713690689,134.947014894021),initialize=55.4814551455367)
m.x119 = Var(within=Reals,bounds=(0.235127309588761,10.096515646078),initialize=0.3523260833776)
m.x120 = Var(within=Reals,bounds=(0.0999999999999999,6.67474646708393),initialize=0.157238297309172)
m.x121 = Var(within=Reals,bounds=(0.000960400687475034,0.835128263080712),initialize=0.00202241220741713)
m.x122 = Var(within=Reals,bounds=(64.5007008990702,77.2227743679247),initialize=64.5007008990702)
m.x123 = Var(within=Reals,bounds=(25.4212355554268,71.8155004462401),initialize=25.4212355554268)
m.x124 = Var(within=Reals,bounds=(0.0138111626934871,0.966001232416845),initialize=0.0138111626934871)
m.x125 = Var(within=Reals,bounds=(0.00417075923666799,0.485767742437289),initialize=0.00417075923666799)
m.x126 = Var(within=Reals,bounds=(4.61664420746077E-6,0.0127264482193605),initialize=4.61664420746077E-6)
m.x127 = Var(within=Reals,bounds=(0,0.5),initialize=0)
m.x128 = Var(within=Reals,bounds=(0.5,1),initialize=0.5)
m.x129 = Var(within=Reals,bounds=(0,1),initialize=0.9)
m.x130 = Var(within=Reals,bounds=(0,1),initialize=0.1)
m.x131 = Var(within=Reals,bounds=(0,1),initialize=0.2)
m.x132 = Var(within=Reals,bounds=(0,1),initialize=0.8)
m.x133 = Var(within=Reals,bounds=(0,10),initialize=2.5)
m.x134 = Var(within=Reals,bounds=(0,10),initialize=2.5)
m.x135 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x136 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x137 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x138 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x139 = Var(within=Reals,bounds=(0,10),initialize=2.5)
m.x140 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x141 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x142 = Var(within=Reals,bounds=(0,50),initialize=0)
m.x143 = Var(within=Reals,bounds=(0,50),initialize=0)
m.x144 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x145 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x146 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x147 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x148 = Var(within=Reals,bounds=(0,50),initialize=34.535651402112)
m.x149 = Var(within=Reals,bounds=(0,50),initialize=34.535651402112)
m.x150 = Var(within=Reals,bounds=(0,50),initialize=29.4431612871982)
m.x151 = Var(within=Reals,bounds=(0,10),initialize=5.09249011491374)
m.x152 = Var(within=Reals,bounds=(0,10),initialize=1.01849802298275)
m.x153 = Var(within=Reals,bounds=(0,10),initialize=4.07399209193099)
m.x154 = Var(within=Reals,bounds=(0,10),initialize=4.07399209193099)
m.x155 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x156 = Var(within=Reals,bounds=(0,10),initialize=4.07399209193099)
m.x157 = Var(within=Reals,bounds=(0,10),initialize=4.07399209193099)
m.x158 = Var(within=Reals,bounds=(0,10),initialize=0.202097472669234)
m.x159 = Var(within=Reals,bounds=(0,10),initialize=3.87189461926176)
m.x160 = Var(within=Reals,bounds=(0,10),initialize=0.18188772540231)
m.x161 = Var(within=Reals,bounds=(0,10),initialize=0.0202097472669234)
m.x162 = Var(within=Reals,bounds=(0,10),initialize=3.87189461926176)
m.x163 = Var(within=Reals,bounds=(2.08,2.08),initialize=2.08)
m.x164 = Var(within=Reals,bounds=(0,10),initialize=1.46737164226671)
m.x165 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x166 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x167 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x168 = Var(within=Reals,bounds=(0,10),initialize=1.46737164226671)
m.x169 = Var(within=Reals,bounds=(0,10),initialize=1.46737164226671)
m.x170 = Var(within=Reals,bounds=(0,10),initialize=1.46737164226671)
m.x171 = Var(within=Reals,bounds=(0,10),initialize=1.3805756363038)
m.x172 = Var(within=Reals,bounds=(0,10),initialize=0.0867960059629121)
m.x173 = Var(within=Reals,bounds=(0,10),initialize=2.1)
m.x174 = Var(within=Reals,bounds=(0,10),initialize=2.1)
m.x175 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x176 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x177 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x178 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x179 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x180 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x181 = Var(within=Reals,bounds=(0,10),initialize=0.0202097472669234)
m.x182 = Var(within=Reals,bounds=(0,10),initialize=0.0202097472669234)
m.x183 = Var(within=Reals,bounds=(0,50),initialize=5.88863225743964)
m.x184 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x185 = Var(within=Reals,bounds=(0,50),initialize=5.88863225743964)
m.x186 = Var(within=Reals,bounds=(0,10),initialize=3.30950223275502)
m.x187 = Var(within=Reals,bounds=(0,50),initialize=2.57913002468462)
m.x188 = Var(within=Reals,bounds=(0,50),initialize=3)
m.x189 = Var(within=Reals,bounds=(0,50),initialize=23.5545290297586)
m.x190 = Var(within=Reals,bounds=(0,50),initialize=24)
m.x191 = Var(within=Reals,bounds=(0,50),initialize=24)
m.x192 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x193 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x194 = Var(within=Reals,bounds=(0,10),initialize=0.0202097472669234)
m.x195 = Var(within=Reals,bounds=(0,10),initialize=0.0201985861270852)
m.x196 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x197 = Var(within=Reals,bounds=(0,10),initialize=2.1)
m.x198 = Var(within=Reals,bounds=(0,10),initialize=0.00404194945338468)
m.x199 = Var(within=Reals,bounds=(0,10),initialize=0.00405311059322287)
m.x200 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x201 = Var(within=Reals,bounds=(0,50),initialize=33.7)
m.x202 = Var(within=Reals,bounds=(0,50),initialize=34.535651402112)
m.x203 = Var(within=Reals,bounds=(0,50),initialize=27)
m.x204 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x205 = Var(within=Reals,bounds=(0,10),initialize=2.375)
m.x206 = Var(within=Reals,bounds=(0,10),initialize=0.125)
m.x207 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x208 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x209 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x210 = Var(within=Reals,bounds=(0,10),initialize=2.375)
m.x211 = Var(within=Reals,bounds=(0,10),initialize=0.125)
m.x212 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x213 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x214 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x215 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x216 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x217 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x218 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x219 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x220 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x221 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x222 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x223 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x224 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x225 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x226 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x227 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x228 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x229 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x230 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x231 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x232 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x233 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x234 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x235 = Var(within=Reals,bounds=(0,10),initialize=2.375)
m.x236 = Var(within=Reals,bounds=(0,10),initialize=0.125)
m.x237 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x238 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x239 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x240 = Var(within=Reals,bounds=(0,30),initialize=16.875)
m.x241 = Var(within=Reals,bounds=(0,30),initialize=12.625)
m.x242 = Var(within=Reals,bounds=(0,30),initialize=0.1)
m.x243 = Var(within=Reals,bounds=(0,30),initialize=4.1)
m.x244 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x245 = Var(within=Reals,bounds=(0,30),initialize=16.875)
m.x246 = Var(within=Reals,bounds=(0,30),initialize=12.625)
m.x247 = Var(within=Reals,bounds=(0,30),initialize=0.1)
m.x248 = Var(within=Reals,bounds=(0,30),initialize=4.1)
m.x249 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x250 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x251 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x252 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x253 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x254 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x255 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x256 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x257 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x258 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x259 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x260 = Var(within=Reals,bounds=(0,30),initialize=16.875)
m.x261 = Var(within=Reals,bounds=(0,30),initialize=12.625)
m.x262 = Var(within=Reals,bounds=(0,30),initialize=0.1)
m.x263 = Var(within=Reals,bounds=(0,30),initialize=4.1)
m.x264 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x265 = Var(within=Reals,bounds=(0,30),initialize=14.3084613593523)
m.x266 = Var(within=Reals,bounds=(0,30),initialize=15.2132816300879)
m.x267 = Var(within=Reals,bounds=(0,30),initialize=2.6447956512075)
m.x268 = Var(within=Reals,bounds=(0,30),initialize=1.51171836991205)
m.x269 = Var(within=Reals,bounds=(0,30),initialize=0.0217429894402205)
m.x270 = Var(within=Reals,bounds=(0,30),initialize=14.3084613593523)
m.x271 = Var(within=Reals,bounds=(0,30),initialize=15.2132816300879)
m.x272 = Var(within=Reals,bounds=(0,30),initialize=2.6447956512075)
m.x273 = Var(within=Reals,bounds=(0,30),initialize=1.51171836991205)
m.x274 = Var(within=Reals,bounds=(0,30),initialize=0.0217429894402205)
m.x275 = Var(within=Reals,bounds=(0,30),initialize=14.3084613593523)
m.x276 = Var(within=Reals,bounds=(0,30),initialize=15.2132816300879)
m.x277 = Var(within=Reals,bounds=(0,30),initialize=2.6447956512075)
m.x278 = Var(within=Reals,bounds=(0,30),initialize=1.51171836991205)
m.x279 = Var(within=Reals,bounds=(0,30),initialize=0.0217429894402205)
m.x280 = Var(within=Reals,bounds=(0,30),initialize=14.3084613593523)
m.x281 = Var(within=Reals,bounds=(0,30),initialize=15.2132816300879)
m.x282 = Var(within=Reals,bounds=(0,30),initialize=3.173754781449)
m.x283 = Var(within=Reals,bounds=(0,30),initialize=1.81406204389447)
m.x284 = Var(within=Reals,bounds=(0,30),initialize=0.0260915873282646)
m.x285 = Var(within=Reals,bounds=(0,30),initialize=14.3084613593523)
m.x286 = Var(within=Reals,bounds=(0,30),initialize=15.2132816300879)
m.x287 = Var(within=Reals,bounds=(0,30),initialize=3.173754781449)
m.x288 = Var(within=Reals,bounds=(0,30),initialize=1.81406204389447)
m.x289 = Var(within=Reals,bounds=(0,30),initialize=0.0260915873282646)
m.x290 = Var(within=Reals,bounds=(0,30),initialize=14.2369190525555)
m.x291 = Var(within=Reals,bounds=(0,30),initialize=15.0611488137871)
m.x292 = Var(within=Reals,bounds=(0,30),initialize=0.12695019125796)
m.x293 = Var(within=Reals,bounds=(0,30),initialize=0.0181406204389447)
m.x294 = Var(within=Reals,bounds=(0,30),initialize=2.60915873282646E-6)
m.x295 = Var(within=Reals,bounds=(0,10),initialize=0.0715423067967613)
m.x296 = Var(within=Reals,bounds=(0,10),initialize=0.152132816300879)
m.x297 = Var(within=Reals,bounds=(0,10),initialize=3.04680459019104)
m.x298 = Var(within=Reals,bounds=(0,10),initialize=1.79592142345552)
m.x299 = Var(within=Reals,bounds=(0,10),initialize=0.0260889781695318)
m.x300 = Var(within=Reals,bounds=(0,10),initialize=0.0143084613593523)
m.x301 = Var(within=Reals,bounds=(0,10),initialize=0.0304265632601759)
m.x302 = Var(within=Reals,bounds=(0,10),initialize=0.609360918038209)
m.x303 = Var(within=Reals,bounds=(0,10),initialize=0.359184284691104)
m.x304 = Var(within=Reals,bounds=(0,10),initialize=0.00521779563390636)
m.x305 = Var(within=Reals,bounds=(0,10),initialize=0.0572338454374091)
m.x306 = Var(within=Reals,bounds=(0,10),initialize=0.121706253040703)
m.x307 = Var(within=Reals,bounds=(0,10),initialize=2.43744367215284)
m.x308 = Var(within=Reals,bounds=(0,10),initialize=1.43673713876442)
m.x309 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x310 = Var(within=Reals,bounds=(0,10),initialize=0.0572338454374091)
m.x311 = Var(within=Reals,bounds=(0,10),initialize=0.121706253040703)
m.x312 = Var(within=Reals,bounds=(0,10),initialize=2.43744367215284)
m.x313 = Var(within=Reals,bounds=(0,10),initialize=1.43673713876442)
m.x314 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x315 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x316 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x317 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x318 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x319 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x320 = Var(within=Reals,bounds=(0,10),initialize=0.0572338454374091)
m.x321 = Var(within=Reals,bounds=(0,10),initialize=0.121706253040703)
m.x322 = Var(within=Reals,bounds=(0,10),initialize=2.43744367215284)
m.x323 = Var(within=Reals,bounds=(0,10),initialize=1.43673713876442)
m.x324 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x325 = Var(within=Reals,bounds=(0,10),initialize=0.0572338454374091)
m.x326 = Var(within=Reals,bounds=(0,10),initialize=0.121706253040703)
m.x327 = Var(within=Reals,bounds=(0,10),initialize=2.43744367215284)
m.x328 = Var(within=Reals,bounds=(0,10),initialize=1.43673713876442)
m.x329 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x330 = Var(within=Reals,bounds=(0,10),initialize=0.0572338454374091)
m.x331 = Var(within=Reals,bounds=(0,10),initialize=0.120489190510296)
m.x332 = Var(within=Reals,bounds=(0,10),initialize=0.0243744367215284)
m.x333 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x334 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x335 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x336 = Var(within=Reals,bounds=(0,10),initialize=0.00121706253040703)
m.x337 = Var(within=Reals,bounds=(0,10),initialize=2.41306923543131)
m.x338 = Var(within=Reals,bounds=(0,10),initialize=1.43673713876442)
m.x339 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x340 = Var(within=Reals,bounds=(0,10),initialize=0.0515104608936682)
m.x341 = Var(within=Reals,bounds=(0,10),initialize=0.108440271459267)
m.x342 = Var(within=Reals,bounds=(0,10),initialize=0.0219369930493755)
m.x343 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x344 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x345 = Var(within=Reals,bounds=(0,10),initialize=0.0057233845437409)
m.x346 = Var(within=Reals,bounds=(0,10),initialize=0.0120489190510296)
m.x347 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x348 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x349 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x350 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x351 = Var(within=Reals,bounds=(0,10),initialize=0.00121706253040703)
m.x352 = Var(within=Reals,bounds=(0,10),initialize=2.41306923543131)
m.x353 = Var(within=Reals,bounds=(0,10),initialize=1.43673713876442)
m.x354 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x355 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x356 = Var(within=Reals,bounds=(0,10),initialize=0.00121706253040703)
m.x357 = Var(within=Reals,bounds=(0,10),initialize=2.38893854307699)
m.x358 = Var(within=Reals,bounds=(0,10),initialize=0.0143673713876442)
m.x359 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x360 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x361 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x362 = Var(within=Reals,bounds=(0,10),initialize=0.024130692354313)
m.x363 = Var(within=Reals,bounds=(0,10),initialize=1.42236976737677)
m.x364 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x365 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x366 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x367 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x368 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x369 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x370 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x371 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x372 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x373 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x374 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x375 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x376 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x377 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x378 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x379 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x380 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x381 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x382 = Var(within=Reals,bounds=(0,10),initialize=0.024130692354313)
m.x383 = Var(within=Reals,bounds=(0,10),initialize=1.42236976737677)
m.x384 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x385 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x386 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x387 = Var(within=Reals,bounds=(0,10),initialize=0.024130692354313)
m.x388 = Var(within=Reals,bounds=(0,10),initialize=1.42236976737677)
m.x389 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x390 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x391 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x392 = Var(within=Reals,bounds=(0,10),initialize=0.024130692354313)
m.x393 = Var(within=Reals,bounds=(0,10),initialize=1.42236976737677)
m.x394 = Var(within=Reals,bounds=(0,10),initialize=0.0208711825356254)
m.x395 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x396 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x397 = Var(within=Reals,bounds=(0,10),initialize=0.0241065616619587)
m.x398 = Var(within=Reals,bounds=(0,10),initialize=1.35125127900793)
m.x399 = Var(within=Reals,bounds=(0,10),initialize=0.00521779563390636)
m.x400 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x401 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x402 = Var(within=Reals,bounds=(0,10),initialize=2.41306923543134E-5)
m.x403 = Var(within=Reals,bounds=(0,10),initialize=0.0711184883688387)
m.x404 = Var(within=Reals,bounds=(0,10),initialize=0.0156533869017191)
m.x405 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x406 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x407 = Var(within=Reals,bounds=(0,10),initialize=0.1)
m.x408 = Var(within=Reals,bounds=(0,10),initialize=2)
m.x409 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x410 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x411 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x412 = Var(within=Reals,bounds=(0,10),initialize=0.1)
m.x413 = Var(within=Reals,bounds=(0,10),initialize=2)
m.x414 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x415 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x416 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x417 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x418 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x419 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x420 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x421 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x422 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x423 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x424 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x425 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x426 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x427 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x428 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x429 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x430 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x431 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x432 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x433 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x434 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x435 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x436 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x437 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x438 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x439 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x440 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x441 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x442 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x443 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x444 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x445 = Var(within=Reals,bounds=(0,10),initialize=0.0057233845437409)
m.x446 = Var(within=Reals,bounds=(0,10),initialize=0.0120489190510296)
m.x447 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x448 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x449 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x450 = Var(within=Reals,bounds=(0,10),initialize=0.0057233845437409)
m.x451 = Var(within=Reals,bounds=(0,10),initialize=0.0120489190510296)
m.x452 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x453 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x454 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x455 = Var(within=Reals,bounds=(0,30),initialize=2.8473838105111)
m.x456 = Var(within=Reals,bounds=(0,30),initialize=3.01222976275741)
m.x457 = Var(within=Reals,bounds=(0,30),initialize=0.025390038251592)
m.x458 = Var(within=Reals,bounds=(0,30),initialize=0.00362812408778893)
m.x459 = Var(within=Reals,bounds=(0,30),initialize=5.21831746565293E-7)
m.x460 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x461 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x462 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x463 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x464 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x465 = Var(within=Reals,bounds=(0,30),initialize=2.8473838105111)
m.x466 = Var(within=Reals,bounds=(0,30),initialize=3.01222976275741)
m.x467 = Var(within=Reals,bounds=(0,30),initialize=0.025390038251592)
m.x468 = Var(within=Reals,bounds=(0,30),initialize=0.00362812408778893)
m.x469 = Var(within=Reals,bounds=(0,30),initialize=5.21831746565293E-7)
m.x470 = Var(within=Reals,bounds=(0,10),initialize=0.569476762102221)
m.x471 = Var(within=Reals,bounds=(0,10),initialize=2.71100678648167)
m.x472 = Var(within=Reals,bounds=(0,10),initialize=0.025390038251592)
m.x473 = Var(within=Reals,bounds=(0,10),initialize=0.00362812408778893)
m.x474 = Var(within=Reals,bounds=(0,10),initialize=5.21831746565293E-7)
m.x475 = Var(within=Reals,bounds=(0,30),initialize=2.27790704840888)
m.x476 = Var(within=Reals,bounds=(0,30),initialize=0.301222976275741)
m.x477 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x478 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x479 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x480 = Var(within=Reals,bounds=(0,30),initialize=2.5)
m.x481 = Var(within=Reals,bounds=(0,30),initialize=0.5)
m.x482 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x483 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x484 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x485 = Var(within=Reals,bounds=(0,30),initialize=11.3895352420444)
m.x486 = Var(within=Reals,bounds=(0,30),initialize=12.0489190510297)
m.x487 = Var(within=Reals,bounds=(0,30),initialize=0.101560153006368)
m.x488 = Var(within=Reals,bounds=(0,30),initialize=0.0145124963511557)
m.x489 = Var(within=Reals,bounds=(0,30),initialize=2.08732698626117E-6)
m.x490 = Var(within=Reals,bounds=(0,30),initialize=12)
m.x491 = Var(within=Reals,bounds=(0,30),initialize=12)
m.x492 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x493 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x494 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x495 = Var(within=Reals,bounds=(0,30),initialize=12)
m.x496 = Var(within=Reals,bounds=(0,30),initialize=12)
m.x497 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x498 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x499 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x500 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x501 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x502 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x503 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x504 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x505 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x506 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x507 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x508 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x509 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x510 = Var(within=Reals,bounds=(0,10),initialize=0.0057233845437409)
m.x511 = Var(within=Reals,bounds=(0,10),initialize=0.0120489190510296)
m.x512 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x513 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x514 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x515 = Var(within=Reals,bounds=(0,10),initialize=0.00572166804332791)
m.x516 = Var(within=Reals,bounds=(0,10),initialize=0.0120392876209329)
m.x517 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x518 = Var(within=Reals,bounds=(0,10),initialize=1.86790671548988E-7)
m.x519 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x520 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x521 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x522 = Var(within=Reals,bounds=(0,10),initialize=0.00243744367215284)
m.x523 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x524 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x525 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x526 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x527 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x528 = Var(within=Reals,bounds=(0,10),initialize=2.1)
m.x529 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x530 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x531 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x532 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x533 = Var(within=Reals,bounds=(0,10),initialize=0.00404194945338468)
m.x534 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x535 = Var(within=Reals,bounds=(0,10),initialize=1.71650041299806E-6)
m.x536 = Var(within=Reals,bounds=(0,10),initialize=9.63143009674594E-6)
m.x537 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x538 = Var(within=Reals,bounds=(0,10),initialize=0.00404176266271313)
m.x539 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x540 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x541 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x542 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x543 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x544 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x545 = Var(within=Reals,bounds=(0,30),initialize=16.875)
m.x546 = Var(within=Reals,bounds=(0,30),initialize=12.625)
m.x547 = Var(within=Reals,bounds=(0,30),initialize=0.1)
m.x548 = Var(within=Reals,bounds=(0,30),initialize=4.1)
m.x549 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x550 = Var(within=Reals,bounds=(0,30),initialize=14.3084613593523)
m.x551 = Var(within=Reals,bounds=(0,30),initialize=15.2132816300879)
m.x552 = Var(within=Reals,bounds=(0,30),initialize=3.173754781449)
m.x553 = Var(within=Reals,bounds=(0,30),initialize=1.81406204389447)
m.x554 = Var(within=Reals,bounds=(0,30),initialize=0.0260915873282646)
m.x555 = Var(within=Reals,bounds=(0,30),initialize=14.5)
m.x556 = Var(within=Reals,bounds=(0,30),initialize=12.5)
m.x557 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x558 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x559 = Var(within=Reals,bounds=(0,30),initialize=0)
m.x560 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x561 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x562 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x563 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x564 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x565 = Var(within=Reals,bounds=(3.93,3.93),initialize=3.93)
m.x566 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x567 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x568 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x569 = Var(within=Reals,bounds=(0.1,4),initialize=0.75)
m.x570 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x571 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x572 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x573 = Var(within=Reals,bounds=(0.1,4),initialize=2.5174)
m.x574 = Var(within=Reals,bounds=(0.1,4),initialize=2.5174)
m.x575 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x576 = Var(within=Reals,bounds=(0.1,4),initialize=2.5174)
m.x577 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x578 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x579 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x580 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x581 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x582 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x583 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x584 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x585 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x586 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x587 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x588 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x589 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x590 = Var(within=Reals,bounds=(0.1,4),initialize=1.02)
m.x591 = Var(within=Reals,bounds=(0.1,4),initialize=1.02)
m.x592 = Var(within=Reals,bounds=(0.1,4),initialize=1.02)
m.x593 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x594 = Var(within=Reals,bounds=(0.1,4),initialize=1.02)
m.x595 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x596 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x597 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x598 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x599 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x600 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x601 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x602 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x603 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x604 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x605 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x606 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x607 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x608 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x609 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x610 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x611 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x612 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x613 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x614 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x615 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x616 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x617 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x618 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x619 = Var(within=Reals,bounds=(0.1,4),initialize=0.57765)
m.x620 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x621 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x622 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x623 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x624 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x625 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x626 = Var(within=Reals,bounds=(0.1,4),initialize=0.1)
m.x627 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x628 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x629 = Var(within=Reals,bounds=(3.93,3.93),initialize=3.93)
m.x630 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x631 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x632 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x633 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x634 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x635 = Var(within=Reals,bounds=(0.1,4),initialize=3)
m.x636 = Var(within=Reals,bounds=(0.1,4),initialize=2.3106)
m.x637 = Var(within=Reals,bounds=(3,3),initialize=3)
m.x638 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x639 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x640 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x641 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x642 = Var(within=Reals,bounds=(3,10),initialize=4.12662545441923)
m.x643 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x644 = Var(within=Reals,bounds=(3,10),initialize=3.5)
m.x645 = Var(within=Reals,bounds=(8.943,10),initialize=8.943)
m.x646 = Var(within=Reals,bounds=(3,10),initialize=8.943)
m.x647 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x648 = Var(within=Reals,bounds=(3,10),initialize=8.943)
m.x649 = Var(within=Reals,bounds=(3,10),initialize=9.66219765047097)
m.x650 = Var(within=Reals,bounds=(3,10),initialize=9.66219765047097)
m.x651 = Var(within=Reals,bounds=(3,10),initialize=9.66219765047097)
m.x652 = Var(within=Reals,bounds=(3,8.943),initialize=8.943)
m.x653 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x654 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x655 = Var(within=Reals,bounds=(3,4.5),initialize=3)
m.x656 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x657 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x658 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x659 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x660 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x661 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x662 = Var(within=Reals,bounds=(3.2,3.2),initialize=3.2)
m.x663 = Var(within=Reals,bounds=(4.53108357742166,4.53108357742166),initialize=4.53108357742166)
m.x664 = Var(within=Reals,bounds=(3,10),initialize=3.2)
m.x665 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x666 = Var(within=Reals,bounds=(3,10),initialize=4.63108357742166)
m.x667 = Var(within=Reals,bounds=(3.52825122106359,4.05588566108941),initialize=3.62825122106359)
m.x668 = Var(within=Reals,bounds=(3.83313403643788,4.40384530495223),initialize=3.93313403643788)
m.x669 = Var(within=Reals,bounds=(3,10),initialize=3.93313403643788)
m.x670 = Var(within=Reals,bounds=(3.83313403643788,4.18943951202988),initialize=3.93313403643788)
m.x671 = Var(within=Reals,bounds=(5.27759721989672,5.73574462016099),initialize=5.37759721989672)
m.x672 = Var(within=Reals,bounds=(3,10),initialize=3.93313403643788)
m.x673 = Var(within=Reals,bounds=(3,10),initialize=3.93313403643788)
m.x674 = Var(within=Reals,bounds=(3,10),initialize=3.93313403643788)
m.x675 = Var(within=Reals,bounds=(3,10),initialize=4)
m.x676 = Var(within=Reals,bounds=(3.83313403643788,6.5),initialize=4)
m.x677 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x678 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x679 = Var(within=Reals,bounds=(3,10),initialize=6.6764654676946)
m.x680 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x681 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x682 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x683 = Var(within=Reals,bounds=(3,4.5),initialize=3)
m.x684 = Var(within=Reals,bounds=(2,10),initialize=3)
m.x685 = Var(within=Reals,bounds=(2,10),initialize=2)
m.x686 = Var(within=Reals,bounds=(2,10),initialize=2)
m.x687 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x688 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x689 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x690 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x691 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x692 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x693 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x694 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x695 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x696 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x697 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x698 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x699 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x700 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x701 = Var(within=Reals,bounds=(3,3),initialize=3)
m.x702 = Var(within=Reals,bounds=(3,3),initialize=3)
m.x703 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x704 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x705 = Var(within=Reals,bounds=(3,10),initialize=8.693)
m.x706 = Var(within=Reals,bounds=(3,10),initialize=5)
m.x707 = Var(within=Reals,bounds=(3,10),initialize=3)
m.x708 = Var(within=Reals,bounds=(3,10),initialize=6.6764654676946)
m.b709 = Var(within=Binary,bounds=(0,1),initialize=1)
m.b710 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b711 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b712 = Var(within=Binary,bounds=(0,1),initialize=1)
m.b713 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b714 = Var(within=Binary,bounds=(0,1),initialize=1)
m.b715 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b716 = Var(within=Binary,bounds=(0,1),initialize=1)
m.b717 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b718 = Var(within=Binary,bounds=(0,1),initialize=1)
m.b719 = Var(within=Binary,bounds=(0,1),initialize=1)
m.b720 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b721 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x722 = Var(within=Reals,bounds=(22.5,22.5),initialize=22.5)
m.x723 = Var(within=Reals,bounds=(None,100000000),initialize=0)

m.obj = Objective(expr=m.x723, sense=maximize)

m.c1 = Constraint(expr=m.x198*m.x630 - 0.0193356277708819*m.x194 == 0)

m.c2 = Constraint(expr=-log((-0.333333333333333) + 0.333333333333333*4**(0.0001 + 0.333*m.x1)) + m.x2 == 0)

m.c3 = Constraint(expr=-log((-2.5) + 2.5*1.4**(1 + 0.333*m.x1)) + m.x3 == 0)

m.c4 = Constraint(expr=-log((-0.333333333333333) + 0.333333333333333*4**(1 + 0.333*m.x1)) + m.x4 == 0)

m.c5 = Constraint(expr=exp(m.x4)*m.x518 - exp(m.x2)*m.x533 - m.x513 == 0)

m.c6 = Constraint(expr=exp(m.x3)*m.x517 - m.x512 == 0)

m.c7 = Constraint(expr= - 0.999700089973008*m.x510 + m.x515 == 0)

m.c8 = Constraint(expr= - 0.999200639488409*m.x511 + m.x516 == 0)

m.c9 = Constraint(expr= - 0.0001*m.x514 + m.x519 == 0)

m.c10 = Constraint(expr=   m.x510 - m.x515 + m.x530 - m.x535 == 0)

m.c11 = Constraint(expr=   m.x511 - m.x516 + m.x531 - m.x536 == 0)

m.c12 = Constraint(expr=   m.x512 - m.x517 + m.x532 - m.x537 == 0)

m.c13 = Constraint(expr=   m.x513 - m.x518 + m.x533 - m.x538 == 0)

m.c14 = Constraint(expr=   m.x514 - m.x519 + m.x534 - m.x539 == 0)

m.c15 = Constraint(expr=   m.x194 + m.x198 - 25*m.b721 <= 0)

m.c16 = Constraint(expr=   m.x630 - m.x631 == 0)

m.c17 = Constraint(expr=   m.x702 - m.x703 == 0)

m.c18 = Constraint(expr=   m.x626 - m.x627 == 0)

m.c19 = Constraint(expr= - m.x626 + m.x630 == 0)

m.c20 = Constraint(expr= - m.x699 + m.x702 == 0)

m.c21 = Constraint(expr= - m.x225 + m.x230 == 0)

m.c22 = Constraint(expr= - m.x226 + m.x231 == 0)

m.c23 = Constraint(expr= - m.x227 + m.x232 == 0)

m.c24 = Constraint(expr= - m.x228 + m.x233 == 0)

m.c25 = Constraint(expr= - m.x229 + m.x234 == 0)

m.c26 = Constraint(expr= - m.x490 + m.x495 == 0)

m.c27 = Constraint(expr= - m.x491 + m.x496 == 0)

m.c28 = Constraint(expr= - m.x492 + m.x497 == 0)

m.c29 = Constraint(expr= - m.x493 + m.x498 == 0)

m.c30 = Constraint(expr= - m.x494 + m.x499 == 0)

m.c31 = Constraint(expr= - m.x515 + m.x520 == 0)

m.c32 = Constraint(expr= - m.x516 + m.x521 == 0)

m.c33 = Constraint(expr= - m.x517 + m.x522 == 0)

m.c34 = Constraint(expr= - m.x518 + m.x523 == 0)

m.c35 = Constraint(expr= - m.x519 + m.x524 == 0)

m.c36 = Constraint(expr= - m.x475 + m.x480 == 0)

m.c37 = Constraint(expr= - m.x476 + m.x481 == 0)

m.c38 = Constraint(expr= - m.x477 + m.x482 == 0)

m.c39 = Constraint(expr= - m.x478 + m.x483 == 0)

m.c40 = Constraint(expr= - m.x479 + m.x484 == 0)

m.c41 = Constraint(expr=-m.x9*m.x641 + m.x642 == 0)

m.c42 = Constraint(expr=-m.x10*m.x694 + m.x695 == 0)

m.c43 = Constraint(expr=-m.x11*m.x699 + m.x700 == 0)

m.c44 = Constraint(expr=-m.x12*m.x691 + m.x692 == 0)

m.c45 = Constraint(expr=-9.62962962962963*m.x641*m.x137*(-0.3665 + 0.3665*m.x9) + m.x5 == 0)

m.c46 = Constraint(expr=-9.62962962962963*m.x694*m.x190*(-0.3665 + 0.3665*m.x10) + m.x6 == 0)

m.c47 = Constraint(expr=-9.62962962962963*m.x699*m.x195*(-0.3665 + 0.3665*m.x11) + m.x7 == 0)

m.c48 = Constraint(expr=-9.62962962962963*m.x691*m.x187*(-0.3665 + 0.3665*m.x12) + m.x8 == 0)

m.c49 = Constraint(expr=m.x9**4.33333333333333 - m.x570/m.x569 == 0)

m.c50 = Constraint(expr=m.x10**4.33333333333333 - m.x623/m.x622 == 0)

m.c51 = Constraint(expr=m.x11**4.33333333333333 - m.x628/m.x627 == 0)

m.c52 = Constraint(expr=m.x12**4.33333333333333 - m.x620/m.x619 == 0)

m.c53 = Constraint(expr=   m.x325 - m.x330 - m.x335 == 0)

m.c54 = Constraint(expr=   m.x326 - m.x331 - m.x336 == 0)

m.c55 = Constraint(expr=   m.x327 - m.x332 - m.x337 == 0)

m.c56 = Constraint(expr=   m.x328 - m.x333 - m.x338 == 0)

m.c57 = Constraint(expr=   m.x329 - m.x334 - m.x339 == 0)

m.c58 = Constraint(expr=   m.x350 - m.x355 - m.x360 == 0)

m.c59 = Constraint(expr=   m.x351 - m.x356 - m.x361 == 0)

m.c60 = Constraint(expr=   m.x352 - m.x357 - m.x362 == 0)

m.c61 = Constraint(expr=   m.x353 - m.x358 - m.x363 == 0)

m.c62 = Constraint(expr=   m.x354 - m.x359 - m.x364 == 0)

m.c63 = Constraint(expr=   m.x365 - m.x370 - m.x375 == 0)

m.c64 = Constraint(expr=   m.x366 - m.x371 - m.x376 == 0)

m.c65 = Constraint(expr=   m.x367 - m.x372 - m.x377 == 0)

m.c66 = Constraint(expr=   m.x368 - m.x373 - m.x378 == 0)

m.c67 = Constraint(expr=   m.x369 - m.x374 - m.x379 == 0)

m.c68 = Constraint(expr=log(7500.6168*m.x107) + 897.84/(-7.16 + 100*m.x663) == 15.2243)

m.c69 = Constraint(expr=log(7500.6168*m.x108) + 2788.51/(-52.36 + 100*m.x663) == 15.9008)

m.c70 = Constraint(expr=log(7500.6168*m.x111) + 2788.51/(-52.36 + 100*m.x668) == 15.9008)

m.c71 = Constraint(expr=log(7500.6168*m.x112) + 3096.52/(-53.67 + 100*m.x668) == 16.0137)

m.c72 = Constraint(expr=log(7500.6168*m.x115) + 3096.52/(-53.67 + 100*m.x671) == 16.0137)

m.c73 = Constraint(expr=log(7500.6168*m.x116) + 4602.23/(-70.42 + 100*m.x671) == 16.6832)

m.c74 = Constraint(expr=log(7500.6168*m.x105) + 897.84/(-7.16 + 100*m.x662) == 15.2243)

m.c75 = Constraint(expr=log(7500.6168*m.x106) + 2788.51/(-52.36 + 100*m.x662) == 15.9008)

m.c76 = Constraint(expr=log(7500.6168*m.x109) + 2788.51/(-52.36 + 100*m.x667) == 15.9008)

m.c77 = Constraint(expr=log(7500.6168*m.x110) + 3096.52/(-53.67 + 100*m.x667) == 16.0137)

m.c78 = Constraint(expr=log(7500.6168*m.x113) + 3096.52/(-53.67 + 100*m.x670) == 16.0137)

m.c79 = Constraint(expr=log(7500.6168*m.x114) + 4602.23/(-70.42 + 100*m.x670) == 16.6832)

m.c80 = Constraint(expr=-sqrt(m.x107/m.x108*m.x105/m.x106) + m.x28 == 0)

m.c81 = Constraint(expr=-sqrt(m.x111/m.x112*m.x109/m.x110) + m.x29 == 0)

m.c82 = Constraint(expr=-sqrt(m.x115/m.x116*m.x113/m.x114) + m.x30 == 0)

m.c83 = Constraint(expr=m.x326*m.x19*(-1 + m.x28) - m.x157 == 0)

m.c84 = Constraint(expr=m.x352*m.x20*(-1 + m.x29) - m.x162 == 0)

m.c85 = Constraint(expr=m.x368*m.x21*(-1 + m.x30) - m.x165 == 0)

m.c86 = Constraint(expr= - 1.2*m.x19 + m.x22 == 0)

m.c87 = Constraint(expr= - 1.2*m.x20 + m.x23 == 0)

m.c88 = Constraint(expr= - 1.2*m.x21 + m.x24 == 0)

m.c89 = Constraint(expr=log(m.x28)*m.x13 - log((0.0001 + m.x158)/(0.0001 + m.x332)*(0.0001 + m.x159)/(0.0001 + m.x336))
                         == 0)

m.c90 = Constraint(expr=log(m.x29)*m.x14 - log((0.0001 + m.x163)/(0.0001 + m.x358)*(0.0001 + m.x164)/(0.0001 + m.x362))
                         == 0)

m.c91 = Constraint(expr=log(m.x30)*m.x15 - log((0.0001 + m.x166)/(0.0001 + m.x374)*(0.0001 + m.x167)/(0.0001 + m.x378))
                         == 0)

m.c92 = Constraint(expr= - 4*m.x13 + m.x16 == 0)

m.c93 = Constraint(expr= - 4*m.x14 + m.x17 == 0)

m.c94 = Constraint(expr= - 4*m.x15 + m.x18 == 0)

m.c95 = Constraint(expr= - 0.05*m.x327 + m.x332 <= 0)

m.c96 = Constraint(expr= - 0.05*m.x353 + m.x358 <= 0)

m.c97 = Constraint(expr= - 0.05*m.x369 + m.x374 <= 0)

m.c98 = Constraint(expr=   m.x328 - m.x338 == 0)

m.c99 = Constraint(expr=   m.x329 - m.x339 == 0)

m.c100 = Constraint(expr=   m.x354 - m.x364 == 0)

m.c101 = Constraint(expr=   m.x325 - m.x330 == 0)

m.c102 = Constraint(expr=   m.x351 - m.x356 == 0)

m.c103 = Constraint(expr=   m.x367 - m.x372 == 0)

m.c104 = Constraint(expr=   m.x25 - m.x589 <= 0)

m.c105 = Constraint(expr=   m.x26 - m.x594 <= 0)

m.c106 = Constraint(expr=   m.x27 - m.x597 <= 0)

m.c107 = Constraint(expr=   m.x25 - m.x108 == 0)

m.c108 = Constraint(expr=   m.x26 - m.x112 == 0)

m.c109 = Constraint(expr=   m.x27 - m.x116 == 0)

m.c110 = Constraint(expr=   m.x26 - m.x109 == 0)

m.c111 = Constraint(expr=   m.x27 - m.x113 == 0)

m.c112 = Constraint(expr=   m.x25 - m.x591 == 0)

m.c113 = Constraint(expr=   m.x26 - m.x596 == 0)

m.c114 = Constraint(expr=   m.x27 - m.x599 == 0)

m.c115 = Constraint(expr=   m.x25 - m.x590 == 0)

m.c116 = Constraint(expr=   m.x26 - m.x595 == 0)

m.c117 = Constraint(expr=   m.x27 - m.x598 == 0)

m.c118 = Constraint(expr=   m.x285 - m.x290 - m.x295 == 0)

m.c119 = Constraint(expr=   m.x286 - m.x291 - m.x296 == 0)

m.c120 = Constraint(expr=   m.x287 - m.x292 - m.x297 == 0)

m.c121 = Constraint(expr=   m.x288 - m.x293 - m.x298 == 0)

m.c122 = Constraint(expr=   m.x289 - m.x294 - m.x299 == 0)

m.c123 = Constraint(expr=   m.x425 - m.x430 - m.x435 == 0)

m.c124 = Constraint(expr=   m.x426 - m.x431 - m.x436 == 0)

m.c125 = Constraint(expr=   m.x427 - m.x432 - m.x437 == 0)

m.c126 = Constraint(expr=   m.x428 - m.x433 - m.x438 == 0)

m.c127 = Constraint(expr=   m.x429 - m.x434 - m.x439 == 0)

m.c128 = Constraint(expr=   m.x390 - m.x395 - m.x400 == 0)

m.c129 = Constraint(expr=   m.x391 - m.x396 - m.x401 == 0)

m.c130 = Constraint(expr=   m.x392 - m.x397 - m.x402 == 0)

m.c131 = Constraint(expr=   m.x393 - m.x398 - m.x403 == 0)

m.c132 = Constraint(expr=   m.x394 - m.x399 - m.x404 == 0)

m.c133 = Constraint(expr=m.x34*m.x151 - (m.x100*m.x295 + m.x101*m.x296 + m.x102*m.x297 + m.x103*m.x298 + m.x104*m.x299)
                          == 0)

m.c134 = Constraint(expr=m.x35*m.x179 - (m.x122*m.x435 + m.x123*m.x436 + m.x124*m.x437 + m.x125*m.x438 + m.x126*m.x439)
                          == 0)

m.c135 = Constraint(expr=m.x36*m.x172 - (m.x117*m.x400 + m.x118*m.x401 + m.x119*m.x402 + m.x120*m.x403 + m.x121*m.x404)
                          == 0)

m.c136 = Constraint(expr=   m.x34 - m.x581 == 0)

m.c137 = Constraint(expr=   m.x35 - m.x609 == 0)

m.c138 = Constraint(expr=   m.x36 - m.x602 == 0)

m.c139 = Constraint(expr=   m.x34 - m.x583 == 0)

m.c140 = Constraint(expr=   m.x35 - m.x611 == 0)

m.c141 = Constraint(expr=   m.x36 - m.x604 == 0)

m.c142 = Constraint(expr=   m.x34 - m.x582 == 0)

m.c143 = Constraint(expr=   m.x35 - m.x610 == 0)

m.c144 = Constraint(expr=   m.x36 - m.x603 == 0)

m.c145 = Constraint(expr=   m.x31 - m.x653 == 0)

m.c146 = Constraint(expr=   m.x32 - m.x681 == 0)

m.c147 = Constraint(expr=   m.x33 - m.x674 == 0)

m.c148 = Constraint(expr=   m.x31 - m.x655 == 0)

m.c149 = Constraint(expr=   m.x32 - m.x683 == 0)

m.c150 = Constraint(expr=   m.x33 - m.x676 == 0)

m.c151 = Constraint(expr=   m.x31 - m.x654 == 0)

m.c152 = Constraint(expr=   m.x32 - m.x682 == 0)

m.c153 = Constraint(expr=   m.x33 - m.x675 == 0)

m.c154 = Constraint(expr=(m.x37*m.x101 + (1 - m.x37)*m.x100)*m.x38 - m.x101*m.x37 == 0)

m.c155 = Constraint(expr=(m.x38*m.x101 + (1 - m.x38)*m.x101)*m.x38 - m.x101*m.x38 == 0)

m.c156 = Constraint(expr=(m.x39*m.x101 + (1 - m.x39)*m.x102)*m.x38 - m.x101*m.x39 == 0)

m.c157 = Constraint(expr=(m.x40*m.x101 + (1 - m.x40)*m.x103)*m.x38 - m.x101*m.x40 == 0)

m.c158 = Constraint(expr=(m.x41*m.x101 + (1 - m.x41)*m.x104)*m.x38 - m.x101*m.x41 == 0)

m.c159 = Constraint(expr=(m.x42*m.x123 + (1 - m.x42)*m.x122)*m.x43 - m.x123*m.x42 == 0)

m.c160 = Constraint(expr=(m.x43*m.x123 + (1 - m.x43)*m.x123)*m.x43 - m.x123*m.x43 == 0)

m.c161 = Constraint(expr=(m.x44*m.x123 + (1 - m.x44)*m.x124)*m.x43 - m.x123*m.x44 == 0)

m.c162 = Constraint(expr=(m.x45*m.x123 + (1 - m.x45)*m.x125)*m.x43 - m.x123*m.x45 == 0)

m.c163 = Constraint(expr=(m.x46*m.x123 + (1 - m.x46)*m.x126)*m.x43 - m.x123*m.x46 == 0)

m.c164 = Constraint(expr=(m.x47*m.x120 + (1 - m.x47)*m.x117)*m.x50 - m.x120*m.x47 == 0)

m.c165 = Constraint(expr=(m.x48*m.x120 + (1 - m.x48)*m.x118)*m.x50 - m.x120*m.x48 == 0)

m.c166 = Constraint(expr=(m.x49*m.x120 + (1 - m.x49)*m.x119)*m.x50 - m.x120*m.x49 == 0)

m.c167 = Constraint(expr=(m.x50*m.x120 + (1 - m.x50)*m.x120)*m.x50 - m.x120*m.x50 == 0)

m.c168 = Constraint(expr=(m.x51*m.x120 + (1 - m.x51)*m.x121)*m.x50 - m.x120*m.x51 == 0)

m.c169 = Constraint(expr=-m.x285*m.x37 + m.x290 == 0)

m.c170 = Constraint(expr=-m.x286*m.x38 + m.x291 == 0)

m.c171 = Constraint(expr=-m.x287*m.x39 + m.x292 == 0)

m.c172 = Constraint(expr=-m.x288*m.x40 + m.x293 == 0)

m.c173 = Constraint(expr=-m.x289*m.x41 + m.x294 == 0)

m.c174 = Constraint(expr=-m.x425*m.x42 + m.x430 == 0)

m.c175 = Constraint(expr=-m.x426*m.x43 + m.x431 == 0)

m.c176 = Constraint(expr=-m.x427*m.x44 + m.x432 == 0)

m.c177 = Constraint(expr=-m.x428*m.x45 + m.x433 == 0)

m.c178 = Constraint(expr=-m.x429*m.x46 + m.x434 == 0)

m.c179 = Constraint(expr=-m.x390*m.x47 + m.x395 == 0)

m.c180 = Constraint(expr=-m.x391*m.x48 + m.x396 == 0)

m.c181 = Constraint(expr=-m.x392*m.x49 + m.x397 == 0)

m.c182 = Constraint(expr=-m.x393*m.x50 + m.x398 == 0)

m.c183 = Constraint(expr=-m.x394*m.x51 + m.x399 == 0)

m.c184 = Constraint(expr=log(7500.6168*m.x100) + 164.9/(3.19 + 100*m.x655) == 13.6333)

m.c185 = Constraint(expr=log(7500.6168*m.x101) + 897.84/(-7.16 + 100*m.x655) == 15.2243)

m.c186 = Constraint(expr=log(7500.6168*m.x102) + 2788.51/(-52.36 + 100*m.x655) == 15.9008)

m.c187 = Constraint(expr=log(7500.6168*m.x103) + 3096.52/(-53.67 + 100*m.x655) == 16.0137)

m.c188 = Constraint(expr=log(7500.6168*m.x104) + 4602.23/(-70.42 + 100*m.x655) == 16.6832)

m.c189 = Constraint(expr=log(7500.6168*m.x122) + 164.9/(3.19 + 100*m.x683) == 13.6333)

m.c190 = Constraint(expr=log(7500.6168*m.x123) + 897.84/(-7.16 + 100*m.x683) == 15.2243)

m.c191 = Constraint(expr=log(7500.6168*m.x124) + 2788.51/(-52.36 + 100*m.x683) == 15.9008)

m.c192 = Constraint(expr=log(7500.6168*m.x125) + 3096.52/(-53.67 + 100*m.x683) == 16.0137)

m.c193 = Constraint(expr=log(7500.6168*m.x126) + 4602.23/(-70.42 + 100*m.x683) == 16.6832)

m.c194 = Constraint(expr=log(7500.6168*m.x117) + 164.9/(3.19 + 100*m.x676) == 13.6333)

m.c195 = Constraint(expr=log(7500.6168*m.x118) + 897.84/(-7.16 + 100*m.x676) == 15.2243)

m.c196 = Constraint(expr=log(7500.6168*m.x119) + 2788.51/(-52.36 + 100*m.x676) == 15.9008)

m.c197 = Constraint(expr=log(7500.6168*m.x120) + 3096.52/(-53.67 + 100*m.x676) == 16.0137)

m.c198 = Constraint(expr=log(7500.6168*m.x121) + 4602.23/(-70.42 + 100*m.x676) == 16.6832)

m.c199 = Constraint(expr=-5.1e-7*(5350*m.x141*m.x645 - 5350*m.x201*m.x705) + m.x52 == 0)

m.c200 = Constraint(expr=   m.x245 - m.x545 == 0)

m.c201 = Constraint(expr=   m.x246 - m.x546 == 0)

m.c202 = Constraint(expr=   m.x247 - m.x547 == 0)

m.c203 = Constraint(expr=   m.x248 - m.x548 == 0)

m.c204 = Constraint(expr=   m.x249 - m.x549 == 0)

m.c205 = Constraint(expr=   m.x573 - m.x633 == -0.4826)

m.c206 = Constraint(expr=   m.x285 - m.x550 == 0)

m.c207 = Constraint(expr=   m.x286 - m.x551 == 0)

m.c208 = Constraint(expr=   m.x287 - m.x552 == 0)

m.c209 = Constraint(expr=   m.x288 - m.x553 == 0)

m.c210 = Constraint(expr=   m.x289 - m.x554 == 0)

m.c211 = Constraint(expr= - m.x420 + m.x425 == 0)

m.c212 = Constraint(expr= - m.x421 + m.x426 == 0)

m.c213 = Constraint(expr= - m.x422 + m.x427 == 0)

m.c214 = Constraint(expr= - m.x423 + m.x428 == 0)

m.c215 = Constraint(expr= - m.x424 + m.x429 == 0)

m.c216 = Constraint(expr=-5.1e-7*(7300*m.x202*m.x706 - 7300*m.x149*m.x653) + m.x53 == 0)

m.c217 = Constraint(expr=-5.1e-7*(20620*m.x176*m.x680 - 20620*m.x177*m.x681) + m.x54 == 0)

m.c218 = Constraint(expr= - m.x581 + m.x634 == 0)

m.c219 = Constraint(expr=   m.x608 - m.x609 == 0)

m.c220 = Constraint(expr= - m.x320 + m.x325 == 0)

m.c221 = Constraint(expr= - m.x321 + m.x326 == 0)

m.c222 = Constraint(expr= - m.x322 + m.x327 == 0)

m.c223 = Constraint(expr= - m.x323 + m.x328 == 0)

m.c224 = Constraint(expr= - m.x324 + m.x329 == 0)

m.c225 = Constraint(expr= - m.x315 + m.x415 == 0)

m.c226 = Constraint(expr= - m.x316 + m.x416 == 0)

m.c227 = Constraint(expr= - m.x317 + m.x417 == 0)

m.c228 = Constraint(expr= - m.x318 + m.x418 == 0)

m.c229 = Constraint(expr= - m.x319 + m.x419 == 0)

m.c230 = Constraint(expr= - m.x380 + m.x385 == 0)

m.c231 = Constraint(expr= - m.x381 + m.x386 == 0)

m.c232 = Constraint(expr= - m.x382 + m.x387 == 0)

m.c233 = Constraint(expr= - m.x383 + m.x388 == 0)

m.c234 = Constraint(expr= - m.x384 + m.x389 == 0)

m.c235 = Constraint(expr= - m.x500 + m.x560 == 0)

m.c236 = Constraint(expr= - m.x501 + m.x561 == 0)

m.c237 = Constraint(expr= - m.x502 + m.x562 == 0)

m.c238 = Constraint(expr= - m.x503 + m.x563 == 0)

m.c239 = Constraint(expr= - m.x504 + m.x564 == 0)

m.c240 = Constraint(expr=-5.1e-7*(20620*m.x157*m.x661 - 20620*m.x156*m.x660) + m.x55 == 0)

m.c241 = Constraint(expr=-0.0105162*m.x175*m.x679 + m.x56 == 0)

m.c242 = Constraint(expr=-5.1e-7*(22500*m.x169*m.x673 - 22500*m.x168*m.x672) + m.x57 == 0)

m.c243 = Constraint(expr=   m.x58 == 0)

m.c244 = Constraint(expr=   m.x588 - m.x589 == 0)

m.c245 = Constraint(expr=   m.x587 - m.x607 == 0)

m.c246 = Constraint(expr=   m.x600 - m.x601 == 0)

m.c247 = Constraint(expr=   m.x624 - m.x636 == 0)

m.c248 = Constraint(expr= - m.x240 + m.x545 == 0)

m.c249 = Constraint(expr= - m.x241 + m.x546 == 0)

m.c250 = Constraint(expr= - m.x242 + m.x547 == 0)

m.c251 = Constraint(expr= - m.x243 + m.x548 == 0)

m.c252 = Constraint(expr= - m.x244 + m.x549 == 0)

m.c253 = Constraint(expr= - m.x280 + m.x550 == 0)

m.c254 = Constraint(expr= - m.x281 + m.x551 == 0)

m.c255 = Constraint(expr= - m.x282 + m.x552 == 0)

m.c256 = Constraint(expr= - m.x283 + m.x553 == 0)

m.c257 = Constraint(expr= - m.x284 + m.x554 == 0)

m.c258 = Constraint(expr=-5.1e-7*(5350*m.x201*m.x705 - 5350*m.x140*m.x644) + m.x59 == 0)

m.c259 = Constraint(expr=-5.1e-7*(7300*m.x148*m.x652 - 7300*m.x202*m.x706) + m.x59 == 0)

m.c260 = Constraint(expr= - m.x644 + m.x706 >= 0.25)

m.c261 = Constraint(expr= - m.x652 + m.x705 <= -0.25)

m.c262 = Constraint(expr= - m.x572 + m.x633 == 0)

m.c263 = Constraint(expr= - m.x580 + m.x634 == 0)

m.c264 = Constraint(expr=   m.x215 - m.x220 - m.x225 == 0)

m.c265 = Constraint(expr=   m.x216 - m.x221 - m.x226 == 0)

m.c266 = Constraint(expr=   m.x217 - m.x222 - m.x227 == 0)

m.c267 = Constraint(expr=   m.x218 - m.x223 - m.x228 == 0)

m.c268 = Constraint(expr=   m.x219 - m.x224 - m.x229 == 0)

m.c269 = Constraint(expr=   m.x465 - m.x470 - m.x475 == 0)

m.c270 = Constraint(expr=   m.x466 - m.x471 - m.x476 == 0)

m.c271 = Constraint(expr=   m.x467 - m.x472 - m.x477 == 0)

m.c272 = Constraint(expr=   m.x468 - m.x473 - m.x478 == 0)

m.c273 = Constraint(expr=   m.x469 - m.x474 - m.x479 == 0)

m.c274 = Constraint(expr=m.x225 - 0.000552501026785714*(((0.0001 + m.x215)/(0.0001 + m.x135) + (0.0001 + m.x220)/(0.0001
                          + m.x136))*m.x567 - 2*m.x569*(0.0001 + m.x225)/(0.0001 + m.x137))*m.x60 == 0)

m.c275 = Constraint(expr=m.x226 - 2.31045883928571e-5*(((0.0001 + m.x216)/(0.0001 + m.x135) + (0.0001 + m.x221)/(0.0001
                          + m.x136))*m.x567 - 2*m.x569*(0.0001 + m.x226)/(0.0001 + m.x137))*m.x60 == 0)

m.c276 = Constraint(expr=m.x475 - 0.000552501026785714*(((0.0001 + m.x465)/(0.0001 + m.x185) + (0.0001 + m.x470)/(0.0001
                          + m.x186))*m.x617 - 2*m.x619*(0.0001 + m.x475)/(0.0001 + m.x187))*m.x61 == 0)

m.c277 = Constraint(expr=m.x476 - 2.31045883928571e-5*(((0.0001 + m.x466)/(0.0001 + m.x185) + (0.0001 + m.x471)/(0.0001
                          + m.x186))*m.x617 - 2*m.x619*(0.0001 + m.x476)/(0.0001 + m.x187))*m.x61 == 0)

m.c278 = Constraint(expr=   m.x227 == 0)

m.c279 = Constraint(expr=   m.x228 == 0)

m.c280 = Constraint(expr=   m.x229 == 0)

m.c281 = Constraint(expr=   m.x477 == 0)

m.c282 = Constraint(expr=   m.x478 == 0)

m.c283 = Constraint(expr=   m.x479 == 0)

m.c284 = Constraint(expr= - m.x639 + m.x641 == 0)

m.c285 = Constraint(expr= - m.x689 + m.x691 == 0)

m.c286 = Constraint(expr= - m.x567 + m.x569 <= 0)

m.c287 = Constraint(expr= - m.x617 + m.x619 <= 0)

m.c288 = Constraint(expr= - m.x639 + m.x640 == 0)

m.c289 = Constraint(expr= - m.x689 + m.x690 == 0)

m.c290 = Constraint(expr= - m.x567 + m.x568 == 0)

m.c291 = Constraint(expr= - m.x617 + m.x618 == 0)

m.c292 = Constraint(expr= - 0.5*m.x215 + m.x225 >= 0)

m.c293 = Constraint(expr= - 0.5*m.x465 + m.x475 >= 0)

m.c294 = Constraint(expr= - 0.5*m.x137 + m.x225 >= 0)

m.c295 = Constraint(expr= - 0.5*m.x187 + m.x475 >= 0)

m.c296 = Constraint(expr= - m.x210 - m.x230 + m.x235 == 0)

m.c297 = Constraint(expr= - m.x211 - m.x231 + m.x236 == 0)

m.c298 = Constraint(expr= - m.x212 - m.x232 + m.x237 == 0)

m.c299 = Constraint(expr= - m.x213 - m.x233 + m.x238 == 0)

m.c300 = Constraint(expr= - m.x214 - m.x234 + m.x239 == 0)

m.c301 = Constraint(expr= - m.x255 - m.x265 + m.x270 == 0)

m.c302 = Constraint(expr= - m.x256 - m.x266 + m.x271 == 0)

m.c303 = Constraint(expr= - m.x257 - m.x267 + m.x272 == 0)

m.c304 = Constraint(expr= - m.x258 - m.x268 + m.x273 == 0)

m.c305 = Constraint(expr= - m.x259 - m.x269 + m.x274 == 0)

m.c306 = Constraint(expr= - m.x335 + m.x350 - m.x435 == 0)

m.c307 = Constraint(expr= - m.x336 + m.x351 - m.x436 == 0)

m.c308 = Constraint(expr= - m.x337 + m.x352 - m.x437 == 0)

m.c309 = Constraint(expr= - m.x338 + m.x353 - m.x438 == 0)

m.c310 = Constraint(expr= - m.x339 + m.x354 - m.x439 == 0)

m.c311 = Constraint(expr= - m.x370 - m.x395 + m.x405 == 0)

m.c312 = Constraint(expr= - m.x371 - m.x396 + m.x406 == 0)

m.c313 = Constraint(expr= - m.x372 - m.x397 + m.x407 == 0)

m.c314 = Constraint(expr= - m.x373 - m.x398 + m.x408 == 0)

m.c315 = Constraint(expr= - m.x374 - m.x399 + m.x409 == 0)

m.c316 = Constraint(expr= - m.x440 - m.x445 + m.x450 == 0)

m.c317 = Constraint(expr= - m.x441 - m.x446 + m.x451 == 0)

m.c318 = Constraint(expr= - m.x442 - m.x447 + m.x452 == 0)

m.c319 = Constraint(expr= - m.x443 - m.x448 + m.x453 == 0)

m.c320 = Constraint(expr= - m.x444 - m.x449 + m.x454 == 0)

m.c321 = Constraint(expr= - m.x638 + m.x643 + 7*m.b709 <= 7)

m.c322 = Constraint(expr= - m.x642 + m.x643 + 7*m.b710 <= 7)

m.c323 = Constraint(expr= - m.x647 + m.x650 + 7*m.b711 <= 7)

m.c324 = Constraint(expr= - m.x649 + m.x650 + 7*m.b712 <= 7)

m.c325 = Constraint(expr= - m.x663 + m.x666 + 7*m.b714 <= 7)

m.c326 = Constraint(expr=   m.x666 - m.x683 + 7*m.b713 <= 7)

m.c327 = Constraint(expr= - m.x670 + m.x677 + 7*m.b715 <= 7)

m.c328 = Constraint(expr= - m.x675 + m.x677 + 7*m.b716 <= 7)

m.c329 = Constraint(expr= - m.x684 + m.x686 + 7*m.b713 <= 7)

m.c330 = Constraint(expr= - m.x685 + m.x686 + 7*m.b714 <= 7)

m.c331 = Constraint(expr= - m.x638 + m.x643 - 7*m.b709 >= -7)

m.c332 = Constraint(expr= - m.x642 + m.x643 - 7*m.b710 >= -7)

m.c333 = Constraint(expr= - m.x647 + m.x650 - 7*m.b711 >= -7)

m.c334 = Constraint(expr= - m.x649 + m.x650 - 7*m.b712 >= -7)

m.c335 = Constraint(expr= - m.x663 + m.x666 - 7*m.b714 >= -7)

m.c336 = Constraint(expr=   m.x666 - m.x683 - 7*m.b713 >= -7)

m.c337 = Constraint(expr= - m.x670 + m.x677 - 7*m.b715 >= -7)

m.c338 = Constraint(expr= - m.x675 + m.x677 - 7*m.b716 >= -7)

m.c339 = Constraint(expr= - m.x684 + m.x686 - 7*m.b713 >= -7)

m.c340 = Constraint(expr= - m.x685 + m.x686 - 7*m.b714 >= -7)

m.c341 = Constraint(expr= - m.x566 + m.x571 + 4*m.b709 <= 4)

m.c342 = Constraint(expr= - m.x570 + m.x571 + 4*m.b710 <= 4)

m.c343 = Constraint(expr= - m.x575 + m.x578 + 4*m.b711 <= 4)

m.c344 = Constraint(expr= - m.x577 + m.x578 + 4*m.b712 <= 4)

m.c345 = Constraint(expr= - m.x591 + m.x594 + 4*m.b714 <= 4)

m.c346 = Constraint(expr=   m.x594 - m.x611 + 4*m.b713 <= 4)

m.c347 = Constraint(expr= - m.x598 + m.x605 + 4*m.b715 <= 4)

m.c348 = Constraint(expr= - m.x603 + m.x605 + 4*m.b716 <= 4)

m.c349 = Constraint(expr= - m.x612 + m.x614 + 4*m.b713 <= 4)

m.c350 = Constraint(expr= - m.x613 + m.x614 + 4*m.b714 <= 4)

m.c351 = Constraint(expr= - m.x566 + m.x571 - 4*m.b709 >= -4)

m.c352 = Constraint(expr= - m.x570 + m.x571 - 4*m.b710 >= -4)

m.c353 = Constraint(expr= - m.x575 + m.x578 - 4*m.b711 >= -4)

m.c354 = Constraint(expr= - m.x577 + m.x578 - 4*m.b712 >= -4)

m.c355 = Constraint(expr= - m.x591 + m.x594 - 4*m.b714 >= -4)

m.c356 = Constraint(expr=   m.x594 - m.x611 - 4*m.b713 >= -4)

m.c357 = Constraint(expr= - m.x598 + m.x605 - 4*m.b715 >= -4)

m.c358 = Constraint(expr= - m.x603 + m.x605 - 4*m.b716 >= -4)

m.c359 = Constraint(expr= - m.x612 + m.x614 - 4*m.b713 >= -4)

m.c360 = Constraint(expr= - m.x613 + m.x614 - 4*m.b714 >= -4)

m.c361 = Constraint(expr= - m.x235 + m.x240 - m.x410 - m.x525 - m.x555 == 0)

m.c362 = Constraint(expr= - m.x236 + m.x241 - m.x411 - m.x526 - m.x556 == 0)

m.c363 = Constraint(expr= - m.x237 + m.x242 - m.x412 - m.x527 - m.x557 == 0)

m.c364 = Constraint(expr= - m.x238 + m.x243 - m.x413 - m.x528 - m.x558 == 0)

m.c365 = Constraint(expr= - m.x239 + m.x244 - m.x414 - m.x529 - m.x559 == 0)

m.c366 = Constraint(expr= - m.x275 + m.x280 - m.x300 == 0)

m.c367 = Constraint(expr= - m.x276 + m.x281 - m.x301 == 0)

m.c368 = Constraint(expr= - m.x277 + m.x282 - m.x302 == 0)

m.c369 = Constraint(expr= - m.x278 + m.x283 - m.x303 == 0)

m.c370 = Constraint(expr= - m.x279 + m.x284 - m.x304 == 0)

m.c371 = Constraint(expr= - m.x305 + m.x310 - m.x540 == 0)

m.c372 = Constraint(expr= - m.x306 + m.x311 - m.x541 == 0)

m.c373 = Constraint(expr= - m.x307 + m.x312 - m.x542 == 0)

m.c374 = Constraint(expr= - m.x308 + m.x313 - m.x543 == 0)

m.c375 = Constraint(expr= - m.x309 + m.x314 - m.x544 == 0)

m.c376 = Constraint(expr= - m.x450 - m.x505 + m.x510 == 0)

m.c377 = Constraint(expr= - m.x451 - m.x506 + m.x511 == 0)

m.c378 = Constraint(expr= - m.x452 - m.x507 + m.x512 == 0)

m.c379 = Constraint(expr= - m.x453 - m.x508 + m.x513 == 0)

m.c380 = Constraint(expr= - m.x454 - m.x509 + m.x514 == 0)

m.c381 = Constraint(expr= - m.x480 - m.x495 - m.x520 + m.x555 == 0)

m.c382 = Constraint(expr= - m.x481 - m.x496 - m.x521 + m.x556 == 0)

m.c383 = Constraint(expr= - m.x482 - m.x497 - m.x522 + m.x557 == 0)

m.c384 = Constraint(expr= - m.x483 - m.x498 - m.x523 + m.x558 == 0)

m.c385 = Constraint(expr= - m.x484 - m.x499 - m.x524 + m.x559 == 0)

m.c386 = Constraint(expr=30.5*m.x139*m.x643 + 225*m.x174*m.x678 + 225*m.x197*m.x701 + 35*m.x203*m.x707 - 53.5*m.x140*
                         m.x644 == 0)

m.c387 = Constraint(expr=206.2*m.x153*m.x657 + 225*m.x200*m.x704 - 206.2*m.x154*m.x658 == 0)

m.c388 = Constraint(expr=37*m.x182*m.x686 + 35*m.x193*m.x697 - 59.35*m.x194*m.x698 == 0)

m.c389 = Constraint(expr=32*m.x188*m.x692 + 35*m.x191*m.x695 + 35*m.x196*m.x700 - 35*m.x203*m.x707 == 0)

m.c390 = Constraint(expr=m.x148*m.x652 - m.x147*m.x651 + 5.72037037037037*m.x302 + 5.72037037037037*m.x303 == 0)

m.c391 = Constraint(expr=   m.x62 - m.x571 == 0)

m.c392 = Constraint(expr=   m.x62 - m.x606 == 0)

m.c393 = Constraint(expr=   m.x62 - m.x629 == 0)

m.c394 = Constraint(expr=   m.x62 - m.x635 == 0)

m.c395 = Constraint(expr=   m.x63 - m.x579 == 0)

m.c396 = Constraint(expr=   m.x63 - m.x584 == 0)

m.c397 = Constraint(expr=   m.x64 - m.x585 == 0)

m.c398 = Constraint(expr=   m.x64 - m.x632 == 0)

m.c399 = Constraint(expr=   m.x65 - m.x614 == 0)

m.c400 = Constraint(expr=   m.x65 - m.x625 == 0)

m.c401 = Constraint(expr=   m.x66 - m.x620 == 0)

m.c402 = Constraint(expr=   m.x66 - m.x623 == 0)

m.c403 = Constraint(expr=   m.x66 - m.x628 == 0)

m.c404 = Constraint(expr=   m.x62 - m.x572 == 0)

m.c405 = Constraint(expr=   m.x63 - m.x580 == 0)

m.c406 = Constraint(expr=   m.x64 - m.x586 == 0)

m.c407 = Constraint(expr=   m.x65 - m.x626 == 0)

m.c408 = Constraint(expr=   m.x66 - m.x635 == 0)

m.c409 = Constraint(expr= - m.x405 + m.x410 == 0)

m.c410 = Constraint(expr= - m.x406 + m.x411 == 0)

m.c411 = Constraint(expr= - m.x407 + m.x412 == 0)

m.c412 = Constraint(expr= - m.x408 + m.x413 == 0)

m.c413 = Constraint(expr= - m.x409 + m.x414 == 0)

m.c414 = Constraint(expr= - m.x535 + m.x540 == 0)

m.c415 = Constraint(expr= - m.x536 + m.x541 == 0)

m.c416 = Constraint(expr= - m.x537 + m.x542 == 0)

m.c417 = Constraint(expr= - m.x538 + m.x543 == 0)

m.c418 = Constraint(expr= - m.x539 + m.x544 == 0)

m.c419 = Constraint(expr= - m.x677 + m.x678 == 0)

m.c420 = Constraint(expr= - m.x703 + m.x704 == 0)

m.c421 = Constraint(expr= - m.x605 + m.x606 >= 0)

m.c422 = Constraint(expr= - m.x631 + m.x632 >= 0)

m.c423 = Constraint(expr=   m.x250 - 5*m.x252 - 5*m.x253 - 5*m.x254 >= 0)

m.c424 = Constraint(expr=   m.x260 - 5*m.x262 - 5*m.x263 - 5*m.x264 >= 0)

m.c425 = Constraint(expr=-63000000000*exp(-261.67/m.x67) + m.x73 == 0)

m.c426 = Constraint(expr=-63000000000*exp(-261.67/m.x68) + m.x74 == 0)

m.c427 = Constraint(expr=-(1/(1 + 0.372*m.x73*m.x71*sqrt(0.0001 + 0.0166666666666667*m.x253)*(0.0001 + 
                         0.0166666666666667*m.x142)**(-1.5)))**2 - m.x75 == -1)

m.c428 = Constraint(expr=-(1/(1 + 0.372*m.x74*m.x72*sqrt(0.0001 + 0.0166666666666667*m.x263)*(0.0001 + 
                         0.0166666666666667*m.x144)**(-1.5)))**2 - m.x76 == -1)

m.c429 = Constraint(expr=-0.0036*(1 - m.x75)**(-1.544) - m.x77 == -1)

m.c430 = Constraint(expr=-0.0036*(1 - m.x76)**(-1.544) - m.x78 == -1)

m.c431 = Constraint(expr=-m.x75*m.x253 + m.x79 == 0)

m.c432 = Constraint(expr=-m.x76*m.x263 + m.x80 == 0)

m.c433 = Constraint(expr=   m.x79 - m.x253 + m.x258 == 0)

m.c434 = Constraint(expr=   m.x80 - m.x263 + m.x268 == 0)

m.c435 = Constraint(expr=-m.x79*m.x77 - m.x252 + m.x257 == 0)

m.c436 = Constraint(expr=-m.x80*m.x78 - m.x262 + m.x267 == 0)

m.c437 = Constraint(expr= - 0.5*m.x79 - 0.5*m.x252 - m.x254 + 0.5*m.x257 + m.x259 == 0)

m.c438 = Constraint(expr= - 0.5*m.x80 - 0.5*m.x262 - m.x264 + 0.5*m.x267 + m.x269 == 0)

m.c439 = Constraint(expr=   m.x79 - m.x250 + m.x254 + m.x255 - m.x259 == 0)

m.c440 = Constraint(expr=   m.x80 - m.x260 + m.x264 + m.x265 - m.x269 == 0)

m.c441 = Constraint(expr= - m.x79 - m.x251 + m.x256 == 0)

m.c442 = Constraint(expr= - m.x80 - m.x261 + m.x266 == 0)

m.c443 = Constraint(expr=-(54*m.x143*m.x647 - 53.5*m.x142*m.x646) + 501*m.x79 == 0)

m.c444 = Constraint(expr=   25.551*m.x80 - m.x81 == 0)

m.c445 = Constraint(expr= - m.x648 + m.x649 == 0)

m.c446 = Constraint(expr=   m.x69 - m.x574 == 0)

m.c447 = Constraint(expr=   m.x70 - m.x576 == 0)

m.c448 = Constraint(expr= - m.x69 + m.x575 == -0.20684)

m.c449 = Constraint(expr= - m.x70 + m.x577 == -0.20684)

m.c450 = Constraint(expr=   m.x67 - 0.5*m.x646 - 0.5*m.x647 == 0)

m.c451 = Constraint(expr=   m.x68 - 0.5*m.x648 - 0.5*m.x649 == 0)

m.c452 = Constraint(expr=   m.x134 - 50*m.b709 <= 0)

m.c453 = Constraint(expr=   m.x135 - 50*m.b710 <= 0)

m.c454 = Constraint(expr=   m.x142 - 50*m.b711 <= 0)

m.c455 = Constraint(expr=   m.x144 - 50*m.b712 <= 0)

m.c456 = Constraint(expr=   m.x155 - 50*m.b713 <= 0)

m.c457 = Constraint(expr=   m.x156 - 50*m.b714 <= 0)

m.c458 = Constraint(expr=   m.x165 - 50*m.b715 <= 0)

m.c459 = Constraint(expr=   m.x168 - 50*m.b716 <= 0)

m.c460 = Constraint(expr=   m.x184 - 50*m.b717 <= 0)

m.c461 = Constraint(expr=   m.x185 - 50*m.b718 <= 0)

m.c462 = Constraint(expr=   m.x190 - 50*m.b719 <= 0)

m.c463 = Constraint(expr=   m.x192 - 50*m.b720 <= 0)

m.c464 = Constraint(expr=   m.b709 + m.b710 == 1)

m.c465 = Constraint(expr=   m.b711 + m.b712 == 1)

m.c466 = Constraint(expr=   m.b713 + m.b714 == 1)

m.c467 = Constraint(expr=   m.b715 + m.b716 == 1)

m.c468 = Constraint(expr=   m.b717 + m.b718 == 1)

m.c469 = Constraint(expr=   m.b719 + m.b720 == 1)

m.c470 = Constraint(expr= - m.x205 + m.x210 + m.x215 == 0)

m.c471 = Constraint(expr= - m.x206 + m.x211 + m.x216 == 0)

m.c472 = Constraint(expr= - m.x207 + m.x212 + m.x217 == 0)

m.c473 = Constraint(expr= - m.x208 + m.x213 + m.x218 == 0)

m.c474 = Constraint(expr= - m.x209 + m.x214 + m.x219 == 0)

m.c475 = Constraint(expr= - m.x245 + m.x250 + m.x260 == 0)

m.c476 = Constraint(expr= - m.x246 + m.x251 + m.x261 == 0)

m.c477 = Constraint(expr= - m.x247 + m.x252 + m.x262 == 0)

m.c478 = Constraint(expr= - m.x248 + m.x253 + m.x263 == 0)

m.c479 = Constraint(expr= - m.x249 + m.x254 + m.x264 == 0)

m.c480 = Constraint(expr= - m.x310 + m.x315 + m.x320 == 0)

m.c481 = Constraint(expr= - m.x311 + m.x316 + m.x321 == 0)

m.c482 = Constraint(expr= - m.x312 + m.x317 + m.x322 == 0)

m.c483 = Constraint(expr= - m.x313 + m.x318 + m.x323 == 0)

m.c484 = Constraint(expr= - m.x314 + m.x319 + m.x324 == 0)

m.c485 = Constraint(expr= - m.x360 + m.x365 + m.x380 == 0)

m.c486 = Constraint(expr= - m.x361 + m.x366 + m.x381 == 0)

m.c487 = Constraint(expr= - m.x362 + m.x367 + m.x382 == 0)

m.c488 = Constraint(expr= - m.x363 + m.x368 + m.x383 == 0)

m.c489 = Constraint(expr= - m.x364 + m.x369 + m.x384 == 0)

m.c490 = Constraint(expr= - m.x455 + m.x460 + m.x465 == 0)

m.c491 = Constraint(expr= - m.x456 + m.x461 + m.x466 == 0)

m.c492 = Constraint(expr= - m.x457 + m.x462 + m.x467 == 0)

m.c493 = Constraint(expr= - m.x458 + m.x463 + m.x468 == 0)

m.c494 = Constraint(expr= - m.x459 + m.x464 + m.x469 == 0)

m.c495 = Constraint(expr= - m.x485 + m.x490 + m.x500 == 0)

m.c496 = Constraint(expr= - m.x486 + m.x491 + m.x501 == 0)

m.c497 = Constraint(expr= - m.x487 + m.x492 + m.x502 == 0)

m.c498 = Constraint(expr= - m.x488 + m.x493 + m.x503 == 0)

m.c499 = Constraint(expr= - m.x489 + m.x494 + m.x504 == 0)

m.c500 = Constraint(expr=   m.x88 - m.x565 == 0)

m.c501 = Constraint(expr=   m.x89 - m.x573 == 0)

m.c502 = Constraint(expr=   m.x90 - m.x586 == 0)

m.c503 = Constraint(expr=   m.x91 - m.x596 == 0)

m.c504 = Constraint(expr=   m.x92 - m.x615 == 0)

m.c505 = Constraint(expr=   m.x93 - m.x621 == 0)

m.c506 = Constraint(expr=   m.x88 - m.x566 == 0)

m.c507 = Constraint(expr=   m.x88 - m.x567 == 0)

m.c508 = Constraint(expr=   m.x89 - m.x574 == 0)

m.c509 = Constraint(expr=   m.x89 - m.x576 == 0)

m.c510 = Constraint(expr=   m.x90 - m.x587 == 0)

m.c511 = Constraint(expr=   m.x90 - m.x588 == 0)

m.c512 = Constraint(expr=   m.x91 - m.x597 == 0)

m.c513 = Constraint(expr=   m.x91 - m.x600 == 0)

m.c514 = Constraint(expr=   m.x92 - m.x616 == 0)

m.c515 = Constraint(expr=   m.x92 - m.x617 == 0)

m.c516 = Constraint(expr=   m.x93 - m.x622 == 0)

m.c517 = Constraint(expr=   m.x93 - m.x624 == 0)

m.c518 = Constraint(expr=   m.x82 - m.x637 == 0)

m.c519 = Constraint(expr=   m.x83 - m.x645 == 0)

m.c520 = Constraint(expr=   m.x84 - m.x658 == 0)

m.c521 = Constraint(expr=   m.x85 - m.x668 == 0)

m.c522 = Constraint(expr=   m.x86 - m.x687 == 0)

m.c523 = Constraint(expr=   m.x87 - m.x693 == 0)

m.c524 = Constraint(expr=   m.x82 - m.x638 == 0)

m.c525 = Constraint(expr=   m.x82 - m.x639 == 0)

m.c526 = Constraint(expr=   m.x83 - m.x646 == 0)

m.c527 = Constraint(expr=   m.x83 - m.x648 == 0)

m.c528 = Constraint(expr=   m.x84 - m.x659 == 0)

m.c529 = Constraint(expr=   m.x84 - m.x660 == 0)

m.c530 = Constraint(expr=   m.x85 - m.x669 == 0)

m.c531 = Constraint(expr=   m.x85 - m.x672 == 0)

m.c532 = Constraint(expr=   m.x86 - m.x688 == 0)

m.c533 = Constraint(expr=   m.x86 - m.x689 == 0)

m.c534 = Constraint(expr=   m.x87 - m.x694 == 0)

m.c535 = Constraint(expr=   m.x87 - m.x696 == 0)

m.c536 = Constraint(expr=-m.x295*m.x127 + m.x300 == 0)

m.c537 = Constraint(expr=-m.x296*m.x127 + m.x301 == 0)

m.c538 = Constraint(expr=-m.x297*m.x127 + m.x302 == 0)

m.c539 = Constraint(expr=-m.x298*m.x127 + m.x303 == 0)

m.c540 = Constraint(expr=-m.x299*m.x127 + m.x304 == 0)

m.c541 = Constraint(expr=-m.x295*m.x128 + m.x305 == 0)

m.c542 = Constraint(expr=-m.x296*m.x128 + m.x306 == 0)

m.c543 = Constraint(expr=-m.x297*m.x128 + m.x307 == 0)

m.c544 = Constraint(expr=-m.x298*m.x128 + m.x308 == 0)

m.c545 = Constraint(expr=-m.x299*m.x128 + m.x309 == 0)

m.c546 = Constraint(expr=-m.x290*m.x131 + m.x455 == 0)

m.c547 = Constraint(expr=-m.x291*m.x131 + m.x456 == 0)

m.c548 = Constraint(expr=-m.x292*m.x131 + m.x457 == 0)

m.c549 = Constraint(expr=-m.x293*m.x131 + m.x458 == 0)

m.c550 = Constraint(expr=-m.x294*m.x131 + m.x459 == 0)

m.c551 = Constraint(expr=-m.x290*m.x132 + m.x485 == 0)

m.c552 = Constraint(expr=-m.x291*m.x132 + m.x486 == 0)

m.c553 = Constraint(expr=-m.x292*m.x132 + m.x487 == 0)

m.c554 = Constraint(expr=-m.x293*m.x132 + m.x488 == 0)

m.c555 = Constraint(expr=-m.x294*m.x132 + m.x489 == 0)

m.c556 = Constraint(expr=-m.x330*m.x129 + m.x340 == 0)

m.c557 = Constraint(expr=-m.x331*m.x129 + m.x341 == 0)

m.c558 = Constraint(expr=-m.x332*m.x129 + m.x342 == 0)

m.c559 = Constraint(expr=-m.x333*m.x129 + m.x343 == 0)

m.c560 = Constraint(expr=-m.x334*m.x129 + m.x344 == 0)

m.c561 = Constraint(expr=-m.x330*m.x130 + m.x345 == 0)

m.c562 = Constraint(expr=-m.x331*m.x130 + m.x346 == 0)

m.c563 = Constraint(expr=-m.x332*m.x130 + m.x347 == 0)

m.c564 = Constraint(expr=-m.x333*m.x130 + m.x348 == 0)

m.c565 = Constraint(expr=-m.x334*m.x130 + m.x349 == 0)

m.c566 = Constraint(expr=   m.x127 + m.x128 == 1)

m.c567 = Constraint(expr=   m.x131 + m.x132 == 1)

m.c568 = Constraint(expr=   m.x129 + m.x130 == 1)

m.c569 = Constraint(expr=   m.x97 - m.x583 == 0)

m.c570 = Constraint(expr=   m.x98 - m.x582 == 0)

m.c571 = Constraint(expr=   m.x99 - m.x590 == 0)

m.c572 = Constraint(expr=   m.x97 - m.x584 == 0)

m.c573 = Constraint(expr=   m.x97 - m.x585 == 0)

m.c574 = Constraint(expr=   m.x98 - m.x615 == 0)

m.c575 = Constraint(expr=   m.x98 - m.x621 == 0)

m.c576 = Constraint(expr=   m.x99 - m.x592 == 0)

m.c577 = Constraint(expr=   m.x99 - m.x593 == 0)

m.c578 = Constraint(expr=   m.x94 - m.x655 == 0)

m.c579 = Constraint(expr=   m.x95 - m.x654 == 0)

m.c580 = Constraint(expr=   m.x96 - m.x662 == 0)

m.c581 = Constraint(expr=   m.x94 - m.x656 == 0)

m.c582 = Constraint(expr=   m.x94 - m.x657 == 0)

m.c583 = Constraint(expr=   m.x95 - m.x687 == 0)

m.c584 = Constraint(expr=   m.x95 - m.x693 == 0)

m.c585 = Constraint(expr=   m.x96 - m.x664 == 0)

m.c586 = Constraint(expr=   m.x96 - m.x665 == 0)

m.c587 = Constraint(expr= - m.x415 + m.x420 == 0)

m.c588 = Constraint(expr= - m.x416 + m.x421 == 0)

m.c589 = Constraint(expr= - m.x417 + m.x422 == 0)

m.c590 = Constraint(expr= - m.x418 + m.x423 == 0)

m.c591 = Constraint(expr= - m.x419 + m.x424 == 0)

m.c592 = Constraint(expr= - m.x385 + m.x390 == 0)

m.c593 = Constraint(expr= - m.x386 + m.x391 == 0)

m.c594 = Constraint(expr= - m.x387 + m.x392 == 0)

m.c595 = Constraint(expr= - m.x388 + m.x393 == 0)

m.c596 = Constraint(expr= - m.x389 + m.x394 == 0)

m.c597 = Constraint(expr= - m.x270 + m.x275 == 0)

m.c598 = Constraint(expr= - m.x271 + m.x276 == 0)

m.c599 = Constraint(expr= - m.x272 + m.x277 == 0)

m.c600 = Constraint(expr= - m.x273 + m.x278 == 0)

m.c601 = Constraint(expr= - m.x274 + m.x279 == 0)

m.c602 = Constraint(expr= - m.x430 + m.x440 == 0)

m.c603 = Constraint(expr= - m.x431 + m.x441 == 0)

m.c604 = Constraint(expr= - m.x432 + m.x442 == 0)

m.c605 = Constraint(expr= - m.x433 + m.x443 == 0)

m.c606 = Constraint(expr= - m.x434 + m.x444 == 0)

m.c607 = Constraint(expr= - m.x345 + m.x445 == 0)

m.c608 = Constraint(expr= - m.x346 + m.x446 == 0)

m.c609 = Constraint(expr= - m.x347 + m.x447 == 0)

m.c610 = Constraint(expr= - m.x348 + m.x448 == 0)

m.c611 = Constraint(expr= - m.x349 + m.x449 == 0)

m.c612 = Constraint(expr=   m.x505 - m.x560 == 0)

m.c613 = Constraint(expr=   m.x506 - m.x561 == 0)

m.c614 = Constraint(expr=   m.x507 - m.x562 == 0)

m.c615 = Constraint(expr=   m.x508 - m.x563 == 0)

m.c616 = Constraint(expr=   m.x509 - m.x564 == 0)

m.c617 = Constraint(expr=m.x680/m.x608**0.230769230769231 - m.x679/m.x607**0.230769230769231 == 0)

m.c618 = Constraint(expr=m.x674/m.x602**0.230769230769231 - m.x673/m.x601**0.230769230769231 == 0)

m.c619 = Constraint(expr=m.x651/m.x579**0.230769230769231 - m.x650/m.x578**0.230769230769231 == 0)

m.c620 = Constraint(expr=m.x684/m.x612**0.230769230769231 - m.x682/m.x610**0.230769230769231 == 0)

m.c621 = Constraint(expr=m.x685/m.x613**0.230769230769231 - m.x665/m.x593**0.230769230769231 == 0)

m.c622 = Constraint(expr=m.x697/m.x625**0.230769230769231 - m.x708/m.x636**0.230769230769231 == 0)

m.c623 = Constraint(expr= - m.x607 + m.x608 <= 0)

m.c624 = Constraint(expr= - m.x601 + m.x602 <= 0)

m.c625 = Constraint(expr= - m.x578 + m.x579 <= 0)

m.c626 = Constraint(expr= - m.x610 + m.x612 <= 0)

m.c627 = Constraint(expr= - m.x593 + m.x613 <= 0)

m.c628 = Constraint(expr=   m.x625 - m.x636 <= 0)

m.c629 = Constraint(expr= - 0.95*m.x133 + m.x205 == 0)

m.c630 = Constraint(expr= - 0.05*m.x133 + m.x206 == 0)

m.c631 = Constraint(expr=   m.x207 == 0)

m.c632 = Constraint(expr=   m.x208 == 0)

m.c633 = Constraint(expr=   m.x209 == 0)

m.c634 = Constraint(expr=   m.x525 == 0)

m.c635 = Constraint(expr=   m.x526 == 0)

m.c636 = Constraint(expr=   m.x527 == 0)

m.c637 = Constraint(expr= - m.x197 + m.x528 == 0)

m.c638 = Constraint(expr=   m.x529 == 0)

m.c639 = Constraint(expr=   m.x530 == 0)

m.c640 = Constraint(expr=   m.x531 == 0)

m.c641 = Constraint(expr=   m.x532 == 0)

m.c642 = Constraint(expr= - m.x198 + m.x533 == 0)

m.c643 = Constraint(expr=   m.x534 == 0)

m.c644 = Constraint(expr= - 0.5*m.x203 + m.x555 >= 0)

m.c645 = Constraint(expr= - 0.9997*m.x163 + m.x357 >= 0)

m.c646 = Constraint(expr=   m.x133 - m.x205 - m.x206 - m.x207 - m.x208 - m.x209 == 0)

m.c647 = Constraint(expr=   m.x134 - m.x210 - m.x211 - m.x212 - m.x213 - m.x214 == 0)

m.c648 = Constraint(expr=   m.x135 - m.x215 - m.x216 - m.x217 - m.x218 - m.x219 == 0)

m.c649 = Constraint(expr=   m.x136 - m.x220 - m.x221 - m.x222 - m.x223 - m.x224 == 0)

m.c650 = Constraint(expr=   m.x137 - m.x225 - m.x226 - m.x227 - m.x228 - m.x229 == 0)

m.c651 = Constraint(expr=   m.x138 - m.x230 - m.x231 - m.x232 - m.x233 - m.x234 == 0)

m.c652 = Constraint(expr=   m.x139 - m.x235 - m.x236 - m.x237 - m.x238 - m.x239 == 0)

m.c653 = Constraint(expr=   m.x140 - m.x240 - m.x241 - m.x242 - m.x243 - m.x244 == 0)

m.c654 = Constraint(expr=   m.x141 - m.x245 - m.x246 - m.x247 - m.x248 - m.x249 == 0)

m.c655 = Constraint(expr=   m.x142 - m.x250 - m.x251 - m.x252 - m.x253 - m.x254 == 0)

m.c656 = Constraint(expr=   m.x143 - m.x255 - m.x256 - m.x257 - m.x258 - m.x259 == 0)

m.c657 = Constraint(expr=   m.x144 - m.x260 - m.x261 - m.x262 - m.x263 - m.x264 == 0)

m.c658 = Constraint(expr=   m.x145 - m.x265 - m.x266 - m.x267 - m.x268 - m.x269 == 0)

m.c659 = Constraint(expr=   m.x146 - m.x270 - m.x271 - m.x272 - m.x273 - m.x274 == 0)

m.c660 = Constraint(expr=   m.x147 - m.x275 - m.x276 - m.x277 - m.x278 - m.x279 == 0)

m.c661 = Constraint(expr=   m.x148 - m.x280 - m.x281 - m.x282 - m.x283 - m.x284 == 0)

m.c662 = Constraint(expr=   m.x149 - m.x285 - m.x286 - m.x287 - m.x288 - m.x289 == 0)

m.c663 = Constraint(expr=   m.x150 - m.x290 - m.x291 - m.x292 - m.x293 - m.x294 == 0)

m.c664 = Constraint(expr=   m.x151 - m.x295 - m.x296 - m.x297 - m.x298 - m.x299 == 0)

m.c665 = Constraint(expr=   m.x152 - m.x300 - m.x301 - m.x302 - m.x303 - m.x304 == 0)

m.c666 = Constraint(expr=   m.x153 - m.x305 - m.x306 - m.x307 - m.x308 - m.x309 == 0)

m.c667 = Constraint(expr=   m.x154 - m.x310 - m.x311 - m.x312 - m.x313 - m.x314 == 0)

m.c668 = Constraint(expr=   m.x155 - m.x315 - m.x316 - m.x317 - m.x318 - m.x319 == 0)

m.c669 = Constraint(expr=   m.x156 - m.x320 - m.x321 - m.x322 - m.x323 - m.x324 == 0)

m.c670 = Constraint(expr=   m.x157 - m.x325 - m.x326 - m.x327 - m.x328 - m.x329 == 0)

m.c671 = Constraint(expr=   m.x158 - m.x330 - m.x331 - m.x332 - m.x333 - m.x334 == 0)

m.c672 = Constraint(expr=   m.x159 - m.x335 - m.x336 - m.x337 - m.x338 - m.x339 == 0)

m.c673 = Constraint(expr=   m.x160 - m.x340 - m.x341 - m.x342 - m.x343 - m.x344 == 0)

m.c674 = Constraint(expr=   m.x161 - m.x345 - m.x346 - m.x347 - m.x348 - m.x349 == 0)

m.c675 = Constraint(expr=   m.x162 - m.x350 - m.x351 - m.x352 - m.x353 - m.x354 == 0)

m.c676 = Constraint(expr=   m.x163 - m.x355 - m.x356 - m.x357 - m.x358 - m.x359 == 0)

m.c677 = Constraint(expr=   m.x164 - m.x360 - m.x361 - m.x362 - m.x363 - m.x364 == 0)

m.c678 = Constraint(expr=   m.x165 - m.x365 - m.x366 - m.x367 - m.x368 - m.x369 == 0)

m.c679 = Constraint(expr=   m.x166 - m.x370 - m.x371 - m.x372 - m.x373 - m.x374 == 0)

m.c680 = Constraint(expr=   m.x167 - m.x375 - m.x376 - m.x377 - m.x378 - m.x379 == 0)

m.c681 = Constraint(expr=   m.x168 - m.x380 - m.x381 - m.x382 - m.x383 - m.x384 == 0)

m.c682 = Constraint(expr=   m.x169 - m.x385 - m.x386 - m.x387 - m.x388 - m.x389 == 0)

m.c683 = Constraint(expr=   m.x170 - m.x390 - m.x391 - m.x392 - m.x393 - m.x394 == 0)

m.c684 = Constraint(expr=   m.x171 - m.x395 - m.x396 - m.x397 - m.x398 - m.x399 == 0)

m.c685 = Constraint(expr=   m.x172 - m.x400 - m.x401 - m.x402 - m.x403 - m.x404 == 0)

m.c686 = Constraint(expr=   m.x173 - m.x405 - m.x406 - m.x407 - m.x408 - m.x409 == 0)

m.c687 = Constraint(expr=   m.x174 - m.x410 - m.x411 - m.x412 - m.x413 - m.x414 == 0)

m.c688 = Constraint(expr=   m.x175 - m.x415 - m.x416 - m.x417 - m.x418 - m.x419 == 0)

m.c689 = Constraint(expr=   m.x176 - m.x420 - m.x421 - m.x422 - m.x423 - m.x424 == 0)

m.c690 = Constraint(expr=   m.x177 - m.x425 - m.x426 - m.x427 - m.x428 - m.x429 == 0)

m.c691 = Constraint(expr=   m.x178 - m.x430 - m.x431 - m.x432 - m.x433 - m.x434 == 0)

m.c692 = Constraint(expr=   m.x179 - m.x435 - m.x436 - m.x437 - m.x438 - m.x439 == 0)

m.c693 = Constraint(expr=   m.x180 - m.x440 - m.x441 - m.x442 - m.x443 - m.x444 == 0)

m.c694 = Constraint(expr=   m.x181 - m.x445 - m.x446 - m.x447 - m.x448 - m.x449 == 0)

m.c695 = Constraint(expr=   m.x182 - m.x450 - m.x451 - m.x452 - m.x453 - m.x454 == 0)

m.c696 = Constraint(expr=   m.x183 - m.x455 - m.x456 - m.x457 - m.x458 - m.x459 == 0)

m.c697 = Constraint(expr=   m.x184 - m.x460 - m.x461 - m.x462 - m.x463 - m.x464 == 0)

m.c698 = Constraint(expr=   m.x185 - m.x465 - m.x466 - m.x467 - m.x468 - m.x469 == 0)

m.c699 = Constraint(expr=   m.x186 - m.x470 - m.x471 - m.x472 - m.x473 - m.x474 == 0)

m.c700 = Constraint(expr=   m.x187 - m.x475 - m.x476 - m.x477 - m.x478 - m.x479 == 0)

m.c701 = Constraint(expr=   m.x188 - m.x480 - m.x481 - m.x482 - m.x483 - m.x484 == 0)

m.c702 = Constraint(expr=   m.x189 - m.x485 - m.x486 - m.x487 - m.x488 - m.x489 == 0)

m.c703 = Constraint(expr=   m.x190 - m.x490 - m.x491 - m.x492 - m.x493 - m.x494 == 0)

m.c704 = Constraint(expr=   m.x191 - m.x495 - m.x496 - m.x497 - m.x498 - m.x499 == 0)

m.c705 = Constraint(expr=   m.x192 - m.x500 - m.x501 - m.x502 - m.x503 - m.x504 == 0)

m.c706 = Constraint(expr=   m.x193 - m.x505 - m.x506 - m.x507 - m.x508 - m.x509 == 0)

m.c707 = Constraint(expr=   m.x194 - m.x510 - m.x511 - m.x512 - m.x513 - m.x514 == 0)

m.c708 = Constraint(expr=   m.x195 - m.x515 - m.x516 - m.x517 - m.x518 - m.x519 == 0)

m.c709 = Constraint(expr=   m.x196 - m.x520 - m.x521 - m.x522 - m.x523 - m.x524 == 0)

m.c710 = Constraint(expr=   m.x197 - m.x525 - m.x526 - m.x527 - m.x528 - m.x529 == 0)

m.c711 = Constraint(expr=   m.x198 - m.x530 - m.x531 - m.x532 - m.x533 - m.x534 == 0)

m.c712 = Constraint(expr=   m.x199 - m.x535 - m.x536 - m.x537 - m.x538 - m.x539 == 0)

m.c713 = Constraint(expr=   m.x200 - m.x540 - m.x541 - m.x542 - m.x543 - m.x544 == 0)

m.c714 = Constraint(expr=   m.x201 - m.x545 - m.x546 - m.x547 - m.x548 - m.x549 == 0)

m.c715 = Constraint(expr=   m.x202 - m.x550 - m.x551 - m.x552 - m.x553 - m.x554 == 0)

m.c716 = Constraint(expr=   m.x203 - m.x555 - m.x556 - m.x557 - m.x558 - m.x559 == 0)

m.c717 = Constraint(expr=   m.x204 - m.x560 - m.x561 - m.x562 - m.x563 - m.x564 == 0)

m.c718 = Constraint(expr=   m.x60 >= 0)

m.c719 = Constraint(expr=   1.2*m.x1 + 1.155*m.x5 + 1.155*m.x6 + 1.155*m.x7 + 1.227*m.x8 + 0.375*m.x16 + 1.55*m.x17
                          + 1.12*m.x18 + 5171.7*m.x52 + 700*m.x53 + 700*m.x54 + 8000*m.x55 + 8000*m.x56 + 8000*m.x57
                          + 8000*m.x58 + 1.257*m.x71 + 1.57125*m.x72 + 0.7*m.x81 + 1275*m.x133 + 49*m.x135
                          - 10149*m.x163 - 6038.4*m.x167 + 49*m.x185 + 7140*m.x197 + 7140*m.x198 - 550.8*m.x220
                          - 1718.7*m.x221 - 550.8*m.x340 - 1718.7*m.x341 - 550.8*m.x460 - 1718.7*m.x461 - 550.8*m.x470
                          - 1718.7*m.x471 + 50.395*m.b710 + 74.3*m.b711 + 92.875*m.b712 + 1.126*m.b714 + 3.9*m.b715
                          + 48.106*m.b718 + 7.155*m.b719 + 10.155*m.b721 + m.x722 + m.x723 == 0)
