#  MIP written by GAMS Convert at 10/11/20 12:26:16
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
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
@variable(m, 0 <= x34, start=0)
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
@variable(m, 0 <= x45, start=0)
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
@variable(m, 0 <= x56, start=0)
@variable(m, 0 <= b57 <= 1, binary=true, start=0)
@variable(m, 0 <= b58 <= 1, binary=true, start=0)
@variable(m, 0 <= b59 <= 1, binary=true, start=0)
@variable(m, 0 <= b60 <= 1, binary=true, start=0)
@variable(m, 0 <= b61 <= 1, binary=true, start=0)
@variable(m, 0 <= b62 <= 1, binary=true, start=0)
@variable(m, 0 <= b63 <= 1, binary=true, start=0)
@variable(m, 0 <= b64 <= 1, binary=true, start=0)
@variable(m, 0 <= b65 <= 1, binary=true, start=0)
@variable(m, 0 <= b66 <= 1, binary=true, start=0)
@variable(m, 0 <= b67 <= 1, binary=true, start=0)
@variable(m, 0 <= b68 <= 1, binary=true, start=0)
@variable(m, 0 <= b69 <= 1, binary=true, start=0)
@variable(m, 0 <= b70 <= 1, binary=true, start=0)
@variable(m, 0 <= b71 <= 1, binary=true, start=0)
@variable(m, 0 <= b72 <= 1, binary=true, start=0)
@variable(m, 0 <= b73 <= 1, binary=true, start=0)
@variable(m, 0 <= b74 <= 1, binary=true, start=0)
@variable(m, 0 <= b75 <= 1, binary=true, start=0)
@variable(m, 0 <= b76 <= 1, binary=true, start=0)
@variable(m, 0 <= b77 <= 1, binary=true, start=0)
@variable(m, 0 <= b78 <= 1, binary=true, start=0)
@variable(m, 0 <= b79 <= 1, binary=true, start=0)
@variable(m, 0 <= b80 <= 1, binary=true, start=0)
@variable(m, 0 <= b81 <= 1, binary=true, start=0)
@variable(m, 0 <= b82 <= 1, binary=true, start=0)
@variable(m, 0 <= b83 <= 1, binary=true, start=0)
@variable(m, 0 <= b84 <= 1, binary=true, start=0)
@variable(m, 0 <= b85 <= 1, binary=true, start=0)
@variable(m, 0 <= b86 <= 1, binary=true, start=0)
@variable(m, 0 <= b87 <= 1, binary=true, start=0)
@variable(m, 0 <= b88 <= 1, binary=true, start=0)
@variable(m, 0 <= b89 <= 1, binary=true, start=0)
@variable(m, 0 <= b90 <= 1, binary=true, start=0)
@variable(m, 0 <= b91 <= 1, binary=true, start=0)
@variable(m, 0 <= b92 <= 1, binary=true, start=0)
@variable(m, 0 <= b93 <= 1, binary=true, start=0)
@variable(m, 0 <= b94 <= 1, binary=true, start=0)
@variable(m, 0 <= b95 <= 1, binary=true, start=0)
@variable(m, 0 <= b96 <= 1, binary=true, start=0)
@variable(m, 0 <= b97 <= 1, binary=true, start=0)
@variable(m, 0 <= b98 <= 1, binary=true, start=0)
@variable(m, 0 <= b99 <= 1, binary=true, start=0)
@variable(m, 0 <= b100 <= 1, binary=true, start=0)
@variable(m, 0 <= b101 <= 1, binary=true, start=0)
@variable(m, 0 <= b102 <= 1, binary=true, start=0)
@variable(m, 0 <= b103 <= 1, binary=true, start=0)
@variable(m, 0 <= b104 <= 1, binary=true, start=0)
@variable(m, 0 <= b105 <= 1, binary=true, start=0)
@variable(m, 0 <= b106 <= 1, binary=true, start=0)
@variable(m, 0 <= b107 <= 1, binary=true, start=0)
@variable(m, 0 <= b108 <= 1, binary=true, start=0)
@variable(m, 0 <= b109 <= 1, binary=true, start=0)
@variable(m, 0 <= b110 <= 1, binary=true, start=0)
@variable(m, 0 <= b111 <= 1, binary=true, start=0)
@variable(m, 0 <= b112 <= 1, binary=true, start=0)
@variable(m, 0 <= b113 <= 1, binary=true, start=0)
@variable(m, 0 <= b114 <= 1, binary=true, start=0)
@variable(m, 0 <= b115 <= 1, binary=true, start=0)
@variable(m, 0 <= b116 <= 1, binary=true, start=0)
@variable(m, 0 <= b117 <= 1, binary=true, start=0)
@variable(m, 0 <= b118 <= 1, binary=true, start=0)
@variable(m, 0 <= b119 <= 1, binary=true, start=0)
@variable(m, 0 <= b120 <= 1, binary=true, start=0)
@variable(m, 0 <= b121 <= 1, binary=true, start=0)
@variable(m, 0 <= b122 <= 1, binary=true, start=0)
@variable(m, 0 <= b123 <= 1, binary=true, start=0)
@variable(m, 0 <= b124 <= 1, binary=true, start=0)
@variable(m, 0 <= b125 <= 1, binary=true, start=0)
@variable(m, 0 <= b126 <= 1, binary=true, start=0)
@variable(m, 0 <= b127 <= 1, binary=true, start=0)
@variable(m, 0 <= b128 <= 1, binary=true, start=0)
@variable(m, 0 <= b129 <= 1, binary=true, start=0)
@variable(m, 0 <= b130 <= 1, binary=true, start=0)
@variable(m, 0 <= b131 <= 1, binary=true, start=0)
@variable(m, 0 <= b132 <= 1, binary=true, start=0)
@variable(m, 0 <= b133 <= 1, binary=true, start=0)
@variable(m, 0 <= b134 <= 1, binary=true, start=0)
@variable(m, 0 <= b135 <= 1, binary=true, start=0)
@variable(m, 0 <= b136 <= 1, binary=true, start=0)
@variable(m, 0 <= b137 <= 1, binary=true, start=0)
@variable(m, 0 <= b138 <= 1, binary=true, start=0)
@variable(m, 0 <= b139 <= 1, binary=true, start=0)
@variable(m, 0 <= b140 <= 1, binary=true, start=0)
@variable(m, 0 <= b141 <= 1, binary=true, start=0)
@variable(m, 0 <= b142 <= 1, binary=true, start=0)
@variable(m, 0 <= b143 <= 1, binary=true, start=0)
@variable(m, 0 <= b144 <= 1, binary=true, start=0)
@variable(m, 0 <= b145 <= 1, binary=true, start=0)
@variable(m, 0 <= b146 <= 1, binary=true, start=0)
@variable(m, 0 <= b147 <= 1, binary=true, start=0)
@variable(m, 0 <= b148 <= 1, binary=true, start=0)
@variable(m, 0 <= b149 <= 1, binary=true, start=0)
@variable(m, 0 <= b150 <= 1, binary=true, start=0)
@variable(m, 0 <= b151 <= 1, binary=true, start=0)
@variable(m, 0 <= b152 <= 1, binary=true, start=0)
@variable(m, 0 <= b153 <= 1, binary=true, start=0)
@variable(m, 0 <= b154 <= 1, binary=true, start=0)
@variable(m, 0 <= b155 <= 1, binary=true, start=0)
@variable(m, 0 <= b156 <= 1, binary=true, start=0)
@variable(m, 0 <= b157 <= 1, binary=true, start=0)
@variable(m, 0 <= b158 <= 1, binary=true, start=0)
@variable(m, 0 <= b159 <= 1, binary=true, start=0)
@variable(m, 0 <= b160 <= 1, binary=true, start=0)
@variable(m, 0 <= b161 <= 1, binary=true, start=0)
@variable(m, 0 <= b162 <= 1, binary=true, start=0)
@variable(m, 0 <= b163 <= 1, binary=true, start=0)
@variable(m, 0 <= b164 <= 1, binary=true, start=0)
@variable(m, 0 <= b165 <= 1, binary=true, start=0)
@variable(m, 0 <= b166 <= 1, binary=true, start=0)
@variable(m, 0 <= b167 <= 1, binary=true, start=0)
@variable(m, 0 <= b168 <= 1, binary=true, start=0)
@variable(m, 0 <= b169 <= 1, binary=true, start=0)
@variable(m, 0 <= b170 <= 1, binary=true, start=0)
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
@variable(m, 0 <= i201 <= 205, integer=true, start=0)
@variable(m, 0 <= i202 <= 205, integer=true, start=0)
@variable(m, 0 <= i203 <= 205, integer=true, start=0)
@variable(m, 0 <= i204 <= 205, integer=true, start=0)
@variable(m, 0 <= i205 <= 205, integer=true, start=0)
@variable(m, 0 <= i206 <= 205, integer=true, start=0)
@variable(m, 0 <= i207 <= 205, integer=true, start=0)
@variable(m, 0 <= i208 <= 205, integer=true, start=0)
@variable(m, 0 <= i209 <= 205, integer=true, start=0)
@variable(m, 0 <= i210 <= 205, integer=true, start=0)
@variable(m, 0 <= i211 <= 205, integer=true, start=0)
@variable(m, 0 <= i212 <= 205, integer=true, start=0)
@variable(m, 0 <= i213 <= 205, integer=true, start=0)
@variable(m, 0 <= i214 <= 205, integer=true, start=0)
@variable(m, 0 <= i215 <= 205, integer=true, start=0)
@variable(m, 0 <= i216 <= 205, integer=true, start=0)
@variable(m, 0 <= i217 <= 205, integer=true, start=0)
@variable(m, 0 <= i218 <= 205, integer=true, start=0)
@variable(m, 0 <= i219 <= 205, integer=true, start=0)
@variable(m, 0 <= i220 <= 205, integer=true, start=0)
@variable(m, 0 <= i221 <= 205, integer=true, start=0)
@variable(m, 0 <= i222 <= 205, integer=true, start=0)
@variable(m, 0 <= i223 <= 205, integer=true, start=0)
@variable(m, 0 <= i224 <= 205, integer=true, start=0)
@variable(m, 0 <= i225 <= 205, integer=true, start=0)
@variable(m, 0 <= i226 <= 205, integer=true, start=0)
@variable(m, 0 <= i227 <= 205, integer=true, start=0)
@variable(m, 0 <= i228 <= 205, integer=true, start=0)
@variable(m, 0 <= i229 <= 205, integer=true, start=0)
@variable(m, 0 <= i230 <= 205, integer=true, start=0)
@variable(m, 0 <= i231 <= 205, integer=true, start=0)
@variable(m, 0 <= i232 <= 205, integer=true, start=0)
@variable(m, 0 <= i233 <= 205, integer=true, start=0)
@variable(m, 0 <= i234 <= 205, integer=true, start=0)
@variable(m, 0 <= i235 <= 205, integer=true, start=0)
@variable(m, 0 <= i236 <= 205, integer=true, start=0)
@variable(m, 0 <= i237 <= 205, integer=true, start=0)
@variable(m, 0 <= i238 <= 205, integer=true, start=0)
@variable(m, 0 <= i239 <= 205, integer=true, start=0)
@variable(m, 0 <= i240 <= 205, integer=true, start=0)
@variable(m, 0 <= i241 <= 205, integer=true, start=0)
@variable(m, 0 <= i242 <= 205, integer=true, start=0)
@variable(m, 0 <= i243 <= 205, integer=true, start=0)
@variable(m, 0 <= i244 <= 205, integer=true, start=0)
@variable(m, 0 <= i245 <= 5, integer=true, start=0)
@variable(m, 0 <= i246 <= 15, integer=true, start=0)
@variable(m, 0 <= i247 <= 55, integer=true, start=0)
@variable(m, 0 <= i248 <= 75, integer=true, start=0)
@variable(m, 0 <= i249 <= 85, integer=true, start=0)
@variable(m, 0 <= i250 <= 85, integer=true, start=0)
@variable(m, 0 <= i251 <= 90, integer=true, start=0)
@variable(m, 0 <= i252 <= 135, integer=true, start=0)
@variable(m, 0 <= i253 <= 195, integer=true, start=0)
@variable(m, 0 <= i254 <= 195, integer=true, start=0)
@variable(m, 0 <= i255 <= 995, integer=true, start=0)

