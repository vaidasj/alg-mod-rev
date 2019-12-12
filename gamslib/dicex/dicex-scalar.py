#  MIP written by GAMS Convert at 12/13/18 11:23:22
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


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x3 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x4 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x5 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x6 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x7 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x8 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x9 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x10 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x11 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x12 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x13 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x14 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x15 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x16 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x17 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x18 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x19 = Var(within=Reals,bounds=(1,18),initialize=1)
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

m.obj = Objective(expr=m.x1, sense=maximize)

m.c1 = Constraint(expr= - m.x1 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30
                        + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42
                        + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50 + m.b51 + m.b52 + m.b53 + m.b54
                        + m.b55 == 0)

m.c2 = Constraint(expr= - m.x1 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66
                        + m.b67 + m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 + m.b78
                        + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90
                        + m.b91 == 0)

m.c3 = Constraint(expr= - m.x1 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 + m.b101
                        + m.b102 + m.b103 + m.b104 + m.b105 + m.b106 + m.b107 + m.b108 + m.b109 + m.b110 + m.b111
                        + m.b112 + m.b113 + m.b114 + m.b115 + m.b116 + m.b117 + m.b118 + m.b119 + m.b120 + m.b121
                        + m.b122 + m.b123 + m.b124 + m.b125 + m.b126 + m.b127 == 0)

m.c4 = Constraint(expr=   m.x2 - m.x8 - 17*m.b20 >= -16)

m.c5 = Constraint(expr=   m.x2 - m.x9 - 17*m.b21 >= -16)

m.c6 = Constraint(expr=   m.x2 - m.x10 - 17*m.b22 >= -16)

m.c7 = Constraint(expr=   m.x2 - m.x11 - 17*m.b23 >= -16)

m.c8 = Constraint(expr=   m.x2 - m.x12 - 17*m.b24 >= -16)

m.c9 = Constraint(expr=   m.x2 - m.x13 - 17*m.b25 >= -16)

m.c10 = Constraint(expr=   m.x3 - m.x8 - 17*m.b26 >= -16)

m.c11 = Constraint(expr=   m.x3 - m.x9 - 17*m.b27 >= -16)

m.c12 = Constraint(expr=   m.x3 - m.x10 - 17*m.b28 >= -16)

m.c13 = Constraint(expr=   m.x3 - m.x11 - 17*m.b29 >= -16)

m.c14 = Constraint(expr=   m.x3 - m.x12 - 17*m.b30 >= -16)

m.c15 = Constraint(expr=   m.x3 - m.x13 - 17*m.b31 >= -16)

m.c16 = Constraint(expr=   m.x4 - m.x8 - 17*m.b32 >= -16)

m.c17 = Constraint(expr=   m.x4 - m.x9 - 17*m.b33 >= -16)

m.c18 = Constraint(expr=   m.x4 - m.x10 - 17*m.b34 >= -16)

m.c19 = Constraint(expr=   m.x4 - m.x11 - 17*m.b35 >= -16)

m.c20 = Constraint(expr=   m.x4 - m.x12 - 17*m.b36 >= -16)

m.c21 = Constraint(expr=   m.x4 - m.x13 - 17*m.b37 >= -16)

m.c22 = Constraint(expr=   m.x5 - m.x8 - 17*m.b38 >= -16)

m.c23 = Constraint(expr=   m.x5 - m.x9 - 17*m.b39 >= -16)

m.c24 = Constraint(expr=   m.x5 - m.x10 - 17*m.b40 >= -16)

m.c25 = Constraint(expr=   m.x5 - m.x11 - 17*m.b41 >= -16)

m.c26 = Constraint(expr=   m.x5 - m.x12 - 17*m.b42 >= -16)

m.c27 = Constraint(expr=   m.x5 - m.x13 - 17*m.b43 >= -16)

m.c28 = Constraint(expr=   m.x6 - m.x8 - 17*m.b44 >= -16)

m.c29 = Constraint(expr=   m.x6 - m.x9 - 17*m.b45 >= -16)

