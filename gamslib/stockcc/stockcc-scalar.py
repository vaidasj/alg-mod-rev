#  MIP written by GAMS Convert at 12/13/18 10:32:30
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


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x2 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x3 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x4 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x5 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x6 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x7 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x8 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x9 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x10 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x11 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x12 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x13 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x14 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x15 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x16 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x17 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x18 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x19 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x20 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x21 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x22 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x23 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x24 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x25 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x26 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x27 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x28 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x29 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x30 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x31 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x32 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x33 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x34 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x35 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x36 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x37 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x38 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x39 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x40 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x41 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x42 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x43 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x44 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x45 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x46 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x47 = Var(within=Reals,bounds=(3,156),initialize=3)
m.x48 = Var(within=Reals,bounds=(3,156),initialize=3)
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

m.obj = Objective(expr=   10.02*m.b49 + 5.01*m.b50 + 3.34*m.b51 + 2.505*m.b52 + 1.67*m.b53 + 0.835*m.b54
                        + 0.578076923076923*m.b55 + 0.385384615384615*m.b56 + 0.192692307692308*m.b57 + 10.86*m.b58
                        + 5.43*m.b59 + 3.62*m.b60 + 2.715*m.b61 + 1.81*m.b62 + 0.905*m.b63 + 0.626538461538461*m.b64
                        + 0.417692307692308*m.b65 + 0.208846153846154*m.b66 + 18.96*m.b67 + 9.48*m.b68 + 6.32*m.b69
                        + 4.74*m.b70 + 3.16*m.b71 + 1.58*m.b72 + 1.09384615384615*m.b73 + 0.729230769230769*m.b74
                        + 0.364615384615385*m.b75 + 27.06*m.b76 + 13.53*m.b77 + 9.02*m.b78 + 6.765*m.b79 + 4.51*m.b80
                        + 2.255*m.b81 + 1.56115384615385*m.b82 + 1.04076923076923*m.b83 + 0.520384615384615*m.b84
                        + 30.9*m.b85 + 15.45*m.b86 + 10.3*m.b87 + 7.725*m.b88 + 5.15*m.b89 + 2.575*m.b90
                        + 1.78269230769231*m.b91 + 1.18846153846154*m.b92 + 0.594230769230769*m.b93 + 40.62*m.b94
                        + 20.31*m.b95 + 13.54*m.b96 + 10.155*m.b97 + 6.77*m.b98 + 3.385*m.b99 + 2.34346153846154*m.b100
                        + 1.56230769230769*m.b101 + 0.781153846153846*m.b102 + 47.1*m.b103 + 23.55*m.b104 + 15.7*m.b105
                        + 11.775*m.b106 + 7.85*m.b107 + 3.925*m.b108 + 2.71730769230769*m.b109 + 1.81153846153846*m.b110
                        + 0.905769230769231*m.b111 + 59.7*m.b112 + 29.85*m.b113 + 19.9*m.b114 + 14.925*m.b115
                        + 9.95*m.b116 + 4.975*m.b117 + 3.44423076923077*m.b118 + 2.29615384615385*m.b119
                        + 1.14807692307692*m.b120 + 85.8*m.b121 + 42.9*m.b122 + 28.6*m.b123 + 21.45*m.b124 + 14.3*m.b125
                        + 7.15*m.b126 + 4.95*m.b127 + 3.3*m.b128 + 1.65*m.b129 + 104.4*m.b130 + 52.2*m.b131
                        + 34.8*m.b132 + 26.1*m.b133 + 17.4*m.b134 + 8.7*m.b135 + 6.02307692307692*m.b136
                        + 4.01538461538462*m.b137 + 2.00769230769231*m.b138 + 207.635*m.b139 + 103.8175*m.b140
                        + 69.2116666666667*m.b141 + 51.90875*m.b142 + 34.6058333333333*m.b143 + 17.3029166666667*m.b144
                        + 11.9789423076923*m.b145 + 7.98596153846154*m.b146 + 3.99298076923077*m.b147 + 235.115*m.b148
                        + 117.5575*m.b149 + 78.3716666666667*m.b150 + 58.77875*m.b151 + 39.1858333333333*m.b152
                        + 19.5929166666667*m.b153 + 13.5643269230769*m.b154 + 9.04288461538462*m.b155
                        + 4.52144230769231*m.b156 + 606*m.b157 + 303*m.b158 + 202*m.b159 + 151.5*m.b160 + 101*m.b161
                        + 50.5*m.b162 + 34.9615384615385*m.b163 + 23.3076923076923*m.b164 + 11.6538461538462*m.b165
                        + 696.6*m.b166 + 348.3*m.b167 + 232.2*m.b168 + 174.15*m.b169 + 116.1*m.b170 + 58.05*m.b171
                        + 40.1884615384615*m.b172 + 26.7923076923077*m.b173 + 13.3961538461538*m.b174 + 748.2*m.b175
                        + 374.1*m.b176 + 249.4*m.b177 + 187.05*m.b178 + 124.7*m.b179 + 62.35*m.b180
                        + 43.1653846153846*m.b181 + 28.7769230769231*m.b182 + 14.3884615384615*m.b183 + 800*m.b184
                        + 400*m.b185 + 266.666666666667*m.b186 + 200*m.b187 + 133.333333333333*m.b188
                        + 66.6666666666667*m.b189 + 46.1538461538462*m.b190 + 30.7692307692308*m.b191
                        + 15.3846153846154*m.b192 + 851.2*m.b193 + 425.6*m.b194 + 283.733333333333*m.b195 + 212.8*m.b196
                        + 141.866666666667*m.b197 + 70.9333333333333*m.b198 + 49.1076923076923*m.b199
                        + 32.7384615384615*m.b200 + 16.3692307692308*m.b201 + 857.25*m.b202 + 428.625*m.b203
                        + 285.75*m.b204 + 214.3125*m.b205 + 142.875*m.b206 + 71.4375*m.b207 + 49.4567307692308*m.b208
                        + 32.9711538461538*m.b209 + 16.4855769230769*m.b210 + 935.25*m.b211 + 467.625*m.b212
                        + 311.75*m.b213 + 233.8125*m.b214 + 155.875*m.b215 + 77.9375*m.b216 + 53.9567307692308*m.b217
                        + 35.9711538461538*m.b218 + 17.9855769230769*m.b219 + 988.9*m.b220 + 494.45*m.b221
                        + 329.633333333333*m.b222 + 247.225*m.b223 + 164.816666666667*m.b224 + 82.4083333333333*m.b225
                        + 57.0519230769231*m.b226 + 38.0346153846154*m.b227 + 19.0173076923077*m.b228 + 1323.56*m.b229
                        + 661.78*m.b230 + 441.186666666667*m.b231 + 330.89*m.b232 + 220.593333333333*m.b233
                        + 110.296666666667*m.b234 + 76.3592307692308*m.b235 + 50.9061538461538*m.b236
                        + 25.4530769230769*m.b237 + 1571.91*m.b238 + 785.955*m.b239 + 523.97*m.b240 + 392.9775*m.b241
                        + 261.985*m.b242 + 130.9925*m.b243 + 90.6871153846154*m.b244 + 60.4580769230769*m.b245
                        + 30.2290384615385*m.b246 + 2086.5*m.b247 + 1043.25*m.b248 + 695.5*m.b249 + 521.625*m.b250
                        + 347.75*m.b251 + 173.875*m.b252 + 120.375*m.b253 + 80.25*m.b254 + 40.125*m.b255
                        + 2173.89*m.b256 + 1086.945*m.b257 + 724.63*m.b258 + 543.4725*m.b259 + 362.315*m.b260
                        + 181.1575*m.b261 + 125.416730769231*m.b262 + 83.6111538461538*m.b263 + 41.8055769230769*m.b264
                        + 2458.5*m.b265 + 1229.25*m.b266 + 819.5*m.b267 + 614.625*m.b268 + 409.75*m.b269
                        + 204.875*m.b270 + 141.836538461538*m.b271 + 94.5576923076923*m.b272 + 47.2788461538462*m.b273
                        + 2524.15*m.b274 + 1262.075*m.b275 + 841.383333333333*m.b276 + 631.0375*m.b277
                        + 420.691666666667*m.b278 + 210.345833333333*m.b279 + 145.624038461538*m.b280
                        + 97.0826923076923*m.b281 + 48.5413461538462*m.b282 + 2698.6*m.b283 + 1349.3*m.b284
                        + 899.533333333333*m.b285 + 674.65*m.b286 + 449.766666666667*m.b287 + 224.883333333333*m.b288
                        + 155.688461538462*m.b289 + 103.792307692308*m.b290 + 51.8961538461538*m.b291 + 3346.2*m.b292
                        + 1673.1*m.b293 + 1115.4*m.b294 + 836.55*m.b295 + 557.7*m.b296 + 278.85*m.b297 + 193.05*m.b298
                        + 128.7*m.b299 + 64.35*m.b300 + 3418.8*m.b301 + 1709.4*m.b302 + 1139.6*m.b303 + 854.7*m.b304
                        + 569.8*m.b305 + 284.9*m.b306 + 197.238461538462*m.b307 + 131.492307692308*m.b308
                        + 65.7461538461539*m.b309 + 4001.55*m.b310 + 2000.775*m.b311 + 1333.85*m.b312 + 1000.3875*m.b313
                        + 666.925*m.b314 + 333.4625*m.b315 + 230.858653846154*m.b316 + 153.905769230769*m.b317
                        + 76.9528846153846*m.b318 + 4224.75*m.b319 + 2112.375*m.b320 + 1408.25*m.b321 + 1056.1875*m.b322
                        + 704.125*m.b323 + 352.0625*m.b324 + 243.735576923077*m.b325 + 162.490384615385*m.b326
                        + 81.2451923076923*m.b327 + 4576*m.b328 + 2288*m.b329 + 1525.33333333333*m.b330 + 1144*m.b331
                        + 762.666666666667*m.b332 + 381.333333333333*m.b333 + 264*m.b334 + 176*m.b335 + 88*m.b336
                        + 6618.15*m.b337 + 3309.075*m.b338 + 2206.05*m.b339 + 1654.5375*m.b340 + 1103.025*m.b341
                        + 551.5125*m.b342 + 381.816346153846*m.b343 + 254.544230769231*m.b344 + 127.272115384615*m.b345
                        + 6985*m.b346 + 3492.5*m.b347 + 2328.33333333333*m.b348 + 1746.25*m.b349
                        + 1164.16666666667*m.b350 + 582.083333333333*m.b351 + 402.980769230769*m.b352
                        + 268.653846153846*m.b353 + 134.326923076923*m.b354 + 7663.8*m.b355 + 3831.9*m.b356
                        + 2554.6*m.b357 + 1915.95*m.b358 + 1277.3*m.b359 + 638.65*m.b360 + 442.142307692308*m.b361
                        + 294.761538461538*m.b362 + 147.380769230769*m.b363 + 8184*m.b364 + 4092*m.b365 + 2728*m.b366
                        + 2046*m.b367 + 1364*m.b368 + 682*m.b369 + 472.153846153846*m.b370 + 314.769230769231*m.b371
                        + 157.384615384615*m.b372 + 9882.5*m.b373 + 4941.25*m.b374 + 3294.16666666667*m.b375
                        + 2470.625*m.b376 + 1647.08333333333*m.b377 + 823.541666666667*m.b378 + 570.144230769231*m.b379
                        + 380.096153846154*m.b380 + 190.048076923077*m.b381 + 10235.15*m.b382 + 5117.575*m.b383
                        + 3411.71666666667*m.b384 + 2558.7875*m.b385 + 1705.85833333333*m.b386 + 852.929166666667*m.b387
                        + 590.489423076923*m.b388 + 393.659615384615*m.b389 + 196.829807692308*m.b390 + 11591.1*m.b391
                        + 5795.55*m.b392 + 3863.7*m.b393 + 2897.775*m.b394 + 1931.85*m.b395 + 965.925*m.b396
                        + 668.717307692308*m.b397 + 445.811538461538*m.b398 + 222.905769230769*m.b399 + 12513*m.b400
                        + 6256.5*m.b401 + 4171*m.b402 + 3128.25*m.b403 + 2085.5*m.b404 + 1042.75*m.b405
                        + 721.903846153846*m.b406 + 481.269230769231*m.b407 + 240.634615384615*m.b408 + 15837.8*m.b409
                        + 7918.9*m.b410 + 5279.26666666667*m.b411 + 3959.45*m.b412 + 2639.63333333333*m.b413
                        + 1319.81666666667*m.b414 + 913.719230769231*m.b415 + 609.146153846154*m.b416
                        + 304.573076923077*m.b417 + 28367.1*m.b418 + 14183.55*m.b419 + 9455.7*m.b420 + 7091.775*m.b421
                        + 4727.85*m.b422 + 2363.925*m.b423 + 1636.56346153846*m.b424 + 1091.04230769231*m.b425
                        + 545.521153846154*m.b426 + 34520.2*m.b427 + 17260.1*m.b428 + 11506.7333333333*m.b429
                        + 8630.05*m.b430 + 5753.36666666667*m.b431 + 2876.68333333333*m.b432 + 1991.55*m.b433
                        + 1327.7*m.b434 + 663.85*m.b435 + 37596*m.b436 + 18798*m.b437 + 12532*m.b438 + 9399*m.b439
                        + 6266*m.b440 + 3133*m.b441 + 2169*m.b442 + 1446*m.b443 + 723*m.b444 + 48533.25*m.b445
                        + 24266.625*m.b446 + 16177.75*m.b447 + 12133.3125*m.b448 + 8088.875*m.b449 + 4044.4375*m.b450
                        + 2799.99519230769*m.b451 + 1866.66346153846*m.b452 + 933.331730769231*m.b453 + 49901.6*m.b454
                        + 24950.8*m.b455 + 16633.8666666667*m.b456 + 12475.4*m.b457 + 8316.93333333333*m.b458
                        + 4158.46666666667*m.b459 + 2878.93846153846*m.b460 + 1919.29230769231*m.b461
                        + 959.646153846154*m.b462 + 52992*m.b463 + 26496*m.b464 + 17664*m.b465 + 13248*m.b466
                        + 8832*m.b467 + 4416*m.b468 + 3057.23076923077*m.b469 + 2038.15384615385*m.b470
                        + 1019.07692307692*m.b471 + 53232.5*m.b472 + 26616.25*m.b473 + 17744.1666666667*m.b474
                        + 13308.125*m.b475 + 8872.08333333333*m.b476 + 4436.04166666667*m.b477 + 3071.10576923077*m.b478
                        + 2047.40384615385*m.b479 + 1023.70192307692*m.b480, sense=minimize)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10 + m.x11 + m.x12 + m.x13
                        + m.x14 + m.x15 + m.x16 + m.x17 + m.x18 + m.x19 + m.x20 + m.x21 + m.x22 + m.x23 + m.x24 + m.x25
                        + m.x26 + m.x27 + m.x28 + m.x29 + m.x30 + m.x31 + m.x32 + m.x33 + m.x34 + m.x35 + m.x36 + m.x37
                        + m.x38 + m.x39 + m.x40 + m.x41 + m.x42 + m.x43 + m.x44 + m.x45 + m.x46 + m.x47 + m.x48 <= 300)