@objective(m, Max, 0.00879999999999992*x2 + 0.00879999999999992*x3 + 0.00879999999999992*x4 + 0.00879999999999992*x5
     + 0.00879999999999992*x6 + 0.00879999999999992*x7 + 0.00879999999999992*x8 + 0.00879999999999992*x9
     + 0.00879999999999992*x10 + 0.00879999999999992*x11 + 0.00879999999999992*x12 + 0.00879999999999992*x13
     + 0.00879999999999992*x14 + 0.00879999999999992*x15 + 0.00879999999999992*x16 + 0.00879999999999992*x17
     + 0.00879999999999992*x18 + 0.00879999999999992*x19 + 0.00879999999999992*x20 + 0.00879999999999992*x21
     + 0.00879999999999992*x22 + 0.00879999999999992*x23 + 0.00879999999999992*x24 + 0.00879999999999992*x25
     + 0.00879999999999992*x26 + 0.00879999999999992*x27 + 0.00879999999999992*x28 + 0.00879999999999992*x29
     + 0.00879999999999992*x30 + 0.00879999999999992*x31 + 0.00879999999999992*x32 + 0.00879999999999992*x33
     + 0.00879999999999992*x34 + 0.00879999999999992*x35 + 0.00879999999999992*x36 + 0.00879999999999992*x37
     + 0.00879999999999992*x38 + 0.00879999999999992*x39 + 0.00879999999999992*x40 + 0.00879999999999992*x41
     + 0.00879999999999992*x42 + 0.00879999999999992*x43 + 0.00879999999999992*x44 + 0.00879999999999992*x45 - 1E-5*b182
     - 1E-5*b183 - 1E-5*b184 - 1E-5*b185 - 1E-5*b186 - 1E-5*b187 - 1E-5*b188 - 1E-5*b189 - 1E-5*b190 - 1E-5*b191
     - 1E-5*b192)

