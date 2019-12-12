#  MIP written by GAMS Convert at 12/13/18 10:32:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        242        2      240        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         75        1       74        0        0        0        0        0
#  FX      1        0        1        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        484      484        0        0


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b29 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b31 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b32 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b33 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b34 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b35 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b36 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b37 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b38 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b39 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b40 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b41 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b42 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b43 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b44 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b45 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b46 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b47 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b48 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b49 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b50 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.x75 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=m.x75, sense=maximize)

m.c1 = Constraint(expr= - m.b1 + m.b51 >= 0)

m.c2 = Constraint(expr= - m.b2 + m.b51 >= 0)

m.c3 = Constraint(expr= - m.b3 + m.b51 >= 0)

m.c4 = Constraint(expr= - m.b4 + m.b51 >= 0)

m.c5 = Constraint(expr= - m.b5 + m.b51 >= 0)

m.c6 = Constraint(expr= - m.b6 + m.b52 >= 0)

m.c7 = Constraint(expr= - m.b7 + m.b52 >= 0)

m.c8 = Constraint(expr= - m.b8 + m.b52 >= 0)

m.c9 = Constraint(expr= - m.b9 + m.b52 >= 0)

m.c10 = Constraint(expr= - m.b10 + m.b52 >= 0)

m.c11 = Constraint(expr= - m.b11 + m.b53 >= 0)

m.c12 = Constraint(expr= - m.b12 + m.b53 >= 0)

m.c13 = Constraint(expr= - m.b13 + m.b53 >= 0)

m.c14 = Constraint(expr= - m.b14 + m.b53 >= 0)

m.c15 = Constraint(expr= - m.b15 + m.b53 >= 0)

m.c16 = Constraint(expr= - m.b16 + m.b54 >= 0)

m.c17 = Constraint(expr= - m.b17 + m.b54 >= 0)

m.c18 = Constraint(expr= - m.b18 + m.b54 >= 0)

m.c19 = Constraint(expr= - m.b19 + m.b54 >= 0)

m.c20 = Constraint(expr= - m.b20 + m.b54 >= 0)

m.c21 = Constraint(expr= - m.b21 + m.b55 >= 0)

m.c22 = Constraint(expr= - m.b22 + m.b55 >= 0)

m.c23 = Constraint(expr= - m.b23 + m.b55 >= 0)

m.c24 = Constraint(expr= - m.b24 + m.b55 >= 0)

m.c25 = Constraint(expr= - m.b25 + m.b55 >= 0)

m.c26 = Constraint(expr= - m.b1 + m.b56 >= 0)

m.c27 = Constraint(expr= - m.b6 + m.b56 >= 0)

m.c28 = Constraint(expr= - m.b11 + m.b56 >= 0)

m.c29 = Constraint(expr= - m.b16 + m.b56 >= 0)

m.c30 = Constraint(expr= - m.b21 + m.b56 >= 0)

m.c31 = Constraint(expr= - m.b2 + m.b57 >= 0)

m.c32 = Constraint(expr= - m.b7 + m.b57 >= 0)

m.c33 = Constraint(expr= - m.b12 + m.b57 >= 0)

m.c34 = Constraint(expr= - m.b17 + m.b57 >= 0)

m.c35 = Constraint(expr= - m.b22 + m.b57 >= 0)

m.c36 = Constraint(expr= - m.b3 + m.b58 >= 0)

m.c37 = Constraint(expr= - m.b8 + m.b58 >= 0)

m.c38 = Constraint(expr= - m.b13 + m.b58 >= 0)

m.c39 = Constraint(expr= - m.b18 + m.b58 >= 0)

m.c40 = Constraint(expr= - m.b23 + m.b58 >= 0)

m.c41 = Constraint(expr= - m.b4 + m.b59 >= 0)

m.c42 = Constraint(expr= - m.b9 + m.b59 >= 0)

m.c43 = Constraint(expr= - m.b14 + m.b59 >= 0)

m.c44 = Constraint(expr= - m.b19 + m.b59 >= 0)

