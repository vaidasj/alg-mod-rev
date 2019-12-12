#  MINLP written by GAMS Convert at 12/13/18 11:43:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        154      154        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        198      138       60        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        591      415      176        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=0)
m.b51 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b52 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b53 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b54 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b55 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b56 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b57 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b58 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b59 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b60 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b61 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b62 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b63 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b64 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b65 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b66 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b67 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b68 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b69 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b70 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b71 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b72 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b73 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b74 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b75 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b76 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b77 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b78 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b79 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b80 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b81 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b82 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b83 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b84 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b85 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b86 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b87 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b88 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b89 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b90 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b91 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b92 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b93 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b94 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b95 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b96 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b97 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b98 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b99 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b100 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b101 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b102 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b103 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b104 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b105 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b106 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b107 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b108 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b109 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b110 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x111 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x112 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x113 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x114 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x115 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x116 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x117 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x118 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x119 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x120 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x121 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x122 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x123 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x124 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x125 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x126 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x127 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x128 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x129 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x130 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x131 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x132 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x133 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x134 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x135 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x136 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x137 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x138 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x139 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x140 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x141 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x142 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x143 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x144 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x145 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x146 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x147 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x148 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x149 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x150 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x151 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x152 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x153 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x154 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x155 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x156 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x157 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x158 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x159 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x160 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x161 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x162 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x163 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x164 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x165 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x166 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x167 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x168 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x169 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x170 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x171 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x172 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x173 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x174 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x175 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x176 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x177 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x178 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x179 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x180 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x181 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x182 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x183 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x184 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x185 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x186 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x187 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x188 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x189 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x190 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x191 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x192 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x193 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x194 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x195 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x196 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x197 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x161 + m.x162 + m.x163 + m.x164 + m.x165 + m.x166 + m.x167 + m.x168 + m.x169 + m.x170
                        + m.x171 + m.x172 + m.x173 + m.x174 + m.x175 + m.x176 + m.x177 + m.x178 + m.x179 + m.x180
                        + m.x181 + m.x182 + m.x183 + m.x184 + m.x185 + m.x186 + m.x187 + m.x188 + m.x189 + m.x190
                        + m.x191 + m.x192 + m.x193 + m.x194 + m.x195 + m.x196 + m.x197, sense=minimize)

m.c1 = Constraint(expr=   m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 == 1)

m.c2 = Constraint(expr=   m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 + m.b70 == 1)

m.c3 = Constraint(expr=   m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 + m.b78 + m.b79 + m.b80 == 2)

m.c4 = Constraint(expr=   m.b81 + m.b82 + m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 == 2)

m.c5 = Constraint(expr=   m.b91 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 == 2)

m.c6 = Constraint(expr=   m.b101 + m.b102 + m.b103 + m.b104 + m.b105 + m.b106 + m.b107 + m.b108 + m.b109 + m.b110 == 2)

m.c7 = Constraint(expr=   m.b51 + m.b61 + m.b71 + m.b81 + m.b91 + m.b101 == 1)

m.c8 = Constraint(expr=   m.b52 + m.b62 + m.b72 + m.b82 + m.b92 + m.b102 == 1)

m.c9 = Constraint(expr=   m.b53 + m.b63 + m.b73 + m.b83 + m.b93 + m.b103 == 1)

m.c10 = Constraint(expr=   m.b54 + m.b64 + m.b74 + m.b84 + m.b94 + m.b104 == 1)

m.c11 = Constraint(expr=   m.b55 + m.b65 + m.b75 + m.b85 + m.b95 + m.b105 == 1)

m.c12 = Constraint(expr=   m.b56 + m.b66 + m.b76 + m.b86 + m.b96 + m.b106 == 1)

m.c13 = Constraint(expr=   m.b57 + m.b67 + m.b77 + m.b87 + m.b97 + m.b107 == 1)

m.c14 = Constraint(expr=   m.b58 + m.b68 + m.b78 + m.b88 + m.b98 + m.b108 == 1)

m.c15 = Constraint(expr=   m.b59 + m.b69 + m.b79 + m.b89 + m.b99 + m.b109 == 1)

