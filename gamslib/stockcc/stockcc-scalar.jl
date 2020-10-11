#  MIP written by GAMS Convert at 10/11/20 12:43:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         98       97        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        481       49      432        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1393     1393        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 3 <= x1 <= 156, start=3)
@variable(m, 3 <= x2 <= 156, start=3)
@variable(m, 3 <= x3 <= 156, start=3)
@variable(m, 3 <= x4 <= 156, start=3)
@variable(m, 3 <= x5 <= 156, start=3)
@variable(m, 3 <= x6 <= 156, start=3)
@variable(m, 3 <= x7 <= 156, start=3)
@variable(m, 3 <= x8 <= 156, start=3)
@variable(m, 3 <= x9 <= 156, start=3)
@variable(m, 3 <= x10 <= 156, start=3)
@variable(m, 3 <= x11 <= 156, start=3)
@variable(m, 3 <= x12 <= 156, start=3)
@variable(m, 3 <= x13 <= 156, start=3)
@variable(m, 3 <= x14 <= 156, start=3)
@variable(m, 3 <= x15 <= 156, start=3)
@variable(m, 3 <= x16 <= 156, start=3)
@variable(m, 3 <= x17 <= 156, start=3)
@variable(m, 3 <= x18 <= 156, start=3)
@variable(m, 3 <= x19 <= 156, start=3)
@variable(m, 3 <= x20 <= 156, start=3)
@variable(m, 3 <= x21 <= 156, start=3)
@variable(m, 3 <= x22 <= 156, start=3)
@variable(m, 3 <= x23 <= 156, start=3)
@variable(m, 3 <= x24 <= 156, start=3)
@variable(m, 3 <= x25 <= 156, start=3)
@variable(m, 3 <= x26 <= 156, start=3)
@variable(m, 3 <= x27 <= 156, start=3)
@variable(m, 3 <= x28 <= 156, start=3)
@variable(m, 3 <= x29 <= 156, start=3)
@variable(m, 3 <= x30 <= 156, start=3)
@variable(m, 3 <= x31 <= 156, start=3)
@variable(m, 3 <= x32 <= 156, start=3)
@variable(m, 3 <= x33 <= 156, start=3)
@variable(m, 3 <= x34 <= 156, start=3)
@variable(m, 3 <= x35 <= 156, start=3)
@variable(m, 3 <= x36 <= 156, start=3)
@variable(m, 3 <= x37 <= 156, start=3)
@variable(m, 3 <= x38 <= 156, start=3)
@variable(m, 3 <= x39 <= 156, start=3)
@variable(m, 3 <= x40 <= 156, start=3)
@variable(m, 3 <= x41 <= 156, start=3)
@variable(m, 3 <= x42 <= 156, start=3)
@variable(m, 3 <= x43 <= 156, start=3)
@variable(m, 3 <= x44 <= 156, start=3)
@variable(m, 3 <= x45 <= 156, start=3)
@variable(m, 3 <= x46 <= 156, start=3)
@variable(m, 3 <= x47 <= 156, start=3)
@variable(m, 3 <= x48 <= 156, start=3)
@variable(m, 0 <= b49 <= 1, binary=true, start=0)
@variable(m, 0 <= b50 <= 1, binary=true, start=0)
@variable(m, 0 <= b51 <= 1, binary=true, start=0)
@variable(m, 0 <= b52 <= 1, binary=true, start=0)
@variable(m, 0 <= b53 <= 1, binary=true, start=0)
@variable(m, 0 <= b54 <= 1, binary=true, start=0)
@variable(m, 0 <= b55 <= 1, binary=true, start=0)
@variable(m, 0 <= b56 <= 1, binary=true, start=0)
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
@variable(m, 0 <= b201 <= 1, binary=true, start=0)
@variable(m, 0 <= b202 <= 1, binary=true, start=0)
@variable(m, 0 <= b203 <= 1, binary=true, start=0)
@variable(m, 0 <= b204 <= 1, binary=true, start=0)
@variable(m, 0 <= b205 <= 1, binary=true, start=0)
@variable(m, 0 <= b206 <= 1, binary=true, start=0)
@variable(m, 0 <= b207 <= 1, binary=true, start=0)
@variable(m, 0 <= b208 <= 1, binary=true, start=0)
@variable(m, 0 <= b209 <= 1, binary=true, start=0)
@variable(m, 0 <= b210 <= 1, binary=true, start=0)
@variable(m, 0 <= b211 <= 1, binary=true, start=0)
@variable(m, 0 <= b212 <= 1, binary=true, start=0)
@variable(m, 0 <= b213 <= 1, binary=true, start=0)
@variable(m, 0 <= b214 <= 1, binary=true, start=0)
@variable(m, 0 <= b215 <= 1, binary=true, start=0)
@variable(m, 0 <= b216 <= 1, binary=true, start=0)
@variable(m, 0 <= b217 <= 1, binary=true, start=0)
@variable(m, 0 <= b218 <= 1, binary=true, start=0)
@variable(m, 0 <= b219 <= 1, binary=true, start=0)
@variable(m, 0 <= b220 <= 1, binary=true, start=0)
@variable(m, 0 <= b221 <= 1, binary=true, start=0)
@variable(m, 0 <= b222 <= 1, binary=true, start=0)
@variable(m, 0 <= b223 <= 1, binary=true, start=0)
@variable(m, 0 <= b224 <= 1, binary=true, start=0)
@variable(m, 0 <= b225 <= 1, binary=true, start=0)
@variable(m, 0 <= b226 <= 1, binary=true, start=0)
@variable(m, 0 <= b227 <= 1, binary=true, start=0)
@variable(m, 0 <= b228 <= 1, binary=true, start=0)
@variable(m, 0 <= b229 <= 1, binary=true, start=0)
@variable(m, 0 <= b230 <= 1, binary=true, start=0)
@variable(m, 0 <= b231 <= 1, binary=true, start=0)
@variable(m, 0 <= b232 <= 1, binary=true, start=0)
@variable(m, 0 <= b233 <= 1, binary=true, start=0)
@variable(m, 0 <= b234 <= 1, binary=true, start=0)
@variable(m, 0 <= b235 <= 1, binary=true, start=0)
@variable(m, 0 <= b236 <= 1, binary=true, start=0)
@variable(m, 0 <= b237 <= 1, binary=true, start=0)
@variable(m, 0 <= b238 <= 1, binary=true, start=0)
@variable(m, 0 <= b239 <= 1, binary=true, start=0)
@variable(m, 0 <= b240 <= 1, binary=true, start=0)
@variable(m, 0 <= b241 <= 1, binary=true, start=0)
@variable(m, 0 <= b242 <= 1, binary=true, start=0)
@variable(m, 0 <= b243 <= 1, binary=true, start=0)
@variable(m, 0 <= b244 <= 1, binary=true, start=0)
@variable(m, 0 <= b245 <= 1, binary=true, start=0)
@variable(m, 0 <= b246 <= 1, binary=true, start=0)
@variable(m, 0 <= b247 <= 1, binary=true, start=0)
@variable(m, 0 <= b248 <= 1, binary=true, start=0)
@variable(m, 0 <= b249 <= 1, binary=true, start=0)
@variable(m, 0 <= b250 <= 1, binary=true, start=0)
@variable(m, 0 <= b251 <= 1, binary=true, start=0)
@variable(m, 0 <= b252 <= 1, binary=true, start=0)
@variable(m, 0 <= b253 <= 1, binary=true, start=0)
@variable(m, 0 <= b254 <= 1, binary=true, start=0)
@variable(m, 0 <= b255 <= 1, binary=true, start=0)
@variable(m, 0 <= b256 <= 1, binary=true, start=0)
@variable(m, 0 <= b257 <= 1, binary=true, start=0)
@variable(m, 0 <= b258 <= 1, binary=true, start=0)
@variable(m, 0 <= b259 <= 1, binary=true, start=0)
@variable(m, 0 <= b260 <= 1, binary=true, start=0)
@variable(m, 0 <= b261 <= 1, binary=true, start=0)
@variable(m, 0 <= b262 <= 1, binary=true, start=0)
@variable(m, 0 <= b263 <= 1, binary=true, start=0)
@variable(m, 0 <= b264 <= 1, binary=true, start=0)
@variable(m, 0 <= b265 <= 1, binary=true, start=0)
@variable(m, 0 <= b266 <= 1, binary=true, start=0)
@variable(m, 0 <= b267 <= 1, binary=true, start=0)
@variable(m, 0 <= b268 <= 1, binary=true, start=0)
@variable(m, 0 <= b269 <= 1, binary=true, start=0)
@variable(m, 0 <= b270 <= 1, binary=true, start=0)
@variable(m, 0 <= b271 <= 1, binary=true, start=0)
@variable(m, 0 <= b272 <= 1, binary=true, start=0)
@variable(m, 0 <= b273 <= 1, binary=true, start=0)
@variable(m, 0 <= b274 <= 1, binary=true, start=0)
@variable(m, 0 <= b275 <= 1, binary=true, start=0)
@variable(m, 0 <= b276 <= 1, binary=true, start=0)
@variable(m, 0 <= b277 <= 1, binary=true, start=0)
@variable(m, 0 <= b278 <= 1, binary=true, start=0)
@variable(m, 0 <= b279 <= 1, binary=true, start=0)
@variable(m, 0 <= b280 <= 1, binary=true, start=0)
@variable(m, 0 <= b281 <= 1, binary=true, start=0)
@variable(m, 0 <= b282 <= 1, binary=true, start=0)
@variable(m, 0 <= b283 <= 1, binary=true, start=0)
@variable(m, 0 <= b284 <= 1, binary=true, start=0)
@variable(m, 0 <= b285 <= 1, binary=true, start=0)
@variable(m, 0 <= b286 <= 1, binary=true, start=0)
@variable(m, 0 <= b287 <= 1, binary=true, start=0)
@variable(m, 0 <= b288 <= 1, binary=true, start=0)
@variable(m, 0 <= b289 <= 1, binary=true, start=0)
@variable(m, 0 <= b290 <= 1, binary=true, start=0)
@variable(m, 0 <= b291 <= 1, binary=true, start=0)
@variable(m, 0 <= b292 <= 1, binary=true, start=0)
@variable(m, 0 <= b293 <= 1, binary=true, start=0)
@variable(m, 0 <= b294 <= 1, binary=true, start=0)
@variable(m, 0 <= b295 <= 1, binary=true, start=0)
@variable(m, 0 <= b296 <= 1, binary=true, start=0)
@variable(m, 0 <= b297 <= 1, binary=true, start=0)
@variable(m, 0 <= b298 <= 1, binary=true, start=0)
@variable(m, 0 <= b299 <= 1, binary=true, start=0)
@variable(m, 0 <= b300 <= 1, binary=true, start=0)
@variable(m, 0 <= b301 <= 1, binary=true, start=0)
@variable(m, 0 <= b302 <= 1, binary=true, start=0)
@variable(m, 0 <= b303 <= 1, binary=true, start=0)
@variable(m, 0 <= b304 <= 1, binary=true, start=0)
@variable(m, 0 <= b305 <= 1, binary=true, start=0)
@variable(m, 0 <= b306 <= 1, binary=true, start=0)
@variable(m, 0 <= b307 <= 1, binary=true, start=0)
@variable(m, 0 <= b308 <= 1, binary=true, start=0)
@variable(m, 0 <= b309 <= 1, binary=true, start=0)
@variable(m, 0 <= b310 <= 1, binary=true, start=0)
@variable(m, 0 <= b311 <= 1, binary=true, start=0)
@variable(m, 0 <= b312 <= 1, binary=true, start=0)
@variable(m, 0 <= b313 <= 1, binary=true, start=0)
@variable(m, 0 <= b314 <= 1, binary=true, start=0)
@variable(m, 0 <= b315 <= 1, binary=true, start=0)
@variable(m, 0 <= b316 <= 1, binary=true, start=0)
@variable(m, 0 <= b317 <= 1, binary=true, start=0)
@variable(m, 0 <= b318 <= 1, binary=true, start=0)
@variable(m, 0 <= b319 <= 1, binary=true, start=0)
@variable(m, 0 <= b320 <= 1, binary=true, start=0)
@variable(m, 0 <= b321 <= 1, binary=true, start=0)
@variable(m, 0 <= b322 <= 1, binary=true, start=0)
@variable(m, 0 <= b323 <= 1, binary=true, start=0)
@variable(m, 0 <= b324 <= 1, binary=true, start=0)
@variable(m, 0 <= b325 <= 1, binary=true, start=0)
@variable(m, 0 <= b326 <= 1, binary=true, start=0)
@variable(m, 0 <= b327 <= 1, binary=true, start=0)
@variable(m, 0 <= b328 <= 1, binary=true, start=0)
@variable(m, 0 <= b329 <= 1, binary=true, start=0)
@variable(m, 0 <= b330 <= 1, binary=true, start=0)
@variable(m, 0 <= b331 <= 1, binary=true, start=0)
@variable(m, 0 <= b332 <= 1, binary=true, start=0)
@variable(m, 0 <= b333 <= 1, binary=true, start=0)
@variable(m, 0 <= b334 <= 1, binary=true, start=0)
@variable(m, 0 <= b335 <= 1, binary=true, start=0)
@variable(m, 0 <= b336 <= 1, binary=true, start=0)
@variable(m, 0 <= b337 <= 1, binary=true, start=0)
@variable(m, 0 <= b338 <= 1, binary=true, start=0)
@variable(m, 0 <= b339 <= 1, binary=true, start=0)
@variable(m, 0 <= b340 <= 1, binary=true, start=0)
@variable(m, 0 <= b341 <= 1, binary=true, start=0)
@variable(m, 0 <= b342 <= 1, binary=true, start=0)
@variable(m, 0 <= b343 <= 1, binary=true, start=0)
@variable(m, 0 <= b344 <= 1, binary=true, start=0)
@variable(m, 0 <= b345 <= 1, binary=true, start=0)
@variable(m, 0 <= b346 <= 1, binary=true, start=0)
@variable(m, 0 <= b347 <= 1, binary=true, start=0)
@variable(m, 0 <= b348 <= 1, binary=true, start=0)
@variable(m, 0 <= b349 <= 1, binary=true, start=0)
@variable(m, 0 <= b350 <= 1, binary=true, start=0)
@variable(m, 0 <= b351 <= 1, binary=true, start=0)
@variable(m, 0 <= b352 <= 1, binary=true, start=0)
@variable(m, 0 <= b353 <= 1, binary=true, start=0)
@variable(m, 0 <= b354 <= 1, binary=true, start=0)
@variable(m, 0 <= b355 <= 1, binary=true, start=0)
@variable(m, 0 <= b356 <= 1, binary=true, start=0)
@variable(m, 0 <= b357 <= 1, binary=true, start=0)
@variable(m, 0 <= b358 <= 1, binary=true, start=0)
@variable(m, 0 <= b359 <= 1, binary=true, start=0)
@variable(m, 0 <= b360 <= 1, binary=true, start=0)
@variable(m, 0 <= b361 <= 1, binary=true, start=0)
@variable(m, 0 <= b362 <= 1, binary=true, start=0)
@variable(m, 0 <= b363 <= 1, binary=true, start=0)
@variable(m, 0 <= b364 <= 1, binary=true, start=0)
@variable(m, 0 <= b365 <= 1, binary=true, start=0)
@variable(m, 0 <= b366 <= 1, binary=true, start=0)
@variable(m, 0 <= b367 <= 1, binary=true, start=0)
@variable(m, 0 <= b368 <= 1, binary=true, start=0)
@variable(m, 0 <= b369 <= 1, binary=true, start=0)
@variable(m, 0 <= b370 <= 1, binary=true, start=0)
@variable(m, 0 <= b371 <= 1, binary=true, start=0)
@variable(m, 0 <= b372 <= 1, binary=true, start=0)
@variable(m, 0 <= b373 <= 1, binary=true, start=0)
@variable(m, 0 <= b374 <= 1, binary=true, start=0)
@variable(m, 0 <= b375 <= 1, binary=true, start=0)
@variable(m, 0 <= b376 <= 1, binary=true, start=0)
@variable(m, 0 <= b377 <= 1, binary=true, start=0)
@variable(m, 0 <= b378 <= 1, binary=true, start=0)
@variable(m, 0 <= b379 <= 1, binary=true, start=0)
@variable(m, 0 <= b380 <= 1, binary=true, start=0)
@variable(m, 0 <= b381 <= 1, binary=true, start=0)
@variable(m, 0 <= b382 <= 1, binary=true, start=0)
@variable(m, 0 <= b383 <= 1, binary=true, start=0)
@variable(m, 0 <= b384 <= 1, binary=true, start=0)
@variable(m, 0 <= b385 <= 1, binary=true, start=0)
@variable(m, 0 <= b386 <= 1, binary=true, start=0)
@variable(m, 0 <= b387 <= 1, binary=true, start=0)
@variable(m, 0 <= b388 <= 1, binary=true, start=0)
@variable(m, 0 <= b389 <= 1, binary=true, start=0)
@variable(m, 0 <= b390 <= 1, binary=true, start=0)
@variable(m, 0 <= b391 <= 1, binary=true, start=0)
@variable(m, 0 <= b392 <= 1, binary=true, start=0)
@variable(m, 0 <= b393 <= 1, binary=true, start=0)
@variable(m, 0 <= b394 <= 1, binary=true, start=0)
@variable(m, 0 <= b395 <= 1, binary=true, start=0)
@variable(m, 0 <= b396 <= 1, binary=true, start=0)
@variable(m, 0 <= b397 <= 1, binary=true, start=0)
@variable(m, 0 <= b398 <= 1, binary=true, start=0)
@variable(m, 0 <= b399 <= 1, binary=true, start=0)
@variable(m, 0 <= b400 <= 1, binary=true, start=0)
@variable(m, 0 <= b401 <= 1, binary=true, start=0)
@variable(m, 0 <= b402 <= 1, binary=true, start=0)
@variable(m, 0 <= b403 <= 1, binary=true, start=0)
@variable(m, 0 <= b404 <= 1, binary=true, start=0)
@variable(m, 0 <= b405 <= 1, binary=true, start=0)
@variable(m, 0 <= b406 <= 1, binary=true, start=0)
@variable(m, 0 <= b407 <= 1, binary=true, start=0)
@variable(m, 0 <= b408 <= 1, binary=true, start=0)
@variable(m, 0 <= b409 <= 1, binary=true, start=0)
@variable(m, 0 <= b410 <= 1, binary=true, start=0)
@variable(m, 0 <= b411 <= 1, binary=true, start=0)
@variable(m, 0 <= b412 <= 1, binary=true, start=0)
@variable(m, 0 <= b413 <= 1, binary=true, start=0)
@variable(m, 0 <= b414 <= 1, binary=true, start=0)
@variable(m, 0 <= b415 <= 1, binary=true, start=0)
@variable(m, 0 <= b416 <= 1, binary=true, start=0)
@variable(m, 0 <= b417 <= 1, binary=true, start=0)
@variable(m, 0 <= b418 <= 1, binary=true, start=0)
@variable(m, 0 <= b419 <= 1, binary=true, start=0)
@variable(m, 0 <= b420 <= 1, binary=true, start=0)
@variable(m, 0 <= b421 <= 1, binary=true, start=0)
@variable(m, 0 <= b422 <= 1, binary=true, start=0)
@variable(m, 0 <= b423 <= 1, binary=true, start=0)
@variable(m, 0 <= b424 <= 1, binary=true, start=0)
@variable(m, 0 <= b425 <= 1, binary=true, start=0)
@variable(m, 0 <= b426 <= 1, binary=true, start=0)
@variable(m, 0 <= b427 <= 1, binary=true, start=0)
@variable(m, 0 <= b428 <= 1, binary=true, start=0)
@variable(m, 0 <= b429 <= 1, binary=true, start=0)
@variable(m, 0 <= b430 <= 1, binary=true, start=0)
@variable(m, 0 <= b431 <= 1, binary=true, start=0)
@variable(m, 0 <= b432 <= 1, binary=true, start=0)
@variable(m, 0 <= b433 <= 1, binary=true, start=0)
@variable(m, 0 <= b434 <= 1, binary=true, start=0)
@variable(m, 0 <= b435 <= 1, binary=true, start=0)
@variable(m, 0 <= b436 <= 1, binary=true, start=0)
@variable(m, 0 <= b437 <= 1, binary=true, start=0)
@variable(m, 0 <= b438 <= 1, binary=true, start=0)
@variable(m, 0 <= b439 <= 1, binary=true, start=0)
@variable(m, 0 <= b440 <= 1, binary=true, start=0)
@variable(m, 0 <= b441 <= 1, binary=true, start=0)
@variable(m, 0 <= b442 <= 1, binary=true, start=0)
@variable(m, 0 <= b443 <= 1, binary=true, start=0)
@variable(m, 0 <= b444 <= 1, binary=true, start=0)
@variable(m, 0 <= b445 <= 1, binary=true, start=0)
@variable(m, 0 <= b446 <= 1, binary=true, start=0)
@variable(m, 0 <= b447 <= 1, binary=true, start=0)
@variable(m, 0 <= b448 <= 1, binary=true, start=0)
@variable(m, 0 <= b449 <= 1, binary=true, start=0)
@variable(m, 0 <= b450 <= 1, binary=true, start=0)
@variable(m, 0 <= b451 <= 1, binary=true, start=0)
@variable(m, 0 <= b452 <= 1, binary=true, start=0)
@variable(m, 0 <= b453 <= 1, binary=true, start=0)
@variable(m, 0 <= b454 <= 1, binary=true, start=0)
@variable(m, 0 <= b455 <= 1, binary=true, start=0)
@variable(m, 0 <= b456 <= 1, binary=true, start=0)
@variable(m, 0 <= b457 <= 1, binary=true, start=0)
@variable(m, 0 <= b458 <= 1, binary=true, start=0)
@variable(m, 0 <= b459 <= 1, binary=true, start=0)
@variable(m, 0 <= b460 <= 1, binary=true, start=0)
@variable(m, 0 <= b461 <= 1, binary=true, start=0)
@variable(m, 0 <= b462 <= 1, binary=true, start=0)
@variable(m, 0 <= b463 <= 1, binary=true, start=0)
@variable(m, 0 <= b464 <= 1, binary=true, start=0)
@variable(m, 0 <= b465 <= 1, binary=true, start=0)
@variable(m, 0 <= b466 <= 1, binary=true, start=0)
@variable(m, 0 <= b467 <= 1, binary=true, start=0)
@variable(m, 0 <= b468 <= 1, binary=true, start=0)
@variable(m, 0 <= b469 <= 1, binary=true, start=0)
@variable(m, 0 <= b470 <= 1, binary=true, start=0)
@variable(m, 0 <= b471 <= 1, binary=true, start=0)
@variable(m, 0 <= b472 <= 1, binary=true, start=0)
@variable(m, 0 <= b473 <= 1, binary=true, start=0)
@variable(m, 0 <= b474 <= 1, binary=true, start=0)
@variable(m, 0 <= b475 <= 1, binary=true, start=0)
@variable(m, 0 <= b476 <= 1, binary=true, start=0)
@variable(m, 0 <= b477 <= 1, binary=true, start=0)
@variable(m, 0 <= b478 <= 1, binary=true, start=0)
@variable(m, 0 <= b479 <= 1, binary=true, start=0)
@variable(m, 0 <= b480 <= 1, binary=true, start=0)

