#  MIP written by GAMS Convert at 12/13/18 10:32:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        822       32        0      790        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#       1044       32      506      506        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       7404     7404        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x2 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x3 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x4 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x5 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x6 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x7 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x8 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x9 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x10 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x11 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x12 = Var(within=Reals,bounds=(3,100),initialize=3)
m.x13 = Var(within=Reals,bounds=(3,100),initialize=3)
m.x14 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x15 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x16 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x17 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x18 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x19 = Var(within=Reals,bounds=(3,100),initialize=3)
m.x20 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x21 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x22 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x23 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x24 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x25 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x26 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x27 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x28 = Var(within=Reals,bounds=(2,100),initialize=2)
m.x29 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x30 = Var(within=Reals,bounds=(1,100),initialize=1)
m.x31 = Var(within=Reals,bounds=(1,100),initialize=1)
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
m.i539 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i540 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i541 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i542 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i543 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i544 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i545 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i546 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i547 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i548 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i549 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i550 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i551 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i552 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i553 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i554 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i555 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i556 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i557 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i558 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i559 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i560 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i561 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i562 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i563 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i564 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i565 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i566 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i567 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i568 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i569 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i570 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i571 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i572 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i573 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i574 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i575 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i576 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i577 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i578 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i579 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i580 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i581 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i582 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i583 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i584 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i585 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i586 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i587 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i588 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i589 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i590 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i591 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i592 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i593 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i594 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i595 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i596 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i597 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i598 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i599 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i600 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i601 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i602 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i603 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i604 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i605 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i606 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i607 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i608 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i609 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i610 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i611 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i612 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i613 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i614 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i615 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i616 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i617 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i618 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i619 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i620 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i621 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i622 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i623 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i624 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i625 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i626 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i627 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i628 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i629 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i630 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i631 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i632 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i633 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i634 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i635 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i636 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i637 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i638 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i639 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i640 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i641 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i642 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i643 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i644 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i645 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i646 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i647 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i648 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i649 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i650 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i651 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i652 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i653 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i654 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i655 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i656 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i657 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i658 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i659 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i660 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i661 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i662 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i663 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i664 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i665 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i666 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i667 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i668 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i669 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i670 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i671 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i672 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i673 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i674 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i675 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i676 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i677 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i678 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i679 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i680 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i681 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i682 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i683 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i684 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i685 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i686 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i687 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i688 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i689 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i690 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i691 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i692 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i693 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i694 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i695 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i696 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i697 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i698 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i699 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i700 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i701 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i702 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i703 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i704 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i705 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i706 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i707 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i708 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i709 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i710 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i711 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i712 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i713 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i714 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i715 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i716 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i717 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i718 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i719 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i720 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i721 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i722 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i723 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i724 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i725 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i726 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i727 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i728 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i729 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i730 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i731 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i732 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i733 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i734 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i735 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i736 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i737 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i738 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i739 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i740 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i741 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i742 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i743 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i744 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i745 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i746 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i747 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i748 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i749 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i750 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i751 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i752 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i753 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i754 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i755 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i756 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i757 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i758 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i759 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i760 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i761 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i762 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i763 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i764 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i765 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i766 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i767 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i768 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i769 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i770 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i771 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i772 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i773 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i774 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i775 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i776 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i777 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i778 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i779 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i780 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i781 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i782 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i783 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i784 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i785 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i786 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i787 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i788 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i789 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i790 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i791 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i792 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i793 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i794 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i795 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i796 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i797 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i798 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i799 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i800 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i801 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i802 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i803 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i804 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i805 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i806 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i807 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i808 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i809 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i810 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i811 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i812 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i813 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i814 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i815 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i816 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i817 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i818 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i819 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i820 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i821 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i822 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i823 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i824 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i825 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i826 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i827 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i828 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i829 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i830 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i831 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i832 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i833 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i834 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i835 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i836 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i837 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i838 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i839 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i840 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i841 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i842 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i843 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i844 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i845 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i846 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i847 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i848 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i849 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i850 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i851 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i852 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i853 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i854 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i855 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i856 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i857 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i858 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i859 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i860 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i861 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i862 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i863 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i864 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i865 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i866 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i867 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i868 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i869 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i870 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i871 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i872 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i873 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i874 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i875 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i876 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i877 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i878 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i879 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i880 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i881 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i882 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i883 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i884 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i885 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i886 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i887 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i888 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i889 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i890 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i891 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i892 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i893 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i894 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i895 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i896 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i897 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i898 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i899 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i900 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i901 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i902 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i903 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i904 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i905 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i906 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i907 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i908 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i909 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i910 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i911 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i912 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i913 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i914 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i915 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i916 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i917 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i918 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i919 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i920 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i921 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i922 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i923 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i924 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i925 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i926 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i927 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i928 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i929 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i930 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i931 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i932 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i933 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i934 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i935 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i936 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i937 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i938 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i939 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i940 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i941 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i942 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i943 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i944 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i945 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i946 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i947 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i948 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i949 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i950 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i951 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i952 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i953 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i954 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i955 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i956 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i957 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i958 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i959 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i960 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i961 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i962 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i963 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i964 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i965 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i966 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i967 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i968 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i969 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i970 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i971 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i972 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i973 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i974 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i975 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i976 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i977 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i978 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i979 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i980 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i981 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i982 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i983 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i984 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i985 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i986 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i987 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i988 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i989 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i990 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i991 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i992 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i993 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i994 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i995 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i996 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i997 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i998 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i999 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1000 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1001 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1002 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1003 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1004 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1005 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1006 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1007 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1008 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1009 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1010 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1011 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1012 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1013 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1014 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1015 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1016 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1017 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1018 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1019 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1020 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1021 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1022 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1023 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1024 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1025 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1026 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1027 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1028 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1029 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1030 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1031 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1032 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1033 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1034 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1035 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1036 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1037 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1038 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1039 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1040 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1041 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1042 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1043 = Var(within=Integers,bounds=(0,9),initialize=0)
m.i1044 = Var(within=Integers,bounds=(0,9),initialize=0)

m.obj = Objective(expr=   10786796*m.b33 + 20514292*m.b34 + 9227596*m.b35 + 17395892*m.b36 + 8915756*m.b37
                        + 16772212*m.b38 + 19079828*m.b39 + 37100356*m.b40 + 12533100*m.b41 + 25066200*m.b42
                        + 11847052*m.b43 + 23694104*m.b44 + 20826132*m.b45 + 40592964*m.b46 + 10662060*m.b47
                        + 20264820*m.b48 + 10599692*m.b49 + 20140084*m.b50 + 16149488*m.b51 + 32298976*m.b52
                        + 17272112*m.b53 + 34544224*m.b54 + 12408364*m.b55 + 24816728*m.b56 + 20140084*m.b57
                        + 39220868*m.b58 + 20140084*m.b59 + 39220868*m.b60 + 17272112*m.b61 + 34544224*m.b62
                        + 11472844*m.b63 + 22945688*m.b64 + 10350220*m.b65 + 19641140*m.b66 + 10038380*m.b67
                        + 19017460*m.b68 + 17771056*m.b69 + 35542112*m.b70 + 5735944*m.b71 + 10412588*m.b72
                        + 12096524*m.b73 + 24193048*m.b74 + 2244292*m.b75 + 4488584*m.b76 + 7669352*m.b77
                        + 15338704*m.b78 + 9289964*m.b79 + 17520628*m.b80 + 19454036*m.b81 + 37848772*m.b82
                        + 13966608*m.b83 + 26873916*m.b84 + 12221260*m.b85 + 24442520*m.b86 + 21200340*m.b87
                        + 42400680*m.b88 + 11036268*m.b89 + 22072536*m.b90 + 10973900*m.b91 + 20888500*m.b92
                        + 6421992*m.b93 + 11784684*m.b94 + 18705620*m.b95 + 36351940*m.b96 + 12096524*m.b97
                        + 24193048*m.b98 + 20514292*m.b99 + 41028584*m.b100 + 20514292*m.b101 + 41028584*m.b102
                        + 7544616*m.b103 + 15089232*m.b104 + 11847052*m.b105 + 23694104*m.b106 + 10724428*m.b107
                        + 20389556*m.b108 + 10412588*m.b109 + 19765876*m.b110 + 19204564*m.b111 + 37349828*m.b112
                        + 6110152*m.b113 + 12220304*m.b114 + 12470732*m.b115 + 24941464*m.b116 + 11971788*m.b117
                        + 23943576*m.b118 + 4426216*m.b119 + 7793132*m.b120 + 15588176*m.b121 + 30117052*m.b122
                        + 11348108*m.b123 + 22696216*m.b124 + 10662060*m.b125 + 20264820*m.b126 + 17334480*m.b127
                        + 34668960*m.b128 + 5985416*m.b129 + 10911532*m.b130 + 5985416*m.b131 + 10911532*m.b132
                        + 13032044*m.b133 + 26064088*m.b134 + 14839760*m.b135 + 28620220*m.b136 + 5486472*m.b137
                        + 9913644*m.b138 + 16648432*m.b139 + 33296864*m.b140 + 18955092*m.b141 + 36850884*m.b142
                        + 15213968*m.b143 + 29368636*m.b144 + 9601804*m.b145 + 18144308*m.b146 + 7419880*m.b147
                        + 14839760*m.b148 + 2244292*m.b149 + 4488584*m.b150 + 16586064*m.b151 + 33172128*m.b152
                        + 4550952*m.b153 + 8042604*m.b154 + 9664172*m.b155 + 18269044*m.b156 + 10412588*m.b157
                        + 19765876*m.b158 + 15712912*m.b159 + 31425824*m.b160 + 11472844*m.b161 + 22945688*m.b162
                        + 10350220*m.b163 + 19641140*m.b164 + 17459216*m.b165 + 34918432*m.b166 + 5923048*m.b167
                        + 10786796*m.b168 + 5923048*m.b169 + 10786796*m.b170 + 14652656*m.b171 + 28246012*m.b172
                        + 14964496*m.b173 + 28869692*m.b174 + 5611208*m.b175 + 10163116*m.b176 + 16773168*m.b177
                        + 33546336*m.b178 + 18643252*m.b179 + 36227204*m.b180 + 15775280*m.b181 + 31550560*m.b182
                        + 9539436*m.b183 + 18019572*m.b184 + 7357512*m.b185 + 14715024*m.b186 + 2181924*m.b187
                        + 4363848*m.b188 + 16274224*m.b189 + 32548448*m.b190 + 4239112*m.b191 + 7418924*m.b192
                        + 9788908*m.b193 + 18518516*m.b194 + 10100748*m.b195 + 19142196*m.b196 + 21200340*m.b197
                        + 42400680*m.b198 + 20514292*m.b199 + 39969284*m.b200 + 2805604*m.b201 + 5611208*m.b202
                        + 19329300*m.b203 + 37599300*m.b204 + 19266932*m.b205 + 37474564*m.b206 + 24816728*m.b207
                        + 48574156*m.b208 + 12158892*m.b209 + 24317784*m.b210 + 11161004*m.b211 + 21262708*m.b212
                        + 15026864*m.b213 + 28994428*m.b214 + 28807324*m.b215 + 56555348*m.b216 + 25939352*m.b217
                        + 51878704*m.b218 + 20140084*m.b219 + 39220868*m.b220 + 19017460*m.b221 + 36975620*m.b222
                        + 16835536*m.b223 + 33671072*m.b224 + 26438296*m.b225 + 52876592*m.b226 + 14403184*m.b227
                        + 27747068*m.b228 + 6983304*m.b229 + 13966608*m.b230 + 20264820*m.b231 + 39470340*m.b232
                        + 15026864*m.b233 + 28994428*m.b234 + 24005944*m.b235 + 46952588*m.b236 + 6609096*m.b237
                        + 13218192*m.b238 + 6671464*m.b239 + 13342928*m.b240 + 19329300*m.b241 + 37599300*m.b242
                        + 20451924*m.b243 + 40903848*m.b244 + 16024752*m.b245 + 30990204*m.b246 + 23319896*m.b247
                        + 45580492*m.b248 + 22260596*m.b249 + 44521192*m.b250 + 20451924*m.b251 + 40903848*m.b252
                        + 6297256*m.b253 + 11535212*m.b254 + 5174632*m.b255 + 9289964*m.b256 + 10350220*m.b257
                        + 19641140*m.b258 + 20950868*m.b259 + 41901736*m.b260 + 8915756*m.b261 + 16772212*m.b262
                        + 15276336*m.b263 + 29493372*m.b264 + 14777392*m.b265 + 28495484*m.b266 + 22260596*m.b267
                        + 44521192*m.b268 + 12096524*m.b269 + 24193048*m.b270 + 12034156*m.b271 + 24068312*m.b272
                        + 17583952*m.b273 + 35167904*m.b274 + 19765876*m.b275 + 38472452*m.b276 + 14902128*m.b277
                        + 28744956*m.b278 + 21574548*m.b279 + 43149096*m.b280 + 8293032*m.b281 + 16586064*m.b282
                        + 19765876*m.b283 + 38472452*m.b284 + 12907308*m.b285 + 25814616*m.b286 + 11784684*m.b287
                        + 23569368*m.b288 + 11472844*m.b289 + 22945688*m.b290 + 6983304*m.b291 + 12907308*m.b292
                        + 7170408*m.b293 + 14340816*m.b294 + 14590288*m.b295 + 28121276*m.b296 + 13032044*m.b297
                        + 26064088*m.b298 + 21075604*m.b299 + 42151208*m.b300 + 21013236*m.b301 + 40967172*m.b302
                        + 26563032*m.b303 + 53126064*m.b304 + 14964496*m.b305 + 28869692*m.b306 + 12907308*m.b307
                        + 25814616*m.b308 + 16773168*m.b309 + 33546336*m.b310 + 30553628*m.b311 + 60047956*m.b312
                        + 28744956*m.b313 + 56430612*m.b314 + 21886388*m.b315 + 43772776*m.b316 + 20763764*m.b317
                        + 40468228*m.b318 + 19641140*m.b319 + 38222980*m.b320 + 28184600*m.b321 + 56369200*m.b322
                        + 16149488*m.b323 + 32298976*m.b324 + 9788908*m.b325 + 18518516*m.b326 + 22011124*m.b327
                        + 44022248*m.b328 + 1121668*m.b329 + 1184036*m.b330 + 16398960*m.b331 + 32797920*m.b332
                        + 18580884*m.b333 + 36102468*m.b334 + 10474956*m.b335 + 19890612*m.b336 + 20389556*m.b337
                        + 39719812*m.b338 + 20389556*m.b339 + 39719812*m.b340 + 18580884*m.b341 + 36102468*m.b342
                        + 3616388*m.b343 + 7232776*m.b344 + 2493764*m.b345 + 4987528*m.b346 + 4800424*m.b347
                        + 8541548*m.b348 + 18020528*m.b349 + 36041056*m.b350 + 5985416*m.b351 + 10911532*m.b352
                        + 12345996*m.b353 + 24691992*m.b354 + 11847052*m.b355 + 23694104*m.b356 + 16336592*m.b357
                        + 31613884*m.b358 + 17459216*m.b359 + 34918432*m.b360 + 10474956*m.b361 + 19890612*m.b362
                        + 20327188*m.b363 + 39595076*m.b364 + 20327188*m.b365 + 39595076*m.b366 + 17459216*m.b367
                        + 34918432*m.b368 + 3678756*m.b369 + 7357512*m.b370 + 2556132*m.b371 + 5112264*m.b372
                        + 4800424*m.b373 + 8541548*m.b374 + 17958160*m.b375 + 35916320*m.b376 + 5923048*m.b377
                        + 10786796*m.b378 + 12283628*m.b379 + 24567256*m.b380 + 11784684*m.b381 + 23569368*m.b382
                        + 24068312*m.b383 + 47077324*m.b384 + 17459216*m.b385 + 34918432*m.b386 + 25876984*m.b387
                        + 51753968*m.b388 + 25876984*m.b389 + 51753968*m.b390 + 2181924*m.b391 + 4363848*m.b392
                        + 17209744*m.b393 + 34419488*m.b394 + 16087120*m.b395 + 31114940*m.b396 + 15775280*m.b397
                        + 30491260*m.b398 + 24567256*m.b399 + 48075212*m.b400 + 11472844*m.b401 + 22945688*m.b402
                        + 17833424*m.b403 + 35666848*m.b404 + 17334480*m.b405 + 34668960*m.b406 + 10412588*m.b407
                        + 19765876*m.b408 + 2867972*m.b409 + 5735944*m.b410 + 26999608*m.b411 + 53999216*m.b412
                        + 25190936*m.b413 + 49322572*m.b414 + 19391668*m.b415 + 37724036*m.b416 + 17209744*m.b417
                        + 34419488*m.b418 + 16087120*m.b419 + 32174240*m.b420 + 25689880*m.b421 + 50320460*m.b422
                        + 12595468*m.b423 + 25190936*m.b424 + 6234888*m.b425 + 12469776*m.b426 + 19516404*m.b427
                        + 37973508*m.b428 + 12221260*m.b429 + 24442520*m.b430 + 22135860*m.b431 + 44271720*m.b432
                        + 19641140*m.b433 + 38222980*m.b434 + 13032044*m.b435 + 26064088*m.b436 + 11909420*m.b437
                        + 23818840*m.b438 + 6733832*m.b439 + 13467664*m.b440 + 20826132*m.b441 + 40592964*m.b442
                        + 7731720*m.b443 + 15463440*m.b444 + 5237000*m.b445 + 9414700*m.b446 + 14652656*m.b447
                        + 28246012*m.b448 + 29867580*m.b449 + 58675860*m.b450 + 26999608*m.b451 + 53999216*m.b452
                        + 21200340*m.b453 + 42400680*m.b454 + 20077716*m.b455 + 39096132*m.b456 + 18955092*m.b457
                        + 36850884*m.b458 + 27498552*m.b459 + 54997104*m.b460 + 15463440*m.b461 + 29867580*m.b462
                        + 9102860*m.b463 + 17146420*m.b464 + 21325076*m.b465 + 42650152*m.b466 + 26999608*m.b467
                        + 53999216*m.b468 + 21200340*m.b469 + 42400680*m.b470 + 20077716*m.b471 + 39096132*m.b472
                        + 19765876*m.b473 + 38472452*m.b474 + 2369028*m.b475 + 4738056*m.b476 + 15463440*m.b477
                        + 29867580*m.b478 + 21824020*m.b479 + 43648040*m.b480 + 21325076*m.b481 + 42650152*m.b482
                        + 19391668*m.b483 + 37724036*m.b484 + 17209744*m.b485 + 34419488*m.b486 + 16897904*m.b487
                        + 33795808*m.b488 + 25689880*m.b489 + 50320460*m.b490 + 12595468*m.b491 + 25190936*m.b492
                        + 20015348*m.b493 + 38971396*m.b494 + 19516404*m.b495 + 37973508*m.b496 + 2181924*m.b497
                        + 4363848*m.b498 + 7357512*m.b499 + 14715024*m.b500 + 19890612*m.b501 + 38721924*m.b502
                        + 6796200*m.b503 + 13592400*m.b504 + 13156780*m.b505 + 26313560*m.b506 + 12657836*m.b507
                        + 25315672*m.b508 + 6234888*m.b509 + 12469776*m.b510 + 17708688*m.b511 + 35417376*m.b512
                        + 5673576*m.b513 + 10287852*m.b514 + 12034156*m.b515 + 24068312*m.b516 + 11535212*m.b517
                        + 23070424*m.b518 + 17396848*m.b519 + 34793696*m.b520 + 5361736*m.b521 + 9664172*m.b522
                        + 10911532*m.b523 + 21823064*m.b524 + 11223372*m.b525 + 22446744*m.b526 + 13094412*m.b527
                        + 26188824*m.b528 + 20514292*m.b529 + 39969284*m.b530 + 20015348*m.b531 + 38971396*m.b532
                        + 7419880*m.b533 + 14839760*m.b534 + 6920936*m.b535 + 13841872*m.b536 + 14340816*m.b537
                        + 27622332*m.b538 + 1767266*m.i539 + 3181432*m.i540 + 1622191*m.i541 + 2891282*m.i542
                        + 1593176*m.i543 + 2833252*m.i544 + 3047963*m.i545 + 5742826*m.i546 + 1929750*m.i547
                        + 3859500*m.i548 + 1865917*m.i549 + 3731834*m.i550 + 3210447*m.i551 + 6067794*m.i552
                        + 1755660*m.i553 + 3158220*m.i554 + 1749857*m.i555 + 3146614*m.i556 + 2520773*m.i557
                        + 5041546*m.i558 + 2625227*m.i559 + 5250454*m.i560 + 1918144*m.i561 + 3836288*m.i562
                        + 3146614*m.i563 + 5940128*m.i564 + 3146614*m.i565 + 5940128*m.i566 + 2625227*m.i567
                        + 5250454*m.i568 + 1831099*m.i569 + 3662198*m.i570 + 1726645*m.i571 + 3100190*m.i572
                        + 1697630*m.i573 + 3042160*m.i574 + 2671651*m.i575 + 5343302*m.i576 + 1042774*m.i577
                        + 1732448*m.i578 + 1889129*m.i579 + 3778258*m.i580 + 463357*m.i581 + 926714*m.i582
                        + 1222667*m.i583 + 2445334*m.i584 + 1627994*m.i585 + 2902888*m.i586 + 3082781*m.i587
                        + 5812462*m.i588 + 2317668*m.i589 + 4282236*m.i590 + 1900735*m.i591 + 3801470*m.i592
                        + 3245265*m.i593 + 6490530*m.i594 + 1790478*m.i595 + 3580956*m.i596 + 1784675*m.i597
                        + 3216250*m.i598 + 1106607*m.i599 + 1860114*m.i600 + 3013145*m.i601 + 5673190*m.i602
                        + 1889129*m.i603 + 3778258*m.i604 + 3181432*m.i605 + 6362864*m.i606 + 3181432*m.i607
                        + 6362864*m.i608 + 1211061*m.i609 + 2422122*m.i610 + 1865917*m.i611 + 3731834*m.i612
                        + 1761463*m.i613 + 3169826*m.i614 + 1732448*m.i615 + 3111796*m.i616 + 3059569*m.i617
                        + 5766038*m.i618 + 1077592*m.i619 + 2155184*m.i620 + 1923947*m.i621 + 3847894*m.i622
                        + 1877523*m.i623 + 3755046*m.i624 + 920911*m.i625 + 1488722*m.i626 + 2468546*m.i627
                        + 4583992*m.i628 + 1819493*m.i629 + 3638986*m.i630 + 1755660*m.i631 + 3158220*m.i632
                        + 2631030*m.i633 + 5262060*m.i634 + 1065986*m.i635 + 1778872*m.i636 + 1065986*m.i637
                        + 1778872*m.i638 + 1976174*m.i639 + 3952348*m.i640 + 2398910*m.i641 + 4444720*m.i642
                        + 1019562*m.i643 + 1686024*m.i644 + 2567197*m.i645 + 5134394*m.i646 + 3036357*m.i647
                        + 5719614*m.i648 + 2433728*m.i649 + 4514356*m.i650 + 1657009*m.i651 + 2960918*m.i652
                        + 1199455*m.i653 + 2398910*m.i654 + 463357*m.i655 + 926714*m.i656 + 2561394*m.i657
                        + 5122788*m.i658 + 932517*m.i659 + 1511934*m.i660 + 1662812*m.i661 + 2972524*m.i662
                        + 1732448*m.i663 + 3111796*m.i664 + 2480152*m.i665 + 4960304*m.i666 + 1831099*m.i667
                        + 3662198*m.i668 + 1726645*m.i669 + 3100190*m.i670 + 2642636*m.i671 + 5285272*m.i672
                        + 1060183*m.i673 + 1767266*m.i674 + 1060183*m.i675 + 1767266*m.i676 + 2381501*m.i677
                        + 4409902*m.i678 + 2410516*m.i679 + 4467932*m.i680 + 1031168*m.i681 + 1709236*m.i682
                        + 2578803*m.i683 + 5157606*m.i684 + 3007342*m.i685 + 5661584*m.i686 + 2485955*m.i687
                        + 4971910*m.i688 + 1651206*m.i689 + 2949312*m.i690 + 1193652*m.i691 + 2387304*m.i692
                        + 457554*m.i693 + 915108*m.i694 + 2532379*m.i695 + 5064758*m.i696 + 903502*m.i697
                        + 1453904*m.i698 + 1674418*m.i699 + 2995736*m.i700 + 1703433*m.i701 + 3053766*m.i702
                        + 3245265*m.i703 + 6490530*m.i704 + 3181432*m.i705 + 6009764*m.i706 + 515584*m.i707
                        + 1031168*m.i708 + 3071175*m.i709 + 5789250*m.i710 + 3065372*m.i711 + 5777644*m.i712
                        + 3836288*m.i713 + 7319476*m.i714 + 1894932*m.i715 + 3789864*m.i716 + 1802084*m.i717
                        + 3251068*m.i718 + 2416319*m.i719 + 4479538*m.i720 + 4462129*m.i721 + 8571158*m.i722
                        + 3940742*m.i723 + 7881484*m.i724 + 3146614*m.i725 + 5940128*m.i726 + 3042160*m.i727
                        + 5731220*m.i728 + 2584606*m.i729 + 5169212*m.i730 + 3987166*m.i731 + 7974332*m.i732
                        + 2358289*m.i733 + 4363478*m.i734 + 1158834*m.i735 + 2317668*m.i736 + 3158220*m.i737
                        + 5963340*m.i738 + 2416319*m.i739 + 4479538*m.i740 + 3760849*m.i741 + 7168598*m.i742
                        + 1124016*m.i743 + 2248032*m.i744 + 1129819*m.i745 + 2259638*m.i746 + 3071175*m.i747
                        + 5789250*m.i748 + 3175629*m.i749 + 6351258*m.i750 + 2509167*m.i751 + 4665234*m.i752
                        + 3697016*m.i753 + 7040932*m.i754 + 3343916*m.i755 + 6687832*m.i756 + 3175629*m.i757
                        + 6351258*m.i758 + 1095001*m.i759 + 1836902*m.i760 + 990547*m.i761 + 1627994*m.i762
                        + 1726645*m.i763 + 3100190*m.i764 + 3222053*m.i765 + 6444106*m.i766 + 1593176*m.i767
                        + 2833252*m.i768 + 2439531*m.i769 + 4525962*m.i770 + 2393107*m.i771 + 4433114*m.i772
                        + 3343916*m.i773 + 6687832*m.i774 + 1889129*m.i775 + 3778258*m.i776 + 1883326*m.i777
                        + 3766652*m.i778 + 2654242*m.i779 + 5308484*m.i780 + 3111796*m.i781 + 5870492*m.i782
                        + 2404713*m.i783 + 4456326*m.i784 + 3280083*m.i785 + 6560166*m.i786 + 1280697*m.i787
                        + 2561394*m.i788 + 3111796*m.i789 + 5870492*m.i790 + 1964568*m.i791 + 3929136*m.i792
                        + 1860114*m.i793 + 3720228*m.i794 + 1831099*m.i795 + 3662198*m.i796 + 1158834*m.i797
                        + 1964568*m.i798 + 1176243*m.i799 + 2352486*m.i800 + 2375698*m.i801 + 4398296*m.i802
                        + 1976174*m.i803 + 3952348*m.i804 + 3233659*m.i805 + 6467318*m.i806 + 3227856*m.i807
                        + 6102612*m.i808 + 3998772*m.i809 + 7997544*m.i810 + 2410516*m.i811 + 4467932*m.i812
                        + 1964568*m.i813 + 3929136*m.i814 + 2578803*m.i815 + 5157606*m.i816 + 4624613*m.i817
                        + 8896126*m.i818 + 4456326*m.i819 + 8559552*m.i820 + 3309098*m.i821 + 6618196*m.i822
                        + 3204644*m.i823 + 6056188*m.i824 + 3100190*m.i825 + 5847280*m.i826 + 4149650*m.i827
                        + 8299300*m.i828 + 2520773*m.i829 + 5041546*m.i830 + 1674418*m.i831 + 2995736*m.i832
                        + 3320704*m.i833 + 6641408*m.i834 + 358903*m.i835 + 364706*m.i836 + 2543985*m.i837
                        + 5087970*m.i838 + 3001539*m.i839 + 5649978*m.i840 + 1738251*m.i841 + 3123402*m.i842
                        + 3169826*m.i843 + 5986552*m.i844 + 3169826*m.i845 + 5986552*m.i846 + 3001539*m.i847
                        + 5649978*m.i848 + 591023*m.i849 + 1182046*m.i850 + 486569*m.i851 + 973138*m.i852
                        + 955729*m.i853 + 1558358*m.i854 + 2694863*m.i855 + 5389726*m.i856 + 1065986*m.i857
                        + 1778872*m.i858 + 1912341*m.i859 + 3824682*m.i860 + 1865917*m.i861 + 3731834*m.i862
                        + 2538182*m.i863 + 4723264*m.i864 + 2642636*m.i865 + 5285272*m.i866 + 1738251*m.i867
                        + 3123402*m.i868 + 3164023*m.i869 + 5974946*m.i870 + 3164023*m.i871 + 5974946*m.i872
                        + 2642636*m.i873 + 5285272*m.i874 + 596826*m.i875 + 1193652*m.i876 + 492372*m.i877
                        + 984744*m.i878 + 955729*m.i879 + 1558358*m.i880 + 2689060*m.i881 + 5378120*m.i882
                        + 1060183*m.i883 + 1767266*m.i884 + 1906538*m.i885 + 3813076*m.i886 + 1860114*m.i887
                        + 3720228*m.i888 + 3766652*m.i889 + 7180204*m.i890 + 2642636*m.i891 + 5285272*m.i892
                        + 3934939*m.i893 + 7869878*m.i894 + 3934939*m.i895 + 7869878*m.i896 + 457554*m.i897
                        + 915108*m.i898 + 2619424*m.i899 + 5238848*m.i900 + 2514970*m.i901 + 4676840*m.i902
                        + 2485955*m.i903 + 4618810*m.i904 + 3813076*m.i905 + 7273052*m.i906 + 1831099*m.i907
                        + 3662198*m.i908 + 2677454*m.i909 + 5354908*m.i910 + 2631030*m.i911 + 5262060*m.i912
                        + 1732448*m.i913 + 3111796*m.i914 + 521387*m.i915 + 1042774*m.i916 + 4039393*m.i917
                        + 8078786*m.i918 + 3871106*m.i919 + 7389112*m.i920 + 3076978*m.i921 + 5800856*m.i922
                        + 2619424*m.i923 + 5238848*m.i924 + 2514970*m.i925 + 5029940*m.i926 + 3917530*m.i927
                        + 7481960*m.i928 + 1935553*m.i929 + 3871106*m.i930 + 1089198*m.i931 + 2178396*m.i932
                        + 3088584*m.i933 + 5824068*m.i934 + 1900735*m.i935 + 3801470*m.i936 + 3332310*m.i937
                        + 6664620*m.i938 + 3100190*m.i939 + 5847280*m.i940 + 1976174*m.i941 + 3952348*m.i942
                        + 1871720*m.i943 + 3743440*m.i944 + 1135622*m.i945 + 2271244*m.i946 + 3210447*m.i947
                        + 6067794*m.i948 + 1228470*m.i949 + 2456940*m.i950 + 996350*m.i951 + 1639600*m.i952
                        + 2381501*m.i953 + 4409902*m.i954 + 4560780*m.i955 + 8768460*m.i956 + 4039393*m.i957
                        + 8078786*m.i958 + 3245265*m.i959 + 6490530*m.i960 + 3140811*m.i961 + 5928522*m.i962
                        + 3036357*m.i963 + 5719614*m.i964 + 4085817*m.i965 + 8171634*m.i966 + 2456940*m.i967
                        + 4560780*m.i968 + 1610585*m.i969 + 2868070*m.i970 + 3256871*m.i971 + 6513742*m.i972
                        + 4039393*m.i973 + 8078786*m.i974 + 3245265*m.i975 + 6490530*m.i976 + 3140811*m.i977
                        + 5928522*m.i978 + 3111796*m.i979 + 5870492*m.i980 + 474963*m.i981 + 949926*m.i982
                        + 2456940*m.i983 + 4560780*m.i984 + 3303295*m.i985 + 6606590*m.i986 + 3256871*m.i987
                        + 6513742*m.i988 + 3076978*m.i989 + 5800856*m.i990 + 2619424*m.i991 + 5238848*m.i992
                        + 2590409*m.i993 + 5180818*m.i994 + 3917530*m.i995 + 7481960*m.i996 + 1935553*m.i997
                        + 3871106*m.i998 + 3135008*m.i999 + 5916916*m.i1000 + 3088584*m.i1001 + 5824068*m.i1002
                        + 457554*m.i1003 + 915108*m.i1004 + 1193652*m.i1005 + 2387304*m.i1006 + 3123402*m.i1007
                        + 5893704*m.i1008 + 1141425*m.i1009 + 2282850*m.i1010 + 1987780*m.i1011 + 3975560*m.i1012
                        + 1941356*m.i1013 + 3882712*m.i1014 + 1089198*m.i1015 + 2178396*m.i1016 + 2665848*m.i1017
                        + 5331696*m.i1018 + 1036971*m.i1019 + 1720842*m.i1020 + 1883326*m.i1021 + 3766652*m.i1022
                        + 1836902*m.i1023 + 3673804*m.i1024 + 2636833*m.i1025 + 5273666*m.i1026 + 1007956*m.i1027
                        + 1662812*m.i1028 + 1778872*m.i1029 + 3557744*m.i1030 + 1807887*m.i1031 + 3615774*m.i1032
                        + 1981977*m.i1033 + 3963954*m.i1034 + 3181432*m.i1035 + 6009764*m.i1036 + 3135008*m.i1037
                        + 5916916*m.i1038 + 1199455*m.i1039 + 2398910*m.i1040 + 1153031*m.i1041 + 2306062*m.i1042
                        + 2352486*m.i1043 + 4351872*m.i1044, sense=minimize)

