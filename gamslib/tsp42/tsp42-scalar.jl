#  MIP written by GAMS Convert at 10/11/20 12:42:46
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         43       43        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        862        1      861        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       2584     2584        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 0 <= b22 <= 1, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 0 <= b31 <= 1, binary=true, start=0)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 0 <= b33 <= 1, binary=true, start=0)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)
@variable(m, 0 <= b35 <= 1, binary=true, start=0)
@variable(m, 0 <= b36 <= 1, binary=true, start=0)
@variable(m, 0 <= b37 <= 1, binary=true, start=0)
@variable(m, 0 <= b38 <= 1, binary=true, start=0)
@variable(m, 0 <= b39 <= 1, binary=true, start=0)
@variable(m, 0 <= b40 <= 1, binary=true, start=0)
@variable(m, 0 <= b41 <= 1, binary=true, start=0)
@variable(m, 0 <= b42 <= 1, binary=true, start=0)
@variable(m, 0 <= b43 <= 1, binary=true, start=0)
@variable(m, 0 <= b44 <= 1, binary=true, start=0)
@variable(m, 0 <= b45 <= 1, binary=true, start=0)
@variable(m, 0 <= b46 <= 1, binary=true, start=0)
@variable(m, 0 <= b47 <= 1, binary=true, start=0)
@variable(m, 0 <= b48 <= 1, binary=true, start=0)
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
@variable(m, 0 <= b481 <= 1, binary=true, start=0)
@variable(m, 0 <= b482 <= 1, binary=true, start=0)
@variable(m, 0 <= b483 <= 1, binary=true, start=0)
@variable(m, 0 <= b484 <= 1, binary=true, start=0)
@variable(m, 0 <= b485 <= 1, binary=true, start=0)
@variable(m, 0 <= b486 <= 1, binary=true, start=0)
@variable(m, 0 <= b487 <= 1, binary=true, start=0)
@variable(m, 0 <= b488 <= 1, binary=true, start=0)
@variable(m, 0 <= b489 <= 1, binary=true, start=0)
@variable(m, 0 <= b490 <= 1, binary=true, start=0)
@variable(m, 0 <= b491 <= 1, binary=true, start=0)
@variable(m, 0 <= b492 <= 1, binary=true, start=0)
@variable(m, 0 <= b493 <= 1, binary=true, start=0)
@variable(m, 0 <= b494 <= 1, binary=true, start=0)
@variable(m, 0 <= b495 <= 1, binary=true, start=0)
@variable(m, 0 <= b496 <= 1, binary=true, start=0)
@variable(m, 0 <= b497 <= 1, binary=true, start=0)
@variable(m, 0 <= b498 <= 1, binary=true, start=0)
@variable(m, 0 <= b499 <= 1, binary=true, start=0)
@variable(m, 0 <= b500 <= 1, binary=true, start=0)
@variable(m, 0 <= b501 <= 1, binary=true, start=0)
@variable(m, 0 <= b502 <= 1, binary=true, start=0)
@variable(m, 0 <= b503 <= 1, binary=true, start=0)
@variable(m, 0 <= b504 <= 1, binary=true, start=0)
@variable(m, 0 <= b505 <= 1, binary=true, start=0)
@variable(m, 0 <= b506 <= 1, binary=true, start=0)
@variable(m, 0 <= b507 <= 1, binary=true, start=0)
@variable(m, 0 <= b508 <= 1, binary=true, start=0)
@variable(m, 0 <= b509 <= 1, binary=true, start=0)
@variable(m, 0 <= b510 <= 1, binary=true, start=0)
@variable(m, 0 <= b511 <= 1, binary=true, start=0)
@variable(m, 0 <= b512 <= 1, binary=true, start=0)
@variable(m, 0 <= b513 <= 1, binary=true, start=0)
@variable(m, 0 <= b514 <= 1, binary=true, start=0)
@variable(m, 0 <= b515 <= 1, binary=true, start=0)
@variable(m, 0 <= b516 <= 1, binary=true, start=0)
@variable(m, 0 <= b517 <= 1, binary=true, start=0)
@variable(m, 0 <= b518 <= 1, binary=true, start=0)
@variable(m, 0 <= b519 <= 1, binary=true, start=0)
@variable(m, 0 <= b520 <= 1, binary=true, start=0)
@variable(m, 0 <= b521 <= 1, binary=true, start=0)
@variable(m, 0 <= b522 <= 1, binary=true, start=0)
@variable(m, 0 <= b523 <= 1, binary=true, start=0)
@variable(m, 0 <= b524 <= 1, binary=true, start=0)
@variable(m, 0 <= b525 <= 1, binary=true, start=0)
@variable(m, 0 <= b526 <= 1, binary=true, start=0)
@variable(m, 0 <= b527 <= 1, binary=true, start=0)
@variable(m, 0 <= b528 <= 1, binary=true, start=0)
@variable(m, 0 <= b529 <= 1, binary=true, start=0)
@variable(m, 0 <= b530 <= 1, binary=true, start=0)
@variable(m, 0 <= b531 <= 1, binary=true, start=0)
@variable(m, 0 <= b532 <= 1, binary=true, start=0)
@variable(m, 0 <= b533 <= 1, binary=true, start=0)
@variable(m, 0 <= b534 <= 1, binary=true, start=0)
@variable(m, 0 <= b535 <= 1, binary=true, start=0)
@variable(m, 0 <= b536 <= 1, binary=true, start=0)
@variable(m, 0 <= b537 <= 1, binary=true, start=0)
@variable(m, 0 <= b538 <= 1, binary=true, start=0)
@variable(m, 0 <= b539 <= 1, binary=true, start=0)
@variable(m, 0 <= b540 <= 1, binary=true, start=0)
@variable(m, 0 <= b541 <= 1, binary=true, start=0)
@variable(m, 0 <= b542 <= 1, binary=true, start=0)
@variable(m, 0 <= b543 <= 1, binary=true, start=0)
@variable(m, 0 <= b544 <= 1, binary=true, start=0)
@variable(m, 0 <= b545 <= 1, binary=true, start=0)
@variable(m, 0 <= b546 <= 1, binary=true, start=0)
@variable(m, 0 <= b547 <= 1, binary=true, start=0)
@variable(m, 0 <= b548 <= 1, binary=true, start=0)
@variable(m, 0 <= b549 <= 1, binary=true, start=0)
@variable(m, 0 <= b550 <= 1, binary=true, start=0)
@variable(m, 0 <= b551 <= 1, binary=true, start=0)
@variable(m, 0 <= b552 <= 1, binary=true, start=0)
@variable(m, 0 <= b553 <= 1, binary=true, start=0)
@variable(m, 0 <= b554 <= 1, binary=true, start=0)
@variable(m, 0 <= b555 <= 1, binary=true, start=0)
@variable(m, 0 <= b556 <= 1, binary=true, start=0)
@variable(m, 0 <= b557 <= 1, binary=true, start=0)
@variable(m, 0 <= b558 <= 1, binary=true, start=0)
@variable(m, 0 <= b559 <= 1, binary=true, start=0)
@variable(m, 0 <= b560 <= 1, binary=true, start=0)
@variable(m, 0 <= b561 <= 1, binary=true, start=0)
@variable(m, 0 <= b562 <= 1, binary=true, start=0)
@variable(m, 0 <= b563 <= 1, binary=true, start=0)
@variable(m, 0 <= b564 <= 1, binary=true, start=0)
@variable(m, 0 <= b565 <= 1, binary=true, start=0)
@variable(m, 0 <= b566 <= 1, binary=true, start=0)
@variable(m, 0 <= b567 <= 1, binary=true, start=0)
@variable(m, 0 <= b568 <= 1, binary=true, start=0)
@variable(m, 0 <= b569 <= 1, binary=true, start=0)
@variable(m, 0 <= b570 <= 1, binary=true, start=0)
@variable(m, 0 <= b571 <= 1, binary=true, start=0)
@variable(m, 0 <= b572 <= 1, binary=true, start=0)
@variable(m, 0 <= b573 <= 1, binary=true, start=0)
@variable(m, 0 <= b574 <= 1, binary=true, start=0)
@variable(m, 0 <= b575 <= 1, binary=true, start=0)
@variable(m, 0 <= b576 <= 1, binary=true, start=0)
@variable(m, 0 <= b577 <= 1, binary=true, start=0)
@variable(m, 0 <= b578 <= 1, binary=true, start=0)
@variable(m, 0 <= b579 <= 1, binary=true, start=0)
@variable(m, 0 <= b580 <= 1, binary=true, start=0)
@variable(m, 0 <= b581 <= 1, binary=true, start=0)
@variable(m, 0 <= b582 <= 1, binary=true, start=0)
@variable(m, 0 <= b583 <= 1, binary=true, start=0)
@variable(m, 0 <= b584 <= 1, binary=true, start=0)
@variable(m, 0 <= b585 <= 1, binary=true, start=0)
@variable(m, 0 <= b586 <= 1, binary=true, start=0)
@variable(m, 0 <= b587 <= 1, binary=true, start=0)
@variable(m, 0 <= b588 <= 1, binary=true, start=0)
@variable(m, 0 <= b589 <= 1, binary=true, start=0)
@variable(m, 0 <= b590 <= 1, binary=true, start=0)
@variable(m, 0 <= b591 <= 1, binary=true, start=0)
@variable(m, 0 <= b592 <= 1, binary=true, start=0)
@variable(m, 0 <= b593 <= 1, binary=true, start=0)
@variable(m, 0 <= b594 <= 1, binary=true, start=0)
@variable(m, 0 <= b595 <= 1, binary=true, start=0)
@variable(m, 0 <= b596 <= 1, binary=true, start=0)
@variable(m, 0 <= b597 <= 1, binary=true, start=0)
@variable(m, 0 <= b598 <= 1, binary=true, start=0)
@variable(m, 0 <= b599 <= 1, binary=true, start=0)
@variable(m, 0 <= b600 <= 1, binary=true, start=0)
@variable(m, 0 <= b601 <= 1, binary=true, start=0)
@variable(m, 0 <= b602 <= 1, binary=true, start=0)
@variable(m, 0 <= b603 <= 1, binary=true, start=0)
@variable(m, 0 <= b604 <= 1, binary=true, start=0)
@variable(m, 0 <= b605 <= 1, binary=true, start=0)
@variable(m, 0 <= b606 <= 1, binary=true, start=0)
@variable(m, 0 <= b607 <= 1, binary=true, start=0)
@variable(m, 0 <= b608 <= 1, binary=true, start=0)
@variable(m, 0 <= b609 <= 1, binary=true, start=0)
@variable(m, 0 <= b610 <= 1, binary=true, start=0)
@variable(m, 0 <= b611 <= 1, binary=true, start=0)
@variable(m, 0 <= b612 <= 1, binary=true, start=0)
@variable(m, 0 <= b613 <= 1, binary=true, start=0)
@variable(m, 0 <= b614 <= 1, binary=true, start=0)
@variable(m, 0 <= b615 <= 1, binary=true, start=0)
@variable(m, 0 <= b616 <= 1, binary=true, start=0)
@variable(m, 0 <= b617 <= 1, binary=true, start=0)
@variable(m, 0 <= b618 <= 1, binary=true, start=0)
@variable(m, 0 <= b619 <= 1, binary=true, start=0)
@variable(m, 0 <= b620 <= 1, binary=true, start=0)
@variable(m, 0 <= b621 <= 1, binary=true, start=0)
@variable(m, 0 <= b622 <= 1, binary=true, start=0)
@variable(m, 0 <= b623 <= 1, binary=true, start=0)
@variable(m, 0 <= b624 <= 1, binary=true, start=0)
@variable(m, 0 <= b625 <= 1, binary=true, start=0)
@variable(m, 0 <= b626 <= 1, binary=true, start=0)
@variable(m, 0 <= b627 <= 1, binary=true, start=0)
@variable(m, 0 <= b628 <= 1, binary=true, start=0)
@variable(m, 0 <= b629 <= 1, binary=true, start=0)
@variable(m, 0 <= b630 <= 1, binary=true, start=0)
@variable(m, 0 <= b631 <= 1, binary=true, start=0)
@variable(m, 0 <= b632 <= 1, binary=true, start=0)
@variable(m, 0 <= b633 <= 1, binary=true, start=0)
@variable(m, 0 <= b634 <= 1, binary=true, start=0)
@variable(m, 0 <= b635 <= 1, binary=true, start=0)
@variable(m, 0 <= b636 <= 1, binary=true, start=0)
@variable(m, 0 <= b637 <= 1, binary=true, start=0)
@variable(m, 0 <= b638 <= 1, binary=true, start=0)
@variable(m, 0 <= b639 <= 1, binary=true, start=0)
@variable(m, 0 <= b640 <= 1, binary=true, start=0)
@variable(m, 0 <= b641 <= 1, binary=true, start=0)
@variable(m, 0 <= b642 <= 1, binary=true, start=0)
@variable(m, 0 <= b643 <= 1, binary=true, start=0)
@variable(m, 0 <= b644 <= 1, binary=true, start=0)
@variable(m, 0 <= b645 <= 1, binary=true, start=0)
@variable(m, 0 <= b646 <= 1, binary=true, start=0)
@variable(m, 0 <= b647 <= 1, binary=true, start=0)
@variable(m, 0 <= b648 <= 1, binary=true, start=0)
@variable(m, 0 <= b649 <= 1, binary=true, start=0)
@variable(m, 0 <= b650 <= 1, binary=true, start=0)
@variable(m, 0 <= b651 <= 1, binary=true, start=0)
@variable(m, 0 <= b652 <= 1, binary=true, start=0)
@variable(m, 0 <= b653 <= 1, binary=true, start=0)
@variable(m, 0 <= b654 <= 1, binary=true, start=0)
@variable(m, 0 <= b655 <= 1, binary=true, start=0)
@variable(m, 0 <= b656 <= 1, binary=true, start=0)
@variable(m, 0 <= b657 <= 1, binary=true, start=0)
@variable(m, 0 <= b658 <= 1, binary=true, start=0)
@variable(m, 0 <= b659 <= 1, binary=true, start=0)
@variable(m, 0 <= b660 <= 1, binary=true, start=0)
@variable(m, 0 <= b661 <= 1, binary=true, start=0)
@variable(m, 0 <= b662 <= 1, binary=true, start=0)
@variable(m, 0 <= b663 <= 1, binary=true, start=0)
@variable(m, 0 <= b664 <= 1, binary=true, start=0)
@variable(m, 0 <= b665 <= 1, binary=true, start=0)
@variable(m, 0 <= b666 <= 1, binary=true, start=0)
@variable(m, 0 <= b667 <= 1, binary=true, start=0)
@variable(m, 0 <= b668 <= 1, binary=true, start=0)
@variable(m, 0 <= b669 <= 1, binary=true, start=0)
@variable(m, 0 <= b670 <= 1, binary=true, start=0)
@variable(m, 0 <= b671 <= 1, binary=true, start=0)
@variable(m, 0 <= b672 <= 1, binary=true, start=0)
@variable(m, 0 <= b673 <= 1, binary=true, start=0)
@variable(m, 0 <= b674 <= 1, binary=true, start=0)
@variable(m, 0 <= b675 <= 1, binary=true, start=0)
@variable(m, 0 <= b676 <= 1, binary=true, start=0)
@variable(m, 0 <= b677 <= 1, binary=true, start=0)
@variable(m, 0 <= b678 <= 1, binary=true, start=0)
@variable(m, 0 <= b679 <= 1, binary=true, start=0)
@variable(m, 0 <= b680 <= 1, binary=true, start=0)
@variable(m, 0 <= b681 <= 1, binary=true, start=0)
@variable(m, 0 <= b682 <= 1, binary=true, start=0)
@variable(m, 0 <= b683 <= 1, binary=true, start=0)
@variable(m, 0 <= b684 <= 1, binary=true, start=0)
@variable(m, 0 <= b685 <= 1, binary=true, start=0)
@variable(m, 0 <= b686 <= 1, binary=true, start=0)
@variable(m, 0 <= b687 <= 1, binary=true, start=0)
@variable(m, 0 <= b688 <= 1, binary=true, start=0)
@variable(m, 0 <= b689 <= 1, binary=true, start=0)
@variable(m, 0 <= b690 <= 1, binary=true, start=0)
@variable(m, 0 <= b691 <= 1, binary=true, start=0)
@variable(m, 0 <= b692 <= 1, binary=true, start=0)
@variable(m, 0 <= b693 <= 1, binary=true, start=0)
@variable(m, 0 <= b694 <= 1, binary=true, start=0)
@variable(m, 0 <= b695 <= 1, binary=true, start=0)
@variable(m, 0 <= b696 <= 1, binary=true, start=0)
@variable(m, 0 <= b697 <= 1, binary=true, start=0)
@variable(m, 0 <= b698 <= 1, binary=true, start=0)
@variable(m, 0 <= b699 <= 1, binary=true, start=0)
@variable(m, 0 <= b700 <= 1, binary=true, start=0)
@variable(m, 0 <= b701 <= 1, binary=true, start=0)
@variable(m, 0 <= b702 <= 1, binary=true, start=0)
@variable(m, 0 <= b703 <= 1, binary=true, start=0)
@variable(m, 0 <= b704 <= 1, binary=true, start=0)
@variable(m, 0 <= b705 <= 1, binary=true, start=0)
@variable(m, 0 <= b706 <= 1, binary=true, start=0)
@variable(m, 0 <= b707 <= 1, binary=true, start=0)
@variable(m, 0 <= b708 <= 1, binary=true, start=0)
@variable(m, 0 <= b709 <= 1, binary=true, start=0)
@variable(m, 0 <= b710 <= 1, binary=true, start=0)
@variable(m, 0 <= b711 <= 1, binary=true, start=0)
@variable(m, 0 <= b712 <= 1, binary=true, start=0)
@variable(m, 0 <= b713 <= 1, binary=true, start=0)
@variable(m, 0 <= b714 <= 1, binary=true, start=0)
@variable(m, 0 <= b715 <= 1, binary=true, start=0)
@variable(m, 0 <= b716 <= 1, binary=true, start=0)
@variable(m, 0 <= b717 <= 1, binary=true, start=0)
@variable(m, 0 <= b718 <= 1, binary=true, start=0)
@variable(m, 0 <= b719 <= 1, binary=true, start=0)
@variable(m, 0 <= b720 <= 1, binary=true, start=0)
@variable(m, 0 <= b721 <= 1, binary=true, start=0)
@variable(m, 0 <= b722 <= 1, binary=true, start=0)
@variable(m, 0 <= b723 <= 1, binary=true, start=0)
@variable(m, 0 <= b724 <= 1, binary=true, start=0)
@variable(m, 0 <= b725 <= 1, binary=true, start=0)
@variable(m, 0 <= b726 <= 1, binary=true, start=0)
@variable(m, 0 <= b727 <= 1, binary=true, start=0)
@variable(m, 0 <= b728 <= 1, binary=true, start=0)
@variable(m, 0 <= b729 <= 1, binary=true, start=0)
@variable(m, 0 <= b730 <= 1, binary=true, start=0)
@variable(m, 0 <= b731 <= 1, binary=true, start=0)
@variable(m, 0 <= b732 <= 1, binary=true, start=0)
@variable(m, 0 <= b733 <= 1, binary=true, start=0)
@variable(m, 0 <= b734 <= 1, binary=true, start=0)
@variable(m, 0 <= b735 <= 1, binary=true, start=0)
@variable(m, 0 <= b736 <= 1, binary=true, start=0)
@variable(m, 0 <= b737 <= 1, binary=true, start=0)
@variable(m, 0 <= b738 <= 1, binary=true, start=0)
@variable(m, 0 <= b739 <= 1, binary=true, start=0)
@variable(m, 0 <= b740 <= 1, binary=true, start=0)
@variable(m, 0 <= b741 <= 1, binary=true, start=0)
@variable(m, 0 <= b742 <= 1, binary=true, start=0)
@variable(m, 0 <= b743 <= 1, binary=true, start=0)
@variable(m, 0 <= b744 <= 1, binary=true, start=0)
@variable(m, 0 <= b745 <= 1, binary=true, start=0)
@variable(m, 0 <= b746 <= 1, binary=true, start=0)
@variable(m, 0 <= b747 <= 1, binary=true, start=0)
@variable(m, 0 <= b748 <= 1, binary=true, start=0)
@variable(m, 0 <= b749 <= 1, binary=true, start=0)
@variable(m, 0 <= b750 <= 1, binary=true, start=0)
@variable(m, 0 <= b751 <= 1, binary=true, start=0)
@variable(m, 0 <= b752 <= 1, binary=true, start=0)
@variable(m, 0 <= b753 <= 1, binary=true, start=0)
@variable(m, 0 <= b754 <= 1, binary=true, start=0)
@variable(m, 0 <= b755 <= 1, binary=true, start=0)
@variable(m, 0 <= b756 <= 1, binary=true, start=0)
@variable(m, 0 <= b757 <= 1, binary=true, start=0)
@variable(m, 0 <= b758 <= 1, binary=true, start=0)
@variable(m, 0 <= b759 <= 1, binary=true, start=0)
@variable(m, 0 <= b760 <= 1, binary=true, start=0)
@variable(m, 0 <= b761 <= 1, binary=true, start=0)
@variable(m, 0 <= b762 <= 1, binary=true, start=0)
@variable(m, 0 <= b763 <= 1, binary=true, start=0)
@variable(m, 0 <= b764 <= 1, binary=true, start=0)
@variable(m, 0 <= b765 <= 1, binary=true, start=0)
@variable(m, 0 <= b766 <= 1, binary=true, start=0)
@variable(m, 0 <= b767 <= 1, binary=true, start=0)
@variable(m, 0 <= b768 <= 1, binary=true, start=0)
@variable(m, 0 <= b769 <= 1, binary=true, start=0)
@variable(m, 0 <= b770 <= 1, binary=true, start=0)
@variable(m, 0 <= b771 <= 1, binary=true, start=0)
@variable(m, 0 <= b772 <= 1, binary=true, start=0)
@variable(m, 0 <= b773 <= 1, binary=true, start=0)
@variable(m, 0 <= b774 <= 1, binary=true, start=0)
@variable(m, 0 <= b775 <= 1, binary=true, start=0)
@variable(m, 0 <= b776 <= 1, binary=true, start=0)
@variable(m, 0 <= b777 <= 1, binary=true, start=0)
@variable(m, 0 <= b778 <= 1, binary=true, start=0)
@variable(m, 0 <= b779 <= 1, binary=true, start=0)
@variable(m, 0 <= b780 <= 1, binary=true, start=0)
@variable(m, 0 <= b781 <= 1, binary=true, start=0)
@variable(m, 0 <= b782 <= 1, binary=true, start=0)
@variable(m, 0 <= b783 <= 1, binary=true, start=0)
@variable(m, 0 <= b784 <= 1, binary=true, start=0)
@variable(m, 0 <= b785 <= 1, binary=true, start=0)
@variable(m, 0 <= b786 <= 1, binary=true, start=0)
@variable(m, 0 <= b787 <= 1, binary=true, start=0)
@variable(m, 0 <= b788 <= 1, binary=true, start=0)
@variable(m, 0 <= b789 <= 1, binary=true, start=0)
@variable(m, 0 <= b790 <= 1, binary=true, start=0)
@variable(m, 0 <= b791 <= 1, binary=true, start=0)
@variable(m, 0 <= b792 <= 1, binary=true, start=0)
@variable(m, 0 <= b793 <= 1, binary=true, start=0)
@variable(m, 0 <= b794 <= 1, binary=true, start=0)
@variable(m, 0 <= b795 <= 1, binary=true, start=0)
@variable(m, 0 <= b796 <= 1, binary=true, start=0)
@variable(m, 0 <= b797 <= 1, binary=true, start=0)
@variable(m, 0 <= b798 <= 1, binary=true, start=0)
@variable(m, 0 <= b799 <= 1, binary=true, start=0)
@variable(m, 0 <= b800 <= 1, binary=true, start=0)
@variable(m, 0 <= b801 <= 1, binary=true, start=0)
@variable(m, 0 <= b802 <= 1, binary=true, start=0)
@variable(m, 0 <= b803 <= 1, binary=true, start=0)
@variable(m, 0 <= b804 <= 1, binary=true, start=0)
@variable(m, 0 <= b805 <= 1, binary=true, start=0)
@variable(m, 0 <= b806 <= 1, binary=true, start=0)
@variable(m, 0 <= b807 <= 1, binary=true, start=0)
@variable(m, 0 <= b808 <= 1, binary=true, start=0)
@variable(m, 0 <= b809 <= 1, binary=true, start=0)
@variable(m, 0 <= b810 <= 1, binary=true, start=0)
@variable(m, 0 <= b811 <= 1, binary=true, start=0)
@variable(m, 0 <= b812 <= 1, binary=true, start=0)
@variable(m, 0 <= b813 <= 1, binary=true, start=0)
@variable(m, 0 <= b814 <= 1, binary=true, start=0)
@variable(m, 0 <= b815 <= 1, binary=true, start=0)
@variable(m, 0 <= b816 <= 1, binary=true, start=0)
@variable(m, 0 <= b817 <= 1, binary=true, start=0)
@variable(m, 0 <= b818 <= 1, binary=true, start=0)
@variable(m, 0 <= b819 <= 1, binary=true, start=0)
@variable(m, 0 <= b820 <= 1, binary=true, start=0)
@variable(m, 0 <= b821 <= 1, binary=true, start=0)
@variable(m, 0 <= b822 <= 1, binary=true, start=0)
@variable(m, 0 <= b823 <= 1, binary=true, start=0)
@variable(m, 0 <= b824 <= 1, binary=true, start=0)
@variable(m, 0 <= b825 <= 1, binary=true, start=0)
@variable(m, 0 <= b826 <= 1, binary=true, start=0)
@variable(m, 0 <= b827 <= 1, binary=true, start=0)
@variable(m, 0 <= b828 <= 1, binary=true, start=0)
@variable(m, 0 <= b829 <= 1, binary=true, start=0)
@variable(m, 0 <= b830 <= 1, binary=true, start=0)
@variable(m, 0 <= b831 <= 1, binary=true, start=0)
@variable(m, 0 <= b832 <= 1, binary=true, start=0)
@variable(m, 0 <= b833 <= 1, binary=true, start=0)
@variable(m, 0 <= b834 <= 1, binary=true, start=0)
@variable(m, 0 <= b835 <= 1, binary=true, start=0)
@variable(m, 0 <= b836 <= 1, binary=true, start=0)
@variable(m, 0 <= b837 <= 1, binary=true, start=0)
@variable(m, 0 <= b838 <= 1, binary=true, start=0)
@variable(m, 0 <= b839 <= 1, binary=true, start=0)
@variable(m, 0 <= b840 <= 1, binary=true, start=0)
@variable(m, 0 <= b841 <= 1, binary=true, start=0)
@variable(m, 0 <= b842 <= 1, binary=true, start=0)
@variable(m, 0 <= b843 <= 1, binary=true, start=0)
@variable(m, 0 <= b844 <= 1, binary=true, start=0)
@variable(m, 0 <= b845 <= 1, binary=true, start=0)
@variable(m, 0 <= b846 <= 1, binary=true, start=0)
@variable(m, 0 <= b847 <= 1, binary=true, start=0)
@variable(m, 0 <= b848 <= 1, binary=true, start=0)
@variable(m, 0 <= b849 <= 1, binary=true, start=0)
@variable(m, 0 <= b850 <= 1, binary=true, start=0)
@variable(m, 0 <= b851 <= 1, binary=true, start=0)
@variable(m, 0 <= b852 <= 1, binary=true, start=0)
@variable(m, 0 <= b853 <= 1, binary=true, start=0)
@variable(m, 0 <= b854 <= 1, binary=true, start=0)
@variable(m, 0 <= b855 <= 1, binary=true, start=0)
@variable(m, 0 <= b856 <= 1, binary=true, start=0)
@variable(m, 0 <= b857 <= 1, binary=true, start=0)
@variable(m, 0 <= b858 <= 1, binary=true, start=0)
@variable(m, 0 <= b859 <= 1, binary=true, start=0)
@variable(m, 0 <= b860 <= 1, binary=true, start=0)
@variable(m, 0 <= b861 <= 1, binary=true, start=0)
@variable(m, 0 <= b862 <= 1, binary=true, start=0)

