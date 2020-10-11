#  MIP written by GAMS Convert at 10/11/20 12:51:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        162       39      108       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        451       19      432        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1131     1131        0        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, 1 <= x2 <= 1, start=1)
@variable(m, 1 <= x3 <= 18, start=1)
@variable(m, 1 <= x4 <= 18, start=1)
@variable(m, 1 <= x5 <= 18, start=1)
@variable(m, 1 <= x6 <= 18, start=1)
@variable(m, 1 <= x7 <= 18, start=1)
@variable(m, 1 <= x8 <= 18, start=1)
@variable(m, 1 <= x9 <= 18, start=1)
@variable(m, 1 <= x10 <= 18, start=1)
@variable(m, 1 <= x11 <= 18, start=1)
@variable(m, 1 <= x12 <= 18, start=1)
@variable(m, 1 <= x13 <= 18, start=1)
@variable(m, 1 <= x14 <= 18, start=1)
@variable(m, 1 <= x15 <= 18, start=1)
@variable(m, 1 <= x16 <= 18, start=1)
@variable(m, 1 <= x17 <= 18, start=1)
@variable(m, 1 <= x18 <= 18, start=1)
@variable(m, 1 <= x19 <= 18, start=1)
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

@objective(m, Max, x1)

@constraint(m,  - x1 + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35
     + b36 + b37 + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54
     + b55 == 0)

@constraint(m,  - x1 + b56 + b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71
     + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90
     + b91 == 0)

@constraint(m,  - x1 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106
     + b107 + b108 + b109 + b110 + b111 + b112 + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 + b121 + b122
     + b123 + b124 + b125 + b126 + b127 == 0)

@constraint(m, x2 - x8 - 17*b20 >= -16)

@constraint(m, x2 - x9 - 17*b21 >= -16)

@constraint(m, x2 - x10 - 17*b22 >= -16)

@constraint(m, x2 - x11 - 17*b23 >= -16)

@constraint(m, x2 - x12 - 17*b24 >= -16)

@constraint(m, x2 - x13 - 17*b25 >= -16)

@constraint(m, x3 - x8 - 17*b26 >= -16)

@constraint(m, x3 - x9 - 17*b27 >= -16)

@constraint(m, x3 - x10 - 17*b28 >= -16)

@constraint(m, x3 - x11 - 17*b29 >= -16)

@constraint(m, x3 - x12 - 17*b30 >= -16)

@constraint(m, x3 - x13 - 17*b31 >= -16)

@constraint(m, x4 - x8 - 17*b32 >= -16)

@constraint(m, x4 - x9 - 17*b33 >= -16)

@constraint(m, x4 - x10 - 17*b34 >= -16)

@constraint(m, x4 - x11 - 17*b35 >= -16)

@constraint(m, x4 - x12 - 17*b36 >= -16)

@constraint(m, x4 - x13 - 17*b37 >= -16)

@constraint(m, x5 - x8 - 17*b38 >= -16)

@constraint(m, x5 - x9 - 17*b39 >= -16)

@constraint(m, x5 - x10 - 17*b40 >= -16)

@constraint(m, x5 - x11 - 17*b41 >= -16)

@constraint(m, x5 - x12 - 17*b42 >= -16)

@constraint(m, x5 - x13 - 17*b43 >= -16)

@constraint(m, x6 - x8 - 17*b44 >= -16)

@constraint(m, x6 - x9 - 17*b45 >= -16)

@constraint(m, x6 - x10 - 17*b46 >= -16)

@constraint(m, x6 - x11 - 17*b47 >= -16)

@constraint(m, x6 - x12 - 17*b48 >= -16)

@constraint(m, x6 - x13 - 17*b49 >= -16)

@constraint(m, x7 - x8 - 17*b50 >= -16)

@constraint(m, x7 - x9 - 17*b51 >= -16)

@constraint(m, x7 - x10 - 17*b52 >= -16)

@constraint(m, x7 - x11 - 17*b53 >= -16)

@constraint(m, x7 - x12 - 17*b54 >= -16)