@objective(m, Min, 10.02*b49 + 5.01*b50 + 3.34*b51 + 2.505*b52 + 1.67*b53 + 0.835*b54 + 0.578076923076923*b55
     + 0.385384615384615*b56 + 0.192692307692308*b57 + 10.86*b58 + 5.43*b59 + 3.62*b60 + 2.715*b61 + 1.81*b62
     + 0.905*b63 + 0.626538461538461*b64 + 0.417692307692308*b65 + 0.208846153846154*b66 + 18.96*b67 + 9.48*b68
     + 6.32*b69 + 4.74*b70 + 3.16*b71 + 1.58*b72 + 1.09384615384615*b73 + 0.729230769230769*b74 + 0.364615384615385*b75
     + 27.06*b76 + 13.53*b77 + 9.02*b78 + 6.765*b79 + 4.51*b80 + 2.255*b81 + 1.56115384615385*b82 + 1.04076923076923*b83
     + 0.520384615384615*b84 + 30.9*b85 + 15.45*b86 + 10.3*b87 + 7.725*b88 + 5.15*b89 + 2.575*b90 + 1.78269230769231*b91
     + 1.18846153846154*b92 + 0.594230769230769*b93 + 40.62*b94 + 20.31*b95 + 13.54*b96 + 10.155*b97 + 6.77*b98
     + 3.385*b99 + 2.34346153846154*b100 + 1.56230769230769*b101 + 0.781153846153846*b102 + 47.1*b103 + 23.55*b104
     + 15.7*b105 + 11.775*b106 + 7.85*b107 + 3.925*b108 + 2.71730769230769*b109 + 1.81153846153846*b110
     + 0.905769230769231*b111 + 59.7*b112 + 29.85*b113 + 19.9*b114 + 14.925*b115 + 9.95*b116 + 4.975*b117
     + 3.44423076923077*b118 + 2.29615384615385*b119 + 1.14807692307692*b120 + 85.8*b121 + 42.9*b122 + 28.6*b123
     + 21.45*b124 + 14.3*b125 + 7.15*b126 + 4.95*b127 + 3.3*b128 + 1.65*b129 + 104.4*b130 + 52.2*b131 + 34.8*b132
     + 26.1*b133 + 17.4*b134 + 8.7*b135 + 6.02307692307692*b136 + 4.01538461538462*b137 + 2.00769230769231*b138
     + 207.635*b139 + 103.8175*b140 + 69.2116666666667*b141 + 51.90875*b142 + 34.6058333333333*b143
     + 17.3029166666667*b144 + 11.9789423076923*b145 + 7.98596153846154*b146 + 3.99298076923077*b147 + 235.115*b148
     + 117.5575*b149 + 78.3716666666667*b150 + 58.77875*b151 + 39.1858333333333*b152 + 19.5929166666667*b153
     + 13.5643269230769*b154 + 9.04288461538462*b155 + 4.52144230769231*b156 + 606*b157 + 303*b158 + 202*b159
     + 151.5*b160 + 101*b161 + 50.5*b162 + 34.9615384615385*b163 + 23.3076923076923*b164 + 11.6538461538462*b165
     + 696.6*b166 + 348.3*b167 + 232.2*b168 + 174.15*b169 + 116.1*b170 + 58.05*b171 + 40.1884615384615*b172
     + 26.7923076923077*b173 + 13.3961538461538*b174 + 748.2*b175 + 374.1*b176 + 249.4*b177 + 187.05*b178 + 124.7*b179
     + 62.35*b180 + 43.1653846153846*b181 + 28.7769230769231*b182 + 14.3884615384615*b183 + 800*b184 + 400*b185
     + 266.666666666667*b186 + 200*b187 + 133.333333333333*b188 + 66.6666666666667*b189 + 46.1538461538462*b190
     + 30.7692307692308*b191 + 15.3846153846154*b192 + 851.2*b193 + 425.6*b194 + 283.733333333333*b195 + 212.8*b196
     + 141.866666666667*b197 + 70.9333333333333*b198 + 49.1076923076923*b199 + 32.7384615384615*b200
     + 16.3692307692308*b201 + 857.25*b202 + 428.625*b203 + 285.75*b204 + 214.3125*b205 + 142.875*b206 + 71.4375*b207
     + 49.4567307692308*b208 + 32.9711538461538*b209 + 16.4855769230769*b210 + 935.25*b211 + 467.625*b212 + 311.75*b213
     + 233.8125*b214 + 155.875*b215 + 77.9375*b216 + 53.9567307692308*b217 + 35.9711538461538*b218
     + 17.9855769230769*b219 + 988.9*b220 + 494.45*b221 + 329.633333333333*b222 + 247.225*b223 + 164.816666666667*b224
     + 82.4083333333333*b225 + 57.0519230769231*b226 + 38.0346153846154*b227 + 19.0173076923077*b228 + 1323.56*b229
     + 661.78*b230 + 441.186666666667*b231 + 330.89*b232 + 220.593333333333*b233 + 110.296666666667*b234
     + 76.3592307692308*b235 + 50.9061538461538*b236 + 25.4530769230769*b237 + 1571.91*b238 + 785.955*b239 + 523.97*b240
     + 392.9775*b241 + 261.985*b242 + 130.9925*b243 + 90.6871153846154*b244 + 60.4580769230769*b245
     + 30.2290384615385*b246 + 2086.5*b247 + 1043.25*b248 + 695.5*b249 + 521.625*b250 + 347.75*b251 + 173.875*b252
     + 120.375*b253 + 80.25*b254 + 40.125*b255 + 2173.89*b256 + 1086.945*b257 + 724.63*b258 + 543.4725*b259
     + 362.315*b260 + 181.1575*b261 + 125.416730769231*b262 + 83.6111538461538*b263 + 41.8055769230769*b264
     + 2458.5*b265 + 1229.25*b266 + 819.5*b267 + 614.625*b268 + 409.75*b269 + 204.875*b270 + 141.836538461538*b271
     + 94.5576923076923*b272 + 47.2788461538462*b273 + 2524.15*b274 + 1262.075*b275 + 841.383333333333*b276
     + 631.0375*b277 + 420.691666666667*b278 + 210.345833333333*b279 + 145.624038461538*b280 + 97.0826923076923*b281
     + 48.5413461538462*b282 + 2698.6*b283 + 1349.3*b284 + 899.533333333333*b285 + 674.65*b286 + 449.766666666667*b287
     + 224.883333333333*b288 + 155.688461538462*b289 + 103.792307692308*b290 + 51.8961538461538*b291 + 3346.2*b292
     + 1673.1*b293 + 1115.4*b294 + 836.55*b295 + 557.7*b296 + 278.85*b297 + 193.05*b298 + 128.7*b299 + 64.35*b300
     + 3418.8*b301 + 1709.4*b302 + 1139.6*b303 + 854.7*b304 + 569.8*b305 + 284.9*b306 + 197.238461538462*b307
     + 131.492307692308*b308 + 65.7461538461539*b309 + 4001.55*b310 + 2000.775*b311 + 1333.85*b312 + 1000.3875*b313
     + 666.925*b314 + 333.4625*b315 + 230.858653846154*b316 + 153.905769230769*b317 + 76.9528846153846*b318
     + 4224.75*b319 + 2112.375*b320 + 1408.25*b321 + 1056.1875*b322 + 704.125*b323 + 352.0625*b324
     + 243.735576923077*b325 + 162.490384615385*b326 + 81.2451923076923*b327 + 4576*b328 + 2288*b329
     + 1525.33333333333*b330 + 1144*b331 + 762.666666666667*b332 + 381.333333333333*b333 + 264*b334 + 176*b335 + 88*b336
     + 6618.15*b337 + 3309.075*b338 + 2206.05*b339 + 1654.5375*b340 + 1103.025*b341 + 551.5125*b342
     + 381.816346153846*b343 + 254.544230769231*b344 + 127.272115384615*b345 + 6985*b346 + 3492.5*b347
     + 2328.33333333333*b348 + 1746.25*b349 + 1164.16666666667*b350 + 582.083333333333*b351 + 402.980769230769*b352
     + 268.653846153846*b353 + 134.326923076923*b354 + 7663.8*b355 + 3831.9*b356 + 2554.6*b357 + 1915.95*b358
     + 1277.3*b359 + 638.65*b360 + 442.142307692308*b361 + 294.761538461538*b362 + 147.380769230769*b363 + 8184*b364
     + 4092*b365 + 2728*b366 + 2046*b367 + 1364*b368 + 682*b369 + 472.153846153846*b370 + 314.769230769231*b371
     + 157.384615384615*b372 + 9882.5*b373 + 4941.25*b374 + 3294.16666666667*b375 + 2470.625*b376
     + 1647.08333333333*b377 + 823.541666666667*b378 + 570.144230769231*b379 + 380.096153846154*b380
     + 190.048076923077*b381 + 10235.15*b382 + 5117.575*b383 + 3411.71666666667*b384 + 2558.7875*b385
     + 1705.85833333333*b386 + 852.929166666667*b387 + 590.489423076923*b388 + 393.659615384615*b389
     + 196.829807692308*b390 + 11591.1*b391 + 5795.55*b392 + 3863.7*b393 + 2897.775*b394 + 1931.85*b395 + 965.925*b396
     + 668.717307692308*b397 + 445.811538461538*b398 + 222.905769230769*b399 + 12513*b400 + 6256.5*b401 + 4171*b402
     + 3128.25*b403 + 2085.5*b404 + 1042.75*b405 + 721.903846153846*b406 + 481.269230769231*b407 + 240.634615384615*b408
     + 15837.8*b409 + 7918.9*b410 + 5279.26666666667*b411 + 3959.45*b412 + 2639.63333333333*b413 + 1319.81666666667*b414
     + 913.719230769231*b415 + 609.146153846154*b416 + 304.573076923077*b417 + 28367.1*b418 + 14183.55*b419
     + 9455.7*b420 + 7091.775*b421 + 4727.85*b422 + 2363.925*b423 + 1636.56346153846*b424 + 1091.04230769231*b425
     + 545.521153846154*b426 + 34520.2*b427 + 17260.1*b428 + 11506.7333333333*b429 + 8630.05*b430
     + 5753.36666666667*b431 + 2876.68333333333*b432 + 1991.55*b433 + 1327.7*b434 + 663.85*b435 + 37596*b436
     + 18798*b437 + 12532*b438 + 9399*b439 + 6266*b440 + 3133*b441 + 2169*b442 + 1446*b443 + 723*b444 + 48533.25*b445
     + 24266.625*b446 + 16177.75*b447 + 12133.3125*b448 + 8088.875*b449 + 4044.4375*b450 + 2799.99519230769*b451
     + 1866.66346153846*b452 + 933.331730769231*b453 + 49901.6*b454 + 24950.8*b455 + 16633.8666666667*b456
     + 12475.4*b457 + 8316.93333333333*b458 + 4158.46666666667*b459 + 2878.93846153846*b460 + 1919.29230769231*b461
     + 959.646153846154*b462 + 52992*b463 + 26496*b464 + 17664*b465 + 13248*b466 + 8832*b467 + 4416*b468
     + 3057.23076923077*b469 + 2038.15384615385*b470 + 1019.07692307692*b471 + 53232.5*b472 + 26616.25*b473
     + 17744.1666666667*b474 + 13308.125*b475 + 8872.08333333333*b476 + 4436.04166666667*b477 + 3071.10576923077*b478
     + 2047.40384615385*b479 + 1023.70192307692*b480)

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19
     + x20 + x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
     + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 <= 300)