m.c3 = Constraint(expr= - m.x1 + 3*m.b49 + 6*m.b50 + 9*m.b51 + 12*m.b52 + 18*m.b53 + 36*m.b54 + 52*m.b55 + 78*m.b56
                        + 156*m.b57 == 0)

m.c4 = Constraint(expr= - m.x2 + 3*m.b58 + 6*m.b59 + 9*m.b60 + 12*m.b61 + 18*m.b62 + 36*m.b63 + 52*m.b64 + 78*m.b65
                        + 156*m.b66 == 0)

m.c5 = Constraint(expr= - m.x3 + 3*m.b67 + 6*m.b68 + 9*m.b69 + 12*m.b70 + 18*m.b71 + 36*m.b72 + 52*m.b73 + 78*m.b74
                        + 156*m.b75 == 0)

m.c6 = Constraint(expr= - m.x4 + 3*m.b76 + 6*m.b77 + 9*m.b78 + 12*m.b79 + 18*m.b80 + 36*m.b81 + 52*m.b82 + 78*m.b83
                        + 156*m.b84 == 0)

m.c7 = Constraint(expr= - m.x5 + 3*m.b85 + 6*m.b86 + 9*m.b87 + 12*m.b88 + 18*m.b89 + 36*m.b90 + 52*m.b91 + 78*m.b92
                        + 156*m.b93 == 0)