@constraint(m, x2 + x6 + x10 + x14 + x18 + x22 + x26 + x30 + x34 + x38 + x42 - 950*b123 >= 0)

@constraint(m, x3 + x7 + x11 + x15 + x19 + x23 + x27 + x31 + x35 + x39 + x43 - 950*b124 >= 0)

@constraint(m, x4 + x8 + x12 + x16 + x20 + x24 + x28 + x32 + x36 + x40 + x44 - 950*b125 >= 0)

@constraint(m, x5 + x9 + x13 + x17 + x21 + x25 + x29 + x33 + x37 + x41 + x45 - 950*b126 >= 0)

@constraint(m, x2 + x6 + x10 + x14 + x18 + x22 + x26 + x30 + x34 + x38 + x42 - 1050*b123 <= 0)

@constraint(m, x3 + x7 + x11 + x15 + x19 + x23 + x27 + x31 + x35 + x39 + x43 - 1050*b124 <= 0)

@constraint(m, x4 + x8 + x12 + x16 + x20 + x24 + x28 + x32 + x36 + x40 + x44 - 1050*b125 <= 0)

@constraint(m, x5 + x9 + x13 + x17 + x21 + x25 + x29 + x33 + x37 + x41 + x45 - 1050*b126 <= 0)

@constraint(m, x2 + x3 + x4 + x5 + x46 == 50)

@constraint(m, x6 + x7 + x8 + x9 + x47 == 100)

@constraint(m, x10 + x11 + x12 + x13 + x48 == 300)

@constraint(m, x14 + x15 + x16 + x17 + x49 == 400)

@constraint(m, x18 + x19 + x20 + x21 + x50 == 450)

@constraint(m, x22 + x23 + x24 + x25 + x51 == 450)

@constraint(m, x26 + x27 + x28 + x29 + x52 == 475)

@constraint(m, x30 + x31 + x32 + x33 + x53 == 700)

@constraint(m, x34 + x35 + x36 + x37 + x54 == 1000)

@constraint(m, x38 + x39 + x40 + x41 + x55 == 1000)

@constraint(m, x42 + x43 + x44 + x45 + x56 == 5000)

@constraint(m, x2 + x6 + x10 + x14 + x18 + x22 + x26 + x30 + x34 - b123 >= 0)

@constraint(m, x3 + x7 + x11 + x15 + x19 + x23 + x27 + x31 + x35 - b124 >= 0)

@constraint(m, x4 + x8 + x12 + x16 + x20 + x24 + x28 + x32 + x36 - b125 >= 0)

@constraint(m, x5 + x9 + x13 + x17 + x21 + x25 + x29 + x33 + x37 - b126 >= 0)

@constraint(m, x2 - 25*b127 - 5*i201 == 0)

@constraint(m, x3 - 25*b128 - 5*i202 == 0)

@constraint(m, x4 - 25*b129 - 5*i203 == 0)

@constraint(m, x5 - 25*b130 - 5*i204 == 0)

@constraint(m, x6 - 25*b131 - 5*i205 == 0)

@constraint(m, x7 - 25*b132 - 5*i206 == 0)

@constraint(m, x8 - 25*b133 - 5*i207 == 0)

@constraint(m, x9 - 25*b134 - 5*i208 == 0)

@constraint(m, x10 - 25*b135 - 5*i209 == 0)

@constraint(m, x11 - 25*b136 - 5*i210 == 0)

@constraint(m, x12 - 25*b137 - 5*i211 == 0)

@constraint(m, x13 - 25*b138 - 5*i212 == 0)

@constraint(m, x14 - 25*b139 - 5*i213 == 0)

@constraint(m, x15 - 25*b140 - 5*i214 == 0)

@constraint(m, x16 - 25*b141 - 5*i215 == 0)

@constraint(m, x17 - 25*b142 - 5*i216 == 0)

@constraint(m, x18 - 25*b143 - 5*i217 == 0)

@constraint(m, x19 - 25*b144 - 5*i218 == 0)

@constraint(m, x20 - 25*b145 - 5*i219 == 0)

@constraint(m, x21 - 25*b146 - 5*i220 == 0)

@constraint(m, x22 - 25*b147 - 5*i221 == 0)

@constraint(m, x23 - 25*b148 - 5*i222 == 0)

@constraint(m, x24 - 25*b149 - 5*i223 == 0)

@constraint(m, x25 - 25*b150 - 5*i224 == 0)

@constraint(m, x26 - 25*b151 - 5*i225 == 0)

@constraint(m, x27 - 25*b152 - 5*i226 == 0)

