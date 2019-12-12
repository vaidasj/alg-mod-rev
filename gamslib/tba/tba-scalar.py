#  MIP written by GAMS Convert at 12/13/18 10:24:52
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        487       67      294      126        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        255       56      144       55        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1619     1619        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


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
m.b111 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b112 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b113 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b114 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b115 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b116 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b117 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b118 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b119 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b120 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b121 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b122 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b123 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b124 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b125 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b126 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b127 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b128 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b129 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b130 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b131 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b132 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b133 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b134 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b135 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b136 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b137 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b138 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b139 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b140 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b141 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b142 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b143 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b144 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b145 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b146 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b147 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b148 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b149 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b150 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b151 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b152 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b153 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b154 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b155 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b156 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b157 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b158 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b159 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b160 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b161 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b162 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b163 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b164 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b165 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b166 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b167 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b168 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b169 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b170 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.i201 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i202 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i203 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i204 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i205 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i206 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i207 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i208 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i209 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i210 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i211 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i212 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i213 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i214 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i215 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i216 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i217 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i218 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i219 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i220 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i221 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i222 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i223 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i224 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i225 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i226 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i227 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i228 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i229 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i230 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i231 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i232 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i233 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i234 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i235 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i236 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i237 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i238 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i239 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i240 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i241 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i242 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i243 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i244 = Var(within=Integers,bounds=(0,205),initialize=0)
m.i245 = Var(within=Integers,bounds=(0,5),initialize=0)
m.i246 = Var(within=Integers,bounds=(0,15),initialize=0)
m.i247 = Var(within=Integers,bounds=(0,55),initialize=0)
m.i248 = Var(within=Integers,bounds=(0,75),initialize=0)
m.i249 = Var(within=Integers,bounds=(0,85),initialize=0)
m.i250 = Var(within=Integers,bounds=(0,85),initialize=0)
m.i251 = Var(within=Integers,bounds=(0,90),initialize=0)
m.i252 = Var(within=Integers,bounds=(0,135),initialize=0)
m.i253 = Var(within=Integers,bounds=(0,195),initialize=0)
m.i254 = Var(within=Integers,bounds=(0,195),initialize=0)
m.i255 = Var(within=Integers,bounds=(0,995),initialize=0)

m.obj = Objective(expr=   0.00879999999999992*m.x2 + 0.00879999999999992*m.x3 + 0.00879999999999992*m.x4
                        + 0.00879999999999992*m.x5 + 0.00879999999999992*m.x6 + 0.00879999999999992*m.x7
                        + 0.00879999999999992*m.x8 + 0.00879999999999992*m.x9 + 0.00879999999999992*m.x10
                        + 0.00879999999999992*m.x11 + 0.00879999999999992*m.x12 + 0.00879999999999992*m.x13
                        + 0.00879999999999992*m.x14 + 0.00879999999999992*m.x15 + 0.00879999999999992*m.x16
                        + 0.00879999999999992*m.x17 + 0.00879999999999992*m.x18 + 0.00879999999999992*m.x19
                        + 0.00879999999999992*m.x20 + 0.00879999999999992*m.x21 + 0.00879999999999992*m.x22
                        + 0.00879999999999992*m.x23 + 0.00879999999999992*m.x24 + 0.00879999999999992*m.x25
                        + 0.00879999999999992*m.x26 + 0.00879999999999992*m.x27 + 0.00879999999999992*m.x28
                        + 0.00879999999999992*m.x29 + 0.00879999999999992*m.x30 + 0.00879999999999992*m.x31
                        + 0.00879999999999992*m.x32 + 0.00879999999999992*m.x33 + 0.00879999999999992*m.x34
                        + 0.00879999999999992*m.x35 + 0.00879999999999992*m.x36 + 0.00879999999999992*m.x37
                        + 0.00879999999999992*m.x38 + 0.00879999999999992*m.x39 + 0.00879999999999992*m.x40
                        + 0.00879999999999992*m.x41 + 0.00879999999999992*m.x42 + 0.00879999999999992*m.x43
                        + 0.00879999999999992*m.x44 + 0.00879999999999992*m.x45 - 1E-5*m.b182 - 1E-5*m.b183
                        - 1E-5*m.b184 - 1E-5*m.b185 - 1E-5*m.b186 - 1E-5*m.b187 - 1E-5*m.b188 - 1E-5*m.b189
                        - 1E-5*m.b190 - 1E-5*m.b191 - 1E-5*m.b192, sense=maximize)

m.c1 = Constraint(expr=   m.x2 + m.x6 + m.x10 + m.x14 + m.x18 + m.x22 + m.x26 + m.x30 + m.x34 + m.x38 + m.x42
                        - 950*m.b123 >= 0)

m.c2 = Constraint(expr=   m.x3 + m.x7 + m.x11 + m.x15 + m.x19 + m.x23 + m.x27 + m.x31 + m.x35 + m.x39 + m.x43
                        - 950*m.b124 >= 0)

m.c3 = Constraint(expr=   m.x4 + m.x8 + m.x12 + m.x16 + m.x20 + m.x24 + m.x28 + m.x32 + m.x36 + m.x40 + m.x44
                        - 950*m.b125 >= 0)

m.c4 = Constraint(expr=   m.x5 + m.x9 + m.x13 + m.x17 + m.x21 + m.x25 + m.x29 + m.x33 + m.x37 + m.x41 + m.x45
                        - 950*m.b126 >= 0)

m.c5 = Constraint(expr=   m.x2 + m.x6 + m.x10 + m.x14 + m.x18 + m.x22 + m.x26 + m.x30 + m.x34 + m.x38 + m.x42
                        - 1050*m.b123 <= 0)

m.c6 = Constraint(expr=   m.x3 + m.x7 + m.x11 + m.x15 + m.x19 + m.x23 + m.x27 + m.x31 + m.x35 + m.x39 + m.x43
                        - 1050*m.b124 <= 0)

m.c7 = Constraint(expr=   m.x4 + m.x8 + m.x12 + m.x16 + m.x20 + m.x24 + m.x28 + m.x32 + m.x36 + m.x40 + m.x44
                        - 1050*m.b125 <= 0)

m.c8 = Constraint(expr=   m.x5 + m.x9 + m.x13 + m.x17 + m.x21 + m.x25 + m.x29 + m.x33 + m.x37 + m.x41 + m.x45
                        - 1050*m.b126 <= 0)

m.c9 = Constraint(expr=   m.x2 + m.x3 + m.x4 + m.x5 + m.x46 == 50)

m.c10 = Constraint(expr=   m.x6 + m.x7 + m.x8 + m.x9 + m.x47 == 100)

m.c11 = Constraint(expr=   m.x10 + m.x11 + m.x12 + m.x13 + m.x48 == 300)

m.c12 = Constraint(expr=   m.x14 + m.x15 + m.x16 + m.x17 + m.x49 == 400)

m.c13 = Constraint(expr=   m.x18 + m.x19 + m.x20 + m.x21 + m.x50 == 450)