m.c30 = Constraint(expr=   m.x6 - m.x10 - 17*m.b46 >= -16)

m.c31 = Constraint(expr=   m.x6 - m.x11 - 17*m.b47 >= -16)

m.c32 = Constraint(expr=   m.x6 - m.x12 - 17*m.b48 >= -16)

m.c33 = Constraint(expr=   m.x6 - m.x13 - 17*m.b49 >= -16)

m.c34 = Constraint(expr=   m.x7 - m.x8 - 17*m.b50 >= -16)

m.c35 = Constraint(expr=   m.x7 - m.x9 - 17*m.b51 >= -16)

m.c36 = Constraint(expr=   m.x7 - m.x10 - 17*m.b52 >= -16)

m.c37 = Constraint(expr=   m.x7 - m.x11 - 17*m.b53 >= -16)

m.c38 = Constraint(expr=   m.x7 - m.x12 - 17*m.b54 >= -16)

m.c39 = Constraint(expr=   m.x7 - m.x13 - 17*m.b55 >= -16)

m.c40 = Constraint(expr=   m.x8 - m.x14 - 17*m.b56 >= -16)

m.c41 = Constraint(expr=   m.x8 - m.x15 - 17*m.b57 >= -16)

m.c42 = Constraint(expr=   m.x8 - m.x16 - 17*m.b58 >= -16)

m.c43 = Constraint(expr=   m.x8 - m.x17 - 17*m.b59 >= -16)

m.c44 = Constraint(expr=   m.x8 - m.x18 - 17*m.b60 >= -16)

m.c45 = Constraint(expr=   m.x8 - m.x19 - 17*m.b61 >= -16)

m.c46 = Constraint(expr=   m.x9 - m.x14 - 17*m.b62 >= -16)

m.c47 = Constraint(expr=   m.x9 - m.x15 - 17*m.b63 >= -16)

m.c48 = Constraint(expr=   m.x9 - m.x16 - 17*m.b64 >= -16)

m.c49 = Constraint(expr=   m.x9 - m.x17 - 17*m.b65 >= -16)

m.c50 = Constraint(expr=   m.x9 - m.x18 - 17*m.b66 >= -16)

m.c51 = Constraint(expr=   m.x9 - m.x19 - 17*m.b67 >= -16)

m.c52 = Constraint(expr=   m.x10 - m.x14 - 17*m.b68 >= -16)

m.c53 = Constraint(expr=   m.x10 - m.x15 - 17*m.b69 >= -16)

m.c54 = Constraint(expr=   m.x10 - m.x16 - 17*m.b70 >= -16)

m.c55 = Constraint(expr=   m.x10 - m.x17 - 17*m.b71 >= -16)

m.c56 = Constraint(expr=   m.x10 - m.x18 - 17*m.b72 >= -16)

m.c57 = Constraint(expr=   m.x10 - m.x19 - 17*m.b73 >= -16)

m.c58 = Constraint(expr=   m.x11 - m.x14 - 17*m.b74 >= -16)

m.c59 = Constraint(expr=   m.x11 - m.x15 - 17*m.b75 >= -16)

m.c60 = Constraint(expr=   m.x11 - m.x16 - 17*m.b76 >= -16)

m.c61 = Constraint(expr=   m.x11 - m.x17 - 17*m.b77 >= -16)

m.c62 = Constraint(expr=   m.x11 - m.x18 - 17*m.b78 >= -16)

m.c63 = Constraint(expr=   m.x11 - m.x19 - 17*m.b79 >= -16)

m.c64 = Constraint(expr=   m.x12 - m.x14 - 17*m.b80 >= -16)

m.c65 = Constraint(expr=   m.x12 - m.x15 - 17*m.b81 >= -16)

m.c66 = Constraint(expr=   m.x12 - m.x16 - 17*m.b82 >= -16)

m.c67 = Constraint(expr=   m.x12 - m.x17 - 17*m.b83 >= -16)

m.c68 = Constraint(expr=   m.x12 - m.x18 - 17*m.b84 >= -16)