@constraint(m, x28 - 25*b153 - 5*i227 == 0)

@constraint(m, x29 - 25*b154 - 5*i228 == 0)

@constraint(m, x30 - 25*b155 - 5*i229 == 0)

@constraint(m, x31 - 25*b156 - 5*i230 == 0)

@constraint(m, x32 - 25*b157 - 5*i231 == 0)

@constraint(m, x33 - 25*b158 - 5*i232 == 0)

@constraint(m, x34 - 25*b159 - 5*i233 == 0)

@constraint(m, x35 - 25*b160 - 5*i234 == 0)

@constraint(m, x36 - 25*b161 - 5*i235 == 0)

@constraint(m, x37 - 25*b162 - 5*i236 == 0)

@constraint(m, x38 - 25*b163 - 5*i237 == 0)

@constraint(m, x39 - 25*b164 - 5*i238 == 0)

@constraint(m, x40 - 25*b165 - 5*i239 == 0)

@constraint(m, x41 - 25*b166 - 5*i240 == 0)

@constraint(m, x42 - 25*b167 - 5*i241 == 0)

@constraint(m, x43 - 25*b168 - 5*i242 == 0)

@constraint(m, x44 - 25*b169 - 5*i243 == 0)

@constraint(m, x45 - 25*b170 - 5*i244 == 0)

@constraint(m,  - 205*b127 + i201 <= 0)

@constraint(m,  - 205*b128 + i202 <= 0)

@constraint(m,  - 205*b129 + i203 <= 0)

@constraint(m,  - 205*b130 + i204 <= 0)

@constraint(m,  - 205*b131 + i205 <= 0)

@constraint(m,  - 205*b132 + i206 <= 0)

@constraint(m,  - 205*b133 + i207 <= 0)

@constraint(m,  - 205*b134 + i208 <= 0)

@constraint(m,  - 205*b135 + i209 <= 0)

@constraint(m,  - 205*b136 + i210 <= 0)

@constraint(m,  - 205*b137 + i211 <= 0)

@constraint(m,  - 205*b138 + i212 <= 0)

@constraint(m,  - 205*b139 + i213 <= 0)

@constraint(m,  - 205*b140 + i214 <= 0)

@constraint(m,  - 205*b141 + i215 <= 0)

@constraint(m,  - 205*b142 + i216 <= 0)

@constraint(m,  - 205*b143 + i217 <= 0)

@constraint(m,  - 205*b144 + i218 <= 0)

@constraint(m,  - 205*b145 + i219 <= 0)

@constraint(m,  - 205*b146 + i220 <= 0)

@constraint(m,  - 205*b147 + i221 <= 0)

@constraint(m,  - 205*b148 + i222 <= 0)

@constraint(m,  - 205*b149 + i223 <= 0)

@constraint(m,  - 205*b150 + i224 <= 0)

@constraint(m,  - 205*b151 + i225 <= 0)

@constraint(m,  - 205*b152 + i226 <= 0)

@constraint(m,  - 205*b153 + i227 <= 0)

@constraint(m,  - 205*b154 + i228 <= 0)

@constraint(m,  - 205*b155 + i229 <= 0)

@constraint(m,  - 205*b156 + i230 <= 0)

@constraint(m,  - 205*b157 + i231 <= 0)

@constraint(m,  - 205*b158 + i232 <= 0)

@constraint(m,  - 205*b159 + i233 <= 0)

@constraint(m,  - 205*b160 + i234 <= 0)

@constraint(m,  - 205*b161 + i235 <= 0)

@constraint(m,  - 205*b162 + i236 <= 0)

@constraint(m,  - 205*b163 + i237 <= 0)

@constraint(m,  - 205*b164 + i238 <= 0)

@constraint(m,  - 205*b165 + i239 <= 0)

@constraint(m,  - 205*b166 + i240 <= 0)

@constraint(m,  - 205*b167 + i241 <= 0)

@constraint(m,  - 205*b168 + i242 <= 0)

@constraint(m,  - 205*b169 + i243 <= 0)

@constraint(m,  - 205*b170 + i244 <= 0)

@constraint(m, x46 - 25*b171 - 5*i245 == 0)

@constraint(m, x47 - 25*b172 - 5*i246 == 0)

@constraint(m, x48 - 25*b173 - 5*i247 == 0)

@constraint(m, x49 - 25*b174 - 5*i248 == 0)

@constraint(m, x50 - 25*b175 - 5*i249 == 0)

@constraint(m, x51 - 25*b176 - 5*i250 == 0)

@constraint(m, x52 - 25*b177 - 5*i251 == 0)

@constraint(m, x53 - 25*b178 - 5*i252 == 0)

@constraint(m, x54 - 25*b179 - 5*i253 == 0)

@constraint(m, x55 - 25*b180 - 5*i254 == 0)

@constraint(m, x56 - 25*b181 - 5*i255 == 0)

@constraint(m,  - 5*b171 + i245 <= 0)

@constraint(m,  - 15*b172 + i246 <= 0)

@constraint(m,  - 55*b173 + i247 <= 0)

@constraint(m,  - 75*b174 + i248 <= 0)

@constraint(m,  - 85*b175 + i249 <= 0)

@constraint(m,  - 85*b176 + i250 <= 0)

@constraint(m,  - 90*b177 + i251 <= 0)

@constraint(m,  - 135*b178 + i252 <= 0)

@constraint(m,  - 195*b179 + i253 <= 0)

@constraint(m,  - 195*b180 + i254 <= 0)

@constraint(m,  - 995*b181 + i255 <= 0)

@constraint(m, x2 - 1050*b57 <= 0)

@constraint(m, x3 - 1050*b58 <= 0)

@constraint(m, x4 - 1050*b59 <= 0)

@constraint(m, x5 - 1050*b60 <= 0)

@constraint(m, x6 - 1050*b61 <= 0)

@constraint(m, x7 - 1050*b62 <= 0)

@constraint(m, x8 - 1050*b63 <= 0)

@constraint(m, x9 - 1050*b64 <= 0)

@constraint(m, x10 - 1050*b65 <= 0)

@constraint(m, x11 - 1050*b66 <= 0)

@constraint(m, x12 - 1050*b67 <= 0)

@constraint(m, x13 - 1050*b68 <= 0)