@constraint(m,  - x1 + 3*b49 + 6*b50 + 9*b51 + 12*b52 + 18*b53 + 36*b54 + 52*b55 + 78*b56 + 156*b57 == 0)

@constraint(m,  - x2 + 3*b58 + 6*b59 + 9*b60 + 12*b61 + 18*b62 + 36*b63 + 52*b64 + 78*b65 + 156*b66 == 0)

@constraint(m,  - x3 + 3*b67 + 6*b68 + 9*b69 + 12*b70 + 18*b71 + 36*b72 + 52*b73 + 78*b74 + 156*b75 == 0)

@constraint(m,  - x4 + 3*b76 + 6*b77 + 9*b78 + 12*b79 + 18*b80 + 36*b81 + 52*b82 + 78*b83 + 156*b84 == 0)

@constraint(m,  - x5 + 3*b85 + 6*b86 + 9*b87 + 12*b88 + 18*b89 + 36*b90 + 52*b91 + 78*b92 + 156*b93 == 0)

@constraint(m,  - x6 + 3*b94 + 6*b95 + 9*b96 + 12*b97 + 18*b98 + 36*b99 + 52*b100 + 78*b101 + 156*b102 == 0)

@constraint(m,  - x7 + 3*b103 + 6*b104 + 9*b105 + 12*b106 + 18*b107 + 36*b108 + 52*b109 + 78*b110 + 156*b111 == 0)