m.c8 = Constraint(expr= - m.x6 + 3*m.b94 + 6*m.b95 + 9*m.b96 + 12*m.b97 + 18*m.b98 + 36*m.b99 + 52*m.b100 + 78*m.b101
                        + 156*m.b102 == 0)

m.c9 = Constraint(expr= - m.x7 + 3*m.b103 + 6*m.b104 + 9*m.b105 + 12*m.b106 + 18*m.b107 + 36*m.b108 + 52*m.b109
                        + 78*m.b110 + 156*m.b111 == 0)

m.c10 = Constraint(expr= - m.x8 + 3*m.b112 + 6*m.b113 + 9*m.b114 + 12*m.b115 + 18*m.b116 + 36*m.b117 + 52*m.b118
                         + 78*m.b119 + 156*m.b120 == 0)

m.c11 = Constraint(expr= - m.x9 + 3*m.b121 + 6*m.b122 + 9*m.b123 + 12*m.b124 + 18*m.b125 + 36*m.b126 + 52*m.b127
                         + 78*m.b128 + 156*m.b129 == 0)

m.c12 = Constraint(expr= - m.x10 + 3*m.b130 + 6*m.b131 + 9*m.b132 + 12*m.b133 + 18*m.b134 + 36*m.b135 + 52*m.b136
                         + 78*m.b137 + 156*m.b138 == 0)