@constraint(m, x14 - 1050*b69 <= 0)

@constraint(m, x15 - 1050*b70 <= 0)

@constraint(m, x16 - 1050*b71 <= 0)

@constraint(m, x17 - 1050*b72 <= 0)

@constraint(m, x18 - 1050*b73 <= 0)

@constraint(m, x19 - 1050*b74 <= 0)

@constraint(m, x20 - 1050*b75 <= 0)

@constraint(m, x21 - 1050*b76 <= 0)

@constraint(m, x22 - 1050*b77 <= 0)

@constraint(m, x23 - 1050*b78 <= 0)

@constraint(m, x24 - 1050*b79 <= 0)

@constraint(m, x25 - 1050*b80 <= 0)

@constraint(m, x26 - 1050*b81 <= 0)

@constraint(m, x27 - 1050*b82 <= 0)

@constraint(m, x28 - 1050*b83 <= 0)

@constraint(m, x29 - 1050*b84 <= 0)

@constraint(m, x30 - 1050*b85 <= 0)

@constraint(m, x31 - 1050*b86 <= 0)

@constraint(m, x32 - 1050*b87 <= 0)

@constraint(m, x33 - 1050*b88 <= 0)

@constraint(m, x34 - 1050*b89 <= 0)

@constraint(m, x35 - 1050*b90 <= 0)

@constraint(m, x36 - 1050*b91 <= 0)

@constraint(m, x37 - 1050*b92 <= 0)

@constraint(m, x38 - 1050*b93 <= 0)

@constraint(m, x39 - 1050*b94 <= 0)

@constraint(m, x40 - 1050*b95 <= 0)

@constraint(m, x41 - 1050*b96 <= 0)

@constraint(m, x42 - 1050*b97 <= 0)

@constraint(m, x43 - 1050*b98 <= 0)

@constraint(m, x44 - 1050*b99 <= 0)

@constraint(m, x45 - 1050*b100 <= 0)

@constraint(m, 0.02*x46 + b101 >= 1)

@constraint(m, 0.01*x47 + b102 >= 1)

@constraint(m, 0.00333333333333333*x48 + b103 >= 1)

@constraint(m, 0.0025*x49 + b104 >= 1)

@constraint(m, 0.00222222222222222*x50 + b105 >= 1)

@constraint(m, 0.00222222222222222*x51 + b106 >= 1)

@constraint(m, 0.00210526315789474*x52 + b107 >= 1)

@constraint(m, 0.00142857142857143*x53 + b108 >= 1)

@constraint(m, 0.001*x54 + b109 >= 1)

@constraint(m, 0.001*x55 + b110 >= 1)

@constraint(m, 0.0002*x56 + b111 >= 1)

@constraint(m,  - 0.02*x46 + b112 >= 0)

@constraint(m,  - 0.01*x47 + b113 >= 0)

@constraint(m,  - 0.00333333333333333*x48 + b114 >= 0)

@constraint(m,  - 0.0025*x49 + b115 >= 0)

@constraint(m,  - 0.00222222222222222*x50 + b116 >= 0)

@constraint(m,  - 0.00222222222222222*x51 + b117 >= 0)

@constraint(m,  - 0.00210526315789474*x52 + b118 >= 0)

@constraint(m,  - 0.00142857142857143*x53 + b119 >= 0)

@constraint(m,  - 0.001*x54 + b120 >= 0)

@constraint(m,  - 0.001*x55 + b121 >= 0)

@constraint(m,  - 0.0002*x56 + b122 >= 0)

@constraint(m, b57 + b58 + b59 + b60 + b101 + b112 - 4*b182 <= 2)

@constraint(m, b61 + b62 + b63 + b64 + b102 + b113 - 4*b183 <= 2)

@constraint(m, b65 + b66 + b67 + b68 + b103 + b114 - 4*b184 <= 2)

@constraint(m, b69 + b70 + b71 + b72 + b104 + b115 - 4*b185 <= 2)

@constraint(m, b73 + b74 + b75 + b76 + b105 + b116 - 4*b186 <= 2)

@constraint(m, b77 + b78 + b79 + b80 + b106 + b117 - 4*b187 <= 2)

@constraint(m, b81 + b82 + b83 + b84 + b107 + b118 - 4*b188 <= 2)

@constraint(m, b85 + b86 + b87 + b88 + b108 + b119 - 4*b189 <= 2)

@constraint(m, b89 + b90 + b91 + b92 + b109 + b120 - 4*b190 <= 2)

@constraint(m, b93 + b94 + b95 + b96 + b110 + b121 - 4*b191 <= 2)

@constraint(m, b97 + b98 + b99 + b100 + b111 + b122 - 4*b192 <= 2)

@constraint(m,  - x2 + 100*b193 >= -950)

@constraint(m,  - x3 + 100*b194 >= -950)

@constraint(m,  - x4 + 100*b195 >= -950)

@constraint(m,  - x5 + 100*b196 >= -950)

@constraint(m,  - x6 + 100*b193 >= -950)

@constraint(m,  - x7 + 100*b194 >= -950)

@constraint(m,  - x8 + 100*b195 >= -950)

@constraint(m,  - x9 + 100*b196 >= -950)

@constraint(m,  - x10 + 100*b193 >= -950)

@constraint(m,  - x11 + 100*b194 >= -950)

@constraint(m,  - x12 + 100*b195 >= -950)

@constraint(m,  - x13 + 100*b196 >= -950)

@constraint(m,  - x14 + 100*b193 >= -950)

@constraint(m,  - x15 + 100*b194 >= -950)

@constraint(m,  - x16 + 100*b195 >= -950)

@constraint(m,  - x17 + 100*b196 >= -950)

@constraint(m,  - x18 + 100*b193 >= -950)

@constraint(m,  - x19 + 100*b194 >= -950)

@constraint(m,  - x20 + 100*b195 >= -950)

@constraint(m,  - x21 + 100*b196 >= -950)

@constraint(m,  - x22 + 100*b193 >= -950)

@constraint(m,  - x23 + 100*b194 >= -950)

@constraint(m,  - x24 + 100*b195 >= -950)

@constraint(m,  - x25 + 100*b196 >= -950)

@constraint(m,  - x26 + 100*b193 >= -950)

@constraint(m,  - x27 + 100*b194 >= -950)