m.c2 = Constraint(expr=   m.x1 - m.b33 - 2*m.b34 - m.b35 - 2*m.b36 - m.b37 - 2*m.b38 - m.b39 - 2*m.b40 - m.b41 - 2*m.b42
                        - m.b43 - 2*m.b44 - m.b45 - 2*m.b46 - m.b47 - 2*m.b48 - m.b49 - 2*m.b50 - m.b51 - 2*m.b52
                        - m.b53 - 2*m.b54 - m.b55 - 2*m.b56 - m.b57 - 2*m.b58 - m.b59 - 2*m.b60 - m.b61 - 2*m.b62
                        - m.b63 - 2*m.b64 - m.b65 - 2*m.b66 - m.b67 - 2*m.b68 - m.b69 - 2*m.b70 - m.b71 - 2*m.b72
                        - m.b73 - 2*m.b74 - m.b117 - 2*m.b118 - m.b157 - 2*m.b158 - m.b195 - 2*m.b196 - m.b231
                        - 2*m.b232 - m.b265 - 2*m.b266 - m.b297 - 2*m.b298 - m.b327 - 2*m.b328 - m.b355 - 2*m.b356
                        - m.b381 - 2*m.b382 - m.b405 - 2*m.b406 - m.b427 - 2*m.b428 - m.b447 - 2*m.b448 - m.b465
                        - 2*m.b466 - m.b481 - 2*m.b482 - m.b495 - 2*m.b496 - m.b507 - 2*m.b508 - m.b517 - 2*m.b518
                        - m.b525 - 2*m.b526 - m.b531 - 2*m.b532 - m.b535 - 2*m.b536 - m.b537 - 2*m.b538 == 0)

m.c3 = Constraint(expr=   m.x2 - m.b75 - 2*m.b76 - m.b117 - 2*m.b118 - m.b157 - 2*m.b158 - m.b195 - 2*m.b196 - m.b231
                        - 2*m.b232 - m.b265 - 2*m.b266 - m.b297 - 2*m.b298 - m.b327 - 2*m.b328 - m.b355 - 2*m.b356
                        - m.b381 - 2*m.b382 - m.b405 - 2*m.b406 - m.b427 - 2*m.b428 - m.b447 - 2*m.b448 - m.b465
                        - 2*m.b466 - m.b481 - 2*m.b482 - m.b495 - 2*m.b496 - m.b507 - 2*m.b508 - m.b517 - 2*m.b518
                        - m.b525 - 2*m.b526 - m.b531 - 2*m.b532 - m.b535 - 2*m.b536 - m.b537 - 2*m.b538 == 0)

m.c4 = Constraint(expr=   m.x3 - m.b77 - 2*m.b78 - m.b97 - 2*m.b98 - m.b133 - 2*m.b134 - m.b143 - 2*m.b144 - m.b385
                        - 2*m.b386 - m.b433 - 2*m.b434 == 0)

m.c5 = Constraint(expr=   m.x4 - m.b51 - 2*m.b52 - m.b61 - 2*m.b62 - m.b93 - 2*m.b94 - m.b103 - 2*m.b104 - m.b133
                        - 2*m.b134 - m.b143 - 2*m.b144 - m.b171 - 2*m.b172 - m.b181 - 2*m.b182 - m.b207 - 2*m.b208
                        - m.b217 - 2*m.b218 - m.b241 - 2*m.b242 - m.b251 - 2*m.b252 - m.b273 - 2*m.b274 - m.b283
                        - 2*m.b284 - m.b303 - 2*m.b304 - m.b313 - 2*m.b314 - m.b331 - 2*m.b332 - m.b341 - 2*m.b342
                        - m.b357 - 2*m.b358 - m.b367 - 2*m.b368 - m.b383 - 2*m.b384 - m.b385 - 2*m.b386 - m.b387
                        - 2*m.b388 - m.b389 - 2*m.b390 - m.b393 - 2*m.b394 - m.b395 - 2*m.b396 - m.b397 - 2*m.b398
                        - m.b399 - 2*m.b400 - m.b401 - 2*m.b402 - m.b403 - 2*m.b404 - m.b405 - 2*m.b406 - m.b413
                        - 2*m.b414 - m.b433 - 2*m.b434 - m.b451 - 2*m.b452 - m.b467 - 2*m.b468 - m.b483 - 2*m.b484
                        - m.b485 - 2*m.b486 - m.b487 - 2*m.b488 - m.b489 - 2*m.b490 - m.b491 - 2*m.b492 - m.b493
                        - 2*m.b494 - m.b495 - 2*m.b496 == 0)

m.c6 = Constraint(expr=   m.x5 - m.b33 - 2*m.b34 - m.b51 - 2*m.b52 - m.b61 - 2*m.b62 - m.b79 - 2*m.b80 - m.b81 - 2*m.b82
                        - m.b83 - 2*m.b84 - m.b85 - 2*m.b86 - m.b87 - 2*m.b88 - m.b89 - 2*m.b90 - m.b91 - 2*m.b92
                        - m.b95 - 2*m.b96 - m.b99 - 2*m.b100 - m.b101 - 2*m.b102 - m.b105 - 2*m.b106 - m.b107 - 2*m.b108
                        - m.b109 - 2*m.b110 - m.b111 - 2*m.b112 - m.b113 - 2*m.b114 - m.b115 - 2*m.b116 - m.b117
                        - 2*m.b118 - m.b171 - 2*m.b172 - m.b181 - 2*m.b182 - m.b207 - 2*m.b208 - m.b217 - 2*m.b218
                        - m.b241 - 2*m.b242 - m.b251 - 2*m.b252 - m.b273 - 2*m.b274 - m.b283 - 2*m.b284 - m.b303
                        - 2*m.b304 - m.b313 - 2*m.b314 - m.b331 - 2*m.b332 - m.b341 - 2*m.b342 - m.b357 - 2*m.b358
                        - m.b367 - 2*m.b368 - m.b383 - 2*m.b384 - m.b387 - 2*m.b388 - m.b389 - 2*m.b390 - m.b393
                        - 2*m.b394 - m.b395 - 2*m.b396 - m.b397 - 2*m.b398 - m.b399 - 2*m.b400 - m.b401 - 2*m.b402
                        - m.b403 - 2*m.b404 - m.b405 - 2*m.b406 - m.b413 - 2*m.b414 - m.b451 - 2*m.b452 - m.b467
                        - 2*m.b468 - m.b483 - 2*m.b484 - m.b485 - 2*m.b486 - m.b487 - 2*m.b488 - m.b489 - 2*m.b490
                        - m.b491 - 2*m.b492 - m.b493 - 2*m.b494 - m.b495 - 2*m.b496 == 0)

m.c7 = Constraint(expr=   m.x6 - m.b97 - 2*m.b98 - m.b121 - 2*m.b122 - m.b127 - 2*m.b128 - m.b135 - 2*m.b136 - m.b137
                        - 2*m.b138 - m.b139 - 2*m.b140 - m.b155 - 2*m.b156 - m.b385 - 2*m.b386 - m.b433 - 2*m.b434 == 0)

m.c8 = Constraint(expr=   m.x7 - m.b55 - 2*m.b56 - m.b159 - 2*m.b160 - m.b165 - 2*m.b166 - m.b173 - 2*m.b174 - m.b175
                        - 2*m.b176 - m.b177 - 2*m.b178 - m.b193 - 2*m.b194 - m.b223 - 2*m.b224 - m.b245 - 2*m.b246
                        - m.b277 - 2*m.b278 - m.b319 - 2*m.b320 - m.b335 - 2*m.b336 - m.b361 - 2*m.b362 - m.b419
                        - 2*m.b420 - m.b431 - 2*m.b432 - m.b435 - 2*m.b436 - m.b437 - 2*m.b438 - m.b439 - 2*m.b440
                        - m.b441 - 2*m.b442 - m.b443 - 2*m.b444 - m.b447 - 2*m.b448 - m.b457 - 2*m.b458 - m.b523
                        - 2*m.b524 == 0)

m.c9 = Constraint(expr=   m.x8 - m.b67 - 2*m.b68 - m.b109 - 2*m.b110 - m.b119 - 2*m.b120 - m.b161 - 2*m.b162 - m.b167
                        - 2*m.b168 - m.b169 - 2*m.b170 - m.b183 - 2*m.b184 - m.b185 - 2*m.b186 - m.b187 - 2*m.b188
                        - m.b223 - 2*m.b224 - m.b245 - 2*m.b246 - m.b289 - 2*m.b290 - m.b319 - 2*m.b320 - m.b335
                        - 2*m.b336 - m.b361 - 2*m.b362 - m.b397 - 2*m.b398 - m.b419 - 2*m.b420 - m.b435 - 2*m.b436
                        - m.b437 - 2*m.b438 - m.b439 - 2*m.b440 - m.b457 - 2*m.b458 - m.b473 - 2*m.b474 - m.b487
                        - 2*m.b488 - m.b519 - 2*m.b520 - m.b521 - 2*m.b522 - m.b523 - 2*m.b524 - m.b525 - 2*m.b526 == 0)

m.c10 = Constraint(expr=   m.x9 - m.b39 - 2*m.b40 - m.b45 - 2*m.b46 - m.b81 - 2*m.b82 - m.b87 - 2*m.b88 - m.b121
                         - 2*m.b122 - m.b127 - 2*m.b128 - m.b159 - 2*m.b160 - m.b165 - 2*m.b166 - m.b197 - 2*m.b198
                         - m.b199 - 2*m.b200 - m.b203 - 2*m.b204 - m.b205 - 2*m.b206 - m.b207 - 2*m.b208 - m.b209
                         - 2*m.b210 - m.b211 - 2*m.b212 - m.b213 - 2*m.b214 - m.b215 - 2*m.b216 - m.b217 - 2*m.b218
                         - m.b219 - 2*m.b220 - m.b221 - 2*m.b222 - m.b223 - 2*m.b224 - m.b225 - 2*m.b226 - m.b227
                         - 2*m.b228 - m.b229 - 2*m.b230 - m.b231 - 2*m.b232 - m.b235 - 2*m.b236 - m.b267 - 2*m.b268
                         - m.b299 - 2*m.b300 - m.b301 - 2*m.b302 - m.b303 - 2*m.b304 - m.b305 - 2*m.b306 - m.b307
                         - 2*m.b308 - m.b309 - 2*m.b310 - m.b311 - 2*m.b312 - m.b313 - 2*m.b314 - m.b315 - 2*m.b316
                         - m.b317 - 2*m.b318 - m.b319 - 2*m.b320 - m.b321 - 2*m.b322 - m.b323 - 2*m.b324 - m.b325
                         - 2*m.b326 - m.b327 - 2*m.b328 == 0)

m.c11 = Constraint(expr=   m.x10 - m.b59 - 2*m.b60 - m.b69 - 2*m.b70 - m.b101 - 2*m.b102 - m.b111 - 2*m.b112 - m.b141
                         - 2*m.b142 - m.b151 - 2*m.b152 - m.b179 - 2*m.b180 - m.b189 - 2*m.b190 - m.b215 - 2*m.b216
                         - m.b225 - 2*m.b226 - m.b249 - 2*m.b250 - m.b259 - 2*m.b260 - m.b281 - 2*m.b282 - m.b291
                         - 2*m.b292 - m.b311 - 2*m.b312 - m.b321 - 2*m.b322 - m.b339 - 2*m.b340 - m.b349 - 2*m.b350
                         - m.b365 - 2*m.b366 - m.b375 - 2*m.b376 - m.b389 - 2*m.b390 - m.b399 - 2*m.b400 - m.b411
                         - 2*m.b412 - m.b421 - 2*m.b422 - m.b431 - 2*m.b432 - m.b441 - 2*m.b442 - m.b449 - 2*m.b450
                         - m.b459 - 2*m.b460 - m.b467 - 2*m.b468 - m.b469 - 2*m.b470 - m.b471 - 2*m.b472 - m.b473
                         - 2*m.b474 - m.b477 - 2*m.b478 - m.b479 - 2*m.b480 - m.b481 - 2*m.b482 - m.b489 - 2*m.b490
                         - m.b501 - 2*m.b502 - m.b511 - 2*m.b512 - m.b519 - 2*m.b520 - m.b527 - 2*m.b528 - m.b529
                         - 2*m.b530 - m.b531 - 2*m.b532 == 0)

m.c12 = Constraint(expr=   m.x11 - m.b45 - 2*m.b46 - m.b87 - 2*m.b88 - m.b127 - 2*m.b128 - m.b165 - 2*m.b166 - m.b201
                         - 2*m.b202 - m.b235 - 2*m.b236 - m.b267 - 2*m.b268 - m.b299 - 2*m.b300 - m.b301 - 2*m.b302
                         - m.b303 - 2*m.b304 - m.b305 - 2*m.b306 - m.b307 - 2*m.b308 - m.b309 - 2*m.b310 - m.b311
                         - 2*m.b312 - m.b313 - 2*m.b314 - m.b315 - 2*m.b316 - m.b317 - 2*m.b318 - m.b319 - 2*m.b320
                         - m.b321 - 2*m.b322 - m.b323 - 2*m.b324 - m.b325 - 2*m.b326 - m.b327 - 2*m.b328 == 0)

m.c13 = Constraint(expr=   m.x12 - m.b47 - 2*m.b48 - m.b89 - 2*m.b90 - m.b203 - 2*m.b204 - m.b239 - 2*m.b240 - m.b269
                         - 2*m.b270 - m.b299 - 2*m.b300 - m.b329 - 2*m.b330 - m.b331 - 2*m.b332 - m.b333 - 2*m.b334
                         - m.b337 - 2*m.b338 - m.b339 - 2*m.b340 - m.b341 - 2*m.b342 - m.b349 - 2*m.b350 - m.b351
                         - 2*m.b352 - m.b353 - 2*m.b354 - m.b355 - 2*m.b356 - m.b369 - 2*m.b370 - m.b371 - 2*m.b372
                         == 0)

m.c14 = Constraint(expr=   m.x13 - m.b145 - 2*m.b146 - m.b147 - 2*m.b148 - m.b161 - 2*m.b162 - m.b183 - 2*m.b184
                         - m.b185 - 2*m.b186 - m.b237 - 2*m.b238 - m.b239 - 2*m.b240 - m.b245 - 2*m.b246 - m.b257
                         - 2*m.b258 - m.b343 - 2*m.b344 - m.b345 - 2*m.b346 - m.b369 - 2*m.b370 - m.b371 - 2*m.b372
                         - m.b435 - 2*m.b436 - m.b437 - 2*m.b438 - m.b499 - 2*m.b500 - m.b509 - 2*m.b510 == 0)

m.c15 = Constraint(expr=   m.x14 - m.b61 - 2*m.b62 - m.b103 - 2*m.b104 - m.b143 - 2*m.b144 - m.b181 - 2*m.b182 - m.b217
                         - 2*m.b218 - m.b251 - 2*m.b252 - m.b283 - 2*m.b284 - m.b313 - 2*m.b314 - m.b341 - 2*m.b342
                         - m.b367 - 2*m.b368 - m.b391 - 2*m.b392 - m.b413 - 2*m.b414 - m.b433 - 2*m.b434 - m.b451
                         - 2*m.b452 - m.b467 - 2*m.b468 - m.b483 - 2*m.b484 - m.b485 - 2*m.b486 - m.b487 - 2*m.b488
                         - m.b489 - 2*m.b490 - m.b491 - 2*m.b492 - m.b493 - 2*m.b494 - m.b495 - 2*m.b496 == 0)

