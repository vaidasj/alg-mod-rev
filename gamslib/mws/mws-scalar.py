#  MIP written by GAMS Convert at 12/13/18 11:30:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        843        1        0      842        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        848        6      842        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       5895     5895        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


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
m.x843 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x844 = Var(within=Reals,bounds=(-10,10),initialize=0)
m.x845 = Var(within=Reals,bounds=(-10,10),initialize=0)
m.x846 = Var(within=Reals,bounds=(-10,10),initialize=0)
m.x847 = Var(within=Reals,bounds=(-10,10),initialize=0)

m.obj = Objective(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13
                        + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25
                        + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37
                        + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49
                        + m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61
                        + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73
                        + m.b74 + m.b75 + m.b76 + m.b77 + m.b78 + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 + m.b84 + m.b85
                        + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 + m.b91 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97
                        + m.b98 + m.b99 + m.b100 + m.b101 + m.b102 + m.b103 + m.b104 + m.b105 + m.b106 + m.b107 + m.b108
                        + m.b109 + m.b110 + m.b111 + m.b112 + m.b113 + m.b114 + m.b115 + m.b116 + m.b117 + m.b118
                        + m.b119 + m.b120 + m.b121 + m.b122 + m.b123 + m.b124 + m.b125 + m.b126 + m.b127 + m.b128
                        + m.b129 + m.b130 + m.b131 + m.b132 + m.b133 + m.b134 + m.b135 + m.b136 + m.b137 + m.b138
                        + m.b139 + m.b140 + m.b141 + m.b142 + m.b143 + m.b144 + m.b145 + m.b146 + m.b147 + m.b148
                        + m.b149 + m.b150 + m.b151 + m.b152 + m.b153 + m.b154 + m.b155 + m.b156 + m.b157 + m.b158
                        + m.b159 + m.b160 + m.b161 + m.b162 + m.b163 + m.b164 + m.b165 + m.b166 + m.b167 + m.b168
                        + m.b169 + m.b170 + m.b171 + m.b172 + m.b173 + m.b174 + m.b175 + m.b176 + m.b177 + m.b178
                        + m.b179 + m.b180 + m.b181 + m.b182 + m.b183 + m.b184 + m.b185 + m.b186 + m.b187 + m.b188
                        + m.b189 + m.b190 + m.b191 + m.b192 + m.b193 + m.b194 + m.b195 + m.b196 + m.b197 + m.b198
                        + m.b199 + m.b200 + m.b201 + m.b202 + m.b203 + m.b204 + m.b205 + m.b206 + m.b207 + m.b208
                        + m.b209 + m.b210 + m.b211 + m.b212 + m.b213 + m.b214 + m.b215 + m.b216 + m.b217 + m.b218
                        + m.b219 + m.b220 + m.b221 + m.b222 + m.b223 + m.b224 + m.b225 + m.b226 + m.b227 + m.b228
                        + m.b229 + m.b230 + m.b231 + m.b232 + m.b233 + m.b234 + m.b235 + m.b236 + m.b237 + m.b238
                        + m.b239 + m.b240 + m.b241 + m.b242 + m.b243 + m.b244 + m.b245 + m.b246 + m.b247 + m.b248
                        + m.b249 + m.b250 + m.b251 + m.b252 + m.b253 + m.b254 + m.b255 + m.b256 + m.b257 + m.b258
                        + m.b259 + m.b260 + m.b261 + m.b262 + m.b263 + m.b264 + m.b265 + m.b266 + m.b267 + m.b268
                        + m.b269 + m.b270 + m.b271 + m.b272 + m.b273 + m.b274 + m.b275 + m.b276 + m.b277 + m.b278
                        + m.b279 + m.b280 + m.b281 + m.b282 + m.b283 + m.b284 + m.b285 + m.b286 + m.b287 + m.b288
                        + m.b289 + m.b290 + m.b291 + m.b292 + m.b293 + m.b294 + m.b295 + m.b296 + m.b297 + m.b298
                        + m.b299 + m.b300 + m.b301 + m.b302 + m.b303 + m.b304 + m.b305 + m.b306 + m.b307 + m.b308
                        + m.b309 + m.b310 + m.b311 + m.b312 + m.b313 + m.b314 + m.b315 + m.b316 + m.b317 + m.b318
                        + m.b319 + m.b320 + m.b321 + m.b322 + m.b323 + m.b324 + m.b325 + m.b326 + m.b327 + m.b328
                        + m.b329 + m.b330 + m.b331 + m.b332 + m.b333 + m.b334 + m.b335 + m.b336 + m.b337 + m.b338
                        + m.b339 + m.b340 + m.b341 + m.b342 + m.b343 + m.b344 + m.b345 + m.b346 + m.b347 + m.b348
                        + m.b349 + m.b350 + m.b351 + m.b352 + m.b353 + m.b354 + m.b355 + m.b356 + m.b357 + m.b358
                        + m.b359 + m.b360 + m.b361 + m.b362 + m.b363 + m.b364 + m.b365 + m.b366 + m.b367 + m.b368
                        + m.b369 + m.b370 + m.b371 + m.b372 + m.b373 + m.b374 + m.b375 + m.b376 + m.b377 + m.b378
                        + m.b379 + m.b380 + m.b381 + m.b382 + m.b383 + m.b384 + m.b385 + m.b386 + m.b387 + m.b388
                        + m.b389 + m.b390 + m.b391 + m.b392 + m.b393 + m.b394 + m.b395 + m.b396 + m.b397 + m.b398
                        + m.b399 + m.b400 + m.b401 + m.b402 + m.b403 + m.b404 + m.b405 + m.b406 + m.b407 + m.b408
                        + m.b409 + m.b410 + m.b411 + m.b412 + m.b413 + m.b414 + m.b415 + m.b416 + m.b417 + m.b418
                        + m.b419 + m.b420 + m.b421 + m.b422 + m.b423 + m.b424 + m.b425 + m.b426 + m.b427 + m.b428
                        + m.b429 + m.b430 + m.b431 + m.b432 + m.b433 + m.b434 + m.b435 + m.b436 + m.b437 + m.b438
                        + m.b439 + m.b440 + m.b441 + m.b442 + m.b443 + m.b444 + m.b445 + m.b446 + m.b447 + m.b448
                        + m.b449 + m.b450 + m.b451 + m.b452 + m.b453 + m.b454 + m.b455 + m.b456 + m.b457 + m.b458
                        + m.b459 + m.b460 + m.b461 + m.b462 + m.b463 + m.b464 + m.b465 + m.b466 + m.b467 + m.b468
                        + m.b469 + m.b470 + m.b471 + m.b472 + m.b473 + m.b474 + m.b475 + m.b476 + m.b477 + m.b478
                        + m.b479 + m.b480 + m.b481 + m.b482 + m.b483 + m.b484 + m.b485 + m.b486 + m.b487 + m.b488
                        + m.b489 + m.b490 + m.b491 + m.b492 + m.b493 + m.b494 + m.b495 + m.b496 + m.b497 + m.b498
                        + m.b499 + m.b500 + m.b501 + m.b502 + m.b503 + m.b504 + m.b505 + m.b506 + m.b507 + m.b508
                        + m.b509 + m.b510 + m.b511 + m.b512 + m.b513 + m.b514 + m.b515 + m.b516 + m.b517 + m.b518
                        + m.b519 + m.b520 + m.b521 + m.b522 + m.b523 + m.b524 + m.b525 + m.b526 + m.b527 + m.b528
                        + m.b529 + m.b530 + m.b531 + m.b532 + m.b533 + m.b534 + m.b535 + m.b536 + m.b537 + m.b538
                        + m.b539 + m.b540 + m.b541 + m.b542 + m.b543 + m.b544 + m.b545 + m.b546 + m.b547 + m.b548
                        + m.b549 + m.b550 + m.b551 + m.b552 + m.b553 + m.b554 + m.b555 + m.b556 + m.b557 + m.b558
                        + m.b559 + m.b560 + m.b561 + m.b562 + m.b563 + m.b564 + m.b565 + m.b566 + m.b567 + m.b568
                        + m.b569 + m.b570 + m.b571 + m.b572 + m.b573 + m.b574 + m.b575 + m.b576 + m.b577 + m.b578
                        + m.b579 + m.b580 + m.b581 + m.b582 + m.b583 + m.b584 + m.b585 + m.b586 + m.b587 + m.b588
                        + m.b589 + m.b590 + m.b591 + m.b592 + m.b593 + m.b594 + m.b595 + m.b596 + m.b597 + m.b598
                        + m.b599 + m.b600 + m.b601 + m.b602 + m.b603 + m.b604 + m.b605 + m.b606 + m.b607 + m.b608
                        + m.b609 + m.b610 + m.b611 + m.b612 + m.b613 + m.b614 + m.b615 + m.b616 + m.b617 + m.b618
                        + m.b619 + m.b620 + m.b621 + m.b622 + m.b623 + m.b624 + m.b625 + m.b626 + m.b627 + m.b628
                        + m.b629 + m.b630 + m.b631 + m.b632 + m.b633 + m.b634 + m.b635 + m.b636 + m.b637 + m.b638
                        + m.b639 + m.b640 + m.b641 + m.b642 + m.b643 + m.b644 + m.b645 + m.b646 + m.b647 + m.b648
                        + m.b649 + m.b650 + m.b651 + m.b652 + m.b653 + m.b654 + m.b655 + m.b656 + m.b657 + m.b658
                        + m.b659 + m.b660 + m.b661 + m.b662 + m.b663 + m.b664 + m.b665 + m.b666 + m.b667 + m.b668
                        + m.b669 + m.b670 + m.b671 + m.b672 + m.b673 + m.b674 + m.b675 + m.b676 + m.b677 + m.b678
                        + m.b679 + m.b680 + m.b681 + m.b682 + m.b683 + m.b684 + m.b685 + m.b686 + m.b687 + m.b688
                        + m.b689 + m.b690 + m.b691 + m.b692 + m.b693 + m.b694 + m.b695 + m.b696 + m.b697 + m.b698
                        + m.b699 + m.b700 + m.b701 + m.b702 + m.b703 + m.b704 + m.b705 + m.b706 + m.b707 + m.b708
                        + m.b709 + m.b710 + m.b711 + m.b712 + m.b713 + m.b714 + m.b715 + m.b716 + m.b717 + m.b718
                        + m.b719 + m.b720 + m.b721 + m.b722 + m.b723 + m.b724 + m.b725 + m.b726 + m.b727 + m.b728
                        + m.b729 + m.b730 + m.b731 + m.b732 + m.b733 + m.b734 + m.b735 + m.b736 + m.b737 + m.b738
                        + m.b739 + m.b740 + m.b741 + m.b742 + m.b743 + m.b744 + m.b745 + m.b746 + m.b747 + m.b748
                        + m.b749 + m.b750 + m.b751 + m.b752 + m.b753 + m.b754 + m.b755 + m.b756 + m.b757 + m.b758
                        + m.b759 + m.b760 + m.b761 + m.b762 + m.b763 + m.b764 + m.b765 + m.b766 + m.b767 + m.b768
                        + m.b769 + m.b770 + m.b771 + m.b772 + m.b773 + m.b774 + m.b775 + m.b776 + m.b777 + m.b778
                        + m.b779 + m.b780 + m.b781 + m.b782 + m.b783 + m.b784 + m.b785 + m.b786 + m.b787 + m.b788
                        + m.b789 + m.b790 + m.b791 + m.b792 + m.b793 + m.b794 + m.b795 + m.b796 + m.b797 + m.b798
                        + m.b799 + m.b800 + m.b801 + m.b802 + m.b803 + m.b804 + m.b805 + m.b806 + m.b807 + m.b808
                        + m.b809 + m.b810 + m.b811 + m.b812 + m.b813 + m.b814 + m.b815 + m.b816 + m.b817 + m.b818
                        + m.b819 + m.b820 + m.b821 + m.b822 + m.b823 + m.b824 + m.b825 + m.b826 + m.b827 + m.b828
                        + m.b829 + m.b830 + m.b831 + m.b832 + m.b833 + m.b834 + m.b835 + m.b836 + m.b837 + m.b838
                        + m.b839 + m.b840 + m.b841 + m.b842, sense=maximize)

m.c2 = Constraint(expr=   30.3049155566337*m.b1 - 1.20978175683574*m.x843 - 0.57111174843345*m.x844
                        + 0.283625209219378*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 30.3049155566337)

m.c3 = Constraint(expr=   37.8498922502215*m.b2 - 1.48941204192618*m.x843 - 0.576563889229951*m.x844
                        - 1.27722798085539*m.x845 - 0.782256150744185*m.x846 + m.x847 <= 37.8498922502215)

m.c4 = Constraint(expr=   38.4782880860282*m.b3 + 0.738904497880184*m.x843 + 1.72423952689335*m.x844
                        + 0.879786872200988*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 38.4782880860282)

m.c5 = Constraint(expr=   49.239401124038*m.b4 - 0.725737698861833*m.x843 - 1.72423952689335*m.x844
                        - 1.17786770369179*m.x845 - 0.949259111932472*m.x846 + m.x847 <= 49.239401124038)

m.c6 = Constraint(expr=   40.0971980208695*m.b5 - 0.893778580395323*m.x843 + 1.72423952689335*m.x844
                        - 0.809337839580239*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 40.0971980208695)

m.c7 = Constraint(expr=   46.3104780093958*m.b6 + 0.143271036349324*m.x843 - 1.72423952689335*m.x844
                        - 1.27722798085539*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 46.3104780093958)

m.c8 = Constraint(expr=   49.1723180171588*m.b7 - 0.778404894935236*m.x843 - 1.72423952689335*m.x844
                        - 1.27722798085539*m.x845 - 0.837923804473614*m.x846 + m.x847 <= 49.1723180171588)

m.c9 = Constraint(expr=   42.796904888494*m.b8 + 0.604109001991604*m.x843 - 1.72423952689335*m.x844
                        - 0.879786872200988*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 42.796904888494)

m.c10 = Constraint(expr=   29.7234757345167*m.b9 + 1.10444736468894*m.x843 - 1.72423952689335*m.x844
                         - 0.0849046548921749*m.x845 + 0.0527586551972498*m.x846 + m.x847 <= 29.7234757345167)

m.c11 = Constraint(expr=   31.8587775743399*m.b10 + 0.199065738127799*m.x843 + 1.72423952689335*m.x844
                         + 0.333305347801179*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 31.8587775743399)

m.c12 = Constraint(expr=   33.6005634270589*m.b11 + 0.709443394138411*m.x843 - 1.72423952689335*m.x844
                         - 0.283625209219378*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 33.6005634270589)

m.c13 = Constraint(expr=   25.3466141948129*m.b12 - 0.472441011808095*m.x843 + 0.576563889229951*m.x844
                         + 0.184264932055776*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 25.3466141948129)

m.c14 = Constraint(expr=   52.4296291114522*m.b13 - 1.0549076743206*m.x843 - 1.72423952689335*m.x844
                         - 1.5753088123462*m.x845 - 0.837923804473614*m.x846 + m.x847 <= 52.4296291114522)

m.c15 = Constraint(expr=   35.1124012133091*m.b14 + 0.867444982358621*m.x843 - 0.576563889229951*m.x844
                         + 1.40549950256185*m.x845 + 0.442432231303253*m.x846 + m.x847 <= 35.1124012133091)

m.c16 = Constraint(expr=   43.075493603636*m.b15 + 0.83107209100864*m.x843 + 0.576563889229951*m.x844
                         + 1.4759485351826*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 43.075493603636)

m.c17 = Constraint(expr=   33.1118068206131*m.b16 + 0.725737698861833*m.x843 + 0.576563889229951*m.x844
                         + 0.879786872200988*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 33.1118068206131)

m.c18 = Constraint(expr=   34.5242489372615*m.b17 - 1.38407764977938*m.x843 - 0.576563889229951*m.x844
                         - 1.17786770369179*m.x845 - 0.559585535826469*m.x846 + m.x847 <= 34.5242489372615)

m.c19 = Constraint(expr=   33.9569038245237*m.b18 + 1.13390846843071*m.x843 + 0.576563889229951*m.x844
                         + 0.979147149364589*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 33.9569038245237)

m.c20 = Constraint(expr=   51.3846082555302*m.b19 - 0.883739287082043*m.x843 - 1.72423952689335*m.x844
                         - 1.376588258019*m.x845 - 0.949259111932472*m.x846 + m.x847 <= 51.3846082555302)

m.c21 = Constraint(expr=   35.6143864670453*m.b20 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                         + 0.681066317873784*m.x845 + 1.22759738057962*m.x846 - m.x847 <= 35.6143864670453)

m.c22 = Constraint(expr=   31.9672764145155*m.b21 + 1.56841283603629*m.x843 + 0.576563889229951*m.x844
                         + 0.681066317873784*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 31.9672764145155)

m.c23 = Constraint(expr=   35.661437386312*m.b22 + 1.64741363014639*m.x843 + 0.576563889229951*m.x844
                         + 1.376588258019*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 35.661437386312)

m.c24 = Constraint(expr=   35.691930607529*m.b23 - 1.13078096272564*m.x843 + 1.72423952689335*m.x844
                         + 0.283625209219378*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 35.691930607529)

m.c25 = Constraint(expr=   26.262336752475*m.b24 + 0.0542309489259392*m.x843 - 0.57111174843345*m.x844
                         + 0.879786872200988*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 26.262336752475)

m.c26 = Constraint(expr=   20.2927612993265*m.b25 - 0.367106619661288*m.x843 + 0.576563889229951*m.x844
                         + 0.0849046548921749*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 20.2927612993265)

m.c27 = Constraint(expr=   26.4963496132246*m.b26 - 1.10757487039401*m.x843 - 0.576563889229951*m.x844
                         - 0.681066317873784*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 26.4963496132246)

m.c28 = Constraint(expr=   29.766903863375*m.b27 - 1.59474643407299*m.x843 - 0.576563889229951*m.x844
                         - 0.681066317873784*m.x845 - 0.559585535826469*m.x846 + m.x847 <= 29.766903863375)

m.c29 = Constraint(expr=   35.4053121779917*m.b28 - 0.646736904751728*m.x843 - 1.72423952689335*m.x844
                         - 0.581706040710183*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 35.4053121779917)

m.c30 = Constraint(expr=   23.1476392614536*m.b29 + 0.52823571358657*m.x843 + 0.576563889229951*m.x844
                         - 0.0144556222714266*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 23.1476392614536)

m.c31 = Constraint(expr=   45.0153885109898*m.b30 + 0.0937313459809917*m.x843 - 1.71878738609685*m.x844
                         + 0.879786872200988*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 45.0153885109898)

m.c32 = Constraint(expr=   21.194937668087*m.b31 + 1.04174087530225*m.x843 + 0.576563889229951*m.x844
                         - 0.21317617659863*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 21.194937668087)

m.c33 = Constraint(expr=   42.8465303881741*m.b32 - 1.44991164487113*m.x843 - 1.72423952689335*m.x844
                         - 1.07850742652819*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 42.8465303881741)

m.c34 = Constraint(expr=   21.229170356146*m.b33 + 0.251732934201202*m.x843 + 0.576563889229951*m.x844
                         + 0.184264932055776*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 21.229170356146)

m.c35 = Constraint(expr=   17.7502004797026*m.b34 + 0.199065738127799*m.x843 + 0.576563889229951*m.x844
                         - 0.0144556222714266*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 17.7502004797026)

m.c36 = Constraint(expr=   24.8557194777978*m.b35 + 0.515068914568219*m.x843 - 0.57111174843345*m.x844
                         + 0.581706040710183*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 24.8557194777978)

m.c37 = Constraint(expr=   30.5510106056662*m.b36 + 1.06807447333896*m.x843 + 0.576563889229951*m.x844
                         + 0.979147149364589*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 30.5510106056662)

m.c38 = Constraint(expr=   34.0388699581884*m.b37 - 0.222271830459429*m.x843 + 0.576563889229951*m.x844
                         + 1.07850742652819*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 34.0388699581884)

m.c39 = Constraint(expr=   24.8814090641513*m.b38 + 0.725737698861833*m.x843 + 0.576563889229951*m.x844
                         + 0.780426595037386*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 24.8814090641513)

m.c40 = Constraint(expr=   35.9434800856654*m.b39 - 0.893778580395323*m.x843 + 0.576563889229951*m.x844
                         + 0.979147149364589*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 35.9434800856654)

m.c41 = Constraint(expr=   23.2113489528608*m.b40 - 0.99911297254213*m.x843 + 0.576563889229951*m.x844
                         + 0.0352245163103741*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 23.2113489528608)

m.c42 = Constraint(expr=   25.3885364586041*m.b41 + 0.0774370412575694*m.x843 - 0.576563889229951*m.x844
                         - 0.283625209219378*m.x845 - 0.670920843285327*m.x846 + m.x847 <= 25.3885364586041)

m.c43 = Constraint(expr=   29.8889996762251*m.b42 - 0.962740081192148*m.x843 - 0.576563889229951*m.x844
                         - 0.979147149364589*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 29.8889996762251)

m.c44 = Constraint(expr=   48.0527957404719*m.b43 - 1.56841283603629*m.x843 - 1.72423952689335*m.x844
                         - 1.4759485351826*m.x845 - 0.448250228367611*m.x846 + m.x847 <= 48.0527957404719)

m.c45 = Constraint(expr=   48.042203521867*m.b44 - 1.51574563996288*m.x843 - 1.72423952689335*m.x844
                         - 0.979147149364589*m.x845 - 0.949259111932472*m.x846 + m.x847 <= 48.042203521867)