@constraint(m,  - x8 + 3*b112 + 6*b113 + 9*b114 + 12*b115 + 18*b116 + 36*b117 + 52*b118 + 78*b119 + 156*b120 == 0)

@constraint(m,  - x9 + 3*b121 + 6*b122 + 9*b123 + 12*b124 + 18*b125 + 36*b126 + 52*b127 + 78*b128 + 156*b129 == 0)

@constraint(m,  - x10 + 3*b130 + 6*b131 + 9*b132 + 12*b133 + 18*b134 + 36*b135 + 52*b136 + 78*b137 + 156*b138 == 0)

@constraint(m,  - x11 + 3*b139 + 6*b140 + 9*b141 + 12*b142 + 18*b143 + 36*b144 + 52*b145 + 78*b146 + 156*b147 == 0)

@constraint(m,  - x12 + 3*b148 + 6*b149 + 9*b150 + 12*b151 + 18*b152 + 36*b153 + 52*b154 + 78*b155 + 156*b156 == 0)

@constraint(m,  - x13 + 3*b157 + 6*b158 + 9*b159 + 12*b160 + 18*b161 + 36*b162 + 52*b163 + 78*b164 + 156*b165 == 0)

@constraint(m,  - x14 + 3*b166 + 6*b167 + 9*b168 + 12*b169 + 18*b170 + 36*b171 + 52*b172 + 78*b173 + 156*b174 == 0)