m.c16 = Constraint(expr=   m.x15 - m.b53 - 2*m.b54 - m.b57 - 2*m.b58 - m.b95 - 2*m.b96 - m.b99 - 2*m.b100 - m.b135
                         - 2*m.b136 - m.b139 - 2*m.b140 - m.b173 - 2*m.b174 - m.b177 - 2*m.b178 - m.b209 - 2*m.b210
                         - m.b213 - 2*m.b214 - m.b243 - 2*m.b244 - m.b247 - 2*m.b248 - m.b275 - 2*m.b276 - m.b279
                         - 2*m.b280 - m.b305 - 2*m.b306 - m.b309 - 2*m.b310 - m.b333 - 2*m.b334 - m.b337 - 2*m.b338
                         - m.b359 - 2*m.b360 - m.b363 - 2*m.b364 - m.b383 - 2*m.b384 - m.b387 - 2*m.b388 - m.b407
                         - 2*m.b408 - m.b411 - 2*m.b412 - m.b413 - 2*m.b414 - m.b415 - 2*m.b416 - m.b417 - 2*m.b418
                         - m.b419 - 2*m.b420 - m.b421 - 2*m.b422 - m.b423 - 2*m.b424 - m.b425 - 2*m.b426 - m.b427
                         - 2*m.b428 - m.b429 - 2*m.b430 - m.b449 - 2*m.b450 - m.b451 - 2*m.b452 - m.b453 - 2*m.b454
                         - m.b455 - 2*m.b456 - m.b457 - 2*m.b458 - m.b459 - 2*m.b460 - m.b461 - 2*m.b462 - m.b463
                         - 2*m.b464 - m.b465 - 2*m.b466 == 0)

m.c17 = Constraint(expr=   m.x16 - m.b57 - 2*m.b58 - m.b99 - 2*m.b100 - m.b139 - 2*m.b140 - m.b177 - 2*m.b178 - m.b213
                         - 2*m.b214 - m.b247 - 2*m.b248 - m.b279 - 2*m.b280 - m.b309 - 2*m.b310 - m.b337 - 2*m.b338
                         - m.b363 - 2*m.b364 - m.b387 - 2*m.b388 - m.b409 - 2*m.b410 - m.b429 - 2*m.b430 - m.b449
                         - 2*m.b450 - m.b451 - 2*m.b452 - m.b453 - 2*m.b454 - m.b455 - 2*m.b456 - m.b457 - 2*m.b458
                         - m.b459 - 2*m.b460 - m.b461 - 2*m.b462 - m.b463 - 2*m.b464 - m.b465 - 2*m.b466 == 0)

m.c18 = Constraint(expr=   m.x17 - m.b161 - 2*m.b162 - m.b237 - 2*m.b238 - m.b239 - 2*m.b240 - m.b245 - 2*m.b246
                         - m.b253 - 2*m.b254 - m.b255 - 2*m.b256 - m.b257 - 2*m.b258 == 0)

m.c19 = Constraint(expr=   m.x18 - m.b63 - 2*m.b64 - m.b105 - 2*m.b106 - m.b145 - 2*m.b146 - m.b183 - 2*m.b184 - m.b219
                         - 2*m.b220 - m.b253 - 2*m.b254 - m.b285 - 2*m.b286 - m.b315 - 2*m.b316 - m.b343 - 2*m.b344
                         - m.b369 - 2*m.b370 - m.b393 - 2*m.b394 - m.b415 - 2*m.b416 - m.b435 - 2*m.b436 - m.b453
                         - 2*m.b454 - m.b469 - 2*m.b470 - m.b483 - 2*m.b484 - m.b497 - 2*m.b498 - m.b499 - 2*m.b500
                         - m.b501 - 2*m.b502 - m.b503 - 2*m.b504 - m.b505 - 2*m.b506 - m.b507 - 2*m.b508 == 0)

m.c20 = Constraint(expr=   m.x19 - m.b119 - 2*m.b120 - m.b129 - 2*m.b130 - m.b131 - 2*m.b132 - m.b145 - 2*m.b146
                         - m.b147 - 2*m.b148 - m.b149 - 2*m.b150 == 0)

m.c21 = Constraint(expr=   m.x20 - m.b67 - 2*m.b68 - m.b109 - 2*m.b110 - m.b119 - 2*m.b120 - m.b161 - 2*m.b162 - m.b167
                         - 2*m.b168 - m.b169 - 2*m.b170 - m.b183 - 2*m.b184 - m.b185 - 2*m.b186 - m.b187 - 2*m.b188
                         - m.b223 - 2*m.b224 - m.b245 - 2*m.b246 - m.b289 - 2*m.b290 - m.b319 - 2*m.b320 - m.b335
                         - 2*m.b336 - m.b361 - 2*m.b362 - m.b397 - 2*m.b398 - m.b419 - 2*m.b420 - m.b435 - 2*m.b436
                         - m.b437 - 2*m.b438 - m.b439 - 2*m.b440 - m.b457 - 2*m.b458 - m.b473 - 2*m.b474 - m.b487
                         - 2*m.b488 - m.b519 - 2*m.b520 - m.b521 - 2*m.b522 - m.b523 - 2*m.b524 - m.b525 - 2*m.b526
                         == 0)

m.c22 = Constraint(expr=   m.x21 - m.b129 - 2*m.b130 - m.b145 - 2*m.b146 - m.b147 - 2*m.b148 - m.b161 - 2*m.b162
                         - m.b167 - 2*m.b168 - m.b183 - 2*m.b184 - m.b185 - 2*m.b186 - m.b245 - 2*m.b246 - m.b257
                         - 2*m.b258 - m.b335 - 2*m.b336 - m.b347 - 2*m.b348 - m.b435 - 2*m.b436 - m.b437 - 2*m.b438
                         - m.b499 - 2*m.b500 - m.b509 - 2*m.b510 == 0)

m.c23 = Constraint(expr=   m.x22 - m.b131 - 2*m.b132 - m.b169 - 2*m.b170 - m.b361 - 2*m.b362 - m.b373 - 2*m.b374 == 0)

m.c24 = Constraint(expr=   m.x23 - m.b59 - 2*m.b60 - m.b101 - 2*m.b102 - m.b141 - 2*m.b142 - m.b179 - 2*m.b180 - m.b215
                         - 2*m.b216 - m.b249 - 2*m.b250 - m.b281 - 2*m.b282 - m.b311 - 2*m.b312 - m.b339 - 2*m.b340
                         - m.b365 - 2*m.b366 - m.b389 - 2*m.b390 - m.b411 - 2*m.b412 - m.b431 - 2*m.b432 - m.b449
                         - 2*m.b450 - m.b467 - 2*m.b468 - m.b469 - 2*m.b470 - m.b471 - 2*m.b472 - m.b473 - 2*m.b474
                         - m.b475 - 2*m.b476 - m.b477 - 2*m.b478 - m.b479 - 2*m.b480 - m.b481 - 2*m.b482 == 0)

m.c25 = Constraint(expr=   m.x24 - m.b35 - 2*m.b36 - m.b123 - 2*m.b124 - m.b125 - 2*m.b126 - m.b141 - 2*m.b142 - m.b151
                         - 2*m.b152 - m.b153 - 2*m.b154 - m.b157 - 2*m.b158 == 0)

m.c26 = Constraint(expr=   m.x25 - m.b37 - 2*m.b38 - m.b55 - 2*m.b56 - m.b67 - 2*m.b68 - m.b79 - 2*m.b80 - m.b109
                         - 2*m.b110 - m.b163 - 2*m.b164 - m.b171 - 2*m.b172 - m.b179 - 2*m.b180 - m.b181 - 2*m.b182
                         - m.b189 - 2*m.b190 - m.b191 - 2*m.b192 - m.b195 - 2*m.b196 - m.b277 - 2*m.b278 - m.b289
                         - 2*m.b290 - m.b397 - 2*m.b398 - m.b431 - 2*m.b432 - m.b441 - 2*m.b442 - m.b443 - 2*m.b444
                         - m.b447 - 2*m.b448 - m.b473 - 2*m.b474 - m.b487 - 2*m.b488 - m.b519 - 2*m.b520 - m.b521
                         - 2*m.b522 - m.b525 - 2*m.b526 == 0)

m.c27 = Constraint(expr=   m.x26 - m.b41 - 2*m.b42 - m.b83 - 2*m.b84 - m.b123 - 2*m.b124 - m.b197 - 2*m.b198 - m.b233
                         - 2*m.b234 - m.b235 - 2*m.b236 - m.b241 - 2*m.b242 - m.b243 - 2*m.b244 - m.b247 - 2*m.b248
                         - m.b249 - 2*m.b250 - m.b251 - 2*m.b252 - m.b259 - 2*m.b260 - m.b261 - 2*m.b262 - m.b263
                         - 2*m.b264 - m.b265 - 2*m.b266 == 0)

m.c28 = Constraint(expr=   m.x27 - m.b43 - 2*m.b44 - m.b59 - 2*m.b60 - m.b69 - 2*m.b70 - m.b85 - 2*m.b86 - m.b101
                         - 2*m.b102 - m.b111 - 2*m.b112 - m.b125 - 2*m.b126 - m.b141 - 2*m.b142 - m.b151 - 2*m.b152
                         - m.b163 - 2*m.b164 - m.b179 - 2*m.b180 - m.b189 - 2*m.b190 - m.b199 - 2*m.b200 - m.b215
                         - 2*m.b216 - m.b225 - 2*m.b226 - m.b233 - 2*m.b234 - m.b249 - 2*m.b250 - m.b259 - 2*m.b260
                         - m.b267 - 2*m.b268 - m.b269 - 2*m.b270 - m.b271 - 2*m.b272 - m.b273 - 2*m.b274 - m.b275
                         - 2*m.b276 - m.b277 - 2*m.b278 - m.b279 - 2*m.b280 - m.b283 - 2*m.b284 - m.b285 - 2*m.b286
                         - m.b287 - 2*m.b288 - m.b289 - 2*m.b290 - m.b293 - 2*m.b294 - m.b295 - 2*m.b296 - m.b297
                         - 2*m.b298 - m.b311 - 2*m.b312 - m.b321 - 2*m.b322 - m.b339 - 2*m.b340 - m.b349 - 2*m.b350
                         - m.b365 - 2*m.b366 - m.b375 - 2*m.b376 - m.b389 - 2*m.b390 - m.b399 - 2*m.b400 - m.b411
                         - 2*m.b412 - m.b421 - 2*m.b422 - m.b431 - 2*m.b432 - m.b441 - 2*m.b442 - m.b449 - 2*m.b450
                         - m.b459 - 2*m.b460 - m.b467 - 2*m.b468 - m.b469 - 2*m.b470 - m.b471 - 2*m.b472 - m.b473
                         - 2*m.b474 - m.b477 - 2*m.b478 - m.b479 - 2*m.b480 - m.b481 - 2*m.b482 - m.b489 - 2*m.b490
                         - m.b501 - 2*m.b502 - m.b511 - 2*m.b512 - m.b519 - 2*m.b520 - m.b527 - 2*m.b528 - m.b529
                         - 2*m.b530 - m.b531 - 2*m.b532 == 0)

m.c29 = Constraint(expr=   m.x28 - m.b47 - 2*m.b48 - m.b49 - 2*m.b50 - m.b89 - 2*m.b90 - m.b91 - 2*m.b92 - m.b203
                         - 2*m.b204 - m.b205 - 2*m.b206 - m.b269 - 2*m.b270 - m.b271 - 2*m.b272 - m.b299 - 2*m.b300
                         - m.b301 - 2*m.b302 - m.b331 - 2*m.b332 - m.b333 - 2*m.b334 - m.b337 - 2*m.b338 - m.b339
                         - 2*m.b340 - m.b341 - 2*m.b342 - m.b349 - 2*m.b350 - m.b351 - 2*m.b352 - m.b353 - 2*m.b354
                         - m.b355 - 2*m.b356 - m.b357 - 2*m.b358 - m.b359 - 2*m.b360 - m.b363 - 2*m.b364 - m.b365
                         - 2*m.b366 - m.b367 - 2*m.b368 - m.b375 - 2*m.b376 - m.b377 - 2*m.b378 - m.b379 - 2*m.b380
                         - m.b381 - 2*m.b382 == 0)

m.c30 = Constraint(expr=   m.x29 - m.b63 - 2*m.b64 - m.b65 - 2*m.b66 - m.b105 - 2*m.b106 - m.b107 - 2*m.b108 - m.b219
                         - 2*m.b220 - m.b221 - 2*m.b222 - m.b285 - 2*m.b286 - m.b287 - 2*m.b288 - m.b315 - 2*m.b316
                         - m.b317 - 2*m.b318 - m.b393 - 2*m.b394 - m.b395 - 2*m.b396 - m.b415 - 2*m.b416 - m.b417
                         - 2*m.b418 - m.b453 - 2*m.b454 - m.b455 - 2*m.b456 - m.b469 - 2*m.b470 - m.b471 - 2*m.b472
                         - m.b483 - 2*m.b484 - m.b485 - 2*m.b486 - m.b501 - 2*m.b502 - m.b503 - 2*m.b504 - m.b505
                         - 2*m.b506 - m.b507 - 2*m.b508 - m.b511 - 2*m.b512 - m.b513 - 2*m.b514 - m.b515 - 2*m.b516
                         - m.b517 - 2*m.b518 == 0)

m.c31 = Constraint(expr=   m.x30 - m.b121 - 2*m.b122 - m.b127 - 2*m.b128 - m.b135 - 2*m.b136 - m.b139 - 2*m.b140
                         - m.b155 - 2*m.b156 - m.b159 - 2*m.b160 - m.b165 - 2*m.b166 - m.b173 - 2*m.b174 - m.b177
                         - 2*m.b178 - m.b193 - 2*m.b194 - m.b211 - 2*m.b212 - m.b223 - 2*m.b224 - m.b307 - 2*m.b308
                         - m.b319 - 2*m.b320 - m.b407 - 2*m.b408 - m.b419 - 2*m.b420 - m.b429 - 2*m.b430 - m.b445
                         - 2*m.b446 - m.b457 - 2*m.b458 - m.b523 - 2*m.b524 == 0)

m.c32 = Constraint(expr=   m.x31 - m.b39 - 2*m.b40 - m.b45 - 2*m.b46 - m.b53 - 2*m.b54 - m.b57 - 2*m.b58 - m.b73
                         - 2*m.b74 - m.b81 - 2*m.b82 - m.b87 - 2*m.b88 - m.b95 - 2*m.b96 - m.b99 - 2*m.b100 - m.b115
                         - 2*m.b116 - m.b197 - 2*m.b198 - m.b199 - 2*m.b200 - m.b203 - 2*m.b204 - m.b205 - 2*m.b206
                         - m.b207 - 2*m.b208 - m.b215 - 2*m.b216 - m.b217 - 2*m.b218 - m.b219 - 2*m.b220 - m.b221
                         - 2*m.b222 - m.b225 - 2*m.b226 - m.b227 - 2*m.b228 - m.b231 - 2*m.b232 - m.b235 - 2*m.b236
                         - m.b243 - 2*m.b244 - m.b247 - 2*m.b248 - m.b263 - 2*m.b264 - m.b267 - 2*m.b268 - m.b275
                         - 2*m.b276 - m.b279 - 2*m.b280 - m.b295 - 2*m.b296 - m.b299 - 2*m.b300 - m.b301 - 2*m.b302
                         - m.b303 - 2*m.b304 - m.b311 - 2*m.b312 - m.b313 - 2*m.b314 - m.b315 - 2*m.b316 - m.b317
                         - 2*m.b318 - m.b321 - 2*m.b322 - m.b323 - 2*m.b324 - m.b327 - 2*m.b328 - m.b333 - 2*m.b334
                         - m.b337 - 2*m.b338 - m.b353 - 2*m.b354 - m.b359 - 2*m.b360 - m.b363 - 2*m.b364 - m.b379
                         - 2*m.b380 - m.b383 - 2*m.b384 - m.b387 - 2*m.b388 - m.b403 - 2*m.b404 - m.b411 - 2*m.b412
                         - m.b413 - 2*m.b414 - m.b415 - 2*m.b416 - m.b417 - 2*m.b418 - m.b421 - 2*m.b422 - m.b423
                         - 2*m.b424 - m.b427 - 2*m.b428 - m.b449 - 2*m.b450 - m.b451 - 2*m.b452 - m.b453 - 2*m.b454
                         - m.b455 - 2*m.b456 - m.b459 - 2*m.b460 - m.b461 - 2*m.b462 - m.b465 - 2*m.b466 - m.b479
                         - 2*m.b480 - m.b493 - 2*m.b494 - m.b505 - 2*m.b506 - m.b515 - 2*m.b516 - m.b529 - 2*m.b530
                         - m.b533 - 2*m.b534 - m.b537 - 2*m.b538 == 0)

m.c33 = Constraint(expr= - 3*m.b33 - 6*m.b34 - 3*m.b35 - 6*m.b36 - 3*m.b37 - 6*m.b38 - 3*m.b39 - 6*m.b40 - 3*m.b41
                         - 6*m.b42 - 3*m.b43 - 6*m.b44 - 3*m.b45 - 6*m.b46 - 3*m.b47 - 6*m.b48 - 3*m.b49 - 6*m.b50
                         - 3*m.b51 - 6*m.b52 - 3*m.b53 - 6*m.b54 - 3*m.b55 - 6*m.b56 - 3*m.b57 - 6*m.b58 - 3*m.b59
                         - 6*m.b60 - 3*m.b61 - 6*m.b62 - 3*m.b63 - 6*m.b64 - 3*m.b65 - 6*m.b66 - 3*m.b67 - 6*m.b68
                         - 3*m.b69 - 6*m.b70 - 3*m.b71 - 6*m.b72 - 3*m.b73 - 6*m.b74 - 3*m.b117 - 6*m.b118 - 3*m.b157
                         - 6*m.b158 - 3*m.b195 - 6*m.b196 - 3*m.b231 - 6*m.b232 - 3*m.b265 - 6*m.b266 - 3*m.b297
                         - 6*m.b298 - 3*m.b327 - 6*m.b328 - 3*m.b355 - 6*m.b356 - 3*m.b381 - 6*m.b382 - 3*m.b405
                         - 6*m.b406 - 3*m.b427 - 6*m.b428 - 3*m.b447 - 6*m.b448 - 3*m.b465 - 6*m.b466 - 3*m.b481
                         - 6*m.b482 - 3*m.b495 - 6*m.b496 - 3*m.b507 - 6*m.b508 - 3*m.b517 - 6*m.b518 - 3*m.b525
                         - 6*m.b526 - 3*m.b531 - 6*m.b532 - 3*m.b535 - 6*m.b536 - 3*m.b537 - 6*m.b538 - m.i539
                         - 2*m.i540 - m.i541 - 2*m.i542 - m.i543 - 2*m.i544 - m.i545 - 2*m.i546 - m.i547 - 2*m.i548
                         - m.i549 - 2*m.i550 - m.i551 - 2*m.i552 - m.i553 - 2*m.i554 - m.i555 - 2*m.i556 - m.i557
                         - 2*m.i558 - m.i559 - 2*m.i560 - m.i561 - 2*m.i562 - m.i563 - 2*m.i564 - m.i565 - 2*m.i566
                         - m.i567 - 2*m.i568 - m.i569 - 2*m.i570 - m.i571 - 2*m.i572 - m.i573 - 2*m.i574 - m.i575
                         - 2*m.i576 - m.i577 - 2*m.i578 - m.i579 - 2*m.i580 - m.i623 - 2*m.i624 - m.i663 - 2*m.i664
                         - m.i701 - 2*m.i702 - m.i737 - 2*m.i738 - m.i771 - 2*m.i772 - m.i803 - 2*m.i804 - m.i833
                         - 2*m.i834 - m.i861 - 2*m.i862 - m.i887 - 2*m.i888 - m.i911 - 2*m.i912 - m.i933 - 2*m.i934
                         - m.i953 - 2*m.i954 - m.i971 - 2*m.i972 - m.i987 - 2*m.i988 - m.i1001 - 2*m.i1002 - m.i1013
                         - 2*m.i1014 - m.i1023 - 2*m.i1024 - m.i1031 - 2*m.i1032 - m.i1037 - 2*m.i1038 - m.i1041
                         - 2*m.i1042 - m.i1043 - 2*m.i1044 <= -21)

m.c34 = Constraint(expr= - 3*m.b75 - 6*m.b76 - 3*m.b117 - 6*m.b118 - 3*m.b157 - 6*m.b158 - 3*m.b195 - 6*m.b196
                         - 3*m.b231 - 6*m.b232 - 3*m.b265 - 6*m.b266 - 3*m.b297 - 6*m.b298 - 3*m.b327 - 6*m.b328
                         - 3*m.b355 - 6*m.b356 - 3*m.b381 - 6*m.b382 - 3*m.b405 - 6*m.b406 - 3*m.b427 - 6*m.b428
                         - 3*m.b447 - 6*m.b448 - 3*m.b465 - 6*m.b466 - 3*m.b481 - 6*m.b482 - 3*m.b495 - 6*m.b496
                         - 3*m.b507 - 6*m.b508 - 3*m.b517 - 6*m.b518 - 3*m.b525 - 6*m.b526 - 3*m.b531 - 6*m.b532
                         - 3*m.b535 - 6*m.b536 - 3*m.b537 - 6*m.b538 - m.i581 - 2*m.i582 - m.i623 - 2*m.i624 - m.i663
                         - 2*m.i664 - m.i701 - 2*m.i702 - m.i737 - 2*m.i738 - m.i771 - 2*m.i772 - m.i803 - 2*m.i804
                         - m.i833 - 2*m.i834 - m.i861 - 2*m.i862 - m.i887 - 2*m.i888 - m.i911 - 2*m.i912 - m.i933
                         - 2*m.i934 - m.i953 - 2*m.i954 - m.i971 - 2*m.i972 - m.i987 - 2*m.i988 - m.i1001 - 2*m.i1002
                         - m.i1013 - 2*m.i1014 - m.i1023 - 2*m.i1024 - m.i1031 - 2*m.i1032 - m.i1037 - 2*m.i1038
                         - m.i1041 - 2*m.i1042 - m.i1043 - 2*m.i1044 <= -7)

m.c35 = Constraint(expr= - 3*m.b77 - 6*m.b78 - 3*m.b97 - 6*m.b98 - 3*m.b133 - 6*m.b134 - 3*m.b143 - 6*m.b144 - 3*m.b385
                         - 6*m.b386 - 3*m.b433 - 6*m.b434 - m.i583 - 2*m.i584 - m.i603 - 2*m.i604 - m.i639 - 2*m.i640
                         - m.i649 - 2*m.i650 - m.i891 - 2*m.i892 - m.i939 - 2*m.i940 <= -3)

m.c36 = Constraint(expr= - 3*m.b51 - 6*m.b52 - 3*m.b61 - 6*m.b62 - 3*m.b93 - 6*m.b94 - 3*m.b103 - 6*m.b104 - 3*m.b133
                         - 6*m.b134 - 3*m.b143 - 6*m.b144 - 3*m.b171 - 6*m.b172 - 3*m.b181 - 6*m.b182 - 3*m.b207
                         - 6*m.b208 - 3*m.b217 - 6*m.b218 - 3*m.b241 - 6*m.b242 - 3*m.b251 - 6*m.b252 - 3*m.b273
                         - 6*m.b274 - 3*m.b283 - 6*m.b284 - 3*m.b303 - 6*m.b304 - 3*m.b313 - 6*m.b314 - 3*m.b331
                         - 6*m.b332 - 3*m.b341 - 6*m.b342 - 3*m.b357 - 6*m.b358 - 3*m.b367 - 6*m.b368 - 3*m.b383
                         - 6*m.b384 - 3*m.b385 - 6*m.b386 - 3*m.b387 - 6*m.b388 - 3*m.b389 - 6*m.b390 - 3*m.b393
                         - 6*m.b394 - 3*m.b395 - 6*m.b396 - 3*m.b397 - 6*m.b398 - 3*m.b399 - 6*m.b400 - 3*m.b401
                         - 6*m.b402 - 3*m.b403 - 6*m.b404 - 3*m.b405 - 6*m.b406 - 3*m.b413 - 6*m.b414 - 3*m.b433
                         - 6*m.b434 - 3*m.b451 - 6*m.b452 - 3*m.b467 - 6*m.b468 - 3*m.b483 - 6*m.b484 - 3*m.b485
                         - 6*m.b486 - 3*m.b487 - 6*m.b488 - 3*m.b489 - 6*m.b490 - 3*m.b491 - 6*m.b492 - 3*m.b493
                         - 6*m.b494 - 3*m.b495 - 6*m.b496 - m.i557 - 2*m.i558 - m.i567 - 2*m.i568 - m.i599 - 2*m.i600
                         - m.i609 - 2*m.i610 - m.i639 - 2*m.i640 - m.i649 - 2*m.i650 - m.i677 - 2*m.i678 - m.i687
                         - 2*m.i688 - m.i713 - 2*m.i714 - m.i723 - 2*m.i724 - m.i747 - 2*m.i748 - m.i757 - 2*m.i758
                         - m.i779 - 2*m.i780 - m.i789 - 2*m.i790 - m.i809 - 2*m.i810 - m.i819 - 2*m.i820 - m.i837
                         - 2*m.i838 - m.i847 - 2*m.i848 - m.i863 - 2*m.i864 - m.i873 - 2*m.i874 - m.i889 - 2*m.i890
                         - m.i891 - 2*m.i892 - m.i893 - 2*m.i894 - m.i895 - 2*m.i896 - m.i899 - 2*m.i900 - m.i901
                         - 2*m.i902 - m.i903 - 2*m.i904 - m.i905 - 2*m.i906 - m.i907 - 2*m.i908 - m.i909 - 2*m.i910
                         - m.i911 - 2*m.i912 - m.i919 - 2*m.i920 - m.i939 - 2*m.i940 - m.i957 - 2*m.i958 - m.i973
                         - 2*m.i974 - m.i989 - 2*m.i990 - m.i991 - 2*m.i992 - m.i993 - 2*m.i994 - m.i995 - 2*m.i996
                         - m.i997 - 2*m.i998 - m.i999 - 2*m.i1000 - m.i1001 - 2*m.i1002 <= -3)