m.c46 = Constraint(expr=   31.4035259234625*m.b45 + 0.567736110641623*m.x843 + 0.576563889229951*m.x844
                         + 0.780426595037386*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 31.4035259234625)

m.c47 = Constraint(expr=   27.2318632917586*m.b46 - 0.920112178432024*m.x843 - 0.57111174843345*m.x844
                         + 0.283625209219378*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 27.2318632917586)

m.c48 = Constraint(expr=   28.3613337753672*m.b47 + 0.367106619661288*m.x843 - 0.576563889229951*m.x844
                         - 0.780426595037386*m.x845 + 0.442432231303253*m.x846 + m.x847 <= 28.3613337753672)

m.c49 = Constraint(expr=   47.0184434599934*m.b48 - 1.64741363014639*m.x843 - 1.72423952689335*m.x844
                         - 1.4759485351826*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 47.0184434599934)

m.c50 = Constraint(expr=   49.0852938090587*m.b49 + 1.54207923799959*m.x843 - 1.71878738609685*m.x844
                         + 1.4759485351826*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 49.0852938090587)

m.c51 = Constraint(expr=   28.6019799908231*m.b50 + 1.0285740762839*m.x843 + 0.576563889229951*m.x844
                         + 1.17786770369179*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 28.6019799908231)

m.c52 = Constraint(expr=   24.1888156034437*m.b51 - 0.103770639294271*m.x843 - 0.57111174843345*m.x844
                         + 0.283625209219378*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 24.1888156034437)

m.c53 = Constraint(expr=   26.5143601457152*m.b52 + 0.251732934201202*m.x843 + 0.576563889229951*m.x844
                         + 0.879786872200988*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 26.5143601457152)

m.c54 = Constraint(expr=   38.2615264564749*m.b53 - 1.51574563996288*m.x843 - 1.72423952689335*m.x844
                         - 0.780426595037386*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 38.2615264564749)

m.c55 = Constraint(expr=   26.5114095357136*m.b54 + 0.817905291990289*m.x843 - 0.57111174843345*m.x844
                         + 0.38298548638298*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 26.5114095357136)

m.c56 = Constraint(expr=   17.4142320200153*m.b55 - 0.419773815734692*m.x843 + 0.576563889229951*m.x844
                         - 0.0144556222714266*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 17.4142320200153)

m.c57 = Constraint(expr=   37.8848169170927*m.b56 + 0.291233331256255*m.x843 + 0.576563889229951*m.x844
                         + 1.17786770369179*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 37.8848169170927)

m.c58 = Constraint(expr=   40.3995883292462*m.b57 + 1.07811376665223*m.x843 - 1.72423952689335*m.x844
                         + 0.759657700998438*m.x845 - 0.448250228367611*m.x846 + m.x847 <= 40.3995883292462)

m.c59 = Constraint(expr=   46.9833102279577*m.b58 + 0.893778580395323*m.x843 - 1.72423952689335*m.x844
                         - 0.879786872200988*m.x845 - 1.0049267656619*m.x846 + m.x847 <= 46.9833102279577)

m.c60 = Constraint(expr=   34.7029119952245*m.b59 - 0.844238890026991*m.x843 - 0.576563889229951*m.x844
                         - 0.581706040710183*m.x845 - 1.22759738057962*m.x846 + m.x847 <= 34.7029119952245)

m.c61 = Constraint(expr=   45.3904124687404*m.b60 - 1.44991164487113*m.x843 - 1.72423952689335*m.x844
                         - 1.27722798085539*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 45.3904124687404)

m.c62 = Constraint(expr=   40.344570571399*m.b61 - 1.0549076743206*m.x843 - 1.72423952689335*m.x844
                         - 0.979147149364589*m.x845 - 0.225579613449895*m.x846 + m.x847 <= 40.344570571399)

m.c63 = Constraint(expr=   25.9007925085324*m.b62 - 0.709443394138411*m.x843 + 0.576563889229951*m.x844
                         + 0.38298548638298*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 25.9007925085324)

m.c64 = Constraint(expr=   34.5259103368671*m.b63 - 1.07811376665223*m.x843 + 1.72423952689335*m.x844
                         + 0.283625209219378*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 34.5259103368671)

m.c65 = Constraint(expr=   34.5128775394929*m.b64 + 0.0116030461658151*m.x843 - 1.72423952689335*m.x844
                         - 0.333305347801179*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 34.5128775394929)

m.c66 = Constraint(expr=   42.5642791236561*m.b65 - 0.251732934201202*m.x843 - 1.72423952689335*m.x844
                         - 0.780426595037386*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 42.5642791236561)

m.c67 = Constraint(expr=   38.8261647804735*m.b66 + 0.0511034432208677*m.x843 - 1.72423952689335*m.x844
                         - 0.482345763546581*m.x845 - 0.670920843285327*m.x846 + m.x847 <= 38.8261647804735)

m.c68 = Constraint(expr=   35.0042849198961*m.b67 - 0.248605428496131*m.x843 - 0.57111174843345*m.x844
                         + 1.17786770369179*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 35.0042849198961)

m.c69 = Constraint(expr=   35.2639351921866*m.b68 + 1.48941204192618*m.x843 + 0.576563889229951*m.x844
                         + 1.5753088123462*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 35.2639351921866)

m.c70 = Constraint(expr=   35.9140284343968*m.b69 - 1.46307844388948*m.x843 - 0.576563889229951*m.x844
                         - 1.4759485351826*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 35.9140284343968)

m.c71 = Constraint(expr=   35.8595070264318*m.b70 + 1.46307844388948*m.x843 - 0.57111174843345*m.x844
                         + 1.4759485351826*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 35.8595070264318)

m.c72 = Constraint(expr=   35.7979491099678*m.b71 - 0.910072885118745*m.x843 - 0.576563889229951*m.x844
                         - 1.5753088123462*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 35.7979491099678)

m.c73 = Constraint(expr=   30.1774348723943*m.b72 - 0.946445776468726*m.x843 - 0.57111174843345*m.x844
                         + 0.681066317873784*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 30.1774348723943)

m.c74 = Constraint(expr=   43.4138755009119*m.b73 - 1.7000808262198*m.x843 - 1.72423952689335*m.x844
                         - 1.27722798085539*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 43.4138755009119)

m.c75 = Constraint(expr=   31.288995362377*m.b74 - 1.62108003210969*m.x843 + 0.57111174843345*m.x844
                         - 0.780426595037386*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 31.288995362377)

m.c76 = Constraint(expr=   22.251135020987*m.b75 - 0.577775403954902*m.x843 + 0.576563889229951*m.x844
                         + 0.482345763546581*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 22.251135020987)

m.c77 = Constraint(expr=   24.6343821180606*m.b76 + 0.0542309489259392*m.x843 - 0.57111174843345*m.x844
                         + 0.38298548638298*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 24.6343821180606)

m.c78 = Constraint(expr=   37.3250128740933*m.b77 - 0.288105825551183*m.x843 + 0.576563889229951*m.x844
                         + 1.17786770369179*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 37.3250128740933)

m.c79 = Constraint(expr=   37.5404705636976*m.b78 + 0.195938232422727*m.x843 - 1.72423952689335*m.x844
                         - 0.283625209219378*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 37.5404705636976)

m.c80 = Constraint(expr=   35.6309403459096*m.b79 + 0.195938232422727*m.x843 - 1.72423952689335*m.x844
                         - 0.482345763546581*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 35.6309403459096)

m.c81 = Constraint(expr=   23.3148007434063*m.b80 - 0.735776992175112*m.x843 + 0.576563889229951*m.x844
                         - 0.461576869507634*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 23.3148007434063)

m.c82 = Constraint(expr=   36.7454085306413*m.b81 + 1.13078096272564*m.x843 - 1.72423952689335*m.x844
                         - 0.333305347801179*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 36.7454085306413)

m.c83 = Constraint(expr=   40.2980725774239*m.b82 + 0.212232537146149*m.x843 + 1.72423952689335*m.x844
                         + 0.780426595037386*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 40.2980725774239)

m.c84 = Constraint(expr=   31.3740126449082*m.b83 + 0.515068914568219*m.x843 - 0.57111174843345*m.x844
                         + 1.17786770369179*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 31.3740126449082)

m.c85 = Constraint(expr=   32.8741751561525*m.b84 - 0.248605428496131*m.x843 + 0.576563889229951*m.x844
                         + 0.681066317873784*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 32.8741751561525)

m.c86 = Constraint(expr=   31.2926421588745*m.b85 - 0.893778580395323*m.x843 + 0.576563889229951*m.x844
                         + 0.681066317873784*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 31.2926421588745)

m.c87 = Constraint(expr=   36.1529239401977*m.b86 - 1.39724444879773*m.x843 + 0.57111174843345*m.x844
                         - 1.17786770369179*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 36.1529239401977)

m.c88 = Constraint(expr=   46.0046762924191*m.b87 - 0.83107209100864*m.x843 - 1.72423952689335*m.x844
                         - 1.17786770369179*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 46.0046762924191)

m.c89 = Constraint(expr=   40.3201059148068*m.b88 + 0.5514418059182*m.x843 - 1.72423952689335*m.x844
                         - 0.581706040710183*m.x845 - 0.670920843285327*m.x846 + m.x847 <= 40.3201059148068)

m.c90 = Constraint(expr=   36.7011220449196*m.b89 + 0.709443394138411*m.x843 - 1.72423952689335*m.x844
                         - 0.482345763546581*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 36.7011220449196)

m.c91 = Constraint(expr=   35.2065610809291*m.b90 - 0.567736110641623*m.x843 - 1.72423952689335*m.x844
                         - 0.681066317873784*m.x845 - 0.0585766522616081*m.x846 + m.x847 <= 35.2065610809291)

m.c92 = Constraint(expr=   21.4043081291525*m.b91 - 0.195938232422727*m.x843 + 0.576563889229951*m.x844
                         - 0.21317617659863*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 21.4043081291525)

m.c93 = Constraint(expr=   47.8997142425626*m.b92 - 0.738904497880184*m.x843 - 1.72423952689335*m.x844
                         - 1.376588258019*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 47.8997142425626)

m.c94 = Constraint(expr=   47.9236259738632*m.b93 - 1.19974246352246*m.x843 - 1.72423952689335*m.x844
                         - 1.27722798085539*m.x845 - 0.670920843285327*m.x846 + m.x847 <= 47.9236259738632)

m.c95 = Constraint(expr=   54.3099992860919*m.b94 - 0.762110590211814*m.x843 - 0.57111174843345*m.x844
                         - 2.89590366001587*m.x845 - 0.887773461138684*m.x846 - m.x847 <= 54.3099992860919)

m.c96 = Constraint(expr=   36.2020327940096*m.b95 + 0.0906038402759203*m.x843 - 1.72423952689335*m.x844
                         - 0.38298548638298*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 36.2020327940096)

m.c97 = Constraint(expr=   31.4944444048036*m.b96 - 0.778404894935236*m.x843 - 0.576563889229951*m.x844
                         - 0.879786872200988*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 31.4944444048036)

m.c98 = Constraint(expr=   41.0695197140918*m.b97 + 1.22607606155917*m.x843 - 0.57111174843345*m.x844
                         + 1.5753088123462*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 41.0695197140918)

m.c99 = Constraint(expr=   35.8977583116994*m.b98 - 1.62108003210969*m.x843 + 0.57111174843345*m.x844
                         - 1.5753088123462*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 35.8977583116994)

m.c100 = Constraint(expr=   38.9361115006751*m.b99 - 1.01540727726555*m.x843 - 1.72423952689335*m.x844
                          - 0.681066317873784*m.x845 + 0.386764577573824*m.x846 + m.x847 <= 38.9361115006751)

m.c101 = Constraint(expr=   35.6591295436818*m.b100 - 0.630442600028306*m.x843 - 0.57111174843345*m.x844
                          - 0.709977562416638*m.x845 - 1.22177938351526*m.x846 - m.x847 <= 35.6591295436818)

m.c102 = Constraint(expr=   29.5993300978214*m.b101 + 0.673070502788429*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 29.5993300978214)

m.c103 = Constraint(expr=   25.0871085466932*m.b102 - 0.432940614753043*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 25.0871085466932)

m.c104 = Constraint(expr=   20.2113741897643*m.b103 - 1.05178016861553*m.x843 + 0.576563889229951*m.x844
                          - 0.113815899435028*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 20.2113741897643)

m.c105 = Constraint(expr=   30.8156720546593*m.b104 - 1.41041124781608*m.x843 - 0.576563889229951*m.x844
                          - 0.581706040710183*m.x845 - 0.782256150744185*m.x846 + m.x847 <= 30.8156720546593)

m.c106 = Constraint(expr=   22.7689907241935*m.b105 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 22.7689907241935)

m.c107 = Constraint(expr=   22.6247894248055*m.b106 - 1.02544657057883*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 22.6247894248055)

m.c108 = Constraint(expr=   43.2589544421885*m.b107 - 1.65745292345967*m.x843 + 0.576563889229951*m.x844
                          - 1.30613922539825*m.x845 - 1.27744703724469*m.x846 - m.x847 <= 43.2589544421885)

m.c109 = Constraint(expr=   29.5418818649576*m.b108 - 0.841111384321919*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 29.5418818649576)

m.c110 = Constraint(expr=   48.8066703868255*m.b109 - 1.34144974701925*m.x843 - 2.86646302376025*m.x844
                          - 0.660297423834837*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 48.8066703868255)

m.c111 = Constraint(expr=   37.7241859202973*m.b110 - 0.738904497880184*m.x843 - 1.72423952689335*m.x844
                          - 0.581706040710183*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 37.7241859202973)

m.c112 = Constraint(expr=   41.2724920616205*m.b111 + 1.38407764977938*m.x843 + 1.72423952689335*m.x844
                          + 0.482345763546581*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 41.2724920616205)

m.c113 = Constraint(expr=   36.5427081688812*m.b112 + 0.738904497880184*m.x843 + 0.576563889229951*m.x844
                          + 1.27722798085539*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 36.5427081688812)

m.c114 = Constraint(expr=   38.529308612049*m.b113 + 0.673070502788429*m.x843 - 0.57111174843345*m.x844
                          + 1.376588258019*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 38.529308612049)

m.c115 = Constraint(expr=   31.2724777629362*m.b114 - 0.0774370412575694*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 31.2724777629362)

m.c116 = Constraint(expr=   28.6333100360094*m.b115 + 0.580902909659973*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 28.6333100360094)

m.c117 = Constraint(expr=   34.6966664362875*m.b116 + 1.43674484585278*m.x843 + 0.576563889229951*m.x844
                          + 1.07850742652819*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 34.6966664362875)

m.c118 = Constraint(expr=   35.2783511029924*m.b117 - 1.38407764977938*m.x843 - 0.576563889229951*m.x844
                          - 1.4759485351826*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 35.2783511029924)

m.c119 = Constraint(expr=   37.0861415503185*m.b118 - 0.52823571358657*m.x843 - 0.576563889229951*m.x844
                          - 1.5753088123462*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 37.0861415503185)

m.c120 = Constraint(expr=   46.5781906072552*m.b119 - 0.291233331256255*m.x843 - 1.72423952689335*m.x844
                          - 1.17786770369179*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 46.5781906072552)

m.c121 = Constraint(expr=   35.9529237313476*m.b120 - 1.43674484585278*m.x843 + 0.57111174843345*m.x844
                          - 1.376588258019*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 35.9529237313476)

m.c122 = Constraint(expr=   32.5394652607256*m.b121 - 0.949573282173797*m.x843 - 0.576563889229951*m.x844
                          - 1.07850742652819*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 32.5394652607256)

m.c123 = Constraint(expr=   48.0032465976304*m.b122 + 0.920112178432024*m.x843 - 1.72423952689335*m.x844
                          - 0.979147149364589*m.x845 - 1.0049267656619*m.x846 + m.x847 <= 48.0032465976304)

m.c124 = Constraint(expr=   30.1698174458172*m.b123 + 0.501902115549868*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 30.1698174458172)

m.c125 = Constraint(expr=   24.1722132137993*m.b124 - 0.788444188248516*m.x843 + 0.576563889229951*m.x844
                          + 0.0352245163103741*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 24.1722132137993)

m.c126 = Constraint(expr=   42.8032626782185*m.b125 - 1.36778334505595*m.x843 - 1.71878738609685*m.x844
                          - 0.759657700998438*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 42.8032626782185)

m.c127 = Constraint(expr=   39.5856795003574*m.b126 - 1.35774405174267*m.x843 - 0.576563889229951*m.x844
                          - 1.5753088123462*m.x845 - 0.670920843285327*m.x846 + m.x847 <= 39.5856795003574)

m.c128 = Constraint(expr=   29.4890985530779*m.b127 + 0.0147305518708866*m.x843 + 0.576563889229951*m.x844
                          - 1.20677894823465*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 29.4890985530779)

m.c129 = Constraint(expr=   45.7315001314301*m.b128 - 1.91074961051341*m.x843 - 1.72423952689335*m.x844
                          - 1.376588258019*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 45.7315001314301)

m.c130 = Constraint(expr=   39.1817071870725*m.b129 - 1.31511614898255*m.x843 + 0.576563889229951*m.x844
                          - 0.709977562416638*m.x845 - 1.5001176521624*m.x846 - m.x847 <= 39.1817071870725)

m.c131 = Constraint(expr=   29.3981571340225*m.b130 - 1.0285740762839*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 29.3981571340225)

m.c132 = Constraint(expr=   39.7581145455803*m.b131 - 0.301272624569534*m.x843 - 1.71878738609685*m.x844
                          + 0.333305347801179*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 39.7581145455803)

m.c133 = Constraint(expr=   34.7850866940537*m.b132 + 1.88441601247671*m.x843 + 0.576563889229951*m.x844
                          + 1.376588258019*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 34.7850866940537)

m.c134 = Constraint(expr=   28.515981599793*m.b133 + 0.146398542054395*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 28.515981599793)

m.c135 = Constraint(expr=   18.7035984596264*m.b134 + 1.12074166941236*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 18.7035984596264)

m.c136 = Constraint(expr=   29.2078778337031*m.b135 - 0.353939820642937*m.x843 - 0.57111174843345*m.x844
                          + 0.532025902128382*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 29.2078778337031)

m.c137 = Constraint(expr=   36.3335117910924*m.b136 + 1.93708320855011*m.x843 - 0.57111174843345*m.x844
                          + 1.4759485351826*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 36.3335117910924)

m.c138 = Constraint(expr=   27.4336142102637*m.b137 - 1.60791323309134*m.x843 - 0.576563889229951*m.x844
                          - 0.780426595037386*m.x845 - 0.225579613449895*m.x846 + m.x847 <= 27.4336142102637)

m.c139 = Constraint(expr=   34.7606462194876*m.b138 + 1.55524603701794*m.x843 - 0.57111174843345*m.x844
                          + 1.07850742652819*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 34.7606462194876)

m.c140 = Constraint(expr=   52.3094409306395*m.b139 - 1.68378652149637*m.x843 - 2.86646302376025*m.x844
                          - 0.809337839580239*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 52.3094409306395)

m.c141 = Constraint(expr=   29.7255492544284*m.b140 + 1.60791323309134*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 29.7255492544284)

m.c142 = Constraint(expr=   37.2361960813874*m.b141 + 1.7264144242565*m.x843 - 0.57111174843345*m.x844
                          + 1.4759485351826*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 37.2361960813874)

m.c143 = Constraint(expr=   18.2774159132552*m.b142 - 0.169604634386025*m.x843 + 0.576563889229951*m.x844
                          - 0.0144556222714266*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 18.2774159132552)

m.c144 = Constraint(expr=   35.0570137432552*m.b143 + 0.923239684137096*m.x843 + 0.576563889229951*m.x844
                          + 1.27722798085539*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 35.0570137432552)

m.c145 = Constraint(expr=   27.1206893280876*m.b144 + 0.120064944017693*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 27.1206893280876)

m.c146 = Constraint(expr=   48.4701010516938*m.b145 + 0.195938232422727*m.x843 - 1.72423952689335*m.x844
                          - 1.376588258019*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 48.4701010516938)

m.c147 = Constraint(expr=   44.4625673353575*m.b146 + 1.31824365468762*m.x843 + 1.72423952689335*m.x844
                          + 1.4759485351826*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 44.4625673353575)

m.c148 = Constraint(expr=   38.6396789893268*m.b147 + 1.60478572738627*m.x843 - 1.72423952689335*m.x844
                          + 0.809337839580239*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 38.6396789893268)

m.c149 = Constraint(expr=   24.4000131310028*m.b148 - 0.182771433404376*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 24.4000131310028)

m.c150 = Constraint(expr=   32.1126025017232*m.b149 + 1.13390846843071*m.x843 - 0.57111174843345*m.x844
                          + 1.07850742652819*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 32.1126025017232)

m.c151 = Constraint(expr=   43.0124937630985*m.b150 + 0.143271036349324*m.x843 - 1.72423952689335*m.x844
                          - 0.780426595037386*m.x845 - 0.782256150744185*m.x846 + m.x847 <= 43.0124937630985)

m.c152 = Constraint(expr=   35.7937493881787*m.b151 + 1.59474643407299*m.x843 - 0.57111174843345*m.x844
                          + 1.17786770369179*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 35.7937493881787)

m.c153 = Constraint(expr=   29.7907392378369*m.b152 + 1.85808241444001*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 29.7907392378369)