m.c69 = Constraint(expr=   m.x12 - m.x19 - 17*m.b85 >= -16)

m.c70 = Constraint(expr=   m.x13 - m.x14 - 17*m.b86 >= -16)

m.c71 = Constraint(expr=   m.x13 - m.x15 - 17*m.b87 >= -16)

m.c72 = Constraint(expr=   m.x13 - m.x16 - 17*m.b88 >= -16)

m.c73 = Constraint(expr=   m.x13 - m.x17 - 17*m.b89 >= -16)

m.c74 = Constraint(expr=   m.x13 - m.x18 - 17*m.b90 >= -16)

m.c75 = Constraint(expr=   m.x13 - m.x19 - 17*m.b91 >= -16)

m.c76 = Constraint(expr= - m.x2 + m.x14 - 17*m.b92 >= -16)

m.c77 = Constraint(expr= - m.x3 + m.x14 - 17*m.b93 >= -16)

m.c78 = Constraint(expr= - m.x4 + m.x14 - 17*m.b94 >= -16)

m.c79 = Constraint(expr= - m.x5 + m.x14 - 17*m.b95 >= -16)

m.c80 = Constraint(expr= - m.x6 + m.x14 - 17*m.b96 >= -16)

m.c81 = Constraint(expr= - m.x7 + m.x14 - 17*m.b97 >= -16)

m.c82 = Constraint(expr= - m.x2 + m.x15 - 17*m.b98 >= -16)

m.c83 = Constraint(expr= - m.x3 + m.x15 - 17*m.b99 >= -16)

m.c84 = Constraint(expr= - m.x4 + m.x15 - 17*m.b100 >= -16)

m.c85 = Constraint(expr= - m.x5 + m.x15 - 17*m.b101 >= -16)

m.c86 = Constraint(expr= - m.x6 + m.x15 - 17*m.b102 >= -16)

m.c87 = Constraint(expr= - m.x7 + m.x15 - 17*m.b103 >= -16)

m.c88 = Constraint(expr= - m.x2 + m.x16 - 17*m.b104 >= -16)

m.c89 = Constraint(expr= - m.x3 + m.x16 - 17*m.b105 >= -16)

m.c90 = Constraint(expr= - m.x4 + m.x16 - 17*m.b106 >= -16)

m.c91 = Constraint(expr= - m.x5 + m.x16 - 17*m.b107 >= -16)

m.c92 = Constraint(expr= - m.x6 + m.x16 - 17*m.b108 >= -16)

m.c93 = Constraint(expr= - m.x7 + m.x16 - 17*m.b109 >= -16)

m.c94 = Constraint(expr= - m.x2 + m.x17 - 17*m.b110 >= -16)

m.c95 = Constraint(expr= - m.x3 + m.x17 - 17*m.b111 >= -16)

m.c96 = Constraint(expr= - m.x4 + m.x17 - 17*m.b112 >= -16)

m.c97 = Constraint(expr= - m.x5 + m.x17 - 17*m.b113 >= -16)

m.c98 = Constraint(expr= - m.x6 + m.x17 - 17*m.b114 >= -16)

m.c99 = Constraint(expr= - m.x7 + m.x17 - 17*m.b115 >= -16)

m.c100 = Constraint(expr= - m.x2 + m.x18 - 17*m.b116 >= -16)

m.c101 = Constraint(expr= - m.x3 + m.x18 - 17*m.b117 >= -16)

m.c102 = Constraint(expr= - m.x4 + m.x18 - 17*m.b118 >= -16)

m.c103 = Constraint(expr= - m.x5 + m.x18 - 17*m.b119 >= -16)

m.c104 = Constraint(expr= - m.x6 + m.x18 - 17*m.b120 >= -16)

m.c105 = Constraint(expr= - m.x7 + m.x18 - 17*m.b121 >= -16)

m.c106 = Constraint(expr= - m.x2 + m.x19 - 17*m.b122 >= -16)

m.c107 = Constraint(expr= - m.x3 + m.x19 - 17*m.b123 >= -16)