m.c16 = Constraint(expr=   m.b60 + m.b70 + m.b80 + m.b90 + m.b100 + m.b110 == 1)

m.c17 = Constraint(expr=-IfThen(rel_ge(m.x1,0.5),1,0) + m.x111 == 0)

m.c18 = Constraint(expr=-IfThen(rel_ge(m.x2,0.5),1,0) + m.x112 == 0)

m.c19 = Constraint(expr=-IfThen(rel_ge(m.x3,0.5),1,0) + m.x113 == 0)

m.c20 = Constraint(expr=-IfThen(rel_ge(m.x4,0.5),1,0) + m.x114 == 0)

m.c21 = Constraint(expr=-IfThen(rel_ge(m.x5,0.5),1,0) + m.x115 == 0)

m.c22 = Constraint(expr=-IfThen(rel_ge(m.x6,0.5),1,0) + m.x116 == 0)

m.c23 = Constraint(expr=-IfThen(rel_ge(m.x7,0.5),1,0) + m.x117 == 0)

m.c24 = Constraint(expr=-IfThen(rel_ge(m.x8,0.5),1,0) + m.x118 == 0)

m.c25 = Constraint(expr=-IfThen(rel_ge(m.x9,0.5),1,0) + m.x119 == 0)

m.c26 = Constraint(expr=-IfThen(rel_ge(m.x10,0.5),1,0) + m.x120 == 0)

m.c27 = Constraint(expr=-IfThen(rel_ge(m.x11,0.5),1,0) + m.x121 == 0)

m.c28 = Constraint(expr=-IfThen(rel_ge(m.x12,0.5),1,0) + m.x122 == 0)

m.c29 = Constraint(expr=-IfThen(rel_ge(m.x13,0.5),1,0) + m.x123 == 0)

m.c30 = Constraint(expr=-IfThen(rel_ge(m.x14,0.5),1,0) + m.x124 == 0)

m.c31 = Constraint(expr=-IfThen(rel_ge(m.x15,0.5),1,0) + m.x125 == 0)

m.c32 = Constraint(expr=-IfThen(rel_ge(m.x16,0.5),1,0) + m.x126 == 0)

m.c33 = Constraint(expr=-IfThen(rel_ge(m.x17,0.5),1,0) + m.x127 == 0)

m.c34 = Constraint(expr=-IfThen(rel_ge(m.x18,0.5),1,0) + m.x128 == 0)

m.c35 = Constraint(expr=-IfThen(rel_ge(m.x19,0.5),1,0) + m.x129 == 0)

m.c36 = Constraint(expr=-IfThen(rel_ge(m.x20,0.5),1,0) + m.x130 == 0)

m.c37 = Constraint(expr=-IfThen(rel_ge(m.x21,0.5),1,0) + m.x131 == 0)

m.c38 = Constraint(expr=-IfThen(rel_ge(m.x22,0.5),1,0) + m.x132 == 0)

m.c39 = Constraint(expr=-IfThen(rel_ge(m.x23,0.5),1,0) + m.x133 == 0)

m.c40 = Constraint(expr=-IfThen(rel_ge(m.x24,0.5),1,0) + m.x134 == 0)

m.c41 = Constraint(expr=-IfThen(rel_ge(m.x25,0.5),1,0) + m.x135 == 0)

m.c42 = Constraint(expr=-IfThen(rel_ge(m.x26,0.5),1,0) + m.x136 == 0)

m.c43 = Constraint(expr=-IfThen(rel_ge(m.x27,0.5),1,0) + m.x137 == 0)

m.c44 = Constraint(expr=-IfThen(rel_ge(m.x28,0.5),1,0) + m.x138 == 0)

m.c45 = Constraint(expr=-IfThen(rel_ge(m.x29,0.5),1,0) + m.x139 == 0)

m.c46 = Constraint(expr=-IfThen(rel_ge(m.x30,0.5),1,0) + m.x140 == 0)

m.c47 = Constraint(expr=-IfThen(rel_ge(m.x31,0.5),1,0) + m.x141 == 0)

