#  MIP written by GAMS Convert at 12/13/18 10:24:38
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        168       43       56       69        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        258      204       54        0        0        0        0        0
#  FX      1        0        1        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        953      953        0        0
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
m.x168 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x169 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x170 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x171 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x172 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x173 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x174 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x175 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x176 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x177 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x178 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x179 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.b198 = Var(within=Binary,bounds=(1,1),initialize=1)
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
m.b220 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b221 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b222 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b223 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b224 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b225 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b226 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b227 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b228 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b229 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b230 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b231 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b232 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b233 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x235 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x236 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x237 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x238 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x239 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x240 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x241 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x242 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x243 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x244 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x245 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x246 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x247 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x248 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x249 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x250 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x251 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x252 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x253 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x254 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x255 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x256 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x257 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x258 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   0.826446280991735*m.x235 + 0.620921323059155*m.x236 + 0.466507380209733*m.x237
                        + 0.350493899481392*m.x238 + 0.826446280991735*m.x239 + 0.620921323059155*m.x240
                        + 0.466507380209733*m.x241 + 0.350493899481392*m.x242 + 0.826446280991735*m.x243
                        + 0.620921323059155*m.x244 + 0.466507380209733*m.x245 + 0.350493899481392*m.x246
                        + 0.826446280991735*m.x247 + 0.620921323059155*m.x248 + 0.466507380209733*m.x249
                        + 0.350493899481392*m.x250 - 0.826446280991735*m.x251 - 0.620921323059155*m.x252
                        - 0.466507380209733*m.x253 - 0.350493899481392*m.x254 + 0.826446280991735*m.x255
                        + 0.620921323059155*m.x256 + 0.466507380209733*m.x257 + 0.350493899481392*m.x258
                       , sense=minimize)

m.c1 = Constraint(expr= - 0.1127*m.x1 - 0.1465*m.x13 + m.x117 >= 0)

m.c2 = Constraint(expr= - 0.1127*m.x2 - 0.1465*m.x14 + m.x118 >= 0)

m.c3 = Constraint(expr= - 0.1127*m.x3 - 0.1465*m.x15 + m.x119 >= 0)

m.c4 = Constraint(expr= - 0.1127*m.x4 - 0.1465*m.x16 + m.x120 >= 0)

m.c5 = Constraint(expr= - 0.1127*m.x5 - 0.1465*m.x17 + m.x121 >= 0)

m.c6 = Constraint(expr= - 0.1127*m.x6 - 0.1465*m.x18 + m.x122 >= 0)

m.c7 = Constraint(expr= - 0.1127*m.x7 - 0.1465*m.x19 + m.x123 >= 0)

m.c8 = Constraint(expr= - 0.1127*m.x8 - 0.1465*m.x20 + m.x124 >= 0)

m.c9 = Constraint(expr= - 0.1127*m.x9 - 0.1465*m.x21 + m.x125 >= 0)

m.c10 = Constraint(expr= - 0.1127*m.x10 - 0.1465*m.x22 + m.x126 >= 0)

m.c11 = Constraint(expr= - 0.1127*m.x11 - 0.1465*m.x23 + m.x127 >= 0)

m.c12 = Constraint(expr= - 0.1127*m.x12 - 0.1465*m.x24 + m.x128 >= 0)

m.c13 = Constraint(expr=   0.96*m.x1 + 0.96*m.x13 - 0.96*m.x25 + m.x129 >= 0)

m.c14 = Constraint(expr=   0.96*m.x2 + 0.96*m.x14 - 0.96*m.x26 + m.x130 >= 0)

m.c15 = Constraint(expr=   0.96*m.x3 + 0.96*m.x15 - 0.96*m.x27 + m.x131 >= 0)

m.c16 = Constraint(expr=   0.96*m.x4 + 0.96*m.x16 - 0.96*m.x28 + m.x132 >= 0)

m.c17 = Constraint(expr=   0.96*m.x5 + 0.96*m.x17 - 0.96*m.x29 + m.x133 >= 0)

m.c18 = Constraint(expr=   0.96*m.x6 + 0.96*m.x18 - 0.96*m.x30 + m.x134 >= 0)