m.c14 = Constraint(expr=   m.x22 + m.x23 + m.x24 + m.x25 + m.x51 == 450)

m.c15 = Constraint(expr=   m.x26 + m.x27 + m.x28 + m.x29 + m.x52 == 475)

m.c16 = Constraint(expr=   m.x30 + m.x31 + m.x32 + m.x33 + m.x53 == 700)

m.c17 = Constraint(expr=   m.x34 + m.x35 + m.x36 + m.x37 + m.x54 == 1000)

m.c18 = Constraint(expr=   m.x38 + m.x39 + m.x40 + m.x41 + m.x55 == 1000)

m.c19 = Constraint(expr=   m.x42 + m.x43 + m.x44 + m.x45 + m.x56 == 5000)

m.c20 = Constraint(expr=   m.x2 + m.x6 + m.x10 + m.x14 + m.x18 + m.x22 + m.x26 + m.x30 + m.x34 - m.b123 >= 0)

m.c21 = Constraint(expr=   m.x3 + m.x7 + m.x11 + m.x15 + m.x19 + m.x23 + m.x27 + m.x31 + m.x35 - m.b124 >= 0)

m.c22 = Constraint(expr=   m.x4 + m.x8 + m.x12 + m.x16 + m.x20 + m.x24 + m.x28 + m.x32 + m.x36 - m.b125 >= 0)

m.c23 = Constraint(expr=   m.x5 + m.x9 + m.x13 + m.x17 + m.x21 + m.x25 + m.x29 + m.x33 + m.x37 - m.b126 >= 0)

m.c24 = Constraint(expr=   m.x2 - 25*m.b127 - 5*m.i201 == 0)

m.c25 = Constraint(expr=   m.x3 - 25*m.b128 - 5*m.i202 == 0)

m.c26 = Constraint(expr=   m.x4 - 25*m.b129 - 5*m.i203 == 0)

m.c27 = Constraint(expr=   m.x5 - 25*m.b130 - 5*m.i204 == 0)

m.c28 = Constraint(expr=   m.x6 - 25*m.b131 - 5*m.i205 == 0)

m.c29 = Constraint(expr=   m.x7 - 25*m.b132 - 5*m.i206 == 0)

m.c30 = Constraint(expr=   m.x8 - 25*m.b133 - 5*m.i207 == 0)

m.c31 = Constraint(expr=   m.x9 - 25*m.b134 - 5*m.i208 == 0)

m.c32 = Constraint(expr=   m.x10 - 25*m.b135 - 5*m.i209 == 0)

m.c33 = Constraint(expr=   m.x11 - 25*m.b136 - 5*m.i210 == 0)

m.c34 = Constraint(expr=   m.x12 - 25*m.b137 - 5*m.i211 == 0)

m.c35 = Constraint(expr=   m.x13 - 25*m.b138 - 5*m.i212 == 0)

m.c36 = Constraint(expr=   m.x14 - 25*m.b139 - 5*m.i213 == 0)

m.c37 = Constraint(expr=   m.x15 - 25*m.b140 - 5*m.i214 == 0)

m.c38 = Constraint(expr=   m.x16 - 25*m.b141 - 5*m.i215 == 0)

m.c39 = Constraint(expr=   m.x17 - 25*m.b142 - 5*m.i216 == 0)

m.c40 = Constraint(expr=   m.x18 - 25*m.b143 - 5*m.i217 == 0)

m.c41 = Constraint(expr=   m.x19 - 25*m.b144 - 5*m.i218 == 0)

m.c42 = Constraint(expr=   m.x20 - 25*m.b145 - 5*m.i219 == 0)

m.c43 = Constraint(expr=   m.x21 - 25*m.b146 - 5*m.i220 == 0)

m.c44 = Constraint(expr=   m.x22 - 25*m.b147 - 5*m.i221 == 0)

m.c45 = Constraint(expr=   m.x23 - 25*m.b148 - 5*m.i222 == 0)

m.c46 = Constraint(expr=   m.x24 - 25*m.b149 - 5*m.i223 == 0)

m.c47 = Constraint(expr=   m.x25 - 25*m.b150 - 5*m.i224 == 0)

m.c48 = Constraint(expr=   m.x26 - 25*m.b151 - 5*m.i225 == 0)

m.c49 = Constraint(expr=   m.x27 - 25*m.b152 - 5*m.i226 == 0)

m.c50 = Constraint(expr=   m.x28 - 25*m.b153 - 5*m.i227 == 0)

m.c51 = Constraint(expr=   m.x29 - 25*m.b154 - 5*m.i228 == 0)

m.c52 = Constraint(expr=   m.x30 - 25*m.b155 - 5*m.i229 == 0)

m.c53 = Constraint(expr=   m.x31 - 25*m.b156 - 5*m.i230 == 0)

m.c54 = Constraint(expr=   m.x32 - 25*m.b157 - 5*m.i231 == 0)

m.c55 = Constraint(expr=   m.x33 - 25*m.b158 - 5*m.i232 == 0)

m.c56 = Constraint(expr=   m.x34 - 25*m.b159 - 5*m.i233 == 0)

m.c57 = Constraint(expr=   m.x35 - 25*m.b160 - 5*m.i234 == 0)

m.c58 = Constraint(expr=   m.x36 - 25*m.b161 - 5*m.i235 == 0)

m.c59 = Constraint(expr=   m.x37 - 25*m.b162 - 5*m.i236 == 0)

m.c60 = Constraint(expr=   m.x38 - 25*m.b163 - 5*m.i237 == 0)

m.c61 = Constraint(expr=   m.x39 - 25*m.b164 - 5*m.i238 == 0)

m.c62 = Constraint(expr=   m.x40 - 25*m.b165 - 5*m.i239 == 0)

m.c63 = Constraint(expr=   m.x41 - 25*m.b166 - 5*m.i240 == 0)

m.c64 = Constraint(expr=   m.x42 - 25*m.b167 - 5*m.i241 == 0)

m.c65 = Constraint(expr=   m.x43 - 25*m.b168 - 5*m.i242 == 0)

m.c66 = Constraint(expr=   m.x44 - 25*m.b169 - 5*m.i243 == 0)

m.c67 = Constraint(expr=   m.x45 - 25*m.b170 - 5*m.i244 == 0)

m.c68 = Constraint(expr= - 205*m.b127 + m.i201 <= 0)

m.c69 = Constraint(expr= - 205*m.b128 + m.i202 <= 0)

m.c70 = Constraint(expr= - 205*m.b129 + m.i203 <= 0)

m.c71 = Constraint(expr= - 205*m.b130 + m.i204 <= 0)

m.c72 = Constraint(expr= - 205*m.b131 + m.i205 <= 0)

m.c73 = Constraint(expr= - 205*m.b132 + m.i206 <= 0)

m.c74 = Constraint(expr= - 205*m.b133 + m.i207 <= 0)

m.c75 = Constraint(expr= - 205*m.b134 + m.i208 <= 0)

m.c76 = Constraint(expr= - 205*m.b135 + m.i209 <= 0)

