#  MIP written by GAMS Convert at 12/13/18 10:32:27
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


from pyomo.environ import *

model = m = ConcreteModel()


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
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
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
m.b234 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b235 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b236 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b237 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b238 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b239 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b240 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b241 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b242 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b243 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b244 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b245 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b246 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b247 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b248 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b249 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b250 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b251 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b252 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b253 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b254 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b255 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b256 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b257 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b258 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b259 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b260 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b261 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b262 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b263 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b264 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b265 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b266 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b267 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b268 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b269 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b270 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b271 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b272 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b273 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b274 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b275 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b276 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b277 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b278 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b279 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b280 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b281 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b282 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b283 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b284 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b285 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b286 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b287 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b288 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b289 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b290 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b291 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b292 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b293 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b294 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b295 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b296 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b297 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b298 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b299 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b300 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b301 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b302 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b303 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b304 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b305 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b306 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b307 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b308 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b309 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b310 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b311 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b312 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b313 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b314 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b315 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b316 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b317 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b318 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b319 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b320 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b321 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b322 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b323 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b324 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b325 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b326 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b327 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b328 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b329 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b330 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b331 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b332 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b333 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b334 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b335 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b336 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b337 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b338 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b339 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b340 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b341 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b342 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b343 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b344 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b345 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b346 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b347 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b348 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b349 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b350 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b351 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b352 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b353 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b354 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b355 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b356 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b357 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b358 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b359 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b360 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b361 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b362 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b363 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b364 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b365 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b366 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b367 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b368 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b369 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b370 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b371 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b372 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b373 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b374 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b375 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b376 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b377 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b378 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b379 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b380 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b381 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b382 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b383 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b384 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b385 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b386 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b387 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b388 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b389 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b390 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b391 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b392 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b393 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b394 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b395 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b396 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b397 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b398 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b399 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b400 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b401 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b402 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b403 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b404 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b405 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b406 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b407 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b408 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b409 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b410 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b411 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b412 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b413 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b414 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b415 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b416 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b417 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b418 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b419 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b420 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b421 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b422 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b423 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b424 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b425 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b426 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b427 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b428 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b429 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b430 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b431 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b432 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b433 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b434 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b435 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b436 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b437 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b438 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b439 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b440 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b441 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b442 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b443 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b444 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b445 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b446 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b447 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b448 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b449 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b450 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b451 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b452 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b453 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b454 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b455 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b456 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b457 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b458 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b459 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b460 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b461 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b462 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b463 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b464 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b465 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b466 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b467 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b468 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b469 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b470 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b471 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b472 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b473 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b474 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b475 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b476 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b477 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b478 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b479 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b480 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b481 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b482 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b483 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b484 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b485 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b486 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b487 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b488 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b489 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b490 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b491 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b492 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b493 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b494 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b495 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b496 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b497 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b498 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b499 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b500 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b501 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b502 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b503 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b504 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b505 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b506 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b507 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b508 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b509 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b510 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b511 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b512 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b513 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b514 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b515 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b516 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b517 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b518 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b519 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b520 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b521 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b522 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b523 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b524 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b525 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b526 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b527 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b528 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b529 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b530 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b531 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b532 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b533 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b534 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b535 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b536 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b537 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b538 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b539 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b540 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b541 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b542 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b543 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b544 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b545 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b546 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b547 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b548 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b549 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b550 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b551 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b552 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b553 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b554 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b555 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b556 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b557 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b558 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b559 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b560 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b561 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b562 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b563 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b564 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b565 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b566 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b567 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b568 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b569 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b570 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b571 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b572 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b573 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b574 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b575 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b576 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b577 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b578 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b579 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b580 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b581 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b582 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b583 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b584 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b585 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b586 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b587 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b588 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b589 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b590 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b591 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b592 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b593 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b594 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b595 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b596 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b597 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b598 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b599 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b600 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b601 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b602 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b603 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b604 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b605 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b606 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b607 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b608 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b609 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b610 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b611 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b612 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b613 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b614 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b615 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b616 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b617 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b618 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b619 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b620 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b621 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b622 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b623 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b624 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b625 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b626 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b627 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b628 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b629 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b630 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b631 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b632 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b633 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b634 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b635 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b636 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b637 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b638 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b639 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b640 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b641 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b642 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b643 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b644 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b645 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b646 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b647 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b648 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b649 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b650 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b651 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b652 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b653 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b654 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b655 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b656 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b657 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b658 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b659 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b660 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b661 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b662 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b663 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b664 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b665 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b666 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b667 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b668 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b669 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b670 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b671 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b672 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b673 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b674 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b675 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b676 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b677 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b678 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b679 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b680 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b681 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b682 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b683 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b684 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b685 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b686 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b687 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b688 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b689 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b690 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b691 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b692 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b693 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b694 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b695 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b696 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b697 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b698 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b699 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b700 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b701 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b702 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b703 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b704 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b705 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b706 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b707 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b708 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b709 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b710 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b711 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b712 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b713 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b714 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b715 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b716 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b717 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b718 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b719 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b720 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b721 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b722 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b723 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b724 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b725 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b726 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b727 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b728 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b729 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b730 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b731 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b732 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b733 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b734 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b735 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b736 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b737 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b738 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b739 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b740 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b741 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b742 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b743 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b744 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b745 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b746 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b747 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b748 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b749 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b750 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b751 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b752 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b753 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b754 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b755 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b756 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b757 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b758 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b759 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b760 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b761 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b762 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b763 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b764 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b765 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b766 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b767 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b768 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b769 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b770 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b771 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b772 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b773 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b774 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b775 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b776 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b777 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b778 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b779 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b780 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b781 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b782 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b783 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b784 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b785 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b786 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b787 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b788 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b789 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b790 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b791 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b792 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b793 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b794 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b795 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b796 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b797 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b798 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b799 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b800 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b801 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b802 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b803 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b804 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b805 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b806 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b807 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b808 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b809 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b810 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b811 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b812 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b813 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b814 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b815 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b816 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b817 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b818 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b819 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b820 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b821 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b822 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b823 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b824 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b825 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b826 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b827 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b828 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b829 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b830 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b831 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b832 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b833 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b834 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b835 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b836 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b837 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b838 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b839 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b840 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b841 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b842 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b843 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b844 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b845 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b846 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b847 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b848 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b849 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b850 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b851 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b852 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b853 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b854 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b855 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b856 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b857 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b858 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b859 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b860 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b861 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b862 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   8*m.b2 + 39*m.b3 + 45*m.b4 + 37*m.b5 + 47*m.b6 + 9*m.b7 + 50*m.b8 + 49*m.b9 + 21*m.b10
                        + 15*m.b11 + 61*m.b12 + 62*m.b13 + 21*m.b14 + 20*m.b15 + 17*m.b16 + 58*m.b17 + 60*m.b18
                        + 16*m.b19 + 17*m.b20 + 18*m.b21 + 6*m.b22 + 59*m.b23 + 60*m.b24 + 15*m.b25 + 20*m.b26
                        + 26*m.b27 + 17*m.b28 + 10*m.b29 + 62*m.b30 + 66*m.b31 + 20*m.b32 + 25*m.b33 + 31*m.b34
                        + 22*m.b35 + 15*m.b36 + 5*m.b37 + 81*m.b38 + 81*m.b39 + 40*m.b40 + 44*m.b41 + 50*m.b42
                        + 41*m.b43 + 35*m.b44 + 24*m.b45 + 20*m.b46 + 103*m.b47 + 107*m.b48 + 62*m.b49 + 67*m.b50
                        + 72*m.b51 + 63*m.b52 + 57*m.b53 + 46*m.b54 + 41*m.b55 + 23*m.b56 + 108*m.b57 + 117*m.b58
                        + 66*m.b59 + 71*m.b60 + 77*m.b61 + 68*m.b62 + 61*m.b63 + 51*m.b64 + 46*m.b65 + 26*m.b66
                        + 11*m.b67 + 145*m.b68 + 149*m.b69 + 104*m.b70 + 108*m.b71 + 114*m.b72 + 106*m.b73 + 99*m.b74
                        + 88*m.b75 + 84*m.b76 + 63*m.b77 + 49*m.b78 + 40*m.b79 + 181*m.b80 + 185*m.b81 + 140*m.b82
                        + 144*m.b83 + 150*m.b84 + 142*m.b85 + 135*m.b86 + 124*m.b87 + 120*m.b88 + 99*m.b89 + 85*m.b90
                        + 76*m.b91 + 35*m.b92 + 187*m.b93 + 191*m.b94 + 146*m.b95 + 150*m.b96 + 156*m.b97 + 142*m.b98
                        + 137*m.b99 + 130*m.b100 + 125*m.b101 + 105*m.b102 + 90*m.b103 + 81*m.b104 + 41*m.b105
                        + 10*m.b106 + 161*m.b107 + 170*m.b108 + 120*m.b109 + 124*m.b110 + 130*m.b111 + 115*m.b112
                        + 110*m.b113 + 104*m.b114 + 105*m.b115 + 90*m.b116 + 72*m.b117 + 62*m.b118 + 34*m.b119
                        + 31*m.b120 + 27*m.b121 + 142*m.b122 + 146*m.b123 + 101*m.b124 + 104*m.b125 + 111*m.b126
                        + 97*m.b127 + 91*m.b128 + 85*m.b129 + 86*m.b130 + 75*m.b131 + 51*m.b132 + 59*m.b133 + 29*m.b134
                        + 53*m.b135 + 48*m.b136 + 21*m.b137 + 174*m.b138 + 178*m.b139 + 133*m.b140 + 138*m.b141
                        + 143*m.b142 + 129*m.b143 + 123*m.b144 + 117*m.b145 + 118*m.b146 + 107*m.b147 + 83*m.b148
                        + 84*m.b149 + 54*m.b150 + 46*m.b151 + 35*m.b152 + 26*m.b153 + 31*m.b154 + 185*m.b155
                        + 186*m.b156 + 142*m.b157 + 143*m.b158 + 140*m.b159 + 130*m.b160 + 126*m.b161 + 124*m.b162
                        + 128*m.b163 + 118*m.b164 + 93*m.b165 + 101*m.b166 + 72*m.b167 + 69*m.b168 + 58*m.b169
                        + 58*m.b170 + 43*m.b171 + 26*m.b172 + 164*m.b173 + 165*m.b174 + 120*m.b175 + 123*m.b176
                        + 124*m.b177 + 106*m.b178 + 106*m.b179 + 105*m.b180 + 110*m.b181 + 104*m.b182 + 86*m.b183
                        + 97*m.b184 + 71*m.b185 + 93*m.b186 + 82*m.b187 + 62*m.b188 + 42*m.b189 + 45*m.b190 + 22*m.b191
                        + 137*m.b192 + 139*m.b193 + 94*m.b194 + 96*m.b195 + 94*m.b196 + 80*m.b197 + 78*m.b198
                        + 77*m.b199 + 84*m.b200 + 77*m.b201 + 56*m.b202 + 64*m.b203 + 65*m.b204 + 90*m.b205 + 87*m.b206
                        + 58*m.b207 + 36*m.b208 + 68*m.b209 + 50*m.b210 + 30*m.b211 + 117*m.b212 + 122*m.b213
                        + 77*m.b214 + 80*m.b215 + 83*m.b216 + 68*m.b217 + 62*m.b218 + 60*m.b219 + 61*m.b220 + 50*m.b221
                        + 34*m.b222 + 42*m.b223 + 49*m.b224 + 82*m.b225 + 77*m.b226 + 60*m.b227 + 30*m.b228 + 62*m.b229
                        + 70*m.b230 + 49*m.b231 + 21*m.b232 + 114*m.b233 + 118*m.b234 + 73*m.b235 + 78*m.b236
                        + 84*m.b237 + 69*m.b238 + 63*m.b239 + 57*m.b240 + 59*m.b241 + 48*m.b242 + 28*m.b243 + 36*m.b244
                        + 43*m.b245 + 77*m.b246 + 72*m.b247 + 45*m.b248 + 27*m.b249 + 59*m.b250 + 69*m.b251 + 55*m.b252
                        + 27*m.b253 + 5*m.b254 + 85*m.b255 + 89*m.b256 + 44*m.b257 + 48*m.b258 + 53*m.b259 + 41*m.b260
                        + 34*m.b261 + 28*m.b262 + 29*m.b263 + 22*m.b264 + 23*m.b265 + 35*m.b266 + 69*m.b267 + 105*m.b268
                        + 102*m.b269 + 74*m.b270 + 56*m.b271 + 88*m.b272 + 99*m.b273 + 81*m.b274 + 54*m.b275 + 32*m.b276
                        + 29*m.b277 + 77*m.b278 + 80*m.b279 + 36*m.b280 + 40*m.b281 + 46*m.b282 + 34*m.b283 + 27*m.b284
                        + 19*m.b285 + 21*m.b286 + 14*m.b287 + 29*m.b288 + 40*m.b289 + 77*m.b290 + 114*m.b291
                        + 111*m.b292 + 84*m.b293 + 64*m.b294 + 96*m.b295 + 107*m.b296 + 87*m.b297 + 60*m.b298
                        + 40*m.b299 + 37*m.b300 + 8*m.b301 + 87*m.b302 + 89*m.b303 + 44*m.b304 + 46*m.b305 + 46*m.b306
                        + 30*m.b307 + 28*m.b308 + 29*m.b309 + 32*m.b310 + 27*m.b311 + 36*m.b312 + 47*m.b313 + 78*m.b314
                        + 116*m.b315 + 112*m.b316 + 84*m.b317 + 66*m.b318 + 98*m.b319 + 95*m.b320 + 75*m.b321
                        + 47*m.b322 + 36*m.b323 + 39*m.b324 + 12*m.b325 + 11*m.b326 + 91*m.b327 + 93*m.b328 + 48*m.b329
                        + 50*m.b330 + 48*m.b331 + 34*m.b332 + 32*m.b333 + 33*m.b334 + 36*m.b335 + 30*m.b336 + 34*m.b337
                        + 45*m.b338 + 77*m.b339 + 115*m.b340 + 110*m.b341 + 83*m.b342 + 63*m.b343 + 97*m.b344
                        + 91*m.b345 + 72*m.b346 + 44*m.b347 + 32*m.b348 + 36*m.b349 + 9*m.b350 + 15*m.b351 + 3*m.b352
                        + 105*m.b353 + 106*m.b354 + 62*m.b355 + 63*m.b356 + 64*m.b357 + 47*m.b358 + 46*m.b359
                        + 49*m.b360 + 54*m.b361 + 48*m.b362 + 46*m.b363 + 59*m.b364 + 85*m.b365 + 119*m.b366
                        + 115*m.b367 + 88*m.b368 + 66*m.b369 + 98*m.b370 + 79*m.b371 + 59*m.b372 + 31*m.b373 + 36*m.b374
                        + 42*m.b375 + 28*m.b376 + 33*m.b377 + 21*m.b378 + 20*m.b379 + 111*m.b380 + 113*m.b381
                        + 69*m.b382 + 71*m.b383 + 66*m.b384 + 51*m.b385 + 53*m.b386 + 56*m.b387 + 61*m.b388 + 57*m.b389
                        + 59*m.b390 + 71*m.b391 + 96*m.b392 + 130*m.b393 + 126*m.b394 + 98*m.b395 + 75*m.b396
                        + 98*m.b397 + 85*m.b398 + 62*m.b399 + 38*m.b400 + 47*m.b401 + 53*m.b402 + 39*m.b403 + 42*m.b404
                        + 29*m.b405 + 30*m.b406 + 12*m.b407 + 91*m.b408 + 92*m.b409 + 50*m.b410 + 51*m.b411 + 46*m.b412
                        + 30*m.b413 + 34*m.b414 + 38*m.b415 + 43*m.b416 + 49*m.b417 + 60*m.b418 + 71*m.b419 + 103*m.b420
                        + 141*m.b421 + 136*m.b422 + 109*m.b423 + 90*m.b424 + 115*m.b425 + 99*m.b426 + 81*m.b427
                        + 53*m.b428 + 61*m.b429 + 62*m.b430 + 36*m.b431 + 34*m.b432 + 24*m.b433 + 28*m.b434 + 20*m.b435
                        + 20*m.b436 + 83*m.b437 + 85*m.b438 + 42*m.b439 + 43*m.b440 + 38*m.b441 + 22*m.b442 + 26*m.b443
                        + 32*m.b444 + 36*m.b445 + 51*m.b446 + 63*m.b447 + 75*m.b448 + 106*m.b449 + 142*m.b450
                        + 140*m.b451 + 112*m.b452 + 93*m.b453 + 126*m.b454 + 108*m.b455 + 88*m.b456 + 60*m.b457
                        + 64*m.b458 + 66*m.b459 + 39*m.b460 + 36*m.b461 + 27*m.b462 + 31*m.b463 + 28*m.b464 + 28*m.b465
                        + 8*m.b466 + 89*m.b467 + 91*m.b468 + 55*m.b469 + 55*m.b470 + 50*m.b471 + 34*m.b472 + 39*m.b473
                        + 44*m.b474 + 49*m.b475 + 63*m.b476 + 76*m.b477 + 87*m.b478 + 120*m.b479 + 155*m.b480
                        + 150*m.b481 + 123*m.b482 + 100*m.b483 + 123*m.b484 + 109*m.b485 + 86*m.b486 + 62*m.b487
                        + 71*m.b488 + 78*m.b489 + 52*m.b490 + 49*m.b491 + 39*m.b492 + 44*m.b493 + 35*m.b494 + 24*m.b495
                        + 15*m.b496 + 12*m.b497 + 95*m.b498 + 97*m.b499 + 64*m.b500 + 63*m.b501 + 56*m.b502 + 42*m.b503
                        + 49*m.b504 + 56*m.b505 + 60*m.b506 + 75*m.b507 + 86*m.b508 + 97*m.b509 + 126*m.b510
                        + 160*m.b511 + 155*m.b512 + 128*m.b513 + 104*m.b514 + 128*m.b515 + 113*m.b516 + 90*m.b517
                        + 67*m.b518 + 76*m.b519 + 82*m.b520 + 62*m.b521 + 59*m.b522 + 49*m.b523 + 53*m.b524 + 40*m.b525
                        + 29*m.b526 + 25*m.b527 + 23*m.b528 + 11*m.b529 + 74*m.b530 + 81*m.b531 + 44*m.b532 + 43*m.b533
                        + 35*m.b534 + 23*m.b535 + 30*m.b536 + 39*m.b537 + 44*m.b538 + 62*m.b539 + 78*m.b540 + 89*m.b541
                        + 121*m.b542 + 159*m.b543 + 155*m.b544 + 127*m.b545 + 108*m.b546 + 136*m.b547 + 124*m.b548
                        + 101*m.b549 + 75*m.b550 + 79*m.b551 + 81*m.b552 + 54*m.b553 + 50*m.b554 + 42*m.b555 + 46*m.b556
                        + 43*m.b557 + 39*m.b558 + 23*m.b559 + 14*m.b560 + 14*m.b561 + 21*m.b562 + 67*m.b563 + 69*m.b564
                        + 42*m.b565 + 41*m.b566 + 31*m.b567 + 25*m.b568 + 32*m.b569 + 41*m.b570 + 46*m.b571 + 64*m.b572
                        + 83*m.b573 + 90*m.b574 + 130*m.b575 + 164*m.b576 + 160*m.b577 + 133*m.b578 + 114*m.b579
                        + 146*m.b580 + 134*m.b581 + 111*m.b582 + 85*m.b583 + 84*m.b584 + 86*m.b585 + 59*m.b586
                        + 52*m.b587 + 47*m.b588 + 51*m.b589 + 53*m.b590 + 49*m.b591 + 32*m.b592 + 24*m.b593 + 24*m.b594
                        + 30*m.b595 + 9*m.b596 + 74*m.b597 + 76*m.b598 + 61*m.b599 + 60*m.b600 + 42*m.b601 + 44*m.b602
                        + 51*m.b603 + 60*m.b604 + 66*m.b605 + 83*m.b606 + 102*m.b607 + 110*m.b608 + 147*m.b609
                        + 185*m.b610 + 179*m.b611 + 155*m.b612 + 133*m.b613 + 159*m.b614 + 146*m.b615 + 122*m.b616
                        + 98*m.b617 + 105*m.b618 + 107*m.b619 + 79*m.b620 + 71*m.b621 + 66*m.b622 + 70*m.b623
                        + 70*m.b624 + 60*m.b625 + 48*m.b626 + 40*m.b627 + 36*m.b628 + 33*m.b629 + 25*m.b630 + 18*m.b631
                        + 57*m.b632 + 59*m.b633 + 46*m.b634 + 41*m.b635 + 25*m.b636 + 30*m.b637 + 36*m.b638 + 47*m.b639
                        + 52*m.b640 + 71*m.b641 + 93*m.b642 + 98*m.b643 + 136*m.b644 + 172*m.b645 + 172*m.b646
                        + 148*m.b647 + 126*m.b648 + 158*m.b649 + 147*m.b650 + 124*m.b651 + 121*m.b652 + 97*m.b653
                        + 99*m.b654 + 71*m.b655 + 65*m.b656 + 59*m.b657 + 63*m.b658 + 67*m.b659 + 62*m.b660 + 46*m.b661
                        + 38*m.b662 + 37*m.b663 + 43*m.b664 + 23*m.b665 + 13*m.b666 + 17*m.b667 + 45*m.b668 + 46*m.b669
                        + 41*m.b670 + 34*m.b671 + 20*m.b672 + 34*m.b673 + 38*m.b674 + 48*m.b675 + 53*m.b676 + 73*m.b677
                        + 96*m.b678 + 99*m.b679 + 137*m.b680 + 176*m.b681 + 178*m.b682 + 151*m.b683 + 131*m.b684
                        + 163*m.b685 + 159*m.b686 + 135*m.b687 + 108*m.b688 + 102*m.b689 + 103*m.b690 + 73*m.b691
                        + 67*m.b692 + 64*m.b693 + 69*m.b694 + 75*m.b695 + 72*m.b696 + 54*m.b697 + 46*m.b698 + 49*m.b699
                        + 54*m.b700 + 34*m.b701 + 24*m.b702 + 29*m.b703 + 12*m.b704 + 35*m.b705 + 37*m.b706 + 35*m.b707
                        + 26*m.b708 + 18*m.b709 + 34*m.b710 + 36*m.b711 + 46*m.b712 + 51*m.b713 + 70*m.b714 + 93*m.b715
                        + 97*m.b716 + 134*m.b717 + 171*m.b718 + 176*m.b719 + 151*m.b720 + 129*m.b721 + 161*m.b722
                        + 163*m.b723 + 139*m.b724 + 118*m.b725 + 102*m.b726 + 101*m.b727 + 71*m.b728 + 65*m.b729
                        + 65*m.b730 + 70*m.b731 + 84*m.b732 + 78*m.b733 + 58*m.b734 + 50*m.b735 + 56*m.b736 + 62*m.b737
                        + 41*m.b738 + 32*m.b739 + 38*m.b740 + 21*m.b741 + 9*m.b742 + 29*m.b743 + 33*m.b744 + 30*m.b745
                        + 21*m.b746 + 18*m.b747 + 35*m.b748 + 33*m.b749 + 40*m.b750 + 45*m.b751 + 65*m.b752 + 87*m.b753
                        + 91*m.b754 + 117*m.b755 + 166*m.b756 + 171*m.b757 + 144*m.b758 + 125*m.b759 + 157*m.b760
                        + 156*m.b761 + 139*m.b762 + 113*m.b763 + 95*m.b764 + 97*m.b765 + 67*m.b766 + 60*m.b767
                        + 62*m.b768 + 67*m.b769 + 79*m.b770 + 82*m.b771 + 62*m.b772 + 53*m.b773 + 59*m.b774 + 66*m.b775
                        + 45*m.b776 + 38*m.b777 + 45*m.b778 + 27*m.b779 + 15*m.b780 + 6*m.b781 + 3*m.b782 + 11*m.b783
                        + 41*m.b784 + 37*m.b785 + 47*m.b786 + 57*m.b787 + 55*m.b788 + 58*m.b789 + 63*m.b790 + 83*m.b791
                        + 105*m.b792 + 109*m.b793 + 147*m.b794 + 186*m.b795 + 188*m.b796 + 164*m.b797 + 144*m.b798
                        + 176*m.b799 + 182*m.b800 + 161*m.b801 + 134*m.b802 + 119*m.b803 + 116*m.b804 + 86*m.b805
                        + 78*m.b806 + 84*m.b807 + 88*m.b808 + 101*m.b809 + 108*m.b810 + 88*m.b811 + 80*m.b812
                        + 86*m.b813 + 92*m.b814 + 71*m.b815 + 64*m.b816 + 71*m.b817 + 54*m.b818 + 41*m.b819 + 32*m.b820
                        + 25*m.b821 + 5*m.b822 + 12*m.b823 + 55*m.b824 + 41*m.b825 + 53*m.b826 + 64*m.b827 + 61*m.b828
                        + 61*m.b829 + 66*m.b830 + 84*m.b831 + 111*m.b832 + 113*m.b833 + 150*m.b834 + 186*m.b835
                        + 192*m.b836 + 166*m.b837 + 147*m.b838 + 180*m.b839 + 188*m.b840 + 167*m.b841 + 140*m.b842
                        + 124*m.b843 + 119*m.b844 + 90*m.b845 + 87*m.b846 + 90*m.b847 + 94*m.b848 + 107*m.b849
                        + 114*m.b850 + 77*m.b851 + 86*m.b852 + 92*m.b853 + 98*m.b854 + 80*m.b855 + 74*m.b856 + 77*m.b857
                        + 60*m.b858 + 48*m.b859 + 38*m.b860 + 32*m.b861 + 6*m.b862, sense=minimize)