@objective(m, Min, 8*b2 + 39*b3 + 45*b4 + 37*b5 + 47*b6 + 9*b7 + 50*b8 + 49*b9 + 21*b10 + 15*b11 + 61*b12 + 62*b13
     + 21*b14 + 20*b15 + 17*b16 + 58*b17 + 60*b18 + 16*b19 + 17*b20 + 18*b21 + 6*b22 + 59*b23 + 60*b24 + 15*b25 + 20*b26
     + 26*b27 + 17*b28 + 10*b29 + 62*b30 + 66*b31 + 20*b32 + 25*b33 + 31*b34 + 22*b35 + 15*b36 + 5*b37 + 81*b38 + 81*b39
     + 40*b40 + 44*b41 + 50*b42 + 41*b43 + 35*b44 + 24*b45 + 20*b46 + 103*b47 + 107*b48 + 62*b49 + 67*b50 + 72*b51
     + 63*b52 + 57*b53 + 46*b54 + 41*b55 + 23*b56 + 108*b57 + 117*b58 + 66*b59 + 71*b60 + 77*b61 + 68*b62 + 61*b63
     + 51*b64 + 46*b65 + 26*b66 + 11*b67 + 145*b68 + 149*b69 + 104*b70 + 108*b71 + 114*b72 + 106*b73 + 99*b74 + 88*b75
     + 84*b76 + 63*b77 + 49*b78 + 40*b79 + 181*b80 + 185*b81 + 140*b82 + 144*b83 + 150*b84 + 142*b85 + 135*b86 + 124*b87
     + 120*b88 + 99*b89 + 85*b90 + 76*b91 + 35*b92 + 187*b93 + 191*b94 + 146*b95 + 150*b96 + 156*b97 + 142*b98 + 137*b99
     + 130*b100 + 125*b101 + 105*b102 + 90*b103 + 81*b104 + 41*b105 + 10*b106 + 161*b107 + 170*b108 + 120*b109
     + 124*b110 + 130*b111 + 115*b112 + 110*b113 + 104*b114 + 105*b115 + 90*b116 + 72*b117 + 62*b118 + 34*b119 + 31*b120
     + 27*b121 + 142*b122 + 146*b123 + 101*b124 + 104*b125 + 111*b126 + 97*b127 + 91*b128 + 85*b129 + 86*b130 + 75*b131
     + 51*b132 + 59*b133 + 29*b134 + 53*b135 + 48*b136 + 21*b137 + 174*b138 + 178*b139 + 133*b140 + 138*b141 + 143*b142
     + 129*b143 + 123*b144 + 117*b145 + 118*b146 + 107*b147 + 83*b148 + 84*b149 + 54*b150 + 46*b151 + 35*b152 + 26*b153
     + 31*b154 + 185*b155 + 186*b156 + 142*b157 + 143*b158 + 140*b159 + 130*b160 + 126*b161 + 124*b162 + 128*b163
     + 118*b164 + 93*b165 + 101*b166 + 72*b167 + 69*b168 + 58*b169 + 58*b170 + 43*b171 + 26*b172 + 164*b173 + 165*b174
     + 120*b175 + 123*b176 + 124*b177 + 106*b178 + 106*b179 + 105*b180 + 110*b181 + 104*b182 + 86*b183 + 97*b184
     + 71*b185 + 93*b186 + 82*b187 + 62*b188 + 42*b189 + 45*b190 + 22*b191 + 137*b192 + 139*b193 + 94*b194 + 96*b195
     + 94*b196 + 80*b197 + 78*b198 + 77*b199 + 84*b200 + 77*b201 + 56*b202 + 64*b203 + 65*b204 + 90*b205 + 87*b206
     + 58*b207 + 36*b208 + 68*b209 + 50*b210 + 30*b211 + 117*b212 + 122*b213 + 77*b214 + 80*b215 + 83*b216 + 68*b217
     + 62*b218 + 60*b219 + 61*b220 + 50*b221 + 34*b222 + 42*b223 + 49*b224 + 82*b225 + 77*b226 + 60*b227 + 30*b228
     + 62*b229 + 70*b230 + 49*b231 + 21*b232 + 114*b233 + 118*b234 + 73*b235 + 78*b236 + 84*b237 + 69*b238 + 63*b239
     + 57*b240 + 59*b241 + 48*b242 + 28*b243 + 36*b244 + 43*b245 + 77*b246 + 72*b247 + 45*b248 + 27*b249 + 59*b250
     + 69*b251 + 55*b252 + 27*b253 + 5*b254 + 85*b255 + 89*b256 + 44*b257 + 48*b258 + 53*b259 + 41*b260 + 34*b261
     + 28*b262 + 29*b263 + 22*b264 + 23*b265 + 35*b266 + 69*b267 + 105*b268 + 102*b269 + 74*b270 + 56*b271 + 88*b272
     + 99*b273 + 81*b274 + 54*b275 + 32*b276 + 29*b277 + 77*b278 + 80*b279 + 36*b280 + 40*b281 + 46*b282 + 34*b283
     + 27*b284 + 19*b285 + 21*b286 + 14*b287 + 29*b288 + 40*b289 + 77*b290 + 114*b291 + 111*b292 + 84*b293 + 64*b294
     + 96*b295 + 107*b296 + 87*b297 + 60*b298 + 40*b299 + 37*b300 + 8*b301 + 87*b302 + 89*b303 + 44*b304 + 46*b305
     + 46*b306 + 30*b307 + 28*b308 + 29*b309 + 32*b310 + 27*b311 + 36*b312 + 47*b313 + 78*b314 + 116*b315 + 112*b316
     + 84*b317 + 66*b318 + 98*b319 + 95*b320 + 75*b321 + 47*b322 + 36*b323 + 39*b324 + 12*b325 + 11*b326 + 91*b327
     + 93*b328 + 48*b329 + 50*b330 + 48*b331 + 34*b332 + 32*b333 + 33*b334 + 36*b335 + 30*b336 + 34*b337 + 45*b338
     + 77*b339 + 115*b340 + 110*b341 + 83*b342 + 63*b343 + 97*b344 + 91*b345 + 72*b346 + 44*b347 + 32*b348 + 36*b349
     + 9*b350 + 15*b351 + 3*b352 + 105*b353 + 106*b354 + 62*b355 + 63*b356 + 64*b357 + 47*b358 + 46*b359 + 49*b360
     + 54*b361 + 48*b362 + 46*b363 + 59*b364 + 85*b365 + 119*b366 + 115*b367 + 88*b368 + 66*b369 + 98*b370 + 79*b371
     + 59*b372 + 31*b373 + 36*b374 + 42*b375 + 28*b376 + 33*b377 + 21*b378 + 20*b379 + 111*b380 + 113*b381 + 69*b382
     + 71*b383 + 66*b384 + 51*b385 + 53*b386 + 56*b387 + 61*b388 + 57*b389 + 59*b390 + 71*b391 + 96*b392 + 130*b393
     + 126*b394 + 98*b395 + 75*b396 + 98*b397 + 85*b398 + 62*b399 + 38*b400 + 47*b401 + 53*b402 + 39*b403 + 42*b404
     + 29*b405 + 30*b406 + 12*b407 + 91*b408 + 92*b409 + 50*b410 + 51*b411 + 46*b412 + 30*b413 + 34*b414 + 38*b415
     + 43*b416 + 49*b417 + 60*b418 + 71*b419 + 103*b420 + 141*b421 + 136*b422 + 109*b423 + 90*b424 + 115*b425 + 99*b426
     + 81*b427 + 53*b428 + 61*b429 + 62*b430 + 36*b431 + 34*b432 + 24*b433 + 28*b434 + 20*b435 + 20*b436 + 83*b437
     + 85*b438 + 42*b439 + 43*b440 + 38*b441 + 22*b442 + 26*b443 + 32*b444 + 36*b445 + 51*b446 + 63*b447 + 75*b448
     + 106*b449 + 142*b450 + 140*b451 + 112*b452 + 93*b453 + 126*b454 + 108*b455 + 88*b456 + 60*b457 + 64*b458 + 66*b459
     + 39*b460 + 36*b461 + 27*b462 + 31*b463 + 28*b464 + 28*b465 + 8*b466 + 89*b467 + 91*b468 + 55*b469 + 55*b470
     + 50*b471 + 34*b472 + 39*b473 + 44*b474 + 49*b475 + 63*b476 + 76*b477 + 87*b478 + 120*b479 + 155*b480 + 150*b481
     + 123*b482 + 100*b483 + 123*b484 + 109*b485 + 86*b486 + 62*b487 + 71*b488 + 78*b489 + 52*b490 + 49*b491 + 39*b492
     + 44*b493 + 35*b494 + 24*b495 + 15*b496 + 12*b497 + 95*b498 + 97*b499 + 64*b500 + 63*b501 + 56*b502 + 42*b503
     + 49*b504 + 56*b505 + 60*b506 + 75*b507 + 86*b508 + 97*b509 + 126*b510 + 160*b511 + 155*b512 + 128*b513 + 104*b514
     + 128*b515 + 113*b516 + 90*b517 + 67*b518 + 76*b519 + 82*b520 + 62*b521 + 59*b522 + 49*b523 + 53*b524 + 40*b525
     + 29*b526 + 25*b527 + 23*b528 + 11*b529 + 74*b530 + 81*b531 + 44*b532 + 43*b533 + 35*b534 + 23*b535 + 30*b536
     + 39*b537 + 44*b538 + 62*b539 + 78*b540 + 89*b541 + 121*b542 + 159*b543 + 155*b544 + 127*b545 + 108*b546 + 136*b547
     + 124*b548 + 101*b549 + 75*b550 + 79*b551 + 81*b552 + 54*b553 + 50*b554 + 42*b555 + 46*b556 + 43*b557 + 39*b558
     + 23*b559 + 14*b560 + 14*b561 + 21*b562 + 67*b563 + 69*b564 + 42*b565 + 41*b566 + 31*b567 + 25*b568 + 32*b569
     + 41*b570 + 46*b571 + 64*b572 + 83*b573 + 90*b574 + 130*b575 + 164*b576 + 160*b577 + 133*b578 + 114*b579 + 146*b580
     + 134*b581 + 111*b582 + 85*b583 + 84*b584 + 86*b585 + 59*b586 + 52*b587 + 47*b588 + 51*b589 + 53*b590 + 49*b591
     + 32*b592 + 24*b593 + 24*b594 + 30*b595 + 9*b596 + 74*b597 + 76*b598 + 61*b599 + 60*b600 + 42*b601 + 44*b602
     + 51*b603 + 60*b604 + 66*b605 + 83*b606 + 102*b607 + 110*b608 + 147*b609 + 185*b610 + 179*b611 + 155*b612
     + 133*b613 + 159*b614 + 146*b615 + 122*b616 + 98*b617 + 105*b618 + 107*b619 + 79*b620 + 71*b621 + 66*b622 + 70*b623
     + 70*b624 + 60*b625 + 48*b626 + 40*b627 + 36*b628 + 33*b629 + 25*b630 + 18*b631 + 57*b632 + 59*b633 + 46*b634
     + 41*b635 + 25*b636 + 30*b637 + 36*b638 + 47*b639 + 52*b640 + 71*b641 + 93*b642 + 98*b643 + 136*b644 + 172*b645
     + 172*b646 + 148*b647 + 126*b648 + 158*b649 + 147*b650 + 124*b651 + 121*b652 + 97*b653 + 99*b654 + 71*b655
     + 65*b656 + 59*b657 + 63*b658 + 67*b659 + 62*b660 + 46*b661 + 38*b662 + 37*b663 + 43*b664 + 23*b665 + 13*b666
     + 17*b667 + 45*b668 + 46*b669 + 41*b670 + 34*b671 + 20*b672 + 34*b673 + 38*b674 + 48*b675 + 53*b676 + 73*b677
     + 96*b678 + 99*b679 + 137*b680 + 176*b681 + 178*b682 + 151*b683 + 131*b684 + 163*b685 + 159*b686 + 135*b687
     + 108*b688 + 102*b689 + 103*b690 + 73*b691 + 67*b692 + 64*b693 + 69*b694 + 75*b695 + 72*b696 + 54*b697 + 46*b698
     + 49*b699 + 54*b700 + 34*b701 + 24*b702 + 29*b703 + 12*b704 + 35*b705 + 37*b706 + 35*b707 + 26*b708 + 18*b709
     + 34*b710 + 36*b711 + 46*b712 + 51*b713 + 70*b714 + 93*b715 + 97*b716 + 134*b717 + 171*b718 + 176*b719 + 151*b720
     + 129*b721 + 161*b722 + 163*b723 + 139*b724 + 118*b725 + 102*b726 + 101*b727 + 71*b728 + 65*b729 + 65*b730
     + 70*b731 + 84*b732 + 78*b733 + 58*b734 + 50*b735 + 56*b736 + 62*b737 + 41*b738 + 32*b739 + 38*b740 + 21*b741
     + 9*b742 + 29*b743 + 33*b744 + 30*b745 + 21*b746 + 18*b747 + 35*b748 + 33*b749 + 40*b750 + 45*b751 + 65*b752
     + 87*b753 + 91*b754 + 117*b755 + 166*b756 + 171*b757 + 144*b758 + 125*b759 + 157*b760 + 156*b761 + 139*b762
     + 113*b763 + 95*b764 + 97*b765 + 67*b766 + 60*b767 + 62*b768 + 67*b769 + 79*b770 + 82*b771 + 62*b772 + 53*b773
     + 59*b774 + 66*b775 + 45*b776 + 38*b777 + 45*b778 + 27*b779 + 15*b780 + 6*b781 + 3*b782 + 11*b783 + 41*b784
     + 37*b785 + 47*b786 + 57*b787 + 55*b788 + 58*b789 + 63*b790 + 83*b791 + 105*b792 + 109*b793 + 147*b794 + 186*b795
     + 188*b796 + 164*b797 + 144*b798 + 176*b799 + 182*b800 + 161*b801 + 134*b802 + 119*b803 + 116*b804 + 86*b805
     + 78*b806 + 84*b807 + 88*b808 + 101*b809 + 108*b810 + 88*b811 + 80*b812 + 86*b813 + 92*b814 + 71*b815 + 64*b816
     + 71*b817 + 54*b818 + 41*b819 + 32*b820 + 25*b821 + 5*b822 + 12*b823 + 55*b824 + 41*b825 + 53*b826 + 64*b827
     + 61*b828 + 61*b829 + 66*b830 + 84*b831 + 111*b832 + 113*b833 + 150*b834 + 186*b835 + 192*b836 + 166*b837
     + 147*b838 + 180*b839 + 188*b840 + 167*b841 + 140*b842 + 124*b843 + 119*b844 + 90*b845 + 87*b846 + 90*b847
     + 94*b848 + 107*b849 + 114*b850 + 77*b851 + 86*b852 + 92*b853 + 98*b854 + 80*b855 + 74*b856 + 77*b857 + 60*b858
     + 48*b859 + 38*b860 + 32*b861 + 6*b862)