m.c19 = Constraint(expr=   0.96*m.x7 + 0.96*m.x19 - 0.96*m.x31 + m.x135 >= 0)

m.c20 = Constraint(expr=   0.96*m.x8 + 0.96*m.x20 - 0.96*m.x32 + m.x136 >= 0)

m.c21 = Constraint(expr=   0.96*m.x9 + 0.96*m.x21 - 0.96*m.x33 + m.x137 >= 0)

m.c22 = Constraint(expr=   0.96*m.x10 + 0.96*m.x22 - 0.96*m.x34 + m.x138 >= 0)

m.c23 = Constraint(expr=   0.96*m.x11 + 0.96*m.x23 - 0.96*m.x35 + m.x139 >= 0)

m.c24 = Constraint(expr=   0.96*m.x12 + 0.96*m.x24 - 0.96*m.x36 + m.x140 >= 0)

m.c25 = Constraint(expr=   m.x25 - m.x37 - m.x41 - m.x45 - m.x49 - m.x53 - m.x141 >= 0)

m.c26 = Constraint(expr=   m.x26 - m.x38 - m.x42 - m.x46 - m.x50 - m.x54 - m.x142 >= 0)

m.c27 = Constraint(expr=   m.x27 - m.x39 - m.x43 - m.x47 - m.x51 - m.x55 - m.x143 >= 0)

m.c28 = Constraint(expr=   m.x28 - m.x40 - m.x44 - m.x48 - m.x52 - m.x56 - m.x144 >= 0)

m.c29 = Constraint(expr=   m.x29 - m.x57 - m.x61 - m.x65 - m.x69 - m.x73 - m.x145 >= 0)

m.c30 = Constraint(expr=   m.x30 - m.x58 - m.x62 - m.x66 - m.x70 - m.x74 - m.x146 >= 0)

m.c31 = Constraint(expr=   m.x31 - m.x59 - m.x63 - m.x67 - m.x71 - m.x75 - m.x147 >= 0)

m.c32 = Constraint(expr=   m.x32 - m.x60 - m.x64 - m.x68 - m.x72 - m.x76 - m.x148 >= 0)

m.c33 = Constraint(expr=   m.x33 - m.x77 - m.x81 - m.x85 - m.x89 - m.x93 - m.x149 >= 0)

m.c34 = Constraint(expr=   m.x34 - m.x78 - m.x82 - m.x86 - m.x90 - m.x94 - m.x150 >= 0)

m.c35 = Constraint(expr=   m.x35 - m.x79 - m.x83 - m.x87 - m.x91 - m.x95 - m.x151 >= 0)

m.c36 = Constraint(expr=   m.x36 - m.x80 - m.x84 - m.x88 - m.x92 - m.x96 - m.x152 >= 0)

m.c37 = Constraint(expr=   m.x1 <= 500)

m.c38 = Constraint(expr=   m.x2 - m.x153 <= 500)

m.c39 = Constraint(expr=   m.x3 - m.x153 - m.x154 <= 500)

m.c40 = Constraint(expr=   m.x4 - m.x153 - m.x154 - m.x155 <= 500)

m.c41 = Constraint(expr=   m.x5 <= 0)

m.c42 = Constraint(expr=   m.x6 - m.x156 <= 0)

m.c43 = Constraint(expr=   m.x7 - m.x156 - m.x157 <= 0)

m.c44 = Constraint(expr=   m.x8 - m.x156 - m.x157 - m.x158 <= 0)

m.c45 = Constraint(expr=   m.x9 <= 0)

m.c46 = Constraint(expr=   m.x10 - m.x159 <= 0)

m.c47 = Constraint(expr=   m.x11 - m.x159 - m.x160 <= 0)

m.c48 = Constraint(expr=   m.x12 - m.x159 - m.x160 - m.x161 <= 0)

m.c49 = Constraint(expr=   m.x13 <= 0)

m.c50 = Constraint(expr=   m.x14 - m.x162 <= 0)

m.c51 = Constraint(expr=   m.x15 - m.x162 - m.x163 <= 0)