m.c77 = Constraint(expr= - 205*m.b136 + m.i210 <= 0)

m.c78 = Constraint(expr= - 205*m.b137 + m.i211 <= 0)

m.c79 = Constraint(expr= - 205*m.b138 + m.i212 <= 0)

m.c80 = Constraint(expr= - 205*m.b139 + m.i213 <= 0)

m.c81 = Constraint(expr= - 205*m.b140 + m.i214 <= 0)

m.c82 = Constraint(expr= - 205*m.b141 + m.i215 <= 0)

m.c83 = Constraint(expr= - 205*m.b142 + m.i216 <= 0)

m.c84 = Constraint(expr= - 205*m.b143 + m.i217 <= 0)

m.c85 = Constraint(expr= - 205*m.b144 + m.i218 <= 0)

m.c86 = Constraint(expr= - 205*m.b145 + m.i219 <= 0)

m.c87 = Constraint(expr= - 205*m.b146 + m.i220 <= 0)

m.c88 = Constraint(expr= - 205*m.b147 + m.i221 <= 0)

m.c89 = Constraint(expr= - 205*m.b148 + m.i222 <= 0)

m.c90 = Constraint(expr= - 205*m.b149 + m.i223 <= 0)

m.c91 = Constraint(expr= - 205*m.b150 + m.i224 <= 0)

m.c92 = Constraint(expr= - 205*m.b151 + m.i225 <= 0)

m.c93 = Constraint(expr= - 205*m.b152 + m.i226 <= 0)

m.c94 = Constraint(expr= - 205*m.b153 + m.i227 <= 0)

m.c95 = Constraint(expr= - 205*m.b154 + m.i228 <= 0)

m.c96 = Constraint(expr= - 205*m.b155 + m.i229 <= 0)

m.c97 = Constraint(expr= - 205*m.b156 + m.i230 <= 0)

m.c98 = Constraint(expr= - 205*m.b157 + m.i231 <= 0)

m.c99 = Constraint(expr= - 205*m.b158 + m.i232 <= 0)

m.c100 = Constraint(expr= - 205*m.b159 + m.i233 <= 0)

m.c101 = Constraint(expr= - 205*m.b160 + m.i234 <= 0)

m.c102 = Constraint(expr= - 205*m.b161 + m.i235 <= 0)

m.c103 = Constraint(expr= - 205*m.b162 + m.i236 <= 0)

m.c104 = Constraint(expr= - 205*m.b163 + m.i237 <= 0)

m.c105 = Constraint(expr= - 205*m.b164 + m.i238 <= 0)

m.c106 = Constraint(expr= - 205*m.b165 + m.i239 <= 0)

m.c107 = Constraint(expr= - 205*m.b166 + m.i240 <= 0)

m.c108 = Constraint(expr= - 205*m.b167 + m.i241 <= 0)

m.c109 = Constraint(expr= - 205*m.b168 + m.i242 <= 0)

m.c110 = Constraint(expr= - 205*m.b169 + m.i243 <= 0)

m.c111 = Constraint(expr= - 205*m.b170 + m.i244 <= 0)

m.c112 = Constraint(expr=   m.x46 - 25*m.b171 - 5*m.i245 == 0)

m.c113 = Constraint(expr=   m.x47 - 25*m.b172 - 5*m.i246 == 0)

m.c114 = Constraint(expr=   m.x48 - 25*m.b173 - 5*m.i247 == 0)

m.c115 = Constraint(expr=   m.x49 - 25*m.b174 - 5*m.i248 == 0)

m.c116 = Constraint(expr=   m.x50 - 25*m.b175 - 5*m.i249 == 0)

m.c117 = Constraint(expr=   m.x51 - 25*m.b176 - 5*m.i250 == 0)

m.c118 = Constraint(expr=   m.x52 - 25*m.b177 - 5*m.i251 == 0)

m.c119 = Constraint(expr=   m.x53 - 25*m.b178 - 5*m.i252 == 0)

m.c120 = Constraint(expr=   m.x54 - 25*m.b179 - 5*m.i253 == 0)

m.c121 = Constraint(expr=   m.x55 - 25*m.b180 - 5*m.i254 == 0)

m.c122 = Constraint(expr=   m.x56 - 25*m.b181 - 5*m.i255 == 0)

m.c123 = Constraint(expr= - 5*m.b171 + m.i245 <= 0)

m.c124 = Constraint(expr= - 15*m.b172 + m.i246 <= 0)

m.c125 = Constraint(expr= - 55*m.b173 + m.i247 <= 0)

m.c126 = Constraint(expr= - 75*m.b174 + m.i248 <= 0)

m.c127 = Constraint(expr= - 85*m.b175 + m.i249 <= 0)

m.c128 = Constraint(expr= - 85*m.b176 + m.i250 <= 0)

m.c129 = Constraint(expr= - 90*m.b177 + m.i251 <= 0)

m.c130 = Constraint(expr= - 135*m.b178 + m.i252 <= 0)

m.c131 = Constraint(expr= - 195*m.b179 + m.i253 <= 0)

m.c132 = Constraint(expr= - 195*m.b180 + m.i254 <= 0)

m.c133 = Constraint(expr= - 995*m.b181 + m.i255 <= 0)

m.c134 = Constraint(expr=   m.x2 - 1050*m.b57 <= 0)

m.c135 = Constraint(expr=   m.x3 - 1050*m.b58 <= 0)

m.c136 = Constraint(expr=   m.x4 - 1050*m.b59 <= 0)

m.c137 = Constraint(expr=   m.x5 - 1050*m.b60 <= 0)

m.c138 = Constraint(expr=   m.x6 - 1050*m.b61 <= 0)

m.c139 = Constraint(expr=   m.x7 - 1050*m.b62 <= 0)

m.c140 = Constraint(expr=   m.x8 - 1050*m.b63 <= 0)

m.c141 = Constraint(expr=   m.x9 - 1050*m.b64 <= 0)

m.c142 = Constraint(expr=   m.x10 - 1050*m.b65 <= 0)

m.c143 = Constraint(expr=   m.x11 - 1050*m.b66 <= 0)

m.c144 = Constraint(expr=   m.x12 - 1050*m.b67 <= 0)

m.c145 = Constraint(expr=   m.x13 - 1050*m.b68 <= 0)

m.c146 = Constraint(expr=   m.x14 - 1050*m.b69 <= 0)

m.c147 = Constraint(expr=   m.x15 - 1050*m.b70 <= 0)

m.c148 = Constraint(expr=   m.x16 - 1050*m.b71 <= 0)

m.c149 = Constraint(expr=   m.x17 - 1050*m.b72 <= 0)

m.c150 = Constraint(expr=   m.x18 - 1050*m.b73 <= 0)

m.c151 = Constraint(expr=   m.x19 - 1050*m.b74 <= 0)

m.c152 = Constraint(expr=   m.x20 - 1050*m.b75 <= 0)

m.c153 = Constraint(expr=   m.x21 - 1050*m.b76 <= 0)

m.c154 = Constraint(expr=   m.x22 - 1050*m.b77 <= 0)