m.c108 = Constraint(expr= - m.x4 + m.x19 - 17*m.b124 >= -16)

m.c109 = Constraint(expr= - m.x5 + m.x19 - 17*m.b125 >= -16)

m.c110 = Constraint(expr= - m.x6 + m.x19 - 17*m.b126 >= -16)

m.c111 = Constraint(expr= - m.x7 + m.x19 - 17*m.b127 >= -16)

m.c112 = Constraint(expr=   m.x2 - m.x3 <= -1)

m.c113 = Constraint(expr=   m.x3 - m.x4 <= -1)

m.c114 = Constraint(expr=   m.x4 - m.x5 <= -1)

m.c115 = Constraint(expr=   m.x5 - m.x6 <= -1)

m.c116 = Constraint(expr=   m.x6 - m.x7 <= -1)

m.c117 = Constraint(expr=   m.x8 - m.x9 <= -1)

m.c118 = Constraint(expr=   m.x9 - m.x10 <= -1)

m.c119 = Constraint(expr=   m.x10 - m.x11 <= -1)

m.c120 = Constraint(expr=   m.x11 - m.x12 <= -1)

m.c121 = Constraint(expr=   m.x12 - m.x13 <= -1)

m.c122 = Constraint(expr=   m.x14 - m.x15 <= -1)

m.c123 = Constraint(expr=   m.x15 - m.x16 <= -1)

m.c124 = Constraint(expr=   m.x16 - m.x17 <= -1)

m.c125 = Constraint(expr=   m.x17 - m.x18 <= -1)

m.c126 = Constraint(expr=   m.x18 - m.x19 <= -1)

m.c127 = Constraint(expr= - m.x2 + m.b128 + 2*m.b129 + 3*m.b130 + 4*m.b131 + 5*m.b132 + 6*m.b133 + 7*m.b134 + 8*m.b135
                          + 9*m.b136 + 10*m.b137 + 11*m.b138 + 12*m.b139 + 13*m.b140 + 14*m.b141 + 15*m.b142 + 16*m.b143
                          + 17*m.b144 + 18*m.b145 == 0)

m.c128 = Constraint(expr= - m.x3 + m.b146 + 2*m.b147 + 3*m.b148 + 4*m.b149 + 5*m.b150 + 6*m.b151 + 7*m.b152 + 8*m.b153
                          + 9*m.b154 + 10*m.b155 + 11*m.b156 + 12*m.b157 + 13*m.b158 + 14*m.b159 + 15*m.b160 + 16*m.b161
                          + 17*m.b162 + 18*m.b163 == 0)

m.c129 = Constraint(expr= - m.x4 + m.b164 + 2*m.b165 + 3*m.b166 + 4*m.b167 + 5*m.b168 + 6*m.b169 + 7*m.b170 + 8*m.b171
                          + 9*m.b172 + 10*m.b173 + 11*m.b174 + 12*m.b175 + 13*m.b176 + 14*m.b177 + 15*m.b178 + 16*m.b179
                          + 17*m.b180 + 18*m.b181 == 0)

m.c130 = Constraint(expr= - m.x5 + m.b182 + 2*m.b183 + 3*m.b184 + 4*m.b185 + 5*m.b186 + 6*m.b187 + 7*m.b188 + 8*m.b189
                          + 9*m.b190 + 10*m.b191 + 11*m.b192 + 12*m.b193 + 13*m.b194 + 14*m.b195 + 15*m.b196 + 16*m.b197
                          + 17*m.b198 + 18*m.b199 == 0)

m.c131 = Constraint(expr= - m.x6 + m.b200 + 2*m.b201 + 3*m.b202 + 4*m.b203 + 5*m.b204 + 6*m.b205 + 7*m.b206 + 8*m.b207
                          + 9*m.b208 + 10*m.b209 + 11*m.b210 + 12*m.b211 + 13*m.b212 + 14*m.b213 + 15*m.b214 + 16*m.b215
                          + 17*m.b216 + 18*m.b217 == 0)