@constraint(m,  - x15 + 3*b175 + 6*b176 + 9*b177 + 12*b178 + 18*b179 + 36*b180 + 52*b181 + 78*b182 + 156*b183 == 0)

@constraint(m,  - x16 + 3*b184 + 6*b185 + 9*b186 + 12*b187 + 18*b188 + 36*b189 + 52*b190 + 78*b191 + 156*b192 == 0)

@constraint(m,  - x17 + 3*b193 + 6*b194 + 9*b195 + 12*b196 + 18*b197 + 36*b198 + 52*b199 + 78*b200 + 156*b201 == 0)

@constraint(m,  - x18 + 3*b202 + 6*b203 + 9*b204 + 12*b205 + 18*b206 + 36*b207 + 52*b208 + 78*b209 + 156*b210 == 0)

@constraint(m,  - x19 + 3*b211 + 6*b212 + 9*b213 + 12*b214 + 18*b215 + 36*b216 + 52*b217 + 78*b218 + 156*b219 == 0)

@constraint(m,  - x20 + 3*b220 + 6*b221 + 9*b222 + 12*b223 + 18*b224 + 36*b225 + 52*b226 + 78*b227 + 156*b228 == 0)

@constraint(m,  - x21 + 3*b229 + 6*b230 + 9*b231 + 12*b232 + 18*b233 + 36*b234 + 52*b235 + 78*b236 + 156*b237 == 0)