m.c155 = Constraint(expr=   m.x23 - 1050*m.b78 <= 0)

m.c156 = Constraint(expr=   m.x24 - 1050*m.b79 <= 0)

m.c157 = Constraint(expr=   m.x25 - 1050*m.b80 <= 0)

m.c158 = Constraint(expr=   m.x26 - 1050*m.b81 <= 0)

m.c159 = Constraint(expr=   m.x27 - 1050*m.b82 <= 0)

m.c160 = Constraint(expr=   m.x28 - 1050*m.b83 <= 0)

m.c161 = Constraint(expr=   m.x29 - 1050*m.b84 <= 0)

m.c162 = Constraint(expr=   m.x30 - 1050*m.b85 <= 0)

m.c163 = Constraint(expr=   m.x31 - 1050*m.b86 <= 0)

m.c164 = Constraint(expr=   m.x32 - 1050*m.b87 <= 0)

m.c165 = Constraint(expr=   m.x33 - 1050*m.b88 <= 0)

m.c166 = Constraint(expr=   m.x34 - 1050*m.b89 <= 0)

m.c167 = Constraint(expr=   m.x35 - 1050*m.b90 <= 0)

m.c168 = Constraint(expr=   m.x36 - 1050*m.b91 <= 0)

m.c169 = Constraint(expr=   m.x37 - 1050*m.b92 <= 0)

m.c170 = Constraint(expr=   m.x38 - 1050*m.b93 <= 0)

m.c171 = Constraint(expr=   m.x39 - 1050*m.b94 <= 0)

m.c172 = Constraint(expr=   m.x40 - 1050*m.b95 <= 0)

m.c173 = Constraint(expr=   m.x41 - 1050*m.b96 <= 0)

m.c174 = Constraint(expr=   m.x42 - 1050*m.b97 <= 0)

m.c175 = Constraint(expr=   m.x43 - 1050*m.b98 <= 0)

m.c176 = Constraint(expr=   m.x44 - 1050*m.b99 <= 0)

m.c177 = Constraint(expr=   m.x45 - 1050*m.b100 <= 0)

m.c178 = Constraint(expr=   0.02*m.x46 + m.b101 >= 1)

m.c179 = Constraint(expr=   0.01*m.x47 + m.b102 >= 1)

m.c180 = Constraint(expr=   0.00333333333333333*m.x48 + m.b103 >= 1)

m.c181 = Constraint(expr=   0.0025*m.x49 + m.b104 >= 1)

m.c182 = Constraint(expr=   0.00222222222222222*m.x50 + m.b105 >= 1)

m.c183 = Constraint(expr=   0.00222222222222222*m.x51 + m.b106 >= 1)

m.c184 = Constraint(expr=   0.00210526315789474*m.x52 + m.b107 >= 1)

m.c185 = Constraint(expr=   0.00142857142857143*m.x53 + m.b108 >= 1)

m.c186 = Constraint(expr=   0.001*m.x54 + m.b109 >= 1)

m.c187 = Constraint(expr=   0.001*m.x55 + m.b110 >= 1)

m.c188 = Constraint(expr=   0.0002*m.x56 + m.b111 >= 1)

m.c189 = Constraint(expr= - 0.02*m.x46 + m.b112 >= 0)

m.c190 = Constraint(expr= - 0.01*m.x47 + m.b113 >= 0)

m.c191 = Constraint(expr= - 0.00333333333333333*m.x48 + m.b114 >= 0)

m.c192 = Constraint(expr= - 0.0025*m.x49 + m.b115 >= 0)

m.c193 = Constraint(expr= - 0.00222222222222222*m.x50 + m.b116 >= 0)

m.c194 = Constraint(expr= - 0.00222222222222222*m.x51 + m.b117 >= 0)

m.c195 = Constraint(expr= - 0.00210526315789474*m.x52 + m.b118 >= 0)

m.c196 = Constraint(expr= - 0.00142857142857143*m.x53 + m.b119 >= 0)

m.c197 = Constraint(expr= - 0.001*m.x54 + m.b120 >= 0)

m.c198 = Constraint(expr= - 0.001*m.x55 + m.b121 >= 0)

m.c199 = Constraint(expr= - 0.0002*m.x56 + m.b122 >= 0)

m.c200 = Constraint(expr=   m.b57 + m.b58 + m.b59 + m.b60 + m.b101 + m.b112 - 4*m.b182 <= 2)

m.c201 = Constraint(expr=   m.b61 + m.b62 + m.b63 + m.b64 + m.b102 + m.b113 - 4*m.b183 <= 2)

m.c202 = Constraint(expr=   m.b65 + m.b66 + m.b67 + m.b68 + m.b103 + m.b114 - 4*m.b184 <= 2)

m.c203 = Constraint(expr=   m.b69 + m.b70 + m.b71 + m.b72 + m.b104 + m.b115 - 4*m.b185 <= 2)

m.c204 = Constraint(expr=   m.b73 + m.b74 + m.b75 + m.b76 + m.b105 + m.b116 - 4*m.b186 <= 2)

m.c205 = Constraint(expr=   m.b77 + m.b78 + m.b79 + m.b80 + m.b106 + m.b117 - 4*m.b187 <= 2)

m.c206 = Constraint(expr=   m.b81 + m.b82 + m.b83 + m.b84 + m.b107 + m.b118 - 4*m.b188 <= 2)

m.c207 = Constraint(expr=   m.b85 + m.b86 + m.b87 + m.b88 + m.b108 + m.b119 - 4*m.b189 <= 2)

m.c208 = Constraint(expr=   m.b89 + m.b90 + m.b91 + m.b92 + m.b109 + m.b120 - 4*m.b190 <= 2)

m.c209 = Constraint(expr=   m.b93 + m.b94 + m.b95 + m.b96 + m.b110 + m.b121 - 4*m.b191 <= 2)

m.c210 = Constraint(expr=   m.b97 + m.b98 + m.b99 + m.b100 + m.b111 + m.b122 - 4*m.b192 <= 2)

m.c211 = Constraint(expr= - m.x2 + 100*m.b193 >= -950)

m.c212 = Constraint(expr= - m.x3 + 100*m.b194 >= -950)

m.c213 = Constraint(expr= - m.x4 + 100*m.b195 >= -950)

m.c214 = Constraint(expr= - m.x5 + 100*m.b196 >= -950)

m.c215 = Constraint(expr= - m.x6 + 100*m.b193 >= -950)

m.c216 = Constraint(expr= - m.x7 + 100*m.b194 >= -950)

m.c217 = Constraint(expr= - m.x8 + 100*m.b195 >= -950)

m.c218 = Constraint(expr= - m.x9 + 100*m.b196 >= -950)

m.c219 = Constraint(expr= - m.x10 + 100*m.b193 >= -950)

m.c220 = Constraint(expr= - m.x11 + 100*m.b194 >= -950)

m.c221 = Constraint(expr= - m.x12 + 100*m.b195 >= -950)

m.c222 = Constraint(expr= - m.x13 + 100*m.b196 >= -950)