@constraint(m, x7 - x13 - 17*b55 >= -16)

@constraint(m, x8 - x14 - 17*b56 >= -16)

@constraint(m, x8 - x15 - 17*b57 >= -16)

@constraint(m, x8 - x16 - 17*b58 >= -16)

@constraint(m, x8 - x17 - 17*b59 >= -16)

@constraint(m, x8 - x18 - 17*b60 >= -16)

@constraint(m, x8 - x19 - 17*b61 >= -16)

@constraint(m, x9 - x14 - 17*b62 >= -16)

@constraint(m, x9 - x15 - 17*b63 >= -16)

@constraint(m, x9 - x16 - 17*b64 >= -16)

@constraint(m, x9 - x17 - 17*b65 >= -16)

@constraint(m, x9 - x18 - 17*b66 >= -16)

@constraint(m, x9 - x19 - 17*b67 >= -16)

@constraint(m, x10 - x14 - 17*b68 >= -16)

@constraint(m, x10 - x15 - 17*b69 >= -16)

@constraint(m, x10 - x16 - 17*b70 >= -16)

@constraint(m, x10 - x17 - 17*b71 >= -16)

@constraint(m, x10 - x18 - 17*b72 >= -16)

@constraint(m, x10 - x19 - 17*b73 >= -16)

@constraint(m, x11 - x14 - 17*b74 >= -16)

@constraint(m, x11 - x15 - 17*b75 >= -16)

@constraint(m, x11 - x16 - 17*b76 >= -16)

@constraint(m, x11 - x17 - 17*b77 >= -16)

@constraint(m, x11 - x18 - 17*b78 >= -16)

@constraint(m, x11 - x19 - 17*b79 >= -16)

@constraint(m, x12 - x14 - 17*b80 >= -16)

@constraint(m, x12 - x15 - 17*b81 >= -16)

@constraint(m, x12 - x16 - 17*b82 >= -16)

@constraint(m, x12 - x17 - 17*b83 >= -16)

@constraint(m, x12 - x18 - 17*b84 >= -16)

@constraint(m, x12 - x19 - 17*b85 >= -16)

@constraint(m, x13 - x14 - 17*b86 >= -16)

@constraint(m, x13 - x15 - 17*b87 >= -16)

@constraint(m, x13 - x16 - 17*b88 >= -16)

@constraint(m, x13 - x17 - 17*b89 >= -16)

@constraint(m, x13 - x18 - 17*b90 >= -16)

@constraint(m, x13 - x19 - 17*b91 >= -16)

@constraint(m,  - x2 + x14 - 17*b92 >= -16)

@constraint(m,  - x3 + x14 - 17*b93 >= -16)

@constraint(m,  - x4 + x14 - 17*b94 >= -16)

@constraint(m,  - x5 + x14 - 17*b95 >= -16)

@constraint(m,  - x6 + x14 - 17*b96 >= -16)

@constraint(m,  - x7 + x14 - 17*b97 >= -16)

@constraint(m,  - x2 + x15 - 17*b98 >= -16)

@constraint(m,  - x3 + x15 - 17*b99 >= -16)

@constraint(m,  - x4 + x15 - 17*b100 >= -16)

@constraint(m,  - x5 + x15 - 17*b101 >= -16)

@constraint(m,  - x6 + x15 - 17*b102 >= -16)

@constraint(m,  - x7 + x15 - 17*b103 >= -16)

@constraint(m,  - x2 + x16 - 17*b104 >= -16)

@constraint(m,  - x3 + x16 - 17*b105 >= -16)

@constraint(m,  - x4 + x16 - 17*b106 >= -16)

@constraint(m,  - x5 + x16 - 17*b107 >= -16)

@constraint(m,  - x6 + x16 - 17*b108 >= -16)

@constraint(m,  - x7 + x16 - 17*b109 >= -16)

@constraint(m,  - x2 + x17 - 17*b110 >= -16)

@constraint(m,  - x3 + x17 - 17*b111 >= -16)

@constraint(m,  - x4 + x17 - 17*b112 >= -16)