m.c45 = Constraint(expr= - m.b24 + m.b59 >= 0)

m.c46 = Constraint(expr= - m.b5 + m.b60 >= 0)

m.c47 = Constraint(expr= - m.b10 + m.b60 >= 0)

m.c48 = Constraint(expr= - m.b15 + m.b60 >= 0)

m.c49 = Constraint(expr= - m.b20 + m.b60 >= 0)

m.c50 = Constraint(expr= - m.b25 + m.b60 >= 0)

m.c51 = Constraint(expr=   m.b61 >= 0)

m.c52 = Constraint(expr=   m.b61 >= 0)

m.c53 = Constraint(expr=   m.b61 >= 0)

m.c54 = Constraint(expr= - m.b16 + m.b61 >= 0)

m.c55 = Constraint(expr= - m.b22 + m.b61 >= 0)

m.c56 = Constraint(expr=   m.b62 >= 0)

m.c57 = Constraint(expr=   m.b62 >= 0)

m.c58 = Constraint(expr= - m.b11 + m.b62 >= 0)

m.c59 = Constraint(expr= - m.b17 + m.b62 >= 0)

m.c60 = Constraint(expr= - m.b23 + m.b62 >= 0)

m.c61 = Constraint(expr=   m.b63 >= 0)

m.c62 = Constraint(expr= - m.b6 + m.b63 >= 0)

m.c63 = Constraint(expr= - m.b12 + m.b63 >= 0)

m.c64 = Constraint(expr= - m.b18 + m.b63 >= 0)

m.c65 = Constraint(expr= - m.b24 + m.b63 >= 0)

m.c66 = Constraint(expr= - m.b1 + m.b64 >= 0)

m.c67 = Constraint(expr= - m.b7 + m.b64 >= 0)

m.c68 = Constraint(expr= - m.b13 + m.b64 >= 0)

m.c69 = Constraint(expr= - m.b19 + m.b64 >= 0)

m.c70 = Constraint(expr= - m.b25 + m.b64 >= 0)

m.c71 = Constraint(expr= - m.b2 + m.b65 >= 0)

m.c72 = Constraint(expr= - m.b8 + m.b65 >= 0)

m.c73 = Constraint(expr= - m.b14 + m.b65 >= 0)

m.c74 = Constraint(expr= - m.b20 + m.b65 >= 0)

m.c75 = Constraint(expr=   m.b65 >= 0)

m.c76 = Constraint(expr= - m.b3 + m.b66 >= 0)

m.c77 = Constraint(expr= - m.b9 + m.b66 >= 0)

m.c78 = Constraint(expr= - m.b15 + m.b66 >= 0)

m.c79 = Constraint(expr=   m.b66 >= 0)

m.c80 = Constraint(expr=   m.b66 >= 0)

m.c81 = Constraint(expr= - m.b4 + m.b67 >= 0)

m.c82 = Constraint(expr= - m.b10 + m.b67 >= 0)

m.c83 = Constraint(expr=   m.b67 >= 0)

m.c84 = Constraint(expr=   m.b67 >= 0)

m.c85 = Constraint(expr=   m.b67 >= 0)

m.c86 = Constraint(expr= - m.b2 + m.b68 >= 0)

m.c87 = Constraint(expr= - m.b6 + m.b68 >= 0)

m.c88 = Constraint(expr=   m.b68 >= 0)

m.c89 = Constraint(expr=   m.b68 >= 0)

m.c90 = Constraint(expr=   m.b68 >= 0)

m.c91 = Constraint(expr= - m.b3 + m.b69 >= 0)

m.c92 = Constraint(expr= - m.b7 + m.b69 >= 0)

m.c93 = Constraint(expr= - m.b11 + m.b69 >= 0)

m.c94 = Constraint(expr=   m.b69 >= 0)

m.c95 = Constraint(expr=   m.b69 >= 0)

m.c96 = Constraint(expr= - m.b4 + m.b70 >= 0)

m.c97 = Constraint(expr= - m.b8 + m.b70 >= 0)