m.c37 = Constraint(expr= - 3*m.b33 - 6*m.b34 - 3*m.b51 - 6*m.b52 - 3*m.b61 - 6*m.b62 - 3*m.b79 - 6*m.b80 - 3*m.b81
                         - 6*m.b82 - 3*m.b83 - 6*m.b84 - 3*m.b85 - 6*m.b86 - 3*m.b87 - 6*m.b88 - 3*m.b89 - 6*m.b90
                         - 3*m.b91 - 6*m.b92 - 3*m.b95 - 6*m.b96 - 3*m.b99 - 6*m.b100 - 3*m.b101 - 6*m.b102 - 3*m.b105
                         - 6*m.b106 - 3*m.b107 - 6*m.b108 - 3*m.b109 - 6*m.b110 - 3*m.b111 - 6*m.b112 - 3*m.b113
                         - 6*m.b114 - 3*m.b115 - 6*m.b116 - 3*m.b117 - 6*m.b118 - 3*m.b171 - 6*m.b172 - 3*m.b181
                         - 6*m.b182 - 3*m.b207 - 6*m.b208 - 3*m.b217 - 6*m.b218 - 3*m.b241 - 6*m.b242 - 3*m.b251
                         - 6*m.b252 - 3*m.b273 - 6*m.b274 - 3*m.b283 - 6*m.b284 - 3*m.b303 - 6*m.b304 - 3*m.b313
                         - 6*m.b314 - 3*m.b331 - 6*m.b332 - 3*m.b341 - 6*m.b342 - 3*m.b357 - 6*m.b358 - 3*m.b367
                         - 6*m.b368 - 3*m.b383 - 6*m.b384 - 3*m.b387 - 6*m.b388 - 3*m.b389 - 6*m.b390 - 3*m.b393
                         - 6*m.b394 - 3*m.b395 - 6*m.b396 - 3*m.b397 - 6*m.b398 - 3*m.b399 - 6*m.b400 - 3*m.b401
                         - 6*m.b402 - 3*m.b403 - 6*m.b404 - 3*m.b405 - 6*m.b406 - 3*m.b413 - 6*m.b414 - 3*m.b451
                         - 6*m.b452 - 3*m.b467 - 6*m.b468 - 3*m.b483 - 6*m.b484 - 3*m.b485 - 6*m.b486 - 3*m.b487
                         - 6*m.b488 - 3*m.b489 - 6*m.b490 - 3*m.b491 - 6*m.b492 - 3*m.b493 - 6*m.b494 - 3*m.b495
                         - 6*m.b496 - m.i539 - 2*m.i540 - m.i557 - 2*m.i558 - m.i567 - 2*m.i568 - m.i585 - 2*m.i586
                         - m.i587 - 2*m.i588 - m.i589 - 2*m.i590 - m.i591 - 2*m.i592 - m.i593 - 2*m.i594 - m.i595
                         - 2*m.i596 - m.i597 - 2*m.i598 - m.i601 - 2*m.i602 - m.i605 - 2*m.i606 - m.i607 - 2*m.i608
                         - m.i611 - 2*m.i612 - m.i613 - 2*m.i614 - m.i615 - 2*m.i616 - m.i617 - 2*m.i618 - m.i619
                         - 2*m.i620 - m.i621 - 2*m.i622 - m.i623 - 2*m.i624 - m.i677 - 2*m.i678 - m.i687 - 2*m.i688
                         - m.i713 - 2*m.i714 - m.i723 - 2*m.i724 - m.i747 - 2*m.i748 - m.i757 - 2*m.i758 - m.i779
                         - 2*m.i780 - m.i789 - 2*m.i790 - m.i809 - 2*m.i810 - m.i819 - 2*m.i820 - m.i837 - 2*m.i838
                         - m.i847 - 2*m.i848 - m.i863 - 2*m.i864 - m.i873 - 2*m.i874 - m.i889 - 2*m.i890 - m.i893
                         - 2*m.i894 - m.i895 - 2*m.i896 - m.i899 - 2*m.i900 - m.i901 - 2*m.i902 - m.i903 - 2*m.i904
                         - m.i905 - 2*m.i906 - m.i907 - 2*m.i908 - m.i909 - 2*m.i910 - m.i911 - 2*m.i912 - m.i919
                         - 2*m.i920 - m.i957 - 2*m.i958 - m.i973 - 2*m.i974 - m.i989 - 2*m.i990 - m.i991 - 2*m.i992
                         - m.i993 - 2*m.i994 - m.i995 - 2*m.i996 - m.i997 - 2*m.i998 - m.i999 - 2*m.i1000 - m.i1001
                         - 2*m.i1002 <= -6)

m.c38 = Constraint(expr= - 3*m.b97 - 6*m.b98 - 3*m.b121 - 6*m.b122 - 3*m.b127 - 6*m.b128 - 3*m.b135 - 6*m.b136
                         - 3*m.b137 - 6*m.b138 - 3*m.b139 - 6*m.b140 - 3*m.b155 - 6*m.b156 - 3*m.b385 - 6*m.b386
                         - 3*m.b433 - 6*m.b434 - m.i603 - 2*m.i604 - m.i627 - 2*m.i628 - m.i633 - 2*m.i634 - m.i641
                         - 2*m.i642 - m.i643 - 2*m.i644 - m.i645 - 2*m.i646 - m.i661 - 2*m.i662 - m.i891 - 2*m.i892
                         - m.i939 - 2*m.i940 <= -6)

m.c39 = Constraint(expr= - 3*m.b55 - 6*m.b56 - 3*m.b159 - 6*m.b160 - 3*m.b165 - 6*m.b166 - 3*m.b173 - 6*m.b174
                         - 3*m.b175 - 6*m.b176 - 3*m.b177 - 6*m.b178 - 3*m.b193 - 6*m.b194 - 3*m.b223 - 6*m.b224
                         - 3*m.b245 - 6*m.b246 - 3*m.b277 - 6*m.b278 - 3*m.b319 - 6*m.b320 - 3*m.b335 - 6*m.b336
                         - 3*m.b361 - 6*m.b362 - 3*m.b419 - 6*m.b420 - 3*m.b431 - 6*m.b432 - 3*m.b435 - 6*m.b436
                         - 3*m.b437 - 6*m.b438 - 3*m.b439 - 6*m.b440 - 3*m.b441 - 6*m.b442 - 3*m.b443 - 6*m.b444
                         - 3*m.b447 - 6*m.b448 - 3*m.b457 - 6*m.b458 - 3*m.b523 - 6*m.b524 - m.i561 - 2*m.i562 - m.i665
                         - 2*m.i666 - m.i671 - 2*m.i672 - m.i679 - 2*m.i680 - m.i681 - 2*m.i682 - m.i683 - 2*m.i684
                         - m.i699 - 2*m.i700 - m.i729 - 2*m.i730 - m.i751 - 2*m.i752 - m.i783 - 2*m.i784 - m.i825
                         - 2*m.i826 - m.i841 - 2*m.i842 - m.i867 - 2*m.i868 - m.i925 - 2*m.i926 - m.i937 - 2*m.i938
                         - m.i941 - 2*m.i942 - m.i943 - 2*m.i944 - m.i945 - 2*m.i946 - m.i947 - 2*m.i948 - m.i949
                         - 2*m.i950 - m.i953 - 2*m.i954 - m.i963 - 2*m.i964 - m.i1029 - 2*m.i1030 <= -3)

m.c40 = Constraint(expr= - 3*m.b67 - 6*m.b68 - 3*m.b109 - 6*m.b110 - 3*m.b119 - 6*m.b120 - 3*m.b161 - 6*m.b162
                         - 3*m.b167 - 6*m.b168 - 3*m.b169 - 6*m.b170 - 3*m.b183 - 6*m.b184 - 3*m.b185 - 6*m.b186
                         - 3*m.b187 - 6*m.b188 - 3*m.b223 - 6*m.b224 - 3*m.b245 - 6*m.b246 - 3*m.b289 - 6*m.b290
                         - 3*m.b319 - 6*m.b320 - 3*m.b335 - 6*m.b336 - 3*m.b361 - 6*m.b362 - 3*m.b397 - 6*m.b398
                         - 3*m.b419 - 6*m.b420 - 3*m.b435 - 6*m.b436 - 3*m.b437 - 6*m.b438 - 3*m.b439 - 6*m.b440
                         - 3*m.b457 - 6*m.b458 - 3*m.b473 - 6*m.b474 - 3*m.b487 - 6*m.b488 - 3*m.b519 - 6*m.b520
                         - 3*m.b521 - 6*m.b522 - 3*m.b523 - 6*m.b524 - 3*m.b525 - 6*m.b526 - m.i573 - 2*m.i574 - m.i615
                         - 2*m.i616 - m.i625 - 2*m.i626 - m.i667 - 2*m.i668 - m.i673 - 2*m.i674 - m.i675 - 2*m.i676
                         - m.i689 - 2*m.i690 - m.i691 - 2*m.i692 - m.i693 - 2*m.i694 - m.i729 - 2*m.i730 - m.i751
                         - 2*m.i752 - m.i795 - 2*m.i796 - m.i825 - 2*m.i826 - m.i841 - 2*m.i842 - m.i867 - 2*m.i868
                         - m.i903 - 2*m.i904 - m.i925 - 2*m.i926 - m.i941 - 2*m.i942 - m.i943 - 2*m.i944 - m.i945
                         - 2*m.i946 - m.i963 - 2*m.i964 - m.i979 - 2*m.i980 - m.i993 - 2*m.i994 - m.i1025 - 2*m.i1026
                         - m.i1027 - 2*m.i1028 - m.i1029 - 2*m.i1030 - m.i1031 - 2*m.i1032 <= -4)

m.c41 = Constraint(expr= - 3*m.b39 - 6*m.b40 - 3*m.b45 - 6*m.b46 - 3*m.b81 - 6*m.b82 - 3*m.b87 - 6*m.b88 - 3*m.b121
                         - 6*m.b122 - 3*m.b127 - 6*m.b128 - 3*m.b159 - 6*m.b160 - 3*m.b165 - 6*m.b166 - 3*m.b197
                         - 6*m.b198 - 3*m.b199 - 6*m.b200 - 3*m.b203 - 6*m.b204 - 3*m.b205 - 6*m.b206 - 3*m.b207
                         - 6*m.b208 - 3*m.b209 - 6*m.b210 - 3*m.b211 - 6*m.b212 - 3*m.b213 - 6*m.b214 - 3*m.b215
                         - 6*m.b216 - 3*m.b217 - 6*m.b218 - 3*m.b219 - 6*m.b220 - 3*m.b221 - 6*m.b222 - 3*m.b223
                         - 6*m.b224 - 3*m.b225 - 6*m.b226 - 3*m.b227 - 6*m.b228 - 3*m.b229 - 6*m.b230 - 3*m.b231
                         - 6*m.b232 - 3*m.b235 - 6*m.b236 - 3*m.b267 - 6*m.b268 - 3*m.b299 - 6*m.b300 - 3*m.b301
                         - 6*m.b302 - 3*m.b303 - 6*m.b304 - 3*m.b305 - 6*m.b306 - 3*m.b307 - 6*m.b308 - 3*m.b309
                         - 6*m.b310 - 3*m.b311 - 6*m.b312 - 3*m.b313 - 6*m.b314 - 3*m.b315 - 6*m.b316 - 3*m.b317
                         - 6*m.b318 - 3*m.b319 - 6*m.b320 - 3*m.b321 - 6*m.b322 - 3*m.b323 - 6*m.b324 - 3*m.b325
                         - 6*m.b326 - 3*m.b327 - 6*m.b328 - m.i545 - 2*m.i546 - m.i551 - 2*m.i552 - m.i587 - 2*m.i588
                         - m.i593 - 2*m.i594 - m.i627 - 2*m.i628 - m.i633 - 2*m.i634 - m.i665 - 2*m.i666 - m.i671
                         - 2*m.i672 - m.i703 - 2*m.i704 - m.i705 - 2*m.i706 - m.i709 - 2*m.i710 - m.i711 - 2*m.i712
                         - m.i713 - 2*m.i714 - m.i715 - 2*m.i716 - m.i717 - 2*m.i718 - m.i719 - 2*m.i720 - m.i721
                         - 2*m.i722 - m.i723 - 2*m.i724 - m.i725 - 2*m.i726 - m.i727 - 2*m.i728 - m.i729 - 2*m.i730
                         - m.i731 - 2*m.i732 - m.i733 - 2*m.i734 - m.i735 - 2*m.i736 - m.i737 - 2*m.i738 - m.i741
                         - 2*m.i742 - m.i773 - 2*m.i774 - m.i805 - 2*m.i806 - m.i807 - 2*m.i808 - m.i809 - 2*m.i810
                         - m.i811 - 2*m.i812 - m.i813 - 2*m.i814 - m.i815 - 2*m.i816 - m.i817 - 2*m.i818 - m.i819
                         - 2*m.i820 - m.i821 - 2*m.i822 - m.i823 - 2*m.i824 - m.i825 - 2*m.i826 - m.i827 - 2*m.i828
                         - m.i829 - 2*m.i830 - m.i831 - 2*m.i832 - m.i833 - 2*m.i834 <= -8)

m.c42 = Constraint(expr= - 3*m.b59 - 6*m.b60 - 3*m.b69 - 6*m.b70 - 3*m.b101 - 6*m.b102 - 3*m.b111 - 6*m.b112 - 3*m.b141
                         - 6*m.b142 - 3*m.b151 - 6*m.b152 - 3*m.b179 - 6*m.b180 - 3*m.b189 - 6*m.b190 - 3*m.b215
                         - 6*m.b216 - 3*m.b225 - 6*m.b226 - 3*m.b249 - 6*m.b250 - 3*m.b259 - 6*m.b260 - 3*m.b281
                         - 6*m.b282 - 3*m.b291 - 6*m.b292 - 3*m.b311 - 6*m.b312 - 3*m.b321 - 6*m.b322 - 3*m.b339
                         - 6*m.b340 - 3*m.b349 - 6*m.b350 - 3*m.b365 - 6*m.b366 - 3*m.b375 - 6*m.b376 - 3*m.b389
                         - 6*m.b390 - 3*m.b399 - 6*m.b400 - 3*m.b411 - 6*m.b412 - 3*m.b421 - 6*m.b422 - 3*m.b431
                         - 6*m.b432 - 3*m.b441 - 6*m.b442 - 3*m.b449 - 6*m.b450 - 3*m.b459 - 6*m.b460 - 3*m.b467
                         - 6*m.b468 - 3*m.b469 - 6*m.b470 - 3*m.b471 - 6*m.b472 - 3*m.b473 - 6*m.b474 - 3*m.b477
                         - 6*m.b478 - 3*m.b479 - 6*m.b480 - 3*m.b481 - 6*m.b482 - 3*m.b489 - 6*m.b490 - 3*m.b501
                         - 6*m.b502 - 3*m.b511 - 6*m.b512 - 3*m.b519 - 6*m.b520 - 3*m.b527 - 6*m.b528 - 3*m.b529
                         - 6*m.b530 - 3*m.b531 - 6*m.b532 - m.i565 - 2*m.i566 - m.i575 - 2*m.i576 - m.i607 - 2*m.i608
                         - m.i617 - 2*m.i618 - m.i647 - 2*m.i648 - m.i657 - 2*m.i658 - m.i685 - 2*m.i686 - m.i695
                         - 2*m.i696 - m.i721 - 2*m.i722 - m.i731 - 2*m.i732 - m.i755 - 2*m.i756 - m.i765 - 2*m.i766
                         - m.i787 - 2*m.i788 - m.i797 - 2*m.i798 - m.i817 - 2*m.i818 - m.i827 - 2*m.i828 - m.i845
                         - 2*m.i846 - m.i855 - 2*m.i856 - m.i871 - 2*m.i872 - m.i881 - 2*m.i882 - m.i895 - 2*m.i896
                         - m.i905 - 2*m.i906 - m.i917 - 2*m.i918 - m.i927 - 2*m.i928 - m.i937 - 2*m.i938 - m.i947
                         - 2*m.i948 - m.i955 - 2*m.i956 - m.i965 - 2*m.i966 - m.i973 - 2*m.i974 - m.i975 - 2*m.i976
                         - m.i977 - 2*m.i978 - m.i979 - 2*m.i980 - m.i983 - 2*m.i984 - m.i985 - 2*m.i986 - m.i987
                         - 2*m.i988 - m.i995 - 2*m.i996 - m.i1007 - 2*m.i1008 - m.i1017 - 2*m.i1018 - m.i1025
                         - 2*m.i1026 - m.i1033 - 2*m.i1034 - m.i1035 - 2*m.i1036 - m.i1037 - 2*m.i1038 <= -6)

m.c43 = Constraint(expr= - 3*m.b45 - 6*m.b46 - 3*m.b87 - 6*m.b88 - 3*m.b127 - 6*m.b128 - 3*m.b165 - 6*m.b166 - 3*m.b201
                         - 6*m.b202 - 3*m.b235 - 6*m.b236 - 3*m.b267 - 6*m.b268 - 3*m.b299 - 6*m.b300 - 3*m.b301
                         - 6*m.b302 - 3*m.b303 - 6*m.b304 - 3*m.b305 - 6*m.b306 - 3*m.b307 - 6*m.b308 - 3*m.b309
                         - 6*m.b310 - 3*m.b311 - 6*m.b312 - 3*m.b313 - 6*m.b314 - 3*m.b315 - 6*m.b316 - 3*m.b317
                         - 6*m.b318 - 3*m.b319 - 6*m.b320 - 3*m.b321 - 6*m.b322 - 3*m.b323 - 6*m.b324 - 3*m.b325
                         - 6*m.b326 - 3*m.b327 - 6*m.b328 - m.i551 - 2*m.i552 - m.i593 - 2*m.i594 - m.i633 - 2*m.i634
                         - m.i671 - 2*m.i672 - m.i707 - 2*m.i708 - m.i741 - 2*m.i742 - m.i773 - 2*m.i774 - m.i805
                         - 2*m.i806 - m.i807 - 2*m.i808 - m.i809 - 2*m.i810 - m.i811 - 2*m.i812 - m.i813 - 2*m.i814
                         - m.i815 - 2*m.i816 - m.i817 - 2*m.i818 - m.i819 - 2*m.i820 - m.i821 - 2*m.i822 - m.i823
                         - 2*m.i824 - m.i825 - 2*m.i826 - m.i827 - 2*m.i828 - m.i829 - 2*m.i830 - m.i831 - 2*m.i832
                         - m.i833 - 2*m.i834 <= -4)

m.c44 = Constraint(expr= - 3*m.b47 - 6*m.b48 - 3*m.b89 - 6*m.b90 - 3*m.b203 - 6*m.b204 - 3*m.b239 - 6*m.b240 - 3*m.b269
                         - 6*m.b270 - 3*m.b299 - 6*m.b300 - 3*m.b329 - 6*m.b330 - 3*m.b331 - 6*m.b332 - 3*m.b333
                         - 6*m.b334 - 3*m.b337 - 6*m.b338 - 3*m.b339 - 6*m.b340 - 3*m.b341 - 6*m.b342 - 3*m.b349
                         - 6*m.b350 - 3*m.b351 - 6*m.b352 - 3*m.b353 - 6*m.b354 - 3*m.b355 - 6*m.b356 - 3*m.b369
                         - 6*m.b370 - 3*m.b371 - 6*m.b372 - m.i553 - 2*m.i554 - m.i595 - 2*m.i596 - m.i709 - 2*m.i710
                         - m.i745 - 2*m.i746 - m.i775 - 2*m.i776 - m.i805 - 2*m.i806 - m.i835 - 2*m.i836 - m.i837
                         - 2*m.i838 - m.i839 - 2*m.i840 - m.i843 - 2*m.i844 - m.i845 - 2*m.i846 - m.i847 - 2*m.i848
                         - m.i855 - 2*m.i856 - m.i857 - 2*m.i858 - m.i859 - 2*m.i860 - m.i861 - 2*m.i862 - m.i875
                         - 2*m.i876 - m.i877 - 2*m.i878 <= -9)

m.c45 = Constraint(expr= - 3*m.b145 - 6*m.b146 - 3*m.b147 - 6*m.b148 - 3*m.b161 - 6*m.b162 - 3*m.b183 - 6*m.b184
                         - 3*m.b185 - 6*m.b186 - 3*m.b237 - 6*m.b238 - 3*m.b239 - 6*m.b240 - 3*m.b245 - 6*m.b246
                         - 3*m.b257 - 6*m.b258 - 3*m.b343 - 6*m.b344 - 3*m.b345 - 6*m.b346 - 3*m.b369 - 6*m.b370
                         - 3*m.b371 - 6*m.b372 - 3*m.b435 - 6*m.b436 - 3*m.b437 - 6*m.b438 - 3*m.b499 - 6*m.b500
                         - 3*m.b509 - 6*m.b510 - m.i651 - 2*m.i652 - m.i653 - 2*m.i654 - m.i667 - 2*m.i668 - m.i689
                         - 2*m.i690 - m.i691 - 2*m.i692 - m.i743 - 2*m.i744 - m.i745 - 2*m.i746 - m.i751 - 2*m.i752
                         - m.i763 - 2*m.i764 - m.i849 - 2*m.i850 - m.i851 - 2*m.i852 - m.i875 - 2*m.i876 - m.i877
                         - 2*m.i878 - m.i941 - 2*m.i942 - m.i943 - 2*m.i944 - m.i1005 - 2*m.i1006 - m.i1015 - 2*m.i1016
                         <= -28)

m.c46 = Constraint(expr= - 3*m.b61 - 6*m.b62 - 3*m.b103 - 6*m.b104 - 3*m.b143 - 6*m.b144 - 3*m.b181 - 6*m.b182
                         - 3*m.b217 - 6*m.b218 - 3*m.b251 - 6*m.b252 - 3*m.b283 - 6*m.b284 - 3*m.b313 - 6*m.b314
                         - 3*m.b341 - 6*m.b342 - 3*m.b367 - 6*m.b368 - 3*m.b391 - 6*m.b392 - 3*m.b413 - 6*m.b414
                         - 3*m.b433 - 6*m.b434 - 3*m.b451 - 6*m.b452 - 3*m.b467 - 6*m.b468 - 3*m.b483 - 6*m.b484
                         - 3*m.b485 - 6*m.b486 - 3*m.b487 - 6*m.b488 - 3*m.b489 - 6*m.b490 - 3*m.b491 - 6*m.b492
                         - 3*m.b493 - 6*m.b494 - 3*m.b495 - 6*m.b496 - m.i567 - 2*m.i568 - m.i609 - 2*m.i610 - m.i649
                         - 2*m.i650 - m.i687 - 2*m.i688 - m.i723 - 2*m.i724 - m.i757 - 2*m.i758 - m.i789 - 2*m.i790
                         - m.i819 - 2*m.i820 - m.i847 - 2*m.i848 - m.i873 - 2*m.i874 - m.i897 - 2*m.i898 - m.i919
                         - 2*m.i920 - m.i939 - 2*m.i940 - m.i957 - 2*m.i958 - m.i973 - 2*m.i974 - m.i989 - 2*m.i990
                         - m.i991 - 2*m.i992 - m.i993 - 2*m.i994 - m.i995 - 2*m.i996 - m.i997 - 2*m.i998 - m.i999
                         - 2*m.i1000 - m.i1001 - 2*m.i1002 <= -1)