m.c2 = Constraint(expr=   m.b2 + m.b3 + m.b5 + m.b8 + m.b12 + m.b17 + m.b23 + m.b30 + m.b38 + m.b47 + m.b57 + m.b68
                        + m.b80 + m.b93 + m.b107 + m.b122 + m.b138 + m.b155 + m.b173 + m.b192 + m.b212 + m.b233 + m.b255
                        + m.b278 + m.b302 + m.b327 + m.b353 + m.b380 + m.b408 + m.b437 + m.b467 + m.b498 + m.b530
                        + m.b563 + m.b597 + m.b632 + m.b668 + m.b705 + m.b743 + m.b782 + m.b822 == 2)

m.c3 = Constraint(expr=   m.b2 + m.b4 + m.b6 + m.b9 + m.b13 + m.b18 + m.b24 + m.b31 + m.b39 + m.b48 + m.b58 + m.b69
                        + m.b81 + m.b94 + m.b108 + m.b123 + m.b139 + m.b156 + m.b174 + m.b193 + m.b213 + m.b234 + m.b256
                        + m.b279 + m.b303 + m.b328 + m.b354 + m.b381 + m.b409 + m.b438 + m.b468 + m.b499 + m.b531
                        + m.b564 + m.b598 + m.b633 + m.b669 + m.b706 + m.b744 + m.b783 + m.b823 == 2)