m.c98 = Constraint(expr= - m.b12 + m.b70 >= 0)

m.c99 = Constraint(expr= - m.b16 + m.b70 >= 0)

m.c100 = Constraint(expr=   m.b70 >= 0)

m.c101 = Constraint(expr= - m.b5 + m.b71 >= 0)

m.c102 = Constraint(expr= - m.b9 + m.b71 >= 0)

m.c103 = Constraint(expr= - m.b13 + m.b71 >= 0)

m.c104 = Constraint(expr= - m.b17 + m.b71 >= 0)

m.c105 = Constraint(expr= - m.b21 + m.b71 >= 0)

m.c106 = Constraint(expr=   m.b72 >= 0)

m.c107 = Constraint(expr= - m.b10 + m.b72 >= 0)

m.c108 = Constraint(expr= - m.b14 + m.b72 >= 0)

m.c109 = Constraint(expr= - m.b18 + m.b72 >= 0)

m.c110 = Constraint(expr= - m.b22 + m.b72 >= 0)

m.c111 = Constraint(expr=   m.b73 >= 0)

m.c112 = Constraint(expr=   m.b73 >= 0)

m.c113 = Constraint(expr= - m.b15 + m.b73 >= 0)

m.c114 = Constraint(expr= - m.b19 + m.b73 >= 0)

m.c115 = Constraint(expr= - m.b23 + m.b73 >= 0)

m.c116 = Constraint(expr=   m.b74 >= 0)

m.c117 = Constraint(expr=   m.b74 >= 0)

m.c118 = Constraint(expr=   m.b74 >= 0)

m.c119 = Constraint(expr= - m.b20 + m.b74 >= 0)

m.c120 = Constraint(expr= - m.b24 + m.b74 >= 0)

m.c121 = Constraint(expr= - m.b1 - m.b2 - m.b3 - m.b4 - m.b5 - m.b6 - m.b7 - m.b8 - m.b9 - m.b10 - m.b11 - m.b12 - m.b13
                          - m.b14 - m.b15 - m.b16 - m.b17 - m.b18 - m.b19 - m.b20 - m.b21 - m.b22 - m.b23 - m.b24
                          - m.b25 + m.x75 == 0)

m.c122 = Constraint(expr= - m.b26 - m.b51 >= -1)

m.c123 = Constraint(expr= - m.b27 - m.b51 >= -1)

m.c124 = Constraint(expr= - m.b28 - m.b51 >= -1)

m.c125 = Constraint(expr= - m.b29 - m.b51 >= -1)

m.c126 = Constraint(expr= - m.b30 - m.b51 >= -1)

m.c127 = Constraint(expr= - m.b31 - m.b52 >= -1)

m.c128 = Constraint(expr= - m.b32 - m.b52 >= -1)

m.c129 = Constraint(expr= - m.b33 - m.b52 >= -1)

m.c130 = Constraint(expr= - m.b34 - m.b52 >= -1)

m.c131 = Constraint(expr= - m.b35 - m.b52 >= -1)

m.c132 = Constraint(expr= - m.b36 - m.b53 >= -1)

m.c133 = Constraint(expr= - m.b37 - m.b53 >= -1)

m.c134 = Constraint(expr= - m.b38 - m.b53 >= -1)

m.c135 = Constraint(expr= - m.b39 - m.b53 >= -1)

m.c136 = Constraint(expr= - m.b40 - m.b53 >= -1)

m.c137 = Constraint(expr= - m.b41 - m.b54 >= -1)

m.c138 = Constraint(expr= - m.b42 - m.b54 >= -1)

m.c139 = Constraint(expr= - m.b43 - m.b54 >= -1)

m.c140 = Constraint(expr= - m.b44 - m.b54 >= -1)

m.c141 = Constraint(expr= - m.b45 - m.b54 >= -1)

m.c142 = Constraint(expr= - m.b46 - m.b55 >= -1)

m.c143 = Constraint(expr= - m.b47 - m.b55 >= -1)