m.c154 = Constraint(expr=   24.8683699493956*m.b153 + 0.106898144999343*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 24.8683699493956)

m.c155 = Constraint(expr=   28.5901386604308*m.b154 + 1.09440807137566*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 28.5901386604308)

m.c156 = Constraint(expr=   23.5688525060732*m.b155 + 0.975906880210499*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 23.5688525060732)

m.c157 = Constraint(expr=   32.2234620842852*m.b156 + 0.633570105733377*m.x843 + 0.576563889229951*m.x844
                          + 1.07850742652819*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 32.2234620842852)

m.c158 = Constraint(expr=   30.1823402331523*m.b157 - 0.699404100825131*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 30.1823402331523)

m.c159 = Constraint(expr=   45.7306717366085*m.b158 - 0.317566929292956*m.x843 - 1.72423952689335*m.x844
                          - 0.979147149364589*m.x845 - 0.837923804473614*m.x846 + m.x847 <= 45.7306717366085)

m.c160 = Constraint(expr=   41.7047057474903*m.b159 - 1.88441601247671*m.x843 - 0.576563889229951*m.x844
                          - 1.17786770369179*m.x845 - 1.22759738057962*m.x846 + m.x847 <= 41.7047057474903)

m.c161 = Constraint(expr=   35.6105869568705*m.b160 - 1.09440807137566*m.x843 + 0.57111174843345*m.x844
                          - 1.376588258019*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 35.6105869568705)

m.c162 = Constraint(expr=   20.8537380972746*m.b161 + 0.0542309489259392*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 20.8537380972746)

m.c163 = Constraint(expr=   29.6238858408051*m.b162 + 0.949573282173797*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 29.6238858408051)

m.c164 = Constraint(expr=   31.4105382499355*m.b163 - 0.946445776468726*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 31.4105382499355)

m.c165 = Constraint(expr=   32.9475744030088*m.b164 - 0.735776992175112*m.x843 - 0.57111174843345*m.x844
                          + 0.979147149364589*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 32.9475744030088)

m.c166 = Constraint(expr=   30.2576084214532*m.b165 - 0.709443394138411*m.x843 - 0.57111174843345*m.x844
                          + 0.879786872200988*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 30.2576084214532)

m.c167 = Constraint(expr=   42.6910270235287*m.b166 - 1.0549076743206*m.x843 - 1.72423952689335*m.x844
                          - 0.879786872200988*m.x845 - 0.559585535826469*m.x846 + m.x847 <= 42.6910270235287)

m.c168 = Constraint(expr=   41.9906884519813*m.b167 - 0.594069708678324*m.x843 - 1.72423952689335*m.x844
                          - 1.07850742652819*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 41.9906884519813)

m.c169 = Constraint(expr=   22.5902570851904*m.b168 - 0.0906038402759203*m.x843 + 0.576563889229951*m.x844
                          - 0.113815899435028*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 22.5902570851904)

m.c170 = Constraint(expr=   26.0186885995934*m.b169 - 0.762110590211814*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 26.0186885995934)

m.c171 = Constraint(expr=   26.0732100075584*m.b170 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 26.0732100075584)

m.c172 = Constraint(expr=   24.4929010926531*m.b171 - 0.288105825551183*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 24.4929010926531)

m.c173 = Constraint(expr=   30.0087499791776*m.b172 + 0.962740081192148*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 30.0087499791776)

m.c174 = Constraint(expr=   23.3316732280395*m.b173 - 0.169604634386025*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 23.3316732280395)

m.c175 = Constraint(expr=   33.091125373332*m.b174 - 1.02544657057883*m.x843 - 0.57111174843345*m.x844
                          - 0.85901797816204*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 33.091125373332)

m.c176 = Constraint(expr=   56.3783652627203*m.b175 - 1.57845212934957*m.x843 + 0.576563889229951*m.x844
                          - 1.90230088837986*m.x845 - 2.00112653572726*m.x846 - m.x847 <= 56.3783652627203)

m.c177 = Constraint(expr=   18.2935972632689*m.b176 - 0.367106619661288*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 18.2935972632689)

m.c178 = Constraint(expr=   25.2057582438521*m.b177 + 0.699404100825131*m.x843 + 0.576563889229951*m.x844
                          - 0.709977562416638*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 25.2057582438521)

m.c179 = Constraint(expr=   42.1207791088405*m.b178 - 0.340773021624587*m.x843 - 0.57111174843345*m.x844
                          - 2.49846255136147*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 42.1207791088405)

m.c180 = Constraint(expr=   34.348160459712*m.b179 - 1.88441601247671*m.x843 - 0.576563889229951*m.x844
                          - 1.27722798085539*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 34.348160459712)

m.c181 = Constraint(expr=   34.804990350015*m.b180 + 0.725737698861833*m.x843 - 0.57111174843345*m.x844
                          + 1.27722798085539*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 34.804990350015)

m.c182 = Constraint(expr=   21.6204896880163*m.b181 - 0.353939820642937*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 21.6204896880163)

m.c183 = Constraint(expr=   20.3389472259005*m.b182 - 0.0379366442025169*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 20.3389472259005)

m.c184 = Constraint(expr=   20.6099372307157*m.b183 + 0.367106619661288*m.x843 - 0.576563889229951*m.x844
                          - 0.283625209219378*m.x845 + 0.164093962656108*m.x846 + m.x847 <= 20.6099372307157)

m.c185 = Constraint(expr=   39.6693928429395*m.b184 - 0.936406483155447*m.x843 - 1.72423952689335*m.x844
                          - 0.979147149364589*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 39.6693928429395)

m.c186 = Constraint(expr=   29.4722378378217*m.b185 + 1.7790816203299*m.x843 + 0.576563889229951*m.x844
                          + 1.07850742652819*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 29.4722378378217)

m.c187 = Constraint(expr=   23.517901537767*m.b186 - 0.0511034432208677*m.x843 - 0.57111174843345*m.x844
                          + 0.38298548638298*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 23.517901537767)

m.c188 = Constraint(expr=   31.1944183183574*m.b187 + 1.41041124781608*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 31.1944183183574)

m.c189 = Constraint(expr=   21.3996120574811*m.b188 - 0.857405689045341*m.x843 - 0.576563889229951*m.x844
                          - 0.0352245163103741*m.x845 + 0.442432231303253*m.x846 + m.x847 <= 21.3996120574811)

m.c190 = Constraint(expr=   22.981401812256*m.b189 - 0.314439423587885*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 22.981401812256)

m.c191 = Constraint(expr=   22.0742057327709*m.b190 - 0.0379366442025169*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 22.0742057327709)

m.c192 = Constraint(expr=   27.0465101739282*m.b191 + 0.752071296898535*m.x843 + 0.576563889229951*m.x844
                          - 0.660297423834837*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 27.0465101739282)

m.c193 = Constraint(expr=   29.8381437767907*m.b192 - 1.68378652149637*m.x843 + 0.576563889229951*m.x844
                          + 0.233945070637577*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 29.8381437767907)

m.c194 = Constraint(expr=   32.1187475217955*m.b193 - 0.169604634386025*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 32.1187475217955)

m.c195 = Constraint(expr=   38.0211369942987*m.b194 - 1.85808241444001*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 - 1.06059441939133*m.x846 + m.x847 <= 38.0211369942987)

m.c196 = Constraint(expr=   41.7525133147022*m.b195 - 0.673070502788429*m.x843 - 1.72423952689335*m.x844
                          - 0.879786872200988*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 41.7525133147022)

m.c197 = Constraint(expr=   28.8540547114874*m.b196 + 0.422901321439763*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 28.8540547114874)

m.c198 = Constraint(expr=   23.4508800581735*m.b197 - 0.725737698861833*m.x843 - 0.576563889229951*m.x844
                          - 0.581706040710183*m.x845 - 0.114244305991037*m.x846 + m.x847 <= 23.4508800581735)

m.c199 = Constraint(expr=   20.3013252227631*m.b198 + 0.120064944017693*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 20.3013252227631)

m.c200 = Constraint(expr=   27.1817435307007*m.b199 + 1.8054152183666*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 27.1817435307007)

m.c201 = Constraint(expr=   23.9712864824323*m.b200 - 1.44678413916606*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 23.9712864824323)

m.c202 = Constraint(expr=   23.7210292523221*m.b201 - 0.0147305518708866*m.x843 + 0.57111174843345*m.x844
                          - 0.184264932055776*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 23.7210292523221)

m.c203 = Constraint(expr=   25.7265332134598*m.b202 - 0.156437835367675*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 25.7265332134598)

m.c204 = Constraint(expr=   19.7892335784349*m.b203 - 0.867444982358621*m.x843 + 0.576563889229951*m.x844
                          - 0.262856315180431*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 19.7892335784349)

m.c205 = Constraint(expr=   36.6519571186342*m.b204 - 1.18344815879904*m.x843 + 1.72423952689335*m.x844
                          - 0.21317617659863*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 36.6519571186342)

m.c206 = Constraint(expr=   28.0455325240448*m.b205 + 1.62108003210969*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 28.0455325240448)

m.c207 = Constraint(expr=   29.0007312967359*m.b206 + 1.06807447333896*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 29.0007312967359)

m.c208 = Constraint(expr=   26.4342629534951*m.b207 + 0.68623730180678*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 26.4342629534951)

m.c209 = Constraint(expr=   43.9574615960265*m.b208 - 1.88441601247671*m.x843 - 1.72423952689335*m.x844
                          - 0.979147149364589*m.x845 - 0.50391788209704*m.x846 + m.x847 <= 43.9574615960265)

m.c210 = Constraint(expr=   35.7912511646039*m.b209 + 1.83174881640331*m.x843 - 0.57111174843345*m.x844
                          + 1.376588258019*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 35.7912511646039)

m.c211 = Constraint(expr=   26.1045358450611*m.b210 + 0.06739774794429*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 26.1045358450611)

m.c212 = Constraint(expr=   40.1985138158076*m.b211 + 0.0511034432208677*m.x843 - 1.72423952689335*m.x844
                          - 0.681066317873784*m.x845 + 0.60943519249154*m.x846 + m.x847 <= 40.1985138158076)

m.c213 = Constraint(expr=   36.0647943844504*m.b212 + 1.26244895290915*m.x843 - 1.72423952689335*m.x844
                          - 0.0352245163103741*m.x845 + 0.720770499950397*m.x846 + m.x847 <= 36.0647943844504)

m.c214 = Constraint(expr=   29.2305833684689*m.b213 - 0.106898144999343*m.x843 - 0.576563889229951*m.x844
                          - 1.27722798085539*m.x845 - 0.0585766522616081*m.x846 + m.x847 <= 29.2305833684689)

m.c215 = Constraint(expr=   25.9511099870247*m.b214 + 1.14707526744906*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 25.9511099870247)

m.c216 = Constraint(expr=   29.5481477240978*m.b215 - 1.47624524290783*m.x843 - 0.576563889229951*m.x844
                          - 1.17786770369179*m.x845 + 0.0527586551972498*m.x846 + m.x847 <= 29.5481477240978)

m.c217 = Constraint(expr=   35.2362484427601*m.b216 + 0.972779374505428*m.x843 - 1.72423952689335*m.x844
                          - 0.482345763546581*m.x845 + 0.219761616385537*m.x846 + m.x847 <= 35.2362484427601)

m.c218 = Constraint(expr=   27.3631281281494*m.b217 - 0.106898144999343*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 27.3631281281494)

m.c219 = Constraint(expr=   24.8867039185453*m.b218 - 0.577775403954902*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 24.8867039185453)

m.c220 = Constraint(expr=   47.0390285728975*m.b219 + 0.752071296898535*m.x843 + 1.72423952689335*m.x844
                          + 1.17786770369179*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 47.0390285728975)

m.c221 = Constraint(expr=   39.3473731780781*m.b220 - 1.8054152183666*m.x843 - 1.72423952689335*m.x844
                          - 0.581706040710183*m.x845 - 0.448250228367611*m.x846 + m.x847 <= 39.3473731780781)

m.c222 = Constraint(expr=   25.885228024804*m.b221 + 1.30507685566927*m.x843 - 0.57111174843345*m.x844
                          + 0.38298548638298*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 25.885228024804)

m.c223 = Constraint(expr=   25.939749432769*m.b222 + 1.30507685566927*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 25.939749432769)

m.c224 = Constraint(expr=   32.799507843296*m.b223 - 1.60478572738627*m.x843 + 1.72423952689335*m.x844
                          - 0.0641357608532274*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 32.799507843296)

m.c225 = Constraint(expr=   40.4314379836726*m.b224 - 1.63111932542297*m.x843 + 0.576563889229951*m.x844
                          - 0.85901797816204*m.x845 - 1.44444999843297*m.x846 - m.x847 <= 40.4314379836726)

m.c226 = Constraint(expr=   30.5549936515908*m.b225 + 1.68691402720145*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 30.5549936515908)

m.c227 = Constraint(expr=   34.481214379971*m.b226 - 0.159565341072746*m.x843 - 1.72423952689335*m.x844
                          - 0.482345763546581*m.x845 - 0.225579613449895*m.x846 + m.x847 <= 34.481214379971)

m.c228 = Constraint(expr=   29.1579953555398*m.b227 + 0.130104237330973*m.x843 - 1.72423952689335*m.x844
                          + 0.0144556222714266*m.x845 + 0.164093962656108*m.x846 + m.x847 <= 29.1579953555398)

m.c229 = Constraint(expr=   50.4967694682857*m.b228 + 0.946445776468726*m.x843 - 0.576563889229951*m.x844
                          + 2.10102144270706*m.x845 + 1.27744703724469*m.x846 + m.x847 <= 50.4967694682857)

m.c230 = Constraint(expr=   39.5227184929235*m.b229 - 1.57845212934957*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 39.5227184929235)

m.c231 = Constraint(expr=   25.1161528152921*m.b230 - 1.12074166941236*m.x843 + 0.57111174843345*m.x844
                          + 0.21317617659863*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 25.1161528152921)

m.c232 = Constraint(expr=   28.9838684897793*m.b231 + 0.607236507696675*m.x843 - 0.57111174843345*m.x844
                          + 0.879786872200988*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 28.9838684897793)

m.c233 = Constraint(expr=   30.8174646392651*m.b232 - 0.735776992175112*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 30.8174646392651)

m.c234 = Constraint(expr=   61.4971755703616*m.b233 - 1.10444736468894*m.x843 + 1.72423952689335*m.x844
                          - 1.70358033405265*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 61.4971755703616)

m.c235 = Constraint(expr=   30.2776500615388*m.b234 + 0.37023412536636*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 30.2776500615388)

m.c236 = Constraint(expr=   26.3885933543416*m.b235 + 1.43674484585278*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 26.3885933543416)

m.c237 = Constraint(expr=   30.2111720547639*m.b236 - 0.488735316531517*m.x843 - 0.576563889229951*m.x844
                          - 0.780426595037386*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 30.2111720547639)

m.c238 = Constraint(expr=   34.0573181263595*m.b237 - 1.91074961051341*m.x843 - 0.576563889229951*m.x844
                          - 1.07850742652819*m.x845 - 0.559585535826469*m.x846 + m.x847 <= 34.0573181263595)

m.c239 = Constraint(expr=   36.1954513040931*m.b238 + 1.06807447333896*m.x843 + 0.576563889229951*m.x844
                          + 1.376588258019*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 36.1954513040931)

m.c240 = Constraint(expr=   37.9838344453402*m.b239 - 1.39411694309266*m.x843 + 0.576563889229951*m.x844
                          - 1.35581936398005*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 37.9838344453402)

m.c241 = Constraint(expr=   27.1727911830244*m.b240 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 27.1727911830244)

m.c242 = Constraint(expr=   47.3329514357468*m.b241 - 0.841111384321919*m.x843 + 0.576563889229951*m.x844
                          - 1.40549950256185*m.x845 - 1.66712061335069*m.x846 - m.x847 <= 47.3329514357468)

m.c243 = Constraint(expr=   44.6118456464174*m.b242 + 0.946445776468726*m.x843 - 1.72423952689335*m.x844
                          - 0.581706040710183*m.x845 - 1.06059441939133*m.x846 + m.x847 <= 44.6118456464174)

m.c244 = Constraint(expr=   24.1800504513325*m.b243 - 0.975906880210499*m.x843 - 0.576563889229951*m.x844
                          - 0.184264932055776*m.x845 - 0.559585535826469*m.x846 + m.x847 <= 24.1800504513325)

m.c245 = Constraint(expr=   28.7062179848599*m.b244 - 1.64741363014639*m.x843 - 0.576563889229951*m.x844
                          - 0.681066317873784*m.x845 - 0.448250228367611*m.x846 + m.x847 <= 28.7062179848599)

m.c246 = Constraint(expr=   29.1398176008051*m.b245 + 0.291233331256255*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 29.1398176008051)

m.c247 = Constraint(expr=   29.1648257302158*m.b246 - 0.238566135182851*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 29.1648257302158)

m.c248 = Constraint(expr=   37.1248891854684*m.b247 - 0.709443394138411*m.x843 - 0.57111174843345*m.x844
                          - 1.45517964114365*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 37.1248891854684)

m.c249 = Constraint(expr=   20.7034260847866*m.b248 + 0.291233331256255*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 20.7034260847866)

m.c250 = Constraint(expr=   21.8042458501707*m.b249 - 0.765238095916885*m.x843 - 0.576563889229951*m.x844
                          - 0.0849046548921749*m.x845 + 0.442432231303253*m.x846 + m.x847 <= 21.8042458501707)

m.c251 = Constraint(expr=   21.8042458501707*m.b250 + 0.765238095916885*m.x843 + 0.576563889229951*m.x844
                          + 0.0849046548921749*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 21.8042458501707)

m.c252 = Constraint(expr=   41.3778049250904*m.b251 + 0.725737698861833*m.x843 + 0.576563889229951*m.x844
                          + 1.873389643837*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 41.3778049250904)

m.c253 = Constraint(expr=   41.3778049250904*m.b252 + 0.725737698861833*m.x843 + 0.576563889229951*m.x844
                          + 1.873389643837*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 41.3778049250904)

m.c254 = Constraint(expr=   39.4827669749468*m.b253 - 0.817905291990289*m.x843 - 0.576563889229951*m.x844
                          - 1.6746690895098*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 39.4827669749468)

m.c255 = Constraint(expr=   42.7539410547544*m.b254 - 0.946445776468726*m.x843 + 0.576563889229951*m.x844
                          + 1.376588258019*m.x845 + 1.22759738057962*m.x846 - m.x847 <= 42.7539410547544)

m.c256 = Constraint(expr=   41.9786716137295*m.b255 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 1.40549950256185*m.x845 - 1.16611172978583*m.x846 - m.x847 <= 41.9786716137295)

m.c257 = Constraint(expr=   25.9278067161234*m.b256 + 0.172732140091097*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 25.9278067161234)

m.c258 = Constraint(expr=   22.8641497328783*m.b257 - 0.0774370412575694*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 22.8641497328783)

m.c259 = Constraint(expr=   26.6323084115888*m.b258 - 0.327606222606236*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 26.6323084115888)

m.c260 = Constraint(expr=   29.343068071213*m.b259 + 1.41041124781608*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 29.343068071213)

m.c261 = Constraint(expr=   44.2902261931702*m.b260 - 1.46307844388948*m.x843 - 1.72423952689335*m.x844
                          - 1.27722798085539*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 44.2902261931702)

m.c262 = Constraint(expr=   27.6481935654662*m.b261 + 1.18657566450411*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 27.6481935654662)

m.c263 = Constraint(expr=   26.7968781480165*m.b262 - 0.39344021769799*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 26.7968781480165)

m.c264 = Constraint(expr=   56.3780598353656*m.b263 - 0.788444188248516*m.x843 + 0.576563889229951*m.x844
                          - 3.09462421434308*m.x845 - 0.887773461138684*m.x846 - m.x847 <= 56.3780598353656)

m.c265 = Constraint(expr=   41.1070306532993*m.b264 - 0.972779374505428*m.x843 - 0.57111174843345*m.x844
                          - 1.55453991830725*m.x845 - 0.887773461138684*m.x846 - m.x847 <= 41.1070306532993)

m.c266 = Constraint(expr=   32.7795814886043*m.b265 + 0.343900527329658*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 32.7795814886043)

m.c267 = Constraint(expr=   22.5806985680136*m.b266 + 0.172732140091097*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 22.5806985680136)

m.c268 = Constraint(expr=   20.8632215019244*m.b267 + 1.17340886548576*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 20.8632215019244)

m.c269 = Constraint(expr=   26.0714801196344*m.b268 - 0.788444188248516*m.x843 + 0.576563889229951*m.x844
                          - 0.113815899435028*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 26.0714801196344)

m.c270 = Constraint(expr=   38.012737571914*m.b269 + 0.778404894935236*m.x843 + 0.576563889229951*m.x844
                          + 1.4759485351826*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 38.012737571914)

m.c271 = Constraint(expr=   45.4134194483807*m.b270 - 0.120064944017693*m.x843 - 1.72423952689335*m.x844
                          - 1.07850742652819*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 45.4134194483807)

m.c272 = Constraint(expr=   23.28605495631*m.b271 - 0.116937438312622*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 23.28605495631)

m.c273 = Constraint(expr=   22.650565889867*m.b272 - 0.762110590211814*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 22.650565889867)

m.c274 = Constraint(expr=   32.3664426615954*m.b273 + 0.83107209100864*m.x843 - 0.57111174843345*m.x844
                          + 1.07850742652819*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 32.3664426615954)