@constraint(m,  - x28 + 100*b195 >= -950)

@constraint(m,  - x29 + 100*b196 >= -950)

@constraint(m,  - x30 + 100*b193 >= -950)

@constraint(m,  - x31 + 100*b194 >= -950)

@constraint(m,  - x32 + 100*b195 >= -950)

@constraint(m,  - x33 + 100*b196 >= -950)

@constraint(m,  - x34 + 100*b193 >= -950)

@constraint(m,  - x35 + 100*b194 >= -950)

@constraint(m,  - x36 + 100*b195 >= -950)

@constraint(m,  - x37 + 100*b196 >= -950)

@constraint(m,  - x38 + 100*b193 >= -950)

@constraint(m,  - x39 + 100*b194 >= -950)

@constraint(m,  - x40 + 100*b195 >= -950)

@constraint(m,  - x41 + 100*b196 >= -950)

@constraint(m,  - x42 + 100*b193 >= -950)

@constraint(m,  - x43 + 100*b194 >= -950)

@constraint(m,  - x44 + 100*b195 >= -950)

@constraint(m,  - x45 + 100*b196 >= -950)

@constraint(m,  - x2 - x6 + 100*b197 >= -950)

@constraint(m,  - x3 - x7 + 100*b198 >= -950)

@constraint(m,  - x4 - x8 + 100*b199 >= -950)

@constraint(m,  - x5 - x9 + 100*b200 >= -950)

@constraint(m,  - x2 - x10 + 100*b197 >= -950)

@constraint(m,  - x3 - x11 + 100*b198 >= -950)

@constraint(m,  - x4 - x12 + 100*b199 >= -950)

@constraint(m,  - x5 - x13 + 100*b200 >= -950)

@constraint(m,  - x2 - x14 + 100*b197 >= -950)

@constraint(m,  - x3 - x15 + 100*b198 >= -950)

@constraint(m,  - x4 - x16 + 100*b199 >= -950)

@constraint(m,  - x5 - x17 + 100*b200 >= -950)

@constraint(m,  - x2 - x18 + 100*b197 >= -950)

@constraint(m,  - x3 - x19 + 100*b198 >= -950)

@constraint(m,  - x4 - x20 + 100*b199 >= -950)

@constraint(m,  - x5 - x21 + 100*b200 >= -950)

@constraint(m,  - x2 - x22 + 100*b197 >= -950)

@constraint(m,  - x3 - x23 + 100*b198 >= -950)

@constraint(m,  - x4 - x24 + 100*b199 >= -950)

@constraint(m,  - x5 - x25 + 100*b200 >= -950)

@constraint(m,  - x2 - x26 + 100*b197 >= -950)

@constraint(m,  - x3 - x27 + 100*b198 >= -950)

@constraint(m,  - x4 - x28 + 100*b199 >= -950)

@constraint(m,  - x5 - x29 + 100*b200 >= -950)

@constraint(m,  - x2 - x30 + 100*b197 >= -950)

@constraint(m,  - x3 - x31 + 100*b198 >= -950)

@constraint(m,  - x4 - x32 + 100*b199 >= -950)

@constraint(m,  - x5 - x33 + 100*b200 >= -950)

@constraint(m,  - x2 - x34 + 100*b197 >= -950)

@constraint(m,  - x3 - x35 + 100*b198 >= -950)

@constraint(m,  - x4 - x36 + 100*b199 >= -950)

@constraint(m,  - x5 - x37 + 100*b200 >= -950)

@constraint(m,  - x2 - x38 + 100*b197 >= -950)

@constraint(m,  - x3 - x39 + 100*b198 >= -950)

@constraint(m,  - x4 - x40 + 100*b199 >= -950)

@constraint(m,  - x5 - x41 + 100*b200 >= -950)

@constraint(m,  - x2 - x42 + 100*b197 >= -950)

@constraint(m,  - x3 - x43 + 100*b198 >= -950)

@constraint(m,  - x4 - x44 + 100*b199 >= -950)

@constraint(m,  - x5 - x45 + 100*b200 >= -950)

@constraint(m,  - x6 - x10 + 100*b197 >= -950)

@constraint(m,  - x7 - x11 + 100*b198 >= -950)

@constraint(m,  - x8 - x12 + 100*b199 >= -950)

@constraint(m,  - x9 - x13 + 100*b200 >= -950)

@constraint(m,  - x6 - x14 + 100*b197 >= -950)

@constraint(m,  - x7 - x15 + 100*b198 >= -950)

@constraint(m,  - x8 - x16 + 100*b199 >= -950)

@constraint(m,  - x9 - x17 + 100*b200 >= -950)

@constraint(m,  - x6 - x18 + 100*b197 >= -950)

@constraint(m,  - x7 - x19 + 100*b198 >= -950)

@constraint(m,  - x8 - x20 + 100*b199 >= -950)

@constraint(m,  - x9 - x21 + 100*b200 >= -950)

@constraint(m,  - x6 - x22 + 100*b197 >= -950)

@constraint(m,  - x7 - x23 + 100*b198 >= -950)

@constraint(m,  - x8 - x24 + 100*b199 >= -950)

@constraint(m,  - x9 - x25 + 100*b200 >= -950)

@constraint(m,  - x6 - x26 + 100*b197 >= -950)

@constraint(m,  - x7 - x27 + 100*b198 >= -950)

@constraint(m,  - x8 - x28 + 100*b199 >= -950)

@constraint(m,  - x9 - x29 + 100*b200 >= -950)

@constraint(m,  - x6 - x30 + 100*b197 >= -950)

@constraint(m,  - x7 - x31 + 100*b198 >= -950)

@constraint(m,  - x8 - x32 + 100*b199 >= -950)

@constraint(m,  - x9 - x33 + 100*b200 >= -950)

@constraint(m,  - x6 - x34 + 100*b197 >= -950)

@constraint(m,  - x7 - x35 + 100*b198 >= -950)

@constraint(m,  - x8 - x36 + 100*b199 >= -950)

@constraint(m,  - x9 - x37 + 100*b200 >= -950)

@constraint(m,  - x6 - x38 + 100*b197 >= -950)

@constraint(m,  - x7 - x39 + 100*b198 >= -950)

@constraint(m,  - x8 - x40 + 100*b199 >= -950)

@constraint(m,  - x9 - x41 + 100*b200 >= -950)