m.c52 = Constraint(expr=   m.x16 - m.x162 - m.x163 - m.x164 <= 0)

m.c53 = Constraint(expr=   m.x17 <= 320)

m.c54 = Constraint(expr=   m.x18 - m.x165 <= 320)

m.c55 = Constraint(expr=   m.x19 - m.x165 - m.x166 <= 320)

m.c56 = Constraint(expr=   m.x20 - m.x165 - m.x166 - m.x167 <= 320)

m.c57 = Constraint(expr=   m.x21 <= 0)

m.c58 = Constraint(expr=   m.x22 - m.x168 <= 0)

m.c59 = Constraint(expr=   m.x23 - m.x168 - m.x169 <= 0)

m.c60 = Constraint(expr=   m.x24 - m.x168 - m.x169 - m.x170 <= 0)

m.c61 = Constraint(expr=   m.x25 <= 500)

m.c62 = Constraint(expr=   m.x26 - m.x171 <= 500)

m.c63 = Constraint(expr=   m.x27 - m.x171 - m.x172 <= 500)

m.c64 = Constraint(expr=   m.x28 - m.x171 - m.x172 - m.x173 <= 500)

m.c65 = Constraint(expr=   m.x29 <= 320)

m.c66 = Constraint(expr=   m.x30 - m.x174 <= 320)

m.c67 = Constraint(expr=   m.x31 - m.x174 - m.x175 <= 320)

m.c68 = Constraint(expr=   m.x32 - m.x174 - m.x175 - m.x176 <= 320)

m.c69 = Constraint(expr=   m.x33 <= 0)

m.c70 = Constraint(expr=   m.x34 - m.x177 <= 0)

m.c71 = Constraint(expr=   m.x35 - m.x177 - m.x178 <= 0)

m.c72 = Constraint(expr=   m.x36 - m.x177 - m.x178 - m.x179 <= 0)

m.c73 = Constraint(expr=   m.x153 - 500*m.b180 - 750*m.b183 - 1000*m.b186 == 0)

m.c74 = Constraint(expr=   m.x154 - 500*m.b181 - 750*m.b184 - 1000*m.b187 == 0)

m.c75 = Constraint(expr=   m.x155 - 500*m.b182 - 750*m.b185 - 1000*m.b188 == 0)

m.c76 = Constraint(expr=   m.x156 - 500*m.b189 - 750*m.b192 - 1000*m.b195 == 0)

m.c77 = Constraint(expr=   m.x157 - 500*m.b190 - 750*m.b193 - 1000*m.b196 == 0)

m.c78 = Constraint(expr=   m.x158 - 500*m.b191 - 750*m.b194 - 1000*m.b197 == 0)

m.c79 = Constraint(expr=   m.x159 - 500*m.b198 - 750*m.b201 - 1000*m.b204 == 0)

m.c80 = Constraint(expr=   m.x160 - 500*m.b199 - 750*m.b202 - 1000*m.b205 == 0)

m.c81 = Constraint(expr=   m.x161 - 500*m.b200 - 750*m.b203 - 1000*m.b206 == 0)

m.c82 = Constraint(expr=   m.x162 - 500*m.b207 - 750*m.b210 - 1000*m.b213 == 0)

m.c83 = Constraint(expr=   m.x163 - 500*m.b208 - 750*m.b211 - 1000*m.b214 == 0)

m.c84 = Constraint(expr=   m.x164 - 500*m.b209 - 750*m.b212 - 1000*m.b215 == 0)

m.c85 = Constraint(expr=   m.x165 - 500*m.b216 - 750*m.b219 - 1000*m.b222 == 0)

m.c86 = Constraint(expr=   m.x166 - 500*m.b217 - 750*m.b220 - 1000*m.b223 == 0)

m.c87 = Constraint(expr=   m.x167 - 500*m.b218 - 750*m.b221 - 1000*m.b224 == 0)

m.c88 = Constraint(expr=   m.x168 - 500*m.b225 - 750*m.b228 - 1000*m.b231 == 0)

m.c89 = Constraint(expr=   m.x169 - 500*m.b226 - 750*m.b229 - 1000*m.b232 == 0)