m.c275 = Constraint(expr=   27.4659790262743*m.b274 - 0.024769845184166*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 27.4659790262743)

m.c276 = Constraint(expr=   33.2197727140567*m.b275 - 1.07811376665223*m.x843 - 0.57111174843345*m.x844
                          - 1.30613922539825*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 33.2197727140567)

m.c277 = Constraint(expr=   27.2080237096131*m.b276 + 0.409734522421412*m.x843 - 0.57111174843345*m.x844
                          - 0.610617285253036*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 27.2080237096131)

m.c278 = Constraint(expr=   47.4612697273088*m.b277 - 0.406607016716341*m.x843 - 2.86646302376025*m.x844
                          + 0.780426595037386*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 47.4612697273088)

m.c279 = Constraint(expr=   29.4138221566157*m.b278 + 0.804738492971938*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 29.4138221566157)

m.c280 = Constraint(expr=   31.5841137743572*m.b279 + 1.10757487039401*m.x843 + 0.576563889229951*m.x844
                          + 1.07850742652819*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 31.5841137743572)

m.c281 = Constraint(expr=   33.329396844988*m.b280 - 1.54207923799959*m.x843 - 0.576563889229951*m.x844
                          - 1.376588258019*m.x845 - 0.225579613449895*m.x846 + m.x847 <= 33.329396844988)

m.c282 = Constraint(expr=   24.9255123367881*m.b281 - 1.02544657057883*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 24.9255123367881)

m.c283 = Constraint(expr=   32.749504762889*m.b282 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 32.749504762889)

m.c284 = Constraint(expr=   26.2461040750373*m.b283 + 0.659903703770079*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 26.2461040750373)

m.c285 = Constraint(expr=   42.1576406406301*m.b284 - 1.28878255094585*m.x843 - 0.57111174843345*m.x844
                          - 1.45517964114365*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 42.1576406406301)

m.c286 = Constraint(expr=   18.9023975238181*m.b285 + 0.975906880210499*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 18.9023975238181)

m.c287 = Constraint(expr=   21.4612526481654*m.b286 + 1.16024206646741*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 21.4612526481654)

m.c288 = Constraint(expr=   19.6307995813261*m.b287 + 1.43674484585278*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 19.6307995813261)

m.c289 = Constraint(expr=   26.8429008390438*m.b288 - 0.340773021624587*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 26.8429008390438)

m.c290 = Constraint(expr=   50.2054211858499*m.b289 - 0.817905291990289*m.x843 - 1.72423952689335*m.x844
                          - 1.376588258019*m.x845 - 0.837923804473614*m.x846 + m.x847 <= 50.2054211858499)

m.c291 = Constraint(expr=   49.5216387283992*m.b290 - 1.07811376665223*m.x843 + 1.72423952689335*m.x844
                          - 1.50485977972545*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 49.5216387283992)

m.c292 = Constraint(expr=   19.0027626142132*m.b291 - 0.577775403954902*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 19.0027626142132)

m.c293 = Constraint(expr=   33.6408390207975*m.b292 + 0.195938232422727*m.x843 + 0.57111174843345*m.x844
                          - 0.879786872200988*m.x845 - 0.893591458203043*m.x846 + m.x847 <= 33.6408390207975)

m.c294 = Constraint(expr=   24.8633848715039*m.b293 - 0.735776992175112*m.x843 + 0.576563889229951*m.x844
                          - 0.610617285253036*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 24.8633848715039)

m.c295 = Constraint(expr=   35.1642412588727*m.b294 + 0.725737698861833*m.x843 - 0.57111174843345*m.x844
                          + 0.979147149364589*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 35.1642412588727)

m.c296 = Constraint(expr=   29.1157247449242*m.b295 + 1.46307844388948*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 29.1157247449242)

m.c297 = Constraint(expr=   33.6897241744175*m.b296 - 0.630442600028306*m.x843 - 0.57111174843345*m.x844
                          - 0.958378255325642*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 33.6897241744175)

m.c298 = Constraint(expr=   36.6066879520813*m.b297 - 0.857405689045341*m.x843 + 0.57111174843345*m.x844
                          - 1.27722798085539*m.x845 - 0.726588497014756*m.x846 + m.x847 <= 36.6066879520813)

m.c299 = Constraint(expr=   36.6066879520813*m.b298 + 0.857405689045341*m.x843 - 0.57111174843345*m.x844
                          + 1.27722798085539*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 36.6066879520813)

m.c300 = Constraint(expr=   38.1419984249143*m.b299 - 0.920112178432024*m.x843 - 0.57111174843345*m.x844
                          + 0.979147149364589*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 38.1419984249143)

m.c301 = Constraint(expr=   43.2066848828558*m.b300 - 0.683109796101709*m.x843 - 2.86646302376025*m.x844
                          + 0.38298548638298*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 43.2066848828558)

m.c302 = Constraint(expr=   33.0111350373581*m.b301 + 1.38407764977938*m.x843 - 0.57111174843345*m.x844
                          - 0.809337839580239*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 33.0111350373581)

m.c303 = Constraint(expr=   35.9635910624795*m.b302 - 0.288105825551183*m.x843 + 0.576563889229951*m.x844
                          - 1.60422005688905*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 35.9635910624795)

m.c304 = Constraint(expr=   25.9041296487982*m.b303 - 1.39411694309266*m.x843 - 0.57111174843345*m.x844
                          - 0.709977562416638*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 25.9041296487982)

m.c305 = Constraint(expr=   28.0457998034111*m.b304 - 1.05178016861553*m.x843 - 0.57111174843345*m.x844
                          - 0.958378255325642*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 28.0457998034111)

m.c306 = Constraint(expr=   26.5696019222021*m.b305 - 0.264899733219553*m.x843 - 0.576563889229951*m.x844
                          - 0.38298548638298*m.x845 - 0.670920843285327*m.x846 + m.x847 <= 26.5696019222021)

m.c307 = Constraint(expr=   25.1124326253278*m.b306 - 0.498774609844797*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 25.1124326253278)

m.c308 = Constraint(expr=   21.5987204509054*m.b307 - 1.41041124781608*m.x843 + 0.57111174843345*m.x844
                          - 0.283625209219378*m.x845 + 0.164093962656108*m.x846 + m.x847 <= 21.5987204509054)

m.c309 = Constraint(expr=   22.8688123417701*m.b308 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 22.8688123417701)

m.c310 = Constraint(expr=   42.9300717236343*m.b309 - 1.15711456076234*m.x843 + 0.576563889229951*m.x844
                          - 2.59782282852507*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 42.9300717236343)

m.c311 = Constraint(expr=   18.4714051036772*m.b310 + 0.0410641499075883*m.x843 - 0.57111174843345*m.x844
                          - 0.163496038016829*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 18.4714051036772)

m.c312 = Constraint(expr=   31.8083693507128*m.b311 - 1.15711456076234*m.x843 - 0.57111174843345*m.x844
                          - 1.15709880965284*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 31.8083693507128)

m.c313 = Constraint(expr=   32.203174208572*m.b312 + 0.199065738127799*m.x843 - 0.57111174843345*m.x844
                          - 0.958378255325642*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 32.203174208572)

m.c314 = Constraint(expr=   26.8420389814426*m.b313 + 0.172732140091097*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 26.8420389814426)

m.c315 = Constraint(expr=   27.0345966943809*m.b314 - 0.867444982358621*m.x843 + 0.576563889229951*m.x844
                          + 0.0352245163103741*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 27.0345966943809)

m.c316 = Constraint(expr=   49.3272162817*m.b315 + 1.10757487039401*m.x843 - 1.71878738609685*m.x844
                          + 1.376588258019*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 49.3272162817)

m.c317 = Constraint(expr=   25.2105790396101*m.b316 + 1.0549076743206*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 25.2105790396101)

m.c318 = Constraint(expr=   29.2215262530508*m.b317 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          - 0.709977562416638*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 29.2215262530508)

m.c319 = Constraint(expr=   43.1769642049732*m.b318 - 1.23611535487245*m.x843 - 1.71878738609685*m.x844
                          + 0.581706040710183*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 43.1769642049732)

m.c320 = Constraint(expr=   20.5644655742001*m.b319 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          + 0.233945070637577*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 20.5644655742001)

m.c321 = Constraint(expr=   37.9025594462949*m.b320 - 1.54207923799959*m.x843 - 0.576563889229951*m.x844
                          - 1.27722798085539*m.x845 - 0.782256150744185*m.x846 + m.x847 <= 37.9025594462949)

m.c322 = Constraint(expr=   22.6987189830423*m.b321 + 0.199065738127799*m.x843 + 0.576563889229951*m.x844
                          - 0.113815899435028*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 22.6987189830423)

m.c323 = Constraint(expr=   38.9301737039942*m.b322 + 0.0774370412575694*m.x843 - 1.72423952689335*m.x844
                          - 0.879786872200988*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 38.9301737039942)

m.c324 = Constraint(expr=   36.4917265544394*m.b323 + 0.554569311623272*m.x843 - 1.71878738609685*m.x844
                          + 0.482345763546581*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 36.4917265544394)

m.c325 = Constraint(expr=   23.7167142621154*m.b324 + 0.752071296898535*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 23.7167142621154)

m.c326 = Constraint(expr=   40.841483164679*m.b325 - 0.288105825551183*m.x843 - 0.57111174843345*m.x844
                          - 1.20677894823465*m.x845 - 1.27744703724469*m.x846 - m.x847 <= 40.841483164679)

m.c327 = Constraint(expr=   35.2005794431314*m.b326 - 0.788444188248516*m.x843 - 0.57111174843345*m.x844
                          - 0.759657700998438*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 35.2005794431314)

m.c328 = Constraint(expr=   40.1686724747941*m.b327 - 0.301272624569534*m.x843 - 1.71878738609685*m.x844
                          - 0.21317617659863*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 40.1686724747941)

m.c329 = Constraint(expr=   26.0265780119391*m.b328 - 0.972779374505428*m.x843 + 0.576563889229951*m.x844
                          + 0.0352245163103741*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 26.0265780119391)

m.c330 = Constraint(expr=   34.5060685301991*m.b329 - 0.762110590211814*m.x843 - 1.71878738609685*m.x844
                          - 0.21317617659863*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 34.5060685301991)

m.c331 = Constraint(expr=   47.1946846512203*m.b330 - 1.54207923799959*m.x843 - 1.72423952689335*m.x844
                          - 0.780426595037386*m.x845 - 1.06059441939133*m.x846 + m.x847 <= 47.1946846512203)

m.c332 = Constraint(expr=   41.6042295973825*m.b331 + 1.20978175683574*m.x843 - 1.72423952689335*m.x844
                          + 1.20677894823465*m.x845 + 0.108426308926679*m.x846 + m.x847 <= 41.6042295973825)

m.c333 = Constraint(expr=   31.8684443388026*m.b332 - 0.972779374505428*m.x843 + 0.576563889229951*m.x844
                          + 0.730746456455585*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 31.8684443388026)

m.c334 = Constraint(expr=   25.8061508738552*m.b333 + 1.0285740762839*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 25.8061508738552)

m.c335 = Constraint(expr=   29.0025480633678*m.b334 + 0.567736110641623*m.x843 - 0.57111174843345*m.x844
                          + 0.879786872200988*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 29.0025480633678)

m.c336 = Constraint(expr=   23.9582673452148*m.b335 - 1.22607606155917*m.x843 + 0.57111174843345*m.x844
                          - 0.482345763546581*m.x845 + 0.219761616385537*m.x846 + m.x847 <= 23.9582673452148)

m.c337 = Constraint(expr=   17.6692219971219*m.b336 + 1.02544657057883*m.x843 - 0.576563889229951*m.x844
                          - 0.0849046548921749*m.x845 - 0.00290899853217917*m.x846 + m.x847 <= 17.6692219971219)

m.c338 = Constraint(expr=   34.4024328196227*m.b337 - 0.893778580395323*m.x843 + 0.576563889229951*m.x844
                          - 1.55453991830725*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 34.4024328196227)

m.c339 = Constraint(expr=   27.5583473002091*m.b338 - 0.288105825551183*m.x843 + 0.576563889229951*m.x844
                          - 0.312536453762231*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 27.5583473002091)

m.c340 = Constraint(expr=   27.9035395946227*m.b339 - 0.867444982358621*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 27.9035395946227)

m.c341 = Constraint(expr=   25.0358023705299*m.b340 - 0.788444188248516*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 25.0358023705299)

m.c342 = Constraint(expr=   38.1832606819641*m.b341 - 2.18412488419371*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 38.1832606819641)

m.c343 = Constraint(expr=   38.1287392739991*m.b342 - 2.18412488419371*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 38.1287392739991)

m.c344 = Constraint(expr=   23.3072596736679*m.b343 + 0.488735316531517*m.x843 + 0.576563889229951*m.x844
                          - 0.262856315180431*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 23.3072596736679)

m.c345 = Constraint(expr=   30.8060998773258*m.b344 + 0.646736904751728*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 30.8060998773258)

m.c346 = Constraint(expr=   24.3720030641665*m.b345 - 1.60478572738627*m.x843 + 0.576563889229951*m.x844
                          + 0.0849046548921749*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 24.3720030641665)

m.c347 = Constraint(expr=   69.9999368458691*m.b346 - 0.130104237330973*m.x843 - 2.86646302376025*m.x844
                          - 1.00805839390744*m.x845 - 2.11246184318612*m.x846 - m.x847 <= 69.9999368458691)

m.c348 = Constraint(expr=   28.7631238143014*m.b347 + 0.765238095916885*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 28.7631238143014)

m.c349 = Constraint(expr=   24.0559477129135*m.b348 + 1.26557645861422*m.x843 - 0.57111174843345*m.x844
                          + 0.482345763546581*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 24.0559477129135)

m.c350 = Constraint(expr=   28.2058179948768*m.b349 - 0.525108207881499*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 28.2058179948768)

m.c351 = Constraint(expr=   21.8359445609766*m.b350 - 0.946445776468726*m.x843 + 0.576563889229951*m.x844
                          - 0.0641357608532274*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 21.8359445609766)

m.c352 = Constraint(expr=   28.9790110961503*m.b351 - 0.630442600028306*m.x843 - 0.57111174843345*m.x844
                          - 0.709977562416638*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 28.9790110961503)

m.c353 = Constraint(expr=   39.6731520912108*m.b352 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          + 1.02882728794639*m.x845 + 1.28326503430905*m.x846 - m.x847 <= 39.6731520912108)

m.c354 = Constraint(expr=   23.7147836933851*m.b353 + 0.607236507696675*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 23.7147836933851)

m.c355 = Constraint(expr=   19.9896674404853*m.b354 - 1.49945133523946*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 19.9896674404853)

m.c356 = Constraint(expr=   27.0198690388389*m.b355 - 0.630442600028306*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 27.0198690388389)

m.c357 = Constraint(expr=   21.5821757060667*m.b356 + 0.844238890026991*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 21.5821757060667)

m.c358 = Constraint(expr=   27.9927126142941*m.b357 - 1.17340886548576*m.x843 - 0.576563889229951*m.x844
                          - 0.879786872200988*m.x845 - 0.225579613449895*m.x846 + m.x847 <= 27.9927126142941)

m.c359 = Constraint(expr=   26.9537416883792*m.b358 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 26.9537416883792)

m.c360 = Constraint(expr=   21.510767309119*m.b359 - 0.209105031441078*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 21.510767309119)

m.c361 = Constraint(expr=   31.3621471324898*m.b360 - 0.406607016716341*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 31.3621471324898)

m.c362 = Constraint(expr=   33.6191478321068*m.b361 - 2.63179605081764*m.x843 + 0.576563889229951*m.x844
                          - 0.461576869507634*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 33.6191478321068)

m.c363 = Constraint(expr=   29.5472356084689*m.b362 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 29.5472356084689)

m.c364 = Constraint(expr=   28.0317469647656*m.b363 - 0.69627659512006*m.x843 - 0.57111174843345*m.x844
                          - 0.21317617659863*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 28.0317469647656)

m.c365 = Constraint(expr=   33.8519922420644*m.b364 - 0.169604634386025*m.x843 - 1.71878738609685*m.x844
                          - 0.312536453762231*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 33.8519922420644)

m.c366 = Constraint(expr=   32.9005024368076*m.b365 - 0.722610193156762*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 32.9005024368076)

m.c367 = Constraint(expr=   31.5416615229888*m.b366 - 0.23543862947778*m.x843 + 0.576563889229951*m.x844
                          - 0.610617285253036*m.x845 - 0.943441114868113*m.x846 - m.x847 <= 31.5416615229888)

m.c368 = Constraint(expr=   31.2494131384904*m.b367 - 2.65812964885434*m.x843 + 0.576563889229951*m.x844
                          + 0.333305347801179*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 31.2494131384904)

m.c369 = Constraint(expr=   25.4997198747482*m.b368 + 1.47624524290783*m.x843 - 0.57111174843345*m.x844
                          + 0.38298548638298*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 25.4997198747482)

m.c370 = Constraint(expr=   27.9726245751944*m.b369 + 0.554569311623272*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 27.9726245751944)

m.c371 = Constraint(expr=   44.5571403184215*m.b370 - 0.814777786285218*m.x843 + 0.576563889229951*m.x844
                          - 2.34942213561606*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 44.5571403184215)

m.c372 = Constraint(expr=   54.5720341431537*m.b371 - 1.02544657057883*m.x843 - 2.86646302376025*m.x844
                          - 1.15709880965284*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 54.5720341431537)

m.c373 = Constraint(expr=   31.5162326766124*m.b372 - 1.99978969793679*m.x843 + 0.576563889229951*m.x844
                          - 0.709977562416638*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 31.5162326766124)

m.c374 = Constraint(expr=   18.6809358401133*m.b373 + 0.541402512604921*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 18.6809358401133)

m.c375 = Constraint(expr=   24.1516857457008*m.b374 - 0.432940614753043*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 24.1516857457008)

m.c376 = Constraint(expr=   29.2061374239098*m.b375 - 1.05178016861553*m.x843 + 0.576563889229951*m.x844
                          + 0.233945070637577*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 29.2061374239098)

m.c377 = Constraint(expr=   40.141838986309*m.b376 - 2.47379446259743*m.x843 - 0.57111174843345*m.x844
                          - 1.75326047263445*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 40.141838986309)

m.c378 = Constraint(expr=   47.1105882589397*m.b377 - 2.0261232959735*m.x843 - 0.57111174843345*m.x844
                          - 1.60422005688905*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 47.1105882589397)

m.c379 = Constraint(expr=   46.096167480481*m.b378 - 1.26244895290915*m.x843 - 1.71878738609685*m.x844
                          - 0.759657700998438*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 46.096167480481)

m.c380 = Constraint(expr=   28.2739051479692*m.b379 - 1.23611535487245*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 28.2739051479692)

m.c381 = Constraint(expr=   46.6192656645228*m.b380 + 0.462401718494816*m.x843 + 0.576563889229951*m.x844
                          - 0.759657700998438*m.x845 - 2.27946480437441*m.x846 - m.x847 <= 46.6192656645228)

m.c382 = Constraint(expr=   31.6573777752576*m.b381 - 1.2492821538908*m.x843 + 0.576563889229951*m.x844
                          - 1.35581936398005*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 31.6573777752576)

m.c383 = Constraint(expr=   64.2357430278457*m.b382 - 0.814777786285218*m.x843 - 1.71878738609685*m.x844
                          - 1.45517964114365*m.x845 - 2.16812949691555*m.x846 - m.x847 <= 64.2357430278457)

m.c384 = Constraint(expr=   30.9136394603443*m.b383 + 1.62108003210969*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 30.9136394603443)

m.c385 = Constraint(expr=   75.5351432456205*m.b384 - 0.419773815734692*m.x843 + 0.576563889229951*m.x844
                          - 2.59782282852507*m.x845 - 3.33715022523356*m.x846 - m.x847 <= 75.5351432456205)

m.c386 = Constraint(expr=   75.8811509986212*m.b385 - 0.209105031441078*m.x843 + 0.576563889229951*m.x844
                          - 2.59782282852507*m.x845 - 3.39281787896299*m.x846 - m.x847 <= 75.8811509986212)

m.c387 = Constraint(expr=   33.3883095999984*m.b386 + 1.0022404782472*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 33.3883095999984)

m.c388 = Constraint(expr=   37.3046046568926*m.b387 + 1.7527480222932*m.x843 - 0.57111174843345*m.x844
                          + 0.979147149364589*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 37.3046046568926)

m.c389 = Constraint(expr=   23.5214530189958*m.b388 + 1.7527480222932*m.x843 - 0.57111174843345*m.x844
                          - 0.21317617659863*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 23.5214530189958)

m.c390 = Constraint(expr=   35.5789907017141*m.b389 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          + 0.730746456455585*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 35.5789907017141)

m.c391 = Constraint(expr=   33.1749886129475*m.b390 - 1.68378652149637*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 1.16611172978583*m.x846 - m.x847 <= 33.1749886129475)

m.c392 = Constraint(expr=   36.492596117266*m.b391 - 0.735776992175112*m.x843 - 0.57111174843345*m.x844
                          - 2.00166116554346*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 36.492596117266)

m.c393 = Constraint(expr=   34.7556672400594*m.b392 - 2.0787904920469*m.x843 + 0.576563889229951*m.x844
                          - 0.85901797816204*m.x845 - 0.832105807409255*m.x846 - m.x847 <= 34.7556672400594)