m.c47 = Constraint(expr= - 3*m.b53 - 6*m.b54 - 3*m.b57 - 6*m.b58 - 3*m.b95 - 6*m.b96 - 3*m.b99 - 6*m.b100 - 3*m.b135
                         - 6*m.b136 - 3*m.b139 - 6*m.b140 - 3*m.b173 - 6*m.b174 - 3*m.b177 - 6*m.b178 - 3*m.b209
                         - 6*m.b210 - 3*m.b213 - 6*m.b214 - 3*m.b243 - 6*m.b244 - 3*m.b247 - 6*m.b248 - 3*m.b275
                         - 6*m.b276 - 3*m.b279 - 6*m.b280 - 3*m.b305 - 6*m.b306 - 3*m.b309 - 6*m.b310 - 3*m.b333
                         - 6*m.b334 - 3*m.b337 - 6*m.b338 - 3*m.b359 - 6*m.b360 - 3*m.b363 - 6*m.b364 - 3*m.b383
                         - 6*m.b384 - 3*m.b387 - 6*m.b388 - 3*m.b407 - 6*m.b408 - 3*m.b411 - 6*m.b412 - 3*m.b413
                         - 6*m.b414 - 3*m.b415 - 6*m.b416 - 3*m.b417 - 6*m.b418 - 3*m.b419 - 6*m.b420 - 3*m.b421
                         - 6*m.b422 - 3*m.b423 - 6*m.b424 - 3*m.b425 - 6*m.b426 - 3*m.b427 - 6*m.b428 - 3*m.b429
                         - 6*m.b430 - 3*m.b449 - 6*m.b450 - 3*m.b451 - 6*m.b452 - 3*m.b453 - 6*m.b454 - 3*m.b455
                         - 6*m.b456 - 3*m.b457 - 6*m.b458 - 3*m.b459 - 6*m.b460 - 3*m.b461 - 6*m.b462 - 3*m.b463
                         - 6*m.b464 - 3*m.b465 - 6*m.b466 - m.i559 - 2*m.i560 - m.i563 - 2*m.i564 - m.i601 - 2*m.i602
                         - m.i605 - 2*m.i606 - m.i641 - 2*m.i642 - m.i645 - 2*m.i646 - m.i679 - 2*m.i680 - m.i683
                         - 2*m.i684 - m.i715 - 2*m.i716 - m.i719 - 2*m.i720 - m.i749 - 2*m.i750 - m.i753 - 2*m.i754
                         - m.i781 - 2*m.i782 - m.i785 - 2*m.i786 - m.i811 - 2*m.i812 - m.i815 - 2*m.i816 - m.i839
                         - 2*m.i840 - m.i843 - 2*m.i844 - m.i865 - 2*m.i866 - m.i869 - 2*m.i870 - m.i889 - 2*m.i890
                         - m.i893 - 2*m.i894 - m.i913 - 2*m.i914 - m.i917 - 2*m.i918 - m.i919 - 2*m.i920 - m.i921
                         - 2*m.i922 - m.i923 - 2*m.i924 - m.i925 - 2*m.i926 - m.i927 - 2*m.i928 - m.i929 - 2*m.i930
                         - m.i931 - 2*m.i932 - m.i933 - 2*m.i934 - m.i935 - 2*m.i936 - m.i955 - 2*m.i956 - m.i957
                         - 2*m.i958 - m.i959 - 2*m.i960 - m.i961 - 2*m.i962 - m.i963 - 2*m.i964 - m.i965 - 2*m.i966
                         - m.i967 - 2*m.i968 - m.i969 - 2*m.i970 - m.i971 - 2*m.i972 <= -4)

m.c48 = Constraint(expr= - 3*m.b57 - 6*m.b58 - 3*m.b99 - 6*m.b100 - 3*m.b139 - 6*m.b140 - 3*m.b177 - 6*m.b178 - 3*m.b213
                         - 6*m.b214 - 3*m.b247 - 6*m.b248 - 3*m.b279 - 6*m.b280 - 3*m.b309 - 6*m.b310 - 3*m.b337
                         - 6*m.b338 - 3*m.b363 - 6*m.b364 - 3*m.b387 - 6*m.b388 - 3*m.b409 - 6*m.b410 - 3*m.b429
                         - 6*m.b430 - 3*m.b449 - 6*m.b450 - 3*m.b451 - 6*m.b452 - 3*m.b453 - 6*m.b454 - 3*m.b455
                         - 6*m.b456 - 3*m.b457 - 6*m.b458 - 3*m.b459 - 6*m.b460 - 3*m.b461 - 6*m.b462 - 3*m.b463
                         - 6*m.b464 - 3*m.b465 - 6*m.b466 - m.i563 - 2*m.i564 - m.i605 - 2*m.i606 - m.i645 - 2*m.i646
                         - m.i683 - 2*m.i684 - m.i719 - 2*m.i720 - m.i753 - 2*m.i754 - m.i785 - 2*m.i786 - m.i815
                         - 2*m.i816 - m.i843 - 2*m.i844 - m.i869 - 2*m.i870 - m.i893 - 2*m.i894 - m.i915 - 2*m.i916
                         - m.i935 - 2*m.i936 - m.i955 - 2*m.i956 - m.i957 - 2*m.i958 - m.i959 - 2*m.i960 - m.i961
                         - 2*m.i962 - m.i963 - 2*m.i964 - m.i965 - 2*m.i966 - m.i967 - 2*m.i968 - m.i969 - 2*m.i970
                         - m.i971 - 2*m.i972 <= -2)

m.c49 = Constraint(expr= - 3*m.b161 - 6*m.b162 - 3*m.b237 - 6*m.b238 - 3*m.b239 - 6*m.b240 - 3*m.b245 - 6*m.b246
                         - 3*m.b253 - 6*m.b254 - 3*m.b255 - 6*m.b256 - 3*m.b257 - 6*m.b258 - m.i667 - 2*m.i668 - m.i743
                         - 2*m.i744 - m.i745 - 2*m.i746 - m.i751 - 2*m.i752 - m.i759 - 2*m.i760 - m.i761 - 2*m.i762
                         - m.i763 - 2*m.i764 <= -2)

m.c50 = Constraint(expr= - 3*m.b63 - 6*m.b64 - 3*m.b105 - 6*m.b106 - 3*m.b145 - 6*m.b146 - 3*m.b183 - 6*m.b184
                         - 3*m.b219 - 6*m.b220 - 3*m.b253 - 6*m.b254 - 3*m.b285 - 6*m.b286 - 3*m.b315 - 6*m.b316
                         - 3*m.b343 - 6*m.b344 - 3*m.b369 - 6*m.b370 - 3*m.b393 - 6*m.b394 - 3*m.b415 - 6*m.b416
                         - 3*m.b435 - 6*m.b436 - 3*m.b453 - 6*m.b454 - 3*m.b469 - 6*m.b470 - 3*m.b483 - 6*m.b484
                         - 3*m.b497 - 6*m.b498 - 3*m.b499 - 6*m.b500 - 3*m.b501 - 6*m.b502 - 3*m.b503 - 6*m.b504
                         - 3*m.b505 - 6*m.b506 - 3*m.b507 - 6*m.b508 - m.i569 - 2*m.i570 - m.i611 - 2*m.i612 - m.i651
                         - 2*m.i652 - m.i689 - 2*m.i690 - m.i725 - 2*m.i726 - m.i759 - 2*m.i760 - m.i791 - 2*m.i792
                         - m.i821 - 2*m.i822 - m.i849 - 2*m.i850 - m.i875 - 2*m.i876 - m.i899 - 2*m.i900 - m.i921
                         - 2*m.i922 - m.i941 - 2*m.i942 - m.i959 - 2*m.i960 - m.i975 - 2*m.i976 - m.i989 - 2*m.i990
                         - m.i1003 - 2*m.i1004 - m.i1005 - 2*m.i1006 - m.i1007 - 2*m.i1008 - m.i1009 - 2*m.i1010
                         - m.i1011 - 2*m.i1012 - m.i1013 - 2*m.i1014 <= -9)

m.c51 = Constraint(expr= - 3*m.b119 - 6*m.b120 - 3*m.b129 - 6*m.b130 - 3*m.b131 - 6*m.b132 - 3*m.b145 - 6*m.b146
                         - 3*m.b147 - 6*m.b148 - 3*m.b149 - 6*m.b150 - m.i625 - 2*m.i626 - m.i635 - 2*m.i636 - m.i637
                         - 2*m.i638 - m.i651 - 2*m.i652 - m.i653 - 2*m.i654 - m.i655 - 2*m.i656 <= -16)

m.c52 = Constraint(expr= - 3*m.b67 - 6*m.b68 - 3*m.b109 - 6*m.b110 - 3*m.b119 - 6*m.b120 - 3*m.b161 - 6*m.b162
                         - 3*m.b167 - 6*m.b168 - 3*m.b169 - 6*m.b170 - 3*m.b183 - 6*m.b184 - 3*m.b185 - 6*m.b186
                         - 3*m.b187 - 6*m.b188 - 3*m.b223 - 6*m.b224 - 3*m.b245 - 6*m.b246 - 3*m.b289 - 6*m.b290
                         - 3*m.b319 - 6*m.b320 - 3*m.b335 - 6*m.b336 - 3*m.b361 - 6*m.b362 - 3*m.b397 - 6*m.b398
                         - 3*m.b419 - 6*m.b420 - 3*m.b435 - 6*m.b436 - 3*m.b437 - 6*m.b438 - 3*m.b439 - 6*m.b440
                         - 3*m.b457 - 6*m.b458 - 3*m.b473 - 6*m.b474 - 3*m.b487 - 6*m.b488 - 3*m.b519 - 6*m.b520
                         - 3*m.b521 - 6*m.b522 - 3*m.b523 - 6*m.b524 - 3*m.b525 - 6*m.b526 - m.i573 - 2*m.i574 - m.i615
                         - 2*m.i616 - m.i625 - 2*m.i626 - m.i667 - 2*m.i668 - m.i673 - 2*m.i674 - m.i675 - 2*m.i676
                         - m.i689 - 2*m.i690 - m.i691 - 2*m.i692 - m.i693 - 2*m.i694 - m.i729 - 2*m.i730 - m.i751
                         - 2*m.i752 - m.i795 - 2*m.i796 - m.i825 - 2*m.i826 - m.i841 - 2*m.i842 - m.i867 - 2*m.i868
                         - m.i903 - 2*m.i904 - m.i925 - 2*m.i926 - m.i941 - 2*m.i942 - m.i943 - 2*m.i944 - m.i945
                         - 2*m.i946 - m.i963 - 2*m.i964 - m.i979 - 2*m.i980 - m.i993 - 2*m.i994 - m.i1025 - 2*m.i1026
                         - m.i1027 - 2*m.i1028 - m.i1029 - 2*m.i1030 - m.i1031 - 2*m.i1032 <= -4)

m.c53 = Constraint(expr= - 3*m.b129 - 6*m.b130 - 3*m.b145 - 6*m.b146 - 3*m.b147 - 6*m.b148 - 3*m.b161 - 6*m.b162
                         - 3*m.b167 - 6*m.b168 - 3*m.b183 - 6*m.b184 - 3*m.b185 - 6*m.b186 - 3*m.b245 - 6*m.b246
                         - 3*m.b257 - 6*m.b258 - 3*m.b335 - 6*m.b336 - 3*m.b347 - 6*m.b348 - 3*m.b435 - 6*m.b436
                         - 3*m.b437 - 6*m.b438 - 3*m.b499 - 6*m.b500 - 3*m.b509 - 6*m.b510 - m.i635 - 2*m.i636 - m.i651
                         - 2*m.i652 - m.i653 - 2*m.i654 - m.i667 - 2*m.i668 - m.i673 - 2*m.i674 - m.i689 - 2*m.i690
                         - m.i691 - 2*m.i692 - m.i751 - 2*m.i752 - m.i763 - 2*m.i764 - m.i841 - 2*m.i842 - m.i853
                         - 2*m.i854 - m.i941 - 2*m.i942 - m.i943 - 2*m.i944 - m.i1005 - 2*m.i1006 - m.i1015 - 2*m.i1016
                         <= -13)

m.c54 = Constraint(expr= - 3*m.b131 - 6*m.b132 - 3*m.b169 - 6*m.b170 - 3*m.b361 - 6*m.b362 - 3*m.b373 - 6*m.b374
                         - m.i637 - 2*m.i638 - m.i675 - 2*m.i676 - m.i867 - 2*m.i868 - m.i879 - 2*m.i880 <= -6)

m.c55 = Constraint(expr= - 3*m.b59 - 6*m.b60 - 3*m.b101 - 6*m.b102 - 3*m.b141 - 6*m.b142 - 3*m.b179 - 6*m.b180
                         - 3*m.b215 - 6*m.b216 - 3*m.b249 - 6*m.b250 - 3*m.b281 - 6*m.b282 - 3*m.b311 - 6*m.b312
                         - 3*m.b339 - 6*m.b340 - 3*m.b365 - 6*m.b366 - 3*m.b389 - 6*m.b390 - 3*m.b411 - 6*m.b412
                         - 3*m.b431 - 6*m.b432 - 3*m.b449 - 6*m.b450 - 3*m.b467 - 6*m.b468 - 3*m.b469 - 6*m.b470
                         - 3*m.b471 - 6*m.b472 - 3*m.b473 - 6*m.b474 - 3*m.b475 - 6*m.b476 - 3*m.b477 - 6*m.b478
                         - 3*m.b479 - 6*m.b480 - 3*m.b481 - 6*m.b482 - m.i565 - 2*m.i566 - m.i607 - 2*m.i608 - m.i647
                         - 2*m.i648 - m.i685 - 2*m.i686 - m.i721 - 2*m.i722 - m.i755 - 2*m.i756 - m.i787 - 2*m.i788
                         - m.i817 - 2*m.i818 - m.i845 - 2*m.i846 - m.i871 - 2*m.i872 - m.i895 - 2*m.i896 - m.i917
                         - 2*m.i918 - m.i937 - 2*m.i938 - m.i955 - 2*m.i956 - m.i973 - 2*m.i974 - m.i975 - 2*m.i976
                         - m.i977 - 2*m.i978 - m.i979 - 2*m.i980 - m.i981 - 2*m.i982 - m.i983 - 2*m.i984 - m.i985
                         - 2*m.i986 - m.i987 - 2*m.i988 <= -2)

m.c56 = Constraint(expr= - 3*m.b35 - 6*m.b36 - 3*m.b123 - 6*m.b124 - 3*m.b125 - 6*m.b126 - 3*m.b141 - 6*m.b142
                         - 3*m.b151 - 6*m.b152 - 3*m.b153 - 6*m.b154 - 3*m.b157 - 6*m.b158 - m.i541 - 2*m.i542 - m.i629
                         - 2*m.i630 - m.i631 - 2*m.i632 - m.i647 - 2*m.i648 - m.i657 - 2*m.i658 - m.i659 - 2*m.i660
                         - m.i663 - 2*m.i664 <= -5)

m.c57 = Constraint(expr= - 3*m.b37 - 6*m.b38 - 3*m.b55 - 6*m.b56 - 3*m.b67 - 6*m.b68 - 3*m.b79 - 6*m.b80 - 3*m.b109
                         - 6*m.b110 - 3*m.b163 - 6*m.b164 - 3*m.b171 - 6*m.b172 - 3*m.b179 - 6*m.b180 - 3*m.b181
                         - 6*m.b182 - 3*m.b189 - 6*m.b190 - 3*m.b191 - 6*m.b192 - 3*m.b195 - 6*m.b196 - 3*m.b277
                         - 6*m.b278 - 3*m.b289 - 6*m.b290 - 3*m.b397 - 6*m.b398 - 3*m.b431 - 6*m.b432 - 3*m.b441
                         - 6*m.b442 - 3*m.b443 - 6*m.b444 - 3*m.b447 - 6*m.b448 - 3*m.b473 - 6*m.b474 - 3*m.b487
                         - 6*m.b488 - 3*m.b519 - 6*m.b520 - 3*m.b521 - 6*m.b522 - 3*m.b525 - 6*m.b526 - m.i543
                         - 2*m.i544 - m.i561 - 2*m.i562 - m.i573 - 2*m.i574 - m.i585 - 2*m.i586 - m.i615 - 2*m.i616
                         - m.i669 - 2*m.i670 - m.i677 - 2*m.i678 - m.i685 - 2*m.i686 - m.i687 - 2*m.i688 - m.i695
                         - 2*m.i696 - m.i697 - 2*m.i698 - m.i701 - 2*m.i702 - m.i783 - 2*m.i784 - m.i795 - 2*m.i796
                         - m.i903 - 2*m.i904 - m.i937 - 2*m.i938 - m.i947 - 2*m.i948 - m.i949 - 2*m.i950 - m.i953
                         - 2*m.i954 - m.i979 - 2*m.i980 - m.i993 - 2*m.i994 - m.i1025 - 2*m.i1026 - m.i1027 - 2*m.i1028
                         - m.i1031 - 2*m.i1032 <= -5)

m.c58 = Constraint(expr= - 3*m.b41 - 6*m.b42 - 3*m.b83 - 6*m.b84 - 3*m.b123 - 6*m.b124 - 3*m.b197 - 6*m.b198 - 3*m.b233
                         - 6*m.b234 - 3*m.b235 - 6*m.b236 - 3*m.b241 - 6*m.b242 - 3*m.b243 - 6*m.b244 - 3*m.b247
                         - 6*m.b248 - 3*m.b249 - 6*m.b250 - 3*m.b251 - 6*m.b252 - 3*m.b259 - 6*m.b260 - 3*m.b261
                         - 6*m.b262 - 3*m.b263 - 6*m.b264 - 3*m.b265 - 6*m.b266 - m.i547 - 2*m.i548 - m.i589 - 2*m.i590
                         - m.i629 - 2*m.i630 - m.i703 - 2*m.i704 - m.i739 - 2*m.i740 - m.i741 - 2*m.i742 - m.i747
                         - 2*m.i748 - m.i749 - 2*m.i750 - m.i753 - 2*m.i754 - m.i755 - 2*m.i756 - m.i757 - 2*m.i758
                         - m.i765 - 2*m.i766 - m.i767 - 2*m.i768 - m.i769 - 2*m.i770 - m.i771 - 2*m.i772 <= -4)

m.c59 = Constraint(expr= - 3*m.b43 - 6*m.b44 - 3*m.b59 - 6*m.b60 - 3*m.b69 - 6*m.b70 - 3*m.b85 - 6*m.b86 - 3*m.b101
                         - 6*m.b102 - 3*m.b111 - 6*m.b112 - 3*m.b125 - 6*m.b126 - 3*m.b141 - 6*m.b142 - 3*m.b151
                         - 6*m.b152 - 3*m.b163 - 6*m.b164 - 3*m.b179 - 6*m.b180 - 3*m.b189 - 6*m.b190 - 3*m.b199
                         - 6*m.b200 - 3*m.b215 - 6*m.b216 - 3*m.b225 - 6*m.b226 - 3*m.b233 - 6*m.b234 - 3*m.b249
                         - 6*m.b250 - 3*m.b259 - 6*m.b260 - 3*m.b267 - 6*m.b268 - 3*m.b269 - 6*m.b270 - 3*m.b271
                         - 6*m.b272 - 3*m.b273 - 6*m.b274 - 3*m.b275 - 6*m.b276 - 3*m.b277 - 6*m.b278 - 3*m.b279
                         - 6*m.b280 - 3*m.b283 - 6*m.b284 - 3*m.b285 - 6*m.b286 - 3*m.b287 - 6*m.b288 - 3*m.b289
                         - 6*m.b290 - 3*m.b293 - 6*m.b294 - 3*m.b295 - 6*m.b296 - 3*m.b297 - 6*m.b298 - 3*m.b311
                         - 6*m.b312 - 3*m.b321 - 6*m.b322 - 3*m.b339 - 6*m.b340 - 3*m.b349 - 6*m.b350 - 3*m.b365
                         - 6*m.b366 - 3*m.b375 - 6*m.b376 - 3*m.b389 - 6*m.b390 - 3*m.b399 - 6*m.b400 - 3*m.b411
                         - 6*m.b412 - 3*m.b421 - 6*m.b422 - 3*m.b431 - 6*m.b432 - 3*m.b441 - 6*m.b442 - 3*m.b449
                         - 6*m.b450 - 3*m.b459 - 6*m.b460 - 3*m.b467 - 6*m.b468 - 3*m.b469 - 6*m.b470 - 3*m.b471
                         - 6*m.b472 - 3*m.b473 - 6*m.b474 - 3*m.b477 - 6*m.b478 - 3*m.b479 - 6*m.b480 - 3*m.b481
                         - 6*m.b482 - 3*m.b489 - 6*m.b490 - 3*m.b501 - 6*m.b502 - 3*m.b511 - 6*m.b512 - 3*m.b519
                         - 6*m.b520 - 3*m.b527 - 6*m.b528 - 3*m.b529 - 6*m.b530 - 3*m.b531 - 6*m.b532 - m.i549
                         - 2*m.i550 - m.i565 - 2*m.i566 - m.i575 - 2*m.i576 - m.i591 - 2*m.i592 - m.i607 - 2*m.i608
                         - m.i617 - 2*m.i618 - m.i631 - 2*m.i632 - m.i647 - 2*m.i648 - m.i657 - 2*m.i658 - m.i669
                         - 2*m.i670 - m.i685 - 2*m.i686 - m.i695 - 2*m.i696 - m.i705 - 2*m.i706 - m.i721 - 2*m.i722
                         - m.i731 - 2*m.i732 - m.i739 - 2*m.i740 - m.i755 - 2*m.i756 - m.i765 - 2*m.i766 - m.i773
                         - 2*m.i774 - m.i775 - 2*m.i776 - m.i777 - 2*m.i778 - m.i779 - 2*m.i780 - m.i781 - 2*m.i782
                         - m.i783 - 2*m.i784 - m.i785 - 2*m.i786 - m.i789 - 2*m.i790 - m.i791 - 2*m.i792 - m.i793
                         - 2*m.i794 - m.i795 - 2*m.i796 - m.i799 - 2*m.i800 - m.i801 - 2*m.i802 - m.i803 - 2*m.i804
                         - m.i817 - 2*m.i818 - m.i827 - 2*m.i828 - m.i845 - 2*m.i846 - m.i855 - 2*m.i856 - m.i871
                         - 2*m.i872 - m.i881 - 2*m.i882 - m.i895 - 2*m.i896 - m.i905 - 2*m.i906 - m.i917 - 2*m.i918
                         - m.i927 - 2*m.i928 - m.i937 - 2*m.i938 - m.i947 - 2*m.i948 - m.i955 - 2*m.i956 - m.i965
                         - 2*m.i966 - m.i973 - 2*m.i974 - m.i975 - 2*m.i976 - m.i977 - 2*m.i978 - m.i979 - 2*m.i980
                         - m.i983 - 2*m.i984 - m.i985 - 2*m.i986 - m.i987 - 2*m.i988 - m.i995 - 2*m.i996 - m.i1007
                         - 2*m.i1008 - m.i1017 - 2*m.i1018 - m.i1025 - 2*m.i1026 - m.i1033 - 2*m.i1034 - m.i1035
                         - 2*m.i1036 - m.i1037 - 2*m.i1038 <= -8)