m.c223 = Constraint(expr= - m.x14 + 100*m.b193 >= -950)

m.c224 = Constraint(expr= - m.x15 + 100*m.b194 >= -950)

m.c225 = Constraint(expr= - m.x16 + 100*m.b195 >= -950)

m.c226 = Constraint(expr= - m.x17 + 100*m.b196 >= -950)

m.c227 = Constraint(expr= - m.x18 + 100*m.b193 >= -950)

m.c228 = Constraint(expr= - m.x19 + 100*m.b194 >= -950)

m.c229 = Constraint(expr= - m.x20 + 100*m.b195 >= -950)

m.c230 = Constraint(expr= - m.x21 + 100*m.b196 >= -950)

m.c231 = Constraint(expr= - m.x22 + 100*m.b193 >= -950)

m.c232 = Constraint(expr= - m.x23 + 100*m.b194 >= -950)

m.c233 = Constraint(expr= - m.x24 + 100*m.b195 >= -950)

m.c234 = Constraint(expr= - m.x25 + 100*m.b196 >= -950)

m.c235 = Constraint(expr= - m.x26 + 100*m.b193 >= -950)

m.c236 = Constraint(expr= - m.x27 + 100*m.b194 >= -950)

m.c237 = Constraint(expr= - m.x28 + 100*m.b195 >= -950)

m.c238 = Constraint(expr= - m.x29 + 100*m.b196 >= -950)

m.c239 = Constraint(expr= - m.x30 + 100*m.b193 >= -950)

m.c240 = Constraint(expr= - m.x31 + 100*m.b194 >= -950)

m.c241 = Constraint(expr= - m.x32 + 100*m.b195 >= -950)

m.c242 = Constraint(expr= - m.x33 + 100*m.b196 >= -950)

m.c243 = Constraint(expr= - m.x34 + 100*m.b193 >= -950)

m.c244 = Constraint(expr= - m.x35 + 100*m.b194 >= -950)

m.c245 = Constraint(expr= - m.x36 + 100*m.b195 >= -950)

m.c246 = Constraint(expr= - m.x37 + 100*m.b196 >= -950)

m.c247 = Constraint(expr= - m.x38 + 100*m.b193 >= -950)

m.c248 = Constraint(expr= - m.x39 + 100*m.b194 >= -950)

m.c249 = Constraint(expr= - m.x40 + 100*m.b195 >= -950)

m.c250 = Constraint(expr= - m.x41 + 100*m.b196 >= -950)

m.c251 = Constraint(expr= - m.x42 + 100*m.b193 >= -950)

m.c252 = Constraint(expr= - m.x43 + 100*m.b194 >= -950)

m.c253 = Constraint(expr= - m.x44 + 100*m.b195 >= -950)

m.c254 = Constraint(expr= - m.x45 + 100*m.b196 >= -950)

m.c255 = Constraint(expr= - m.x2 - m.x6 + 100*m.b197 >= -950)

m.c256 = Constraint(expr= - m.x3 - m.x7 + 100*m.b198 >= -950)

m.c257 = Constraint(expr= - m.x4 - m.x8 + 100*m.b199 >= -950)

m.c258 = Constraint(expr= - m.x5 - m.x9 + 100*m.b200 >= -950)

m.c259 = Constraint(expr= - m.x2 - m.x10 + 100*m.b197 >= -950)

m.c260 = Constraint(expr= - m.x3 - m.x11 + 100*m.b198 >= -950)

m.c261 = Constraint(expr= - m.x4 - m.x12 + 100*m.b199 >= -950)

m.c262 = Constraint(expr= - m.x5 - m.x13 + 100*m.b200 >= -950)

m.c263 = Constraint(expr= - m.x2 - m.x14 + 100*m.b197 >= -950)

m.c264 = Constraint(expr= - m.x3 - m.x15 + 100*m.b198 >= -950)

m.c265 = Constraint(expr= - m.x4 - m.x16 + 100*m.b199 >= -950)

m.c266 = Constraint(expr= - m.x5 - m.x17 + 100*m.b200 >= -950)

m.c267 = Constraint(expr= - m.x2 - m.x18 + 100*m.b197 >= -950)

m.c268 = Constraint(expr= - m.x3 - m.x19 + 100*m.b198 >= -950)

m.c269 = Constraint(expr= - m.x4 - m.x20 + 100*m.b199 >= -950)

m.c270 = Constraint(expr= - m.x5 - m.x21 + 100*m.b200 >= -950)

m.c271 = Constraint(expr= - m.x2 - m.x22 + 100*m.b197 >= -950)

m.c272 = Constraint(expr= - m.x3 - m.x23 + 100*m.b198 >= -950)

m.c273 = Constraint(expr= - m.x4 - m.x24 + 100*m.b199 >= -950)

m.c274 = Constraint(expr= - m.x5 - m.x25 + 100*m.b200 >= -950)

m.c275 = Constraint(expr= - m.x2 - m.x26 + 100*m.b197 >= -950)

m.c276 = Constraint(expr= - m.x3 - m.x27 + 100*m.b198 >= -950)

m.c277 = Constraint(expr= - m.x4 - m.x28 + 100*m.b199 >= -950)

m.c278 = Constraint(expr= - m.x5 - m.x29 + 100*m.b200 >= -950)

m.c279 = Constraint(expr= - m.x2 - m.x30 + 100*m.b197 >= -950)

m.c280 = Constraint(expr= - m.x3 - m.x31 + 100*m.b198 >= -950)

m.c281 = Constraint(expr= - m.x4 - m.x32 + 100*m.b199 >= -950)

m.c282 = Constraint(expr= - m.x5 - m.x33 + 100*m.b200 >= -950)

m.c283 = Constraint(expr= - m.x2 - m.x34 + 100*m.b197 >= -950)

m.c284 = Constraint(expr= - m.x3 - m.x35 + 100*m.b198 >= -950)

m.c285 = Constraint(expr= - m.x4 - m.x36 + 100*m.b199 >= -950)

m.c286 = Constraint(expr= - m.x5 - m.x37 + 100*m.b200 >= -950)

m.c287 = Constraint(expr= - m.x2 - m.x38 + 100*m.b197 >= -950)

m.c288 = Constraint(expr= - m.x3 - m.x39 + 100*m.b198 >= -950)

m.c289 = Constraint(expr= - m.x4 - m.x40 + 100*m.b199 >= -950)

m.c290 = Constraint(expr= - m.x5 - m.x41 + 100*m.b200 >= -950)

m.c291 = Constraint(expr= - m.x2 - m.x42 + 100*m.b197 >= -950)

m.c292 = Constraint(expr= - m.x3 - m.x43 + 100*m.b198 >= -950)

m.c293 = Constraint(expr= - m.x4 - m.x44 + 100*m.b199 >= -950)

m.c294 = Constraint(expr= - m.x5 - m.x45 + 100*m.b200 >= -950)

m.c295 = Constraint(expr= - m.x6 - m.x10 + 100*m.b197 >= -950)