@constraint(m,  - x6 - x42 + 100*b197 >= -950)

@constraint(m,  - x7 - x43 + 100*b198 >= -950)

@constraint(m,  - x8 - x44 + 100*b199 >= -950)

@constraint(m,  - x9 - x45 + 100*b200 >= -950)

@constraint(m,  - x10 - x14 + 100*b197 >= -950)

@constraint(m,  - x11 - x15 + 100*b198 >= -950)

@constraint(m,  - x12 - x16 + 100*b199 >= -950)

@constraint(m,  - x13 - x17 + 100*b200 >= -950)

@constraint(m,  - x10 - x18 + 100*b197 >= -950)

@constraint(m,  - x11 - x19 + 100*b198 >= -950)

@constraint(m,  - x12 - x20 + 100*b199 >= -950)

@constraint(m,  - x13 - x21 + 100*b200 >= -950)

@constraint(m,  - x10 - x22 + 100*b197 >= -950)

@constraint(m,  - x11 - x23 + 100*b198 >= -950)

@constraint(m,  - x12 - x24 + 100*b199 >= -950)

@constraint(m,  - x13 - x25 + 100*b200 >= -950)

@constraint(m,  - x10 - x26 + 100*b197 >= -950)

@constraint(m,  - x11 - x27 + 100*b198 >= -950)

@constraint(m,  - x12 - x28 + 100*b199 >= -950)

@constraint(m,  - x13 - x29 + 100*b200 >= -950)

@constraint(m,  - x10 - x30 + 100*b197 >= -950)

@constraint(m,  - x11 - x31 + 100*b198 >= -950)

@constraint(m,  - x12 - x32 + 100*b199 >= -950)

@constraint(m,  - x13 - x33 + 100*b200 >= -950)

@constraint(m,  - x10 - x34 + 100*b197 >= -950)

@constraint(m,  - x11 - x35 + 100*b198 >= -950)

@constraint(m,  - x12 - x36 + 100*b199 >= -950)

@constraint(m,  - x13 - x37 + 100*b200 >= -950)

@constraint(m,  - x10 - x38 + 100*b197 >= -950)

@constraint(m,  - x11 - x39 + 100*b198 >= -950)

@constraint(m,  - x12 - x40 + 100*b199 >= -950)

@constraint(m,  - x13 - x41 + 100*b200 >= -950)

@constraint(m,  - x10 - x42 + 100*b197 >= -950)

@constraint(m,  - x11 - x43 + 100*b198 >= -950)

@constraint(m,  - x12 - x44 + 100*b199 >= -950)

@constraint(m,  - x13 - x45 + 100*b200 >= -950)

@constraint(m,  - x14 - x18 + 100*b197 >= -950)

@constraint(m,  - x15 - x19 + 100*b198 >= -950)

@constraint(m,  - x16 - x20 + 100*b199 >= -950)

@constraint(m,  - x17 - x21 + 100*b200 >= -950)

@constraint(m,  - x14 - x22 + 100*b197 >= -950)

@constraint(m,  - x15 - x23 + 100*b198 >= -950)

@constraint(m,  - x16 - x24 + 100*b199 >= -950)

@constraint(m,  - x17 - x25 + 100*b200 >= -950)

@constraint(m,  - x14 - x26 + 100*b197 >= -950)

@constraint(m,  - x15 - x27 + 100*b198 >= -950)

@constraint(m,  - x16 - x28 + 100*b199 >= -950)

@constraint(m,  - x17 - x29 + 100*b200 >= -950)

@constraint(m,  - x14 - x30 + 100*b197 >= -950)

@constraint(m,  - x15 - x31 + 100*b198 >= -950)

@constraint(m,  - x16 - x32 + 100*b199 >= -950)

@constraint(m,  - x17 - x33 + 100*b200 >= -950)

@constraint(m,  - x14 - x34 + 100*b197 >= -950)

@constraint(m,  - x15 - x35 + 100*b198 >= -950)

@constraint(m,  - x16 - x36 + 100*b199 >= -950)

@constraint(m,  - x17 - x37 + 100*b200 >= -950)

@constraint(m,  - x14 - x38 + 100*b197 >= -950)

@constraint(m,  - x15 - x39 + 100*b198 >= -950)

@constraint(m,  - x16 - x40 + 100*b199 >= -950)

@constraint(m,  - x17 - x41 + 100*b200 >= -950)

@constraint(m,  - x14 - x42 + 100*b197 >= -950)

@constraint(m,  - x15 - x43 + 100*b198 >= -950)

@constraint(m,  - x16 - x44 + 100*b199 >= -950)

@constraint(m,  - x17 - x45 + 100*b200 >= -950)

@constraint(m,  - x18 - x22 + 100*b197 >= -950)

@constraint(m,  - x19 - x23 + 100*b198 >= -950)

@constraint(m,  - x20 - x24 + 100*b199 >= -950)

@constraint(m,  - x21 - x25 + 100*b200 >= -950)

@constraint(m,  - x18 - x26 + 100*b197 >= -950)

@constraint(m,  - x19 - x27 + 100*b198 >= -950)

@constraint(m,  - x20 - x28 + 100*b199 >= -950)

@constraint(m,  - x21 - x29 + 100*b200 >= -950)

@constraint(m,  - x18 - x30 + 100*b197 >= -950)

@constraint(m,  - x19 - x31 + 100*b198 >= -950)

@constraint(m,  - x20 - x32 + 100*b199 >= -950)

@constraint(m,  - x21 - x33 + 100*b200 >= -950)

@constraint(m,  - x18 - x34 + 100*b197 >= -950)

@constraint(m,  - x19 - x35 + 100*b198 >= -950)

@constraint(m,  - x20 - x36 + 100*b199 >= -950)

@constraint(m,  - x21 - x37 + 100*b200 >= -950)

@constraint(m,  - x18 - x38 + 100*b197 >= -950)

@constraint(m,  - x19 - x39 + 100*b198 >= -950)

@constraint(m,  - x20 - x40 + 100*b199 >= -950)

@constraint(m,  - x21 - x41 + 100*b200 >= -950)

@constraint(m,  - x18 - x42 + 100*b197 >= -950)

@constraint(m,  - x19 - x43 + 100*b198 >= -950)