@constraint(m,  - x5 + x17 - 17*b113 >= -16)

@constraint(m,  - x6 + x17 - 17*b114 >= -16)

@constraint(m,  - x7 + x17 - 17*b115 >= -16)

@constraint(m,  - x2 + x18 - 17*b116 >= -16)

@constraint(m,  - x3 + x18 - 17*b117 >= -16)

@constraint(m,  - x4 + x18 - 17*b118 >= -16)

@constraint(m,  - x5 + x18 - 17*b119 >= -16)

@constraint(m,  - x6 + x18 - 17*b120 >= -16)

@constraint(m,  - x7 + x18 - 17*b121 >= -16)

@constraint(m,  - x2 + x19 - 17*b122 >= -16)

@constraint(m,  - x3 + x19 - 17*b123 >= -16)

@constraint(m,  - x4 + x19 - 17*b124 >= -16)

@constraint(m,  - x5 + x19 - 17*b125 >= -16)

@constraint(m,  - x6 + x19 - 17*b126 >= -16)

@constraint(m,  - x7 + x19 - 17*b127 >= -16)

@constraint(m, x2 - x3 <= -1)

@constraint(m, x3 - x4 <= -1)

@constraint(m, x4 - x5 <= -1)

@constraint(m, x5 - x6 <= -1)

@constraint(m, x6 - x7 <= -1)

@constraint(m, x8 - x9 <= -1)

@constraint(m, x9 - x10 <= -1)

@constraint(m, x10 - x11 <= -1)

@constraint(m, x11 - x12 <= -1)

@constraint(m, x12 - x13 <= -1)

@constraint(m, x14 - x15 <= -1)

@constraint(m, x15 - x16 <= -1)

@constraint(m, x16 - x17 <= -1)

@constraint(m, x17 - x18 <= -1)

@constraint(m, x18 - x19 <= -1)

@constraint(m,  - x2 + b128 + 2*b129 + 3*b130 + 4*b131 + 5*b132 + 6*b133 + 7*b134 + 8*b135 + 9*b136 + 10*b137 + 11*b138
     + 12*b139 + 13*b140 + 14*b141 + 15*b142 + 16*b143 + 17*b144 + 18*b145 == 0)

@constraint(m,  - x3 + b146 + 2*b147 + 3*b148 + 4*b149 + 5*b150 + 6*b151 + 7*b152 + 8*b153 + 9*b154 + 10*b155 + 11*b156
     + 12*b157 + 13*b158 + 14*b159 + 15*b160 + 16*b161 + 17*b162 + 18*b163 == 0)

@constraint(m,  - x4 + b164 + 2*b165 + 3*b166 + 4*b167 + 5*b168 + 6*b169 + 7*b170 + 8*b171 + 9*b172 + 10*b173 + 11*b174
     + 12*b175 + 13*b176 + 14*b177 + 15*b178 + 16*b179 + 17*b180 + 18*b181 == 0)

@constraint(m,  - x5 + b182 + 2*b183 + 3*b184 + 4*b185 + 5*b186 + 6*b187 + 7*b188 + 8*b189 + 9*b190 + 10*b191 + 11*b192
     + 12*b193 + 13*b194 + 14*b195 + 15*b196 + 16*b197 + 17*b198 + 18*b199 == 0)

@constraint(m,  - x6 + b200 + 2*b201 + 3*b202 + 4*b203 + 5*b204 + 6*b205 + 7*b206 + 8*b207 + 9*b208 + 10*b209 + 11*b210
     + 12*b211 + 13*b212 + 14*b213 + 15*b214 + 16*b215 + 17*b216 + 18*b217 == 0)

@constraint(m,  - x7 + b218 + 2*b219 + 3*b220 + 4*b221 + 5*b222 + 6*b223 + 7*b224 + 8*b225 + 9*b226 + 10*b227 + 11*b228
     + 12*b229 + 13*b230 + 14*b231 + 15*b232 + 16*b233 + 17*b234 + 18*b235 == 0)