m.c394 = Constraint(expr=   34.4986357077467*m.b393 + 1.37091085076103*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 34.4986357077467)

m.c395 = Constraint(expr=   47.0590232367749*m.b394 - 0.525108207881499*m.x843 + 0.576563889229951*m.x844
                          - 0.908698116743841*m.x845 - 2.16812949691555*m.x846 - m.x847 <= 47.0590232367749)

m.c396 = Constraint(expr=   28.5809119920845*m.b395 - 2.52646165867083*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 - 0.999108768597542*m.x846 - m.x847 <= 28.5809119920845)

m.c397 = Constraint(expr=   24.7886885457312*m.b396 - 0.590942202973253*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 24.7886885457312)

m.c398 = Constraint(expr=   29.7939702457786*m.b397 + 1.08124127235731*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 29.7939702457786)

m.c399 = Constraint(expr=   43.3560325264269*m.b398 - 0.946445776468726*m.x843 - 1.71878738609685*m.x844
                          - 0.461576869507634*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 43.3560325264269)

m.c400 = Constraint(expr=   40.9823089326118*m.b399 - 2.44746086456072*m.x843 + 0.576563889229951*m.x844
                          - 2.05134130412526*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 40.9823089326118)

m.c401 = Constraint(expr=   36.1061808806485*m.b400 + 1.43674484585278*m.x843 - 0.57111174843345*m.x844
                          - 1.00805839390744*m.x845 - 0.887773461138684*m.x846 - m.x847 <= 36.1061808806485)

m.c402 = Constraint(expr=   36.5283027799448*m.b401 + 0.172732140091097*m.x843 - 0.57111174843345*m.x844
                          - 1.50485977972545*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 36.5283027799448)

m.c403 = Constraint(expr=   32.3315167504125*m.b402 - 0.630442600028306*m.x843 + 0.576563889229951*m.x844
                          - 1.20677894823465*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 32.3315167504125)

m.c404 = Constraint(expr=   22.3558998643137*m.b403 - 0.946445776468726*m.x843 - 0.57111174843345*m.x844
                          - 0.511257008089435*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 22.3558998643137)

m.c405 = Constraint(expr=   22.4608769600988*m.b404 - 0.577775403954902*m.x843 + 0.576563889229951*m.x844
                          - 0.163496038016829*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 22.4608769600988)

m.c406 = Constraint(expr=   28.1082348057479*m.b405 + 1.43674484585278*m.x843 + 0.576563889229951*m.x844
                          - 0.809337839580239*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 28.1082348057479)

m.c407 = Constraint(expr=   36.9394456881923*m.b406 - 0.778404894935236*m.x843 - 1.72423952689335*m.x844
                          + 0.610617285253036*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 36.9394456881923)

m.c408 = Constraint(expr=   43.9419077808954*m.b407 - 1.34144974701925*m.x843 - 0.57111174843345*m.x844
                          - 1.35581936398005*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 43.9419077808954)

m.c409 = Constraint(expr=   46.1570964544559*m.b408 + 0.857405689045341*m.x843 - 0.57111174843345*m.x844
                          - 2.34942213561606*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 46.1570964544559)

m.c410 = Constraint(expr=   29.3818733511685*m.b409 - 0.340773021624587*m.x843 - 0.57111174843345*m.x844
                          - 1.10741867107104*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 29.3818733511685)

m.c411 = Constraint(expr=   24.9535863446181*m.b410 - 0.353939820642937*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 24.9535863446181)

m.c412 = Constraint(expr=   31.1632725556523*m.b411 - 0.709443394138411*m.x843 - 0.57111174843345*m.x844
                          - 0.85901797816204*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 31.1632725556523)

m.c413 = Constraint(expr=   22.0733166555136*m.b412 - 1.10444736468894*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 22.0733166555136)

m.c414 = Constraint(expr=   22.4957042231968*m.b413 + 0.0542309489259392*m.x843 + 0.576563889229951*m.x844
                          - 0.113815899435028*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 22.4957042231968)

m.c415 = Constraint(expr=   33.2809857500041*m.b414 - 0.604109001991604*m.x843 + 0.576563889229951*m.x844
                          - 0.85901797816204*m.x845 - 0.832105807409255*m.x846 - m.x847 <= 33.2809857500041)

m.c416 = Constraint(expr=   39.7132132820777*m.b415 - 0.841111384321919*m.x843 - 1.71878738609685*m.x844
                          - 0.163496038016829*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 39.7132132820777)

m.c417 = Constraint(expr=   27.2368042038006*m.b416 + 1.0022404782472*m.x843 + 0.576563889229951*m.x844
                          - 0.709977562416638*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 27.2368042038006)

m.c418 = Constraint(expr=   40.6456770608971*m.b417 - 1.38407764977938*m.x843 - 1.72423952689335*m.x844
                          + 0.809337839580239*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 40.6456770608971)

m.c419 = Constraint(expr=   22.041283783785*m.b418 + 1.33141045370597*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 22.041283783785)

m.c420 = Constraint(expr=   27.2588617232096*m.b419 + 1.51574563996288*m.x843 - 0.57111174843345*m.x844
                          - 0.610617285253036*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 27.2588617232096)

m.c421 = Constraint(expr=   41.780806556294*m.b420 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          - 2.25006185845246*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 41.780806556294)

m.c422 = Constraint(expr=   24.1462493279693*m.b421 + 0.683109796101709*m.x843 - 0.576563889229951*m.x844
                          - 0.38298548638298*m.x845 + 0.386764577573824*m.x846 + m.x847 <= 24.1462493279693)

m.c423 = Constraint(expr=   22.7334733730631*m.b422 - 1.26244895290915*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 22.7334733730631)

m.c424 = Constraint(expr=   26.5083436572942*m.b423 + 1.43674484585278*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 26.5083436572942)

m.c425 = Constraint(expr=   22.4876086600518*m.b424 - 0.946445776468726*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 22.4876086600518)

m.c426 = Constraint(expr=   39.568183203587*m.b425 + 0.409734522421412*m.x843 - 0.57111174843345*m.x844
                          - 1.90230088837986*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 39.568183203587)

m.c427 = Constraint(expr=   51.0006136799843*m.b426 - 1.05178016861553*m.x843 - 0.57111174843345*m.x844
                          - 2.69718310568867*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 51.0006136799843)

m.c428 = Constraint(expr=   19.3839946856412*m.b427 - 0.893778580395323*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 19.3839946856412)

m.c429 = Constraint(expr=   52.0633029833307*m.b428 - 1.10444736468894*m.x843 - 1.71878738609685*m.x844
                          - 0.709977562416638*m.x845 - 1.66712061335069*m.x846 - m.x847 <= 52.0633029833307)

m.c430 = Constraint(expr=   21.4909505318658*m.b429 - 0.893778580395323*m.x843 - 0.57111174843345*m.x844
                          - 0.21317617659863*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 21.4909505318658)

m.c431 = Constraint(expr=   35.1785982805611*m.b430 - 0.472441011808095*m.x843 + 0.576563889229951*m.x844
                          - 0.560937146671235*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 35.1785982805611)

m.c432 = Constraint(expr=   25.1509906034553*m.b431 - 0.396567723403061*m.x843 - 0.576563889229951*m.x844
                          - 0.283625209219378*m.x845 - 0.615253189555898*m.x846 + m.x847 <= 25.1509906034553)

m.c433 = Constraint(expr=   34.0109658259515*m.b432 - 0.99911297254213*m.x843 + 0.576563889229951*m.x844
                          - 1.50485977972545*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 34.0109658259515)

m.c434 = Constraint(expr=   21.092101499515*m.b433 + 0.699404100825131*m.x843 + 0.576563889229951*m.x844
                          - 0.0144556222714266*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 21.092101499515)

m.c435 = Constraint(expr=   27.3796979024029*m.b434 + 1.67374722818309*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 27.3796979024029)

m.c436 = Constraint(expr=   19.2578531301846*m.b435 + 1.55524603701794*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 19.2578531301846)

m.c437 = Constraint(expr=   33.5241449185878*m.b436 - 0.604109001991604*m.x843 - 0.57111174843345*m.x844
                          - 0.660297423834837*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 33.5241449185878)

m.c438 = Constraint(expr=   22.5865234099849*m.b437 + 1.29191005665092*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 22.5865234099849)

m.c439 = Constraint(expr=   26.764841394465*m.b438 + 1.67374722818309*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 26.764841394465)

m.c440 = Constraint(expr=   22.9413455265375*m.b439 + 1.38407764977938*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 22.9413455265375)

m.c441 = Constraint(expr=   31.3190479060663*m.b440 + 0.870572488063692*m.x843 + 0.576563889229951*m.x844
                          - 0.908698116743841*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 31.3190479060663)

m.c442 = Constraint(expr=   37.145209111728*m.b441 - 1.23611535487245*m.x843 - 1.71878738609685*m.x844
                          - 0.312536453762231*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 37.145209111728)

m.c443 = Constraint(expr=   28.6290339573817*m.b442 + 1.06807447333896*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 28.6290339573817)

m.c444 = Constraint(expr=   24.798184366226*m.b443 - 1.15711456076234*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 24.798184366226)

m.c445 = Constraint(expr=   34.366116164041*m.b444 + 1.59474643407299*m.x843 + 1.72423952689335*m.x844
                          + 0.38298548638298*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 34.366116164041)

m.c446 = Constraint(expr=   22.1107887574003*m.b445 - 0.844238890026991*m.x843 - 0.576563889229951*m.x844
                          + 0.21317617659863*m.x845 - 0.336914920908753*m.x846 + m.x847 <= 22.1107887574003)

m.c447 = Constraint(expr=   24.7975645365689*m.b446 + 1.51574563996288*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 24.7975645365689)

m.c448 = Constraint(expr=   20.5472046653273*m.b447 - 0.0116030461658151*m.x843 - 0.57111174843345*m.x844
                          - 0.312536453762231*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 20.5472046653273)

m.c449 = Constraint(expr=   24.7492247465472*m.b448 + 0.172732140091097*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 24.7492247465472)

m.c450 = Constraint(expr=   29.4345813527965*m.b449 - 0.261772227514481*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 29.4345813527965)

m.c451 = Constraint(expr=   35.6686994857827*m.b450 + 0.106898144999343*m.x843 - 1.71878738609685*m.x844
                          + 0.283625209219378*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 35.6686994857827)

m.c452 = Constraint(expr=   32.426811849246*m.b451 + 0.725737698861833*m.x843 + 0.576563889229951*m.x844
                          - 1.20677894823465*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 32.426811849246)

m.c453 = Constraint(expr=   51.7874053040495*m.b452 + 0.893778580395323*m.x843 - 1.72423952689335*m.x844
                          + 0.809337839580239*m.x845 + 1.55578530589183*m.x846 + m.x847 <= 51.7874053040495)

m.c454 = Constraint(expr=   37.2462034842533*m.b453 - 1.07811376665223*m.x843 - 1.71878738609685*m.x844
                          - 0.511257008089435*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 37.2462034842533)

m.c455 = Constraint(expr=   30.1619455011928*m.b454 - 0.340773021624587*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 0.999108768597542*m.x846 - m.x847 <= 30.1619455011928)

m.c456 = Constraint(expr=   41.5758060768918*m.b455 - 0.261772227514481*m.x843 - 1.71878738609685*m.x844
                          - 0.908698116743841*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 41.5758060768918)

m.c457 = Constraint(expr=   18.0073056306856*m.b456 - 0.630442600028306*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 18.0073056306856)

m.c458 = Constraint(expr=   41.2583530293821*m.b457 - 1.05178016861553*m.x843 + 0.576563889229951*m.x844
                          - 2.00166116554346*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 41.2583530293821)

m.c459 = Constraint(expr=   60.1005238855081*m.b458 - 0.788444188248516*m.x843 - 0.57111174843345*m.x844
                          - 3.19398449150668*m.x845 - 1.16611172978583*m.x846 - m.x847 <= 60.1005238855081)

m.c460 = Constraint(expr=   18.7335788541606*m.b459 - 0.419773815734692*m.x843 + 0.576563889229951*m.x844
                          + 0.0849046548921749*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 18.7335788541606)

m.c461 = Constraint(expr=   36.3502595516389*m.b460 - 0.353939820642937*m.x843 - 0.57111174843345*m.x844
                          - 1.80294061121625*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 36.3502595516389)

m.c462 = Constraint(expr=   43.5868469946257*m.b461 - 0.525108207881499*m.x843 - 1.71878738609685*m.x844
                          - 1.30613922539825*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 43.5868469946257)

m.c463 = Constraint(expr=   50.0691099839228*m.b462 + 0.920112178432024*m.x843 - 0.576563889229951*m.x844
                          + 2.89590366001587*m.x845 + 0.442432231303253*m.x846 + m.x847 <= 50.0691099839228)

m.c464 = Constraint(expr=   35.7896310962981*m.b463 - 0.630442600028306*m.x843 + 0.576563889229951*m.x844
                          - 1.15709880965284*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 35.7896310962981)

m.c465 = Constraint(expr=   22.8129565114247*m.b464 + 0.251732934201202*m.x843 + 0.576563889229951*m.x844
                          - 0.0144556222714266*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 22.8129565114247)

m.c466 = Constraint(expr=   21.8813411049652*m.b465 - 1.7000808262198*m.x843 - 0.576563889229951*m.x844
                          - 0.38298548638298*m.x845 - 0.0585766522616081*m.x846 + m.x847 <= 21.8813411049652)

m.c467 = Constraint(expr=   30.2544314791039*m.b466 - 1.15711456076234*m.x843 + 0.576563889229951*m.x844
                          - 1.05773853248924*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 30.2544314791039)

m.c468 = Constraint(expr=   28.7948633306619*m.b467 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 28.7948633306619)

m.c469 = Constraint(expr=   24.6246182942774*m.b468 + 1.59474643407299*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 24.6246182942774)

m.c470 = Constraint(expr=   30.4161040458477*m.b469 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          - 1.05773853248924*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 30.4161040458477)

m.c471 = Constraint(expr=   20.5962772397158*m.b470 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 20.5962772397158)

m.c472 = Constraint(expr=   24.490527193046*m.b471 - 0.498774609844797*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 24.490527193046)

m.c473 = Constraint(expr=   25.9588134481171*m.b472 - 0.762110590211814*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 25.9588134481171)

m.c474 = Constraint(expr=   28.1185557625064*m.b473 + 0.185898939109448*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 28.1185557625064)

m.c475 = Constraint(expr=   32.1151770821367*m.b474 + 1.09440807137566*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 32.1151770821367)

m.c476 = Constraint(expr=   49.9945768936968*m.b475 - 0.498774609844797*m.x843 - 0.57111174843345*m.x844
                          - 2.10102144270706*m.x845 - 1.27744703724469*m.x846 - m.x847 <= 49.9945768936968)

m.c477 = Constraint(expr=   42.613615619184*m.b476 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          - 0.0641357608532274*m.x845 - 2.55780307302155*m.x846 - m.x847 <= 42.613615619184)

m.c478 = Constraint(expr=   32.6116383335088*m.b477 + 0.330733728311307*m.x843 - 0.57111174843345*m.x844
                          - 1.60422005688905*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 32.6116383335088)

m.c479 = Constraint(expr=   28.5857986408094*m.b478 + 0.83107209100864*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 28.5857986408094)

m.c480 = Constraint(expr=   32.7962894721856*m.b479 - 1.10444736468894*m.x843 + 0.576563889229951*m.x844
                          + 0.532025902128382*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 32.7962894721856)

m.c481 = Constraint(expr=   21.564165173576*m.b480 - 1.7000808262198*m.x843 - 0.576563889229951*m.x844
                          - 0.184264932055776*m.x845 - 0.225579613449895*m.x846 + m.x847 <= 21.564165173576)

m.c482 = Constraint(expr=   41.9042043584728*m.b481 - 0.99911297254213*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 2.33513245810384*m.x846 - m.x847 <= 41.9042043584728)

m.c483 = Constraint(expr=   30.3360657427448*m.b482 + 1.34457725272432*m.x843 - 0.57111174843345*m.x844
                          + 0.879786872200988*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 30.3360657427448)

m.c484 = Constraint(expr=   32.6357549532993*m.b483 - 1.20978175683574*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 32.6357549532993)

m.c485 = Constraint(expr=   59.3481108021465*m.b484 - 0.893778580395323*m.x843 - 0.57111174843345*m.x844
                          - 3.49206532299748*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 59.3481108021465)

m.c486 = Constraint(expr=   27.1282796092668*m.b485 + 1.54207923799959*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 27.1282796092668)

m.c487 = Constraint(expr=   28.8540473475188*m.b486 - 1.57845212934957*m.x843 - 0.57111174843345*m.x844
                          - 0.262856315180431*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 28.8540473475188)

m.c488 = Constraint(expr=   55.0462777985177*m.b487 - 1.49945133523946*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 - 3.00314430285699*m.x846 - m.x847 <= 55.0462777985177)

m.c489 = Constraint(expr=   29.5160532250835*m.b488 - 1.08124127235731*m.x843 + 0.57111174843345*m.x844
                          - 0.879786872200988*m.x845 - 0.392582574638182*m.x846 + m.x847 <= 29.5160532250835)

m.c490 = Constraint(expr=   29.5705746330485*m.b489 + 1.08124127235731*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 29.5705746330485)

m.c491 = Constraint(expr=   26.9146465548148*m.b490 - 1.05178016861553*m.x843 - 0.57111174843345*m.x844
                          - 0.511257008089435*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 26.9146465548148)

m.c492 = Constraint(expr=   37.2810740070566*m.b491 - 1.36778334505595*m.x843 + 0.576563889229951*m.x844
                          - 1.45517964114365*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 37.2810740070566)

m.c493 = Constraint(expr=   27.6531097739542*m.b492 - 1.56841283603629*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 + 0.0527586551972498*m.x846 + m.x847 <= 27.6531097739542)

m.c494 = Constraint(expr=   36.8278804666615*m.b493 - 0.841111384321919*m.x843 - 1.71878738609685*m.x844
                          - 0.709977562416638*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 36.8278804666615)

m.c495 = Constraint(expr=   42.5395354569679*m.b494 - 0.419773815734692*m.x843 - 0.57111174843345*m.x844
                          - 1.80294061121625*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 42.5395354569679)

m.c496 = Constraint(expr=   22.1809377426988*m.b495 + 0.172732140091097*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 22.1809377426988)

m.c497 = Constraint(expr=   20.3010321900599*m.b496 + 1.22607606155917*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 20.3010321900599)

m.c498 = Constraint(expr=   25.6385945760229*m.b497 - 0.156437835367675*m.x843 + 0.576563889229951*m.x844
                          - 0.362216592344032*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 25.6385945760229)

m.c499 = Constraint(expr=   31.3730756005218*m.b498 + 1.8054152183666*m.x843 - 0.57111174843345*m.x844
                          + 1.27722798085539*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 31.3730756005218)

m.c500 = Constraint(expr=   35.3466069648203*m.b499 + 1.01540727726555*m.x843 + 0.576563889229951*m.x844
                          + 1.5753088123462*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 35.3466069648203)

m.c501 = Constraint(expr=   33.8591346841414*m.b500 + 1.44991164487113*m.x843 - 0.57111174843345*m.x844
                          + 1.27722798085539*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 33.8591346841414)

m.c502 = Constraint(expr=   22.3089471702038*m.b501 + 0.304400130274605*m.x843 + 0.576563889229951*m.x844
                          - 0.0144556222714266*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 22.3089471702038)

m.c503 = Constraint(expr=   54.2329590185367*m.b502 + 0.06739774794429*m.x843 + 0.576563889229951*m.x844
                          - 1.50485977972545*m.x845 - 2.33513245810384*m.x846 - m.x847 <= 54.2329590185367)

m.c504 = Constraint(expr=   35.5717827463113*m.b503 - 0.893778580395323*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 35.5717827463113)

m.c505 = Constraint(expr=   24.8395631571987*m.b504 + 1.31824365468762*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 24.8395631571987)

m.c506 = Constraint(expr=   45.4995568929314*m.b505 - 0.5514418059182*m.x843 + 1.72423952689335*m.x844
                          - 0.709977562416638*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 45.4995568929314)

m.c507 = Constraint(expr=   42.3412719351658*m.b506 - 1.62108003210969*m.x843 - 1.72423952689335*m.x844
                          - 1.17786770369179*m.x845 - 0.169911959720466*m.x846 + m.x847 <= 42.3412719351658)

m.c508 = Constraint(expr=   25.7444452955903*m.b507 - 0.683109796101709*m.x843 + 0.576563889229951*m.x844
                          - 0.759657700998438*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 25.7444452955903)

m.c509 = Constraint(expr=   28.8319404699412*m.b508 + 0.357067326348009*m.x843 - 1.71878738609685*m.x844
                          - 0.0144556222714266*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 28.8319404699412)

m.c510 = Constraint(expr=   38.7744676860914*m.b509 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 1.80294061121625*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 38.7744676860914)

m.c511 = Constraint(expr=   31.4444523322256*m.b510 - 0.156437835367675*m.x843 - 1.71878738609685*m.x844
                          + 0.134584793473976*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 31.4444523322256)

m.c512 = Constraint(expr=   22.4068842953993*m.b511 - 0.446107413771394*m.x843 + 0.576563889229951*m.x844
                          - 0.560937146671235*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 22.4068842953993)

m.c513 = Constraint(expr=   29.490324727151*m.b512 - 1.12074166941236*m.x843 - 0.576563889229951*m.x844
                          - 0.979147149364589*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 29.490324727151)