m.c296 = Constraint(expr= - m.x7 - m.x11 + 100*m.b198 >= -950)

m.c297 = Constraint(expr= - m.x8 - m.x12 + 100*m.b199 >= -950)

m.c298 = Constraint(expr= - m.x9 - m.x13 + 100*m.b200 >= -950)

m.c299 = Constraint(expr= - m.x6 - m.x14 + 100*m.b197 >= -950)

m.c300 = Constraint(expr= - m.x7 - m.x15 + 100*m.b198 >= -950)

m.c301 = Constraint(expr= - m.x8 - m.x16 + 100*m.b199 >= -950)

m.c302 = Constraint(expr= - m.x9 - m.x17 + 100*m.b200 >= -950)

m.c303 = Constraint(expr= - m.x6 - m.x18 + 100*m.b197 >= -950)

m.c304 = Constraint(expr= - m.x7 - m.x19 + 100*m.b198 >= -950)

m.c305 = Constraint(expr= - m.x8 - m.x20 + 100*m.b199 >= -950)

m.c306 = Constraint(expr= - m.x9 - m.x21 + 100*m.b200 >= -950)

m.c307 = Constraint(expr= - m.x6 - m.x22 + 100*m.b197 >= -950)

m.c308 = Constraint(expr= - m.x7 - m.x23 + 100*m.b198 >= -950)

m.c309 = Constraint(expr= - m.x8 - m.x24 + 100*m.b199 >= -950)

m.c310 = Constraint(expr= - m.x9 - m.x25 + 100*m.b200 >= -950)

m.c311 = Constraint(expr= - m.x6 - m.x26 + 100*m.b197 >= -950)

m.c312 = Constraint(expr= - m.x7 - m.x27 + 100*m.b198 >= -950)

m.c313 = Constraint(expr= - m.x8 - m.x28 + 100*m.b199 >= -950)

m.c314 = Constraint(expr= - m.x9 - m.x29 + 100*m.b200 >= -950)

m.c315 = Constraint(expr= - m.x6 - m.x30 + 100*m.b197 >= -950)

m.c316 = Constraint(expr= - m.x7 - m.x31 + 100*m.b198 >= -950)

m.c317 = Constraint(expr= - m.x8 - m.x32 + 100*m.b199 >= -950)

m.c318 = Constraint(expr= - m.x9 - m.x33 + 100*m.b200 >= -950)

m.c319 = Constraint(expr= - m.x6 - m.x34 + 100*m.b197 >= -950)

m.c320 = Constraint(expr= - m.x7 - m.x35 + 100*m.b198 >= -950)

m.c321 = Constraint(expr= - m.x8 - m.x36 + 100*m.b199 >= -950)

m.c322 = Constraint(expr= - m.x9 - m.x37 + 100*m.b200 >= -950)

m.c323 = Constraint(expr= - m.x6 - m.x38 + 100*m.b197 >= -950)

m.c324 = Constraint(expr= - m.x7 - m.x39 + 100*m.b198 >= -950)

m.c325 = Constraint(expr= - m.x8 - m.x40 + 100*m.b199 >= -950)

m.c326 = Constraint(expr= - m.x9 - m.x41 + 100*m.b200 >= -950)

m.c327 = Constraint(expr= - m.x6 - m.x42 + 100*m.b197 >= -950)

m.c328 = Constraint(expr= - m.x7 - m.x43 + 100*m.b198 >= -950)

m.c329 = Constraint(expr= - m.x8 - m.x44 + 100*m.b199 >= -950)

m.c330 = Constraint(expr= - m.x9 - m.x45 + 100*m.b200 >= -950)

m.c331 = Constraint(expr= - m.x10 - m.x14 + 100*m.b197 >= -950)

m.c332 = Constraint(expr= - m.x11 - m.x15 + 100*m.b198 >= -950)

m.c333 = Constraint(expr= - m.x12 - m.x16 + 100*m.b199 >= -950)

m.c334 = Constraint(expr= - m.x13 - m.x17 + 100*m.b200 >= -950)

m.c335 = Constraint(expr= - m.x10 - m.x18 + 100*m.b197 >= -950)

m.c336 = Constraint(expr= - m.x11 - m.x19 + 100*m.b198 >= -950)

m.c337 = Constraint(expr= - m.x12 - m.x20 + 100*m.b199 >= -950)

m.c338 = Constraint(expr= - m.x13 - m.x21 + 100*m.b200 >= -950)

m.c339 = Constraint(expr= - m.x10 - m.x22 + 100*m.b197 >= -950)

m.c340 = Constraint(expr= - m.x11 - m.x23 + 100*m.b198 >= -950)

m.c341 = Constraint(expr= - m.x12 - m.x24 + 100*m.b199 >= -950)

m.c342 = Constraint(expr= - m.x13 - m.x25 + 100*m.b200 >= -950)

m.c343 = Constraint(expr= - m.x10 - m.x26 + 100*m.b197 >= -950)

m.c344 = Constraint(expr= - m.x11 - m.x27 + 100*m.b198 >= -950)

m.c345 = Constraint(expr= - m.x12 - m.x28 + 100*m.b199 >= -950)

m.c346 = Constraint(expr= - m.x13 - m.x29 + 100*m.b200 >= -950)

m.c347 = Constraint(expr= - m.x10 - m.x30 + 100*m.b197 >= -950)

m.c348 = Constraint(expr= - m.x11 - m.x31 + 100*m.b198 >= -950)

m.c349 = Constraint(expr= - m.x12 - m.x32 + 100*m.b199 >= -950)

m.c350 = Constraint(expr= - m.x13 - m.x33 + 100*m.b200 >= -950)

m.c351 = Constraint(expr= - m.x10 - m.x34 + 100*m.b197 >= -950)

m.c352 = Constraint(expr= - m.x11 - m.x35 + 100*m.b198 >= -950)

m.c353 = Constraint(expr= - m.x12 - m.x36 + 100*m.b199 >= -950)

m.c354 = Constraint(expr= - m.x13 - m.x37 + 100*m.b200 >= -950)

m.c355 = Constraint(expr= - m.x10 - m.x38 + 100*m.b197 >= -950)

m.c356 = Constraint(expr= - m.x11 - m.x39 + 100*m.b198 >= -950)

m.c357 = Constraint(expr= - m.x12 - m.x40 + 100*m.b199 >= -950)

m.c358 = Constraint(expr= - m.x13 - m.x41 + 100*m.b200 >= -950)

m.c359 = Constraint(expr= - m.x10 - m.x42 + 100*m.b197 >= -950)

m.c360 = Constraint(expr= - m.x11 - m.x43 + 100*m.b198 >= -950)

m.c361 = Constraint(expr= - m.x12 - m.x44 + 100*m.b199 >= -950)

m.c362 = Constraint(expr= - m.x13 - m.x45 + 100*m.b200 >= -950)

m.c363 = Constraint(expr= - m.x14 - m.x18 + 100*m.b197 >= -950)

m.c364 = Constraint(expr= - m.x15 - m.x19 + 100*m.b198 >= -950)