m.c4 = Constraint(expr=   m.b3 + m.b4 + m.b7 + m.b10 + m.b14 + m.b19 + m.b25 + m.b32 + m.b40 + m.b49 + m.b59 + m.b70
                        + m.b82 + m.b95 + m.b109 + m.b124 + m.b140 + m.b157 + m.b175 + m.b194 + m.b214 + m.b235 + m.b257
                        + m.b280 + m.b304 + m.b329 + m.b355 + m.b382 + m.b410 + m.b439 + m.b469 + m.b500 + m.b532
                        + m.b565 + m.b599 + m.b634 + m.b670 + m.b707 + m.b745 + m.b784 + m.b824 == 2)

m.c5 = Constraint(expr=   m.b5 + m.b6 + m.b7 + m.b11 + m.b15 + m.b20 + m.b26 + m.b33 + m.b41 + m.b50 + m.b60 + m.b71
                        + m.b83 + m.b96 + m.b110 + m.b125 + m.b141 + m.b158 + m.b176 + m.b195 + m.b215 + m.b236 + m.b258
                        + m.b281 + m.b305 + m.b330 + m.b356 + m.b383 + m.b411 + m.b440 + m.b470 + m.b501 + m.b533
                        + m.b566 + m.b600 + m.b635 + m.b671 + m.b708 + m.b746 + m.b785 + m.b825 == 2)