m.c514 = Constraint(expr=   27.6360510154028*m.b513 - 0.709443394138411*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 27.6360510154028)

m.c515 = Constraint(expr=   34.367482800672*m.b514 - 0.261772227514481*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 34.367482800672)

m.c516 = Constraint(expr=   70.8258824527877*m.b515 - 2.36846007045062*m.x843 - 1.71878738609685*m.x844
                          + 1.6746690895098*m.x845 + 2.45228576262705*m.x846 - m.x847 <= 70.8258824527877)

m.c517 = Constraint(expr=   41.2550903519794*m.b516 - 0.446107413771394*m.x843 - 0.57111174843345*m.x844
                          - 1.50485977972545*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 41.2550903519794)

m.c518 = Constraint(expr=   23.8955722250861*m.b517 + 1.31824365468762*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 23.8955722250861)

m.c519 = Constraint(expr=   44.8972620839077*m.b518 - 0.498774609844797*m.x843 - 1.71878738609685*m.x844
                          - 0.610617285253036*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 44.8972620839077)

m.c520 = Constraint(expr=   24.0158660008572*m.b519 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 24.0158660008572)

m.c521 = Constraint(expr=   28.2290962363635*m.b520 - 0.498774609844797*m.x843 - 0.57111174843345*m.x844
                          - 0.809337839580239*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 28.2290962363635)

m.c522 = Constraint(expr=   42.717988156448*m.b521 - 0.735776992175112*m.x843 - 0.57111174843345*m.x844
                          - 1.45517964114365*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 42.717988156448)

m.c523 = Constraint(expr=   46.4481889052589*m.b522 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 1.90230088837986*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 46.4481889052589)

m.c524 = Constraint(expr=   74.4554244156*m.b523 + 0.317566929292956*m.x843 - 4.01413866142365*m.x844
                          + 1.17786770369179*m.x845 - 1.22177938351526*m.x846 - m.x847 <= 74.4554244156)

m.c525 = Constraint(expr=   21.0350576859491*m.b524 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          - 0.113815899435028*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 21.0350576859491)

m.c526 = Constraint(expr=   36.6412670145137*m.b525 - 0.169604634386025*m.x843 + 0.576563889229951*m.x844
                          - 1.40549950256185*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 36.6412670145137)

m.c527 = Constraint(expr=   53.3627475705521*m.b526 - 0.274939026532832*m.x843 + 0.576563889229951*m.x844
                          - 2.39910227419786*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 53.3627475705521)

m.c528 = Constraint(expr=   20.458476645305*m.b527 + 1.09440807137566*m.x843 - 0.57111174843345*m.x844
                          - 0.312536453762231*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 20.458476645305)

m.c529 = Constraint(expr=   20.0848140333251*m.b528 - 1.44678413916606*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 20.0848140333251)

m.c530 = Constraint(expr=   25.560138499043*m.b529 - 0.920112178432024*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 25.560138499043)

m.c531 = Constraint(expr=   28.040761164931*m.b530 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 28.040761164931)

m.c532 = Constraint(expr=   25.1456757715231*m.b531 + 0.146398542054395*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 25.1456757715231)

m.c533 = Constraint(expr=   30.4756608125413*m.b532 - 0.0379366442025169*m.x843 - 0.57111174843345*m.x844
                          - 0.362216592344032*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 30.4756608125413)

m.c534 = Constraint(expr=   25.1456757715231*m.b533 + 0.146398542054395*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 25.1456757715231)

m.c535 = Constraint(expr=   28.0841302621613*m.b534 - 0.722610193156762*m.x843 - 1.71878738609685*m.x844
                          - 0.0144556222714266*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 28.0841302621613)

m.c536 = Constraint(expr=   54.986811268759*m.b535 - 1.55211853131287*m.x843 - 1.71878738609685*m.x844
                          - 2.39910227419786*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 54.986811268759)

m.c537 = Constraint(expr=   50.2651971863053*m.b536 - 0.906945379413674*m.x843 - 0.57111174843345*m.x844
                          - 1.75326047263445*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 50.2651971863053)

m.c538 = Constraint(expr=   47.2016470593065*m.b537 - 0.735776992175112*m.x843 + 0.576563889229951*m.x844
                          - 2.39910227419786*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 47.2016470593065)

m.c539 = Constraint(expr=   34.1003994849427*m.b538 - 0.353939820642937*m.x843 + 0.576563889229951*m.x844
                          - 1.40549950256185*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 34.1003994849427)

m.c540 = Constraint(expr=   36.7199681358743*m.b539 - 0.972779374505428*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 1.88979122826841*m.x846 - m.x847 <= 36.7199681358743)

m.c541 = Constraint(expr=   32.3413339933201*m.b540 - 0.511941408863148*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 32.3413339933201)

m.c542 = Constraint(expr=   34.1794766358915*m.b541 - 0.630442600028306*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 34.1794766358915)

m.c543 = Constraint(expr=   30.0199620274397*m.b542 - 0.656776198065007*m.x843 + 0.576563889229951*m.x844
                          + 1.07850742652819*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 30.0199620274397)

m.c544 = Constraint(expr=   36.3099776405188*m.b543 - 1.31511614898255*m.x843 - 1.71878738609685*m.x844
                          - 0.560937146671235*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 36.3099776405188)

m.c545 = Constraint(expr=   31.539100602732*m.b544 + 1.12074166941236*m.x843 + 0.576563889229951*m.x844
                          + 1.07850742652819*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 31.539100602732)

m.c546 = Constraint(expr=   20.5263752107712*m.b545 + 0.251732934201202*m.x843 + 0.576563889229951*m.x844
                          - 0.0641357608532274*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 20.5263752107712)

m.c547 = Constraint(expr=   25.7454590194801*m.b546 - 0.419773815734692*m.x843 - 0.57111174843345*m.x844
                          - 0.908698116743841*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 25.7454590194801)

m.c548 = Constraint(expr=   21.3177538494589*m.b547 + 0.422901321439763*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 21.3177538494589)

m.c549 = Constraint(expr=   43.4769651835292*m.b548 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          - 1.30613922539825*m.x845 - 1.38878234470355*m.x846 - m.x847 <= 43.4769651835292)

m.c550 = Constraint(expr=   27.0363371041742*m.b549 - 0.169604634386025*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 27.0363371041742)

m.c551 = Constraint(expr=   20.8923517307803*m.b550 - 1.28878255094585*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 20.8923517307803)

m.c552 = Constraint(expr=   26.0604484720307*m.b551 - 0.99911297254213*m.x843 + 0.576563889229951*m.x844
                          - 0.759657700998438*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 26.0604484720307)

m.c553 = Constraint(expr=   29.0497902109677*m.b552 - 1.02544657057883*m.x843 + 0.576563889229951*m.x844
                          - 0.610617285253036*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 29.0497902109677)

m.c554 = Constraint(expr=   49.8185474685594*m.b553 - 1.05178016861553*m.x843 - 2.86646302376025*m.x844
                          + 0.283625209219378*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 49.8185474685594)

m.c555 = Constraint(expr=   30.2564356665044*m.b554 - 1.02544657057883*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 30.2564356665044)

m.c556 = Constraint(expr=   28.6308265419876*m.b555 - 0.39344021769799*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 28.6308265419876)

m.c557 = Constraint(expr=   22.4254811947676*m.b556 - 0.656776198065007*m.x843 - 0.57111174843345*m.x844
                          - 0.21317617659863*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 22.4254811947676)

m.c558 = Constraint(expr=   31.0042216922582*m.b557 - 0.485607810826446*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 31.0042216922582)

m.c559 = Constraint(expr=   26.2598435807766*m.b558 - 0.893778580395323*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 26.2598435807766)

m.c560 = Constraint(expr=   26.4796605668799*m.b559 - 0.169604634386025*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 26.4796605668799)

m.c561 = Constraint(expr=   31.5296687232309*m.b560 + 1.30507685566927*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 31.5296687232309)

m.c562 = Constraint(expr=   34.8079744016027*m.b561 - 1.18344815879904*m.x843 - 0.57111174843345*m.x844
                          + 0.730746456455585*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 34.8079744016027)

m.c563 = Constraint(expr=   26.6944192533444*m.b562 + 0.923239684137096*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 26.6944192533444)

m.c564 = Constraint(expr=   27.1118625486907*m.b563 + 0.37023412536636*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 27.1118625486907)

m.c565 = Constraint(expr=   39.0159752175654*m.b564 - 0.893778580395323*m.x843 + 0.576563889229951*m.x844
                          - 1.00805839390744*m.x845 + 1.22759738057962*m.x846 - m.x847 <= 39.0159752175654)

m.c566 = Constraint(expr=   26.1924397754068*m.b565 + 0.0937313459809917*m.x843 + 0.576563889229951*m.x844
                          - 0.312536453762231*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 26.1924397754068)

m.c567 = Constraint(expr=   20.1348318602614*m.b566 + 0.159565341072746*m.x843 + 0.576563889229951*m.x844
                          - 0.312536453762231*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 20.1348318602614)

m.c568 = Constraint(expr=   36.8607501623593*m.b567 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          - 1.60422005688905*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 36.8607501623593)

m.c569 = Constraint(expr=   32.9195109170481*m.b568 - 0.735776992175112*m.x843 - 0.57111174843345*m.x844
                          - 0.809337839580239*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 32.9195109170481)

m.c570 = Constraint(expr=   32.6312381122328*m.b569 + 0.120064944017693*m.x843 - 0.57111174843345*m.x844
                          + 0.730746456455585*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 32.6312381122328)

m.c571 = Constraint(expr=   18.5513725019367*m.b570 - 0.906945379413674*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 18.5513725019367)

m.c572 = Constraint(expr=   29.3730873773262*m.b571 - 0.459274212789744*m.x843 - 0.57111174843345*m.x844
                          + 0.482345763546581*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 29.3730873773262)

m.c573 = Constraint(expr=   26.3122247854506*m.b572 + 0.06739774794429*m.x843 + 0.576563889229951*m.x844
                          + 0.43266562496478*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 26.3122247854506)

m.c574 = Constraint(expr=   25.1686367982806*m.b573 - 1.05178016861553*m.x843 - 0.57111174843345*m.x844
                          - 0.0641357608532274*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 25.1686367982806)

m.c575 = Constraint(expr=   46.5602336374211*m.b574 - 1.63111932542297*m.x843 - 0.57111174843345*m.x844
                          - 0.809337839580239*m.x845 - 2.11246184318612*m.x846 - m.x847 <= 46.5602336374211)

m.c576 = Constraint(expr=   23.3094753896047*m.b575 - 1.15711456076234*m.x843 + 0.576563889229951*m.x844
                          + 0.0849046548921749*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 23.3094753896047)

m.c577 = Constraint(expr=   18.0602795196188*m.b576 + 0.422901321439763*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 18.0602795196188)

m.c578 = Constraint(expr=   32.0046346400457*m.b577 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          - 1.25645908681645*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 32.0046346400457)

m.c579 = Constraint(expr=   30.8547130451771*m.b578 - 1.31511614898255*m.x843 - 0.57111174843345*m.x844
                          - 1.10741867107104*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 30.8547130451771)

m.c580 = Constraint(expr=   25.0053266955097*m.b579 - 0.195938232422727*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 25.0053266955097)

m.c581 = Constraint(expr=   41.2955531455003*m.b580 - 1.02544657057883*m.x843 - 0.57111174843345*m.x844
                          - 1.95198102696166*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 41.2955531455003)

m.c582 = Constraint(expr=   72.5161570431288*m.b581 - 0.709443394138411*m.x843 - 1.71878738609685*m.x844
                          - 2.34942213561606*m.x845 - 2.11246184318612*m.x846 - m.x847 <= 72.5161570431288)

m.c583 = Constraint(expr=   32.3690865787373*m.b582 - 0.525108207881499*m.x843 - 0.57111174843345*m.x844
                          - 1.50485977972545*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 32.3690865787373)

m.c584 = Constraint(expr=   30.3766704064302*m.b583 - 0.788444188248516*m.x843 - 1.71878738609685*m.x844
                          - 0.0144556222714266*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 30.3766704064302)

m.c585 = Constraint(expr=   29.1219410699587*m.b584 + 0.0937313459809917*m.x843 + 0.576563889229951*m.x844
                          + 0.43266562496478*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 29.1219410699587)

m.c586 = Constraint(expr=   23.6603760875184*m.b585 + 1.25240965959587*m.x843 + 0.576563889229951*m.x844
                          + 0.38298548638298*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 23.6603760875184)

m.c587 = Constraint(expr=   40.1662853151491*m.b586 - 0.709443394138411*m.x843 - 1.71878738609685*m.x844
                          + 0.333305347801179*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 40.1662853151491)

m.c588 = Constraint(expr=   32.4897926381093*m.b587 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          - 0.660297423834837*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 32.4897926381093)

m.c589 = Constraint(expr=   17.8570691308434*m.b588 - 0.709443394138411*m.x843 - 0.57111174843345*m.x844
                          + 0.0352245163103741*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 17.8570691308434)

m.c590 = Constraint(expr=   36.5505776036886*m.b589 - 0.5514418059182*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 36.5505776036886)

m.c591 = Constraint(expr=   54.9470264314432*m.b590 - 0.99911297254213*m.x843 - 2.86646302376025*m.x844
                          - 0.362216592344032*m.x845 - 1.16611172978583*m.x846 - m.x847 <= 54.9470264314432)

m.c592 = Constraint(expr=   56.4765363868418*m.b591 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 - 3.55982084015127*m.x846 - m.x847 <= 56.4765363868418)

m.c593 = Constraint(expr=   54.9667226880763*m.b592 - 0.446107413771394*m.x843 - 1.71878738609685*m.x844
                          - 0.0641357608532274*m.x845 - 2.66913838048041*m.x846 - m.x847 <= 54.9667226880763)

m.c594 = Constraint(expr=   44.9823327855631*m.b593 - 0.814777786285218*m.x843 - 1.71878738609685*m.x844
                          + 0.581706040710183*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 44.9823327855631)

m.c595 = Constraint(expr=   27.5306255368644*m.b594 + 0.83107209100864*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 27.5306255368644)

m.c596 = Constraint(expr=   40.6241392292037*m.b595 + 0.712570899843482*m.x843 - 1.71878738609685*m.x844
                          + 0.879786872200988*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 40.6241392292037)

m.c597 = Constraint(expr=   27.1325704174475*m.b596 - 0.630442600028306*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 27.1325704174475)

m.c598 = Constraint(expr=   26.4323803518938*m.b597 + 0.317566929292956*m.x843 + 0.576563889229951*m.x844
                          - 0.809337839580239*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 26.4323803518938)

m.c599 = Constraint(expr=   25.9573851057249*m.b598 - 2.63179605081764*m.x843 + 0.576563889229951*m.x844
                          + 0.0352245163103741*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 25.9573851057249)

m.c600 = Constraint(expr=   59.084298735069*m.b599 - 2.42112726652402*m.x843 - 1.71878738609685*m.x844
                          - 1.05773853248924*m.x845 - 1.88979122826841*m.x846 - m.x847 <= 59.084298735069)

m.c601 = Constraint(expr=   29.5845097677177*m.b600 + 0.883739287082043*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 29.5845097677177)

m.c602 = Constraint(expr=   29.5299883597527*m.b601 + 0.883739287082043*m.x843 - 0.57111174843345*m.x844
                          - 0.511257008089435*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 29.5299883597527)

m.c603 = Constraint(expr=   45.1493278894646*m.b602 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          - 1.70358033405265*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 45.1493278894646)

m.c604 = Constraint(expr=   41.4564413815351*m.b603 - 2.31579287437722*m.x843 - 0.57111174843345*m.x844
                          - 1.45517964114365*m.x845 - 0.887773461138684*m.x846 - m.x847 <= 41.4564413815351)

m.c605 = Constraint(expr=   45.3064800359287*m.b604 + 0.120064944017693*m.x843 - 0.57111174843345*m.x844
                          - 1.05773853248924*m.x845 - 1.88979122826841*m.x846 - m.x847 <= 45.3064800359287)

m.c606 = Constraint(expr=   45.3064800359287*m.b605 + 0.120064944017693*m.x843 - 0.57111174843345*m.x844
                          - 1.05773853248924*m.x845 - 1.88979122826841*m.x846 - m.x847 <= 45.3064800359287)

m.c607 = Constraint(expr=   32.7306966576492*m.b606 + 0.738904497880184*m.x843 - 0.57111174843345*m.x844
                          + 1.5753088123462*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 32.7306966576492)

m.c608 = Constraint(expr=   43.7879572617426*m.b607 + 0.817905291990289*m.x843 - 1.71878738609685*m.x844
                          + 1.5753088123462*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 43.7879572617426)

m.c609 = Constraint(expr=   49.3174167275001*m.b608 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 0.85901797816204*m.x845 - 2.4464677655627*m.x846 - m.x847 <= 49.3174167275001)

m.c610 = Constraint(expr=   68.134752145431*m.b609 + 1.13390846843071*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 3.45430352975678*m.x846 - m.x847 <= 68.134752145431)

m.c611 = Constraint(expr=   26.1558346572558*m.b610 - 0.867444982358621*m.x843 - 0.57111174843345*m.x844
                          - 0.0641357608532274*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 26.1558346572558)

m.c612 = Constraint(expr=   42.4907964786574*m.b611 - 1.55211853131287*m.x843 - 1.71878738609685*m.x844
                          - 0.709977562416638*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 42.4907964786574)

m.c613 = Constraint(expr=   28.0297295173273*m.b612 - 1.02544657057883*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 28.0297295173273)

m.c614 = Constraint(expr=   24.0768448932187*m.b613 + 1.54207923799959*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 24.0768448932187)

m.c615 = Constraint(expr=   38.8002437887025*m.b614 + 1.56841283603629*m.x843 - 1.71878738609685*m.x844
                          + 0.283625209219378*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 38.8002437887025)

m.c616 = Constraint(expr=   42.1258519128288*m.b615 - 0.0642702422392186*m.x843 - 0.57111174843345*m.x844
                          - 1.80294061121625*m.x845 - 0.832105807409255*m.x846 - m.x847 <= 42.1258519128288)

m.c617 = Constraint(expr=   47.8885862605819*m.b616 - 0.353939820642937*m.x843 - 1.71878738609685*m.x844
                          - 1.70358033405265*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 47.8885862605819)

m.c618 = Constraint(expr=   36.4663512919129*m.b617 - 0.353939820642937*m.x843 + 0.576563889229951*m.x844
                          - 1.70358033405265*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 36.4663512919129)

m.c619 = Constraint(expr=   52.1897512316472*m.b618 + 0.182771433404376*m.x843 - 1.72423952689335*m.x844
                          + 0.809337839580239*m.x845 + 1.66712061335069*m.x846 + m.x847 <= 52.1897512316472)

m.c620 = Constraint(expr=   63.2186780946921*m.b619 - 0.709443394138411*m.x843 + 0.576563889229951*m.x844
                          - 2.89590366001587*m.x845 - 1.77845592080955*m.x846 - m.x847 <= 63.2186780946921)

m.c621 = Constraint(expr=   28.6202195938298*m.b620 + 0.765238095916885*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 28.6202195938298)

m.c622 = Constraint(expr=   27.0158859929143*m.b621 - 0.0116030461658151*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 27.0158859929143)

m.c623 = Constraint(expr=   34.4068406434687*m.b622 + 0.515068914568219*m.x843 - 1.71878738609685*m.x844
                          + 0.283625209219378*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 34.4068406434687)

m.c624 = Constraint(expr=   23.9488729109734*m.b623 + 1.85808241444001*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 + 0.448250228367611*m.x846 - m.x847 <= 23.9488729109734)

m.c625 = Constraint(expr=   24.7485546588623*m.b624 + 0.0642702422392186*m.x843 - 0.576563889229951*m.x844
                          + 0.610617285253036*m.x845 - 0.281247267179324*m.x846 + m.x847 <= 24.7485546588623)

m.c626 = Constraint(expr=   31.5063620920345*m.b625 + 0.910072885118745*m.x843 + 0.576563889229951*m.x844
                          + 0.979147149364589*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 31.5063620920345)

m.c627 = Constraint(expr=   25.7192154384388*m.b626 - 1.43674484585278*m.x843 + 0.57111174843345*m.x844
                          - 0.581706040710183*m.x845 + 0.275429270114966*m.x846 + m.x847 <= 25.7192154384388)

m.c628 = Constraint(expr=   24.3073523458928*m.b627 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 24.3073523458928)

m.c629 = Constraint(expr=   23.6878824405039*m.b628 + 0.962740081192148*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 23.6878824405039)

m.c630 = Constraint(expr=   31.1661541515904*m.b629 + 1.23924286057752*m.x843 - 0.57111174843345*m.x844
                          + 0.979147149364589*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 31.1661541515904)

m.c631 = Constraint(expr=   24.8945142358839*m.b630 - 0.116937438312622*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 24.8945142358839)

m.c632 = Constraint(expr=   39.6392919320023*m.b631 - 0.867444982358621*m.x843 - 1.71878738609685*m.x844
                          - 0.660297423834837*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 39.6392919320023)

m.c633 = Constraint(expr=   20.6333054891977*m.b632 - 1.38407764977938*m.x843 - 0.576563889229951*m.x844
                          - 0.184264932055776*m.x845 + 0.164093962656108*m.x846 + m.x847 <= 20.6333054891977)