m.c13 = Constraint(expr= - m.x11 + 3*m.b139 + 6*m.b140 + 9*m.b141 + 12*m.b142 + 18*m.b143 + 36*m.b144 + 52*m.b145
                         + 78*m.b146 + 156*m.b147 == 0)

m.c14 = Constraint(expr= - m.x12 + 3*m.b148 + 6*m.b149 + 9*m.b150 + 12*m.b151 + 18*m.b152 + 36*m.b153 + 52*m.b154
                         + 78*m.b155 + 156*m.b156 == 0)

m.c15 = Constraint(expr= - m.x13 + 3*m.b157 + 6*m.b158 + 9*m.b159 + 12*m.b160 + 18*m.b161 + 36*m.b162 + 52*m.b163
                         + 78*m.b164 + 156*m.b165 == 0)

m.c16 = Constraint(expr= - m.x14 + 3*m.b166 + 6*m.b167 + 9*m.b168 + 12*m.b169 + 18*m.b170 + 36*m.b171 + 52*m.b172
                         + 78*m.b173 + 156*m.b174 == 0)

m.c17 = Constraint(expr= - m.x15 + 3*m.b175 + 6*m.b176 + 9*m.b177 + 12*m.b178 + 18*m.b179 + 36*m.b180 + 52*m.b181
                         + 78*m.b182 + 156*m.b183 == 0)