@constraint(m, b2 + b3 + b5 + b8 + b12 + b17 + b23 + b30 + b38 + b47 + b57 + b68 + b80 + b93 + b107 + b122 + b138 + b155
     + b173 + b192 + b212 + b233 + b255 + b278 + b302 + b327 + b353 + b380 + b408 + b437 + b467 + b498 + b530 + b563
     + b597 + b632 + b668 + b705 + b743 + b782 + b822 == 2)

@constraint(m, b2 + b4 + b6 + b9 + b13 + b18 + b24 + b31 + b39 + b48 + b58 + b69 + b81 + b94 + b108 + b123 + b139 + b156
     + b174 + b193 + b213 + b234 + b256 + b279 + b303 + b328 + b354 + b381 + b409 + b438 + b468 + b499 + b531 + b564
     + b598 + b633 + b669 + b706 + b744 + b783 + b823 == 2)

@constraint(m, b3 + b4 + b7 + b10 + b14 + b19 + b25 + b32 + b40 + b49 + b59 + b70 + b82 + b95 + b109 + b124 + b140
     + b157 + b175 + b194 + b214 + b235 + b257 + b280 + b304 + b329 + b355 + b382 + b410 + b439 + b469 + b500 + b532
     + b565 + b599 + b634 + b670 + b707 + b745 + b784 + b824 == 2)