m.c634 = Constraint(expr=   31.2181773359806*m.b633 + 1.47624524290783*m.x843 + 0.576563889229951*m.x844
                          + 1.17786770369179*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 31.2181773359806)

m.c635 = Constraint(expr=   30.8946236373286*m.b634 - 0.314439423587885*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 - 0.999108768597542*m.x846 - m.x847 <= 30.8946236373286)

m.c636 = Constraint(expr=   30.416162934965*m.b635 + 0.910072885118745*m.x843 - 0.57111174843345*m.x844
                          + 1.376588258019*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 30.416162934965)

m.c637 = Constraint(expr=   20.6286409863302*m.b636 + 0.501902115549868*m.x843 - 0.57111174843345*m.x844
                          + 0.38298548638298*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 20.6286409863302)

m.c638 = Constraint(expr=   32.5243130648153*m.b637 + 1.35774405174267*m.x843 - 1.71878738609685*m.x844
                          + 0.283625209219378*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 32.5243130648153)

m.c639 = Constraint(expr=   21.1020780961463*m.b638 - 1.35774405174267*m.x843 - 0.576563889229951*m.x844
                          - 0.283625209219378*m.x845 - 0.114244305991037*m.x846 + m.x847 <= 21.1020780961463)

m.c640 = Constraint(expr=   42.3109719115372*m.b639 + 0.199065738127799*m.x843 - 1.71878738609685*m.x844
                          - 0.660297423834837*m.x845 - 0.832105807409255*m.x846 - m.x847 <= 42.3109719115372)

m.c641 = Constraint(expr=   28.9714334285408*m.b640 - 0.762110590211814*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 28.9714334285408)

m.c642 = Constraint(expr=   29.1291607172844*m.b641 - 1.02544657057883*m.x843 + 0.576563889229951*m.x844
                          - 0.958378255325642*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 29.1291607172844)

m.c643 = Constraint(expr=   37.1399780006029*m.b642 + 0.0278973508892374*m.x843 - 1.71878738609685*m.x844
                          + 0.38298548638298*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 37.1399780006029)

m.c644 = Constraint(expr=   37.4386808536555*m.b643 - 0.604109001991604*m.x843 - 0.57111174843345*m.x844
                          - 1.10741867107104*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 37.4386808536555)

m.c645 = Constraint(expr=   39.4076592097659*m.b644 - 0.314439423587885*m.x843 + 0.576563889229951*m.x844
                          - 2.00166116554346*m.x845 - 0.331096923844395*m.x846 - m.x847 <= 39.4076592097659)

m.c646 = Constraint(expr=   19.5128418629795*m.b645 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 19.5128418629795)

m.c647 = Constraint(expr=   41.2569382464894*m.b646 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          - 0.85901797816204*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 41.2569382464894)

m.c648 = Constraint(expr=   45.4337714086197*m.b647 - 0.367106619661288*m.x843 - 0.57111174843345*m.x844
                          - 1.15709880965284*m.x845 - 1.77845592080955*m.x846 - m.x847 <= 45.4337714086197)

m.c649 = Constraint(expr=   21.2994420972972*m.b648 - 0.735776992175112*m.x843 - 0.57111174843345*m.x844
                          + 0.482345763546581*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 21.2994420972972)

m.c650 = Constraint(expr=   35.5418011074653*m.b649 - 0.195938232422727*m.x843 - 0.57111174843345*m.x844
                          - 0.908698116743841*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 35.5418011074653)

m.c651 = Constraint(expr=   24.3605482852318*m.b650 - 0.472441011808095*m.x843 + 0.576563889229951*m.x844
                          - 0.809337839580239*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 24.3605482852318)

m.c652 = Constraint(expr=   42.4000119989606*m.b651 - 0.288105825551183*m.x843 - 1.71878738609685*m.x844
                          - 0.660297423834837*m.x845 - 0.832105807409255*m.x846 - m.x847 <= 42.4000119989606)

m.c653 = Constraint(expr=   43.3348576884182*m.b652 - 0.972779374505428*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 - 2.4464677655627*m.x846 - m.x847 <= 43.3348576884182)

m.c654 = Constraint(expr=   56.9330406502442*m.b653 - 0.301272624569534*m.x843 + 0.576563889229951*m.x844
                          - 1.30613922539825*m.x845 - 2.78047368793927*m.x846 - m.x847 <= 56.9330406502442)

m.c655 = Constraint(expr=   54.9636699880712*m.b654 - 0.274939026532832*m.x843 + 0.576563889229951*m.x844
                          + 1.7740293666734*m.x845 + 2.11827984025048*m.x846 - m.x847 <= 54.9636699880712)

m.c656 = Constraint(expr=   50.4224320069896*m.b655 + 0.0937313459809917*m.x843 + 0.576563889229951*m.x844
                          - 1.45517964114365*m.x845 - 2.00112653572726*m.x846 - m.x847 <= 50.4224320069896)

m.c657 = Constraint(expr=   19.594980684664*m.b656 + 0.172732140091097*m.x843 - 0.57111174843345*m.x844
                          - 0.312536453762231*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 19.594980684664)

m.c658 = Constraint(expr=   21.5784796981284*m.b657 + 0.396567723403061*m.x843 - 0.57111174843345*m.x844
                          + 0.38298548638298*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 21.5784796981284)

m.c659 = Constraint(expr=   59.4391079153871*m.b658 - 0.130104237330973*m.x843 - 1.71878738609685*m.x844
                          - 0.709977562416638*m.x845 - 2.50213541929212*m.x846 - m.x847 <= 59.4391079153871)

m.c660 = Constraint(expr=   39.9262641741399*m.b659 + 0.0410641499075883*m.x843 - 1.71878738609685*m.x844
                          - 0.660297423834837*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 39.9262641741399)

m.c661 = Constraint(expr=   25.4373328395404*m.b660 - 0.867444982358621*m.x843 - 0.57111174843345*m.x844
                          - 0.660297423834837*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 25.4373328395404)

m.c662 = Constraint(expr=   31.0264401335059*m.b661 + 0.594069708678324*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 31.0264401335059)

m.c663 = Constraint(expr=   31.2597099100269*m.b662 - 0.762110590211814*m.x843 - 0.57111174843345*m.x844
                          - 0.312536453762231*m.x845 - 1.16611172978583*m.x846 - m.x847 <= 31.2597099100269)

m.c664 = Constraint(expr=   19.3685747286221*m.b663 + 0.23543862947778*m.x843 + 0.57111174843345*m.x844
                          - 0.283625209219378*m.x845 - 0.0585766522616081*m.x846 + m.x847 <= 19.3685747286221)

m.c665 = Constraint(expr=   19.3685747286221*m.b664 - 0.23543862947778*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 19.3685747286221)

m.c666 = Constraint(expr=   27.1276869250076*m.b665 + 0.923239684137096*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 27.1276869250076)

m.c667 = Constraint(expr=   23.9678111328386*m.b666 + 1.56841283603629*m.x843 + 0.576563889229951*m.x844
                          - 0.610617285253036*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 23.9678111328386)

m.c668 = Constraint(expr=   36.7844903224967*m.b667 + 1.8054152183666*m.x843 - 0.57111174843345*m.x844
                          + 0.482345763546581*m.x845 - 1.44444999843297*m.x846 - m.x847 <= 36.7844903224967)

m.c669 = Constraint(expr=   32.3967456454001*m.b668 - 0.630442600028306*m.x843 - 0.57111174843345*m.x844
                          - 1.10741867107104*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 32.3967456454001)

m.c670 = Constraint(expr=   32.221091544973*m.b669 + 0.264899733219553*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 - 0.943441114868113*m.x846 - m.x847 <= 32.221091544973)

m.c671 = Constraint(expr=   80.8987038588586*m.b670 + 0.238566135182851*m.x843 - 1.71878738609685*m.x844
                          - 1.00805839390744*m.x845 - 4.33916799236328*m.x846 - m.x847 <= 80.8987038588586)

m.c672 = Constraint(expr=   28.1557619770879*m.b671 + 0.0542309489259392*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 1.05477642232697*m.x846 - m.x847 <= 28.1557619770879)

m.c673 = Constraint(expr=   38.6406193155327*m.b672 - 0.893778580395323*m.x843 + 0.576563889229951*m.x844
                          - 0.809337839580239*m.x845 - 1.38878234470355*m.x846 - m.x847 <= 38.6406193155327)

m.c674 = Constraint(expr=   23.704627866149*m.b673 - 1.7000808262198*m.x843 - 0.576563889229951*m.x844
                          + 0.0144556222714266*m.x845 + 0.60943519249154*m.x846 + m.x847 <= 23.704627866149)

m.c675 = Constraint(expr=   25.8948336649169*m.b674 - 0.643609399046656*m.x843 + 0.576563889229951*m.x844
                          + 0.333305347801179*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 25.8948336649169)

m.c676 = Constraint(expr=   29.5890815154214*m.b675 - 0.248605428496131*m.x843 - 0.57111174843345*m.x844
                          - 0.85901797816204*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 29.5890815154214)

m.c677 = Constraint(expr=   28.1181863729646*m.b676 + 1.09440807137566*m.x843 - 0.57111174843345*m.x844
                          + 1.07850742652819*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 28.1181863729646)

m.c678 = Constraint(expr=   31.043835044023*m.b677 - 0.343900527329658*m.x843 - 0.576563889229951*m.x844
                          - 0.38298548638298*m.x845 + 1.1104440760564*m.x846 + m.x847 <= 31.043835044023)

m.c679 = Constraint(expr=   30.2846476584588*m.b678 + 1.17340886548576*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 30.2846476584588)

m.c680 = Constraint(expr=   35.6882074541929*m.b679 + 1.66058042916474*m.x843 - 1.71878738609685*m.x844
                          + 0.681066317873784*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 35.6882074541929)

m.c681 = Constraint(expr=   79.8048858980781*m.b680 - 0.814777786285218*m.x843 - 1.71878738609685*m.x844
                          - 1.00805839390744*m.x845 - 4.17216503117499*m.x846 - m.x847 <= 79.8048858980781)

m.c682 = Constraint(expr=   24.0283650030894*m.b681 - 1.35774405174267*m.x843 + 0.57111174843345*m.x844
                          - 0.581706040710183*m.x845 - 0.114244305991037*m.x846 + m.x847 <= 24.0283650030894)

m.c683 = Constraint(expr=   25.0679494412799*m.b682 + 1.7790816203299*m.x843 - 0.57111174843345*m.x844
                          + 0.482345763546581*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 25.0679494412799)

m.c684 = Constraint(expr=   84.9904439439862*m.b683 - 0.630442600028306*m.x843 - 6.30948993675045*m.x844
                          - 0.511257008089435*m.x845 + 0.615253189555898*m.x846 - m.x847 <= 84.9904439439862)

m.c685 = Constraint(expr=   61.0955111781823*m.b684 - 0.920112178432024*m.x843 - 2.86646302376025*m.x844
                          + 0.979147149364589*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 61.0955111781823)

m.c686 = Constraint(expr=   38.0121403403301*m.b685 - 0.630442600028306*m.x843 - 1.71878738609685*m.x844
                          - 0.0144556222714266*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 38.0121403403301)

m.c687 = Constraint(expr=   26.7185935179405*m.b686 - 0.5514418059182*m.x843 + 0.576563889229951*m.x844
                          + 0.0352245163103741*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 26.7185935179405)

m.c688 = Constraint(expr=   23.9132897248736*m.b687 + 1.56841283603629*m.x843 - 0.57111174843345*m.x844
                          - 0.610617285253036*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 23.9132897248736)

m.c689 = Constraint(expr=   45.2849025687341*m.b688 - 1.23611535487245*m.x843 - 0.57111174843345*m.x844
                          - 2.00166116554346*m.x845 - 0.832105807409255*m.x846 - m.x847 <= 45.2849025687341)

m.c690 = Constraint(expr=   26.7744575564473*m.b689 - 0.340773021624587*m.x843 + 0.576563889229951*m.x844
                          - 0.958378255325642*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 26.7744575564473)

m.c691 = Constraint(expr=   23.8655426191112*m.b690 + 0.844238890026991*m.x843 - 0.57111174843345*m.x844
                          - 0.511257008089435*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 23.8655426191112)

m.c692 = Constraint(expr=   21.8519029389377*m.b691 - 0.446107413771394*m.x843 + 0.576563889229951*m.x844
                          - 0.511257008089435*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 21.8519029389377)

m.c693 = Constraint(expr=   32.6858927979198*m.b692 - 0.604109001991604*m.x843 - 0.57111174843345*m.x844
                          - 1.35581936398005*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 32.6858927979198)

m.c694 = Constraint(expr=   27.12892362095*m.b693 + 1.35774405174267*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 27.12892362095)

m.c695 = Constraint(expr=   21.4119989491964*m.b694 + 1.98975040462352*m.x843 - 0.57111174843345*m.x844
                          - 0.312536453762231*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 21.4119989491964)

m.c696 = Constraint(expr=   39.9323070830153*m.b695 - 0.788444188248516*m.x843 + 0.576563889229951*m.x844
                          + 1.27722798085539*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 39.9323070830153)

m.c697 = Constraint(expr=   39.1355664894591*m.b696 - 0.946445776468726*m.x843 - 0.57111174843345*m.x844
                          - 0.85901797816204*m.x845 - 1.38878234470355*m.x846 - m.x847 <= 39.1355664894591)

m.c698 = Constraint(expr=   18.1342985961323*m.b697 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 18.1342985961323)

m.c699 = Constraint(expr=   33.371894632144*m.b698 - 0.683109796101709*m.x843 - 1.71878738609685*m.x844
                          - 0.21317617659863*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 33.371894632144)

m.c700 = Constraint(expr=   58.5632337915818*m.b699 + 0.212232537146149*m.x843 - 1.71878738609685*m.x844
                          - 1.50485977972545*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 58.5632337915818)

m.c701 = Constraint(expr=   36.7900537217621*m.b700 - 0.0379366442025169*m.x843 - 0.57111174843345*m.x844
                          - 2.05134130412526*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 36.7900537217621)

m.c702 = Constraint(expr=   45.6144419337347*m.b701 - 0.656776198065007*m.x843 + 0.576563889229951*m.x844
                          - 1.80294061121625*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 45.6144419337347)

m.c703 = Constraint(expr=   50.2192221597972*m.b702 - 0.867444982358621*m.x843 - 0.57111174843345*m.x844
                          - 3.14430435292488*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 50.2192221597972)

m.c704 = Constraint(expr=   51.0432174007183*m.b703 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          - 2.59782282852507*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 51.0432174007183)

m.c705 = Constraint(expr=   51.0432174007183*m.b704 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          - 2.59782282852507*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 51.0432174007183)

m.c706 = Constraint(expr=   46.6318800798326*m.b705 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          - 2.10102144270706*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 46.6318800798326)

m.c707 = Constraint(expr=   38.6528242596682*m.b706 - 0.85427818334027*m.x843 + 0.576563889229951*m.x844
                          - 2.20038171987066*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 38.6528242596682)

m.c708 = Constraint(expr=   21.1970875490545*m.b707 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          - 0.461576869507634*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 21.1970875490545)

m.c709 = Constraint(expr=   33.6491606953039*m.b708 + 0.146398542054395*m.x843 - 1.71878738609685*m.x844
                          - 0.461576869507634*m.x845 + 0.169911959720466*m.x846 - m.x847 <= 33.6491606953039)

m.c710 = Constraint(expr=   27.1829789823314*m.b709 - 0.841111384321919*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 + 0.949259111932472*m.x846 - m.x847 <= 27.1829789823314)

m.c711 = Constraint(expr=   31.8266560766557*m.b710 - 0.314439423587885*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 31.8266560766557)

m.c712 = Constraint(expr=   63.4743420413066*m.b711 + 0.37023412536636*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 3.06462995365077*m.x846 - m.x847 <= 63.4743420413066)

m.c713 = Constraint(expr=   20.3650233425181*m.b712 - 1.49945133523946*m.x843 - 0.57111174843345*m.x844
                          - 0.312536453762231*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 20.3650233425181)

m.c714 = Constraint(expr=   43.8678069560258*m.b713 - 1.13078096272564*m.x843 - 1.71878738609685*m.x844
                          + 0.38298548638298*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 43.8678069560258)

m.c715 = Constraint(expr=   82.8610268452166*m.b714 - 0.762110590211814*m.x843 - 2.86646302376025*m.x844
                          - 0.560937146671235*m.x845 - 3.78249145506899*m.x846 - m.x847 <= 82.8610268452166)

m.c716 = Constraint(expr=   27.5659386279754*m.b715 + 1.0022404782472*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 27.5659386279754)

m.c717 = Constraint(expr=   44.0531309772006*m.b716 - 0.867444982358621*m.x843 + 0.576563889229951*m.x844
                          - 2.34942213561606*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 44.0531309772006)

m.c718 = Constraint(expr=   25.1421851936578*m.b717 - 0.604109001991604*m.x843 - 0.57111174843345*m.x844
                          + 0.879786872200988*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 25.1421851936578)

m.c719 = Constraint(expr=   51.4758036154386*m.b718 - 0.656776198065007*m.x843 + 0.576563889229951*m.x844
                          - 2.89590366001587*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 51.4758036154386)

m.c720 = Constraint(expr=   24.8207935666148*m.b719 - 0.314439423587885*m.x843 + 0.576563889229951*m.x844
                          - 0.709977562416638*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 24.8207935666148)

m.c721 = Constraint(expr=   27.1344635409181*m.b720 - 0.327606222606236*m.x843 - 0.57111174843345*m.x844
                          + 0.38298548638298*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 27.1344635409181)

m.c722 = Constraint(expr=   34.9706510145597*m.b721 - 1.55211853131287*m.x843 - 0.57111174843345*m.x844
                          - 0.660297423834837*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 34.9706510145597)

m.c723 = Constraint(expr=   28.9693049171726*m.b722 - 0.920112178432024*m.x843 - 0.57111174843345*m.x844
                          - 0.958378255325642*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 28.9693049171726)

m.c724 = Constraint(expr=   21.3643616630521*m.b723 - 0.0379366442025169*m.x843 + 0.576563889229951*m.x844
                          - 0.163496038016829*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 21.3643616630521)

m.c725 = Constraint(expr=   30.6970328793697*m.b724 - 0.472441011808095*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 0.670920843285327*m.x846 - m.x847 <= 30.6970328793697)

m.c726 = Constraint(expr=   54.6154692963396*m.b725 - 1.07811376665223*m.x843 - 2.86646302376025*m.x844
                          + 0.482345763546581*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 54.6154692963396)

m.c727 = Constraint(expr=   22.5454672082826*m.b726 - 1.63111932542297*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 22.5454672082826)

m.c728 = Constraint(expr=   24.4943813846545*m.b727 + 0.06739774794429*m.x843 + 0.576563889229951*m.x844
                          - 0.362216592344032*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 24.4943813846545)

m.c729 = Constraint(expr=   41.9810421530416*m.b728 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          - 1.80294061121625*m.x845 + 0.726588497014756*m.x846 - m.x847 <= 41.9810421530416)

m.c730 = Constraint(expr=   25.086503446589*m.b729 - 0.367106619661288*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 25.086503446589)

m.c731 = Constraint(expr=   19.1451631208339*m.b730 - 1.71012011953308*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 19.1451631208339)

m.c732 = Constraint(expr=   32.6797180023621*m.b731 + 0.304400130274605*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 32.6797180023621)

m.c733 = Constraint(expr=   23.6968003062924*m.b732 - 0.485607810826446*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 - 0.665102846220968*m.x846 - m.x847 <= 23.6968003062924)

m.c734 = Constraint(expr=   21.9841280620964*m.b733 - 0.867444982358621*m.x843 + 0.576563889229951*m.x844
                          + 0.482345763546581*m.x845 - 0.0527586551972498*m.x846 - m.x847 <= 21.9841280620964)

m.c735 = Constraint(expr=   19.7161436608113*m.b734 - 1.07811376665223*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 19.7161436608113)

m.c736 = Constraint(expr=   51.999295895655*m.b735 - 1.15711456076234*m.x843 - 0.57111174843345*m.x844
                          - 3.29334476867028*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 51.999295895655)

m.c737 = Constraint(expr=   35.5298320928104*m.b736 - 0.867444982358621*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 35.5298320928104)

m.c738 = Constraint(expr=   29.8378036423448*m.b737 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          - 1.20677894823465*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 29.8378036423448)

m.c739 = Constraint(expr=   29.3916453651155*m.b738 - 0.920112178432024*m.x843 + 0.576563889229951*m.x844
                          + 0.43266562496478*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 29.3916453651155)

m.c740 = Constraint(expr=   23.5620906197156*m.b739 + 1.14707526744906*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 23.5620906197156)

m.c741 = Constraint(expr=   25.4763882141372*m.b740 + 0.0805645469626409*m.x843 - 0.57111174843345*m.x844
                          + 0.581706040710183*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 25.4763882141372)

m.c742 = Constraint(expr=   35.8798845974969*m.b741 + 0.738904497880184*m.x843 - 1.71878738609685*m.x844
                          + 0.681066317873784*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 35.8798845974969)

m.c743 = Constraint(expr=   42.4318555549236*m.b742 - 0.946445776468726*m.x843 - 0.57111174843345*m.x844
                          - 1.40549950256185*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 42.4318555549236)

m.c744 = Constraint(expr=   29.9236363622696*m.b743 - 1.47311773720276*m.x843 - 0.57111174843345*m.x844
                          - 0.163496038016829*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 29.9236363622696)