m.c365 = Constraint(expr= - m.x16 - m.x20 + 100*m.b199 >= -950)

m.c366 = Constraint(expr= - m.x17 - m.x21 + 100*m.b200 >= -950)

m.c367 = Constraint(expr= - m.x14 - m.x22 + 100*m.b197 >= -950)

m.c368 = Constraint(expr= - m.x15 - m.x23 + 100*m.b198 >= -950)

m.c369 = Constraint(expr= - m.x16 - m.x24 + 100*m.b199 >= -950)

m.c370 = Constraint(expr= - m.x17 - m.x25 + 100*m.b200 >= -950)

m.c371 = Constraint(expr= - m.x14 - m.x26 + 100*m.b197 >= -950)

m.c372 = Constraint(expr= - m.x15 - m.x27 + 100*m.b198 >= -950)

m.c373 = Constraint(expr= - m.x16 - m.x28 + 100*m.b199 >= -950)

m.c374 = Constraint(expr= - m.x17 - m.x29 + 100*m.b200 >= -950)

m.c375 = Constraint(expr= - m.x14 - m.x30 + 100*m.b197 >= -950)

m.c376 = Constraint(expr= - m.x15 - m.x31 + 100*m.b198 >= -950)

m.c377 = Constraint(expr= - m.x16 - m.x32 + 100*m.b199 >= -950)

m.c378 = Constraint(expr= - m.x17 - m.x33 + 100*m.b200 >= -950)

m.c379 = Constraint(expr= - m.x14 - m.x34 + 100*m.b197 >= -950)

m.c380 = Constraint(expr= - m.x15 - m.x35 + 100*m.b198 >= -950)

m.c381 = Constraint(expr= - m.x16 - m.x36 + 100*m.b199 >= -950)

m.c382 = Constraint(expr= - m.x17 - m.x37 + 100*m.b200 >= -950)

m.c383 = Constraint(expr= - m.x14 - m.x38 + 100*m.b197 >= -950)

m.c384 = Constraint(expr= - m.x15 - m.x39 + 100*m.b198 >= -950)

m.c385 = Constraint(expr= - m.x16 - m.x40 + 100*m.b199 >= -950)

m.c386 = Constraint(expr= - m.x17 - m.x41 + 100*m.b200 >= -950)

m.c387 = Constraint(expr= - m.x14 - m.x42 + 100*m.b197 >= -950)

m.c388 = Constraint(expr= - m.x15 - m.x43 + 100*m.b198 >= -950)

m.c389 = Constraint(expr= - m.x16 - m.x44 + 100*m.b199 >= -950)

m.c390 = Constraint(expr= - m.x17 - m.x45 + 100*m.b200 >= -950)

m.c391 = Constraint(expr= - m.x18 - m.x22 + 100*m.b197 >= -950)

m.c392 = Constraint(expr= - m.x19 - m.x23 + 100*m.b198 >= -950)

m.c393 = Constraint(expr= - m.x20 - m.x24 + 100*m.b199 >= -950)

m.c394 = Constraint(expr= - m.x21 - m.x25 + 100*m.b200 >= -950)

m.c395 = Constraint(expr= - m.x18 - m.x26 + 100*m.b197 >= -950)

m.c396 = Constraint(expr= - m.x19 - m.x27 + 100*m.b198 >= -950)

m.c397 = Constraint(expr= - m.x20 - m.x28 + 100*m.b199 >= -950)

m.c398 = Constraint(expr= - m.x21 - m.x29 + 100*m.b200 >= -950)

m.c399 = Constraint(expr= - m.x18 - m.x30 + 100*m.b197 >= -950)

m.c400 = Constraint(expr= - m.x19 - m.x31 + 100*m.b198 >= -950)

m.c401 = Constraint(expr= - m.x20 - m.x32 + 100*m.b199 >= -950)

m.c402 = Constraint(expr= - m.x21 - m.x33 + 100*m.b200 >= -950)

m.c403 = Constraint(expr= - m.x18 - m.x34 + 100*m.b197 >= -950)

m.c404 = Constraint(expr= - m.x19 - m.x35 + 100*m.b198 >= -950)

m.c405 = Constraint(expr= - m.x20 - m.x36 + 100*m.b199 >= -950)

m.c406 = Constraint(expr= - m.x21 - m.x37 + 100*m.b200 >= -950)

m.c407 = Constraint(expr= - m.x18 - m.x38 + 100*m.b197 >= -950)

m.c408 = Constraint(expr= - m.x19 - m.x39 + 100*m.b198 >= -950)

m.c409 = Constraint(expr= - m.x20 - m.x40 + 100*m.b199 >= -950)

m.c410 = Constraint(expr= - m.x21 - m.x41 + 100*m.b200 >= -950)

m.c411 = Constraint(expr= - m.x18 - m.x42 + 100*m.b197 >= -950)

m.c412 = Constraint(expr= - m.x19 - m.x43 + 100*m.b198 >= -950)

m.c413 = Constraint(expr= - m.x20 - m.x44 + 100*m.b199 >= -950)

m.c414 = Constraint(expr= - m.x21 - m.x45 + 100*m.b200 >= -950)

m.c415 = Constraint(expr= - m.x22 - m.x26 + 100*m.b197 >= -950)

m.c416 = Constraint(expr= - m.x23 - m.x27 + 100*m.b198 >= -950)

m.c417 = Constraint(expr= - m.x24 - m.x28 + 100*m.b199 >= -950)

m.c418 = Constraint(expr= - m.x25 - m.x29 + 100*m.b200 >= -950)

m.c419 = Constraint(expr= - m.x22 - m.x30 + 100*m.b197 >= -950)

m.c420 = Constraint(expr= - m.x23 - m.x31 + 100*m.b198 >= -950)

m.c421 = Constraint(expr= - m.x24 - m.x32 + 100*m.b199 >= -950)

m.c422 = Constraint(expr= - m.x25 - m.x33 + 100*m.b200 >= -950)

m.c423 = Constraint(expr= - m.x22 - m.x34 + 100*m.b197 >= -950)

m.c424 = Constraint(expr= - m.x23 - m.x35 + 100*m.b198 >= -950)

m.c425 = Constraint(expr= - m.x24 - m.x36 + 100*m.b199 >= -950)

m.c426 = Constraint(expr= - m.x25 - m.x37 + 100*m.b200 >= -950)

m.c427 = Constraint(expr= - m.x22 - m.x38 + 100*m.b197 >= -950)

m.c428 = Constraint(expr= - m.x23 - m.x39 + 100*m.b198 >= -950)

m.c429 = Constraint(expr= - m.x24 - m.x40 + 100*m.b199 >= -950)

m.c430 = Constraint(expr= - m.x25 - m.x41 + 100*m.b200 >= -950)

m.c431 = Constraint(expr= - m.x22 - m.x42 + 100*m.b197 >= -950)

m.c432 = Constraint(expr= - m.x23 - m.x43 + 100*m.b198 >= -950)

m.c433 = Constraint(expr= - m.x24 - m.x44 + 100*m.b199 >= -950)