m.c48 = Constraint(expr=-IfThen(rel_ge(m.x32,0.5),1,0) + m.x142 == 0)

m.c49 = Constraint(expr=-IfThen(rel_ge(m.x33,0.5),1,0) + m.x143 == 0)

m.c50 = Constraint(expr=-IfThen(rel_ge(m.x34,0.5),1,0) + m.x144 == 0)

m.c51 = Constraint(expr=-IfThen(rel_ge(m.x35,0.5),1,0) + m.x145 == 0)

m.c52 = Constraint(expr=-IfThen(rel_ge(m.x36,0.5),1,0) + m.x146 == 0)

m.c53 = Constraint(expr=-IfThen(rel_ge(m.x37,0.5),1,0) + m.x147 == 0)

m.c54 = Constraint(expr=-IfThen(rel_ge(m.x38,0.5),1,0) + m.x148 == 0)

m.c55 = Constraint(expr=-IfThen(rel_ge(m.x39,0.5),1,0) + m.x149 == 0)

m.c56 = Constraint(expr=-IfThen(rel_ge(m.x40,0.5),1,0) + m.x150 == 0)

m.c57 = Constraint(expr=-IfThen(rel_ge(m.x41,0.5),1,0) + m.x151 == 0)

m.c58 = Constraint(expr=-IfThen(rel_ge(m.x42,0.5),1,0) + m.x152 == 0)

m.c59 = Constraint(expr=-IfThen(rel_ge(m.x43,0.5),1,0) + m.x153 == 0)

m.c60 = Constraint(expr=-IfThen(rel_ge(m.x44,0.5),1,0) + m.x154 == 0)

m.c61 = Constraint(expr=-IfThen(rel_ge(m.x45,0.5),1,0) + m.x155 == 0)

m.c62 = Constraint(expr=-IfThen(rel_ge(m.x46,0.5),1,0) + m.x156 == 0)

m.c63 = Constraint(expr=-IfThen(rel_ge(m.x47,0.5),1,0) + m.x157 == 0)

m.c64 = Constraint(expr=-IfThen(rel_ge(m.x48,0.5),1,0) + m.x158 == 0)

m.c65 = Constraint(expr=-IfThen(rel_ge(m.x49,0.5),1,0) + m.x159 == 0)

m.c66 = Constraint(expr=-IfThen(rel_ge(m.x50,0.5),1,0) + m.x160 == 0)

m.c67 = Constraint(expr=-max((-1) + m.x111 + m.x112,0) + m.x161 == 0)

m.c68 = Constraint(expr=-max((-1) + m.x112 + m.x113,0) + m.x162 == 0)

m.c69 = Constraint(expr=-max((-1) + m.x113 + m.x114,0) + m.x163 == 0)

m.c70 = Constraint(expr=-max((-1) + m.x114 + m.x115,0) + m.x164 == 0)

m.c71 = Constraint(expr=-max((-1) + m.x115 + m.x116,0) + m.x165 == 0)

m.c72 = Constraint(expr=-max((-1) + m.x116 + m.x117,0) + m.x166 == 0)

m.c73 = Constraint(expr=-max((-1) + m.x117 + m.x118,0) + m.x167 == 0)

m.c74 = Constraint(expr=-max((-1) + m.x118 + m.x119,0) + m.x168 == 0)

m.c75 = Constraint(expr=-max((-1) + m.x119 + m.x120,0) + m.x169 == 0)

m.c76 = Constraint(expr=-max((-2) + m.x121 + m.x122 + m.x123,0) + m.x170 == 0)

m.c77 = Constraint(expr=-max((-2) + m.x122 + m.x123 + m.x124,0) + m.x171 == 0)

m.c78 = Constraint(expr=-max((-2) + m.x123 + m.x124 + m.x125,0) + m.x172 == 0)

m.c79 = Constraint(expr=-max((-2) + m.x124 + m.x125 + m.x126,0) + m.x173 == 0)

m.c80 = Constraint(expr=-max((-2) + m.x125 + m.x126 + m.x127,0) + m.x174 == 0)

m.c81 = Constraint(expr=-max((-2) + m.x126 + m.x127 + m.x128,0) + m.x175 == 0)