m.c18 = Constraint(expr= - m.x16 + 3*m.b184 + 6*m.b185 + 9*m.b186 + 12*m.b187 + 18*m.b188 + 36*m.b189 + 52*m.b190
                         + 78*m.b191 + 156*m.b192 == 0)

m.c19 = Constraint(expr= - m.x17 + 3*m.b193 + 6*m.b194 + 9*m.b195 + 12*m.b196 + 18*m.b197 + 36*m.b198 + 52*m.b199
                         + 78*m.b200 + 156*m.b201 == 0)

m.c20 = Constraint(expr= - m.x18 + 3*m.b202 + 6*m.b203 + 9*m.b204 + 12*m.b205 + 18*m.b206 + 36*m.b207 + 52*m.b208
                         + 78*m.b209 + 156*m.b210 == 0)

m.c21 = Constraint(expr= - m.x19 + 3*m.b211 + 6*m.b212 + 9*m.b213 + 12*m.b214 + 18*m.b215 + 36*m.b216 + 52*m.b217
                         + 78*m.b218 + 156*m.b219 == 0)

m.c22 = Constraint(expr= - m.x20 + 3*m.b220 + 6*m.b221 + 9*m.b222 + 12*m.b223 + 18*m.b224 + 36*m.b225 + 52*m.b226
                         + 78*m.b227 + 156*m.b228 == 0)

m.c23 = Constraint(expr= - m.x21 + 3*m.b229 + 6*m.b230 + 9*m.b231 + 12*m.b232 + 18*m.b233 + 36*m.b234 + 52*m.b235
                         + 78*m.b236 + 156*m.b237 == 0)

m.c24 = Constraint(expr= - m.x22 + 3*m.b238 + 6*m.b239 + 9*m.b240 + 12*m.b241 + 18*m.b242 + 36*m.b243 + 52*m.b244
                         + 78*m.b245 + 156*m.b246 == 0)

m.c25 = Constraint(expr= - m.x23 + 3*m.b247 + 6*m.b248 + 9*m.b249 + 12*m.b250 + 18*m.b251 + 36*m.b252 + 52*m.b253
                         + 78*m.b254 + 156*m.b255 == 0)

m.c26 = Constraint(expr= - m.x24 + 3*m.b256 + 6*m.b257 + 9*m.b258 + 12*m.b259 + 18*m.b260 + 36*m.b261 + 52*m.b262
                         + 78*m.b263 + 156*m.b264 == 0)

m.c27 = Constraint(expr= - m.x25 + 3*m.b265 + 6*m.b266 + 9*m.b267 + 12*m.b268 + 18*m.b269 + 36*m.b270 + 52*m.b271
                         + 78*m.b272 + 156*m.b273 == 0)

m.c28 = Constraint(expr= - m.x26 + 3*m.b274 + 6*m.b275 + 9*m.b276 + 12*m.b277 + 18*m.b278 + 36*m.b279 + 52*m.b280
                         + 78*m.b281 + 156*m.b282 == 0)

m.c29 = Constraint(expr= - m.x27 + 3*m.b283 + 6*m.b284 + 9*m.b285 + 12*m.b286 + 18*m.b287 + 36*m.b288 + 52*m.b289
                         + 78*m.b290 + 156*m.b291 == 0)

m.c30 = Constraint(expr= - m.x28 + 3*m.b292 + 6*m.b293 + 9*m.b294 + 12*m.b295 + 18*m.b296 + 36*m.b297 + 52*m.b298
                         + 78*m.b299 + 156*m.b300 == 0)