m.c90 = Constraint(expr=   m.x170 - 500*m.b227 - 750*m.b230 - 1000*m.b233 == 0)

m.c91 = Constraint(expr=   m.b180 + m.b183 + m.b186 <= 1)

m.c92 = Constraint(expr=   m.b181 + m.b184 + m.b187 <= 1)

m.c93 = Constraint(expr=   m.b182 + m.b185 + m.b188 <= 1)

m.c94 = Constraint(expr=   m.b189 + m.b192 + m.b195 <= 1)

m.c95 = Constraint(expr=   m.b190 + m.b193 + m.b196 <= 1)

m.c96 = Constraint(expr=   m.b191 + m.b194 + m.b197 <= 1)

m.c97 = Constraint(expr=   m.b198 + m.b201 + m.b204 <= 1)

m.c98 = Constraint(expr=   m.b199 + m.b202 + m.b205 <= 1)

m.c99 = Constraint(expr=   m.b200 + m.b203 + m.b206 <= 1)

m.c100 = Constraint(expr=   m.b207 + m.b210 + m.b213 <= 1)

m.c101 = Constraint(expr=   m.b208 + m.b211 + m.b214 <= 1)

m.c102 = Constraint(expr=   m.b209 + m.b212 + m.b215 <= 1)

m.c103 = Constraint(expr=   m.b216 + m.b219 + m.b222 <= 1)

m.c104 = Constraint(expr=   m.b217 + m.b220 + m.b223 <= 1)

m.c105 = Constraint(expr=   m.b218 + m.b221 + m.b224 <= 1)

m.c106 = Constraint(expr=   m.b225 + m.b228 + m.b231 <= 1)

m.c107 = Constraint(expr=   m.b226 + m.b229 + m.b232 <= 1)

m.c108 = Constraint(expr=   m.b227 + m.b230 + m.b233 <= 1)

m.c109 = Constraint(expr=   m.x153 + m.x154 + m.x155 + m.x162 + m.x163 + m.x164 <= 1500)

m.c110 = Constraint(expr=   m.x156 + m.x157 + m.x158 + m.x165 + m.x166 + m.x167 <= 1680)

m.c111 = Constraint(expr=   m.x159 + m.x160 + m.x161 + m.x168 + m.x169 + m.x170 <= 2000)

m.c112 = Constraint(expr=   m.x37 + m.x57 + m.x77 + m.x97 >= 382.55374332)

m.c113 = Constraint(expr=   m.x38 + m.x58 + m.x78 + m.x98 >= 523.192358530475)

m.c114 = Constraint(expr=   m.x39 + m.x59 + m.x79 + m.x99 >= 715.534088489393)

m.c115 = Constraint(expr=   m.x40 + m.x60 + m.x80 + m.x100 >= 978.586600974837)

m.c116 = Constraint(expr=   m.x41 + m.x61 + m.x81 + m.x101 >= 368.89110963)

m.c117 = Constraint(expr=   m.x42 + m.x62 + m.x82 + m.x102 >= 504.506917154387)

m.c118 = Constraint(expr=   m.x43 + m.x63 + m.x83 + m.x103 >= 689.979299614772)

m.c119 = Constraint(expr=   m.x44 + m.x64 + m.x84 + m.x104 >= 943.63707951145)

m.c120 = Constraint(expr=   m.x45 + m.x65 + m.x85 + m.x105 >= 273.2526738)

m.c121 = Constraint(expr=   m.x46 + m.x66 + m.x86 + m.x106 >= 373.708827521768)

m.c122 = Constraint(expr=   m.x47 + m.x67 + m.x87 + m.x107 >= 511.095777492423)

m.c123 = Constraint(expr=   m.x48 + m.x68 + m.x88 + m.x108 >= 698.990429267741)

m.c124 = Constraint(expr=   m.x49 + m.x69 + m.x89 + m.x109 >= 170.782921125)

m.c125 = Constraint(expr=   m.x50 + m.x70 + m.x90 + m.x110 >= 233.568017201105)