@constraint(m, b5 + b6 + b7 + b11 + b15 + b20 + b26 + b33 + b41 + b50 + b60 + b71 + b83 + b96 + b110 + b125 + b141
     + b158 + b176 + b195 + b215 + b236 + b258 + b281 + b305 + b330 + b356 + b383 + b411 + b440 + b470 + b501 + b533
     + b566 + b600 + b635 + b671 + b708 + b746 + b785 + b825 == 2)

@constraint(m, b8 + b9 + b10 + b11 + b16 + b21 + b27 + b34 + b42 + b51 + b61 + b72 + b84 + b97 + b111 + b126 + b142
     + b159 + b177 + b196 + b216 + b237 + b259 + b282 + b306 + b331 + b357 + b384 + b412 + b441 + b471 + b502 + b534
     + b567 + b601 + b636 + b672 + b709 + b747 + b786 + b826 == 2)

@constraint(m, b12 + b13 + b14 + b15 + b16 + b22 + b28 + b35 + b43 + b52 + b62 + b73 + b85 + b98 + b112 + b127 + b143
     + b160 + b178 + b197 + b217 + b238 + b260 + b283 + b307 + b332 + b358 + b385 + b413 + b442 + b472 + b503 + b535
     + b568 + b602 + b637 + b673 + b710 + b748 + b787 + b827 == 2)