m.c6 = Constraint(expr=   m.b8 + m.b9 + m.b10 + m.b11 + m.b16 + m.b21 + m.b27 + m.b34 + m.b42 + m.b51 + m.b61 + m.b72
                        + m.b84 + m.b97 + m.b111 + m.b126 + m.b142 + m.b159 + m.b177 + m.b196 + m.b216 + m.b237 + m.b259
                        + m.b282 + m.b306 + m.b331 + m.b357 + m.b384 + m.b412 + m.b441 + m.b471 + m.b502 + m.b534
                        + m.b567 + m.b601 + m.b636 + m.b672 + m.b709 + m.b747 + m.b786 + m.b826 == 2)

m.c7 = Constraint(expr=   m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b22 + m.b28 + m.b35 + m.b43 + m.b52 + m.b62 + m.b73
                        + m.b85 + m.b98 + m.b112 + m.b127 + m.b143 + m.b160 + m.b178 + m.b197 + m.b217 + m.b238 + m.b260
                        + m.b283 + m.b307 + m.b332 + m.b358 + m.b385 + m.b413 + m.b442 + m.b472 + m.b503 + m.b535
                        + m.b568 + m.b602 + m.b637 + m.b673 + m.b710 + m.b748 + m.b787 + m.b827 == 2)