m.c60 = Constraint(expr= - 3*m.b47 - 6*m.b48 - 3*m.b49 - 6*m.b50 - 3*m.b89 - 6*m.b90 - 3*m.b91 - 6*m.b92 - 3*m.b203
                         - 6*m.b204 - 3*m.b205 - 6*m.b206 - 3*m.b269 - 6*m.b270 - 3*m.b271 - 6*m.b272 - 3*m.b299
                         - 6*m.b300 - 3*m.b301 - 6*m.b302 - 3*m.b331 - 6*m.b332 - 3*m.b333 - 6*m.b334 - 3*m.b337
                         - 6*m.b338 - 3*m.b339 - 6*m.b340 - 3*m.b341 - 6*m.b342 - 3*m.b349 - 6*m.b350 - 3*m.b351
                         - 6*m.b352 - 3*m.b353 - 6*m.b354 - 3*m.b355 - 6*m.b356 - 3*m.b357 - 6*m.b358 - 3*m.b359
                         - 6*m.b360 - 3*m.b363 - 6*m.b364 - 3*m.b365 - 6*m.b366 - 3*m.b367 - 6*m.b368 - 3*m.b375
                         - 6*m.b376 - 3*m.b377 - 6*m.b378 - 3*m.b379 - 6*m.b380 - 3*m.b381 - 6*m.b382 - m.i553
                         - 2*m.i554 - m.i555 - 2*m.i556 - m.i595 - 2*m.i596 - m.i597 - 2*m.i598 - m.i709 - 2*m.i710
                         - m.i711 - 2*m.i712 - m.i775 - 2*m.i776 - m.i777 - 2*m.i778 - m.i805 - 2*m.i806 - m.i807
                         - 2*m.i808 - m.i837 - 2*m.i838 - m.i839 - 2*m.i840 - m.i843 - 2*m.i844 - m.i845 - 2*m.i846
                         - m.i847 - 2*m.i848 - m.i855 - 2*m.i856 - m.i857 - 2*m.i858 - m.i859 - 2*m.i860 - m.i861
                         - 2*m.i862 - m.i863 - 2*m.i864 - m.i865 - 2*m.i866 - m.i869 - 2*m.i870 - m.i871 - 2*m.i872
                         - m.i873 - 2*m.i874 - m.i881 - 2*m.i882 - m.i883 - 2*m.i884 - m.i885 - 2*m.i886 - m.i887
                         - 2*m.i888 <= -4)

m.c61 = Constraint(expr= - 3*m.b63 - 6*m.b64 - 3*m.b65 - 6*m.b66 - 3*m.b105 - 6*m.b106 - 3*m.b107 - 6*m.b108 - 3*m.b219
                         - 6*m.b220 - 3*m.b221 - 6*m.b222 - 3*m.b285 - 6*m.b286 - 3*m.b287 - 6*m.b288 - 3*m.b315
                         - 6*m.b316 - 3*m.b317 - 6*m.b318 - 3*m.b393 - 6*m.b394 - 3*m.b395 - 6*m.b396 - 3*m.b415
                         - 6*m.b416 - 3*m.b417 - 6*m.b418 - 3*m.b453 - 6*m.b454 - 3*m.b455 - 6*m.b456 - 3*m.b469
                         - 6*m.b470 - 3*m.b471 - 6*m.b472 - 3*m.b483 - 6*m.b484 - 3*m.b485 - 6*m.b486 - 3*m.b501
                         - 6*m.b502 - 3*m.b503 - 6*m.b504 - 3*m.b505 - 6*m.b506 - 3*m.b507 - 6*m.b508 - 3*m.b511
                         - 6*m.b512 - 3*m.b513 - 6*m.b514 - 3*m.b515 - 6*m.b516 - 3*m.b517 - 6*m.b518 - m.i569
                         - 2*m.i570 - m.i571 - 2*m.i572 - m.i611 - 2*m.i612 - m.i613 - 2*m.i614 - m.i725 - 2*m.i726
                         - m.i727 - 2*m.i728 - m.i791 - 2*m.i792 - m.i793 - 2*m.i794 - m.i821 - 2*m.i822 - m.i823
                         - 2*m.i824 - m.i899 - 2*m.i900 - m.i901 - 2*m.i902 - m.i921 - 2*m.i922 - m.i923 - 2*m.i924
                         - m.i959 - 2*m.i960 - m.i961 - 2*m.i962 - m.i975 - 2*m.i976 - m.i977 - 2*m.i978 - m.i989
                         - 2*m.i990 - m.i991 - 2*m.i992 - m.i1007 - 2*m.i1008 - m.i1009 - 2*m.i1010 - m.i1011
                         - 2*m.i1012 - m.i1013 - 2*m.i1014 - m.i1017 - 2*m.i1018 - m.i1019 - 2*m.i1020 - m.i1021
                         - 2*m.i1022 - m.i1023 - 2*m.i1024 <= -4)

m.c62 = Constraint(expr= - 3*m.b121 - 6*m.b122 - 3*m.b127 - 6*m.b128 - 3*m.b135 - 6*m.b136 - 3*m.b139 - 6*m.b140
                         - 3*m.b155 - 6*m.b156 - 3*m.b159 - 6*m.b160 - 3*m.b165 - 6*m.b166 - 3*m.b173 - 6*m.b174
                         - 3*m.b177 - 6*m.b178 - 3*m.b193 - 6*m.b194 - 3*m.b211 - 6*m.b212 - 3*m.b223 - 6*m.b224
                         - 3*m.b307 - 6*m.b308 - 3*m.b319 - 6*m.b320 - 3*m.b407 - 6*m.b408 - 3*m.b419 - 6*m.b420
                         - 3*m.b429 - 6*m.b430 - 3*m.b445 - 6*m.b446 - 3*m.b457 - 6*m.b458 - 3*m.b523 - 6*m.b524
                         - m.i627 - 2*m.i628 - m.i633 - 2*m.i634 - m.i641 - 2*m.i642 - m.i645 - 2*m.i646 - m.i661
                         - 2*m.i662 - m.i665 - 2*m.i666 - m.i671 - 2*m.i672 - m.i679 - 2*m.i680 - m.i683 - 2*m.i684
                         - m.i699 - 2*m.i700 - m.i717 - 2*m.i718 - m.i729 - 2*m.i730 - m.i813 - 2*m.i814 - m.i825
                         - 2*m.i826 - m.i913 - 2*m.i914 - m.i925 - 2*m.i926 - m.i935 - 2*m.i936 - m.i951 - 2*m.i952
                         - m.i963 - 2*m.i964 - m.i1029 - 2*m.i1030 <= -2)

m.c63 = Constraint(expr= - 3*m.b39 - 6*m.b40 - 3*m.b45 - 6*m.b46 - 3*m.b53 - 6*m.b54 - 3*m.b57 - 6*m.b58 - 3*m.b73
                         - 6*m.b74 - 3*m.b81 - 6*m.b82 - 3*m.b87 - 6*m.b88 - 3*m.b95 - 6*m.b96 - 3*m.b99 - 6*m.b100
                         - 3*m.b115 - 6*m.b116 - 3*m.b197 - 6*m.b198 - 3*m.b199 - 6*m.b200 - 3*m.b203 - 6*m.b204
                         - 3*m.b205 - 6*m.b206 - 3*m.b207 - 6*m.b208 - 3*m.b215 - 6*m.b216 - 3*m.b217 - 6*m.b218
                         - 3*m.b219 - 6*m.b220 - 3*m.b221 - 6*m.b222 - 3*m.b225 - 6*m.b226 - 3*m.b227 - 6*m.b228
                         - 3*m.b231 - 6*m.b232 - 3*m.b235 - 6*m.b236 - 3*m.b243 - 6*m.b244 - 3*m.b247 - 6*m.b248
                         - 3*m.b263 - 6*m.b264 - 3*m.b267 - 6*m.b268 - 3*m.b275 - 6*m.b276 - 3*m.b279 - 6*m.b280
                         - 3*m.b295 - 6*m.b296 - 3*m.b299 - 6*m.b300 - 3*m.b301 - 6*m.b302 - 3*m.b303 - 6*m.b304
                         - 3*m.b311 - 6*m.b312 - 3*m.b313 - 6*m.b314 - 3*m.b315 - 6*m.b316 - 3*m.b317 - 6*m.b318
                         - 3*m.b321 - 6*m.b322 - 3*m.b323 - 6*m.b324 - 3*m.b327 - 6*m.b328 - 3*m.b333 - 6*m.b334
                         - 3*m.b337 - 6*m.b338 - 3*m.b353 - 6*m.b354 - 3*m.b359 - 6*m.b360 - 3*m.b363 - 6*m.b364
                         - 3*m.b379 - 6*m.b380 - 3*m.b383 - 6*m.b384 - 3*m.b387 - 6*m.b388 - 3*m.b403 - 6*m.b404
                         - 3*m.b411 - 6*m.b412 - 3*m.b413 - 6*m.b414 - 3*m.b415 - 6*m.b416 - 3*m.b417 - 6*m.b418
                         - 3*m.b421 - 6*m.b422 - 3*m.b423 - 6*m.b424 - 3*m.b427 - 6*m.b428 - 3*m.b449 - 6*m.b450
                         - 3*m.b451 - 6*m.b452 - 3*m.b453 - 6*m.b454 - 3*m.b455 - 6*m.b456 - 3*m.b459 - 6*m.b460
                         - 3*m.b461 - 6*m.b462 - 3*m.b465 - 6*m.b466 - 3*m.b479 - 6*m.b480 - 3*m.b493 - 6*m.b494
                         - 3*m.b505 - 6*m.b506 - 3*m.b515 - 6*m.b516 - 3*m.b529 - 6*m.b530 - 3*m.b533 - 6*m.b534
                         - 3*m.b537 - 6*m.b538 - m.i545 - 2*m.i546 - m.i551 - 2*m.i552 - m.i559 - 2*m.i560 - m.i563
                         - 2*m.i564 - m.i579 - 2*m.i580 - m.i587 - 2*m.i588 - m.i593 - 2*m.i594 - m.i601 - 2*m.i602
                         - m.i605 - 2*m.i606 - m.i621 - 2*m.i622 - m.i703 - 2*m.i704 - m.i705 - 2*m.i706 - m.i709
                         - 2*m.i710 - m.i711 - 2*m.i712 - m.i713 - 2*m.i714 - m.i721 - 2*m.i722 - m.i723 - 2*m.i724
                         - m.i725 - 2*m.i726 - m.i727 - 2*m.i728 - m.i731 - 2*m.i732 - m.i733 - 2*m.i734 - m.i737
                         - 2*m.i738 - m.i741 - 2*m.i742 - m.i749 - 2*m.i750 - m.i753 - 2*m.i754 - m.i769 - 2*m.i770
                         - m.i773 - 2*m.i774 - m.i781 - 2*m.i782 - m.i785 - 2*m.i786 - m.i801 - 2*m.i802 - m.i805
                         - 2*m.i806 - m.i807 - 2*m.i808 - m.i809 - 2*m.i810 - m.i817 - 2*m.i818 - m.i819 - 2*m.i820
                         - m.i821 - 2*m.i822 - m.i823 - 2*m.i824 - m.i827 - 2*m.i828 - m.i829 - 2*m.i830 - m.i833
                         - 2*m.i834 - m.i839 - 2*m.i840 - m.i843 - 2*m.i844 - m.i859 - 2*m.i860 - m.i865 - 2*m.i866
                         - m.i869 - 2*m.i870 - m.i885 - 2*m.i886 - m.i889 - 2*m.i890 - m.i893 - 2*m.i894 - m.i909
                         - 2*m.i910 - m.i917 - 2*m.i918 - m.i919 - 2*m.i920 - m.i921 - 2*m.i922 - m.i923 - 2*m.i924
                         - m.i927 - 2*m.i928 - m.i929 - 2*m.i930 - m.i933 - 2*m.i934 - m.i955 - 2*m.i956 - m.i957
                         - 2*m.i958 - m.i959 - 2*m.i960 - m.i961 - 2*m.i962 - m.i965 - 2*m.i966 - m.i967 - 2*m.i968
                         - m.i971 - 2*m.i972 - m.i985 - 2*m.i986 - m.i999 - 2*m.i1000 - m.i1011 - 2*m.i1012 - m.i1021
                         - 2*m.i1022 - m.i1035 - 2*m.i1036 - m.i1039 - 2*m.i1040 - m.i1043 - 2*m.i1044 <= -5)

m.c64 = Constraint(expr=   m.b33 + m.b34 <= 1)

m.c65 = Constraint(expr=   m.b35 + m.b36 <= 1)

m.c66 = Constraint(expr=   m.b37 + m.b38 <= 1)

m.c67 = Constraint(expr=   m.b39 + m.b40 <= 1)

m.c68 = Constraint(expr=   m.b41 + m.b42 <= 1)

m.c69 = Constraint(expr=   m.b43 + m.b44 <= 1)

m.c70 = Constraint(expr=   m.b45 + m.b46 <= 1)

m.c71 = Constraint(expr=   m.b47 + m.b48 <= 1)

m.c72 = Constraint(expr=   m.b49 + m.b50 <= 1)

m.c73 = Constraint(expr=   m.b51 + m.b52 <= 1)

m.c74 = Constraint(expr=   m.b53 + m.b54 <= 1)

m.c75 = Constraint(expr=   m.b55 + m.b56 <= 1)

m.c76 = Constraint(expr=   m.b57 + m.b58 <= 1)

m.c77 = Constraint(expr=   m.b59 + m.b60 <= 1)

m.c78 = Constraint(expr=   m.b61 + m.b62 <= 1)

m.c79 = Constraint(expr=   m.b63 + m.b64 <= 1)

m.c80 = Constraint(expr=   m.b65 + m.b66 <= 1)

m.c81 = Constraint(expr=   m.b67 + m.b68 <= 1)

m.c82 = Constraint(expr=   m.b69 + m.b70 <= 1)

m.c83 = Constraint(expr=   m.b71 + m.b72 <= 1)

m.c84 = Constraint(expr=   m.b73 + m.b74 <= 1)

m.c85 = Constraint(expr=   m.b75 + m.b76 <= 1)

m.c86 = Constraint(expr=   m.b77 + m.b78 <= 1)

m.c87 = Constraint(expr=   m.b79 + m.b80 <= 1)

m.c88 = Constraint(expr=   m.b81 + m.b82 <= 1)

m.c89 = Constraint(expr=   m.b83 + m.b84 <= 1)

m.c90 = Constraint(expr=   m.b85 + m.b86 <= 1)

m.c91 = Constraint(expr=   m.b87 + m.b88 <= 1)

m.c92 = Constraint(expr=   m.b89 + m.b90 <= 1)

m.c93 = Constraint(expr=   m.b91 + m.b92 <= 1)

m.c94 = Constraint(expr=   m.b93 + m.b94 <= 1)

m.c95 = Constraint(expr=   m.b95 + m.b96 <= 1)

m.c96 = Constraint(expr=   m.b97 + m.b98 <= 1)

m.c97 = Constraint(expr=   m.b99 + m.b100 <= 1)

m.c98 = Constraint(expr=   m.b101 + m.b102 <= 1)

m.c99 = Constraint(expr=   m.b103 + m.b104 <= 1)

m.c100 = Constraint(expr=   m.b105 + m.b106 <= 1)

m.c101 = Constraint(expr=   m.b107 + m.b108 <= 1)

m.c102 = Constraint(expr=   m.b109 + m.b110 <= 1)

m.c103 = Constraint(expr=   m.b111 + m.b112 <= 1)

m.c104 = Constraint(expr=   m.b113 + m.b114 <= 1)

m.c105 = Constraint(expr=   m.b115 + m.b116 <= 1)

m.c106 = Constraint(expr=   m.b117 + m.b118 <= 1)

m.c107 = Constraint(expr=   m.b119 + m.b120 <= 1)

m.c108 = Constraint(expr=   m.b121 + m.b122 <= 1)

m.c109 = Constraint(expr=   m.b123 + m.b124 <= 1)

m.c110 = Constraint(expr=   m.b125 + m.b126 <= 1)

m.c111 = Constraint(expr=   m.b127 + m.b128 <= 1)

m.c112 = Constraint(expr=   m.b129 + m.b130 <= 1)

m.c113 = Constraint(expr=   m.b131 + m.b132 <= 1)

m.c114 = Constraint(expr=   m.b133 + m.b134 <= 1)

m.c115 = Constraint(expr=   m.b135 + m.b136 <= 1)

m.c116 = Constraint(expr=   m.b137 + m.b138 <= 1)

m.c117 = Constraint(expr=   m.b139 + m.b140 <= 1)

m.c118 = Constraint(expr=   m.b141 + m.b142 <= 1)

m.c119 = Constraint(expr=   m.b143 + m.b144 <= 1)

m.c120 = Constraint(expr=   m.b145 + m.b146 <= 1)

m.c121 = Constraint(expr=   m.b147 + m.b148 <= 1)

m.c122 = Constraint(expr=   m.b149 + m.b150 <= 1)

m.c123 = Constraint(expr=   m.b151 + m.b152 <= 1)

m.c124 = Constraint(expr=   m.b153 + m.b154 <= 1)

m.c125 = Constraint(expr=   m.b155 + m.b156 <= 1)

m.c126 = Constraint(expr=   m.b157 + m.b158 <= 1)

m.c127 = Constraint(expr=   m.b159 + m.b160 <= 1)

m.c128 = Constraint(expr=   m.b161 + m.b162 <= 1)

m.c129 = Constraint(expr=   m.b163 + m.b164 <= 1)

m.c130 = Constraint(expr=   m.b165 + m.b166 <= 1)

m.c131 = Constraint(expr=   m.b167 + m.b168 <= 1)

m.c132 = Constraint(expr=   m.b169 + m.b170 <= 1)

m.c133 = Constraint(expr=   m.b171 + m.b172 <= 1)

m.c134 = Constraint(expr=   m.b173 + m.b174 <= 1)

m.c135 = Constraint(expr=   m.b175 + m.b176 <= 1)

m.c136 = Constraint(expr=   m.b177 + m.b178 <= 1)

m.c137 = Constraint(expr=   m.b179 + m.b180 <= 1)

m.c138 = Constraint(expr=   m.b181 + m.b182 <= 1)

m.c139 = Constraint(expr=   m.b183 + m.b184 <= 1)

m.c140 = Constraint(expr=   m.b185 + m.b186 <= 1)

m.c141 = Constraint(expr=   m.b187 + m.b188 <= 1)

m.c142 = Constraint(expr=   m.b189 + m.b190 <= 1)

m.c143 = Constraint(expr=   m.b191 + m.b192 <= 1)

m.c144 = Constraint(expr=   m.b193 + m.b194 <= 1)

m.c145 = Constraint(expr=   m.b195 + m.b196 <= 1)

m.c146 = Constraint(expr=   m.b197 + m.b198 <= 1)

m.c147 = Constraint(expr=   m.b199 + m.b200 <= 1)

m.c148 = Constraint(expr=   m.b201 + m.b202 <= 1)

m.c149 = Constraint(expr=   m.b203 + m.b204 <= 1)

m.c150 = Constraint(expr=   m.b205 + m.b206 <= 1)

m.c151 = Constraint(expr=   m.b207 + m.b208 <= 1)

m.c152 = Constraint(expr=   m.b209 + m.b210 <= 1)

m.c153 = Constraint(expr=   m.b211 + m.b212 <= 1)

m.c154 = Constraint(expr=   m.b213 + m.b214 <= 1)

m.c155 = Constraint(expr=   m.b215 + m.b216 <= 1)

m.c156 = Constraint(expr=   m.b217 + m.b218 <= 1)

m.c157 = Constraint(expr=   m.b219 + m.b220 <= 1)

m.c158 = Constraint(expr=   m.b221 + m.b222 <= 1)

m.c159 = Constraint(expr=   m.b223 + m.b224 <= 1)

m.c160 = Constraint(expr=   m.b225 + m.b226 <= 1)

m.c161 = Constraint(expr=   m.b227 + m.b228 <= 1)

m.c162 = Constraint(expr=   m.b229 + m.b230 <= 1)

m.c163 = Constraint(expr=   m.b231 + m.b232 <= 1)

m.c164 = Constraint(expr=   m.b233 + m.b234 <= 1)

m.c165 = Constraint(expr=   m.b235 + m.b236 <= 1)

m.c166 = Constraint(expr=   m.b237 + m.b238 <= 1)

m.c167 = Constraint(expr=   m.b239 + m.b240 <= 1)

m.c168 = Constraint(expr=   m.b241 + m.b242 <= 1)

m.c169 = Constraint(expr=   m.b243 + m.b244 <= 1)

m.c170 = Constraint(expr=   m.b245 + m.b246 <= 1)

m.c171 = Constraint(expr=   m.b247 + m.b248 <= 1)

m.c172 = Constraint(expr=   m.b249 + m.b250 <= 1)

m.c173 = Constraint(expr=   m.b251 + m.b252 <= 1)

m.c174 = Constraint(expr=   m.b253 + m.b254 <= 1)

m.c175 = Constraint(expr=   m.b255 + m.b256 <= 1)

m.c176 = Constraint(expr=   m.b257 + m.b258 <= 1)

m.c177 = Constraint(expr=   m.b259 + m.b260 <= 1)

m.c178 = Constraint(expr=   m.b261 + m.b262 <= 1)

m.c179 = Constraint(expr=   m.b263 + m.b264 <= 1)

m.c180 = Constraint(expr=   m.b265 + m.b266 <= 1)

m.c181 = Constraint(expr=   m.b267 + m.b268 <= 1)

m.c182 = Constraint(expr=   m.b269 + m.b270 <= 1)

m.c183 = Constraint(expr=   m.b271 + m.b272 <= 1)

m.c184 = Constraint(expr=   m.b273 + m.b274 <= 1)

m.c185 = Constraint(expr=   m.b275 + m.b276 <= 1)

m.c186 = Constraint(expr=   m.b277 + m.b278 <= 1)

m.c187 = Constraint(expr=   m.b279 + m.b280 <= 1)

m.c188 = Constraint(expr=   m.b281 + m.b282 <= 1)

m.c189 = Constraint(expr=   m.b283 + m.b284 <= 1)

m.c190 = Constraint(expr=   m.b285 + m.b286 <= 1)

m.c191 = Constraint(expr=   m.b287 + m.b288 <= 1)

m.c192 = Constraint(expr=   m.b289 + m.b290 <= 1)

m.c193 = Constraint(expr=   m.b291 + m.b292 <= 1)

m.c194 = Constraint(expr=   m.b293 + m.b294 <= 1)

m.c195 = Constraint(expr=   m.b295 + m.b296 <= 1)

m.c196 = Constraint(expr=   m.b297 + m.b298 <= 1)

m.c197 = Constraint(expr=   m.b299 + m.b300 <= 1)

m.c198 = Constraint(expr=   m.b301 + m.b302 <= 1)

m.c199 = Constraint(expr=   m.b303 + m.b304 <= 1)

m.c200 = Constraint(expr=   m.b305 + m.b306 <= 1)

m.c201 = Constraint(expr=   m.b307 + m.b308 <= 1)

m.c202 = Constraint(expr=   m.b309 + m.b310 <= 1)

m.c203 = Constraint(expr=   m.b311 + m.b312 <= 1)

m.c204 = Constraint(expr=   m.b313 + m.b314 <= 1)

m.c205 = Constraint(expr=   m.b315 + m.b316 <= 1)

m.c206 = Constraint(expr=   m.b317 + m.b318 <= 1)

m.c207 = Constraint(expr=   m.b319 + m.b320 <= 1)

m.c208 = Constraint(expr=   m.b321 + m.b322 <= 1)

m.c209 = Constraint(expr=   m.b323 + m.b324 <= 1)

m.c210 = Constraint(expr=   m.b325 + m.b326 <= 1)

m.c211 = Constraint(expr=   m.b327 + m.b328 <= 1)

m.c212 = Constraint(expr=   m.b329 + m.b330 <= 1)

m.c213 = Constraint(expr=   m.b331 + m.b332 <= 1)

m.c214 = Constraint(expr=   m.b333 + m.b334 <= 1)

m.c215 = Constraint(expr=   m.b335 + m.b336 <= 1)

m.c216 = Constraint(expr=   m.b337 + m.b338 <= 1)

m.c217 = Constraint(expr=   m.b339 + m.b340 <= 1)

m.c218 = Constraint(expr=   m.b341 + m.b342 <= 1)

m.c219 = Constraint(expr=   m.b343 + m.b344 <= 1)

m.c220 = Constraint(expr=   m.b345 + m.b346 <= 1)

m.c221 = Constraint(expr=   m.b347 + m.b348 <= 1)

m.c222 = Constraint(expr=   m.b349 + m.b350 <= 1)

m.c223 = Constraint(expr=   m.b351 + m.b352 <= 1)

m.c224 = Constraint(expr=   m.b353 + m.b354 <= 1)

m.c225 = Constraint(expr=   m.b355 + m.b356 <= 1)

m.c226 = Constraint(expr=   m.b357 + m.b358 <= 1)

m.c227 = Constraint(expr=   m.b359 + m.b360 <= 1)

m.c228 = Constraint(expr=   m.b361 + m.b362 <= 1)

m.c229 = Constraint(expr=   m.b363 + m.b364 <= 1)

m.c230 = Constraint(expr=   m.b365 + m.b366 <= 1)

m.c231 = Constraint(expr=   m.b367 + m.b368 <= 1)

m.c232 = Constraint(expr=   m.b369 + m.b370 <= 1)

m.c233 = Constraint(expr=   m.b371 + m.b372 <= 1)

m.c234 = Constraint(expr=   m.b373 + m.b374 <= 1)

m.c235 = Constraint(expr=   m.b375 + m.b376 <= 1)

m.c236 = Constraint(expr=   m.b377 + m.b378 <= 1)

m.c237 = Constraint(expr=   m.b379 + m.b380 <= 1)