@constraint(m, b17 + b18 + b19 + b20 + b21 + b22 + b29 + b36 + b44 + b53 + b63 + b74 + b86 + b99 + b113 + b128 + b144
     + b161 + b179 + b198 + b218 + b239 + b261 + b284 + b308 + b333 + b359 + b386 + b414 + b443 + b473 + b504 + b536
     + b569 + b603 + b638 + b674 + b711 + b749 + b788 + b828 == 2)

@constraint(m, b23 + b24 + b25 + b26 + b27 + b28 + b29 + b37 + b45 + b54 + b64 + b75 + b87 + b100 + b114 + b129 + b145
     + b162 + b180 + b199 + b219 + b240 + b262 + b285 + b309 + b334 + b360 + b387 + b415 + b444 + b474 + b505 + b537
     + b570 + b604 + b639 + b675 + b712 + b750 + b789 + b829 == 2)

@constraint(m, b30 + b31 + b32 + b33 + b34 + b35 + b36 + b37 + b46 + b55 + b65 + b76 + b88 + b101 + b115 + b130 + b146
     + b163 + b181 + b200 + b220 + b241 + b263 + b286 + b310 + b335 + b361 + b388 + b416 + b445 + b475 + b506 + b538
     + b571 + b605 + b640 + b676 + b713 + b751 + b790 + b830 == 2)