m.c82 = Constraint(expr=-max((-2) + m.x127 + m.x128 + m.x129,0) + m.x176 == 0)

m.c83 = Constraint(expr=-max((-2) + m.x128 + m.x129 + m.x130,0) + m.x177 == 0)

m.c84 = Constraint(expr=-max((-1) + m.x131 + m.x132 + m.x133,0) + m.x178 == 0)

m.c85 = Constraint(expr=-max((-1) + m.x132 + m.x133 + m.x134,0) + m.x179 == 0)

m.c86 = Constraint(expr=-max((-1) + m.x133 + m.x134 + m.x135,0) + m.x180 == 0)

m.c87 = Constraint(expr=-max((-1) + m.x134 + m.x135 + m.x136,0) + m.x181 == 0)

m.c88 = Constraint(expr=-max((-1) + m.x135 + m.x136 + m.x137,0) + m.x182 == 0)

m.c89 = Constraint(expr=-max((-1) + m.x136 + m.x137 + m.x138,0) + m.x183 == 0)

m.c90 = Constraint(expr=-max((-1) + m.x137 + m.x138 + m.x139,0) + m.x184 == 0)

m.c91 = Constraint(expr=-max((-1) + m.x138 + m.x139 + m.x140,0) + m.x185 == 0)

m.c92 = Constraint(expr=-max((-2) + m.x141 + m.x142 + m.x143 + m.x144 + m.x145,0) + m.x186 == 0)

m.c93 = Constraint(expr=-max((-2) + m.x142 + m.x143 + m.x144 + m.x145 + m.x146,0) + m.x187 == 0)

m.c94 = Constraint(expr=-max((-2) + m.x143 + m.x144 + m.x145 + m.x146 + m.x147,0) + m.x188 == 0)

m.c95 = Constraint(expr=-max((-2) + m.x144 + m.x145 + m.x146 + m.x147 + m.x148,0) + m.x189 == 0)

m.c96 = Constraint(expr=-max((-2) + m.x145 + m.x146 + m.x147 + m.x148 + m.x149,0) + m.x190 == 0)

m.c97 = Constraint(expr=-max((-2) + m.x146 + m.x147 + m.x148 + m.x149 + m.x150,0) + m.x191 == 0)

m.c98 = Constraint(expr=-max((-1) + m.x151 + m.x152 + m.x153 + m.x154 + m.x155,0) + m.x192 == 0)

m.c99 = Constraint(expr=-max((-1) + m.x152 + m.x153 + m.x154 + m.x155 + m.x156,0) + m.x193 == 0)

m.c100 = Constraint(expr=-max((-1) + m.x153 + m.x154 + m.x155 + m.x156 + m.x157,0) + m.x194 == 0)

m.c101 = Constraint(expr=-max((-1) + m.x154 + m.x155 + m.x156 + m.x157 + m.x158,0) + m.x195 == 0)

m.c102 = Constraint(expr=-max((-1) + m.x155 + m.x156 + m.x157 + m.x158 + m.x159,0) + m.x196 == 0)

m.c103 = Constraint(expr=-max((-1) + m.x156 + m.x157 + m.x158 + m.x159 + m.x160,0) + m.x197 == 0)

m.c105 = Constraint(expr=   m.x1 - m.b51 - m.b91 - m.b101 == 0)

m.c106 = Constraint(expr=   m.x2 - m.b52 - m.b92 - m.b102 == 0)

m.c107 = Constraint(expr=   m.x3 - m.b53 - m.b93 - m.b103 == 0)

m.c108 = Constraint(expr=   m.x4 - m.b54 - m.b94 - m.b104 == 0)

m.c109 = Constraint(expr=   m.x5 - m.b55 - m.b95 - m.b105 == 0)

m.c110 = Constraint(expr=   m.x6 - m.b56 - m.b96 - m.b106 == 0)

m.c111 = Constraint(expr=   m.x7 - m.b57 - m.b97 - m.b107 == 0)

m.c112 = Constraint(expr=   m.x8 - m.b58 - m.b98 - m.b108 == 0)