m.c31 = Constraint(expr= - m.x29 + 3*m.b301 + 6*m.b302 + 9*m.b303 + 12*m.b304 + 18*m.b305 + 36*m.b306 + 52*m.b307
                         + 78*m.b308 + 156*m.b309 == 0)

m.c32 = Constraint(expr= - m.x30 + 3*m.b310 + 6*m.b311 + 9*m.b312 + 12*m.b313 + 18*m.b314 + 36*m.b315 + 52*m.b316
                         + 78*m.b317 + 156*m.b318 == 0)

m.c33 = Constraint(expr= - m.x31 + 3*m.b319 + 6*m.b320 + 9*m.b321 + 12*m.b322 + 18*m.b323 + 36*m.b324 + 52*m.b325
                         + 78*m.b326 + 156*m.b327 == 0)

m.c34 = Constraint(expr= - m.x32 + 3*m.b328 + 6*m.b329 + 9*m.b330 + 12*m.b331 + 18*m.b332 + 36*m.b333 + 52*m.b334
                         + 78*m.b335 + 156*m.b336 == 0)

m.c35 = Constraint(expr= - m.x33 + 3*m.b337 + 6*m.b338 + 9*m.b339 + 12*m.b340 + 18*m.b341 + 36*m.b342 + 52*m.b343
                         + 78*m.b344 + 156*m.b345 == 0)

m.c36 = Constraint(expr= - m.x34 + 3*m.b346 + 6*m.b347 + 9*m.b348 + 12*m.b349 + 18*m.b350 + 36*m.b351 + 52*m.b352
                         + 78*m.b353 + 156*m.b354 == 0)

m.c37 = Constraint(expr= - m.x35 + 3*m.b355 + 6*m.b356 + 9*m.b357 + 12*m.b358 + 18*m.b359 + 36*m.b360 + 52*m.b361
                         + 78*m.b362 + 156*m.b363 == 0)

m.c38 = Constraint(expr= - m.x36 + 3*m.b364 + 6*m.b365 + 9*m.b366 + 12*m.b367 + 18*m.b368 + 36*m.b369 + 52*m.b370
                         + 78*m.b371 + 156*m.b372 == 0)

m.c39 = Constraint(expr= - m.x37 + 3*m.b373 + 6*m.b374 + 9*m.b375 + 12*m.b376 + 18*m.b377 + 36*m.b378 + 52*m.b379
                         + 78*m.b380 + 156*m.b381 == 0)

m.c40 = Constraint(expr= - m.x38 + 3*m.b382 + 6*m.b383 + 9*m.b384 + 12*m.b385 + 18*m.b386 + 36*m.b387 + 52*m.b388
                         + 78*m.b389 + 156*m.b390 == 0)

m.c41 = Constraint(expr= - m.x39 + 3*m.b391 + 6*m.b392 + 9*m.b393 + 12*m.b394 + 18*m.b395 + 36*m.b396 + 52*m.b397
                         + 78*m.b398 + 156*m.b399 == 0)

m.c42 = Constraint(expr= - m.x40 + 3*m.b400 + 6*m.b401 + 9*m.b402 + 12*m.b403 + 18*m.b404 + 36*m.b405 + 52*m.b406
                         + 78*m.b407 + 156*m.b408 == 0)

m.c43 = Constraint(expr= - m.x41 + 3*m.b409 + 6*m.b410 + 9*m.b411 + 12*m.b412 + 18*m.b413 + 36*m.b414 + 52*m.b415
                         + 78*m.b416 + 156*m.b417 == 0)

m.c44 = Constraint(expr= - m.x42 + 3*m.b418 + 6*m.b419 + 9*m.b420 + 12*m.b421 + 18*m.b422 + 36*m.b423 + 52*m.b424
                         + 78*m.b425 + 156*m.b426 == 0)

m.c45 = Constraint(expr= - m.x43 + 3*m.b427 + 6*m.b428 + 9*m.b429 + 12*m.b430 + 18*m.b431 + 36*m.b432 + 52*m.b433
                         + 78*m.b434 + 156*m.b435 == 0)

m.c46 = Constraint(expr= - m.x44 + 3*m.b436 + 6*m.b437 + 9*m.b438 + 12*m.b439 + 18*m.b440 + 36*m.b441 + 52*m.b442
                         + 78*m.b443 + 156*m.b444 == 0)

m.c47 = Constraint(expr= - m.x45 + 3*m.b445 + 6*m.b446 + 9*m.b447 + 12*m.b448 + 18*m.b449 + 36*m.b450 + 52*m.b451
                         + 78*m.b452 + 156*m.b453 == 0)