@constraint(m,  - x8 + b236 + 2*b237 + 3*b238 + 4*b239 + 5*b240 + 6*b241 + 7*b242 + 8*b243 + 9*b244 + 10*b245 + 11*b246
     + 12*b247 + 13*b248 + 14*b249 + 15*b250 + 16*b251 + 17*b252 + 18*b253 == 0)

@constraint(m,  - x9 + b254 + 2*b255 + 3*b256 + 4*b257 + 5*b258 + 6*b259 + 7*b260 + 8*b261 + 9*b262 + 10*b263 + 11*b264
     + 12*b265 + 13*b266 + 14*b267 + 15*b268 + 16*b269 + 17*b270 + 18*b271 == 0)

@constraint(m,  - x10 + b272 + 2*b273 + 3*b274 + 4*b275 + 5*b276 + 6*b277 + 7*b278 + 8*b279 + 9*b280 + 10*b281 + 11*b282
     + 12*b283 + 13*b284 + 14*b285 + 15*b286 + 16*b287 + 17*b288 + 18*b289 == 0)

@constraint(m,  - x11 + b290 + 2*b291 + 3*b292 + 4*b293 + 5*b294 + 6*b295 + 7*b296 + 8*b297 + 9*b298 + 10*b299 + 11*b300
     + 12*b301 + 13*b302 + 14*b303 + 15*b304 + 16*b305 + 17*b306 + 18*b307 == 0)

@constraint(m,  - x12 + b308 + 2*b309 + 3*b310 + 4*b311 + 5*b312 + 6*b313 + 7*b314 + 8*b315 + 9*b316 + 10*b317 + 11*b318
     + 12*b319 + 13*b320 + 14*b321 + 15*b322 + 16*b323 + 17*b324 + 18*b325 == 0)

@constraint(m,  - x13 + b326 + 2*b327 + 3*b328 + 4*b329 + 5*b330 + 6*b331 + 7*b332 + 8*b333 + 9*b334 + 10*b335 + 11*b336
     + 12*b337 + 13*b338 + 14*b339 + 15*b340 + 16*b341 + 17*b342 + 18*b343 == 0)

@constraint(m,  - x14 + b344 + 2*b345 + 3*b346 + 4*b347 + 5*b348 + 6*b349 + 7*b350 + 8*b351 + 9*b352 + 10*b353 + 11*b354
     + 12*b355 + 13*b356 + 14*b357 + 15*b358 + 16*b359 + 17*b360 + 18*b361 == 0)

@constraint(m,  - x15 + b362 + 2*b363 + 3*b364 + 4*b365 + 5*b366 + 6*b367 + 7*b368 + 8*b369 + 9*b370 + 10*b371 + 11*b372
     + 12*b373 + 13*b374 + 14*b375 + 15*b376 + 16*b377 + 17*b378 + 18*b379 == 0)

@constraint(m,  - x16 + b380 + 2*b381 + 3*b382 + 4*b383 + 5*b384 + 6*b385 + 7*b386 + 8*b387 + 9*b388 + 10*b389 + 11*b390
     + 12*b391 + 13*b392 + 14*b393 + 15*b394 + 16*b395 + 17*b396 + 18*b397 == 0)

@constraint(m,  - x17 + b398 + 2*b399 + 3*b400 + 4*b401 + 5*b402 + 6*b403 + 7*b404 + 8*b405 + 9*b406 + 10*b407 + 11*b408
     + 12*b409 + 13*b410 + 14*b411 + 15*b412 + 16*b413 + 17*b414 + 18*b415 == 0)

@constraint(m,  - x18 + b416 + 2*b417 + 3*b418 + 4*b419 + 5*b420 + 6*b421 + 7*b422 + 8*b423 + 9*b424 + 10*b425 + 11*b426
     + 12*b427 + 13*b428 + 14*b429 + 15*b430 + 16*b431 + 17*b432 + 18*b433 == 0)