m.c8 = Constraint(expr=   m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b29 + m.b36 + m.b44 + m.b53 + m.b63 + m.b74
                        + m.b86 + m.b99 + m.b113 + m.b128 + m.b144 + m.b161 + m.b179 + m.b198 + m.b218 + m.b239 + m.b261
                        + m.b284 + m.b308 + m.b333 + m.b359 + m.b386 + m.b414 + m.b443 + m.b473 + m.b504 + m.b536
                        + m.b569 + m.b603 + m.b638 + m.b674 + m.b711 + m.b749 + m.b788 + m.b828 == 2)

m.c9 = Constraint(expr=   m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b37 + m.b45 + m.b54 + m.b64 + m.b75
                        + m.b87 + m.b100 + m.b114 + m.b129 + m.b145 + m.b162 + m.b180 + m.b199 + m.b219 + m.b240
                        + m.b262 + m.b285 + m.b309 + m.b334 + m.b360 + m.b387 + m.b415 + m.b444 + m.b474 + m.b505
                        + m.b537 + m.b570 + m.b604 + m.b639 + m.b675 + m.b712 + m.b750 + m.b789 + m.b829 == 2)

m.c10 = Constraint(expr=   m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b46 + m.b55 + m.b65 + m.b76
                         + m.b88 + m.b101 + m.b115 + m.b130 + m.b146 + m.b163 + m.b181 + m.b200 + m.b220 + m.b241
                         + m.b263 + m.b286 + m.b310 + m.b335 + m.b361 + m.b388 + m.b416 + m.b445 + m.b475 + m.b506
                         + m.b538 + m.b571 + m.b605 + m.b640 + m.b676 + m.b713 + m.b751 + m.b790 + m.b830 == 2)

m.c11 = Constraint(expr=   m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b56 + m.b66 + m.b77
                         + m.b89 + m.b102 + m.b116 + m.b131 + m.b147 + m.b164 + m.b182 + m.b201 + m.b221 + m.b242
                         + m.b264 + m.b287 + m.b311 + m.b336 + m.b362 + m.b389 + m.b417 + m.b446 + m.b476 + m.b507
                         + m.b539 + m.b572 + m.b606 + m.b641 + m.b677 + m.b714 + m.b752 + m.b791 + m.b831 == 2)

m.c12 = Constraint(expr=   m.b47 + m.b48 + m.b49 + m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b67 + m.b78
                         + m.b90 + m.b103 + m.b117 + m.b132 + m.b148 + m.b165 + m.b183 + m.b202 + m.b222 + m.b243
                         + m.b265 + m.b288 + m.b312 + m.b337 + m.b363 + m.b390 + m.b418 + m.b447 + m.b477 + m.b508
                         + m.b540 + m.b573 + m.b607 + m.b642 + m.b678 + m.b715 + m.b753 + m.b792 + m.b832 == 2)

m.c13 = Constraint(expr=   m.b57 + m.b58 + m.b59 + m.b60 + m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b79
                         + m.b91 + m.b104 + m.b118 + m.b133 + m.b149 + m.b166 + m.b184 + m.b203 + m.b223 + m.b244
                         + m.b266 + m.b289 + m.b313 + m.b338 + m.b364 + m.b391 + m.b419 + m.b448 + m.b478 + m.b509
                         + m.b541 + m.b574 + m.b608 + m.b643 + m.b679 + m.b716 + m.b754 + m.b793 + m.b833 == 2)