@constraint(m,  - x22 + 3*b238 + 6*b239 + 9*b240 + 12*b241 + 18*b242 + 36*b243 + 52*b244 + 78*b245 + 156*b246 == 0)

@constraint(m,  - x23 + 3*b247 + 6*b248 + 9*b249 + 12*b250 + 18*b251 + 36*b252 + 52*b253 + 78*b254 + 156*b255 == 0)

@constraint(m,  - x24 + 3*b256 + 6*b257 + 9*b258 + 12*b259 + 18*b260 + 36*b261 + 52*b262 + 78*b263 + 156*b264 == 0)

@constraint(m,  - x25 + 3*b265 + 6*b266 + 9*b267 + 12*b268 + 18*b269 + 36*b270 + 52*b271 + 78*b272 + 156*b273 == 0)

@constraint(m,  - x26 + 3*b274 + 6*b275 + 9*b276 + 12*b277 + 18*b278 + 36*b279 + 52*b280 + 78*b281 + 156*b282 == 0)

@constraint(m,  - x27 + 3*b283 + 6*b284 + 9*b285 + 12*b286 + 18*b287 + 36*b288 + 52*b289 + 78*b290 + 156*b291 == 0)

@constraint(m,  - x28 + 3*b292 + 6*b293 + 9*b294 + 12*b295 + 18*b296 + 36*b297 + 52*b298 + 78*b299 + 156*b300 == 0)