m.c144 = Constraint(expr= - m.b48 - m.b55 >= -1)

m.c145 = Constraint(expr= - m.b49 - m.b55 >= -1)

m.c146 = Constraint(expr= - m.b50 - m.b55 >= -1)

m.c147 = Constraint(expr= - m.b26 - m.b56 >= -1)

m.c148 = Constraint(expr= - m.b31 - m.b56 >= -1)

m.c149 = Constraint(expr= - m.b36 - m.b56 >= -1)

m.c150 = Constraint(expr= - m.b41 - m.b56 >= -1)

m.c151 = Constraint(expr= - m.b46 - m.b56 >= -1)

m.c152 = Constraint(expr= - m.b27 - m.b57 >= -1)

m.c153 = Constraint(expr= - m.b32 - m.b57 >= -1)

m.c154 = Constraint(expr= - m.b37 - m.b57 >= -1)

m.c155 = Constraint(expr= - m.b42 - m.b57 >= -1)

m.c156 = Constraint(expr= - m.b47 - m.b57 >= -1)

m.c157 = Constraint(expr= - m.b28 - m.b58 >= -1)

m.c158 = Constraint(expr= - m.b33 - m.b58 >= -1)

m.c159 = Constraint(expr= - m.b38 - m.b58 >= -1)

m.c160 = Constraint(expr= - m.b43 - m.b58 >= -1)

m.c161 = Constraint(expr= - m.b48 - m.b58 >= -1)

m.c162 = Constraint(expr= - m.b29 - m.b59 >= -1)

m.c163 = Constraint(expr= - m.b34 - m.b59 >= -1)

m.c164 = Constraint(expr= - m.b39 - m.b59 >= -1)

m.c165 = Constraint(expr= - m.b44 - m.b59 >= -1)

m.c166 = Constraint(expr= - m.b49 - m.b59 >= -1)

m.c167 = Constraint(expr= - m.b30 - m.b60 >= -1)

m.c168 = Constraint(expr= - m.b35 - m.b60 >= -1)

m.c169 = Constraint(expr= - m.b40 - m.b60 >= -1)

m.c170 = Constraint(expr= - m.b45 - m.b60 >= -1)

m.c171 = Constraint(expr= - m.b50 - m.b60 >= -1)

m.c172 = Constraint(expr= - m.b61 >= -1)

m.c173 = Constraint(expr= - m.b61 >= -1)

m.c174 = Constraint(expr= - m.b61 >= -1)

m.c175 = Constraint(expr= - m.b41 - m.b61 >= -1)

m.c176 = Constraint(expr= - m.b47 - m.b61 >= -1)

m.c177 = Constraint(expr= - m.b62 >= -1)

m.c178 = Constraint(expr= - m.b62 >= -1)

m.c179 = Constraint(expr= - m.b36 - m.b62 >= -1)

m.c180 = Constraint(expr= - m.b42 - m.b62 >= -1)

m.c181 = Constraint(expr= - m.b48 - m.b62 >= -1)

m.c182 = Constraint(expr= - m.b63 >= -1)

m.c183 = Constraint(expr= - m.b31 - m.b63 >= -1)

m.c184 = Constraint(expr= - m.b37 - m.b63 >= -1)

m.c185 = Constraint(expr= - m.b43 - m.b63 >= -1)

m.c186 = Constraint(expr= - m.b49 - m.b63 >= -1)

m.c187 = Constraint(expr= - m.b26 - m.b64 >= -1)

m.c188 = Constraint(expr= - m.b32 - m.b64 >= -1)

m.c189 = Constraint(expr= - m.b38 - m.b64 >= -1)

m.c190 = Constraint(expr= - m.b44 - m.b64 >= -1)

m.c191 = Constraint(expr= - m.b50 - m.b64 >= -1)

m.c192 = Constraint(expr= - m.b27 - m.b65 >= -1)

m.c193 = Constraint(expr= - m.b33 - m.b65 >= -1)

m.c194 = Constraint(expr= - m.b39 - m.b65 >= -1)