m.c126 = Constraint(expr=   m.x51 + m.x71 + m.x91 + m.x111 >= 319.434860932765)

m.c127 = Constraint(expr=   m.x52 + m.x72 + m.x92 + m.x112 >= 436.869018292338)

m.c128 = Constraint(expr=   m.x53 + m.x73 + m.x93 + m.x113 >= 170.782921125)

m.c129 = Constraint(expr=   m.x54 + m.x74 + m.x94 + m.x114 >= 233.568017201105)

m.c130 = Constraint(expr=   m.x55 + m.x75 + m.x95 + m.x115 >= 319.434860932765)

m.c131 = Constraint(expr=   m.x56 + m.x76 + m.x96 + m.x116 >= 436.869018292338)

m.c132 = Constraint(expr=   m.x141 + m.x145 + m.x149 <= 1000)

m.c133 = Constraint(expr=   m.x142 + m.x146 + m.x150 <= 1000)

m.c134 = Constraint(expr=   m.x143 + m.x147 + m.x151 <= 1000)

m.c135 = Constraint(expr=   m.x144 + m.x148 + m.x152 <= 1000)

m.c136 = Constraint(expr=   m.x97 + m.x101 + m.x105 + m.x109 + m.x113 <= 3000)

m.c137 = Constraint(expr=   m.x98 + m.x102 + m.x106 + m.x110 + m.x114 <= 3000)

m.c138 = Constraint(expr=   m.x99 + m.x103 + m.x107 + m.x111 + m.x115 <= 3000)

m.c139 = Constraint(expr=   m.x100 + m.x104 + m.x108 + m.x112 + m.x116 <= 3000)

m.c140 = Constraint(expr=   m.x129 + m.x133 + m.x137 <= 0)

m.c141 = Constraint(expr=   m.x130 + m.x134 + m.x138 <= 0)

m.c142 = Constraint(expr=   m.x131 + m.x135 + m.x139 <= 0)

m.c143 = Constraint(expr=   m.x132 + m.x136 + m.x140 <= 0)

m.c145 = Constraint(expr= - 0.01020325*m.x1 - 0.01020325*m.x5 - 0.01020325*m.x9 - 0.01020325*m.x13 - 0.01020325*m.x17
                          - 0.01020325*m.x21 - 0.02846528*m.x25 - 0.02846528*m.x29 - 0.02846528*m.x33 + m.x239 == 47.1)

m.c146 = Constraint(expr= - 0.01020325*m.x2 - 0.01020325*m.x6 - 0.01020325*m.x10 - 0.01020325*m.x14 - 0.01020325*m.x18
                          - 0.01020325*m.x22 - 0.02846528*m.x26 - 0.02846528*m.x30 - 0.02846528*m.x34 - 0.0558*m.x153
                          - 0.0558*m.x156 - 0.0558*m.x159 - 0.06*m.x162 - 0.06*m.x165 - 0.06*m.x168 + m.x240 == 47.1)

m.c147 = Constraint(expr= - 0.01020325*m.x3 - 0.01020325*m.x7 - 0.01020325*m.x11 - 0.01020325*m.x15 - 0.01020325*m.x19
                          - 0.01020325*m.x23 - 0.02846528*m.x27 - 0.02846528*m.x31 - 0.02846528*m.x35 - 0.0558*m.x153
                          - 0.0558*m.x154 - 0.0558*m.x156 - 0.0558*m.x157 - 0.0558*m.x159 - 0.0558*m.x160 - 0.06*m.x162
                          - 0.06*m.x163 - 0.06*m.x165 - 0.06*m.x166 - 0.06*m.x168 - 0.06*m.x169 + m.x241 == 47.1)

m.c148 = Constraint(expr= - 0.01020325*m.x4 - 0.01020325*m.x8 - 0.01020325*m.x12 - 0.01020325*m.x16 - 0.01020325*m.x20
                          - 0.01020325*m.x24 - 0.02846528*m.x28 - 0.02846528*m.x32 - 0.02846528*m.x36 - 0.0558*m.x153
                          - 0.0558*m.x154 - 0.0558*m.x155 - 0.0558*m.x156 - 0.0558*m.x157 - 0.0558*m.x158
                          - 0.0558*m.x159 - 0.0558*m.x160 - 0.0558*m.x161 - 0.06*m.x162 - 0.06*m.x163 - 0.06*m.x164
                          - 0.06*m.x165 - 0.06*m.x166 - 0.06*m.x167 - 0.06*m.x168 - 0.06*m.x169 - 0.06*m.x170 + m.x242
                          == 47.1)