m.c132 = Constraint(expr= - m.x7 + m.b218 + 2*m.b219 + 3*m.b220 + 4*m.b221 + 5*m.b222 + 6*m.b223 + 7*m.b224 + 8*m.b225
                          + 9*m.b226 + 10*m.b227 + 11*m.b228 + 12*m.b229 + 13*m.b230 + 14*m.b231 + 15*m.b232 + 16*m.b233
                          + 17*m.b234 + 18*m.b235 == 0)

m.c133 = Constraint(expr= - m.x8 + m.b236 + 2*m.b237 + 3*m.b238 + 4*m.b239 + 5*m.b240 + 6*m.b241 + 7*m.b242 + 8*m.b243
                          + 9*m.b244 + 10*m.b245 + 11*m.b246 + 12*m.b247 + 13*m.b248 + 14*m.b249 + 15*m.b250 + 16*m.b251
                          + 17*m.b252 + 18*m.b253 == 0)

m.c134 = Constraint(expr= - m.x9 + m.b254 + 2*m.b255 + 3*m.b256 + 4*m.b257 + 5*m.b258 + 6*m.b259 + 7*m.b260 + 8*m.b261
                          + 9*m.b262 + 10*m.b263 + 11*m.b264 + 12*m.b265 + 13*m.b266 + 14*m.b267 + 15*m.b268 + 16*m.b269
                          + 17*m.b270 + 18*m.b271 == 0)

m.c135 = Constraint(expr= - m.x10 + m.b272 + 2*m.b273 + 3*m.b274 + 4*m.b275 + 5*m.b276 + 6*m.b277 + 7*m.b278 + 8*m.b279
                          + 9*m.b280 + 10*m.b281 + 11*m.b282 + 12*m.b283 + 13*m.b284 + 14*m.b285 + 15*m.b286 + 16*m.b287
                          + 17*m.b288 + 18*m.b289 == 0)

m.c136 = Constraint(expr= - m.x11 + m.b290 + 2*m.b291 + 3*m.b292 + 4*m.b293 + 5*m.b294 + 6*m.b295 + 7*m.b296 + 8*m.b297
                          + 9*m.b298 + 10*m.b299 + 11*m.b300 + 12*m.b301 + 13*m.b302 + 14*m.b303 + 15*m.b304 + 16*m.b305
                          + 17*m.b306 + 18*m.b307 == 0)

m.c137 = Constraint(expr= - m.x12 + m.b308 + 2*m.b309 + 3*m.b310 + 4*m.b311 + 5*m.b312 + 6*m.b313 + 7*m.b314 + 8*m.b315
                          + 9*m.b316 + 10*m.b317 + 11*m.b318 + 12*m.b319 + 13*m.b320 + 14*m.b321 + 15*m.b322 + 16*m.b323
                          + 17*m.b324 + 18*m.b325 == 0)

m.c138 = Constraint(expr= - m.x13 + m.b326 + 2*m.b327 + 3*m.b328 + 4*m.b329 + 5*m.b330 + 6*m.b331 + 7*m.b332 + 8*m.b333
                          + 9*m.b334 + 10*m.b335 + 11*m.b336 + 12*m.b337 + 13*m.b338 + 14*m.b339 + 15*m.b340 + 16*m.b341
                          + 17*m.b342 + 18*m.b343 == 0)

m.c139 = Constraint(expr= - m.x14 + m.b344 + 2*m.b345 + 3*m.b346 + 4*m.b347 + 5*m.b348 + 6*m.b349 + 7*m.b350 + 8*m.b351
                          + 9*m.b352 + 10*m.b353 + 11*m.b354 + 12*m.b355 + 13*m.b356 + 14*m.b357 + 15*m.b358 + 16*m.b359
                          + 17*m.b360 + 18*m.b361 == 0)