m.c14 = Constraint(expr=   m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 + m.b78 + m.b79
                         + m.b92 + m.b105 + m.b119 + m.b134 + m.b150 + m.b167 + m.b185 + m.b204 + m.b224 + m.b245
                         + m.b267 + m.b290 + m.b314 + m.b339 + m.b365 + m.b392 + m.b420 + m.b449 + m.b479 + m.b510
                         + m.b542 + m.b575 + m.b609 + m.b644 + m.b680 + m.b717 + m.b755 + m.b794 + m.b834 == 2)

m.c15 = Constraint(expr=   m.b80 + m.b81 + m.b82 + m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 + m.b91
                         + m.b92 + m.b106 + m.b120 + m.b135 + m.b151 + m.b168 + m.b186 + m.b205 + m.b225 + m.b246
                         + m.b268 + m.b291 + m.b315 + m.b340 + m.b366 + m.b393 + m.b421 + m.b450 + m.b480 + m.b511
                         + m.b543 + m.b576 + m.b610 + m.b645 + m.b681 + m.b718 + m.b756 + m.b795 + m.b835 == 2)

m.c16 = Constraint(expr=   m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 + m.b101 + m.b102 + m.b103
                         + m.b104 + m.b105 + m.b106 + m.b121 + m.b136 + m.b152 + m.b169 + m.b187 + m.b206 + m.b226
                         + m.b247 + m.b269 + m.b292 + m.b316 + m.b341 + m.b367 + m.b394 + m.b422 + m.b451 + m.b481
                         + m.b512 + m.b544 + m.b577 + m.b611 + m.b646 + m.b682 + m.b719 + m.b757 + m.b796 + m.b836 == 2)

m.c17 = Constraint(expr=   m.b107 + m.b108 + m.b109 + m.b110 + m.b111 + m.b112 + m.b113 + m.b114 + m.b115 + m.b116
                         + m.b117 + m.b118 + m.b119 + m.b120 + m.b121 + m.b137 + m.b153 + m.b170 + m.b188 + m.b207
                         + m.b227 + m.b248 + m.b270 + m.b293 + m.b317 + m.b342 + m.b368 + m.b395 + m.b423 + m.b452
                         + m.b482 + m.b513 + m.b545 + m.b578 + m.b612 + m.b647 + m.b683 + m.b720 + m.b758 + m.b797
                         + m.b837 == 2)

m.c18 = Constraint(expr=   m.b122 + m.b123 + m.b124 + m.b125 + m.b126 + m.b127 + m.b128 + m.b129 + m.b130 + m.b131
                         + m.b132 + m.b133 + m.b134 + m.b135 + m.b136 + m.b137 + m.b154 + m.b171 + m.b189 + m.b208
                         + m.b228 + m.b249 + m.b271 + m.b294 + m.b318 + m.b343 + m.b369 + m.b396 + m.b424 + m.b453
                         + m.b483 + m.b514 + m.b546 + m.b579 + m.b613 + m.b648 + m.b684 + m.b721 + m.b759 + m.b798
                         + m.b838 == 2)

m.c19 = Constraint(expr=   m.b138 + m.b139 + m.b140 + m.b141 + m.b142 + m.b143 + m.b144 + m.b145 + m.b146 + m.b147
                         + m.b148 + m.b149 + m.b150 + m.b151 + m.b152 + m.b153 + m.b154 + m.b172 + m.b190 + m.b209
                         + m.b229 + m.b250 + m.b272 + m.b295 + m.b319 + m.b344 + m.b370 + m.b397 + m.b425 + m.b454
                         + m.b484 + m.b515 + m.b547 + m.b580 + m.b614 + m.b649 + m.b685 + m.b722 + m.b760 + m.b799
                         + m.b839 == 2)

m.c20 = Constraint(expr=   m.b155 + m.b156 + m.b157 + m.b158 + m.b159 + m.b160 + m.b161 + m.b162 + m.b163 + m.b164
                         + m.b165 + m.b166 + m.b167 + m.b168 + m.b169 + m.b170 + m.b171 + m.b172 + m.b191 + m.b210
                         + m.b230 + m.b251 + m.b273 + m.b296 + m.b320 + m.b345 + m.b371 + m.b398 + m.b426 + m.b455
                         + m.b485 + m.b516 + m.b548 + m.b581 + m.b615 + m.b650 + m.b686 + m.b723 + m.b761 + m.b800
                         + m.b840 == 2)

m.c21 = Constraint(expr=   m.b173 + m.b174 + m.b175 + m.b176 + m.b177 + m.b178 + m.b179 + m.b180 + m.b181 + m.b182
                         + m.b183 + m.b184 + m.b185 + m.b186 + m.b187 + m.b188 + m.b189 + m.b190 + m.b191 + m.b211
                         + m.b231 + m.b252 + m.b274 + m.b297 + m.b321 + m.b346 + m.b372 + m.b399 + m.b427 + m.b456
                         + m.b486 + m.b517 + m.b549 + m.b582 + m.b616 + m.b651 + m.b687 + m.b724 + m.b762 + m.b801
                         + m.b841 == 2)

m.c22 = Constraint(expr=   m.b192 + m.b193 + m.b194 + m.b195 + m.b196 + m.b197 + m.b198 + m.b199 + m.b200 + m.b201
                         + m.b202 + m.b203 + m.b204 + m.b205 + m.b206 + m.b207 + m.b208 + m.b209 + m.b210 + m.b211
                         + m.b232 + m.b253 + m.b275 + m.b298 + m.b322 + m.b347 + m.b373 + m.b400 + m.b428 + m.b457
                         + m.b487 + m.b518 + m.b550 + m.b583 + m.b617 + m.b652 + m.b688 + m.b725 + m.b763 + m.b802
                         + m.b842 == 2)

m.c23 = Constraint(expr=   m.b212 + m.b213 + m.b214 + m.b215 + m.b216 + m.b217 + m.b218 + m.b219 + m.b220 + m.b221
                         + m.b222 + m.b223 + m.b224 + m.b225 + m.b226 + m.b227 + m.b228 + m.b229 + m.b230 + m.b231
                         + m.b232 + m.b254 + m.b276 + m.b299 + m.b323 + m.b348 + m.b374 + m.b401 + m.b429 + m.b458
                         + m.b488 + m.b519 + m.b551 + m.b584 + m.b618 + m.b653 + m.b689 + m.b726 + m.b764 + m.b803
                         + m.b843 == 2)