@constraint(m,  - x29 + 3*b301 + 6*b302 + 9*b303 + 12*b304 + 18*b305 + 36*b306 + 52*b307 + 78*b308 + 156*b309 == 0)

@constraint(m,  - x30 + 3*b310 + 6*b311 + 9*b312 + 12*b313 + 18*b314 + 36*b315 + 52*b316 + 78*b317 + 156*b318 == 0)

@constraint(m,  - x31 + 3*b319 + 6*b320 + 9*b321 + 12*b322 + 18*b323 + 36*b324 + 52*b325 + 78*b326 + 156*b327 == 0)

@constraint(m,  - x32 + 3*b328 + 6*b329 + 9*b330 + 12*b331 + 18*b332 + 36*b333 + 52*b334 + 78*b335 + 156*b336 == 0)

@constraint(m,  - x33 + 3*b337 + 6*b338 + 9*b339 + 12*b340 + 18*b341 + 36*b342 + 52*b343 + 78*b344 + 156*b345 == 0)

@constraint(m,  - x34 + 3*b346 + 6*b347 + 9*b348 + 12*b349 + 18*b350 + 36*b351 + 52*b352 + 78*b353 + 156*b354 == 0)

@constraint(m,  - x35 + 3*b355 + 6*b356 + 9*b357 + 12*b358 + 18*b359 + 36*b360 + 52*b361 + 78*b362 + 156*b363 == 0)

@constraint(m,  - x36 + 3*b364 + 6*b365 + 9*b366 + 12*b367 + 18*b368 + 36*b369 + 52*b370 + 78*b371 + 156*b372 == 0)

@constraint(m,  - x37 + 3*b373 + 6*b374 + 9*b375 + 12*b376 + 18*b377 + 36*b378 + 52*b379 + 78*b380 + 156*b381 == 0)

@constraint(m,  - x38 + 3*b382 + 6*b383 + 9*b384 + 12*b385 + 18*b386 + 36*b387 + 52*b388 + 78*b389 + 156*b390 == 0)

@constraint(m,  - x39 + 3*b391 + 6*b392 + 9*b393 + 12*b394 + 18*b395 + 36*b396 + 52*b397 + 78*b398 + 156*b399 == 0)

@constraint(m,  - x40 + 3*b400 + 6*b401 + 9*b402 + 12*b403 + 18*b404 + 36*b405 + 52*b406 + 78*b407 + 156*b408 == 0)

@constraint(m,  - x41 + 3*b409 + 6*b410 + 9*b411 + 12*b412 + 18*b413 + 36*b414 + 52*b415 + 78*b416 + 156*b417 == 0)

@constraint(m,  - x42 + 3*b418 + 6*b419 + 9*b420 + 12*b421 + 18*b422 + 36*b423 + 52*b424 + 78*b425 + 156*b426 == 0)