m.c238 = Constraint(expr=   m.b381 + m.b382 <= 1)

m.c239 = Constraint(expr=   m.b383 + m.b384 <= 1)

m.c240 = Constraint(expr=   m.b385 + m.b386 <= 1)

m.c241 = Constraint(expr=   m.b387 + m.b388 <= 1)

m.c242 = Constraint(expr=   m.b389 + m.b390 <= 1)

m.c243 = Constraint(expr=   m.b391 + m.b392 <= 1)

m.c244 = Constraint(expr=   m.b393 + m.b394 <= 1)

m.c245 = Constraint(expr=   m.b395 + m.b396 <= 1)

m.c246 = Constraint(expr=   m.b397 + m.b398 <= 1)

m.c247 = Constraint(expr=   m.b399 + m.b400 <= 1)

m.c248 = Constraint(expr=   m.b401 + m.b402 <= 1)

m.c249 = Constraint(expr=   m.b403 + m.b404 <= 1)

m.c250 = Constraint(expr=   m.b405 + m.b406 <= 1)

m.c251 = Constraint(expr=   m.b407 + m.b408 <= 1)

m.c252 = Constraint(expr=   m.b409 + m.b410 <= 1)

m.c253 = Constraint(expr=   m.b411 + m.b412 <= 1)

m.c254 = Constraint(expr=   m.b413 + m.b414 <= 1)

m.c255 = Constraint(expr=   m.b415 + m.b416 <= 1)

m.c256 = Constraint(expr=   m.b417 + m.b418 <= 1)

m.c257 = Constraint(expr=   m.b419 + m.b420 <= 1)

m.c258 = Constraint(expr=   m.b421 + m.b422 <= 1)

m.c259 = Constraint(expr=   m.b423 + m.b424 <= 1)

m.c260 = Constraint(expr=   m.b425 + m.b426 <= 1)

m.c261 = Constraint(expr=   m.b427 + m.b428 <= 1)

m.c262 = Constraint(expr=   m.b429 + m.b430 <= 1)

m.c263 = Constraint(expr=   m.b431 + m.b432 <= 1)

m.c264 = Constraint(expr=   m.b433 + m.b434 <= 1)

m.c265 = Constraint(expr=   m.b435 + m.b436 <= 1)

m.c266 = Constraint(expr=   m.b437 + m.b438 <= 1)

m.c267 = Constraint(expr=   m.b439 + m.b440 <= 1)

m.c268 = Constraint(expr=   m.b441 + m.b442 <= 1)

m.c269 = Constraint(expr=   m.b443 + m.b444 <= 1)

m.c270 = Constraint(expr=   m.b445 + m.b446 <= 1)

m.c271 = Constraint(expr=   m.b447 + m.b448 <= 1)

m.c272 = Constraint(expr=   m.b449 + m.b450 <= 1)

m.c273 = Constraint(expr=   m.b451 + m.b452 <= 1)

m.c274 = Constraint(expr=   m.b453 + m.b454 <= 1)

m.c275 = Constraint(expr=   m.b455 + m.b456 <= 1)

m.c276 = Constraint(expr=   m.b457 + m.b458 <= 1)

m.c277 = Constraint(expr=   m.b459 + m.b460 <= 1)

m.c278 = Constraint(expr=   m.b461 + m.b462 <= 1)

m.c279 = Constraint(expr=   m.b463 + m.b464 <= 1)

m.c280 = Constraint(expr=   m.b465 + m.b466 <= 1)

m.c281 = Constraint(expr=   m.b467 + m.b468 <= 1)

m.c282 = Constraint(expr=   m.b469 + m.b470 <= 1)

m.c283 = Constraint(expr=   m.b471 + m.b472 <= 1)

m.c284 = Constraint(expr=   m.b473 + m.b474 <= 1)

m.c285 = Constraint(expr=   m.b475 + m.b476 <= 1)

m.c286 = Constraint(expr=   m.b477 + m.b478 <= 1)

m.c287 = Constraint(expr=   m.b479 + m.b480 <= 1)

m.c288 = Constraint(expr=   m.b481 + m.b482 <= 1)

m.c289 = Constraint(expr=   m.b483 + m.b484 <= 1)

m.c290 = Constraint(expr=   m.b485 + m.b486 <= 1)

m.c291 = Constraint(expr=   m.b487 + m.b488 <= 1)

m.c292 = Constraint(expr=   m.b489 + m.b490 <= 1)

m.c293 = Constraint(expr=   m.b491 + m.b492 <= 1)

m.c294 = Constraint(expr=   m.b493 + m.b494 <= 1)

m.c295 = Constraint(expr=   m.b495 + m.b496 <= 1)

m.c296 = Constraint(expr=   m.b497 + m.b498 <= 1)

m.c297 = Constraint(expr=   m.b499 + m.b500 <= 1)

m.c298 = Constraint(expr=   m.b501 + m.b502 <= 1)

m.c299 = Constraint(expr=   m.b503 + m.b504 <= 1)

m.c300 = Constraint(expr=   m.b505 + m.b506 <= 1)

m.c301 = Constraint(expr=   m.b507 + m.b508 <= 1)

m.c302 = Constraint(expr=   m.b509 + m.b510 <= 1)

m.c303 = Constraint(expr=   m.b511 + m.b512 <= 1)

m.c304 = Constraint(expr=   m.b513 + m.b514 <= 1)

m.c305 = Constraint(expr=   m.b515 + m.b516 <= 1)

m.c306 = Constraint(expr=   m.b517 + m.b518 <= 1)

m.c307 = Constraint(expr=   m.b519 + m.b520 <= 1)

m.c308 = Constraint(expr=   m.b521 + m.b522 <= 1)

m.c309 = Constraint(expr=   m.b523 + m.b524 <= 1)

m.c310 = Constraint(expr=   m.b525 + m.b526 <= 1)

m.c311 = Constraint(expr=   m.b527 + m.b528 <= 1)

m.c312 = Constraint(expr=   m.b529 + m.b530 <= 1)

m.c313 = Constraint(expr=   m.b531 + m.b532 <= 1)

m.c314 = Constraint(expr=   m.b533 + m.b534 <= 1)

m.c315 = Constraint(expr=   m.b535 + m.b536 <= 1)

m.c316 = Constraint(expr=   m.b537 + m.b538 <= 1)

m.c317 = Constraint(expr= - 9*m.b33 + m.i539 <= 0)

m.c318 = Constraint(expr= - 9*m.b34 + m.i540 <= 0)

m.c319 = Constraint(expr= - 9*m.b35 + m.i541 <= 0)

m.c320 = Constraint(expr= - 9*m.b36 + m.i542 <= 0)

m.c321 = Constraint(expr= - 9*m.b37 + m.i543 <= 0)

m.c322 = Constraint(expr= - 9*m.b38 + m.i544 <= 0)

m.c323 = Constraint(expr= - 9*m.b39 + m.i545 <= 0)

m.c324 = Constraint(expr= - 9*m.b40 + m.i546 <= 0)

m.c325 = Constraint(expr= - 9*m.b41 + m.i547 <= 0)

m.c326 = Constraint(expr= - 9*m.b42 + m.i548 <= 0)

m.c327 = Constraint(expr= - 9*m.b43 + m.i549 <= 0)

m.c328 = Constraint(expr= - 9*m.b44 + m.i550 <= 0)

m.c329 = Constraint(expr= - 9*m.b45 + m.i551 <= 0)

m.c330 = Constraint(expr= - 9*m.b46 + m.i552 <= 0)

m.c331 = Constraint(expr= - 9*m.b47 + m.i553 <= 0)

m.c332 = Constraint(expr= - 9*m.b48 + m.i554 <= 0)

m.c333 = Constraint(expr= - 9*m.b49 + m.i555 <= 0)

m.c334 = Constraint(expr= - 9*m.b50 + m.i556 <= 0)

m.c335 = Constraint(expr= - 9*m.b51 + m.i557 <= 0)

m.c336 = Constraint(expr= - 9*m.b52 + m.i558 <= 0)

m.c337 = Constraint(expr= - 9*m.b53 + m.i559 <= 0)

m.c338 = Constraint(expr= - 9*m.b54 + m.i560 <= 0)

m.c339 = Constraint(expr= - 9*m.b55 + m.i561 <= 0)

m.c340 = Constraint(expr= - 9*m.b56 + m.i562 <= 0)

m.c341 = Constraint(expr= - 9*m.b57 + m.i563 <= 0)

m.c342 = Constraint(expr= - 9*m.b58 + m.i564 <= 0)

m.c343 = Constraint(expr= - 9*m.b59 + m.i565 <= 0)

m.c344 = Constraint(expr= - 9*m.b60 + m.i566 <= 0)

m.c345 = Constraint(expr= - 9*m.b61 + m.i567 <= 0)

m.c346 = Constraint(expr= - 9*m.b62 + m.i568 <= 0)

m.c347 = Constraint(expr= - 9*m.b63 + m.i569 <= 0)

m.c348 = Constraint(expr= - 9*m.b64 + m.i570 <= 0)

m.c349 = Constraint(expr= - 9*m.b65 + m.i571 <= 0)

m.c350 = Constraint(expr= - 9*m.b66 + m.i572 <= 0)

m.c351 = Constraint(expr= - 9*m.b67 + m.i573 <= 0)

m.c352 = Constraint(expr= - 9*m.b68 + m.i574 <= 0)

m.c353 = Constraint(expr= - 9*m.b69 + m.i575 <= 0)

m.c354 = Constraint(expr= - 9*m.b70 + m.i576 <= 0)

m.c355 = Constraint(expr= - 9*m.b71 + m.i577 <= 0)

m.c356 = Constraint(expr= - 9*m.b72 + m.i578 <= 0)

m.c357 = Constraint(expr= - 9*m.b73 + m.i579 <= 0)

m.c358 = Constraint(expr= - 9*m.b74 + m.i580 <= 0)

m.c359 = Constraint(expr= - 9*m.b75 + m.i581 <= 0)

m.c360 = Constraint(expr= - 9*m.b76 + m.i582 <= 0)

m.c361 = Constraint(expr= - 9*m.b77 + m.i583 <= 0)

m.c362 = Constraint(expr= - 9*m.b78 + m.i584 <= 0)

m.c363 = Constraint(expr= - 9*m.b79 + m.i585 <= 0)

m.c364 = Constraint(expr= - 9*m.b80 + m.i586 <= 0)

m.c365 = Constraint(expr= - 9*m.b81 + m.i587 <= 0)

m.c366 = Constraint(expr= - 9*m.b82 + m.i588 <= 0)

m.c367 = Constraint(expr= - 9*m.b83 + m.i589 <= 0)

m.c368 = Constraint(expr= - 9*m.b84 + m.i590 <= 0)

m.c369 = Constraint(expr= - 9*m.b85 + m.i591 <= 0)

m.c370 = Constraint(expr= - 9*m.b86 + m.i592 <= 0)

m.c371 = Constraint(expr= - 9*m.b87 + m.i593 <= 0)

m.c372 = Constraint(expr= - 9*m.b88 + m.i594 <= 0)

m.c373 = Constraint(expr= - 9*m.b89 + m.i595 <= 0)

m.c374 = Constraint(expr= - 9*m.b90 + m.i596 <= 0)

m.c375 = Constraint(expr= - 9*m.b91 + m.i597 <= 0)

m.c376 = Constraint(expr= - 9*m.b92 + m.i598 <= 0)

m.c377 = Constraint(expr= - 9*m.b93 + m.i599 <= 0)

m.c378 = Constraint(expr= - 9*m.b94 + m.i600 <= 0)

m.c379 = Constraint(expr= - 9*m.b95 + m.i601 <= 0)

m.c380 = Constraint(expr= - 9*m.b96 + m.i602 <= 0)

m.c381 = Constraint(expr= - 9*m.b97 + m.i603 <= 0)

m.c382 = Constraint(expr= - 9*m.b98 + m.i604 <= 0)

m.c383 = Constraint(expr= - 9*m.b99 + m.i605 <= 0)

m.c384 = Constraint(expr= - 9*m.b100 + m.i606 <= 0)

m.c385 = Constraint(expr= - 9*m.b101 + m.i607 <= 0)

m.c386 = Constraint(expr= - 9*m.b102 + m.i608 <= 0)

m.c387 = Constraint(expr= - 9*m.b103 + m.i609 <= 0)

m.c388 = Constraint(expr= - 9*m.b104 + m.i610 <= 0)

m.c389 = Constraint(expr= - 9*m.b105 + m.i611 <= 0)

m.c390 = Constraint(expr= - 9*m.b106 + m.i612 <= 0)

m.c391 = Constraint(expr= - 9*m.b107 + m.i613 <= 0)

m.c392 = Constraint(expr= - 9*m.b108 + m.i614 <= 0)

m.c393 = Constraint(expr= - 9*m.b109 + m.i615 <= 0)

m.c394 = Constraint(expr= - 9*m.b110 + m.i616 <= 0)

m.c395 = Constraint(expr= - 9*m.b111 + m.i617 <= 0)

m.c396 = Constraint(expr= - 9*m.b112 + m.i618 <= 0)

m.c397 = Constraint(expr= - 9*m.b113 + m.i619 <= 0)

m.c398 = Constraint(expr= - 9*m.b114 + m.i620 <= 0)

m.c399 = Constraint(expr= - 9*m.b115 + m.i621 <= 0)

m.c400 = Constraint(expr= - 9*m.b116 + m.i622 <= 0)

m.c401 = Constraint(expr= - 9*m.b117 + m.i623 <= 0)

m.c402 = Constraint(expr= - 9*m.b118 + m.i624 <= 0)

m.c403 = Constraint(expr= - 9*m.b119 + m.i625 <= 0)

m.c404 = Constraint(expr= - 9*m.b120 + m.i626 <= 0)

m.c405 = Constraint(expr= - 9*m.b121 + m.i627 <= 0)

m.c406 = Constraint(expr= - 9*m.b122 + m.i628 <= 0)

m.c407 = Constraint(expr= - 9*m.b123 + m.i629 <= 0)

m.c408 = Constraint(expr= - 9*m.b124 + m.i630 <= 0)

m.c409 = Constraint(expr= - 9*m.b125 + m.i631 <= 0)

m.c410 = Constraint(expr= - 9*m.b126 + m.i632 <= 0)

m.c411 = Constraint(expr= - 9*m.b127 + m.i633 <= 0)

m.c412 = Constraint(expr= - 9*m.b128 + m.i634 <= 0)

m.c413 = Constraint(expr= - 9*m.b129 + m.i635 <= 0)

m.c414 = Constraint(expr= - 9*m.b130 + m.i636 <= 0)

m.c415 = Constraint(expr= - 9*m.b131 + m.i637 <= 0)

m.c416 = Constraint(expr= - 9*m.b132 + m.i638 <= 0)

m.c417 = Constraint(expr= - 9*m.b133 + m.i639 <= 0)

m.c418 = Constraint(expr= - 9*m.b134 + m.i640 <= 0)

m.c419 = Constraint(expr= - 9*m.b135 + m.i641 <= 0)

m.c420 = Constraint(expr= - 9*m.b136 + m.i642 <= 0)

m.c421 = Constraint(expr= - 9*m.b137 + m.i643 <= 0)

m.c422 = Constraint(expr= - 9*m.b138 + m.i644 <= 0)

m.c423 = Constraint(expr= - 9*m.b139 + m.i645 <= 0)

m.c424 = Constraint(expr= - 9*m.b140 + m.i646 <= 0)

m.c425 = Constraint(expr= - 9*m.b141 + m.i647 <= 0)

m.c426 = Constraint(expr= - 9*m.b142 + m.i648 <= 0)

m.c427 = Constraint(expr= - 9*m.b143 + m.i649 <= 0)

m.c428 = Constraint(expr= - 9*m.b144 + m.i650 <= 0)

m.c429 = Constraint(expr= - 9*m.b145 + m.i651 <= 0)

m.c430 = Constraint(expr= - 9*m.b146 + m.i652 <= 0)

m.c431 = Constraint(expr= - 9*m.b147 + m.i653 <= 0)

m.c432 = Constraint(expr= - 9*m.b148 + m.i654 <= 0)

m.c433 = Constraint(expr= - 9*m.b149 + m.i655 <= 0)

m.c434 = Constraint(expr= - 9*m.b150 + m.i656 <= 0)

m.c435 = Constraint(expr= - 9*m.b151 + m.i657 <= 0)

m.c436 = Constraint(expr= - 9*m.b152 + m.i658 <= 0)

m.c437 = Constraint(expr= - 9*m.b153 + m.i659 <= 0)

m.c438 = Constraint(expr= - 9*m.b154 + m.i660 <= 0)

m.c439 = Constraint(expr= - 9*m.b155 + m.i661 <= 0)

m.c440 = Constraint(expr= - 9*m.b156 + m.i662 <= 0)

m.c441 = Constraint(expr= - 9*m.b157 + m.i663 <= 0)

m.c442 = Constraint(expr= - 9*m.b158 + m.i664 <= 0)

m.c443 = Constraint(expr= - 9*m.b159 + m.i665 <= 0)

m.c444 = Constraint(expr= - 9*m.b160 + m.i666 <= 0)

m.c445 = Constraint(expr= - 9*m.b161 + m.i667 <= 0)

m.c446 = Constraint(expr= - 9*m.b162 + m.i668 <= 0)

m.c447 = Constraint(expr= - 9*m.b163 + m.i669 <= 0)

m.c448 = Constraint(expr= - 9*m.b164 + m.i670 <= 0)

m.c449 = Constraint(expr= - 9*m.b165 + m.i671 <= 0)

m.c450 = Constraint(expr= - 9*m.b166 + m.i672 <= 0)

m.c451 = Constraint(expr= - 9*m.b167 + m.i673 <= 0)

m.c452 = Constraint(expr= - 9*m.b168 + m.i674 <= 0)

m.c453 = Constraint(expr= - 9*m.b169 + m.i675 <= 0)

m.c454 = Constraint(expr= - 9*m.b170 + m.i676 <= 0)

m.c455 = Constraint(expr= - 9*m.b171 + m.i677 <= 0)

m.c456 = Constraint(expr= - 9*m.b172 + m.i678 <= 0)

m.c457 = Constraint(expr= - 9*m.b173 + m.i679 <= 0)

m.c458 = Constraint(expr= - 9*m.b174 + m.i680 <= 0)

m.c459 = Constraint(expr= - 9*m.b175 + m.i681 <= 0)

m.c460 = Constraint(expr= - 9*m.b176 + m.i682 <= 0)

m.c461 = Constraint(expr= - 9*m.b177 + m.i683 <= 0)

m.c462 = Constraint(expr= - 9*m.b178 + m.i684 <= 0)

m.c463 = Constraint(expr= - 9*m.b179 + m.i685 <= 0)

m.c464 = Constraint(expr= - 9*m.b180 + m.i686 <= 0)

m.c465 = Constraint(expr= - 9*m.b181 + m.i687 <= 0)

m.c466 = Constraint(expr= - 9*m.b182 + m.i688 <= 0)

m.c467 = Constraint(expr= - 9*m.b183 + m.i689 <= 0)

m.c468 = Constraint(expr= - 9*m.b184 + m.i690 <= 0)

m.c469 = Constraint(expr= - 9*m.b185 + m.i691 <= 0)

m.c470 = Constraint(expr= - 9*m.b186 + m.i692 <= 0)

m.c471 = Constraint(expr= - 9*m.b187 + m.i693 <= 0)

m.c472 = Constraint(expr= - 9*m.b188 + m.i694 <= 0)

m.c473 = Constraint(expr= - 9*m.b189 + m.i695 <= 0)

m.c474 = Constraint(expr= - 9*m.b190 + m.i696 <= 0)

m.c475 = Constraint(expr= - 9*m.b191 + m.i697 <= 0)

m.c476 = Constraint(expr= - 9*m.b192 + m.i698 <= 0)

m.c477 = Constraint(expr= - 9*m.b193 + m.i699 <= 0)

m.c478 = Constraint(expr= - 9*m.b194 + m.i700 <= 0)

m.c479 = Constraint(expr= - 9*m.b195 + m.i701 <= 0)

m.c480 = Constraint(expr= - 9*m.b196 + m.i702 <= 0)

m.c481 = Constraint(expr= - 9*m.b197 + m.i703 <= 0)

m.c482 = Constraint(expr= - 9*m.b198 + m.i704 <= 0)

m.c483 = Constraint(expr= - 9*m.b199 + m.i705 <= 0)

m.c484 = Constraint(expr= - 9*m.b200 + m.i706 <= 0)

m.c485 = Constraint(expr= - 9*m.b201 + m.i707 <= 0)

m.c486 = Constraint(expr= - 9*m.b202 + m.i708 <= 0)

m.c487 = Constraint(expr= - 9*m.b203 + m.i709 <= 0)

m.c488 = Constraint(expr= - 9*m.b204 + m.i710 <= 0)

m.c489 = Constraint(expr= - 9*m.b205 + m.i711 <= 0)

m.c490 = Constraint(expr= - 9*m.b206 + m.i712 <= 0)

m.c491 = Constraint(expr= - 9*m.b207 + m.i713 <= 0)

m.c492 = Constraint(expr= - 9*m.b208 + m.i714 <= 0)

m.c493 = Constraint(expr= - 9*m.b209 + m.i715 <= 0)

m.c494 = Constraint(expr= - 9*m.b210 + m.i716 <= 0)

m.c495 = Constraint(expr= - 9*m.b211 + m.i717 <= 0)

m.c496 = Constraint(expr= - 9*m.b212 + m.i718 <= 0)

m.c497 = Constraint(expr= - 9*m.b213 + m.i719 <= 0)

m.c498 = Constraint(expr= - 9*m.b214 + m.i720 <= 0)

m.c499 = Constraint(expr= - 9*m.b215 + m.i721 <= 0)

m.c500 = Constraint(expr= - 9*m.b216 + m.i722 <= 0)

m.c501 = Constraint(expr= - 9*m.b217 + m.i723 <= 0)

m.c502 = Constraint(expr= - 9*m.b218 + m.i724 <= 0)

m.c503 = Constraint(expr= - 9*m.b219 + m.i725 <= 0)

m.c504 = Constraint(expr= - 9*m.b220 + m.i726 <= 0)

m.c505 = Constraint(expr= - 9*m.b221 + m.i727 <= 0)

m.c506 = Constraint(expr= - 9*m.b222 + m.i728 <= 0)

m.c507 = Constraint(expr= - 9*m.b223 + m.i729 <= 0)

m.c508 = Constraint(expr= - 9*m.b224 + m.i730 <= 0)

m.c509 = Constraint(expr= - 9*m.b225 + m.i731 <= 0)

m.c510 = Constraint(expr= - 9*m.b226 + m.i732 <= 0)

m.c511 = Constraint(expr= - 9*m.b227 + m.i733 <= 0)

m.c512 = Constraint(expr= - 9*m.b228 + m.i734 <= 0)

m.c513 = Constraint(expr= - 9*m.b229 + m.i735 <= 0)

m.c514 = Constraint(expr= - 9*m.b230 + m.i736 <= 0)

m.c515 = Constraint(expr= - 9*m.b231 + m.i737 <= 0)

m.c516 = Constraint(expr= - 9*m.b232 + m.i738 <= 0)

m.c517 = Constraint(expr= - 9*m.b233 + m.i739 <= 0)

m.c518 = Constraint(expr= - 9*m.b234 + m.i740 <= 0)

m.c519 = Constraint(expr= - 9*m.b235 + m.i741 <= 0)

m.c520 = Constraint(expr= - 9*m.b236 + m.i742 <= 0)

m.c521 = Constraint(expr= - 9*m.b237 + m.i743 <= 0)

m.c522 = Constraint(expr= - 9*m.b238 + m.i744 <= 0)

m.c523 = Constraint(expr= - 9*m.b239 + m.i745 <= 0)

m.c524 = Constraint(expr= - 9*m.b240 + m.i746 <= 0)

m.c525 = Constraint(expr= - 9*m.b241 + m.i747 <= 0)

m.c526 = Constraint(expr= - 9*m.b242 + m.i748 <= 0)

m.c527 = Constraint(expr= - 9*m.b243 + m.i749 <= 0)

m.c528 = Constraint(expr= - 9*m.b244 + m.i750 <= 0)

m.c529 = Constraint(expr= - 9*m.b245 + m.i751 <= 0)

m.c530 = Constraint(expr= - 9*m.b246 + m.i752 <= 0)

m.c531 = Constraint(expr= - 9*m.b247 + m.i753 <= 0)

m.c532 = Constraint(expr= - 9*m.b248 + m.i754 <= 0)

m.c533 = Constraint(expr= - 9*m.b249 + m.i755 <= 0)