m.c24 = Constraint(expr=   m.b233 + m.b234 + m.b235 + m.b236 + m.b237 + m.b238 + m.b239 + m.b240 + m.b241 + m.b242
                         + m.b243 + m.b244 + m.b245 + m.b246 + m.b247 + m.b248 + m.b249 + m.b250 + m.b251 + m.b252
                         + m.b253 + m.b254 + m.b277 + m.b300 + m.b324 + m.b349 + m.b375 + m.b402 + m.b430 + m.b459
                         + m.b489 + m.b520 + m.b552 + m.b585 + m.b619 + m.b654 + m.b690 + m.b727 + m.b765 + m.b804
                         + m.b844 == 2)

m.c25 = Constraint(expr=   m.b255 + m.b256 + m.b257 + m.b258 + m.b259 + m.b260 + m.b261 + m.b262 + m.b263 + m.b264
                         + m.b265 + m.b266 + m.b267 + m.b268 + m.b269 + m.b270 + m.b271 + m.b272 + m.b273 + m.b274
                         + m.b275 + m.b276 + m.b277 + m.b301 + m.b325 + m.b350 + m.b376 + m.b403 + m.b431 + m.b460
                         + m.b490 + m.b521 + m.b553 + m.b586 + m.b620 + m.b655 + m.b691 + m.b728 + m.b766 + m.b805
                         + m.b845 == 2)

m.c26 = Constraint(expr=   m.b278 + m.b279 + m.b280 + m.b281 + m.b282 + m.b283 + m.b284 + m.b285 + m.b286 + m.b287
                         + m.b288 + m.b289 + m.b290 + m.b291 + m.b292 + m.b293 + m.b294 + m.b295 + m.b296 + m.b297
                         + m.b298 + m.b299 + m.b300 + m.b301 + m.b326 + m.b351 + m.b377 + m.b404 + m.b432 + m.b461
                         + m.b491 + m.b522 + m.b554 + m.b587 + m.b621 + m.b656 + m.b692 + m.b729 + m.b767 + m.b806
                         + m.b846 == 2)

m.c27 = Constraint(expr=   m.b302 + m.b303 + m.b304 + m.b305 + m.b306 + m.b307 + m.b308 + m.b309 + m.b310 + m.b311
                         + m.b312 + m.b313 + m.b314 + m.b315 + m.b316 + m.b317 + m.b318 + m.b319 + m.b320 + m.b321
                         + m.b322 + m.b323 + m.b324 + m.b325 + m.b326 + m.b352 + m.b378 + m.b405 + m.b433 + m.b462
                         + m.b492 + m.b523 + m.b555 + m.b588 + m.b622 + m.b657 + m.b693 + m.b730 + m.b768 + m.b807
                         + m.b847 == 2)

m.c28 = Constraint(expr=   m.b327 + m.b328 + m.b329 + m.b330 + m.b331 + m.b332 + m.b333 + m.b334 + m.b335 + m.b336
                         + m.b337 + m.b338 + m.b339 + m.b340 + m.b341 + m.b342 + m.b343 + m.b344 + m.b345 + m.b346
                         + m.b347 + m.b348 + m.b349 + m.b350 + m.b351 + m.b352 + m.b379 + m.b406 + m.b434 + m.b463
                         + m.b493 + m.b524 + m.b556 + m.b589 + m.b623 + m.b658 + m.b694 + m.b731 + m.b769 + m.b808
                         + m.b848 == 2)

m.c29 = Constraint(expr=   m.b353 + m.b354 + m.b355 + m.b356 + m.b357 + m.b358 + m.b359 + m.b360 + m.b361 + m.b362
                         + m.b363 + m.b364 + m.b365 + m.b366 + m.b367 + m.b368 + m.b369 + m.b370 + m.b371 + m.b372
                         + m.b373 + m.b374 + m.b375 + m.b376 + m.b377 + m.b378 + m.b379 + m.b407 + m.b435 + m.b464
                         + m.b494 + m.b525 + m.b557 + m.b590 + m.b624 + m.b659 + m.b695 + m.b732 + m.b770 + m.b809
                         + m.b849 == 2)

m.c30 = Constraint(expr=   m.b380 + m.b381 + m.b382 + m.b383 + m.b384 + m.b385 + m.b386 + m.b387 + m.b388 + m.b389
                         + m.b390 + m.b391 + m.b392 + m.b393 + m.b394 + m.b395 + m.b396 + m.b397 + m.b398 + m.b399
                         + m.b400 + m.b401 + m.b402 + m.b403 + m.b404 + m.b405 + m.b406 + m.b407 + m.b436 + m.b465
                         + m.b495 + m.b526 + m.b558 + m.b591 + m.b625 + m.b660 + m.b696 + m.b733 + m.b771 + m.b810
                         + m.b850 == 2)

m.c31 = Constraint(expr=   m.b408 + m.b409 + m.b410 + m.b411 + m.b412 + m.b413 + m.b414 + m.b415 + m.b416 + m.b417
                         + m.b418 + m.b419 + m.b420 + m.b421 + m.b422 + m.b423 + m.b424 + m.b425 + m.b426 + m.b427
                         + m.b428 + m.b429 + m.b430 + m.b431 + m.b432 + m.b433 + m.b434 + m.b435 + m.b436 + m.b466
                         + m.b496 + m.b527 + m.b559 + m.b592 + m.b626 + m.b661 + m.b697 + m.b734 + m.b772 + m.b811
                         + m.b851 == 2)

m.c32 = Constraint(expr=   m.b437 + m.b438 + m.b439 + m.b440 + m.b441 + m.b442 + m.b443 + m.b444 + m.b445 + m.b446
                         + m.b447 + m.b448 + m.b449 + m.b450 + m.b451 + m.b452 + m.b453 + m.b454 + m.b455 + m.b456
                         + m.b457 + m.b458 + m.b459 + m.b460 + m.b461 + m.b462 + m.b463 + m.b464 + m.b465 + m.b466
                         + m.b497 + m.b528 + m.b560 + m.b593 + m.b627 + m.b662 + m.b698 + m.b735 + m.b773 + m.b812
                         + m.b852 == 2)

m.c33 = Constraint(expr=   m.b467 + m.b468 + m.b469 + m.b470 + m.b471 + m.b472 + m.b473 + m.b474 + m.b475 + m.b476
                         + m.b477 + m.b478 + m.b479 + m.b480 + m.b481 + m.b482 + m.b483 + m.b484 + m.b485 + m.b486
                         + m.b487 + m.b488 + m.b489 + m.b490 + m.b491 + m.b492 + m.b493 + m.b494 + m.b495 + m.b496
                         + m.b497 + m.b529 + m.b561 + m.b594 + m.b628 + m.b663 + m.b699 + m.b736 + m.b774 + m.b813
                         + m.b853 == 2)