@constraint(m, b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b56 + b66 + b77 + b89 + b102 + b116 + b131 + b147
     + b164 + b182 + b201 + b221 + b242 + b264 + b287 + b311 + b336 + b362 + b389 + b417 + b446 + b476 + b507 + b539
     + b572 + b606 + b641 + b677 + b714 + b752 + b791 + b831 == 2)

@constraint(m, b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 + b67 + b78 + b90 + b103 + b117 + b132 + b148
     + b165 + b183 + b202 + b222 + b243 + b265 + b288 + b312 + b337 + b363 + b390 + b418 + b447 + b477 + b508 + b540
     + b573 + b607 + b642 + b678 + b715 + b753 + b792 + b832 == 2)

@constraint(m, b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 + b67 + b79 + b91 + b104 + b118 + b133 + b149
     + b166 + b184 + b203 + b223 + b244 + b266 + b289 + b313 + b338 + b364 + b391 + b419 + b448 + b478 + b509 + b541
     + b574 + b608 + b643 + b679 + b716 + b754 + b793 + b833 == 2)

@constraint(m, b68 + b69 + b70 + b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b92 + b105 + b119 + b134 + b150
     + b167 + b185 + b204 + b224 + b245 + b267 + b290 + b314 + b339 + b365 + b392 + b420 + b449 + b479 + b510 + b542
     + b575 + b609 + b644 + b680 + b717 + b755 + b794 + b834 == 2)