@constraint(m,  - x20 - x44 + 100*b199 >= -950)

@constraint(m,  - x21 - x45 + 100*b200 >= -950)

@constraint(m,  - x22 - x26 + 100*b197 >= -950)

@constraint(m,  - x23 - x27 + 100*b198 >= -950)

@constraint(m,  - x24 - x28 + 100*b199 >= -950)

@constraint(m,  - x25 - x29 + 100*b200 >= -950)

@constraint(m,  - x22 - x30 + 100*b197 >= -950)

@constraint(m,  - x23 - x31 + 100*b198 >= -950)

@constraint(m,  - x24 - x32 + 100*b199 >= -950)

@constraint(m,  - x25 - x33 + 100*b200 >= -950)

@constraint(m,  - x22 - x34 + 100*b197 >= -950)

@constraint(m,  - x23 - x35 + 100*b198 >= -950)

@constraint(m,  - x24 - x36 + 100*b199 >= -950)

@constraint(m,  - x25 - x37 + 100*b200 >= -950)

@constraint(m,  - x22 - x38 + 100*b197 >= -950)

@constraint(m,  - x23 - x39 + 100*b198 >= -950)

@constraint(m,  - x24 - x40 + 100*b199 >= -950)

@constraint(m,  - x25 - x41 + 100*b200 >= -950)

@constraint(m,  - x22 - x42 + 100*b197 >= -950)

@constraint(m,  - x23 - x43 + 100*b198 >= -950)

@constraint(m,  - x24 - x44 + 100*b199 >= -950)

@constraint(m,  - x25 - x45 + 100*b200 >= -950)

@constraint(m,  - x26 - x30 + 100*b197 >= -950)

@constraint(m,  - x27 - x31 + 100*b198 >= -950)

@constraint(m,  - x28 - x32 + 100*b199 >= -950)

@constraint(m,  - x29 - x33 + 100*b200 >= -950)

@constraint(m,  - x26 - x34 + 100*b197 >= -950)

@constraint(m,  - x27 - x35 + 100*b198 >= -950)

@constraint(m,  - x28 - x36 + 100*b199 >= -950)

@constraint(m,  - x29 - x37 + 100*b200 >= -950)

@constraint(m,  - x26 - x38 + 100*b197 >= -950)

@constraint(m,  - x27 - x39 + 100*b198 >= -950)

@constraint(m,  - x28 - x40 + 100*b199 >= -950)

@constraint(m,  - x29 - x41 + 100*b200 >= -950)

@constraint(m,  - x26 - x42 + 100*b197 >= -950)

@constraint(m,  - x27 - x43 + 100*b198 >= -950)

@constraint(m,  - x28 - x44 + 100*b199 >= -950)

@constraint(m,  - x29 - x45 + 100*b200 >= -950)

@constraint(m,  - x30 - x34 + 100*b197 >= -950)

@constraint(m,  - x31 - x35 + 100*b198 >= -950)

@constraint(m,  - x32 - x36 + 100*b199 >= -950)

@constraint(m,  - x33 - x37 + 100*b200 >= -950)

@constraint(m,  - x30 - x38 + 100*b197 >= -950)

@constraint(m,  - x31 - x39 + 100*b198 >= -950)

@constraint(m,  - x32 - x40 + 100*b199 >= -950)

@constraint(m,  - x33 - x41 + 100*b200 >= -950)

@constraint(m,  - x30 - x42 + 100*b197 >= -950)

@constraint(m,  - x31 - x43 + 100*b198 >= -950)

@constraint(m,  - x32 - x44 + 100*b199 >= -950)

@constraint(m,  - x33 - x45 + 100*b200 >= -950)

@constraint(m,  - x34 - x38 + 100*b197 >= -950)

@constraint(m,  - x35 - x39 + 100*b198 >= -950)

@constraint(m,  - x36 - x40 + 100*b199 >= -950)

@constraint(m,  - x37 - x41 + 100*b200 >= -950)

@constraint(m,  - x34 - x42 + 100*b197 >= -950)

@constraint(m,  - x35 - x43 + 100*b198 >= -950)

@constraint(m,  - x36 - x44 + 100*b199 >= -950)

@constraint(m,  - x37 - x45 + 100*b200 >= -950)

@constraint(m,  - x38 - x42 + 100*b197 >= -950)

@constraint(m,  - x39 - x43 + 100*b198 >= -950)

@constraint(m,  - x40 - x44 + 100*b199 >= -950)

@constraint(m,  - x41 - x45 + 100*b200 >= -950)

@constraint(m, b57 + b61 + b65 + b69 + b73 + b77 + b81 + b85 + b89 + b93 + b97 <= 3)

@constraint(m, b58 + b62 + b66 + b70 + b74 + b78 + b82 + b86 + b90 + b94 + b98 <= 3)

@constraint(m, b59 + b63 + b67 + b71 + b75 + b79 + b83 + b87 + b91 + b95 + b99 <= 3)

@constraint(m, b60 + b64 + b68 + b72 + b76 + b80 + b84 + b88 + b92 + b96 + b100 <= 3)

@constraint(m, b57 + b61 + b65 + b69 + b73 + b77 + b81 + b85 + b89 + b93 + b97 + 3*b193 <= 4)

@constraint(m, b58 + b62 + b66 + b70 + b74 + b78 + b82 + b86 + b90 + b94 + b98 + 3*b194 <= 4)

@constraint(m, b59 + b63 + b67 + b71 + b75 + b79 + b83 + b87 + b91 + b95 + b99 + 3*b195 <= 4)

@constraint(m, b60 + b64 + b68 + b72 + b76 + b80 + b84 + b88 + b92 + b96 + b100 + 3*b196 <= 4)

@constraint(m, b57 + b61 + b65 + b69 + b73 + b77 + b81 + b85 + b89 + b93 + b97 + 3*b197 <= 5)

@constraint(m, b58 + b62 + b66 + b70 + b74 + b78 + b82 + b86 + b90 + b94 + b98 + 3*b198 <= 5)

@constraint(m, b59 + b63 + b67 + b71 + b75 + b79 + b83 + b87 + b91 + b95 + b99 + 3*b199 <= 5)

@constraint(m, b60 + b64 + b68 + b72 + b76 + b80 + b84 + b88 + b92 + b96 + b100 + 3*b200 <= 5)