m.c34 = Constraint(expr=   m.b498 + m.b499 + m.b500 + m.b501 + m.b502 + m.b503 + m.b504 + m.b505 + m.b506 + m.b507
                         + m.b508 + m.b509 + m.b510 + m.b511 + m.b512 + m.b513 + m.b514 + m.b515 + m.b516 + m.b517
                         + m.b518 + m.b519 + m.b520 + m.b521 + m.b522 + m.b523 + m.b524 + m.b525 + m.b526 + m.b527
                         + m.b528 + m.b529 + m.b562 + m.b595 + m.b629 + m.b664 + m.b700 + m.b737 + m.b775 + m.b814
                         + m.b854 == 2)

m.c35 = Constraint(expr=   m.b530 + m.b531 + m.b532 + m.b533 + m.b534 + m.b535 + m.b536 + m.b537 + m.b538 + m.b539
                         + m.b540 + m.b541 + m.b542 + m.b543 + m.b544 + m.b545 + m.b546 + m.b547 + m.b548 + m.b549
                         + m.b550 + m.b551 + m.b552 + m.b553 + m.b554 + m.b555 + m.b556 + m.b557 + m.b558 + m.b559
                         + m.b560 + m.b561 + m.b562 + m.b596 + m.b630 + m.b665 + m.b701 + m.b738 + m.b776 + m.b815
                         + m.b855 == 2)

m.c36 = Constraint(expr=   m.b563 + m.b564 + m.b565 + m.b566 + m.b567 + m.b568 + m.b569 + m.b570 + m.b571 + m.b572
                         + m.b573 + m.b574 + m.b575 + m.b576 + m.b577 + m.b578 + m.b579 + m.b580 + m.b581 + m.b582
                         + m.b583 + m.b584 + m.b585 + m.b586 + m.b587 + m.b588 + m.b589 + m.b590 + m.b591 + m.b592
                         + m.b593 + m.b594 + m.b595 + m.b596 + m.b631 + m.b666 + m.b702 + m.b739 + m.b777 + m.b816
                         + m.b856 == 2)

m.c37 = Constraint(expr=   m.b597 + m.b598 + m.b599 + m.b600 + m.b601 + m.b602 + m.b603 + m.b604 + m.b605 + m.b606
                         + m.b607 + m.b608 + m.b609 + m.b610 + m.b611 + m.b612 + m.b613 + m.b614 + m.b615 + m.b616
                         + m.b617 + m.b618 + m.b619 + m.b620 + m.b621 + m.b622 + m.b623 + m.b624 + m.b625 + m.b626
                         + m.b627 + m.b628 + m.b629 + m.b630 + m.b631 + m.b667 + m.b703 + m.b740 + m.b778 + m.b817
                         + m.b857 == 2)

m.c38 = Constraint(expr=   m.b632 + m.b633 + m.b634 + m.b635 + m.b636 + m.b637 + m.b638 + m.b639 + m.b640 + m.b641
                         + m.b642 + m.b643 + m.b644 + m.b645 + m.b646 + m.b647 + m.b648 + m.b649 + m.b650 + m.b651
                         + m.b652 + m.b653 + m.b654 + m.b655 + m.b656 + m.b657 + m.b658 + m.b659 + m.b660 + m.b661
                         + m.b662 + m.b663 + m.b664 + m.b665 + m.b666 + m.b667 + m.b704 + m.b741 + m.b779 + m.b818
                         + m.b858 == 2)

m.c39 = Constraint(expr=   m.b668 + m.b669 + m.b670 + m.b671 + m.b672 + m.b673 + m.b674 + m.b675 + m.b676 + m.b677
                         + m.b678 + m.b679 + m.b680 + m.b681 + m.b682 + m.b683 + m.b684 + m.b685 + m.b686 + m.b687
                         + m.b688 + m.b689 + m.b690 + m.b691 + m.b692 + m.b693 + m.b694 + m.b695 + m.b696 + m.b697
                         + m.b698 + m.b699 + m.b700 + m.b701 + m.b702 + m.b703 + m.b704 + m.b742 + m.b780 + m.b819
                         + m.b859 == 2)

m.c40 = Constraint(expr=   m.b705 + m.b706 + m.b707 + m.b708 + m.b709 + m.b710 + m.b711 + m.b712 + m.b713 + m.b714
                         + m.b715 + m.b716 + m.b717 + m.b718 + m.b719 + m.b720 + m.b721 + m.b722 + m.b723 + m.b724
                         + m.b725 + m.b726 + m.b727 + m.b728 + m.b729 + m.b730 + m.b731 + m.b732 + m.b733 + m.b734
                         + m.b735 + m.b736 + m.b737 + m.b738 + m.b739 + m.b740 + m.b741 + m.b742 + m.b781 + m.b820
                         + m.b860 == 2)

m.c41 = Constraint(expr=   m.b743 + m.b744 + m.b745 + m.b746 + m.b747 + m.b748 + m.b749 + m.b750 + m.b751 + m.b752
                         + m.b753 + m.b754 + m.b755 + m.b756 + m.b757 + m.b758 + m.b759 + m.b760 + m.b761 + m.b762
                         + m.b763 + m.b764 + m.b765 + m.b766 + m.b767 + m.b768 + m.b769 + m.b770 + m.b771 + m.b772
                         + m.b773 + m.b774 + m.b775 + m.b776 + m.b777 + m.b778 + m.b779 + m.b780 + m.b781 + m.b821
                         + m.b861 == 2)

m.c42 = Constraint(expr=   m.b782 + m.b783 + m.b784 + m.b785 + m.b786 + m.b787 + m.b788 + m.b789 + m.b790 + m.b791
                         + m.b792 + m.b793 + m.b794 + m.b795 + m.b796 + m.b797 + m.b798 + m.b799 + m.b800 + m.b801
                         + m.b802 + m.b803 + m.b804 + m.b805 + m.b806 + m.b807 + m.b808 + m.b809 + m.b810 + m.b811
                         + m.b812 + m.b813 + m.b814 + m.b815 + m.b816 + m.b817 + m.b818 + m.b819 + m.b820 + m.b821
                         + m.b862 == 2)

m.c43 = Constraint(expr=   m.b822 + m.b823 + m.b824 + m.b825 + m.b826 + m.b827 + m.b828 + m.b829 + m.b830 + m.b831
                         + m.b832 + m.b833 + m.b834 + m.b835 + m.b836 + m.b837 + m.b838 + m.b839 + m.b840 + m.b841
                         + m.b842 + m.b843 + m.b844 + m.b845 + m.b846 + m.b847 + m.b848 + m.b849 + m.b850 + m.b851
                         + m.b852 + m.b853 + m.b854 + m.b855 + m.b856 + m.b857 + m.b858 + m.b859 + m.b860 + m.b861
                         + m.b862 == 2)