m.c140 = Constraint(expr= - m.x15 + m.b362 + 2*m.b363 + 3*m.b364 + 4*m.b365 + 5*m.b366 + 6*m.b367 + 7*m.b368 + 8*m.b369
                          + 9*m.b370 + 10*m.b371 + 11*m.b372 + 12*m.b373 + 13*m.b374 + 14*m.b375 + 15*m.b376 + 16*m.b377
                          + 17*m.b378 + 18*m.b379 == 0)

m.c141 = Constraint(expr= - m.x16 + m.b380 + 2*m.b381 + 3*m.b382 + 4*m.b383 + 5*m.b384 + 6*m.b385 + 7*m.b386 + 8*m.b387
                          + 9*m.b388 + 10*m.b389 + 11*m.b390 + 12*m.b391 + 13*m.b392 + 14*m.b393 + 15*m.b394 + 16*m.b395
                          + 17*m.b396 + 18*m.b397 == 0)

m.c142 = Constraint(expr= - m.x17 + m.b398 + 2*m.b399 + 3*m.b400 + 4*m.b401 + 5*m.b402 + 6*m.b403 + 7*m.b404 + 8*m.b405
                          + 9*m.b406 + 10*m.b407 + 11*m.b408 + 12*m.b409 + 13*m.b410 + 14*m.b411 + 15*m.b412 + 16*m.b413
                          + 17*m.b414 + 18*m.b415 == 0)

m.c143 = Constraint(expr= - m.x18 + m.b416 + 2*m.b417 + 3*m.b418 + 4*m.b419 + 5*m.b420 + 6*m.b421 + 7*m.b422 + 8*m.b423
                          + 9*m.b424 + 10*m.b425 + 11*m.b426 + 12*m.b427 + 13*m.b428 + 14*m.b429 + 15*m.b430 + 16*m.b431
                          + 17*m.b432 + 18*m.b433 == 0)

m.c144 = Constraint(expr= - m.x19 + m.b434 + 2*m.b435 + 3*m.b436 + 4*m.b437 + 5*m.b438 + 6*m.b439 + 7*m.b440 + 8*m.b441
                          + 9*m.b442 + 10*m.b443 + 11*m.b444 + 12*m.b445 + 13*m.b446 + 14*m.b447 + 15*m.b448 + 16*m.b449
                          + 17*m.b450 + 18*m.b451 == 0)

m.c145 = Constraint(expr=   m.b128 + m.b146 + m.b164 + m.b182 + m.b200 + m.b218 + m.b236 + m.b254 + m.b272 + m.b290
                          + m.b308 + m.b326 + m.b344 + m.b362 + m.b380 + m.b398 + m.b416 + m.b434 == 1)

m.c146 = Constraint(expr=   m.b129 + m.b147 + m.b165 + m.b183 + m.b201 + m.b219 + m.b237 + m.b255 + m.b273 + m.b291
                          + m.b309 + m.b327 + m.b345 + m.b363 + m.b381 + m.b399 + m.b417 + m.b435 == 1)

m.c147 = Constraint(expr=   m.b130 + m.b148 + m.b166 + m.b184 + m.b202 + m.b220 + m.b238 + m.b256 + m.b274 + m.b292
                          + m.b310 + m.b328 + m.b346 + m.b364 + m.b382 + m.b400 + m.b418 + m.b436 == 1)

m.c148 = Constraint(expr=   m.b131 + m.b149 + m.b167 + m.b185 + m.b203 + m.b221 + m.b239 + m.b257 + m.b275 + m.b293
                          + m.b311 + m.b329 + m.b347 + m.b365 + m.b383 + m.b401 + m.b419 + m.b437 == 1)

m.c149 = Constraint(expr=   m.b132 + m.b150 + m.b168 + m.b186 + m.b204 + m.b222 + m.b240 + m.b258 + m.b276 + m.b294
                          + m.b312 + m.b330 + m.b348 + m.b366 + m.b384 + m.b402 + m.b420 + m.b438 == 1)

m.c150 = Constraint(expr=   m.b133 + m.b151 + m.b169 + m.b187 + m.b205 + m.b223 + m.b241 + m.b259 + m.b277 + m.b295
                          + m.b313 + m.b331 + m.b349 + m.b367 + m.b385 + m.b403 + m.b421 + m.b439 == 1)