@constraint(m,  - x19 + b434 + 2*b435 + 3*b436 + 4*b437 + 5*b438 + 6*b439 + 7*b440 + 8*b441 + 9*b442 + 10*b443 + 11*b444
     + 12*b445 + 13*b446 + 14*b447 + 15*b448 + 16*b449 + 17*b450 + 18*b451 == 0)

@constraint(m, b128 + b146 + b164 + b182 + b200 + b218 + b236 + b254 + b272 + b290 + b308 + b326 + b344 + b362 + b380
     + b398 + b416 + b434 == 1)

@constraint(m, b129 + b147 + b165 + b183 + b201 + b219 + b237 + b255 + b273 + b291 + b309 + b327 + b345 + b363 + b381
     + b399 + b417 + b435 == 1)

@constraint(m, b130 + b148 + b166 + b184 + b202 + b220 + b238 + b256 + b274 + b292 + b310 + b328 + b346 + b364 + b382
     + b400 + b418 + b436 == 1)

@constraint(m, b131 + b149 + b167 + b185 + b203 + b221 + b239 + b257 + b275 + b293 + b311 + b329 + b347 + b365 + b383
     + b401 + b419 + b437 == 1)

@constraint(m, b132 + b150 + b168 + b186 + b204 + b222 + b240 + b258 + b276 + b294 + b312 + b330 + b348 + b366 + b384
     + b402 + b420 + b438 == 1)

@constraint(m, b133 + b151 + b169 + b187 + b205 + b223 + b241 + b259 + b277 + b295 + b313 + b331 + b349 + b367 + b385
     + b403 + b421 + b439 == 1)

@constraint(m, b134 + b152 + b170 + b188 + b206 + b224 + b242 + b260 + b278 + b296 + b314 + b332 + b350 + b368 + b386
     + b404 + b422 + b440 == 1)

@constraint(m, b135 + b153 + b171 + b189 + b207 + b225 + b243 + b261 + b279 + b297 + b315 + b333 + b351 + b369 + b387
     + b405 + b423 + b441 == 1)

@constraint(m, b136 + b154 + b172 + b190 + b208 + b226 + b244 + b262 + b280 + b298 + b316 + b334 + b352 + b370 + b388
     + b406 + b424 + b442 == 1)

@constraint(m, b137 + b155 + b173 + b191 + b209 + b227 + b245 + b263 + b281 + b299 + b317 + b335 + b353 + b371 + b389
     + b407 + b425 + b443 == 1)

@constraint(m, b138 + b156 + b174 + b192 + b210 + b228 + b246 + b264 + b282 + b300 + b318 + b336 + b354 + b372 + b390
     + b408 + b426 + b444 == 1)

@constraint(m, b139 + b157 + b175 + b193 + b211 + b229 + b247 + b265 + b283 + b301 + b319 + b337 + b355 + b373 + b391
     + b409 + b427 + b445 == 1)

@constraint(m, b140 + b158 + b176 + b194 + b212 + b230 + b248 + b266 + b284 + b302 + b320 + b338 + b356 + b374 + b392
     + b410 + b428 + b446 == 1)

@constraint(m, b141 + b159 + b177 + b195 + b213 + b231 + b249 + b267 + b285 + b303 + b321 + b339 + b357 + b375 + b393
     + b411 + b429 + b447 == 1)

@constraint(m, b142 + b160 + b178 + b196 + b214 + b232 + b250 + b268 + b286 + b304 + b322 + b340 + b358 + b376 + b394
     + b412 + b430 + b448 == 1)

@constraint(m, b143 + b161 + b179 + b197 + b215 + b233 + b251 + b269 + b287 + b305 + b323 + b341 + b359 + b377 + b395
     + b413 + b431 + b449 == 1)

@constraint(m, b144 + b162 + b180 + b198 + b216 + b234 + b252 + b270 + b288 + b306 + b324 + b342 + b360 + b378 + b396
     + b414 + b432 + b450 == 1)

@constraint(m, b145 + b163 + b181 + b199 + b217 + b235 + b253 + b271 + b289 + b307 + b325 + b343 + b361 + b379 + b397
     + b415 + b433 + b451 == 1)