m.c113 = Constraint(expr=   m.x9 - m.b59 - m.b99 - m.b109 == 0)

m.c114 = Constraint(expr=   m.x10 - m.b60 - m.b100 - m.b110 == 0)

m.c115 = Constraint(expr=   m.x11 - m.b71 - m.b81 - m.b101 == 0)

m.c116 = Constraint(expr=   m.x12 - m.b72 - m.b82 - m.b102 == 0)

m.c117 = Constraint(expr=   m.x13 - m.b73 - m.b83 - m.b103 == 0)

m.c118 = Constraint(expr=   m.x14 - m.b74 - m.b84 - m.b104 == 0)

m.c119 = Constraint(expr=   m.x15 - m.b75 - m.b85 - m.b105 == 0)

m.c120 = Constraint(expr=   m.x16 - m.b76 - m.b86 - m.b106 == 0)

m.c121 = Constraint(expr=   m.x17 - m.b77 - m.b87 - m.b107 == 0)

m.c122 = Constraint(expr=   m.x18 - m.b78 - m.b88 - m.b108 == 0)

m.c123 = Constraint(expr=   m.x19 - m.b79 - m.b89 - m.b109 == 0)

m.c124 = Constraint(expr=   m.x20 - m.b80 - m.b90 - m.b110 == 0)

m.c125 = Constraint(expr=   m.x21 - m.b51 - m.b91 == 0)

m.c126 = Constraint(expr=   m.x22 - m.b52 - m.b92 == 0)

m.c127 = Constraint(expr=   m.x23 - m.b53 - m.b93 == 0)

m.c128 = Constraint(expr=   m.x24 - m.b54 - m.b94 == 0)

m.c129 = Constraint(expr=   m.x25 - m.b55 - m.b95 == 0)

m.c130 = Constraint(expr=   m.x26 - m.b56 - m.b96 == 0)

m.c131 = Constraint(expr=   m.x27 - m.b57 - m.b97 == 0)

m.c132 = Constraint(expr=   m.x28 - m.b58 - m.b98 == 0)

m.c133 = Constraint(expr=   m.x29 - m.b59 - m.b99 == 0)

m.c134 = Constraint(expr=   m.x30 - m.b60 - m.b100 == 0)

m.c135 = Constraint(expr=   m.x31 - m.b51 - m.b61 - m.b81 == 0)

m.c136 = Constraint(expr=   m.x32 - m.b52 - m.b62 - m.b82 == 0)

m.c137 = Constraint(expr=   m.x33 - m.b53 - m.b63 - m.b83 == 0)

m.c138 = Constraint(expr=   m.x34 - m.b54 - m.b64 - m.b84 == 0)

m.c139 = Constraint(expr=   m.x35 - m.b55 - m.b65 - m.b85 == 0)

m.c140 = Constraint(expr=   m.x36 - m.b56 - m.b66 - m.b86 == 0)

m.c141 = Constraint(expr=   m.x37 - m.b57 - m.b67 - m.b87 == 0)

m.c142 = Constraint(expr=   m.x38 - m.b58 - m.b68 - m.b88 == 0)

m.c143 = Constraint(expr=   m.x39 - m.b59 - m.b69 - m.b89 == 0)

m.c144 = Constraint(expr=   m.x40 - m.b60 - m.b70 - m.b90 == 0)

m.c145 = Constraint(expr=   m.x41 - m.b71 == 0)

m.c146 = Constraint(expr=   m.x42 - m.b72 == 0)

m.c147 = Constraint(expr=   m.x43 - m.b73 == 0)

m.c148 = Constraint(expr=   m.x44 - m.b74 == 0)

m.c149 = Constraint(expr=   m.x45 - m.b75 == 0)

m.c150 = Constraint(expr=   m.x46 - m.b76 == 0)

m.c151 = Constraint(expr=   m.x47 - m.b77 == 0)

m.c152 = Constraint(expr=   m.x48 - m.b78 == 0)

m.c153 = Constraint(expr=   m.x49 - m.b79 == 0)

m.c154 = Constraint(expr=   m.x50 - m.b80 == 0)