m.c149 = Constraint(expr=   m.x235 == 0)

m.c150 = Constraint(expr= - 0.0267979094203776*m.x171 - 0.0256813298611952*m.x174 - 0.0234481707428304*m.x177
                          - 66.9949008460419*m.b180 - 83.0558287330283*m.b183 - 96.7358932827346*m.b186
                          - 64.2034466441234*m.b189 - 79.5951692024855*m.b192 - 92.7052310626207*m.b195
                          - 58.6205382402866*m.b198 - 72.6738501413998*m.b201 - 84.6439066223928*m.b204
                          - 56.9457166371747*m.b207 - 71.4615065582968*m.b210 - 83.9533170947684*m.b213
                          - 54.5729784439591*m.b216 - 68.4839437850345*m.b219 - 80.4552622158197*m.b222
                          - 49.8275020575279*m.b225 - 62.5288182385097*m.b228 - 73.4591524579224*m.b231 + m.x236 == 0)

m.c151 = Constraint(expr= - 0.0267979094203776*m.x171 - 0.0267979094203776*m.x172 - 0.0256813298611952*m.x174
                          - 0.0256813298611952*m.x175 - 0.0234481707428304*m.x177 - 0.0234481707428304*m.x178
                          - 66.9949008460419*m.b180 - 66.9949008460419*m.b181 - 83.0558287330283*m.b183
                          - 83.0558287330283*m.b184 - 96.7358932827346*m.b186 - 96.7358932827346*m.b187
                          - 64.2034466441234*m.b189 - 64.2034466441234*m.b190 - 79.5951692024855*m.b192
                          - 79.5951692024855*m.b193 - 92.7052310626207*m.b195 - 92.7052310626207*m.b196
                          - 58.6205382402866*m.b198 - 58.6205382402866*m.b199 - 72.6738501413998*m.b201
                          - 72.6738501413998*m.b202 - 84.6439066223928*m.b204 - 84.6439066223928*m.b205
                          - 56.9457166371747*m.b207 - 56.9457166371747*m.b208 - 71.4615065582968*m.b210
                          - 71.4615065582968*m.b211 - 83.9533170947684*m.b213 - 83.9533170947684*m.b214
                          - 54.5729784439591*m.b216 - 54.5729784439591*m.b217 - 68.4839437850345*m.b219
                          - 68.4839437850345*m.b220 - 80.4552622158197*m.b222 - 80.4552622158197*m.b223
                          - 49.8275020575279*m.b225 - 49.8275020575279*m.b226 - 62.5288182385097*m.b228
                          - 62.5288182385097*m.b229 - 73.4591524579224*m.b231 - 73.4591524579224*m.b232 + m.x237 == 0)