m.c195 = Constraint(expr= - m.b45 - m.b65 >= -1)

m.c196 = Constraint(expr= - m.b65 >= -1)

m.c197 = Constraint(expr= - m.b28 - m.b66 >= -1)

m.c198 = Constraint(expr= - m.b34 - m.b66 >= -1)

m.c199 = Constraint(expr= - m.b40 - m.b66 >= -1)

m.c200 = Constraint(expr= - m.b66 >= -1)

m.c201 = Constraint(expr= - m.b66 >= -1)

m.c202 = Constraint(expr= - m.b29 - m.b67 >= -1)

m.c203 = Constraint(expr= - m.b35 - m.b67 >= -1)

m.c204 = Constraint(expr= - m.b67 >= -1)

m.c205 = Constraint(expr= - m.b67 >= -1)

m.c206 = Constraint(expr= - m.b67 >= -1)

m.c207 = Constraint(expr= - m.b27 - m.b68 >= -1)

m.c208 = Constraint(expr= - m.b31 - m.b68 >= -1)

m.c209 = Constraint(expr= - m.b68 >= -1)

m.c210 = Constraint(expr= - m.b68 >= -1)

m.c211 = Constraint(expr= - m.b68 >= -1)

m.c212 = Constraint(expr= - m.b28 - m.b69 >= -1)

m.c213 = Constraint(expr= - m.b32 - m.b69 >= -1)

m.c214 = Constraint(expr= - m.b36 - m.b69 >= -1)

m.c215 = Constraint(expr= - m.b69 >= -1)

m.c216 = Constraint(expr= - m.b69 >= -1)

m.c217 = Constraint(expr= - m.b29 - m.b70 >= -1)

m.c218 = Constraint(expr= - m.b33 - m.b70 >= -1)

m.c219 = Constraint(expr= - m.b37 - m.b70 >= -1)

m.c220 = Constraint(expr= - m.b41 - m.b70 >= -1)

m.c221 = Constraint(expr= - m.b70 >= -1)

m.c222 = Constraint(expr= - m.b30 - m.b71 >= -1)

m.c223 = Constraint(expr= - m.b34 - m.b71 >= -1)

m.c224 = Constraint(expr= - m.b38 - m.b71 >= -1)

m.c225 = Constraint(expr= - m.b42 - m.b71 >= -1)

m.c226 = Constraint(expr= - m.b46 - m.b71 >= -1)

m.c227 = Constraint(expr= - m.b72 >= -1)

m.c228 = Constraint(expr= - m.b35 - m.b72 >= -1)

m.c229 = Constraint(expr= - m.b39 - m.b72 >= -1)

m.c230 = Constraint(expr= - m.b43 - m.b72 >= -1)

m.c231 = Constraint(expr= - m.b47 - m.b72 >= -1)

m.c232 = Constraint(expr= - m.b73 >= -1)

m.c233 = Constraint(expr= - m.b73 >= -1)

m.c234 = Constraint(expr= - m.b40 - m.b73 >= -1)

m.c235 = Constraint(expr= - m.b44 - m.b73 >= -1)

m.c236 = Constraint(expr= - m.b48 - m.b73 >= -1)

m.c237 = Constraint(expr= - m.b74 >= -1)

m.c238 = Constraint(expr= - m.b74 >= -1)

m.c239 = Constraint(expr= - m.b74 >= -1)

m.c240 = Constraint(expr= - m.b45 - m.b74 >= -1)

m.c241 = Constraint(expr= - m.b49 - m.b74 >= -1)

m.c242 = Constraint(expr= - m.b26 - m.b27 - m.b28 - m.b29 - m.b30 - m.b31 - m.b32 - m.b33 - m.b34 - m.b35 - m.b36
                          - m.b37 - m.b38 - m.b39 - m.b40 - m.b41 - m.b42 - m.b43 - m.b44 - m.b45 - m.b46 - m.b47
                          - m.b48 - m.b49 - m.b50 + m.x75 == 0)