m.c48 = Constraint(expr= - m.x46 + 3*m.b454 + 6*m.b455 + 9*m.b456 + 12*m.b457 + 18*m.b458 + 36*m.b459 + 52*m.b460
                         + 78*m.b461 + 156*m.b462 == 0)

m.c49 = Constraint(expr= - m.x47 + 3*m.b463 + 6*m.b464 + 9*m.b465 + 12*m.b466 + 18*m.b467 + 36*m.b468 + 52*m.b469
                         + 78*m.b470 + 156*m.b471 == 0)

m.c50 = Constraint(expr= - m.x48 + 3*m.b472 + 6*m.b473 + 9*m.b474 + 12*m.b475 + 18*m.b476 + 36*m.b477 + 52*m.b478
                         + 78*m.b479 + 156*m.b480 == 0)

m.c51 = Constraint(expr=   m.b49 + m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 == 1)

m.c52 = Constraint(expr=   m.b58 + m.b59 + m.b60 + m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 == 1)

m.c53 = Constraint(expr=   m.b67 + m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73 + m.b74 + m.b75 == 1)

m.c54 = Constraint(expr=   m.b76 + m.b77 + m.b78 + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 + m.b84 == 1)

m.c55 = Constraint(expr=   m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 + m.b91 + m.b92 + m.b93 == 1)

m.c56 = Constraint(expr=   m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 + m.b101 + m.b102 == 1)

m.c57 = Constraint(expr=   m.b103 + m.b104 + m.b105 + m.b106 + m.b107 + m.b108 + m.b109 + m.b110 + m.b111 == 1)

m.c58 = Constraint(expr=   m.b112 + m.b113 + m.b114 + m.b115 + m.b116 + m.b117 + m.b118 + m.b119 + m.b120 == 1)

m.c59 = Constraint(expr=   m.b121 + m.b122 + m.b123 + m.b124 + m.b125 + m.b126 + m.b127 + m.b128 + m.b129 == 1)

m.c60 = Constraint(expr=   m.b130 + m.b131 + m.b132 + m.b133 + m.b134 + m.b135 + m.b136 + m.b137 + m.b138 == 1)

m.c61 = Constraint(expr=   m.b139 + m.b140 + m.b141 + m.b142 + m.b143 + m.b144 + m.b145 + m.b146 + m.b147 == 1)

m.c62 = Constraint(expr=   m.b148 + m.b149 + m.b150 + m.b151 + m.b152 + m.b153 + m.b154 + m.b155 + m.b156 == 1)

m.c63 = Constraint(expr=   m.b157 + m.b158 + m.b159 + m.b160 + m.b161 + m.b162 + m.b163 + m.b164 + m.b165 == 1)

m.c64 = Constraint(expr=   m.b166 + m.b167 + m.b168 + m.b169 + m.b170 + m.b171 + m.b172 + m.b173 + m.b174 == 1)

m.c65 = Constraint(expr=   m.b175 + m.b176 + m.b177 + m.b178 + m.b179 + m.b180 + m.b181 + m.b182 + m.b183 == 1)

m.c66 = Constraint(expr=   m.b184 + m.b185 + m.b186 + m.b187 + m.b188 + m.b189 + m.b190 + m.b191 + m.b192 == 1)

m.c67 = Constraint(expr=   m.b193 + m.b194 + m.b195 + m.b196 + m.b197 + m.b198 + m.b199 + m.b200 + m.b201 == 1)

m.c68 = Constraint(expr=   m.b202 + m.b203 + m.b204 + m.b205 + m.b206 + m.b207 + m.b208 + m.b209 + m.b210 == 1)

m.c69 = Constraint(expr=   m.b211 + m.b212 + m.b213 + m.b214 + m.b215 + m.b216 + m.b217 + m.b218 + m.b219 == 1)

m.c70 = Constraint(expr=   m.b220 + m.b221 + m.b222 + m.b223 + m.b224 + m.b225 + m.b226 + m.b227 + m.b228 == 1)

m.c71 = Constraint(expr=   m.b229 + m.b230 + m.b231 + m.b232 + m.b233 + m.b234 + m.b235 + m.b236 + m.b237 == 1)

m.c72 = Constraint(expr=   m.b238 + m.b239 + m.b240 + m.b241 + m.b242 + m.b243 + m.b244 + m.b245 + m.b246 == 1)

m.c73 = Constraint(expr=   m.b247 + m.b248 + m.b249 + m.b250 + m.b251 + m.b252 + m.b253 + m.b254 + m.b255 == 1)