@constraint(m, b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 + b91 + b92 + b106 + b120 + b135 + b151
     + b168 + b186 + b205 + b225 + b246 + b268 + b291 + b315 + b340 + b366 + b393 + b421 + b450 + b480 + b511 + b543
     + b576 + b610 + b645 + b681 + b718 + b756 + b795 + b835 == 2)

@constraint(m, b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106 + b121 + b136
     + b152 + b169 + b187 + b206 + b226 + b247 + b269 + b292 + b316 + b341 + b367 + b394 + b422 + b451 + b481 + b512
     + b544 + b577 + b611 + b646 + b682 + b719 + b757 + b796 + b836 == 2)

@constraint(m, b107 + b108 + b109 + b110 + b111 + b112 + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 + b121
     + b137 + b153 + b170 + b188 + b207 + b227 + b248 + b270 + b293 + b317 + b342 + b368 + b395 + b423 + b452 + b482
     + b513 + b545 + b578 + b612 + b647 + b683 + b720 + b758 + b797 + b837 == 2)

@constraint(m, b122 + b123 + b124 + b125 + b126 + b127 + b128 + b129 + b130 + b131 + b132 + b133 + b134 + b135 + b136
     + b137 + b154 + b171 + b189 + b208 + b228 + b249 + b271 + b294 + b318 + b343 + b369 + b396 + b424 + b453 + b483
     + b514 + b546 + b579 + b613 + b648 + b684 + b721 + b759 + b798 + b838 == 2)

@constraint(m, b138 + b139 + b140 + b141 + b142 + b143 + b144 + b145 + b146 + b147 + b148 + b149 + b150 + b151 + b152
     + b153 + b154 + b172 + b190 + b209 + b229 + b250 + b272 + b295 + b319 + b344 + b370 + b397 + b425 + b454 + b484
     + b515 + b547 + b580 + b614 + b649 + b685 + b722 + b760 + b799 + b839 == 2)

@constraint(m, b155 + b156 + b157 + b158 + b159 + b160 + b161 + b162 + b163 + b164 + b165 + b166 + b167 + b168 + b169
     + b170 + b171 + b172 + b191 + b210 + b230 + b251 + b273 + b296 + b320 + b345 + b371 + b398 + b426 + b455 + b485
     + b516 + b548 + b581 + b615 + b650 + b686 + b723 + b761 + b800 + b840 == 2)

@constraint(m, b173 + b174 + b175 + b176 + b177 + b178 + b179 + b180 + b181 + b182 + b183 + b184 + b185 + b186 + b187
     + b188 + b189 + b190 + b191 + b211 + b231 + b252 + b274 + b297 + b321 + b346 + b372 + b399 + b427 + b456 + b486
     + b517 + b549 + b582 + b616 + b651 + b687 + b724 + b762 + b801 + b841 == 2)

@constraint(m, b192 + b193 + b194 + b195 + b196 + b197 + b198 + b199 + b200 + b201 + b202 + b203 + b204 + b205 + b206
     + b207 + b208 + b209 + b210 + b211 + b232 + b253 + b275 + b298 + b322 + b347 + b373 + b400 + b428 + b457 + b487
     + b518 + b550 + b583 + b617 + b652 + b688 + b725 + b763 + b802 + b842 == 2)

@constraint(m, b212 + b213 + b214 + b215 + b216 + b217 + b218 + b219 + b220 + b221 + b222 + b223 + b224 + b225 + b226
     + b227 + b228 + b229 + b230 + b231 + b232 + b254 + b276 + b299 + b323 + b348 + b374 + b401 + b429 + b458 + b488
     + b519 + b551 + b584 + b618 + b653 + b689 + b726 + b764 + b803 + b843 == 2)

@constraint(m, b233 + b234 + b235 + b236 + b237 + b238 + b239 + b240 + b241 + b242 + b243 + b244 + b245 + b246 + b247
     + b248 + b249 + b250 + b251 + b252 + b253 + b254 + b277 + b300 + b324 + b349 + b375 + b402 + b430 + b459 + b489
     + b520 + b552 + b585 + b619 + b654 + b690 + b727 + b765 + b804 + b844 == 2)

@constraint(m, b255 + b256 + b257 + b258 + b259 + b260 + b261 + b262 + b263 + b264 + b265 + b266 + b267 + b268 + b269
     + b270 + b271 + b272 + b273 + b274 + b275 + b276 + b277 + b301 + b325 + b350 + b376 + b403 + b431 + b460 + b490
     + b521 + b553 + b586 + b620 + b655 + b691 + b728 + b766 + b805 + b845 == 2)