m.c152 = Constraint(expr= - 0.0267979094203776*m.x171 - 0.0267979094203776*m.x172 - 0.0267979094203776*m.x173
                          - 0.0256813298611952*m.x174 - 0.0256813298611952*m.x175 - 0.0256813298611952*m.x176
                          - 0.0234481707428304*m.x177 - 0.0234481707428304*m.x178 - 0.0234481707428304*m.x179
                          - 66.9949008460419*m.b180 - 66.9949008460419*m.b181 - 66.9949008460419*m.b182
                          - 83.0558287330283*m.b183 - 83.0558287330283*m.b184 - 83.0558287330283*m.b185
                          - 96.7358932827346*m.b186 - 96.7358932827346*m.b187 - 96.7358932827346*m.b188
                          - 64.2034466441234*m.b189 - 64.2034466441234*m.b190 - 64.2034466441234*m.b191
                          - 79.5951692024855*m.b192 - 79.5951692024855*m.b193 - 79.5951692024855*m.b194
                          - 92.7052310626207*m.b195 - 92.7052310626207*m.b196 - 92.7052310626207*m.b197
                          - 58.6205382402866*m.b198 - 58.6205382402866*m.b199 - 58.6205382402866*m.b200
                          - 72.6738501413998*m.b201 - 72.6738501413998*m.b202 - 72.6738501413998*m.b203
                          - 84.6439066223928*m.b204 - 84.6439066223928*m.b205 - 84.6439066223928*m.b206
                          - 56.9457166371747*m.b207 - 56.9457166371747*m.b208 - 56.9457166371747*m.b209
                          - 71.4615065582968*m.b210 - 71.4615065582968*m.b211 - 71.4615065582968*m.b212
                          - 83.9533170947684*m.b213 - 83.9533170947684*m.b214 - 83.9533170947684*m.b215
                          - 54.5729784439591*m.b216 - 54.5729784439591*m.b217 - 54.5729784439591*m.b218
                          - 68.4839437850345*m.b219 - 68.4839437850345*m.b220 - 68.4839437850345*m.b221
                          - 80.4552622158197*m.b222 - 80.4552622158197*m.b223 - 80.4552622158197*m.b224
                          - 49.8275020575279*m.b225 - 49.8275020575279*m.b226 - 49.8275020575279*m.b227
                          - 62.5288182385097*m.b228 - 62.5288182385097*m.b229 - 62.5288182385097*m.b230
                          - 73.4591524579224*m.b231 - 73.4591524579224*m.b232 - 73.4591524579224*m.b233 + m.x238 == 0)

m.c153 = Constraint(expr= - 0.055944*m.x37 - 0.1794882*m.x41 - 0.1957408*m.x45 - 0.1439468*m.x49 - 0.1082268*m.x53
                          - 0.1216218*m.x57 - 0.061302*m.x61 - 0.1861434*m.x65 - 0.2078856*m.x69 - 0.173397*m.x73
                          - 0.2039188*m.x77 - 0.1411221*m.x81 - 0.0646437*m.x85 - 0.1155964*m.x89 - 0.150978*m.x93
                          - 0.1537698*m.x97 - 0.03235*m.x101 - 0.1778808*m.x105 - 0.2305255*m.x109 - 0.2093708*m.x113
                          - 0.2119815*m.x117 - 0.079965*m.x121 - 0.16912575*m.x125 - 0.141321*m.x129 - 0.05331*m.x133
                          - 0.1127505*m.x137 - 0.1794882*m.x141 - 0.061302*m.x145 - 0.1411221*m.x149 + m.x243 == 0)

m.c154 = Constraint(expr= - 0.055944*m.x38 - 0.1794882*m.x42 - 0.1957408*m.x46 - 0.1439468*m.x50 - 0.1082268*m.x54
                          - 0.1216218*m.x58 - 0.061302*m.x62 - 0.1861434*m.x66 - 0.2078856*m.x70 - 0.173397*m.x74
                          - 0.2039188*m.x78 - 0.1411221*m.x82 - 0.0646437*m.x86 - 0.1155964*m.x90 - 0.150978*m.x94
                          - 0.1537698*m.x98 - 0.03235*m.x102 - 0.1778808*m.x106 - 0.2305255*m.x110 - 0.2093708*m.x114
                          - 0.2119815*m.x118 - 0.079965*m.x122 - 0.16912575*m.x126 - 0.141321*m.x130 - 0.05331*m.x134
                          - 0.1127505*m.x138 - 0.1794882*m.x142 - 0.061302*m.x146 - 0.1411221*m.x150 + m.x244 == 0)