m.c745 = Constraint(expr=   36.5987930697426*m.b744 - 1.92078890382669*m.x843 - 0.57111174843345*m.x844
                          + 0.780426595037386*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 36.5987930697426)

m.c746 = Constraint(expr=   44.1694970169511*m.b745 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          - 1.70358033405265*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 44.1694970169511)

m.c747 = Constraint(expr=   59.9868016013802*m.b746 - 0.182771433404376*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 - 4.39483564609271*m.x846 - m.x847 <= 59.9868016013802)

m.c748 = Constraint(expr=   56.2010757189878*m.b747 - 0.814777786285218*m.x843 - 1.71878738609685*m.x844
                          - 1.70358033405265*m.x845 + 1.11626207312076*m.x846 - m.x847 <= 56.2010757189878)

m.c749 = Constraint(expr=   63.5375296094396*m.b748 - 0.39344021769799*m.x843 - 0.57111174843345*m.x844
                          - 0.0144556222714266*m.x845 - 4.72884156846928*m.x846 - m.x847 <= 63.5375296094396)

m.c750 = Constraint(expr=   75.0688073940386*m.b749 - 0.39344021769799*m.x843 + 1.72423952689335*m.x844
                          - 0.0144556222714266*m.x845 - 4.72884156846928*m.x846 - m.x847 <= 75.0688073940386)

m.c751 = Constraint(expr=   40.1006899897744*m.b750 - 1.36778334505595*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 - 2.11246184318612*m.x846 - m.x847 <= 40.1006899897744)

m.c752 = Constraint(expr=   57.5640846066592*m.b751 - 0.39344021769799*m.x843 + 0.576563889229951*m.x844
                          - 0.85901797816204*m.x845 - 3.28148257150413*m.x846 - m.x847 <= 57.5640846066592)

m.c753 = Constraint(expr=   63.0339968366716*m.b752 + 0.291233331256255*m.x843 - 0.57111174843345*m.x844
                          - 0.809337839580239*m.x845 - 3.89382676252785*m.x846 - m.x847 <= 63.0339968366716)

m.c754 = Constraint(expr=   53.4682688418845*m.b753 - 0.261772227514481*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 - 3.55982084015127*m.x846 - m.x847 <= 53.4682688418845)

m.c755 = Constraint(expr=   53.4682688418845*m.b754 - 0.261772227514481*m.x843 + 0.576563889229951*m.x844
                          + 0.184264932055776*m.x845 - 3.55982084015127*m.x846 - m.x847 <= 53.4682688418845)

m.c756 = Constraint(expr=   28.2572840462918*m.b755 - 0.472441011808095*m.x843 + 0.576563889229951*m.x844
                          - 0.809337839580239*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 28.2572840462918)

m.c757 = Constraint(expr=   73.3823868362284*m.b756 - 0.814777786285218*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 4.01098006705107*m.x846 - m.x847 <= 73.3823868362284)

m.c758 = Constraint(expr=   61.8284891263826*m.b757 + 0.133231743036044*m.x843 + 0.576563889229951*m.x844
                          - 2.64750296710687*m.x845 - 1.94545888199783*m.x846 - m.x847 <= 61.8284891263826)

m.c759 = Constraint(expr=   52.1993205923367*m.b758 - 1.63111932542297*m.x843 + 0.576563889229951*m.x844
                          - 1.25645908681645*m.x845 - 2.22379715064498*m.x846 - m.x847 <= 52.1993205923367)

m.c760 = Constraint(expr=   61.7866003041774*m.b759 - 1.55211853131287*m.x843 - 0.57111174843345*m.x844
                          - 1.50485977972545*m.x845 - 2.94747664912756*m.x846 - m.x847 <= 61.7866003041774)

m.c761 = Constraint(expr=   26.228345550777*m.b760 + 0.883739287082043*m.x843 + 0.576563889229951*m.x844
                          - 0.0144556222714266*m.x845 - 0.943441114868113*m.x846 - m.x847 <= 26.228345550777)

m.c762 = Constraint(expr=   28.8055588263*m.b761 + 1.71324762523815*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 - 0.720770499950397*m.x846 - m.x847 <= 28.8055588263)

m.c763 = Constraint(expr=   41.8973869370076*m.b762 + 1.7264144242565*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 41.8973869370076)

m.c764 = Constraint(expr=   24.907045210187*m.b763 + 1.96341680658681*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 24.907045210187)

m.c765 = Constraint(expr=   28.7177312527929*m.b764 + 1.88441601247671*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 28.7177312527929)

m.c766 = Constraint(expr=   23.238481385956*m.b765 + 0.541402512604921*m.x843 + 0.576563889229951*m.x844
                          - 0.411896730925833*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 23.238481385956)

m.c767 = Constraint(expr=   86.142833099727*m.b766 - 0.367106619661288*m.x843 - 4.01413866142365*m.x844
                          - 1.95198102696166*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 86.142833099727)

m.c768 = Constraint(expr=   55.6861547092004*m.b767 - 0.459274212789744*m.x843 - 2.86646302376025*m.x844
                          + 0.879786872200988*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 55.6861547092004)

m.c769 = Constraint(expr=   26.2892449512082*m.b768 - 0.419773815734692*m.x843 + 0.576563889229951*m.x844
                          + 0.233945070637577*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 26.2892449512082)

m.c770 = Constraint(expr=   37.8537865234625*m.b769 + 2.46375516928415*m.x843 - 0.57111174843345*m.x844
                          + 1.5753088123462*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 37.8537865234625)

m.c771 = Constraint(expr=   33.4633487177833*m.b770 - 0.419773815734692*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 33.4633487177833)

m.c772 = Constraint(expr=   40.8758095305701*m.b771 + 0.212232537146149*m.x843 - 1.71878738609685*m.x844
                          - 0.0144556222714266*m.x845 - 1.33311469097412*m.x846 - m.x847 <= 40.8758095305701)

m.c773 = Constraint(expr=   38.7857821671937*m.b772 - 0.735776992175112*m.x843 + 0.576563889229951*m.x844
                          + 1.6746690895098*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 38.7857821671937)

m.c774 = Constraint(expr=   34.2328902764885*m.b773 + 0.98907367922885*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 - 1.16611172978583*m.x846 - m.x847 <= 34.2328902764885)

m.c775 = Constraint(expr=   36.3257321983648*m.b774 - 0.498774609844797*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 36.3257321983648)

m.c776 = Constraint(expr=   48.0471036346397*m.b775 - 0.446107413771394*m.x843 - 1.71878738609685*m.x844
                          - 0.262856315180431*m.x845 - 1.77845592080955*m.x846 - m.x847 <= 48.0471036346397)

m.c777 = Constraint(expr=   68.5076786190343*m.b776 - 0.617275801009955*m.x843 - 0.57111174843345*m.x844
                          - 1.15709880965284*m.x845 - 4.06082972371614*m.x846 - m.x847 <= 68.5076786190343)

m.c778 = Constraint(expr=   31.1003201564987*m.b777 + 1.17340886548576*m.x843 - 0.57111174843345*m.x844
                          + 0.979147149364589*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 31.1003201564987)

m.c779 = Constraint(expr=   26.5281709564168*m.b778 + 0.0805645469626409*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 + 0.392582574638182*m.x846 - m.x847 <= 26.5281709564168)

m.c780 = Constraint(expr=   31.0928051855711*m.b779 - 0.656776198065007*m.x843 - 0.57111174843345*m.x844
                          - 0.411896730925833*m.x845 + 1.06059441939133*m.x846 - m.x847 <= 31.0928051855711)

m.c781 = Constraint(expr=   37.4599060964199*m.b780 - 0.577775403954902*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 37.4599060964199)

m.c782 = Constraint(expr=   23.1012013266493*m.b781 + 1.48941204192618*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 23.1012013266493)

m.c783 = Constraint(expr=   20.6400673755553*m.b782 + 1.21290926254081*m.x843 + 0.576563889229951*m.x844
                          + 0.0849046548921749*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 20.6400673755553)

m.c784 = Constraint(expr=   23.1012013266493*m.b783 + 1.48941204192618*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 23.1012013266493)

m.c785 = Constraint(expr=   17.9280543964601*m.b784 + 0.00156375285253572*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.00290899853217917*m.x846 - m.x847 <= 17.9280543964601)

m.c786 = Constraint(expr=   46.0864397728264*m.b785 - 0.788444188248516*m.x843 - 0.57111174843345*m.x844
                          - 2.39910227419786*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 46.0864397728264)

m.c787 = Constraint(expr=   31.8509480420322*m.b786 - 0.024769845184166*m.x843 - 0.57111174843345*m.x844
                          - 1.05773853248924*m.x845 - 0.553767538762111*m.x846 - m.x847 <= 31.8509480420322)

m.c788 = Constraint(expr=   35.2716760953428*m.b787 + 1.08124127235731*m.x843 - 0.57111174843345*m.x844
                          - 1.40549950256185*m.x845 - 0.442432231303253*m.x846 - m.x847 <= 35.2716760953428)

m.c789 = Constraint(expr=   27.5062372371109*m.b788 - 0.525108207881499*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 27.5062372371109)

m.c790 = Constraint(expr=   29.9349946812928*m.b789 + 0.0278973508892374*m.x843 - 1.71878738609685*m.x844
                          - 0.163496038016829*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 29.9349946812928)

m.c791 = Constraint(expr=   56.113637151132*m.b790 + 0.383400924384711*m.x843 - 4.01413866142365*m.x844
                          + 0.333305347801179*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 56.113637151132)

m.c792 = Constraint(expr=   21.8723416343527*m.b791 - 1.15711456076234*m.x843 - 0.57111174843345*m.x844
                          - 0.163496038016829*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 21.8723416343527)

m.c793 = Constraint(expr=   33.061254798416*m.b792 - 0.498774609844797*m.x843 - 0.57111174843345*m.x844
                          - 0.908698116743841*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 33.061254798416)

m.c794 = Constraint(expr=   23.3515337435447*m.b793 + 1.46307844388948*m.x843 - 0.57111174843345*m.x844
                          - 0.113815899435028*m.x845 + 0.50391788209704*m.x846 - m.x847 <= 23.3515337435447)

m.c795 = Constraint(expr=   21.2067937280322*m.b794 - 0.5514418059182*m.x843 - 0.57111174843345*m.x844
                          - 0.21317617659863*m.x845 + 0.281247267179324*m.x846 - m.x847 <= 21.2067937280322)

m.c796 = Constraint(expr=   35.8190095258196*m.b795 + 0.910072885118745*m.x843 - 0.57111174843345*m.x844
                          - 0.809337839580239*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 35.8190095258196)

m.c797 = Constraint(expr=   26.9860820971604*m.b796 - 0.709443394138411*m.x843 + 0.576563889229951*m.x844
                          - 0.21317617659863*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 26.9860820971604)

m.c798 = Constraint(expr=   42.9095437139528*m.b797 - 0.314439423587885*m.x843 + 0.576563889229951*m.x844
                          - 1.40549950256185*m.x845 - 1.27744703724469*m.x846 - m.x847 <= 42.9095437139528)

m.c799 = Constraint(expr=   36.990725788354*m.b798 - 0.130104237330973*m.x843 - 1.71878738609685*m.x844
                          - 0.908698116743841*m.x845 + 0.0585766522616081*m.x846 - m.x847 <= 36.990725788354)

m.c800 = Constraint(expr=   36.7614809284912*m.b799 + 0.0805645469626409*m.x843 - 0.57111174843345*m.x844
                          - 0.262856315180431*m.x845 - 1.83412357453898*m.x846 - m.x847 <= 36.7614809284912)

m.c801 = Constraint(expr=   35.1592476283669*m.b800 + 0.515068914568219*m.x843 - 1.71878738609685*m.x844
                          + 0.631386179291984*m.x845 + 0.114244305991037*m.x846 - m.x847 <= 35.1592476283669)

m.c802 = Constraint(expr=   39.2422326676135*m.b801 - 0.683109796101709*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 + 1.17192972685019*m.x846 - m.x847 <= 39.2422326676135)

m.c803 = Constraint(expr=   42.858718313926*m.b802 - 0.762110590211814*m.x843 + 0.576563889229951*m.x844
                          - 1.40549950256185*m.x845 + 1.22759738057962*m.x846 - m.x847 <= 42.858718313926)

m.c804 = Constraint(expr=   38.9468976009623*m.b803 - 0.0511034432208677*m.x843 + 0.576563889229951*m.x844
                          - 1.70358033405265*m.x845 - 0.60943519249154*m.x846 - m.x847 <= 38.9468976009623)

m.c805 = Constraint(expr=   29.8458146404898*m.b804 - 0.630442600028306*m.x843 + 0.576563889229951*m.x844
                          - 1.00805839390744*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 29.8458146404898)

m.c806 = Constraint(expr=   22.4171476073522*m.b805 - 0.446107413771394*m.x843 + 0.576563889229951*m.x844
                          + 0.283625209219378*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 22.4171476073522)

m.c807 = Constraint(expr=   36.1940642081813*m.b806 - 0.367106619661288*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 0.336914920908753*m.x846 - m.x847 <= 36.1940642081813)

m.c808 = Constraint(expr=   20.5200240398996*m.b807 + 2.31892038008229*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 20.5200240398996)

m.c809 = Constraint(expr=   49.0705554525147*m.b808 - 0.209105031441078*m.x843 - 0.57111174843345*m.x844
                          - 1.70358033405265*m.x845 - 1.61145295962126*m.x846 - m.x847 <= 49.0705554525147)

m.c810 = Constraint(expr=   21.5912004281015*m.b809 + 0.291233331256255*m.x843 - 0.57111174843345*m.x844
                          + 0.333305347801179*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 21.5912004281015)

m.c811 = Constraint(expr=   24.498538191191*m.b810 - 0.209105031441078*m.x843 + 0.576563889229951*m.x844
                          - 0.0144556222714266*m.x845 + 0.837923804473614*m.x846 - m.x847 <= 24.498538191191)

m.c812 = Constraint(expr=   41.1946023951735*m.b811 - 0.367106619661288*m.x843 - 1.71878738609685*m.x844
                          + 0.581706040710183*m.x845 + 0.782256150744185*m.x846 - m.x847 <= 41.1946023951735)

m.c813 = Constraint(expr=   23.0100661694438*m.b812 + 2.5822563604493*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 - 0.386764577573824*m.x846 - m.x847 <= 23.0100661694438)

m.c814 = Constraint(expr=   52.1539953533104*m.b813 - 0.472441011808095*m.x843 + 0.576563889229951*m.x844
                          - 1.25645908681645*m.x845 - 2.33513245810384*m.x846 - m.x847 <= 52.1539953533104)

m.c815 = Constraint(expr=   44.0267204807422*m.b814 - 0.156437835367675*m.x843 + 0.576563889229951*m.x844
                          - 0.809337839580239*m.x845 - 2.00112653572726*m.x846 - m.x847 <= 44.0267204807422)

m.c816 = Constraint(expr=   75.8688919888932*m.b815 - 0.577775403954902*m.x843 - 0.57111174843345*m.x844
                          + 1.7243492280916*m.x845 + 4.23365068196878*m.x846 - m.x847 <= 75.8688919888932)

m.c817 = Constraint(expr=   69.4783091181212*m.b816 - 1.92078890382669*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 + 3.5099711834862*m.x846 - m.x847 <= 69.4783091181212)

m.c818 = Constraint(expr=   69.3258327203162*m.b817 - 1.15711456076234*m.x843 + 0.576563889229951*m.x844
                          + 1.6746690895098*m.x845 + 3.56563883721563*m.x846 - m.x847 <= 69.3258327203162)

m.c819 = Constraint(expr=   38.2499313585144*m.b818 + 1.88441601247671*m.x843 - 1.71878738609685*m.x844
                          - 0.809337839580239*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 38.2499313585144)

m.c820 = Constraint(expr=   32.0035958867411*m.b819 - 0.182771433404376*m.x843 + 0.576563889229951*m.x844
                          - 1.10741867107104*m.x845 - 0.498099885032682*m.x846 - m.x847 <= 32.0035958867411)

m.c821 = Constraint(expr=   26.6304394701443*m.b820 + 0.804738492971938*m.x843 + 0.576563889229951*m.x844
                          + 0.780426595037386*m.x845 + 0.225579613449895*m.x846 - m.x847 <= 26.6304394701443)

m.c822 = Constraint(expr=   41.0592071906982*m.b821 - 0.0511034432208677*m.x843 - 0.57111174843345*m.x844
                          - 1.75326047263445*m.x845 - 0.776438153679826*m.x846 - m.x847 <= 41.0592071906982)

m.c823 = Constraint(expr=   34.4662216802952*m.b822 + 1.7790816203299*m.x843 + 0.576563889229951*m.x844
                          + 0.581706040710183*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 34.4662216802952)

m.c824 = Constraint(expr=   24.1935974844268*m.b823 + 0.238566135182851*m.x843 - 0.57111174843345*m.x844
                          - 0.660297423834837*m.x845 - 0.164093962656108*m.x846 - m.x847 <= 24.1935974844268)

m.c825 = Constraint(expr=   50.3651314359268*m.b824 + 0.0542309489259392*m.x843 + 0.576563889229951*m.x844
                          - 1.00805839390744*m.x845 - 2.4464677655627*m.x846 - m.x847 <= 50.3651314359268)

m.c826 = Constraint(expr=   48.8004362161908*m.b825 + 0.159565341072746*m.x843 + 0.576563889229951*m.x844
                          - 1.00805839390744*m.x845 - 2.27946480437441*m.x846 - m.x847 <= 48.8004362161908)

m.c827 = Constraint(expr=   37.0927923727462*m.b826 + 0.185898939109448*m.x843 + 0.576563889229951*m.x844
                          - 1.55453991830725*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 37.0927923727462)

m.c828 = Constraint(expr=   38.3455909205478*m.b827 + 2.4505883702658*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 1.83412357453898*m.x846 - m.x847 <= 38.3455909205478)

m.c829 = Constraint(expr=   27.7540663785551*m.b828 + 0.133231743036044*m.x843 - 0.57111174843345*m.x844
                          + 0.631386179291984*m.x845 + 0.559585535826469*m.x846 - m.x847 <= 27.7540663785551)

m.c830 = Constraint(expr=   45.0509855007784*m.b829 + 0.291233331256255*m.x843 - 0.57111174843345*m.x844
                          + 0.681066317873784*m.x845 - 2.22379715064498*m.x846 - m.x847 <= 45.0509855007784)

m.c831 = Constraint(expr=   44.150155422375*m.b830 + 0.449234919476465*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 - 2.11246184318612*m.x846 - m.x847 <= 44.150155422375)

m.c832 = Constraint(expr=   23.0149099029161*m.b831 + 1.71324762523815*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 23.0149099029161)

m.c833 = Constraint(expr=   50.6058032286657*m.b832 - 0.920112178432024*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 - 1.72278826708012*m.x846 - m.x847 <= 50.6058032286657)

m.c834 = Constraint(expr=   32.9958038530227*m.b833 + 0.37023412536636*m.x843 + 0.576563889229951*m.x844
                          + 0.681066317873784*m.x845 + 1.0049267656619*m.x846 - m.x847 <= 32.9958038530227)

m.c835 = Constraint(expr=   26.6407133039665*m.b834 - 0.133231743036044*m.x843 + 0.57111174843345*m.x844
                          - 0.631386179291984*m.x845 - 0.448250228367611*m.x846 + m.x847 <= 26.6407133039665)

m.c836 = Constraint(expr=   27.5498212189553*m.b835 + 1.55524603701794*m.x843 - 0.57111174843345*m.x844
                          + 0.0849046548921749*m.x845 - 0.943441114868113*m.x846 - m.x847 <= 27.5498212189553)

m.c837 = Constraint(expr=   24.7063970071736*m.b836 - 0.314439423587885*m.x843 - 0.57111174843345*m.x844
                          - 0.759657700998438*m.x845 - 0.108426308926679*m.x846 - m.x847 <= 24.7063970071736)

m.c838 = Constraint(expr=   33.6326539393758*m.b837 + 0.133231743036044*m.x843 + 0.576563889229951*m.x844
                          + 0.879786872200988*m.x845 + 0.893591458203043*m.x846 - m.x847 <= 33.6326539393758)

m.c839 = Constraint(expr=   21.2468878559335*m.b838 + 0.501902115549868*m.x843 - 0.57111174843345*m.x844
                          + 0.283625209219378*m.x845 - 0.219761616385537*m.x846 - m.x847 <= 21.2468878559335)

m.c840 = Constraint(expr=   58.0671026169151*m.b839 - 2.68446324689104*m.x843 + 1.72423952689335*m.x844
                          - 1.70358033405265*m.x845 - 1.1104440760564*m.x846 - m.x847 <= 58.0671026169151)

m.c841 = Constraint(expr=   33.2343821440944*m.b840 - 1.23611535487245*m.x843 - 0.57111174843345*m.x844
                          + 0.184264932055776*m.x845 - 1.44444999843297*m.x846 - m.x847 <= 33.2343821440944)

m.c842 = Constraint(expr=   45.9153885479811*m.b841 - 0.683109796101709*m.x843 - 0.57111174843345*m.x844
                          + 1.6746690895098*m.x845 - 1.27744703724469*m.x846 - m.x847 <= 45.9153885479811)

m.c843 = Constraint(expr=   25.5814546029956*m.b842 + 2.29258678204559*m.x843 - 0.57111174843345*m.x844
                          + 0.482345763546581*m.x845 - 0.275429270114966*m.x846 - m.x847 <= 25.5814546029956)