m.c434 = Constraint(expr= - m.x25 - m.x45 + 100*m.b200 >= -950)

m.c435 = Constraint(expr= - m.x26 - m.x30 + 100*m.b197 >= -950)

m.c436 = Constraint(expr= - m.x27 - m.x31 + 100*m.b198 >= -950)

m.c437 = Constraint(expr= - m.x28 - m.x32 + 100*m.b199 >= -950)

m.c438 = Constraint(expr= - m.x29 - m.x33 + 100*m.b200 >= -950)

m.c439 = Constraint(expr= - m.x26 - m.x34 + 100*m.b197 >= -950)

m.c440 = Constraint(expr= - m.x27 - m.x35 + 100*m.b198 >= -950)

m.c441 = Constraint(expr= - m.x28 - m.x36 + 100*m.b199 >= -950)

m.c442 = Constraint(expr= - m.x29 - m.x37 + 100*m.b200 >= -950)

m.c443 = Constraint(expr= - m.x26 - m.x38 + 100*m.b197 >= -950)

m.c444 = Constraint(expr= - m.x27 - m.x39 + 100*m.b198 >= -950)

m.c445 = Constraint(expr= - m.x28 - m.x40 + 100*m.b199 >= -950)

m.c446 = Constraint(expr= - m.x29 - m.x41 + 100*m.b200 >= -950)

m.c447 = Constraint(expr= - m.x26 - m.x42 + 100*m.b197 >= -950)

m.c448 = Constraint(expr= - m.x27 - m.x43 + 100*m.b198 >= -950)

m.c449 = Constraint(expr= - m.x28 - m.x44 + 100*m.b199 >= -950)

m.c450 = Constraint(expr= - m.x29 - m.x45 + 100*m.b200 >= -950)

m.c451 = Constraint(expr= - m.x30 - m.x34 + 100*m.b197 >= -950)

m.c452 = Constraint(expr= - m.x31 - m.x35 + 100*m.b198 >= -950)

m.c453 = Constraint(expr= - m.x32 - m.x36 + 100*m.b199 >= -950)

m.c454 = Constraint(expr= - m.x33 - m.x37 + 100*m.b200 >= -950)

m.c455 = Constraint(expr= - m.x30 - m.x38 + 100*m.b197 >= -950)

m.c456 = Constraint(expr= - m.x31 - m.x39 + 100*m.b198 >= -950)

m.c457 = Constraint(expr= - m.x32 - m.x40 + 100*m.b199 >= -950)

m.c458 = Constraint(expr= - m.x33 - m.x41 + 100*m.b200 >= -950)

m.c459 = Constraint(expr= - m.x30 - m.x42 + 100*m.b197 >= -950)

m.c460 = Constraint(expr= - m.x31 - m.x43 + 100*m.b198 >= -950)

m.c461 = Constraint(expr= - m.x32 - m.x44 + 100*m.b199 >= -950)

m.c462 = Constraint(expr= - m.x33 - m.x45 + 100*m.b200 >= -950)

m.c463 = Constraint(expr= - m.x34 - m.x38 + 100*m.b197 >= -950)

m.c464 = Constraint(expr= - m.x35 - m.x39 + 100*m.b198 >= -950)

m.c465 = Constraint(expr= - m.x36 - m.x40 + 100*m.b199 >= -950)

m.c466 = Constraint(expr= - m.x37 - m.x41 + 100*m.b200 >= -950)

m.c467 = Constraint(expr= - m.x34 - m.x42 + 100*m.b197 >= -950)

m.c468 = Constraint(expr= - m.x35 - m.x43 + 100*m.b198 >= -950)

m.c469 = Constraint(expr= - m.x36 - m.x44 + 100*m.b199 >= -950)

m.c470 = Constraint(expr= - m.x37 - m.x45 + 100*m.b200 >= -950)

m.c471 = Constraint(expr= - m.x38 - m.x42 + 100*m.b197 >= -950)

m.c472 = Constraint(expr= - m.x39 - m.x43 + 100*m.b198 >= -950)

m.c473 = Constraint(expr= - m.x40 - m.x44 + 100*m.b199 >= -950)

m.c474 = Constraint(expr= - m.x41 - m.x45 + 100*m.b200 >= -950)

m.c475 = Constraint(expr=   m.b57 + m.b61 + m.b65 + m.b69 + m.b73 + m.b77 + m.b81 + m.b85 + m.b89 + m.b93 + m.b97 <= 3)

m.c476 = Constraint(expr=   m.b58 + m.b62 + m.b66 + m.b70 + m.b74 + m.b78 + m.b82 + m.b86 + m.b90 + m.b94 + m.b98 <= 3)

m.c477 = Constraint(expr=   m.b59 + m.b63 + m.b67 + m.b71 + m.b75 + m.b79 + m.b83 + m.b87 + m.b91 + m.b95 + m.b99 <= 3)

m.c478 = Constraint(expr=   m.b60 + m.b64 + m.b68 + m.b72 + m.b76 + m.b80 + m.b84 + m.b88 + m.b92 + m.b96 + m.b100 <= 3)

m.c479 = Constraint(expr=   m.b57 + m.b61 + m.b65 + m.b69 + m.b73 + m.b77 + m.b81 + m.b85 + m.b89 + m.b93 + m.b97
                          + 3*m.b193 <= 4)

m.c480 = Constraint(expr=   m.b58 + m.b62 + m.b66 + m.b70 + m.b74 + m.b78 + m.b82 + m.b86 + m.b90 + m.b94 + m.b98
                          + 3*m.b194 <= 4)

m.c481 = Constraint(expr=   m.b59 + m.b63 + m.b67 + m.b71 + m.b75 + m.b79 + m.b83 + m.b87 + m.b91 + m.b95 + m.b99
                          + 3*m.b195 <= 4)

m.c482 = Constraint(expr=   m.b60 + m.b64 + m.b68 + m.b72 + m.b76 + m.b80 + m.b84 + m.b88 + m.b92 + m.b96 + m.b100
                          + 3*m.b196 <= 4)

m.c483 = Constraint(expr=   m.b57 + m.b61 + m.b65 + m.b69 + m.b73 + m.b77 + m.b81 + m.b85 + m.b89 + m.b93 + m.b97
                          + 3*m.b197 <= 5)

m.c484 = Constraint(expr=   m.b58 + m.b62 + m.b66 + m.b70 + m.b74 + m.b78 + m.b82 + m.b86 + m.b90 + m.b94 + m.b98
                          + 3*m.b198 <= 5)

m.c485 = Constraint(expr=   m.b59 + m.b63 + m.b67 + m.b71 + m.b75 + m.b79 + m.b83 + m.b87 + m.b91 + m.b95 + m.b99
                          + 3*m.b199 <= 5)

m.c486 = Constraint(expr=   m.b60 + m.b64 + m.b68 + m.b72 + m.b76 + m.b80 + m.b84 + m.b88 + m.b92 + m.b96 + m.b100
                          + 3*m.b200 <= 5)