m.c534 = Constraint(expr= - 9*m.b250 + m.i756 <= 0)

m.c535 = Constraint(expr= - 9*m.b251 + m.i757 <= 0)

m.c536 = Constraint(expr= - 9*m.b252 + m.i758 <= 0)

m.c537 = Constraint(expr= - 9*m.b253 + m.i759 <= 0)

m.c538 = Constraint(expr= - 9*m.b254 + m.i760 <= 0)

m.c539 = Constraint(expr= - 9*m.b255 + m.i761 <= 0)

m.c540 = Constraint(expr= - 9*m.b256 + m.i762 <= 0)

m.c541 = Constraint(expr= - 9*m.b257 + m.i763 <= 0)

m.c542 = Constraint(expr= - 9*m.b258 + m.i764 <= 0)

m.c543 = Constraint(expr= - 9*m.b259 + m.i765 <= 0)

m.c544 = Constraint(expr= - 9*m.b260 + m.i766 <= 0)

m.c545 = Constraint(expr= - 9*m.b261 + m.i767 <= 0)

m.c546 = Constraint(expr= - 9*m.b262 + m.i768 <= 0)

m.c547 = Constraint(expr= - 9*m.b263 + m.i769 <= 0)

m.c548 = Constraint(expr= - 9*m.b264 + m.i770 <= 0)

m.c549 = Constraint(expr= - 9*m.b265 + m.i771 <= 0)

m.c550 = Constraint(expr= - 9*m.b266 + m.i772 <= 0)

m.c551 = Constraint(expr= - 9*m.b267 + m.i773 <= 0)

m.c552 = Constraint(expr= - 9*m.b268 + m.i774 <= 0)

m.c553 = Constraint(expr= - 9*m.b269 + m.i775 <= 0)

m.c554 = Constraint(expr= - 9*m.b270 + m.i776 <= 0)

m.c555 = Constraint(expr= - 9*m.b271 + m.i777 <= 0)

m.c556 = Constraint(expr= - 9*m.b272 + m.i778 <= 0)

m.c557 = Constraint(expr= - 9*m.b273 + m.i779 <= 0)

m.c558 = Constraint(expr= - 9*m.b274 + m.i780 <= 0)

m.c559 = Constraint(expr= - 9*m.b275 + m.i781 <= 0)

m.c560 = Constraint(expr= - 9*m.b276 + m.i782 <= 0)

m.c561 = Constraint(expr= - 9*m.b277 + m.i783 <= 0)

m.c562 = Constraint(expr= - 9*m.b278 + m.i784 <= 0)

m.c563 = Constraint(expr= - 9*m.b279 + m.i785 <= 0)

m.c564 = Constraint(expr= - 9*m.b280 + m.i786 <= 0)

m.c565 = Constraint(expr= - 9*m.b281 + m.i787 <= 0)

m.c566 = Constraint(expr= - 9*m.b282 + m.i788 <= 0)

m.c567 = Constraint(expr= - 9*m.b283 + m.i789 <= 0)

m.c568 = Constraint(expr= - 9*m.b284 + m.i790 <= 0)

m.c569 = Constraint(expr= - 9*m.b285 + m.i791 <= 0)

m.c570 = Constraint(expr= - 9*m.b286 + m.i792 <= 0)

m.c571 = Constraint(expr= - 9*m.b287 + m.i793 <= 0)

m.c572 = Constraint(expr= - 9*m.b288 + m.i794 <= 0)

m.c573 = Constraint(expr= - 9*m.b289 + m.i795 <= 0)

m.c574 = Constraint(expr= - 9*m.b290 + m.i796 <= 0)

m.c575 = Constraint(expr= - 9*m.b291 + m.i797 <= 0)

m.c576 = Constraint(expr= - 9*m.b292 + m.i798 <= 0)

m.c577 = Constraint(expr= - 9*m.b293 + m.i799 <= 0)

m.c578 = Constraint(expr= - 9*m.b294 + m.i800 <= 0)

m.c579 = Constraint(expr= - 9*m.b295 + m.i801 <= 0)

m.c580 = Constraint(expr= - 9*m.b296 + m.i802 <= 0)

m.c581 = Constraint(expr= - 9*m.b297 + m.i803 <= 0)

m.c582 = Constraint(expr= - 9*m.b298 + m.i804 <= 0)

m.c583 = Constraint(expr= - 9*m.b299 + m.i805 <= 0)

m.c584 = Constraint(expr= - 9*m.b300 + m.i806 <= 0)

m.c585 = Constraint(expr= - 9*m.b301 + m.i807 <= 0)

m.c586 = Constraint(expr= - 9*m.b302 + m.i808 <= 0)

m.c587 = Constraint(expr= - 9*m.b303 + m.i809 <= 0)

m.c588 = Constraint(expr= - 9*m.b304 + m.i810 <= 0)

m.c589 = Constraint(expr= - 9*m.b305 + m.i811 <= 0)

m.c590 = Constraint(expr= - 9*m.b306 + m.i812 <= 0)

m.c591 = Constraint(expr= - 9*m.b307 + m.i813 <= 0)

m.c592 = Constraint(expr= - 9*m.b308 + m.i814 <= 0)

m.c593 = Constraint(expr= - 9*m.b309 + m.i815 <= 0)

m.c594 = Constraint(expr= - 9*m.b310 + m.i816 <= 0)

m.c595 = Constraint(expr= - 9*m.b311 + m.i817 <= 0)

m.c596 = Constraint(expr= - 9*m.b312 + m.i818 <= 0)

m.c597 = Constraint(expr= - 9*m.b313 + m.i819 <= 0)

m.c598 = Constraint(expr= - 9*m.b314 + m.i820 <= 0)

m.c599 = Constraint(expr= - 9*m.b315 + m.i821 <= 0)

m.c600 = Constraint(expr= - 9*m.b316 + m.i822 <= 0)

m.c601 = Constraint(expr= - 9*m.b317 + m.i823 <= 0)

m.c602 = Constraint(expr= - 9*m.b318 + m.i824 <= 0)

m.c603 = Constraint(expr= - 9*m.b319 + m.i825 <= 0)

m.c604 = Constraint(expr= - 9*m.b320 + m.i826 <= 0)

m.c605 = Constraint(expr= - 9*m.b321 + m.i827 <= 0)

m.c606 = Constraint(expr= - 9*m.b322 + m.i828 <= 0)

m.c607 = Constraint(expr= - 9*m.b323 + m.i829 <= 0)

m.c608 = Constraint(expr= - 9*m.b324 + m.i830 <= 0)

m.c609 = Constraint(expr= - 9*m.b325 + m.i831 <= 0)

m.c610 = Constraint(expr= - 9*m.b326 + m.i832 <= 0)

m.c611 = Constraint(expr= - 9*m.b327 + m.i833 <= 0)

m.c612 = Constraint(expr= - 9*m.b328 + m.i834 <= 0)

m.c613 = Constraint(expr= - 9*m.b329 + m.i835 <= 0)

m.c614 = Constraint(expr= - 9*m.b330 + m.i836 <= 0)

m.c615 = Constraint(expr= - 9*m.b331 + m.i837 <= 0)

m.c616 = Constraint(expr= - 9*m.b332 + m.i838 <= 0)

m.c617 = Constraint(expr= - 9*m.b333 + m.i839 <= 0)

m.c618 = Constraint(expr= - 9*m.b334 + m.i840 <= 0)

m.c619 = Constraint(expr= - 9*m.b335 + m.i841 <= 0)

m.c620 = Constraint(expr= - 9*m.b336 + m.i842 <= 0)

m.c621 = Constraint(expr= - 9*m.b337 + m.i843 <= 0)

m.c622 = Constraint(expr= - 9*m.b338 + m.i844 <= 0)

m.c623 = Constraint(expr= - 9*m.b339 + m.i845 <= 0)

m.c624 = Constraint(expr= - 9*m.b340 + m.i846 <= 0)

m.c625 = Constraint(expr= - 9*m.b341 + m.i847 <= 0)

m.c626 = Constraint(expr= - 9*m.b342 + m.i848 <= 0)

m.c627 = Constraint(expr= - 9*m.b343 + m.i849 <= 0)

m.c628 = Constraint(expr= - 9*m.b344 + m.i850 <= 0)

m.c629 = Constraint(expr= - 9*m.b345 + m.i851 <= 0)

m.c630 = Constraint(expr= - 9*m.b346 + m.i852 <= 0)

m.c631 = Constraint(expr= - 9*m.b347 + m.i853 <= 0)

m.c632 = Constraint(expr= - 9*m.b348 + m.i854 <= 0)

m.c633 = Constraint(expr= - 9*m.b349 + m.i855 <= 0)

m.c634 = Constraint(expr= - 9*m.b350 + m.i856 <= 0)

m.c635 = Constraint(expr= - 9*m.b351 + m.i857 <= 0)

m.c636 = Constraint(expr= - 9*m.b352 + m.i858 <= 0)

m.c637 = Constraint(expr= - 9*m.b353 + m.i859 <= 0)

m.c638 = Constraint(expr= - 9*m.b354 + m.i860 <= 0)

m.c639 = Constraint(expr= - 9*m.b355 + m.i861 <= 0)

m.c640 = Constraint(expr= - 9*m.b356 + m.i862 <= 0)

m.c641 = Constraint(expr= - 9*m.b357 + m.i863 <= 0)

m.c642 = Constraint(expr= - 9*m.b358 + m.i864 <= 0)

m.c643 = Constraint(expr= - 9*m.b359 + m.i865 <= 0)

m.c644 = Constraint(expr= - 9*m.b360 + m.i866 <= 0)

m.c645 = Constraint(expr= - 9*m.b361 + m.i867 <= 0)

m.c646 = Constraint(expr= - 9*m.b362 + m.i868 <= 0)

m.c647 = Constraint(expr= - 9*m.b363 + m.i869 <= 0)

m.c648 = Constraint(expr= - 9*m.b364 + m.i870 <= 0)

m.c649 = Constraint(expr= - 9*m.b365 + m.i871 <= 0)

m.c650 = Constraint(expr= - 9*m.b366 + m.i872 <= 0)

m.c651 = Constraint(expr= - 9*m.b367 + m.i873 <= 0)

m.c652 = Constraint(expr= - 9*m.b368 + m.i874 <= 0)

m.c653 = Constraint(expr= - 9*m.b369 + m.i875 <= 0)

m.c654 = Constraint(expr= - 9*m.b370 + m.i876 <= 0)

m.c655 = Constraint(expr= - 9*m.b371 + m.i877 <= 0)

m.c656 = Constraint(expr= - 9*m.b372 + m.i878 <= 0)

m.c657 = Constraint(expr= - 9*m.b373 + m.i879 <= 0)

m.c658 = Constraint(expr= - 9*m.b374 + m.i880 <= 0)

m.c659 = Constraint(expr= - 9*m.b375 + m.i881 <= 0)

m.c660 = Constraint(expr= - 9*m.b376 + m.i882 <= 0)

m.c661 = Constraint(expr= - 9*m.b377 + m.i883 <= 0)

m.c662 = Constraint(expr= - 9*m.b378 + m.i884 <= 0)

m.c663 = Constraint(expr= - 9*m.b379 + m.i885 <= 0)

m.c664 = Constraint(expr= - 9*m.b380 + m.i886 <= 0)

m.c665 = Constraint(expr= - 9*m.b381 + m.i887 <= 0)

m.c666 = Constraint(expr= - 9*m.b382 + m.i888 <= 0)

m.c667 = Constraint(expr= - 9*m.b383 + m.i889 <= 0)

m.c668 = Constraint(expr= - 9*m.b384 + m.i890 <= 0)

m.c669 = Constraint(expr= - 9*m.b385 + m.i891 <= 0)

m.c670 = Constraint(expr= - 9*m.b386 + m.i892 <= 0)

m.c671 = Constraint(expr= - 9*m.b387 + m.i893 <= 0)

m.c672 = Constraint(expr= - 9*m.b388 + m.i894 <= 0)

m.c673 = Constraint(expr= - 9*m.b389 + m.i895 <= 0)

m.c674 = Constraint(expr= - 9*m.b390 + m.i896 <= 0)

m.c675 = Constraint(expr= - 9*m.b391 + m.i897 <= 0)

m.c676 = Constraint(expr= - 9*m.b392 + m.i898 <= 0)

m.c677 = Constraint(expr= - 9*m.b393 + m.i899 <= 0)

m.c678 = Constraint(expr= - 9*m.b394 + m.i900 <= 0)

m.c679 = Constraint(expr= - 9*m.b395 + m.i901 <= 0)

m.c680 = Constraint(expr= - 9*m.b396 + m.i902 <= 0)

m.c681 = Constraint(expr= - 9*m.b397 + m.i903 <= 0)

m.c682 = Constraint(expr= - 9*m.b398 + m.i904 <= 0)

m.c683 = Constraint(expr= - 9*m.b399 + m.i905 <= 0)

m.c684 = Constraint(expr= - 9*m.b400 + m.i906 <= 0)

m.c685 = Constraint(expr= - 9*m.b401 + m.i907 <= 0)

m.c686 = Constraint(expr= - 9*m.b402 + m.i908 <= 0)

m.c687 = Constraint(expr= - 9*m.b403 + m.i909 <= 0)

m.c688 = Constraint(expr= - 9*m.b404 + m.i910 <= 0)

m.c689 = Constraint(expr= - 9*m.b405 + m.i911 <= 0)

m.c690 = Constraint(expr= - 9*m.b406 + m.i912 <= 0)

m.c691 = Constraint(expr= - 9*m.b407 + m.i913 <= 0)

m.c692 = Constraint(expr= - 9*m.b408 + m.i914 <= 0)

m.c693 = Constraint(expr= - 9*m.b409 + m.i915 <= 0)

m.c694 = Constraint(expr= - 9*m.b410 + m.i916 <= 0)

m.c695 = Constraint(expr= - 9*m.b411 + m.i917 <= 0)

m.c696 = Constraint(expr= - 9*m.b412 + m.i918 <= 0)

m.c697 = Constraint(expr= - 9*m.b413 + m.i919 <= 0)

m.c698 = Constraint(expr= - 9*m.b414 + m.i920 <= 0)

m.c699 = Constraint(expr= - 9*m.b415 + m.i921 <= 0)

m.c700 = Constraint(expr= - 9*m.b416 + m.i922 <= 0)

m.c701 = Constraint(expr= - 9*m.b417 + m.i923 <= 0)

m.c702 = Constraint(expr= - 9*m.b418 + m.i924 <= 0)

m.c703 = Constraint(expr= - 9*m.b419 + m.i925 <= 0)

m.c704 = Constraint(expr= - 9*m.b420 + m.i926 <= 0)

m.c705 = Constraint(expr= - 9*m.b421 + m.i927 <= 0)

m.c706 = Constraint(expr= - 9*m.b422 + m.i928 <= 0)

m.c707 = Constraint(expr= - 9*m.b423 + m.i929 <= 0)

m.c708 = Constraint(expr= - 9*m.b424 + m.i930 <= 0)

m.c709 = Constraint(expr= - 9*m.b425 + m.i931 <= 0)

m.c710 = Constraint(expr= - 9*m.b426 + m.i932 <= 0)

m.c711 = Constraint(expr= - 9*m.b427 + m.i933 <= 0)

m.c712 = Constraint(expr= - 9*m.b428 + m.i934 <= 0)

m.c713 = Constraint(expr= - 9*m.b429 + m.i935 <= 0)

m.c714 = Constraint(expr= - 9*m.b430 + m.i936 <= 0)

m.c715 = Constraint(expr= - 9*m.b431 + m.i937 <= 0)

m.c716 = Constraint(expr= - 9*m.b432 + m.i938 <= 0)

m.c717 = Constraint(expr= - 9*m.b433 + m.i939 <= 0)

m.c718 = Constraint(expr= - 9*m.b434 + m.i940 <= 0)

m.c719 = Constraint(expr= - 9*m.b435 + m.i941 <= 0)

m.c720 = Constraint(expr= - 9*m.b436 + m.i942 <= 0)

m.c721 = Constraint(expr= - 9*m.b437 + m.i943 <= 0)

m.c722 = Constraint(expr= - 9*m.b438 + m.i944 <= 0)

m.c723 = Constraint(expr= - 9*m.b439 + m.i945 <= 0)

m.c724 = Constraint(expr= - 9*m.b440 + m.i946 <= 0)

m.c725 = Constraint(expr= - 9*m.b441 + m.i947 <= 0)

m.c726 = Constraint(expr= - 9*m.b442 + m.i948 <= 0)

m.c727 = Constraint(expr= - 9*m.b443 + m.i949 <= 0)

m.c728 = Constraint(expr= - 9*m.b444 + m.i950 <= 0)

m.c729 = Constraint(expr= - 9*m.b445 + m.i951 <= 0)

m.c730 = Constraint(expr= - 9*m.b446 + m.i952 <= 0)

m.c731 = Constraint(expr= - 9*m.b447 + m.i953 <= 0)

m.c732 = Constraint(expr= - 9*m.b448 + m.i954 <= 0)

m.c733 = Constraint(expr= - 9*m.b449 + m.i955 <= 0)

m.c734 = Constraint(expr= - 9*m.b450 + m.i956 <= 0)

m.c735 = Constraint(expr= - 9*m.b451 + m.i957 <= 0)

m.c736 = Constraint(expr= - 9*m.b452 + m.i958 <= 0)

m.c737 = Constraint(expr= - 9*m.b453 + m.i959 <= 0)

m.c738 = Constraint(expr= - 9*m.b454 + m.i960 <= 0)

m.c739 = Constraint(expr= - 9*m.b455 + m.i961 <= 0)

m.c740 = Constraint(expr= - 9*m.b456 + m.i962 <= 0)

m.c741 = Constraint(expr= - 9*m.b457 + m.i963 <= 0)

m.c742 = Constraint(expr= - 9*m.b458 + m.i964 <= 0)

m.c743 = Constraint(expr= - 9*m.b459 + m.i965 <= 0)

m.c744 = Constraint(expr= - 9*m.b460 + m.i966 <= 0)

m.c745 = Constraint(expr= - 9*m.b461 + m.i967 <= 0)

m.c746 = Constraint(expr= - 9*m.b462 + m.i968 <= 0)

m.c747 = Constraint(expr= - 9*m.b463 + m.i969 <= 0)

m.c748 = Constraint(expr= - 9*m.b464 + m.i970 <= 0)

m.c749 = Constraint(expr= - 9*m.b465 + m.i971 <= 0)

m.c750 = Constraint(expr= - 9*m.b466 + m.i972 <= 0)

m.c751 = Constraint(expr= - 9*m.b467 + m.i973 <= 0)

m.c752 = Constraint(expr= - 9*m.b468 + m.i974 <= 0)

m.c753 = Constraint(expr= - 9*m.b469 + m.i975 <= 0)

m.c754 = Constraint(expr= - 9*m.b470 + m.i976 <= 0)

m.c755 = Constraint(expr= - 9*m.b471 + m.i977 <= 0)

m.c756 = Constraint(expr= - 9*m.b472 + m.i978 <= 0)

m.c757 = Constraint(expr= - 9*m.b473 + m.i979 <= 0)

m.c758 = Constraint(expr= - 9*m.b474 + m.i980 <= 0)

m.c759 = Constraint(expr= - 9*m.b475 + m.i981 <= 0)

m.c760 = Constraint(expr= - 9*m.b476 + m.i982 <= 0)

m.c761 = Constraint(expr= - 9*m.b477 + m.i983 <= 0)

m.c762 = Constraint(expr= - 9*m.b478 + m.i984 <= 0)

m.c763 = Constraint(expr= - 9*m.b479 + m.i985 <= 0)

m.c764 = Constraint(expr= - 9*m.b480 + m.i986 <= 0)

m.c765 = Constraint(expr= - 9*m.b481 + m.i987 <= 0)

m.c766 = Constraint(expr= - 9*m.b482 + m.i988 <= 0)

m.c767 = Constraint(expr= - 9*m.b483 + m.i989 <= 0)

m.c768 = Constraint(expr= - 9*m.b484 + m.i990 <= 0)

m.c769 = Constraint(expr= - 9*m.b485 + m.i991 <= 0)

m.c770 = Constraint(expr= - 9*m.b486 + m.i992 <= 0)

m.c771 = Constraint(expr= - 9*m.b487 + m.i993 <= 0)

m.c772 = Constraint(expr= - 9*m.b488 + m.i994 <= 0)

m.c773 = Constraint(expr= - 9*m.b489 + m.i995 <= 0)

m.c774 = Constraint(expr= - 9*m.b490 + m.i996 <= 0)

m.c775 = Constraint(expr= - 9*m.b491 + m.i997 <= 0)

m.c776 = Constraint(expr= - 9*m.b492 + m.i998 <= 0)

m.c777 = Constraint(expr= - 9*m.b493 + m.i999 <= 0)

m.c778 = Constraint(expr= - 9*m.b494 + m.i1000 <= 0)

m.c779 = Constraint(expr= - 9*m.b495 + m.i1001 <= 0)

m.c780 = Constraint(expr= - 9*m.b496 + m.i1002 <= 0)

m.c781 = Constraint(expr= - 9*m.b497 + m.i1003 <= 0)

m.c782 = Constraint(expr= - 9*m.b498 + m.i1004 <= 0)

m.c783 = Constraint(expr= - 9*m.b499 + m.i1005 <= 0)

m.c784 = Constraint(expr= - 9*m.b500 + m.i1006 <= 0)

m.c785 = Constraint(expr= - 9*m.b501 + m.i1007 <= 0)

m.c786 = Constraint(expr= - 9*m.b502 + m.i1008 <= 0)

m.c787 = Constraint(expr= - 9*m.b503 + m.i1009 <= 0)

m.c788 = Constraint(expr= - 9*m.b504 + m.i1010 <= 0)

m.c789 = Constraint(expr= - 9*m.b505 + m.i1011 <= 0)

m.c790 = Constraint(expr= - 9*m.b506 + m.i1012 <= 0)

m.c791 = Constraint(expr= - 9*m.b507 + m.i1013 <= 0)

m.c792 = Constraint(expr= - 9*m.b508 + m.i1014 <= 0)

m.c793 = Constraint(expr= - 9*m.b509 + m.i1015 <= 0)

m.c794 = Constraint(expr= - 9*m.b510 + m.i1016 <= 0)

m.c795 = Constraint(expr= - 9*m.b511 + m.i1017 <= 0)

m.c796 = Constraint(expr= - 9*m.b512 + m.i1018 <= 0)

m.c797 = Constraint(expr= - 9*m.b513 + m.i1019 <= 0)

m.c798 = Constraint(expr= - 9*m.b514 + m.i1020 <= 0)

m.c799 = Constraint(expr= - 9*m.b515 + m.i1021 <= 0)

m.c800 = Constraint(expr= - 9*m.b516 + m.i1022 <= 0)

m.c801 = Constraint(expr= - 9*m.b517 + m.i1023 <= 0)

m.c802 = Constraint(expr= - 9*m.b518 + m.i1024 <= 0)

m.c803 = Constraint(expr= - 9*m.b519 + m.i1025 <= 0)

m.c804 = Constraint(expr= - 9*m.b520 + m.i1026 <= 0)

m.c805 = Constraint(expr= - 9*m.b521 + m.i1027 <= 0)

m.c806 = Constraint(expr= - 9*m.b522 + m.i1028 <= 0)

m.c807 = Constraint(expr= - 9*m.b523 + m.i1029 <= 0)

m.c808 = Constraint(expr= - 9*m.b524 + m.i1030 <= 0)

m.c809 = Constraint(expr= - 9*m.b525 + m.i1031 <= 0)

m.c810 = Constraint(expr= - 9*m.b526 + m.i1032 <= 0)

m.c811 = Constraint(expr= - 9*m.b527 + m.i1033 <= 0)

m.c812 = Constraint(expr= - 9*m.b528 + m.i1034 <= 0)

m.c813 = Constraint(expr= - 9*m.b529 + m.i1035 <= 0)

m.c814 = Constraint(expr= - 9*m.b530 + m.i1036 <= 0)

m.c815 = Constraint(expr= - 9*m.b531 + m.i1037 <= 0)

m.c816 = Constraint(expr= - 9*m.b532 + m.i1038 <= 0)

m.c817 = Constraint(expr= - 9*m.b533 + m.i1039 <= 0)

m.c818 = Constraint(expr= - 9*m.b534 + m.i1040 <= 0)

m.c819 = Constraint(expr= - 9*m.b535 + m.i1041 <= 0)

m.c820 = Constraint(expr= - 9*m.b536 + m.i1042 <= 0)

m.c821 = Constraint(expr= - 9*m.b537 + m.i1043 <= 0)

m.c822 = Constraint(expr= - 9*m.b538 + m.i1044 <= 0)