m.c74 = Constraint(expr=   m.b256 + m.b257 + m.b258 + m.b259 + m.b260 + m.b261 + m.b262 + m.b263 + m.b264 == 1)

m.c75 = Constraint(expr=   m.b265 + m.b266 + m.b267 + m.b268 + m.b269 + m.b270 + m.b271 + m.b272 + m.b273 == 1)

m.c76 = Constraint(expr=   m.b274 + m.b275 + m.b276 + m.b277 + m.b278 + m.b279 + m.b280 + m.b281 + m.b282 == 1)

m.c77 = Constraint(expr=   m.b283 + m.b284 + m.b285 + m.b286 + m.b287 + m.b288 + m.b289 + m.b290 + m.b291 == 1)

m.c78 = Constraint(expr=   m.b292 + m.b293 + m.b294 + m.b295 + m.b296 + m.b297 + m.b298 + m.b299 + m.b300 == 1)

m.c79 = Constraint(expr=   m.b301 + m.b302 + m.b303 + m.b304 + m.b305 + m.b306 + m.b307 + m.b308 + m.b309 == 1)

m.c80 = Constraint(expr=   m.b310 + m.b311 + m.b312 + m.b313 + m.b314 + m.b315 + m.b316 + m.b317 + m.b318 == 1)

m.c81 = Constraint(expr=   m.b319 + m.b320 + m.b321 + m.b322 + m.b323 + m.b324 + m.b325 + m.b326 + m.b327 == 1)

m.c82 = Constraint(expr=   m.b328 + m.b329 + m.b330 + m.b331 + m.b332 + m.b333 + m.b334 + m.b335 + m.b336 == 1)

m.c83 = Constraint(expr=   m.b337 + m.b338 + m.b339 + m.b340 + m.b341 + m.b342 + m.b343 + m.b344 + m.b345 == 1)

m.c84 = Constraint(expr=   m.b346 + m.b347 + m.b348 + m.b349 + m.b350 + m.b351 + m.b352 + m.b353 + m.b354 == 1)

m.c85 = Constraint(expr=   m.b355 + m.b356 + m.b357 + m.b358 + m.b359 + m.b360 + m.b361 + m.b362 + m.b363 == 1)

m.c86 = Constraint(expr=   m.b364 + m.b365 + m.b366 + m.b367 + m.b368 + m.b369 + m.b370 + m.b371 + m.b372 == 1)

m.c87 = Constraint(expr=   m.b373 + m.b374 + m.b375 + m.b376 + m.b377 + m.b378 + m.b379 + m.b380 + m.b381 == 1)

m.c88 = Constraint(expr=   m.b382 + m.b383 + m.b384 + m.b385 + m.b386 + m.b387 + m.b388 + m.b389 + m.b390 == 1)

m.c89 = Constraint(expr=   m.b391 + m.b392 + m.b393 + m.b394 + m.b395 + m.b396 + m.b397 + m.b398 + m.b399 == 1)

m.c90 = Constraint(expr=   m.b400 + m.b401 + m.b402 + m.b403 + m.b404 + m.b405 + m.b406 + m.b407 + m.b408 == 1)

m.c91 = Constraint(expr=   m.b409 + m.b410 + m.b411 + m.b412 + m.b413 + m.b414 + m.b415 + m.b416 + m.b417 == 1)

m.c92 = Constraint(expr=   m.b418 + m.b419 + m.b420 + m.b421 + m.b422 + m.b423 + m.b424 + m.b425 + m.b426 == 1)

m.c93 = Constraint(expr=   m.b427 + m.b428 + m.b429 + m.b430 + m.b431 + m.b432 + m.b433 + m.b434 + m.b435 == 1)

m.c94 = Constraint(expr=   m.b436 + m.b437 + m.b438 + m.b439 + m.b440 + m.b441 + m.b442 + m.b443 + m.b444 == 1)

m.c95 = Constraint(expr=   m.b445 + m.b446 + m.b447 + m.b448 + m.b449 + m.b450 + m.b451 + m.b452 + m.b453 == 1)

m.c96 = Constraint(expr=   m.b454 + m.b455 + m.b456 + m.b457 + m.b458 + m.b459 + m.b460 + m.b461 + m.b462 == 1)

m.c97 = Constraint(expr=   m.b463 + m.b464 + m.b465 + m.b466 + m.b467 + m.b468 + m.b469 + m.b470 + m.b471 == 1)

m.c98 = Constraint(expr=   m.b472 + m.b473 + m.b474 + m.b475 + m.b476 + m.b477 + m.b478 + m.b479 + m.b480 == 1)