m.c151 = Constraint(expr=   m.b134 + m.b152 + m.b170 + m.b188 + m.b206 + m.b224 + m.b242 + m.b260 + m.b278 + m.b296
                          + m.b314 + m.b332 + m.b350 + m.b368 + m.b386 + m.b404 + m.b422 + m.b440 == 1)

m.c152 = Constraint(expr=   m.b135 + m.b153 + m.b171 + m.b189 + m.b207 + m.b225 + m.b243 + m.b261 + m.b279 + m.b297
                          + m.b315 + m.b333 + m.b351 + m.b369 + m.b387 + m.b405 + m.b423 + m.b441 == 1)

m.c153 = Constraint(expr=   m.b136 + m.b154 + m.b172 + m.b190 + m.b208 + m.b226 + m.b244 + m.b262 + m.b280 + m.b298
                          + m.b316 + m.b334 + m.b352 + m.b370 + m.b388 + m.b406 + m.b424 + m.b442 == 1)

m.c154 = Constraint(expr=   m.b137 + m.b155 + m.b173 + m.b191 + m.b209 + m.b227 + m.b245 + m.b263 + m.b281 + m.b299
                          + m.b317 + m.b335 + m.b353 + m.b371 + m.b389 + m.b407 + m.b425 + m.b443 == 1)

m.c155 = Constraint(expr=   m.b138 + m.b156 + m.b174 + m.b192 + m.b210 + m.b228 + m.b246 + m.b264 + m.b282 + m.b300
                          + m.b318 + m.b336 + m.b354 + m.b372 + m.b390 + m.b408 + m.b426 + m.b444 == 1)

m.c156 = Constraint(expr=   m.b139 + m.b157 + m.b175 + m.b193 + m.b211 + m.b229 + m.b247 + m.b265 + m.b283 + m.b301
                          + m.b319 + m.b337 + m.b355 + m.b373 + m.b391 + m.b409 + m.b427 + m.b445 == 1)

m.c157 = Constraint(expr=   m.b140 + m.b158 + m.b176 + m.b194 + m.b212 + m.b230 + m.b248 + m.b266 + m.b284 + m.b302
                          + m.b320 + m.b338 + m.b356 + m.b374 + m.b392 + m.b410 + m.b428 + m.b446 == 1)

m.c158 = Constraint(expr=   m.b141 + m.b159 + m.b177 + m.b195 + m.b213 + m.b231 + m.b249 + m.b267 + m.b285 + m.b303
                          + m.b321 + m.b339 + m.b357 + m.b375 + m.b393 + m.b411 + m.b429 + m.b447 == 1)

m.c159 = Constraint(expr=   m.b142 + m.b160 + m.b178 + m.b196 + m.b214 + m.b232 + m.b250 + m.b268 + m.b286 + m.b304
                          + m.b322 + m.b340 + m.b358 + m.b376 + m.b394 + m.b412 + m.b430 + m.b448 == 1)

m.c160 = Constraint(expr=   m.b143 + m.b161 + m.b179 + m.b197 + m.b215 + m.b233 + m.b251 + m.b269 + m.b287 + m.b305
                          + m.b323 + m.b341 + m.b359 + m.b377 + m.b395 + m.b413 + m.b431 + m.b449 == 1)

m.c161 = Constraint(expr=   m.b144 + m.b162 + m.b180 + m.b198 + m.b216 + m.b234 + m.b252 + m.b270 + m.b288 + m.b306
                          + m.b324 + m.b342 + m.b360 + m.b378 + m.b396 + m.b414 + m.b432 + m.b450 == 1)

m.c162 = Constraint(expr=   m.b145 + m.b163 + m.b181 + m.b199 + m.b217 + m.b235 + m.b253 + m.b271 + m.b289 + m.b307
                          + m.b325 + m.b343 + m.b361 + m.b379 + m.b397 + m.b415 + m.b433 + m.b451 == 1)