@constraint(m, b278 + b279 + b280 + b281 + b282 + b283 + b284 + b285 + b286 + b287 + b288 + b289 + b290 + b291 + b292
     + b293 + b294 + b295 + b296 + b297 + b298 + b299 + b300 + b301 + b326 + b351 + b377 + b404 + b432 + b461 + b491
     + b522 + b554 + b587 + b621 + b656 + b692 + b729 + b767 + b806 + b846 == 2)

@constraint(m, b302 + b303 + b304 + b305 + b306 + b307 + b308 + b309 + b310 + b311 + b312 + b313 + b314 + b315 + b316
     + b317 + b318 + b319 + b320 + b321 + b322 + b323 + b324 + b325 + b326 + b352 + b378 + b405 + b433 + b462 + b492
     + b523 + b555 + b588 + b622 + b657 + b693 + b730 + b768 + b807 + b847 == 2)

@constraint(m, b327 + b328 + b329 + b330 + b331 + b332 + b333 + b334 + b335 + b336 + b337 + b338 + b339 + b340 + b341
     + b342 + b343 + b344 + b345 + b346 + b347 + b348 + b349 + b350 + b351 + b352 + b379 + b406 + b434 + b463 + b493
     + b524 + b556 + b589 + b623 + b658 + b694 + b731 + b769 + b808 + b848 == 2)

@constraint(m, b353 + b354 + b355 + b356 + b357 + b358 + b359 + b360 + b361 + b362 + b363 + b364 + b365 + b366 + b367
     + b368 + b369 + b370 + b371 + b372 + b373 + b374 + b375 + b376 + b377 + b378 + b379 + b407 + b435 + b464 + b494
     + b525 + b557 + b590 + b624 + b659 + b695 + b732 + b770 + b809 + b849 == 2)

@constraint(m, b380 + b381 + b382 + b383 + b384 + b385 + b386 + b387 + b388 + b389 + b390 + b391 + b392 + b393 + b394
     + b395 + b396 + b397 + b398 + b399 + b400 + b401 + b402 + b403 + b404 + b405 + b406 + b407 + b436 + b465 + b495
     + b526 + b558 + b591 + b625 + b660 + b696 + b733 + b771 + b810 + b850 == 2)

@constraint(m, b408 + b409 + b410 + b411 + b412 + b413 + b414 + b415 + b416 + b417 + b418 + b419 + b420 + b421 + b422
     + b423 + b424 + b425 + b426 + b427 + b428 + b429 + b430 + b431 + b432 + b433 + b434 + b435 + b436 + b466 + b496
     + b527 + b559 + b592 + b626 + b661 + b697 + b734 + b772 + b811 + b851 == 2)

@constraint(m, b437 + b438 + b439 + b440 + b441 + b442 + b443 + b444 + b445 + b446 + b447 + b448 + b449 + b450 + b451
     + b452 + b453 + b454 + b455 + b456 + b457 + b458 + b459 + b460 + b461 + b462 + b463 + b464 + b465 + b466 + b497
     + b528 + b560 + b593 + b627 + b662 + b698 + b735 + b773 + b812 + b852 == 2)

@constraint(m, b467 + b468 + b469 + b470 + b471 + b472 + b473 + b474 + b475 + b476 + b477 + b478 + b479 + b480 + b481
     + b482 + b483 + b484 + b485 + b486 + b487 + b488 + b489 + b490 + b491 + b492 + b493 + b494 + b495 + b496 + b497
     + b529 + b561 + b594 + b628 + b663 + b699 + b736 + b774 + b813 + b853 == 2)

@constraint(m, b498 + b499 + b500 + b501 + b502 + b503 + b504 + b505 + b506 + b507 + b508 + b509 + b510 + b511 + b512
     + b513 + b514 + b515 + b516 + b517 + b518 + b519 + b520 + b521 + b522 + b523 + b524 + b525 + b526 + b527 + b528
     + b529 + b562 + b595 + b629 + b664 + b700 + b737 + b775 + b814 + b854 == 2)

@constraint(m, b530 + b531 + b532 + b533 + b534 + b535 + b536 + b537 + b538 + b539 + b540 + b541 + b542 + b543 + b544
     + b545 + b546 + b547 + b548 + b549 + b550 + b551 + b552 + b553 + b554 + b555 + b556 + b557 + b558 + b559 + b560
     + b561 + b562 + b596 + b630 + b665 + b701 + b738 + b776 + b815 + b855 == 2)

@constraint(m, b563 + b564 + b565 + b566 + b567 + b568 + b569 + b570 + b571 + b572 + b573 + b574 + b575 + b576 + b577
     + b578 + b579 + b580 + b581 + b582 + b583 + b584 + b585 + b586 + b587 + b588 + b589 + b590 + b591 + b592 + b593
     + b594 + b595 + b596 + b631 + b666 + b702 + b739 + b777 + b816 + b856 == 2)

@constraint(m, b597 + b598 + b599 + b600 + b601 + b602 + b603 + b604 + b605 + b606 + b607 + b608 + b609 + b610 + b611
     + b612 + b613 + b614 + b615 + b616 + b617 + b618 + b619 + b620 + b621 + b622 + b623 + b624 + b625 + b626 + b627
     + b628 + b629 + b630 + b631 + b667 + b703 + b740 + b778 + b817 + b857 == 2)

@constraint(m, b632 + b633 + b634 + b635 + b636 + b637 + b638 + b639 + b640 + b641 + b642 + b643 + b644 + b645 + b646
     + b647 + b648 + b649 + b650 + b651 + b652 + b653 + b654 + b655 + b656 + b657 + b658 + b659 + b660 + b661 + b662
     + b663 + b664 + b665 + b666 + b667 + b704 + b741 + b779 + b818 + b858 == 2)

@constraint(m, b668 + b669 + b670 + b671 + b672 + b673 + b674 + b675 + b676 + b677 + b678 + b679 + b680 + b681 + b682
     + b683 + b684 + b685 + b686 + b687 + b688 + b689 + b690 + b691 + b692 + b693 + b694 + b695 + b696 + b697 + b698
     + b699 + b700 + b701 + b702 + b703 + b704 + b742 + b780 + b819 + b859 == 2)

@constraint(m, b705 + b706 + b707 + b708 + b709 + b710 + b711 + b712 + b713 + b714 + b715 + b716 + b717 + b718 + b719
     + b720 + b721 + b722 + b723 + b724 + b725 + b726 + b727 + b728 + b729 + b730 + b731 + b732 + b733 + b734 + b735
     + b736 + b737 + b738 + b739 + b740 + b741 + b742 + b781 + b820 + b860 == 2)

@constraint(m, b743 + b744 + b745 + b746 + b747 + b748 + b749 + b750 + b751 + b752 + b753 + b754 + b755 + b756 + b757
     + b758 + b759 + b760 + b761 + b762 + b763 + b764 + b765 + b766 + b767 + b768 + b769 + b770 + b771 + b772 + b773
     + b774 + b775 + b776 + b777 + b778 + b779 + b780 + b781 + b821 + b861 == 2)

@constraint(m, b782 + b783 + b784 + b785 + b786 + b787 + b788 + b789 + b790 + b791 + b792 + b793 + b794 + b795 + b796
     + b797 + b798 + b799 + b800 + b801 + b802 + b803 + b804 + b805 + b806 + b807 + b808 + b809 + b810 + b811 + b812
     + b813 + b814 + b815 + b816 + b817 + b818 + b819 + b820 + b821 + b862 == 2)

@constraint(m, b822 + b823 + b824 + b825 + b826 + b827 + b828 + b829 + b830 + b831 + b832 + b833 + b834 + b835 + b836
     + b837 + b838 + b839 + b840 + b841 + b842 + b843 + b844 + b845 + b846 + b847 + b848 + b849 + b850 + b851 + b852
     + b853 + b854 + b855 + b856 + b857 + b858 + b859 + b860 + b861 + b862 == 2)