m.c155 = Constraint(expr= - 0.055944*m.x39 - 0.1794882*m.x43 - 0.1957408*m.x47 - 0.1439468*m.x51 - 0.1082268*m.x55
                          - 0.1216218*m.x59 - 0.061302*m.x63 - 0.1861434*m.x67 - 0.2078856*m.x71 - 0.173397*m.x75
                          - 0.2039188*m.x79 - 0.1411221*m.x83 - 0.0646437*m.x87 - 0.1155964*m.x91 - 0.150978*m.x95
                          - 0.1537698*m.x99 - 0.03235*m.x103 - 0.1778808*m.x107 - 0.2305255*m.x111 - 0.2093708*m.x115
                          - 0.2119815*m.x119 - 0.079965*m.x123 - 0.16912575*m.x127 - 0.141321*m.x131 - 0.05331*m.x135
                          - 0.1127505*m.x139 - 0.1794882*m.x143 - 0.061302*m.x147 - 0.1411221*m.x151 + m.x245 == 0)

m.c156 = Constraint(expr= - 0.055944*m.x40 - 0.1794882*m.x44 - 0.1957408*m.x48 - 0.1439468*m.x52 - 0.1082268*m.x56
                          - 0.1216218*m.x60 - 0.061302*m.x64 - 0.1861434*m.x68 - 0.2078856*m.x72 - 0.173397*m.x76
                          - 0.2039188*m.x80 - 0.1411221*m.x84 - 0.0646437*m.x88 - 0.1155964*m.x92 - 0.150978*m.x96
                          - 0.1537698*m.x100 - 0.03235*m.x104 - 0.1778808*m.x108 - 0.2305255*m.x112 - 0.2093708*m.x116
                          - 0.2119815*m.x120 - 0.079965*m.x124 - 0.16912575*m.x128 - 0.141321*m.x132 - 0.05331*m.x136
                          - 0.1127505*m.x140 - 0.1794882*m.x144 - 0.061302*m.x148 - 0.1411221*m.x152 + m.x246 == 0)

m.c157 = Constraint(expr= - 0.28*m.x97 - 0.28*m.x101 - 0.28*m.x105 - 0.28*m.x109 - 0.28*m.x113 - 0.6*m.x117 - 0.6*m.x121
                          - 0.6*m.x125 - 0.224*m.x129 - 0.224*m.x133 - 0.224*m.x137 + m.x247 == 0)

m.c158 = Constraint(expr= - 0.28*m.x98 - 0.28*m.x102 - 0.28*m.x106 - 0.28*m.x110 - 0.28*m.x114 - 0.6*m.x118 - 0.6*m.x122
                          - 0.6*m.x126 - 0.224*m.x130 - 0.224*m.x134 - 0.224*m.x138 + m.x248 == 0)

m.c159 = Constraint(expr= - 0.28*m.x99 - 0.28*m.x103 - 0.28*m.x107 - 0.28*m.x111 - 0.28*m.x115 - 0.6*m.x119 - 0.6*m.x123
                          - 0.6*m.x127 - 0.224*m.x131 - 0.224*m.x135 - 0.224*m.x139 + m.x249 == 0)

m.c160 = Constraint(expr= - 0.28*m.x100 - 0.28*m.x104 - 0.28*m.x108 - 0.28*m.x112 - 0.28*m.x116 - 0.6*m.x120
                          - 0.6*m.x124 - 0.6*m.x128 - 0.224*m.x132 - 0.224*m.x136 - 0.224*m.x140 + m.x250 == 0)

m.c161 = Constraint(expr= - 0.001*m.x141 - 0.001*m.x145 - 0.001*m.x149 + m.x251 == 0)

m.c162 = Constraint(expr= - 0.001*m.x142 - 0.001*m.x146 - 0.001*m.x150 + m.x252 == 0)

m.c163 = Constraint(expr= - 0.001*m.x143 - 0.001*m.x147 - 0.001*m.x151 + m.x253 == 0)

m.c164 = Constraint(expr= - 0.001*m.x144 - 0.001*m.x148 - 0.001*m.x152 + m.x254 == 0)

m.c165 = Constraint(expr= - 0.025*m.x239 - 0.025*m.x247 + m.x255 == 0)

m.c166 = Constraint(expr= - 0.025*m.x240 - 0.025*m.x248 + m.x256 == 0)

m.c167 = Constraint(expr= - 0.025*m.x241 - 0.025*m.x249 + m.x257 == 0)

m.c168 = Constraint(expr= - 0.025*m.x242 - 0.025*m.x250 + m.x258 == 0)