@constraint(m,  - x43 + 3*b427 + 6*b428 + 9*b429 + 12*b430 + 18*b431 + 36*b432 + 52*b433 + 78*b434 + 156*b435 == 0)

@constraint(m,  - x44 + 3*b436 + 6*b437 + 9*b438 + 12*b439 + 18*b440 + 36*b441 + 52*b442 + 78*b443 + 156*b444 == 0)

@constraint(m,  - x45 + 3*b445 + 6*b446 + 9*b447 + 12*b448 + 18*b449 + 36*b450 + 52*b451 + 78*b452 + 156*b453 == 0)

@constraint(m,  - x46 + 3*b454 + 6*b455 + 9*b456 + 12*b457 + 18*b458 + 36*b459 + 52*b460 + 78*b461 + 156*b462 == 0)

@constraint(m,  - x47 + 3*b463 + 6*b464 + 9*b465 + 12*b466 + 18*b467 + 36*b468 + 52*b469 + 78*b470 + 156*b471 == 0)

@constraint(m,  - x48 + 3*b472 + 6*b473 + 9*b474 + 12*b475 + 18*b476 + 36*b477 + 52*b478 + 78*b479 + 156*b480 == 0)

@constraint(m, b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 + b57 == 1)

@constraint(m, b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 == 1)

@constraint(m, b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 + b75 == 1)

@constraint(m, b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84 == 1)

@constraint(m, b85 + b86 + b87 + b88 + b89 + b90 + b91 + b92 + b93 == 1)

@constraint(m, b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102 == 1)

@constraint(m, b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110 + b111 == 1)

@constraint(m, b112 + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 == 1)

@constraint(m, b121 + b122 + b123 + b124 + b125 + b126 + b127 + b128 + b129 == 1)

@constraint(m, b130 + b131 + b132 + b133 + b134 + b135 + b136 + b137 + b138 == 1)

@constraint(m, b139 + b140 + b141 + b142 + b143 + b144 + b145 + b146 + b147 == 1)

@constraint(m, b148 + b149 + b150 + b151 + b152 + b153 + b154 + b155 + b156 == 1)

@constraint(m, b157 + b158 + b159 + b160 + b161 + b162 + b163 + b164 + b165 == 1)

@constraint(m, b166 + b167 + b168 + b169 + b170 + b171 + b172 + b173 + b174 == 1)

@constraint(m, b175 + b176 + b177 + b178 + b179 + b180 + b181 + b182 + b183 == 1)

@constraint(m, b184 + b185 + b186 + b187 + b188 + b189 + b190 + b191 + b192 == 1)

@constraint(m, b193 + b194 + b195 + b196 + b197 + b198 + b199 + b200 + b201 == 1)

@constraint(m, b202 + b203 + b204 + b205 + b206 + b207 + b208 + b209 + b210 == 1)

@constraint(m, b211 + b212 + b213 + b214 + b215 + b216 + b217 + b218 + b219 == 1)

@constraint(m, b220 + b221 + b222 + b223 + b224 + b225 + b226 + b227 + b228 == 1)

@constraint(m, b229 + b230 + b231 + b232 + b233 + b234 + b235 + b236 + b237 == 1)

@constraint(m, b238 + b239 + b240 + b241 + b242 + b243 + b244 + b245 + b246 == 1)

@constraint(m, b247 + b248 + b249 + b250 + b251 + b252 + b253 + b254 + b255 == 1)

@constraint(m, b256 + b257 + b258 + b259 + b260 + b261 + b262 + b263 + b264 == 1)

@constraint(m, b265 + b266 + b267 + b268 + b269 + b270 + b271 + b272 + b273 == 1)

@constraint(m, b274 + b275 + b276 + b277 + b278 + b279 + b280 + b281 + b282 == 1)

@constraint(m, b283 + b284 + b285 + b286 + b287 + b288 + b289 + b290 + b291 == 1)

@constraint(m, b292 + b293 + b294 + b295 + b296 + b297 + b298 + b299 + b300 == 1)

@constraint(m, b301 + b302 + b303 + b304 + b305 + b306 + b307 + b308 + b309 == 1)

@constraint(m, b310 + b311 + b312 + b313 + b314 + b315 + b316 + b317 + b318 == 1)

@constraint(m, b319 + b320 + b321 + b322 + b323 + b324 + b325 + b326 + b327 == 1)

@constraint(m, b328 + b329 + b330 + b331 + b332 + b333 + b334 + b335 + b336 == 1)

@constraint(m, b337 + b338 + b339 + b340 + b341 + b342 + b343 + b344 + b345 == 1)

@constraint(m, b346 + b347 + b348 + b349 + b350 + b351 + b352 + b353 + b354 == 1)

@constraint(m, b355 + b356 + b357 + b358 + b359 + b360 + b361 + b362 + b363 == 1)

@constraint(m, b364 + b365 + b366 + b367 + b368 + b369 + b370 + b371 + b372 == 1)

@constraint(m, b373 + b374 + b375 + b376 + b377 + b378 + b379 + b380 + b381 == 1)

@constraint(m, b382 + b383 + b384 + b385 + b386 + b387 + b388 + b389 + b390 == 1)

@constraint(m, b391 + b392 + b393 + b394 + b395 + b396 + b397 + b398 + b399 == 1)

@constraint(m, b400 + b401 + b402 + b403 + b404 + b405 + b406 + b407 + b408 == 1)

@constraint(m, b409 + b410 + b411 + b412 + b413 + b414 + b415 + b416 + b417 == 1)

@constraint(m, b418 + b419 + b420 + b421 + b422 + b423 + b424 + b425 + b426 == 1)

@constraint(m, b427 + b428 + b429 + b430 + b431 + b432 + b433 + b434 + b435 == 1)

@constraint(m, b436 + b437 + b438 + b439 + b440 + b441 + b442 + b443 + b444 == 1)

@constraint(m, b445 + b446 + b447 + b448 + b449 + b450 + b451 + b452 + b453 == 1)

@constraint(m, b454 + b455 + b456 + b457 + b458 + b459 + b460 + b461 + b462 == 1)

@constraint(m, b463 + b464 + b465 + b466 + b467 + b468 + b469 + b470 + b471 == 1)

@constraint(m, b472 + b473 + b474 + b475 + b476 + b477 + b478 + b479 + b480 == 1)
