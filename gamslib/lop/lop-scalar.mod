#  MIP written by GAMS Convert at 12/13/18 10:32:28
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


var x1 := 2, >= 2, <= 100;
var x2 := 1, >= 1, <= 100;
var x3 := 1, >= 1, <= 100;
var x4 := 1, >= 1, <= 100;
var x5 := 1, >= 1, <= 100;
var x6 := 1, >= 1, <= 100;
var x7 := 1, >= 1, <= 100;
var x8 := 1, >= 1, <= 100;
var x9 := 1, >= 1, <= 100;
var x10 := 1, >= 1, <= 100;
var x11 := 1, >= 1, <= 100;
var x12 := 3, >= 3, <= 100;
var x13 := 3, >= 3, <= 100;
var x14 := 1, >= 1, <= 100;
var x15 := 1, >= 1, <= 100;
var x16 := 1, >= 1, <= 100;
var x17 := 2, >= 2, <= 100;
var x18 := 1, >= 1, <= 100;
var x19 := 3, >= 3, <= 100;
var x20 := 1, >= 1, <= 100;
var x21 := 2, >= 2, <= 100;
var x22 := 1, >= 1, <= 100;
var x23 := 1, >= 1, <= 100;
var x24 := 2, >= 2, <= 100;
var x25 := 2, >= 2, <= 100;
var x26 := 1, >= 1, <= 100;
var x27 := 2, >= 2, <= 100;
var x28 := 2, >= 2, <= 100;
var x29 := 1, >= 1, <= 100;
var x30 := 1, >= 1, <= 100;
var x31 := 1, >= 1, <= 100;
var b33 binary >= 0, <= 1;
var b34 binary >= 0, <= 1;
var b35 binary >= 0, <= 1;
var b36 binary >= 0, <= 1;
var b37 binary >= 0, <= 1;
var b38 binary >= 0, <= 1;
var b39 binary >= 0, <= 1;
var b40 binary >= 0, <= 1;
var b41 binary >= 0, <= 1;
var b42 binary >= 0, <= 1;
var b43 binary >= 0, <= 1;
var b44 binary >= 0, <= 1;
var b45 binary >= 0, <= 1;
var b46 binary >= 0, <= 1;
var b47 binary >= 0, <= 1;
var b48 binary >= 0, <= 1;
var b49 binary >= 0, <= 1;
var b50 binary >= 0, <= 1;
var b51 binary >= 0, <= 1;
var b52 binary >= 0, <= 1;
var b53 binary >= 0, <= 1;
var b54 binary >= 0, <= 1;
var b55 binary >= 0, <= 1;
var b56 binary >= 0, <= 1;
var b57 binary >= 0, <= 1;
var b58 binary >= 0, <= 1;
var b59 binary >= 0, <= 1;
var b60 binary >= 0, <= 1;
var b61 binary >= 0, <= 1;
var b62 binary >= 0, <= 1;
var b63 binary >= 0, <= 1;
var b64 binary >= 0, <= 1;
var b65 binary >= 0, <= 1;
var b66 binary >= 0, <= 1;
var b67 binary >= 0, <= 1;
var b68 binary >= 0, <= 1;
var b69 binary >= 0, <= 1;
var b70 binary >= 0, <= 1;
var b71 binary >= 0, <= 1;
var b72 binary >= 0, <= 1;
var b73 binary >= 0, <= 1;
var b74 binary >= 0, <= 1;
var b75 binary >= 0, <= 1;
var b76 binary >= 0, <= 1;
var b77 binary >= 0, <= 1;
var b78 binary >= 0, <= 1;
var b79 binary >= 0, <= 1;
var b80 binary >= 0, <= 1;
var b81 binary >= 0, <= 1;
var b82 binary >= 0, <= 1;
var b83 binary >= 0, <= 1;
var b84 binary >= 0, <= 1;
var b85 binary >= 0, <= 1;
var b86 binary >= 0, <= 1;
var b87 binary >= 0, <= 1;
var b88 binary >= 0, <= 1;
var b89 binary >= 0, <= 1;
var b90 binary >= 0, <= 1;
var b91 binary >= 0, <= 1;
var b92 binary >= 0, <= 1;
var b93 binary >= 0, <= 1;
var b94 binary >= 0, <= 1;
var b95 binary >= 0, <= 1;
var b96 binary >= 0, <= 1;
var b97 binary >= 0, <= 1;
var b98 binary >= 0, <= 1;
var b99 binary >= 0, <= 1;
var b100 binary >= 0, <= 1;
var b101 binary >= 0, <= 1;
var b102 binary >= 0, <= 1;
var b103 binary >= 0, <= 1;
var b104 binary >= 0, <= 1;
var b105 binary >= 0, <= 1;
var b106 binary >= 0, <= 1;
var b107 binary >= 0, <= 1;
var b108 binary >= 0, <= 1;
var b109 binary >= 0, <= 1;
var b110 binary >= 0, <= 1;
var b111 binary >= 0, <= 1;
var b112 binary >= 0, <= 1;
var b113 binary >= 0, <= 1;
var b114 binary >= 0, <= 1;
var b115 binary >= 0, <= 1;
var b116 binary >= 0, <= 1;
var b117 binary >= 0, <= 1;
var b118 binary >= 0, <= 1;
var b119 binary >= 0, <= 1;
var b120 binary >= 0, <= 1;
var b121 binary >= 0, <= 1;
var b122 binary >= 0, <= 1;
var b123 binary >= 0, <= 1;
var b124 binary >= 0, <= 1;
var b125 binary >= 0, <= 1;
var b126 binary >= 0, <= 1;
var b127 binary >= 0, <= 1;
var b128 binary >= 0, <= 1;
var b129 binary >= 0, <= 1;
var b130 binary >= 0, <= 1;
var b131 binary >= 0, <= 1;
var b132 binary >= 0, <= 1;
var b133 binary >= 0, <= 1;
var b134 binary >= 0, <= 1;
var b135 binary >= 0, <= 1;
var b136 binary >= 0, <= 1;
var b137 binary >= 0, <= 1;
var b138 binary >= 0, <= 1;
var b139 binary >= 0, <= 1;
var b140 binary >= 0, <= 1;
var b141 binary >= 0, <= 1;
var b142 binary >= 0, <= 1;
var b143 binary >= 0, <= 1;
var b144 binary >= 0, <= 1;
var b145 binary >= 0, <= 1;
var b146 binary >= 0, <= 1;
var b147 binary >= 0, <= 1;
var b148 binary >= 0, <= 1;
var b149 binary >= 0, <= 1;
var b150 binary >= 0, <= 1;
var b151 binary >= 0, <= 1;
var b152 binary >= 0, <= 1;
var b153 binary >= 0, <= 1;
var b154 binary >= 0, <= 1;
var b155 binary >= 0, <= 1;
var b156 binary >= 0, <= 1;
var b157 binary >= 0, <= 1;
var b158 binary >= 0, <= 1;
var b159 binary >= 0, <= 1;
var b160 binary >= 0, <= 1;
var b161 binary >= 0, <= 1;
var b162 binary >= 0, <= 1;
var b163 binary >= 0, <= 1;
var b164 binary >= 0, <= 1;
var b165 binary >= 0, <= 1;
var b166 binary >= 0, <= 1;
var b167 binary >= 0, <= 1;
var b168 binary >= 0, <= 1;
var b169 binary >= 0, <= 1;
var b170 binary >= 0, <= 1;
var b171 binary >= 0, <= 1;
var b172 binary >= 0, <= 1;
var b173 binary >= 0, <= 1;
var b174 binary >= 0, <= 1;
var b175 binary >= 0, <= 1;
var b176 binary >= 0, <= 1;
var b177 binary >= 0, <= 1;
var b178 binary >= 0, <= 1;
var b179 binary >= 0, <= 1;
var b180 binary >= 0, <= 1;
var b181 binary >= 0, <= 1;
var b182 binary >= 0, <= 1;
var b183 binary >= 0, <= 1;
var b184 binary >= 0, <= 1;
var b185 binary >= 0, <= 1;
var b186 binary >= 0, <= 1;
var b187 binary >= 0, <= 1;
var b188 binary >= 0, <= 1;
var b189 binary >= 0, <= 1;
var b190 binary >= 0, <= 1;
var b191 binary >= 0, <= 1;
var b192 binary >= 0, <= 1;
var b193 binary >= 0, <= 1;
var b194 binary >= 0, <= 1;
var b195 binary >= 0, <= 1;
var b196 binary >= 0, <= 1;
var b197 binary >= 0, <= 1;
var b198 binary >= 0, <= 1;
var b199 binary >= 0, <= 1;
var b200 binary >= 0, <= 1;
var b201 binary >= 0, <= 1;
var b202 binary >= 0, <= 1;
var b203 binary >= 0, <= 1;
var b204 binary >= 0, <= 1;
var b205 binary >= 0, <= 1;
var b206 binary >= 0, <= 1;
var b207 binary >= 0, <= 1;
var b208 binary >= 0, <= 1;
var b209 binary >= 0, <= 1;
var b210 binary >= 0, <= 1;
var b211 binary >= 0, <= 1;
var b212 binary >= 0, <= 1;
var b213 binary >= 0, <= 1;
var b214 binary >= 0, <= 1;
var b215 binary >= 0, <= 1;
var b216 binary >= 0, <= 1;
var b217 binary >= 0, <= 1;
var b218 binary >= 0, <= 1;
var b219 binary >= 0, <= 1;
var b220 binary >= 0, <= 1;
var b221 binary >= 0, <= 1;
var b222 binary >= 0, <= 1;
var b223 binary >= 0, <= 1;
var b224 binary >= 0, <= 1;
var b225 binary >= 0, <= 1;
var b226 binary >= 0, <= 1;
var b227 binary >= 0, <= 1;
var b228 binary >= 0, <= 1;
var b229 binary >= 0, <= 1;
var b230 binary >= 0, <= 1;
var b231 binary >= 0, <= 1;
var b232 binary >= 0, <= 1;
var b233 binary >= 0, <= 1;
var b234 binary >= 0, <= 1;
var b235 binary >= 0, <= 1;
var b236 binary >= 0, <= 1;
var b237 binary >= 0, <= 1;
var b238 binary >= 0, <= 1;
var b239 binary >= 0, <= 1;
var b240 binary >= 0, <= 1;
var b241 binary >= 0, <= 1;
var b242 binary >= 0, <= 1;
var b243 binary >= 0, <= 1;
var b244 binary >= 0, <= 1;
var b245 binary >= 0, <= 1;
var b246 binary >= 0, <= 1;
var b247 binary >= 0, <= 1;
var b248 binary >= 0, <= 1;
var b249 binary >= 0, <= 1;
var b250 binary >= 0, <= 1;
var b251 binary >= 0, <= 1;
var b252 binary >= 0, <= 1;
var b253 binary >= 0, <= 1;
var b254 binary >= 0, <= 1;
var b255 binary >= 0, <= 1;
var b256 binary >= 0, <= 1;
var b257 binary >= 0, <= 1;
var b258 binary >= 0, <= 1;
var b259 binary >= 0, <= 1;
var b260 binary >= 0, <= 1;
var b261 binary >= 0, <= 1;
var b262 binary >= 0, <= 1;
var b263 binary >= 0, <= 1;
var b264 binary >= 0, <= 1;
var b265 binary >= 0, <= 1;
var b266 binary >= 0, <= 1;
var b267 binary >= 0, <= 1;
var b268 binary >= 0, <= 1;
var b269 binary >= 0, <= 1;
var b270 binary >= 0, <= 1;
var b271 binary >= 0, <= 1;
var b272 binary >= 0, <= 1;
var b273 binary >= 0, <= 1;
var b274 binary >= 0, <= 1;
var b275 binary >= 0, <= 1;
var b276 binary >= 0, <= 1;
var b277 binary >= 0, <= 1;
var b278 binary >= 0, <= 1;
var b279 binary >= 0, <= 1;
var b280 binary >= 0, <= 1;
var b281 binary >= 0, <= 1;
var b282 binary >= 0, <= 1;
var b283 binary >= 0, <= 1;
var b284 binary >= 0, <= 1;
var b285 binary >= 0, <= 1;
var b286 binary >= 0, <= 1;
var b287 binary >= 0, <= 1;
var b288 binary >= 0, <= 1;
var b289 binary >= 0, <= 1;
var b290 binary >= 0, <= 1;
var b291 binary >= 0, <= 1;
var b292 binary >= 0, <= 1;
var b293 binary >= 0, <= 1;
var b294 binary >= 0, <= 1;
var b295 binary >= 0, <= 1;
var b296 binary >= 0, <= 1;
var b297 binary >= 0, <= 1;
var b298 binary >= 0, <= 1;
var b299 binary >= 0, <= 1;
var b300 binary >= 0, <= 1;
var b301 binary >= 0, <= 1;
var b302 binary >= 0, <= 1;
var b303 binary >= 0, <= 1;
var b304 binary >= 0, <= 1;
var b305 binary >= 0, <= 1;
var b306 binary >= 0, <= 1;
var b307 binary >= 0, <= 1;
var b308 binary >= 0, <= 1;
var b309 binary >= 0, <= 1;
var b310 binary >= 0, <= 1;
var b311 binary >= 0, <= 1;
var b312 binary >= 0, <= 1;
var b313 binary >= 0, <= 1;
var b314 binary >= 0, <= 1;
var b315 binary >= 0, <= 1;
var b316 binary >= 0, <= 1;
var b317 binary >= 0, <= 1;
var b318 binary >= 0, <= 1;
var b319 binary >= 0, <= 1;
var b320 binary >= 0, <= 1;
var b321 binary >= 0, <= 1;
var b322 binary >= 0, <= 1;
var b323 binary >= 0, <= 1;
var b324 binary >= 0, <= 1;
var b325 binary >= 0, <= 1;
var b326 binary >= 0, <= 1;
var b327 binary >= 0, <= 1;
var b328 binary >= 0, <= 1;
var b329 binary >= 0, <= 1;
var b330 binary >= 0, <= 1;
var b331 binary >= 0, <= 1;
var b332 binary >= 0, <= 1;
var b333 binary >= 0, <= 1;
var b334 binary >= 0, <= 1;
var b335 binary >= 0, <= 1;
var b336 binary >= 0, <= 1;
var b337 binary >= 0, <= 1;
var b338 binary >= 0, <= 1;
var b339 binary >= 0, <= 1;
var b340 binary >= 0, <= 1;
var b341 binary >= 0, <= 1;
var b342 binary >= 0, <= 1;
var b343 binary >= 0, <= 1;
var b344 binary >= 0, <= 1;
var b345 binary >= 0, <= 1;
var b346 binary >= 0, <= 1;
var b347 binary >= 0, <= 1;
var b348 binary >= 0, <= 1;
var b349 binary >= 0, <= 1;
var b350 binary >= 0, <= 1;
var b351 binary >= 0, <= 1;
var b352 binary >= 0, <= 1;
var b353 binary >= 0, <= 1;
var b354 binary >= 0, <= 1;
var b355 binary >= 0, <= 1;
var b356 binary >= 0, <= 1;
var b357 binary >= 0, <= 1;
var b358 binary >= 0, <= 1;
var b359 binary >= 0, <= 1;
var b360 binary >= 0, <= 1;
var b361 binary >= 0, <= 1;
var b362 binary >= 0, <= 1;
var b363 binary >= 0, <= 1;
var b364 binary >= 0, <= 1;
var b365 binary >= 0, <= 1;
var b366 binary >= 0, <= 1;
var b367 binary >= 0, <= 1;
var b368 binary >= 0, <= 1;
var b369 binary >= 0, <= 1;
var b370 binary >= 0, <= 1;
var b371 binary >= 0, <= 1;
var b372 binary >= 0, <= 1;
var b373 binary >= 0, <= 1;
var b374 binary >= 0, <= 1;
var b375 binary >= 0, <= 1;
var b376 binary >= 0, <= 1;
var b377 binary >= 0, <= 1;
var b378 binary >= 0, <= 1;
var b379 binary >= 0, <= 1;
var b380 binary >= 0, <= 1;
var b381 binary >= 0, <= 1;
var b382 binary >= 0, <= 1;
var b383 binary >= 0, <= 1;
var b384 binary >= 0, <= 1;
var b385 binary >= 0, <= 1;
var b386 binary >= 0, <= 1;
var b387 binary >= 0, <= 1;
var b388 binary >= 0, <= 1;
var b389 binary >= 0, <= 1;
var b390 binary >= 0, <= 1;
var b391 binary >= 0, <= 1;
var b392 binary >= 0, <= 1;
var b393 binary >= 0, <= 1;
var b394 binary >= 0, <= 1;
var b395 binary >= 0, <= 1;
var b396 binary >= 0, <= 1;
var b397 binary >= 0, <= 1;
var b398 binary >= 0, <= 1;
var b399 binary >= 0, <= 1;
var b400 binary >= 0, <= 1;
var b401 binary >= 0, <= 1;
var b402 binary >= 0, <= 1;
var b403 binary >= 0, <= 1;
var b404 binary >= 0, <= 1;
var b405 binary >= 0, <= 1;
var b406 binary >= 0, <= 1;
var b407 binary >= 0, <= 1;
var b408 binary >= 0, <= 1;
var b409 binary >= 0, <= 1;
var b410 binary >= 0, <= 1;
var b411 binary >= 0, <= 1;
var b412 binary >= 0, <= 1;
var b413 binary >= 0, <= 1;
var b414 binary >= 0, <= 1;
var b415 binary >= 0, <= 1;
var b416 binary >= 0, <= 1;
var b417 binary >= 0, <= 1;
var b418 binary >= 0, <= 1;
var b419 binary >= 0, <= 1;
var b420 binary >= 0, <= 1;
var b421 binary >= 0, <= 1;
var b422 binary >= 0, <= 1;
var b423 binary >= 0, <= 1;
var b424 binary >= 0, <= 1;
var b425 binary >= 0, <= 1;
var b426 binary >= 0, <= 1;
var b427 binary >= 0, <= 1;
var b428 binary >= 0, <= 1;
var b429 binary >= 0, <= 1;
var b430 binary >= 0, <= 1;
var b431 binary >= 0, <= 1;
var b432 binary >= 0, <= 1;
var b433 binary >= 0, <= 1;
var b434 binary >= 0, <= 1;
var b435 binary >= 0, <= 1;
var b436 binary >= 0, <= 1;
var b437 binary >= 0, <= 1;
var b438 binary >= 0, <= 1;
var b439 binary >= 0, <= 1;
var b440 binary >= 0, <= 1;
var b441 binary >= 0, <= 1;
var b442 binary >= 0, <= 1;
var b443 binary >= 0, <= 1;
var b444 binary >= 0, <= 1;
var b445 binary >= 0, <= 1;
var b446 binary >= 0, <= 1;
var b447 binary >= 0, <= 1;
var b448 binary >= 0, <= 1;
var b449 binary >= 0, <= 1;
var b450 binary >= 0, <= 1;
var b451 binary >= 0, <= 1;
var b452 binary >= 0, <= 1;
var b453 binary >= 0, <= 1;
var b454 binary >= 0, <= 1;
var b455 binary >= 0, <= 1;
var b456 binary >= 0, <= 1;
var b457 binary >= 0, <= 1;
var b458 binary >= 0, <= 1;
var b459 binary >= 0, <= 1;
var b460 binary >= 0, <= 1;
var b461 binary >= 0, <= 1;
var b462 binary >= 0, <= 1;
var b463 binary >= 0, <= 1;
var b464 binary >= 0, <= 1;
var b465 binary >= 0, <= 1;
var b466 binary >= 0, <= 1;
var b467 binary >= 0, <= 1;
var b468 binary >= 0, <= 1;
var b469 binary >= 0, <= 1;
var b470 binary >= 0, <= 1;
var b471 binary >= 0, <= 1;
var b472 binary >= 0, <= 1;
var b473 binary >= 0, <= 1;
var b474 binary >= 0, <= 1;
var b475 binary >= 0, <= 1;
var b476 binary >= 0, <= 1;
var b477 binary >= 0, <= 1;
var b478 binary >= 0, <= 1;
var b479 binary >= 0, <= 1;
var b480 binary >= 0, <= 1;
var b481 binary >= 0, <= 1;
var b482 binary >= 0, <= 1;
var b483 binary >= 0, <= 1;
var b484 binary >= 0, <= 1;
var b485 binary >= 0, <= 1;
var b486 binary >= 0, <= 1;
var b487 binary >= 0, <= 1;
var b488 binary >= 0, <= 1;
var b489 binary >= 0, <= 1;
var b490 binary >= 0, <= 1;
var b491 binary >= 0, <= 1;
var b492 binary >= 0, <= 1;
var b493 binary >= 0, <= 1;
var b494 binary >= 0, <= 1;
var b495 binary >= 0, <= 1;
var b496 binary >= 0, <= 1;
var b497 binary >= 0, <= 1;
var b498 binary >= 0, <= 1;
var b499 binary >= 0, <= 1;
var b500 binary >= 0, <= 1;
var b501 binary >= 0, <= 1;
var b502 binary >= 0, <= 1;
var b503 binary >= 0, <= 1;
var b504 binary >= 0, <= 1;
var b505 binary >= 0, <= 1;
var b506 binary >= 0, <= 1;
var b507 binary >= 0, <= 1;
var b508 binary >= 0, <= 1;
var b509 binary >= 0, <= 1;
var b510 binary >= 0, <= 1;
var b511 binary >= 0, <= 1;
var b512 binary >= 0, <= 1;
var b513 binary >= 0, <= 1;
var b514 binary >= 0, <= 1;
var b515 binary >= 0, <= 1;
var b516 binary >= 0, <= 1;
var b517 binary >= 0, <= 1;
var b518 binary >= 0, <= 1;
var b519 binary >= 0, <= 1;
var b520 binary >= 0, <= 1;
var b521 binary >= 0, <= 1;
var b522 binary >= 0, <= 1;
var b523 binary >= 0, <= 1;
var b524 binary >= 0, <= 1;
var b525 binary >= 0, <= 1;
var b526 binary >= 0, <= 1;
var b527 binary >= 0, <= 1;
var b528 binary >= 0, <= 1;
var b529 binary >= 0, <= 1;
var b530 binary >= 0, <= 1;
var b531 binary >= 0, <= 1;
var b532 binary >= 0, <= 1;
var b533 binary >= 0, <= 1;
var b534 binary >= 0, <= 1;
var b535 binary >= 0, <= 1;
var b536 binary >= 0, <= 1;
var b537 binary >= 0, <= 1;
var b538 binary >= 0, <= 1;
var i539 integer >= 0, <= 9;
var i540 integer >= 0, <= 9;
var i541 integer >= 0, <= 9;
var i542 integer >= 0, <= 9;
var i543 integer >= 0, <= 9;
var i544 integer >= 0, <= 9;
var i545 integer >= 0, <= 9;
var i546 integer >= 0, <= 9;
var i547 integer >= 0, <= 9;
var i548 integer >= 0, <= 9;
var i549 integer >= 0, <= 9;
var i550 integer >= 0, <= 9;
var i551 integer >= 0, <= 9;
var i552 integer >= 0, <= 9;
var i553 integer >= 0, <= 9;
var i554 integer >= 0, <= 9;
var i555 integer >= 0, <= 9;
var i556 integer >= 0, <= 9;
var i557 integer >= 0, <= 9;
var i558 integer >= 0, <= 9;
var i559 integer >= 0, <= 9;
var i560 integer >= 0, <= 9;
var i561 integer >= 0, <= 9;
var i562 integer >= 0, <= 9;
var i563 integer >= 0, <= 9;
var i564 integer >= 0, <= 9;
var i565 integer >= 0, <= 9;
var i566 integer >= 0, <= 9;
var i567 integer >= 0, <= 9;
var i568 integer >= 0, <= 9;
var i569 integer >= 0, <= 9;
var i570 integer >= 0, <= 9;
var i571 integer >= 0, <= 9;
var i572 integer >= 0, <= 9;
var i573 integer >= 0, <= 9;
var i574 integer >= 0, <= 9;
var i575 integer >= 0, <= 9;
var i576 integer >= 0, <= 9;
var i577 integer >= 0, <= 9;
var i578 integer >= 0, <= 9;
var i579 integer >= 0, <= 9;
var i580 integer >= 0, <= 9;
var i581 integer >= 0, <= 9;
var i582 integer >= 0, <= 9;
var i583 integer >= 0, <= 9;
var i584 integer >= 0, <= 9;
var i585 integer >= 0, <= 9;
var i586 integer >= 0, <= 9;
var i587 integer >= 0, <= 9;
var i588 integer >= 0, <= 9;
var i589 integer >= 0, <= 9;
var i590 integer >= 0, <= 9;
var i591 integer >= 0, <= 9;
var i592 integer >= 0, <= 9;
var i593 integer >= 0, <= 9;
var i594 integer >= 0, <= 9;
var i595 integer >= 0, <= 9;
var i596 integer >= 0, <= 9;
var i597 integer >= 0, <= 9;
var i598 integer >= 0, <= 9;
var i599 integer >= 0, <= 9;
var i600 integer >= 0, <= 9;
var i601 integer >= 0, <= 9;
var i602 integer >= 0, <= 9;
var i603 integer >= 0, <= 9;
var i604 integer >= 0, <= 9;
var i605 integer >= 0, <= 9;
var i606 integer >= 0, <= 9;
var i607 integer >= 0, <= 9;
var i608 integer >= 0, <= 9;
var i609 integer >= 0, <= 9;
var i610 integer >= 0, <= 9;
var i611 integer >= 0, <= 9;
var i612 integer >= 0, <= 9;
var i613 integer >= 0, <= 9;
var i614 integer >= 0, <= 9;
var i615 integer >= 0, <= 9;
var i616 integer >= 0, <= 9;
var i617 integer >= 0, <= 9;
var i618 integer >= 0, <= 9;
var i619 integer >= 0, <= 9;
var i620 integer >= 0, <= 9;
var i621 integer >= 0, <= 9;
var i622 integer >= 0, <= 9;
var i623 integer >= 0, <= 9;
var i624 integer >= 0, <= 9;
var i625 integer >= 0, <= 9;
var i626 integer >= 0, <= 9;
var i627 integer >= 0, <= 9;
var i628 integer >= 0, <= 9;
var i629 integer >= 0, <= 9;
var i630 integer >= 0, <= 9;
var i631 integer >= 0, <= 9;
var i632 integer >= 0, <= 9;
var i633 integer >= 0, <= 9;
var i634 integer >= 0, <= 9;
var i635 integer >= 0, <= 9;
var i636 integer >= 0, <= 9;
var i637 integer >= 0, <= 9;
var i638 integer >= 0, <= 9;
var i639 integer >= 0, <= 9;
var i640 integer >= 0, <= 9;
var i641 integer >= 0, <= 9;
var i642 integer >= 0, <= 9;
var i643 integer >= 0, <= 9;
var i644 integer >= 0, <= 9;
var i645 integer >= 0, <= 9;
var i646 integer >= 0, <= 9;
var i647 integer >= 0, <= 9;
var i648 integer >= 0, <= 9;
var i649 integer >= 0, <= 9;
var i650 integer >= 0, <= 9;
var i651 integer >= 0, <= 9;
var i652 integer >= 0, <= 9;
var i653 integer >= 0, <= 9;
var i654 integer >= 0, <= 9;
var i655 integer >= 0, <= 9;
var i656 integer >= 0, <= 9;
var i657 integer >= 0, <= 9;
var i658 integer >= 0, <= 9;
var i659 integer >= 0, <= 9;
var i660 integer >= 0, <= 9;
var i661 integer >= 0, <= 9;
var i662 integer >= 0, <= 9;
var i663 integer >= 0, <= 9;
var i664 integer >= 0, <= 9;
var i665 integer >= 0, <= 9;
var i666 integer >= 0, <= 9;
var i667 integer >= 0, <= 9;
var i668 integer >= 0, <= 9;
var i669 integer >= 0, <= 9;
var i670 integer >= 0, <= 9;
var i671 integer >= 0, <= 9;
var i672 integer >= 0, <= 9;
var i673 integer >= 0, <= 9;
var i674 integer >= 0, <= 9;
var i675 integer >= 0, <= 9;
var i676 integer >= 0, <= 9;
var i677 integer >= 0, <= 9;
var i678 integer >= 0, <= 9;
var i679 integer >= 0, <= 9;
var i680 integer >= 0, <= 9;
var i681 integer >= 0, <= 9;
var i682 integer >= 0, <= 9;
var i683 integer >= 0, <= 9;
var i684 integer >= 0, <= 9;
var i685 integer >= 0, <= 9;
var i686 integer >= 0, <= 9;
var i687 integer >= 0, <= 9;
var i688 integer >= 0, <= 9;
var i689 integer >= 0, <= 9;
var i690 integer >= 0, <= 9;
var i691 integer >= 0, <= 9;
var i692 integer >= 0, <= 9;
var i693 integer >= 0, <= 9;
var i694 integer >= 0, <= 9;
var i695 integer >= 0, <= 9;
var i696 integer >= 0, <= 9;
var i697 integer >= 0, <= 9;
var i698 integer >= 0, <= 9;
var i699 integer >= 0, <= 9;
var i700 integer >= 0, <= 9;
var i701 integer >= 0, <= 9;
var i702 integer >= 0, <= 9;
var i703 integer >= 0, <= 9;
var i704 integer >= 0, <= 9;
var i705 integer >= 0, <= 9;
var i706 integer >= 0, <= 9;
var i707 integer >= 0, <= 9;
var i708 integer >= 0, <= 9;
var i709 integer >= 0, <= 9;
var i710 integer >= 0, <= 9;
var i711 integer >= 0, <= 9;
var i712 integer >= 0, <= 9;
var i713 integer >= 0, <= 9;
var i714 integer >= 0, <= 9;
var i715 integer >= 0, <= 9;
var i716 integer >= 0, <= 9;
var i717 integer >= 0, <= 9;
var i718 integer >= 0, <= 9;
var i719 integer >= 0, <= 9;
var i720 integer >= 0, <= 9;
var i721 integer >= 0, <= 9;
var i722 integer >= 0, <= 9;
var i723 integer >= 0, <= 9;
var i724 integer >= 0, <= 9;
var i725 integer >= 0, <= 9;
var i726 integer >= 0, <= 9;
var i727 integer >= 0, <= 9;
var i728 integer >= 0, <= 9;
var i729 integer >= 0, <= 9;
var i730 integer >= 0, <= 9;
var i731 integer >= 0, <= 9;
var i732 integer >= 0, <= 9;
var i733 integer >= 0, <= 9;
var i734 integer >= 0, <= 9;
var i735 integer >= 0, <= 9;
var i736 integer >= 0, <= 9;
var i737 integer >= 0, <= 9;
var i738 integer >= 0, <= 9;
var i739 integer >= 0, <= 9;
var i740 integer >= 0, <= 9;
var i741 integer >= 0, <= 9;
var i742 integer >= 0, <= 9;
var i743 integer >= 0, <= 9;
var i744 integer >= 0, <= 9;
var i745 integer >= 0, <= 9;
var i746 integer >= 0, <= 9;
var i747 integer >= 0, <= 9;
var i748 integer >= 0, <= 9;
var i749 integer >= 0, <= 9;
var i750 integer >= 0, <= 9;
var i751 integer >= 0, <= 9;
var i752 integer >= 0, <= 9;
var i753 integer >= 0, <= 9;
var i754 integer >= 0, <= 9;
var i755 integer >= 0, <= 9;
var i756 integer >= 0, <= 9;
var i757 integer >= 0, <= 9;
var i758 integer >= 0, <= 9;
var i759 integer >= 0, <= 9;
var i760 integer >= 0, <= 9;
var i761 integer >= 0, <= 9;
var i762 integer >= 0, <= 9;
var i763 integer >= 0, <= 9;
var i764 integer >= 0, <= 9;
var i765 integer >= 0, <= 9;
var i766 integer >= 0, <= 9;
var i767 integer >= 0, <= 9;
var i768 integer >= 0, <= 9;
var i769 integer >= 0, <= 9;
var i770 integer >= 0, <= 9;
var i771 integer >= 0, <= 9;
var i772 integer >= 0, <= 9;
var i773 integer >= 0, <= 9;
var i774 integer >= 0, <= 9;
var i775 integer >= 0, <= 9;
var i776 integer >= 0, <= 9;
var i777 integer >= 0, <= 9;
var i778 integer >= 0, <= 9;
var i779 integer >= 0, <= 9;
var i780 integer >= 0, <= 9;
var i781 integer >= 0, <= 9;
var i782 integer >= 0, <= 9;
var i783 integer >= 0, <= 9;
var i784 integer >= 0, <= 9;
var i785 integer >= 0, <= 9;
var i786 integer >= 0, <= 9;
var i787 integer >= 0, <= 9;
var i788 integer >= 0, <= 9;
var i789 integer >= 0, <= 9;
var i790 integer >= 0, <= 9;
var i791 integer >= 0, <= 9;
var i792 integer >= 0, <= 9;
var i793 integer >= 0, <= 9;
var i794 integer >= 0, <= 9;
var i795 integer >= 0, <= 9;
var i796 integer >= 0, <= 9;
var i797 integer >= 0, <= 9;
var i798 integer >= 0, <= 9;
var i799 integer >= 0, <= 9;
var i800 integer >= 0, <= 9;
var i801 integer >= 0, <= 9;
var i802 integer >= 0, <= 9;
var i803 integer >= 0, <= 9;
var i804 integer >= 0, <= 9;
var i805 integer >= 0, <= 9;
var i806 integer >= 0, <= 9;
var i807 integer >= 0, <= 9;
var i808 integer >= 0, <= 9;
var i809 integer >= 0, <= 9;
var i810 integer >= 0, <= 9;
var i811 integer >= 0, <= 9;
var i812 integer >= 0, <= 9;
var i813 integer >= 0, <= 9;
var i814 integer >= 0, <= 9;
var i815 integer >= 0, <= 9;
var i816 integer >= 0, <= 9;
var i817 integer >= 0, <= 9;
var i818 integer >= 0, <= 9;
var i819 integer >= 0, <= 9;
var i820 integer >= 0, <= 9;
var i821 integer >= 0, <= 9;
var i822 integer >= 0, <= 9;
var i823 integer >= 0, <= 9;
var i824 integer >= 0, <= 9;
var i825 integer >= 0, <= 9;
var i826 integer >= 0, <= 9;
var i827 integer >= 0, <= 9;
var i828 integer >= 0, <= 9;
var i829 integer >= 0, <= 9;
var i830 integer >= 0, <= 9;
var i831 integer >= 0, <= 9;
var i832 integer >= 0, <= 9;
var i833 integer >= 0, <= 9;
var i834 integer >= 0, <= 9;
var i835 integer >= 0, <= 9;
var i836 integer >= 0, <= 9;
var i837 integer >= 0, <= 9;
var i838 integer >= 0, <= 9;
var i839 integer >= 0, <= 9;
var i840 integer >= 0, <= 9;
var i841 integer >= 0, <= 9;
var i842 integer >= 0, <= 9;
var i843 integer >= 0, <= 9;
var i844 integer >= 0, <= 9;
var i845 integer >= 0, <= 9;
var i846 integer >= 0, <= 9;
var i847 integer >= 0, <= 9;
var i848 integer >= 0, <= 9;
var i849 integer >= 0, <= 9;
var i850 integer >= 0, <= 9;
var i851 integer >= 0, <= 9;
var i852 integer >= 0, <= 9;
var i853 integer >= 0, <= 9;
var i854 integer >= 0, <= 9;
var i855 integer >= 0, <= 9;
var i856 integer >= 0, <= 9;
var i857 integer >= 0, <= 9;
var i858 integer >= 0, <= 9;
var i859 integer >= 0, <= 9;
var i860 integer >= 0, <= 9;
var i861 integer >= 0, <= 9;
var i862 integer >= 0, <= 9;
var i863 integer >= 0, <= 9;
var i864 integer >= 0, <= 9;
var i865 integer >= 0, <= 9;
var i866 integer >= 0, <= 9;
var i867 integer >= 0, <= 9;
var i868 integer >= 0, <= 9;
var i869 integer >= 0, <= 9;
var i870 integer >= 0, <= 9;
var i871 integer >= 0, <= 9;
var i872 integer >= 0, <= 9;
var i873 integer >= 0, <= 9;
var i874 integer >= 0, <= 9;
var i875 integer >= 0, <= 9;
var i876 integer >= 0, <= 9;
var i877 integer >= 0, <= 9;
var i878 integer >= 0, <= 9;
var i879 integer >= 0, <= 9;
var i880 integer >= 0, <= 9;
var i881 integer >= 0, <= 9;
var i882 integer >= 0, <= 9;
var i883 integer >= 0, <= 9;
var i884 integer >= 0, <= 9;
var i885 integer >= 0, <= 9;
var i886 integer >= 0, <= 9;
var i887 integer >= 0, <= 9;
var i888 integer >= 0, <= 9;
var i889 integer >= 0, <= 9;
var i890 integer >= 0, <= 9;
var i891 integer >= 0, <= 9;
var i892 integer >= 0, <= 9;
var i893 integer >= 0, <= 9;
var i894 integer >= 0, <= 9;
var i895 integer >= 0, <= 9;
var i896 integer >= 0, <= 9;
var i897 integer >= 0, <= 9;
var i898 integer >= 0, <= 9;
var i899 integer >= 0, <= 9;
var i900 integer >= 0, <= 9;
var i901 integer >= 0, <= 9;
var i902 integer >= 0, <= 9;
var i903 integer >= 0, <= 9;
var i904 integer >= 0, <= 9;
var i905 integer >= 0, <= 9;
var i906 integer >= 0, <= 9;
var i907 integer >= 0, <= 9;
var i908 integer >= 0, <= 9;
var i909 integer >= 0, <= 9;
var i910 integer >= 0, <= 9;
var i911 integer >= 0, <= 9;
var i912 integer >= 0, <= 9;
var i913 integer >= 0, <= 9;
var i914 integer >= 0, <= 9;
var i915 integer >= 0, <= 9;
var i916 integer >= 0, <= 9;
var i917 integer >= 0, <= 9;
var i918 integer >= 0, <= 9;
var i919 integer >= 0, <= 9;
var i920 integer >= 0, <= 9;
var i921 integer >= 0, <= 9;
var i922 integer >= 0, <= 9;
var i923 integer >= 0, <= 9;
var i924 integer >= 0, <= 9;
var i925 integer >= 0, <= 9;
var i926 integer >= 0, <= 9;
var i927 integer >= 0, <= 9;
var i928 integer >= 0, <= 9;
var i929 integer >= 0, <= 9;
var i930 integer >= 0, <= 9;
var i931 integer >= 0, <= 9;
var i932 integer >= 0, <= 9;
var i933 integer >= 0, <= 9;
var i934 integer >= 0, <= 9;
var i935 integer >= 0, <= 9;
var i936 integer >= 0, <= 9;
var i937 integer >= 0, <= 9;
var i938 integer >= 0, <= 9;
var i939 integer >= 0, <= 9;
var i940 integer >= 0, <= 9;
var i941 integer >= 0, <= 9;
var i942 integer >= 0, <= 9;
var i943 integer >= 0, <= 9;
var i944 integer >= 0, <= 9;
var i945 integer >= 0, <= 9;
var i946 integer >= 0, <= 9;
var i947 integer >= 0, <= 9;
var i948 integer >= 0, <= 9;
var i949 integer >= 0, <= 9;
var i950 integer >= 0, <= 9;
var i951 integer >= 0, <= 9;
var i952 integer >= 0, <= 9;
var i953 integer >= 0, <= 9;
var i954 integer >= 0, <= 9;
var i955 integer >= 0, <= 9;
var i956 integer >= 0, <= 9;
var i957 integer >= 0, <= 9;
var i958 integer >= 0, <= 9;
var i959 integer >= 0, <= 9;
var i960 integer >= 0, <= 9;
var i961 integer >= 0, <= 9;
var i962 integer >= 0, <= 9;
var i963 integer >= 0, <= 9;
var i964 integer >= 0, <= 9;
var i965 integer >= 0, <= 9;
var i966 integer >= 0, <= 9;
var i967 integer >= 0, <= 9;
var i968 integer >= 0, <= 9;
var i969 integer >= 0, <= 9;
var i970 integer >= 0, <= 9;
var i971 integer >= 0, <= 9;
var i972 integer >= 0, <= 9;
var i973 integer >= 0, <= 9;
var i974 integer >= 0, <= 9;
var i975 integer >= 0, <= 9;
var i976 integer >= 0, <= 9;
var i977 integer >= 0, <= 9;
var i978 integer >= 0, <= 9;
var i979 integer >= 0, <= 9;
var i980 integer >= 0, <= 9;
var i981 integer >= 0, <= 9;
var i982 integer >= 0, <= 9;
var i983 integer >= 0, <= 9;
var i984 integer >= 0, <= 9;
var i985 integer >= 0, <= 9;
var i986 integer >= 0, <= 9;
var i987 integer >= 0, <= 9;
var i988 integer >= 0, <= 9;
var i989 integer >= 0, <= 9;
var i990 integer >= 0, <= 9;
var i991 integer >= 0, <= 9;
var i992 integer >= 0, <= 9;
var i993 integer >= 0, <= 9;
var i994 integer >= 0, <= 9;
var i995 integer >= 0, <= 9;
var i996 integer >= 0, <= 9;
var i997 integer >= 0, <= 9;
var i998 integer >= 0, <= 9;
var i999 integer >= 0, <= 9;
var i1000 integer >= 0, <= 9;
var i1001 integer >= 0, <= 9;
var i1002 integer >= 0, <= 9;
var i1003 integer >= 0, <= 9;
var i1004 integer >= 0, <= 9;
var i1005 integer >= 0, <= 9;
var i1006 integer >= 0, <= 9;
var i1007 integer >= 0, <= 9;
var i1008 integer >= 0, <= 9;
var i1009 integer >= 0, <= 9;
var i1010 integer >= 0, <= 9;
var i1011 integer >= 0, <= 9;
var i1012 integer >= 0, <= 9;
var i1013 integer >= 0, <= 9;
var i1014 integer >= 0, <= 9;
var i1015 integer >= 0, <= 9;
var i1016 integer >= 0, <= 9;
var i1017 integer >= 0, <= 9;
var i1018 integer >= 0, <= 9;
var i1019 integer >= 0, <= 9;
var i1020 integer >= 0, <= 9;
var i1021 integer >= 0, <= 9;
var i1022 integer >= 0, <= 9;
var i1023 integer >= 0, <= 9;
var i1024 integer >= 0, <= 9;
var i1025 integer >= 0, <= 9;
var i1026 integer >= 0, <= 9;
var i1027 integer >= 0, <= 9;
var i1028 integer >= 0, <= 9;
var i1029 integer >= 0, <= 9;
var i1030 integer >= 0, <= 9;
var i1031 integer >= 0, <= 9;
var i1032 integer >= 0, <= 9;
var i1033 integer >= 0, <= 9;
var i1034 integer >= 0, <= 9;
var i1035 integer >= 0, <= 9;
var i1036 integer >= 0, <= 9;
var i1037 integer >= 0, <= 9;
var i1038 integer >= 0, <= 9;
var i1039 integer >= 0, <= 9;
var i1040 integer >= 0, <= 9;
var i1041 integer >= 0, <= 9;
var i1042 integer >= 0, <= 9;
var i1043 integer >= 0, <= 9;
var i1044 integer >= 0, <= 9;

minimize obj:    10786796*b33 + 20514292*b34 + 9227596*b35 + 17395892*b36
     + 8915756*b37 + 16772212*b38 + 19079828*b39 + 37100356*b40 + 12533100*b41
     + 25066200*b42 + 11847052*b43 + 23694104*b44 + 20826132*b45 + 40592964*b46
     + 10662060*b47 + 20264820*b48 + 10599692*b49 + 20140084*b50 + 16149488*b51
     + 32298976*b52 + 17272112*b53 + 34544224*b54 + 12408364*b55 + 24816728*b56
     + 20140084*b57 + 39220868*b58 + 20140084*b59 + 39220868*b60 + 17272112*b61
     + 34544224*b62 + 11472844*b63 + 22945688*b64 + 10350220*b65 + 19641140*b66
     + 10038380*b67 + 19017460*b68 + 17771056*b69 + 35542112*b70 + 5735944*b71
     + 10412588*b72 + 12096524*b73 + 24193048*b74 + 2244292*b75 + 4488584*b76
     + 7669352*b77 + 15338704*b78 + 9289964*b79 + 17520628*b80 + 19454036*b81
     + 37848772*b82 + 13966608*b83 + 26873916*b84 + 12221260*b85 + 24442520*b86
     + 21200340*b87 + 42400680*b88 + 11036268*b89 + 22072536*b90 + 10973900*b91
     + 20888500*b92 + 6421992*b93 + 11784684*b94 + 18705620*b95 + 36351940*b96
     + 12096524*b97 + 24193048*b98 + 20514292*b99 + 41028584*b100
     + 20514292*b101 + 41028584*b102 + 7544616*b103 + 15089232*b104
     + 11847052*b105 + 23694104*b106 + 10724428*b107 + 20389556*b108
     + 10412588*b109 + 19765876*b110 + 19204564*b111 + 37349828*b112
     + 6110152*b113 + 12220304*b114 + 12470732*b115 + 24941464*b116
     + 11971788*b117 + 23943576*b118 + 4426216*b119 + 7793132*b120
     + 15588176*b121 + 30117052*b122 + 11348108*b123 + 22696216*b124
     + 10662060*b125 + 20264820*b126 + 17334480*b127 + 34668960*b128
     + 5985416*b129 + 10911532*b130 + 5985416*b131 + 10911532*b132
     + 13032044*b133 + 26064088*b134 + 14839760*b135 + 28620220*b136
     + 5486472*b137 + 9913644*b138 + 16648432*b139 + 33296864*b140
     + 18955092*b141 + 36850884*b142 + 15213968*b143 + 29368636*b144
     + 9601804*b145 + 18144308*b146 + 7419880*b147 + 14839760*b148
     + 2244292*b149 + 4488584*b150 + 16586064*b151 + 33172128*b152
     + 4550952*b153 + 8042604*b154 + 9664172*b155 + 18269044*b156
     + 10412588*b157 + 19765876*b158 + 15712912*b159 + 31425824*b160
     + 11472844*b161 + 22945688*b162 + 10350220*b163 + 19641140*b164
     + 17459216*b165 + 34918432*b166 + 5923048*b167 + 10786796*b168
     + 5923048*b169 + 10786796*b170 + 14652656*b171 + 28246012*b172
     + 14964496*b173 + 28869692*b174 + 5611208*b175 + 10163116*b176
     + 16773168*b177 + 33546336*b178 + 18643252*b179 + 36227204*b180
     + 15775280*b181 + 31550560*b182 + 9539436*b183 + 18019572*b184
     + 7357512*b185 + 14715024*b186 + 2181924*b187 + 4363848*b188
     + 16274224*b189 + 32548448*b190 + 4239112*b191 + 7418924*b192
     + 9788908*b193 + 18518516*b194 + 10100748*b195 + 19142196*b196
     + 21200340*b197 + 42400680*b198 + 20514292*b199 + 39969284*b200
     + 2805604*b201 + 5611208*b202 + 19329300*b203 + 37599300*b204
     + 19266932*b205 + 37474564*b206 + 24816728*b207 + 48574156*b208
     + 12158892*b209 + 24317784*b210 + 11161004*b211 + 21262708*b212
     + 15026864*b213 + 28994428*b214 + 28807324*b215 + 56555348*b216
     + 25939352*b217 + 51878704*b218 + 20140084*b219 + 39220868*b220
     + 19017460*b221 + 36975620*b222 + 16835536*b223 + 33671072*b224
     + 26438296*b225 + 52876592*b226 + 14403184*b227 + 27747068*b228
     + 6983304*b229 + 13966608*b230 + 20264820*b231 + 39470340*b232
     + 15026864*b233 + 28994428*b234 + 24005944*b235 + 46952588*b236
     + 6609096*b237 + 13218192*b238 + 6671464*b239 + 13342928*b240
     + 19329300*b241 + 37599300*b242 + 20451924*b243 + 40903848*b244
     + 16024752*b245 + 30990204*b246 + 23319896*b247 + 45580492*b248
     + 22260596*b249 + 44521192*b250 + 20451924*b251 + 40903848*b252
     + 6297256*b253 + 11535212*b254 + 5174632*b255 + 9289964*b256
     + 10350220*b257 + 19641140*b258 + 20950868*b259 + 41901736*b260
     + 8915756*b261 + 16772212*b262 + 15276336*b263 + 29493372*b264
     + 14777392*b265 + 28495484*b266 + 22260596*b267 + 44521192*b268
     + 12096524*b269 + 24193048*b270 + 12034156*b271 + 24068312*b272
     + 17583952*b273 + 35167904*b274 + 19765876*b275 + 38472452*b276
     + 14902128*b277 + 28744956*b278 + 21574548*b279 + 43149096*b280
     + 8293032*b281 + 16586064*b282 + 19765876*b283 + 38472452*b284
     + 12907308*b285 + 25814616*b286 + 11784684*b287 + 23569368*b288
     + 11472844*b289 + 22945688*b290 + 6983304*b291 + 12907308*b292
     + 7170408*b293 + 14340816*b294 + 14590288*b295 + 28121276*b296
     + 13032044*b297 + 26064088*b298 + 21075604*b299 + 42151208*b300
     + 21013236*b301 + 40967172*b302 + 26563032*b303 + 53126064*b304
     + 14964496*b305 + 28869692*b306 + 12907308*b307 + 25814616*b308
     + 16773168*b309 + 33546336*b310 + 30553628*b311 + 60047956*b312
     + 28744956*b313 + 56430612*b314 + 21886388*b315 + 43772776*b316
     + 20763764*b317 + 40468228*b318 + 19641140*b319 + 38222980*b320
     + 28184600*b321 + 56369200*b322 + 16149488*b323 + 32298976*b324
     + 9788908*b325 + 18518516*b326 + 22011124*b327 + 44022248*b328
     + 1121668*b329 + 1184036*b330 + 16398960*b331 + 32797920*b332
     + 18580884*b333 + 36102468*b334 + 10474956*b335 + 19890612*b336
     + 20389556*b337 + 39719812*b338 + 20389556*b339 + 39719812*b340
     + 18580884*b341 + 36102468*b342 + 3616388*b343 + 7232776*b344
     + 2493764*b345 + 4987528*b346 + 4800424*b347 + 8541548*b348
     + 18020528*b349 + 36041056*b350 + 5985416*b351 + 10911532*b352
     + 12345996*b353 + 24691992*b354 + 11847052*b355 + 23694104*b356
     + 16336592*b357 + 31613884*b358 + 17459216*b359 + 34918432*b360
     + 10474956*b361 + 19890612*b362 + 20327188*b363 + 39595076*b364
     + 20327188*b365 + 39595076*b366 + 17459216*b367 + 34918432*b368
     + 3678756*b369 + 7357512*b370 + 2556132*b371 + 5112264*b372 + 4800424*b373
     + 8541548*b374 + 17958160*b375 + 35916320*b376 + 5923048*b377
     + 10786796*b378 + 12283628*b379 + 24567256*b380 + 11784684*b381
     + 23569368*b382 + 24068312*b383 + 47077324*b384 + 17459216*b385
     + 34918432*b386 + 25876984*b387 + 51753968*b388 + 25876984*b389
     + 51753968*b390 + 2181924*b391 + 4363848*b392 + 17209744*b393
     + 34419488*b394 + 16087120*b395 + 31114940*b396 + 15775280*b397
     + 30491260*b398 + 24567256*b399 + 48075212*b400 + 11472844*b401
     + 22945688*b402 + 17833424*b403 + 35666848*b404 + 17334480*b405
     + 34668960*b406 + 10412588*b407 + 19765876*b408 + 2867972*b409
     + 5735944*b410 + 26999608*b411 + 53999216*b412 + 25190936*b413
     + 49322572*b414 + 19391668*b415 + 37724036*b416 + 17209744*b417
     + 34419488*b418 + 16087120*b419 + 32174240*b420 + 25689880*b421
     + 50320460*b422 + 12595468*b423 + 25190936*b424 + 6234888*b425
     + 12469776*b426 + 19516404*b427 + 37973508*b428 + 12221260*b429
     + 24442520*b430 + 22135860*b431 + 44271720*b432 + 19641140*b433
     + 38222980*b434 + 13032044*b435 + 26064088*b436 + 11909420*b437
     + 23818840*b438 + 6733832*b439 + 13467664*b440 + 20826132*b441
     + 40592964*b442 + 7731720*b443 + 15463440*b444 + 5237000*b445
     + 9414700*b446 + 14652656*b447 + 28246012*b448 + 29867580*b449
     + 58675860*b450 + 26999608*b451 + 53999216*b452 + 21200340*b453
     + 42400680*b454 + 20077716*b455 + 39096132*b456 + 18955092*b457
     + 36850884*b458 + 27498552*b459 + 54997104*b460 + 15463440*b461
     + 29867580*b462 + 9102860*b463 + 17146420*b464 + 21325076*b465
     + 42650152*b466 + 26999608*b467 + 53999216*b468 + 21200340*b469
     + 42400680*b470 + 20077716*b471 + 39096132*b472 + 19765876*b473
     + 38472452*b474 + 2369028*b475 + 4738056*b476 + 15463440*b477
     + 29867580*b478 + 21824020*b479 + 43648040*b480 + 21325076*b481
     + 42650152*b482 + 19391668*b483 + 37724036*b484 + 17209744*b485
     + 34419488*b486 + 16897904*b487 + 33795808*b488 + 25689880*b489
     + 50320460*b490 + 12595468*b491 + 25190936*b492 + 20015348*b493
     + 38971396*b494 + 19516404*b495 + 37973508*b496 + 2181924*b497
     + 4363848*b498 + 7357512*b499 + 14715024*b500 + 19890612*b501
     + 38721924*b502 + 6796200*b503 + 13592400*b504 + 13156780*b505
     + 26313560*b506 + 12657836*b507 + 25315672*b508 + 6234888*b509
     + 12469776*b510 + 17708688*b511 + 35417376*b512 + 5673576*b513
     + 10287852*b514 + 12034156*b515 + 24068312*b516 + 11535212*b517
     + 23070424*b518 + 17396848*b519 + 34793696*b520 + 5361736*b521
     + 9664172*b522 + 10911532*b523 + 21823064*b524 + 11223372*b525
     + 22446744*b526 + 13094412*b527 + 26188824*b528 + 20514292*b529
     + 39969284*b530 + 20015348*b531 + 38971396*b532 + 7419880*b533
     + 14839760*b534 + 6920936*b535 + 13841872*b536 + 14340816*b537
     + 27622332*b538 + 1767266*i539 + 3181432*i540 + 1622191*i541
     + 2891282*i542 + 1593176*i543 + 2833252*i544 + 3047963*i545 + 5742826*i546
     + 1929750*i547 + 3859500*i548 + 1865917*i549 + 3731834*i550 + 3210447*i551
     + 6067794*i552 + 1755660*i553 + 3158220*i554 + 1749857*i555 + 3146614*i556
     + 2520773*i557 + 5041546*i558 + 2625227*i559 + 5250454*i560 + 1918144*i561
     + 3836288*i562 + 3146614*i563 + 5940128*i564 + 3146614*i565 + 5940128*i566
     + 2625227*i567 + 5250454*i568 + 1831099*i569 + 3662198*i570 + 1726645*i571
     + 3100190*i572 + 1697630*i573 + 3042160*i574 + 2671651*i575 + 5343302*i576
     + 1042774*i577 + 1732448*i578 + 1889129*i579 + 3778258*i580 + 463357*i581
     + 926714*i582 + 1222667*i583 + 2445334*i584 + 1627994*i585 + 2902888*i586
     + 3082781*i587 + 5812462*i588 + 2317668*i589 + 4282236*i590 + 1900735*i591
     + 3801470*i592 + 3245265*i593 + 6490530*i594 + 1790478*i595 + 3580956*i596
     + 1784675*i597 + 3216250*i598 + 1106607*i599 + 1860114*i600 + 3013145*i601
     + 5673190*i602 + 1889129*i603 + 3778258*i604 + 3181432*i605 + 6362864*i606
     + 3181432*i607 + 6362864*i608 + 1211061*i609 + 2422122*i610 + 1865917*i611
     + 3731834*i612 + 1761463*i613 + 3169826*i614 + 1732448*i615 + 3111796*i616
     + 3059569*i617 + 5766038*i618 + 1077592*i619 + 2155184*i620 + 1923947*i621
     + 3847894*i622 + 1877523*i623 + 3755046*i624 + 920911*i625 + 1488722*i626
     + 2468546*i627 + 4583992*i628 + 1819493*i629 + 3638986*i630 + 1755660*i631
     + 3158220*i632 + 2631030*i633 + 5262060*i634 + 1065986*i635 + 1778872*i636
     + 1065986*i637 + 1778872*i638 + 1976174*i639 + 3952348*i640 + 2398910*i641
     + 4444720*i642 + 1019562*i643 + 1686024*i644 + 2567197*i645 + 5134394*i646
     + 3036357*i647 + 5719614*i648 + 2433728*i649 + 4514356*i650 + 1657009*i651
     + 2960918*i652 + 1199455*i653 + 2398910*i654 + 463357*i655 + 926714*i656
     + 2561394*i657 + 5122788*i658 + 932517*i659 + 1511934*i660 + 1662812*i661
     + 2972524*i662 + 1732448*i663 + 3111796*i664 + 2480152*i665 + 4960304*i666
     + 1831099*i667 + 3662198*i668 + 1726645*i669 + 3100190*i670 + 2642636*i671
     + 5285272*i672 + 1060183*i673 + 1767266*i674 + 1060183*i675 + 1767266*i676
     + 2381501*i677 + 4409902*i678 + 2410516*i679 + 4467932*i680 + 1031168*i681
     + 1709236*i682 + 2578803*i683 + 5157606*i684 + 3007342*i685 + 5661584*i686
     + 2485955*i687 + 4971910*i688 + 1651206*i689 + 2949312*i690 + 1193652*i691
     + 2387304*i692 + 457554*i693 + 915108*i694 + 2532379*i695 + 5064758*i696
     + 903502*i697 + 1453904*i698 + 1674418*i699 + 2995736*i700 + 1703433*i701
     + 3053766*i702 + 3245265*i703 + 6490530*i704 + 3181432*i705 + 6009764*i706
     + 515584*i707 + 1031168*i708 + 3071175*i709 + 5789250*i710 + 3065372*i711
     + 5777644*i712 + 3836288*i713 + 7319476*i714 + 1894932*i715 + 3789864*i716
     + 1802084*i717 + 3251068*i718 + 2416319*i719 + 4479538*i720 + 4462129*i721
     + 8571158*i722 + 3940742*i723 + 7881484*i724 + 3146614*i725 + 5940128*i726
     + 3042160*i727 + 5731220*i728 + 2584606*i729 + 5169212*i730 + 3987166*i731
     + 7974332*i732 + 2358289*i733 + 4363478*i734 + 1158834*i735 + 2317668*i736
     + 3158220*i737 + 5963340*i738 + 2416319*i739 + 4479538*i740 + 3760849*i741
     + 7168598*i742 + 1124016*i743 + 2248032*i744 + 1129819*i745 + 2259638*i746
     + 3071175*i747 + 5789250*i748 + 3175629*i749 + 6351258*i750 + 2509167*i751
     + 4665234*i752 + 3697016*i753 + 7040932*i754 + 3343916*i755 + 6687832*i756
     + 3175629*i757 + 6351258*i758 + 1095001*i759 + 1836902*i760 + 990547*i761
     + 1627994*i762 + 1726645*i763 + 3100190*i764 + 3222053*i765 + 6444106*i766
     + 1593176*i767 + 2833252*i768 + 2439531*i769 + 4525962*i770 + 2393107*i771
     + 4433114*i772 + 3343916*i773 + 6687832*i774 + 1889129*i775 + 3778258*i776
     + 1883326*i777 + 3766652*i778 + 2654242*i779 + 5308484*i780 + 3111796*i781
     + 5870492*i782 + 2404713*i783 + 4456326*i784 + 3280083*i785 + 6560166*i786
     + 1280697*i787 + 2561394*i788 + 3111796*i789 + 5870492*i790 + 1964568*i791
     + 3929136*i792 + 1860114*i793 + 3720228*i794 + 1831099*i795 + 3662198*i796
     + 1158834*i797 + 1964568*i798 + 1176243*i799 + 2352486*i800 + 2375698*i801
     + 4398296*i802 + 1976174*i803 + 3952348*i804 + 3233659*i805 + 6467318*i806
     + 3227856*i807 + 6102612*i808 + 3998772*i809 + 7997544*i810 + 2410516*i811
     + 4467932*i812 + 1964568*i813 + 3929136*i814 + 2578803*i815 + 5157606*i816
     + 4624613*i817 + 8896126*i818 + 4456326*i819 + 8559552*i820 + 3309098*i821
     + 6618196*i822 + 3204644*i823 + 6056188*i824 + 3100190*i825 + 5847280*i826
     + 4149650*i827 + 8299300*i828 + 2520773*i829 + 5041546*i830 + 1674418*i831
     + 2995736*i832 + 3320704*i833 + 6641408*i834 + 358903*i835 + 364706*i836
     + 2543985*i837 + 5087970*i838 + 3001539*i839 + 5649978*i840 + 1738251*i841
     + 3123402*i842 + 3169826*i843 + 5986552*i844 + 3169826*i845 + 5986552*i846
     + 3001539*i847 + 5649978*i848 + 591023*i849 + 1182046*i850 + 486569*i851
     + 973138*i852 + 955729*i853 + 1558358*i854 + 2694863*i855 + 5389726*i856
     + 1065986*i857 + 1778872*i858 + 1912341*i859 + 3824682*i860 + 1865917*i861
     + 3731834*i862 + 2538182*i863 + 4723264*i864 + 2642636*i865 + 5285272*i866
     + 1738251*i867 + 3123402*i868 + 3164023*i869 + 5974946*i870 + 3164023*i871
     + 5974946*i872 + 2642636*i873 + 5285272*i874 + 596826*i875 + 1193652*i876
     + 492372*i877 + 984744*i878 + 955729*i879 + 1558358*i880 + 2689060*i881
     + 5378120*i882 + 1060183*i883 + 1767266*i884 + 1906538*i885 + 3813076*i886
     + 1860114*i887 + 3720228*i888 + 3766652*i889 + 7180204*i890 + 2642636*i891
     + 5285272*i892 + 3934939*i893 + 7869878*i894 + 3934939*i895 + 7869878*i896
     + 457554*i897 + 915108*i898 + 2619424*i899 + 5238848*i900 + 2514970*i901
     + 4676840*i902 + 2485955*i903 + 4618810*i904 + 3813076*i905 + 7273052*i906
     + 1831099*i907 + 3662198*i908 + 2677454*i909 + 5354908*i910 + 2631030*i911
     + 5262060*i912 + 1732448*i913 + 3111796*i914 + 521387*i915 + 1042774*i916
     + 4039393*i917 + 8078786*i918 + 3871106*i919 + 7389112*i920 + 3076978*i921
     + 5800856*i922 + 2619424*i923 + 5238848*i924 + 2514970*i925 + 5029940*i926
     + 3917530*i927 + 7481960*i928 + 1935553*i929 + 3871106*i930 + 1089198*i931
     + 2178396*i932 + 3088584*i933 + 5824068*i934 + 1900735*i935 + 3801470*i936
     + 3332310*i937 + 6664620*i938 + 3100190*i939 + 5847280*i940 + 1976174*i941
     + 3952348*i942 + 1871720*i943 + 3743440*i944 + 1135622*i945 + 2271244*i946
     + 3210447*i947 + 6067794*i948 + 1228470*i949 + 2456940*i950 + 996350*i951
     + 1639600*i952 + 2381501*i953 + 4409902*i954 + 4560780*i955 + 8768460*i956
     + 4039393*i957 + 8078786*i958 + 3245265*i959 + 6490530*i960 + 3140811*i961
     + 5928522*i962 + 3036357*i963 + 5719614*i964 + 4085817*i965 + 8171634*i966
     + 2456940*i967 + 4560780*i968 + 1610585*i969 + 2868070*i970 + 3256871*i971
     + 6513742*i972 + 4039393*i973 + 8078786*i974 + 3245265*i975 + 6490530*i976
     + 3140811*i977 + 5928522*i978 + 3111796*i979 + 5870492*i980 + 474963*i981
     + 949926*i982 + 2456940*i983 + 4560780*i984 + 3303295*i985 + 6606590*i986
     + 3256871*i987 + 6513742*i988 + 3076978*i989 + 5800856*i990 + 2619424*i991
     + 5238848*i992 + 2590409*i993 + 5180818*i994 + 3917530*i995 + 7481960*i996
     + 1935553*i997 + 3871106*i998 + 3135008*i999 + 5916916*i1000
     + 3088584*i1001 + 5824068*i1002 + 457554*i1003 + 915108*i1004
     + 1193652*i1005 + 2387304*i1006 + 3123402*i1007 + 5893704*i1008
     + 1141425*i1009 + 2282850*i1010 + 1987780*i1011 + 3975560*i1012
     + 1941356*i1013 + 3882712*i1014 + 1089198*i1015 + 2178396*i1016
     + 2665848*i1017 + 5331696*i1018 + 1036971*i1019 + 1720842*i1020
     + 1883326*i1021 + 3766652*i1022 + 1836902*i1023 + 3673804*i1024
     + 2636833*i1025 + 5273666*i1026 + 1007956*i1027 + 1662812*i1028
     + 1778872*i1029 + 3557744*i1030 + 1807887*i1031 + 3615774*i1032
     + 1981977*i1033 + 3963954*i1034 + 3181432*i1035 + 6009764*i1036
     + 3135008*i1037 + 5916916*i1038 + 1199455*i1039 + 2398910*i1040
     + 1153031*i1041 + 2306062*i1042 + 2352486*i1043 + 4351872*i1044;

subject to

e2:    x1 - b33 - 2*b34 - b35 - 2*b36 - b37 - 2*b38 - b39 - 2*b40 - b41 - 2*b42
     - b43 - 2*b44 - b45 - 2*b46 - b47 - 2*b48 - b49 - 2*b50 - b51 - 2*b52
     - b53 - 2*b54 - b55 - 2*b56 - b57 - 2*b58 - b59 - 2*b60 - b61 - 2*b62
     - b63 - 2*b64 - b65 - 2*b66 - b67 - 2*b68 - b69 - 2*b70 - b71 - 2*b72
     - b73 - 2*b74 - b117 - 2*b118 - b157 - 2*b158 - b195 - 2*b196 - b231
     - 2*b232 - b265 - 2*b266 - b297 - 2*b298 - b327 - 2*b328 - b355 - 2*b356
     - b381 - 2*b382 - b405 - 2*b406 - b427 - 2*b428 - b447 - 2*b448 - b465
     - 2*b466 - b481 - 2*b482 - b495 - 2*b496 - b507 - 2*b508 - b517 - 2*b518
     - b525 - 2*b526 - b531 - 2*b532 - b535 - 2*b536 - b537 - 2*b538 = 0;

e3:    x2 - b75 - 2*b76 - b117 - 2*b118 - b157 - 2*b158 - b195 - 2*b196 - b231
     - 2*b232 - b265 - 2*b266 - b297 - 2*b298 - b327 - 2*b328 - b355 - 2*b356
     - b381 - 2*b382 - b405 - 2*b406 - b427 - 2*b428 - b447 - 2*b448 - b465
     - 2*b466 - b481 - 2*b482 - b495 - 2*b496 - b507 - 2*b508 - b517 - 2*b518
     - b525 - 2*b526 - b531 - 2*b532 - b535 - 2*b536 - b537 - 2*b538 = 0;

e4:    x3 - b77 - 2*b78 - b97 - 2*b98 - b133 - 2*b134 - b143 - 2*b144 - b385
     - 2*b386 - b433 - 2*b434 = 0;

e5:    x4 - b51 - 2*b52 - b61 - 2*b62 - b93 - 2*b94 - b103 - 2*b104 - b133
     - 2*b134 - b143 - 2*b144 - b171 - 2*b172 - b181 - 2*b182 - b207 - 2*b208
     - b217 - 2*b218 - b241 - 2*b242 - b251 - 2*b252 - b273 - 2*b274 - b283
     - 2*b284 - b303 - 2*b304 - b313 - 2*b314 - b331 - 2*b332 - b341 - 2*b342
     - b357 - 2*b358 - b367 - 2*b368 - b383 - 2*b384 - b385 - 2*b386 - b387
     - 2*b388 - b389 - 2*b390 - b393 - 2*b394 - b395 - 2*b396 - b397 - 2*b398
     - b399 - 2*b400 - b401 - 2*b402 - b403 - 2*b404 - b405 - 2*b406 - b413
     - 2*b414 - b433 - 2*b434 - b451 - 2*b452 - b467 - 2*b468 - b483 - 2*b484
     - b485 - 2*b486 - b487 - 2*b488 - b489 - 2*b490 - b491 - 2*b492 - b493
     - 2*b494 - b495 - 2*b496 = 0;

e6:    x5 - b33 - 2*b34 - b51 - 2*b52 - b61 - 2*b62 - b79 - 2*b80 - b81 - 2*b82
     - b83 - 2*b84 - b85 - 2*b86 - b87 - 2*b88 - b89 - 2*b90 - b91 - 2*b92
     - b95 - 2*b96 - b99 - 2*b100 - b101 - 2*b102 - b105 - 2*b106 - b107
     - 2*b108 - b109 - 2*b110 - b111 - 2*b112 - b113 - 2*b114 - b115 - 2*b116
     - b117 - 2*b118 - b171 - 2*b172 - b181 - 2*b182 - b207 - 2*b208 - b217
     - 2*b218 - b241 - 2*b242 - b251 - 2*b252 - b273 - 2*b274 - b283 - 2*b284
     - b303 - 2*b304 - b313 - 2*b314 - b331 - 2*b332 - b341 - 2*b342 - b357
     - 2*b358 - b367 - 2*b368 - b383 - 2*b384 - b387 - 2*b388 - b389 - 2*b390
     - b393 - 2*b394 - b395 - 2*b396 - b397 - 2*b398 - b399 - 2*b400 - b401
     - 2*b402 - b403 - 2*b404 - b405 - 2*b406 - b413 - 2*b414 - b451 - 2*b452
     - b467 - 2*b468 - b483 - 2*b484 - b485 - 2*b486 - b487 - 2*b488 - b489
     - 2*b490 - b491 - 2*b492 - b493 - 2*b494 - b495 - 2*b496 = 0;

e7:    x6 - b97 - 2*b98 - b121 - 2*b122 - b127 - 2*b128 - b135 - 2*b136 - b137
     - 2*b138 - b139 - 2*b140 - b155 - 2*b156 - b385 - 2*b386 - b433 - 2*b434
     = 0;

e8:    x7 - b55 - 2*b56 - b159 - 2*b160 - b165 - 2*b166 - b173 - 2*b174 - b175
     - 2*b176 - b177 - 2*b178 - b193 - 2*b194 - b223 - 2*b224 - b245 - 2*b246
     - b277 - 2*b278 - b319 - 2*b320 - b335 - 2*b336 - b361 - 2*b362 - b419
     - 2*b420 - b431 - 2*b432 - b435 - 2*b436 - b437 - 2*b438 - b439 - 2*b440
     - b441 - 2*b442 - b443 - 2*b444 - b447 - 2*b448 - b457 - 2*b458 - b523
     - 2*b524 = 0;

e9:    x8 - b67 - 2*b68 - b109 - 2*b110 - b119 - 2*b120 - b161 - 2*b162 - b167
     - 2*b168 - b169 - 2*b170 - b183 - 2*b184 - b185 - 2*b186 - b187 - 2*b188
     - b223 - 2*b224 - b245 - 2*b246 - b289 - 2*b290 - b319 - 2*b320 - b335
     - 2*b336 - b361 - 2*b362 - b397 - 2*b398 - b419 - 2*b420 - b435 - 2*b436
     - b437 - 2*b438 - b439 - 2*b440 - b457 - 2*b458 - b473 - 2*b474 - b487
     - 2*b488 - b519 - 2*b520 - b521 - 2*b522 - b523 - 2*b524 - b525 - 2*b526
     = 0;

e10:    x9 - b39 - 2*b40 - b45 - 2*b46 - b81 - 2*b82 - b87 - 2*b88 - b121
      - 2*b122 - b127 - 2*b128 - b159 - 2*b160 - b165 - 2*b166 - b197 - 2*b198
      - b199 - 2*b200 - b203 - 2*b204 - b205 - 2*b206 - b207 - 2*b208 - b209
      - 2*b210 - b211 - 2*b212 - b213 - 2*b214 - b215 - 2*b216 - b217 - 2*b218
      - b219 - 2*b220 - b221 - 2*b222 - b223 - 2*b224 - b225 - 2*b226 - b227
      - 2*b228 - b229 - 2*b230 - b231 - 2*b232 - b235 - 2*b236 - b267 - 2*b268
      - b299 - 2*b300 - b301 - 2*b302 - b303 - 2*b304 - b305 - 2*b306 - b307
      - 2*b308 - b309 - 2*b310 - b311 - 2*b312 - b313 - 2*b314 - b315 - 2*b316
      - b317 - 2*b318 - b319 - 2*b320 - b321 - 2*b322 - b323 - 2*b324 - b325
      - 2*b326 - b327 - 2*b328 = 0;

e11:    x10 - b59 - 2*b60 - b69 - 2*b70 - b101 - 2*b102 - b111 - 2*b112 - b141
      - 2*b142 - b151 - 2*b152 - b179 - 2*b180 - b189 - 2*b190 - b215 - 2*b216
      - b225 - 2*b226 - b249 - 2*b250 - b259 - 2*b260 - b281 - 2*b282 - b291
      - 2*b292 - b311 - 2*b312 - b321 - 2*b322 - b339 - 2*b340 - b349 - 2*b350
      - b365 - 2*b366 - b375 - 2*b376 - b389 - 2*b390 - b399 - 2*b400 - b411
      - 2*b412 - b421 - 2*b422 - b431 - 2*b432 - b441 - 2*b442 - b449 - 2*b450
      - b459 - 2*b460 - b467 - 2*b468 - b469 - 2*b470 - b471 - 2*b472 - b473
      - 2*b474 - b477 - 2*b478 - b479 - 2*b480 - b481 - 2*b482 - b489 - 2*b490
      - b501 - 2*b502 - b511 - 2*b512 - b519 - 2*b520 - b527 - 2*b528 - b529
      - 2*b530 - b531 - 2*b532 = 0;

e12:    x11 - b45 - 2*b46 - b87 - 2*b88 - b127 - 2*b128 - b165 - 2*b166 - b201
      - 2*b202 - b235 - 2*b236 - b267 - 2*b268 - b299 - 2*b300 - b301 - 2*b302
      - b303 - 2*b304 - b305 - 2*b306 - b307 - 2*b308 - b309 - 2*b310 - b311
      - 2*b312 - b313 - 2*b314 - b315 - 2*b316 - b317 - 2*b318 - b319 - 2*b320
      - b321 - 2*b322 - b323 - 2*b324 - b325 - 2*b326 - b327 - 2*b328 = 0;

e13:    x12 - b47 - 2*b48 - b89 - 2*b90 - b203 - 2*b204 - b239 - 2*b240 - b269
      - 2*b270 - b299 - 2*b300 - b329 - 2*b330 - b331 - 2*b332 - b333 - 2*b334
      - b337 - 2*b338 - b339 - 2*b340 - b341 - 2*b342 - b349 - 2*b350 - b351
      - 2*b352 - b353 - 2*b354 - b355 - 2*b356 - b369 - 2*b370 - b371 - 2*b372
      = 0;

e14:    x13 - b145 - 2*b146 - b147 - 2*b148 - b161 - 2*b162 - b183 - 2*b184
      - b185 - 2*b186 - b237 - 2*b238 - b239 - 2*b240 - b245 - 2*b246 - b257
      - 2*b258 - b343 - 2*b344 - b345 - 2*b346 - b369 - 2*b370 - b371 - 2*b372
      - b435 - 2*b436 - b437 - 2*b438 - b499 - 2*b500 - b509 - 2*b510 = 0;

e15:    x14 - b61 - 2*b62 - b103 - 2*b104 - b143 - 2*b144 - b181 - 2*b182
      - b217 - 2*b218 - b251 - 2*b252 - b283 - 2*b284 - b313 - 2*b314 - b341
      - 2*b342 - b367 - 2*b368 - b391 - 2*b392 - b413 - 2*b414 - b433 - 2*b434
      - b451 - 2*b452 - b467 - 2*b468 - b483 - 2*b484 - b485 - 2*b486 - b487
      - 2*b488 - b489 - 2*b490 - b491 - 2*b492 - b493 - 2*b494 - b495 - 2*b496
      = 0;

e16:    x15 - b53 - 2*b54 - b57 - 2*b58 - b95 - 2*b96 - b99 - 2*b100 - b135
      - 2*b136 - b139 - 2*b140 - b173 - 2*b174 - b177 - 2*b178 - b209 - 2*b210
      - b213 - 2*b214 - b243 - 2*b244 - b247 - 2*b248 - b275 - 2*b276 - b279
      - 2*b280 - b305 - 2*b306 - b309 - 2*b310 - b333 - 2*b334 - b337 - 2*b338
      - b359 - 2*b360 - b363 - 2*b364 - b383 - 2*b384 - b387 - 2*b388 - b407
      - 2*b408 - b411 - 2*b412 - b413 - 2*b414 - b415 - 2*b416 - b417 - 2*b418
      - b419 - 2*b420 - b421 - 2*b422 - b423 - 2*b424 - b425 - 2*b426 - b427
      - 2*b428 - b429 - 2*b430 - b449 - 2*b450 - b451 - 2*b452 - b453 - 2*b454
      - b455 - 2*b456 - b457 - 2*b458 - b459 - 2*b460 - b461 - 2*b462 - b463
      - 2*b464 - b465 - 2*b466 = 0;

e17:    x16 - b57 - 2*b58 - b99 - 2*b100 - b139 - 2*b140 - b177 - 2*b178 - b213
      - 2*b214 - b247 - 2*b248 - b279 - 2*b280 - b309 - 2*b310 - b337 - 2*b338
      - b363 - 2*b364 - b387 - 2*b388 - b409 - 2*b410 - b429 - 2*b430 - b449
      - 2*b450 - b451 - 2*b452 - b453 - 2*b454 - b455 - 2*b456 - b457 - 2*b458
      - b459 - 2*b460 - b461 - 2*b462 - b463 - 2*b464 - b465 - 2*b466 = 0;

e18:    x17 - b161 - 2*b162 - b237 - 2*b238 - b239 - 2*b240 - b245 - 2*b246
      - b253 - 2*b254 - b255 - 2*b256 - b257 - 2*b258 = 0;

e19:    x18 - b63 - 2*b64 - b105 - 2*b106 - b145 - 2*b146 - b183 - 2*b184
      - b219 - 2*b220 - b253 - 2*b254 - b285 - 2*b286 - b315 - 2*b316 - b343
      - 2*b344 - b369 - 2*b370 - b393 - 2*b394 - b415 - 2*b416 - b435 - 2*b436
      - b453 - 2*b454 - b469 - 2*b470 - b483 - 2*b484 - b497 - 2*b498 - b499
      - 2*b500 - b501 - 2*b502 - b503 - 2*b504 - b505 - 2*b506 - b507 - 2*b508
      = 0;

e20:    x19 - b119 - 2*b120 - b129 - 2*b130 - b131 - 2*b132 - b145 - 2*b146
      - b147 - 2*b148 - b149 - 2*b150 = 0;

e21:    x20 - b67 - 2*b68 - b109 - 2*b110 - b119 - 2*b120 - b161 - 2*b162
      - b167 - 2*b168 - b169 - 2*b170 - b183 - 2*b184 - b185 - 2*b186 - b187
      - 2*b188 - b223 - 2*b224 - b245 - 2*b246 - b289 - 2*b290 - b319 - 2*b320
      - b335 - 2*b336 - b361 - 2*b362 - b397 - 2*b398 - b419 - 2*b420 - b435
      - 2*b436 - b437 - 2*b438 - b439 - 2*b440 - b457 - 2*b458 - b473 - 2*b474
      - b487 - 2*b488 - b519 - 2*b520 - b521 - 2*b522 - b523 - 2*b524 - b525
      - 2*b526 = 0;

e22:    x21 - b129 - 2*b130 - b145 - 2*b146 - b147 - 2*b148 - b161 - 2*b162
      - b167 - 2*b168 - b183 - 2*b184 - b185 - 2*b186 - b245 - 2*b246 - b257
      - 2*b258 - b335 - 2*b336 - b347 - 2*b348 - b435 - 2*b436 - b437 - 2*b438
      - b499 - 2*b500 - b509 - 2*b510 = 0;

e23:    x22 - b131 - 2*b132 - b169 - 2*b170 - b361 - 2*b362 - b373 - 2*b374
      = 0;

e24:    x23 - b59 - 2*b60 - b101 - 2*b102 - b141 - 2*b142 - b179 - 2*b180
      - b215 - 2*b216 - b249 - 2*b250 - b281 - 2*b282 - b311 - 2*b312 - b339
      - 2*b340 - b365 - 2*b366 - b389 - 2*b390 - b411 - 2*b412 - b431 - 2*b432
      - b449 - 2*b450 - b467 - 2*b468 - b469 - 2*b470 - b471 - 2*b472 - b473
      - 2*b474 - b475 - 2*b476 - b477 - 2*b478 - b479 - 2*b480 - b481 - 2*b482
      = 0;

e25:    x24 - b35 - 2*b36 - b123 - 2*b124 - b125 - 2*b126 - b141 - 2*b142
      - b151 - 2*b152 - b153 - 2*b154 - b157 - 2*b158 = 0;

e26:    x25 - b37 - 2*b38 - b55 - 2*b56 - b67 - 2*b68 - b79 - 2*b80 - b109
      - 2*b110 - b163 - 2*b164 - b171 - 2*b172 - b179 - 2*b180 - b181 - 2*b182
      - b189 - 2*b190 - b191 - 2*b192 - b195 - 2*b196 - b277 - 2*b278 - b289
      - 2*b290 - b397 - 2*b398 - b431 - 2*b432 - b441 - 2*b442 - b443 - 2*b444
      - b447 - 2*b448 - b473 - 2*b474 - b487 - 2*b488 - b519 - 2*b520 - b521
      - 2*b522 - b525 - 2*b526 = 0;

e27:    x26 - b41 - 2*b42 - b83 - 2*b84 - b123 - 2*b124 - b197 - 2*b198 - b233
      - 2*b234 - b235 - 2*b236 - b241 - 2*b242 - b243 - 2*b244 - b247 - 2*b248
      - b249 - 2*b250 - b251 - 2*b252 - b259 - 2*b260 - b261 - 2*b262 - b263
      - 2*b264 - b265 - 2*b266 = 0;

e28:    x27 - b43 - 2*b44 - b59 - 2*b60 - b69 - 2*b70 - b85 - 2*b86 - b101
      - 2*b102 - b111 - 2*b112 - b125 - 2*b126 - b141 - 2*b142 - b151 - 2*b152
      - b163 - 2*b164 - b179 - 2*b180 - b189 - 2*b190 - b199 - 2*b200 - b215
      - 2*b216 - b225 - 2*b226 - b233 - 2*b234 - b249 - 2*b250 - b259 - 2*b260
      - b267 - 2*b268 - b269 - 2*b270 - b271 - 2*b272 - b273 - 2*b274 - b275
      - 2*b276 - b277 - 2*b278 - b279 - 2*b280 - b283 - 2*b284 - b285 - 2*b286
      - b287 - 2*b288 - b289 - 2*b290 - b293 - 2*b294 - b295 - 2*b296 - b297
      - 2*b298 - b311 - 2*b312 - b321 - 2*b322 - b339 - 2*b340 - b349 - 2*b350
      - b365 - 2*b366 - b375 - 2*b376 - b389 - 2*b390 - b399 - 2*b400 - b411
      - 2*b412 - b421 - 2*b422 - b431 - 2*b432 - b441 - 2*b442 - b449 - 2*b450
      - b459 - 2*b460 - b467 - 2*b468 - b469 - 2*b470 - b471 - 2*b472 - b473
      - 2*b474 - b477 - 2*b478 - b479 - 2*b480 - b481 - 2*b482 - b489 - 2*b490
      - b501 - 2*b502 - b511 - 2*b512 - b519 - 2*b520 - b527 - 2*b528 - b529
      - 2*b530 - b531 - 2*b532 = 0;

e29:    x28 - b47 - 2*b48 - b49 - 2*b50 - b89 - 2*b90 - b91 - 2*b92 - b203
      - 2*b204 - b205 - 2*b206 - b269 - 2*b270 - b271 - 2*b272 - b299 - 2*b300
      - b301 - 2*b302 - b331 - 2*b332 - b333 - 2*b334 - b337 - 2*b338 - b339
      - 2*b340 - b341 - 2*b342 - b349 - 2*b350 - b351 - 2*b352 - b353 - 2*b354
      - b355 - 2*b356 - b357 - 2*b358 - b359 - 2*b360 - b363 - 2*b364 - b365
      - 2*b366 - b367 - 2*b368 - b375 - 2*b376 - b377 - 2*b378 - b379 - 2*b380
      - b381 - 2*b382 = 0;

e30:    x29 - b63 - 2*b64 - b65 - 2*b66 - b105 - 2*b106 - b107 - 2*b108 - b219
      - 2*b220 - b221 - 2*b222 - b285 - 2*b286 - b287 - 2*b288 - b315 - 2*b316
      - b317 - 2*b318 - b393 - 2*b394 - b395 - 2*b396 - b415 - 2*b416 - b417
      - 2*b418 - b453 - 2*b454 - b455 - 2*b456 - b469 - 2*b470 - b471 - 2*b472
      - b483 - 2*b484 - b485 - 2*b486 - b501 - 2*b502 - b503 - 2*b504 - b505
      - 2*b506 - b507 - 2*b508 - b511 - 2*b512 - b513 - 2*b514 - b515 - 2*b516
      - b517 - 2*b518 = 0;

e31:    x30 - b121 - 2*b122 - b127 - 2*b128 - b135 - 2*b136 - b139 - 2*b140
      - b155 - 2*b156 - b159 - 2*b160 - b165 - 2*b166 - b173 - 2*b174 - b177
      - 2*b178 - b193 - 2*b194 - b211 - 2*b212 - b223 - 2*b224 - b307 - 2*b308
      - b319 - 2*b320 - b407 - 2*b408 - b419 - 2*b420 - b429 - 2*b430 - b445
      - 2*b446 - b457 - 2*b458 - b523 - 2*b524 = 0;

e32:    x31 - b39 - 2*b40 - b45 - 2*b46 - b53 - 2*b54 - b57 - 2*b58 - b73
      - 2*b74 - b81 - 2*b82 - b87 - 2*b88 - b95 - 2*b96 - b99 - 2*b100 - b115
      - 2*b116 - b197 - 2*b198 - b199 - 2*b200 - b203 - 2*b204 - b205 - 2*b206
      - b207 - 2*b208 - b215 - 2*b216 - b217 - 2*b218 - b219 - 2*b220 - b221
      - 2*b222 - b225 - 2*b226 - b227 - 2*b228 - b231 - 2*b232 - b235 - 2*b236
      - b243 - 2*b244 - b247 - 2*b248 - b263 - 2*b264 - b267 - 2*b268 - b275
      - 2*b276 - b279 - 2*b280 - b295 - 2*b296 - b299 - 2*b300 - b301 - 2*b302
      - b303 - 2*b304 - b311 - 2*b312 - b313 - 2*b314 - b315 - 2*b316 - b317
      - 2*b318 - b321 - 2*b322 - b323 - 2*b324 - b327 - 2*b328 - b333 - 2*b334
      - b337 - 2*b338 - b353 - 2*b354 - b359 - 2*b360 - b363 - 2*b364 - b379
      - 2*b380 - b383 - 2*b384 - b387 - 2*b388 - b403 - 2*b404 - b411 - 2*b412
      - b413 - 2*b414 - b415 - 2*b416 - b417 - 2*b418 - b421 - 2*b422 - b423
      - 2*b424 - b427 - 2*b428 - b449 - 2*b450 - b451 - 2*b452 - b453 - 2*b454
      - b455 - 2*b456 - b459 - 2*b460 - b461 - 2*b462 - b465 - 2*b466 - b479
      - 2*b480 - b493 - 2*b494 - b505 - 2*b506 - b515 - 2*b516 - b529 - 2*b530
      - b533 - 2*b534 - b537 - 2*b538 = 0;

e33:  - 3*b33 - 6*b34 - 3*b35 - 6*b36 - 3*b37 - 6*b38 - 3*b39 - 6*b40 - 3*b41
      - 6*b42 - 3*b43 - 6*b44 - 3*b45 - 6*b46 - 3*b47 - 6*b48 - 3*b49 - 6*b50
      - 3*b51 - 6*b52 - 3*b53 - 6*b54 - 3*b55 - 6*b56 - 3*b57 - 6*b58 - 3*b59
      - 6*b60 - 3*b61 - 6*b62 - 3*b63 - 6*b64 - 3*b65 - 6*b66 - 3*b67 - 6*b68
      - 3*b69 - 6*b70 - 3*b71 - 6*b72 - 3*b73 - 6*b74 - 3*b117 - 6*b118
      - 3*b157 - 6*b158 - 3*b195 - 6*b196 - 3*b231 - 6*b232 - 3*b265 - 6*b266
      - 3*b297 - 6*b298 - 3*b327 - 6*b328 - 3*b355 - 6*b356 - 3*b381 - 6*b382
      - 3*b405 - 6*b406 - 3*b427 - 6*b428 - 3*b447 - 6*b448 - 3*b465 - 6*b466
      - 3*b481 - 6*b482 - 3*b495 - 6*b496 - 3*b507 - 6*b508 - 3*b517 - 6*b518
      - 3*b525 - 6*b526 - 3*b531 - 6*b532 - 3*b535 - 6*b536 - 3*b537 - 6*b538
      - i539 - 2*i540 - i541 - 2*i542 - i543 - 2*i544 - i545 - 2*i546 - i547
      - 2*i548 - i549 - 2*i550 - i551 - 2*i552 - i553 - 2*i554 - i555 - 2*i556
      - i557 - 2*i558 - i559 - 2*i560 - i561 - 2*i562 - i563 - 2*i564 - i565
      - 2*i566 - i567 - 2*i568 - i569 - 2*i570 - i571 - 2*i572 - i573 - 2*i574
      - i575 - 2*i576 - i577 - 2*i578 - i579 - 2*i580 - i623 - 2*i624 - i663
      - 2*i664 - i701 - 2*i702 - i737 - 2*i738 - i771 - 2*i772 - i803 - 2*i804
      - i833 - 2*i834 - i861 - 2*i862 - i887 - 2*i888 - i911 - 2*i912 - i933
      - 2*i934 - i953 - 2*i954 - i971 - 2*i972 - i987 - 2*i988 - i1001
      - 2*i1002 - i1013 - 2*i1014 - i1023 - 2*i1024 - i1031 - 2*i1032 - i1037
      - 2*i1038 - i1041 - 2*i1042 - i1043 - 2*i1044 <= -21;

e34:  - 3*b75 - 6*b76 - 3*b117 - 6*b118 - 3*b157 - 6*b158 - 3*b195 - 6*b196
      - 3*b231 - 6*b232 - 3*b265 - 6*b266 - 3*b297 - 6*b298 - 3*b327 - 6*b328
      - 3*b355 - 6*b356 - 3*b381 - 6*b382 - 3*b405 - 6*b406 - 3*b427 - 6*b428
      - 3*b447 - 6*b448 - 3*b465 - 6*b466 - 3*b481 - 6*b482 - 3*b495 - 6*b496
      - 3*b507 - 6*b508 - 3*b517 - 6*b518 - 3*b525 - 6*b526 - 3*b531 - 6*b532
      - 3*b535 - 6*b536 - 3*b537 - 6*b538 - i581 - 2*i582 - i623 - 2*i624
      - i663 - 2*i664 - i701 - 2*i702 - i737 - 2*i738 - i771 - 2*i772 - i803
      - 2*i804 - i833 - 2*i834 - i861 - 2*i862 - i887 - 2*i888 - i911 - 2*i912
      - i933 - 2*i934 - i953 - 2*i954 - i971 - 2*i972 - i987 - 2*i988 - i1001
      - 2*i1002 - i1013 - 2*i1014 - i1023 - 2*i1024 - i1031 - 2*i1032 - i1037
      - 2*i1038 - i1041 - 2*i1042 - i1043 - 2*i1044 <= -7;

e35:  - 3*b77 - 6*b78 - 3*b97 - 6*b98 - 3*b133 - 6*b134 - 3*b143 - 6*b144
      - 3*b385 - 6*b386 - 3*b433 - 6*b434 - i583 - 2*i584 - i603 - 2*i604
      - i639 - 2*i640 - i649 - 2*i650 - i891 - 2*i892 - i939 - 2*i940 <= -3;

e36:  - 3*b51 - 6*b52 - 3*b61 - 6*b62 - 3*b93 - 6*b94 - 3*b103 - 6*b104
      - 3*b133 - 6*b134 - 3*b143 - 6*b144 - 3*b171 - 6*b172 - 3*b181 - 6*b182
      - 3*b207 - 6*b208 - 3*b217 - 6*b218 - 3*b241 - 6*b242 - 3*b251 - 6*b252
      - 3*b273 - 6*b274 - 3*b283 - 6*b284 - 3*b303 - 6*b304 - 3*b313 - 6*b314
      - 3*b331 - 6*b332 - 3*b341 - 6*b342 - 3*b357 - 6*b358 - 3*b367 - 6*b368
      - 3*b383 - 6*b384 - 3*b385 - 6*b386 - 3*b387 - 6*b388 - 3*b389 - 6*b390
      - 3*b393 - 6*b394 - 3*b395 - 6*b396 - 3*b397 - 6*b398 - 3*b399 - 6*b400
      - 3*b401 - 6*b402 - 3*b403 - 6*b404 - 3*b405 - 6*b406 - 3*b413 - 6*b414
      - 3*b433 - 6*b434 - 3*b451 - 6*b452 - 3*b467 - 6*b468 - 3*b483 - 6*b484
      - 3*b485 - 6*b486 - 3*b487 - 6*b488 - 3*b489 - 6*b490 - 3*b491 - 6*b492
      - 3*b493 - 6*b494 - 3*b495 - 6*b496 - i557 - 2*i558 - i567 - 2*i568
      - i599 - 2*i600 - i609 - 2*i610 - i639 - 2*i640 - i649 - 2*i650 - i677
      - 2*i678 - i687 - 2*i688 - i713 - 2*i714 - i723 - 2*i724 - i747 - 2*i748
      - i757 - 2*i758 - i779 - 2*i780 - i789 - 2*i790 - i809 - 2*i810 - i819
      - 2*i820 - i837 - 2*i838 - i847 - 2*i848 - i863 - 2*i864 - i873 - 2*i874
      - i889 - 2*i890 - i891 - 2*i892 - i893 - 2*i894 - i895 - 2*i896 - i899
      - 2*i900 - i901 - 2*i902 - i903 - 2*i904 - i905 - 2*i906 - i907 - 2*i908
      - i909 - 2*i910 - i911 - 2*i912 - i919 - 2*i920 - i939 - 2*i940 - i957
      - 2*i958 - i973 - 2*i974 - i989 - 2*i990 - i991 - 2*i992 - i993 - 2*i994
      - i995 - 2*i996 - i997 - 2*i998 - i999 - 2*i1000 - i1001 - 2*i1002 <= -3;

e37:  - 3*b33 - 6*b34 - 3*b51 - 6*b52 - 3*b61 - 6*b62 - 3*b79 - 6*b80 - 3*b81
      - 6*b82 - 3*b83 - 6*b84 - 3*b85 - 6*b86 - 3*b87 - 6*b88 - 3*b89 - 6*b90
      - 3*b91 - 6*b92 - 3*b95 - 6*b96 - 3*b99 - 6*b100 - 3*b101 - 6*b102
      - 3*b105 - 6*b106 - 3*b107 - 6*b108 - 3*b109 - 6*b110 - 3*b111 - 6*b112
      - 3*b113 - 6*b114 - 3*b115 - 6*b116 - 3*b117 - 6*b118 - 3*b171 - 6*b172
      - 3*b181 - 6*b182 - 3*b207 - 6*b208 - 3*b217 - 6*b218 - 3*b241 - 6*b242
      - 3*b251 - 6*b252 - 3*b273 - 6*b274 - 3*b283 - 6*b284 - 3*b303 - 6*b304
      - 3*b313 - 6*b314 - 3*b331 - 6*b332 - 3*b341 - 6*b342 - 3*b357 - 6*b358
      - 3*b367 - 6*b368 - 3*b383 - 6*b384 - 3*b387 - 6*b388 - 3*b389 - 6*b390
      - 3*b393 - 6*b394 - 3*b395 - 6*b396 - 3*b397 - 6*b398 - 3*b399 - 6*b400
      - 3*b401 - 6*b402 - 3*b403 - 6*b404 - 3*b405 - 6*b406 - 3*b413 - 6*b414
      - 3*b451 - 6*b452 - 3*b467 - 6*b468 - 3*b483 - 6*b484 - 3*b485 - 6*b486
      - 3*b487 - 6*b488 - 3*b489 - 6*b490 - 3*b491 - 6*b492 - 3*b493 - 6*b494
      - 3*b495 - 6*b496 - i539 - 2*i540 - i557 - 2*i558 - i567 - 2*i568 - i585
      - 2*i586 - i587 - 2*i588 - i589 - 2*i590 - i591 - 2*i592 - i593 - 2*i594
      - i595 - 2*i596 - i597 - 2*i598 - i601 - 2*i602 - i605 - 2*i606 - i607
      - 2*i608 - i611 - 2*i612 - i613 - 2*i614 - i615 - 2*i616 - i617 - 2*i618
      - i619 - 2*i620 - i621 - 2*i622 - i623 - 2*i624 - i677 - 2*i678 - i687
      - 2*i688 - i713 - 2*i714 - i723 - 2*i724 - i747 - 2*i748 - i757 - 2*i758
      - i779 - 2*i780 - i789 - 2*i790 - i809 - 2*i810 - i819 - 2*i820 - i837
      - 2*i838 - i847 - 2*i848 - i863 - 2*i864 - i873 - 2*i874 - i889 - 2*i890
      - i893 - 2*i894 - i895 - 2*i896 - i899 - 2*i900 - i901 - 2*i902 - i903
      - 2*i904 - i905 - 2*i906 - i907 - 2*i908 - i909 - 2*i910 - i911 - 2*i912
      - i919 - 2*i920 - i957 - 2*i958 - i973 - 2*i974 - i989 - 2*i990 - i991
      - 2*i992 - i993 - 2*i994 - i995 - 2*i996 - i997 - 2*i998 - i999 - 2*i1000
      - i1001 - 2*i1002 <= -6;

e38:  - 3*b97 - 6*b98 - 3*b121 - 6*b122 - 3*b127 - 6*b128 - 3*b135 - 6*b136
      - 3*b137 - 6*b138 - 3*b139 - 6*b140 - 3*b155 - 6*b156 - 3*b385 - 6*b386
      - 3*b433 - 6*b434 - i603 - 2*i604 - i627 - 2*i628 - i633 - 2*i634 - i641
      - 2*i642 - i643 - 2*i644 - i645 - 2*i646 - i661 - 2*i662 - i891 - 2*i892
      - i939 - 2*i940 <= -6;

e39:  - 3*b55 - 6*b56 - 3*b159 - 6*b160 - 3*b165 - 6*b166 - 3*b173 - 6*b174
      - 3*b175 - 6*b176 - 3*b177 - 6*b178 - 3*b193 - 6*b194 - 3*b223 - 6*b224
      - 3*b245 - 6*b246 - 3*b277 - 6*b278 - 3*b319 - 6*b320 - 3*b335 - 6*b336
      - 3*b361 - 6*b362 - 3*b419 - 6*b420 - 3*b431 - 6*b432 - 3*b435 - 6*b436
      - 3*b437 - 6*b438 - 3*b439 - 6*b440 - 3*b441 - 6*b442 - 3*b443 - 6*b444
      - 3*b447 - 6*b448 - 3*b457 - 6*b458 - 3*b523 - 6*b524 - i561 - 2*i562
      - i665 - 2*i666 - i671 - 2*i672 - i679 - 2*i680 - i681 - 2*i682 - i683
      - 2*i684 - i699 - 2*i700 - i729 - 2*i730 - i751 - 2*i752 - i783 - 2*i784
      - i825 - 2*i826 - i841 - 2*i842 - i867 - 2*i868 - i925 - 2*i926 - i937
      - 2*i938 - i941 - 2*i942 - i943 - 2*i944 - i945 - 2*i946 - i947 - 2*i948
      - i949 - 2*i950 - i953 - 2*i954 - i963 - 2*i964 - i1029 - 2*i1030 <= -3;

e40:  - 3*b67 - 6*b68 - 3*b109 - 6*b110 - 3*b119 - 6*b120 - 3*b161 - 6*b162
      - 3*b167 - 6*b168 - 3*b169 - 6*b170 - 3*b183 - 6*b184 - 3*b185 - 6*b186
      - 3*b187 - 6*b188 - 3*b223 - 6*b224 - 3*b245 - 6*b246 - 3*b289 - 6*b290
      - 3*b319 - 6*b320 - 3*b335 - 6*b336 - 3*b361 - 6*b362 - 3*b397 - 6*b398
      - 3*b419 - 6*b420 - 3*b435 - 6*b436 - 3*b437 - 6*b438 - 3*b439 - 6*b440
      - 3*b457 - 6*b458 - 3*b473 - 6*b474 - 3*b487 - 6*b488 - 3*b519 - 6*b520
      - 3*b521 - 6*b522 - 3*b523 - 6*b524 - 3*b525 - 6*b526 - i573 - 2*i574
      - i615 - 2*i616 - i625 - 2*i626 - i667 - 2*i668 - i673 - 2*i674 - i675
      - 2*i676 - i689 - 2*i690 - i691 - 2*i692 - i693 - 2*i694 - i729 - 2*i730
      - i751 - 2*i752 - i795 - 2*i796 - i825 - 2*i826 - i841 - 2*i842 - i867
      - 2*i868 - i903 - 2*i904 - i925 - 2*i926 - i941 - 2*i942 - i943 - 2*i944
      - i945 - 2*i946 - i963 - 2*i964 - i979 - 2*i980 - i993 - 2*i994 - i1025
      - 2*i1026 - i1027 - 2*i1028 - i1029 - 2*i1030 - i1031 - 2*i1032 <= -4;

e41:  - 3*b39 - 6*b40 - 3*b45 - 6*b46 - 3*b81 - 6*b82 - 3*b87 - 6*b88 - 3*b121
      - 6*b122 - 3*b127 - 6*b128 - 3*b159 - 6*b160 - 3*b165 - 6*b166 - 3*b197
      - 6*b198 - 3*b199 - 6*b200 - 3*b203 - 6*b204 - 3*b205 - 6*b206 - 3*b207
      - 6*b208 - 3*b209 - 6*b210 - 3*b211 - 6*b212 - 3*b213 - 6*b214 - 3*b215
      - 6*b216 - 3*b217 - 6*b218 - 3*b219 - 6*b220 - 3*b221 - 6*b222 - 3*b223
      - 6*b224 - 3*b225 - 6*b226 - 3*b227 - 6*b228 - 3*b229 - 6*b230 - 3*b231
      - 6*b232 - 3*b235 - 6*b236 - 3*b267 - 6*b268 - 3*b299 - 6*b300 - 3*b301
      - 6*b302 - 3*b303 - 6*b304 - 3*b305 - 6*b306 - 3*b307 - 6*b308 - 3*b309
      - 6*b310 - 3*b311 - 6*b312 - 3*b313 - 6*b314 - 3*b315 - 6*b316 - 3*b317
      - 6*b318 - 3*b319 - 6*b320 - 3*b321 - 6*b322 - 3*b323 - 6*b324 - 3*b325
      - 6*b326 - 3*b327 - 6*b328 - i545 - 2*i546 - i551 - 2*i552 - i587
      - 2*i588 - i593 - 2*i594 - i627 - 2*i628 - i633 - 2*i634 - i665 - 2*i666
      - i671 - 2*i672 - i703 - 2*i704 - i705 - 2*i706 - i709 - 2*i710 - i711
      - 2*i712 - i713 - 2*i714 - i715 - 2*i716 - i717 - 2*i718 - i719 - 2*i720
      - i721 - 2*i722 - i723 - 2*i724 - i725 - 2*i726 - i727 - 2*i728 - i729
      - 2*i730 - i731 - 2*i732 - i733 - 2*i734 - i735 - 2*i736 - i737 - 2*i738
      - i741 - 2*i742 - i773 - 2*i774 - i805 - 2*i806 - i807 - 2*i808 - i809
      - 2*i810 - i811 - 2*i812 - i813 - 2*i814 - i815 - 2*i816 - i817 - 2*i818
      - i819 - 2*i820 - i821 - 2*i822 - i823 - 2*i824 - i825 - 2*i826 - i827
      - 2*i828 - i829 - 2*i830 - i831 - 2*i832 - i833 - 2*i834 <= -8;

e42:  - 3*b59 - 6*b60 - 3*b69 - 6*b70 - 3*b101 - 6*b102 - 3*b111 - 6*b112
      - 3*b141 - 6*b142 - 3*b151 - 6*b152 - 3*b179 - 6*b180 - 3*b189 - 6*b190
      - 3*b215 - 6*b216 - 3*b225 - 6*b226 - 3*b249 - 6*b250 - 3*b259 - 6*b260
      - 3*b281 - 6*b282 - 3*b291 - 6*b292 - 3*b311 - 6*b312 - 3*b321 - 6*b322
      - 3*b339 - 6*b340 - 3*b349 - 6*b350 - 3*b365 - 6*b366 - 3*b375 - 6*b376
      - 3*b389 - 6*b390 - 3*b399 - 6*b400 - 3*b411 - 6*b412 - 3*b421 - 6*b422
      - 3*b431 - 6*b432 - 3*b441 - 6*b442 - 3*b449 - 6*b450 - 3*b459 - 6*b460
      - 3*b467 - 6*b468 - 3*b469 - 6*b470 - 3*b471 - 6*b472 - 3*b473 - 6*b474
      - 3*b477 - 6*b478 - 3*b479 - 6*b480 - 3*b481 - 6*b482 - 3*b489 - 6*b490
      - 3*b501 - 6*b502 - 3*b511 - 6*b512 - 3*b519 - 6*b520 - 3*b527 - 6*b528
      - 3*b529 - 6*b530 - 3*b531 - 6*b532 - i565 - 2*i566 - i575 - 2*i576
      - i607 - 2*i608 - i617 - 2*i618 - i647 - 2*i648 - i657 - 2*i658 - i685
      - 2*i686 - i695 - 2*i696 - i721 - 2*i722 - i731 - 2*i732 - i755 - 2*i756
      - i765 - 2*i766 - i787 - 2*i788 - i797 - 2*i798 - i817 - 2*i818 - i827
      - 2*i828 - i845 - 2*i846 - i855 - 2*i856 - i871 - 2*i872 - i881 - 2*i882
      - i895 - 2*i896 - i905 - 2*i906 - i917 - 2*i918 - i927 - 2*i928 - i937
      - 2*i938 - i947 - 2*i948 - i955 - 2*i956 - i965 - 2*i966 - i973 - 2*i974
      - i975 - 2*i976 - i977 - 2*i978 - i979 - 2*i980 - i983 - 2*i984 - i985
      - 2*i986 - i987 - 2*i988 - i995 - 2*i996 - i1007 - 2*i1008 - i1017
      - 2*i1018 - i1025 - 2*i1026 - i1033 - 2*i1034 - i1035 - 2*i1036 - i1037
      - 2*i1038 <= -6;

e43:  - 3*b45 - 6*b46 - 3*b87 - 6*b88 - 3*b127 - 6*b128 - 3*b165 - 6*b166
      - 3*b201 - 6*b202 - 3*b235 - 6*b236 - 3*b267 - 6*b268 - 3*b299 - 6*b300
      - 3*b301 - 6*b302 - 3*b303 - 6*b304 - 3*b305 - 6*b306 - 3*b307 - 6*b308
      - 3*b309 - 6*b310 - 3*b311 - 6*b312 - 3*b313 - 6*b314 - 3*b315 - 6*b316
      - 3*b317 - 6*b318 - 3*b319 - 6*b320 - 3*b321 - 6*b322 - 3*b323 - 6*b324
      - 3*b325 - 6*b326 - 3*b327 - 6*b328 - i551 - 2*i552 - i593 - 2*i594
      - i633 - 2*i634 - i671 - 2*i672 - i707 - 2*i708 - i741 - 2*i742 - i773
      - 2*i774 - i805 - 2*i806 - i807 - 2*i808 - i809 - 2*i810 - i811 - 2*i812
      - i813 - 2*i814 - i815 - 2*i816 - i817 - 2*i818 - i819 - 2*i820 - i821
      - 2*i822 - i823 - 2*i824 - i825 - 2*i826 - i827 - 2*i828 - i829 - 2*i830
      - i831 - 2*i832 - i833 - 2*i834 <= -4;

e44:  - 3*b47 - 6*b48 - 3*b89 - 6*b90 - 3*b203 - 6*b204 - 3*b239 - 6*b240
      - 3*b269 - 6*b270 - 3*b299 - 6*b300 - 3*b329 - 6*b330 - 3*b331 - 6*b332
      - 3*b333 - 6*b334 - 3*b337 - 6*b338 - 3*b339 - 6*b340 - 3*b341 - 6*b342
      - 3*b349 - 6*b350 - 3*b351 - 6*b352 - 3*b353 - 6*b354 - 3*b355 - 6*b356
      - 3*b369 - 6*b370 - 3*b371 - 6*b372 - i553 - 2*i554 - i595 - 2*i596
      - i709 - 2*i710 - i745 - 2*i746 - i775 - 2*i776 - i805 - 2*i806 - i835
      - 2*i836 - i837 - 2*i838 - i839 - 2*i840 - i843 - 2*i844 - i845 - 2*i846
      - i847 - 2*i848 - i855 - 2*i856 - i857 - 2*i858 - i859 - 2*i860 - i861
      - 2*i862 - i875 - 2*i876 - i877 - 2*i878 <= -9;

e45:  - 3*b145 - 6*b146 - 3*b147 - 6*b148 - 3*b161 - 6*b162 - 3*b183 - 6*b184
      - 3*b185 - 6*b186 - 3*b237 - 6*b238 - 3*b239 - 6*b240 - 3*b245 - 6*b246
      - 3*b257 - 6*b258 - 3*b343 - 6*b344 - 3*b345 - 6*b346 - 3*b369 - 6*b370
      - 3*b371 - 6*b372 - 3*b435 - 6*b436 - 3*b437 - 6*b438 - 3*b499 - 6*b500
      - 3*b509 - 6*b510 - i651 - 2*i652 - i653 - 2*i654 - i667 - 2*i668 - i689
      - 2*i690 - i691 - 2*i692 - i743 - 2*i744 - i745 - 2*i746 - i751 - 2*i752
      - i763 - 2*i764 - i849 - 2*i850 - i851 - 2*i852 - i875 - 2*i876 - i877
      - 2*i878 - i941 - 2*i942 - i943 - 2*i944 - i1005 - 2*i1006 - i1015
      - 2*i1016 <= -28;

e46:  - 3*b61 - 6*b62 - 3*b103 - 6*b104 - 3*b143 - 6*b144 - 3*b181 - 6*b182
      - 3*b217 - 6*b218 - 3*b251 - 6*b252 - 3*b283 - 6*b284 - 3*b313 - 6*b314
      - 3*b341 - 6*b342 - 3*b367 - 6*b368 - 3*b391 - 6*b392 - 3*b413 - 6*b414
      - 3*b433 - 6*b434 - 3*b451 - 6*b452 - 3*b467 - 6*b468 - 3*b483 - 6*b484
      - 3*b485 - 6*b486 - 3*b487 - 6*b488 - 3*b489 - 6*b490 - 3*b491 - 6*b492
      - 3*b493 - 6*b494 - 3*b495 - 6*b496 - i567 - 2*i568 - i609 - 2*i610
      - i649 - 2*i650 - i687 - 2*i688 - i723 - 2*i724 - i757 - 2*i758 - i789
      - 2*i790 - i819 - 2*i820 - i847 - 2*i848 - i873 - 2*i874 - i897 - 2*i898
      - i919 - 2*i920 - i939 - 2*i940 - i957 - 2*i958 - i973 - 2*i974 - i989
      - 2*i990 - i991 - 2*i992 - i993 - 2*i994 - i995 - 2*i996 - i997 - 2*i998
      - i999 - 2*i1000 - i1001 - 2*i1002 <= -1;

e47:  - 3*b53 - 6*b54 - 3*b57 - 6*b58 - 3*b95 - 6*b96 - 3*b99 - 6*b100 - 3*b135
      - 6*b136 - 3*b139 - 6*b140 - 3*b173 - 6*b174 - 3*b177 - 6*b178 - 3*b209
      - 6*b210 - 3*b213 - 6*b214 - 3*b243 - 6*b244 - 3*b247 - 6*b248 - 3*b275
      - 6*b276 - 3*b279 - 6*b280 - 3*b305 - 6*b306 - 3*b309 - 6*b310 - 3*b333
      - 6*b334 - 3*b337 - 6*b338 - 3*b359 - 6*b360 - 3*b363 - 6*b364 - 3*b383
      - 6*b384 - 3*b387 - 6*b388 - 3*b407 - 6*b408 - 3*b411 - 6*b412 - 3*b413
      - 6*b414 - 3*b415 - 6*b416 - 3*b417 - 6*b418 - 3*b419 - 6*b420 - 3*b421
      - 6*b422 - 3*b423 - 6*b424 - 3*b425 - 6*b426 - 3*b427 - 6*b428 - 3*b429
      - 6*b430 - 3*b449 - 6*b450 - 3*b451 - 6*b452 - 3*b453 - 6*b454 - 3*b455
      - 6*b456 - 3*b457 - 6*b458 - 3*b459 - 6*b460 - 3*b461 - 6*b462 - 3*b463
      - 6*b464 - 3*b465 - 6*b466 - i559 - 2*i560 - i563 - 2*i564 - i601
      - 2*i602 - i605 - 2*i606 - i641 - 2*i642 - i645 - 2*i646 - i679 - 2*i680
      - i683 - 2*i684 - i715 - 2*i716 - i719 - 2*i720 - i749 - 2*i750 - i753
      - 2*i754 - i781 - 2*i782 - i785 - 2*i786 - i811 - 2*i812 - i815 - 2*i816
      - i839 - 2*i840 - i843 - 2*i844 - i865 - 2*i866 - i869 - 2*i870 - i889
      - 2*i890 - i893 - 2*i894 - i913 - 2*i914 - i917 - 2*i918 - i919 - 2*i920
      - i921 - 2*i922 - i923 - 2*i924 - i925 - 2*i926 - i927 - 2*i928 - i929
      - 2*i930 - i931 - 2*i932 - i933 - 2*i934 - i935 - 2*i936 - i955 - 2*i956
      - i957 - 2*i958 - i959 - 2*i960 - i961 - 2*i962 - i963 - 2*i964 - i965
      - 2*i966 - i967 - 2*i968 - i969 - 2*i970 - i971 - 2*i972 <= -4;

e48:  - 3*b57 - 6*b58 - 3*b99 - 6*b100 - 3*b139 - 6*b140 - 3*b177 - 6*b178
      - 3*b213 - 6*b214 - 3*b247 - 6*b248 - 3*b279 - 6*b280 - 3*b309 - 6*b310
      - 3*b337 - 6*b338 - 3*b363 - 6*b364 - 3*b387 - 6*b388 - 3*b409 - 6*b410
      - 3*b429 - 6*b430 - 3*b449 - 6*b450 - 3*b451 - 6*b452 - 3*b453 - 6*b454
      - 3*b455 - 6*b456 - 3*b457 - 6*b458 - 3*b459 - 6*b460 - 3*b461 - 6*b462
      - 3*b463 - 6*b464 - 3*b465 - 6*b466 - i563 - 2*i564 - i605 - 2*i606
      - i645 - 2*i646 - i683 - 2*i684 - i719 - 2*i720 - i753 - 2*i754 - i785
      - 2*i786 - i815 - 2*i816 - i843 - 2*i844 - i869 - 2*i870 - i893 - 2*i894
      - i915 - 2*i916 - i935 - 2*i936 - i955 - 2*i956 - i957 - 2*i958 - i959
      - 2*i960 - i961 - 2*i962 - i963 - 2*i964 - i965 - 2*i966 - i967 - 2*i968
      - i969 - 2*i970 - i971 - 2*i972 <= -2;

e49:  - 3*b161 - 6*b162 - 3*b237 - 6*b238 - 3*b239 - 6*b240 - 3*b245 - 6*b246
      - 3*b253 - 6*b254 - 3*b255 - 6*b256 - 3*b257 - 6*b258 - i667 - 2*i668
      - i743 - 2*i744 - i745 - 2*i746 - i751 - 2*i752 - i759 - 2*i760 - i761
      - 2*i762 - i763 - 2*i764 <= -2;

e50:  - 3*b63 - 6*b64 - 3*b105 - 6*b106 - 3*b145 - 6*b146 - 3*b183 - 6*b184
      - 3*b219 - 6*b220 - 3*b253 - 6*b254 - 3*b285 - 6*b286 - 3*b315 - 6*b316
      - 3*b343 - 6*b344 - 3*b369 - 6*b370 - 3*b393 - 6*b394 - 3*b415 - 6*b416
      - 3*b435 - 6*b436 - 3*b453 - 6*b454 - 3*b469 - 6*b470 - 3*b483 - 6*b484
      - 3*b497 - 6*b498 - 3*b499 - 6*b500 - 3*b501 - 6*b502 - 3*b503 - 6*b504
      - 3*b505 - 6*b506 - 3*b507 - 6*b508 - i569 - 2*i570 - i611 - 2*i612
      - i651 - 2*i652 - i689 - 2*i690 - i725 - 2*i726 - i759 - 2*i760 - i791
      - 2*i792 - i821 - 2*i822 - i849 - 2*i850 - i875 - 2*i876 - i899 - 2*i900
      - i921 - 2*i922 - i941 - 2*i942 - i959 - 2*i960 - i975 - 2*i976 - i989
      - 2*i990 - i1003 - 2*i1004 - i1005 - 2*i1006 - i1007 - 2*i1008 - i1009
      - 2*i1010 - i1011 - 2*i1012 - i1013 - 2*i1014 <= -9;

e51:  - 3*b119 - 6*b120 - 3*b129 - 6*b130 - 3*b131 - 6*b132 - 3*b145 - 6*b146
      - 3*b147 - 6*b148 - 3*b149 - 6*b150 - i625 - 2*i626 - i635 - 2*i636
      - i637 - 2*i638 - i651 - 2*i652 - i653 - 2*i654 - i655 - 2*i656 <= -16;

e52:  - 3*b67 - 6*b68 - 3*b109 - 6*b110 - 3*b119 - 6*b120 - 3*b161 - 6*b162
      - 3*b167 - 6*b168 - 3*b169 - 6*b170 - 3*b183 - 6*b184 - 3*b185 - 6*b186
      - 3*b187 - 6*b188 - 3*b223 - 6*b224 - 3*b245 - 6*b246 - 3*b289 - 6*b290
      - 3*b319 - 6*b320 - 3*b335 - 6*b336 - 3*b361 - 6*b362 - 3*b397 - 6*b398
      - 3*b419 - 6*b420 - 3*b435 - 6*b436 - 3*b437 - 6*b438 - 3*b439 - 6*b440
      - 3*b457 - 6*b458 - 3*b473 - 6*b474 - 3*b487 - 6*b488 - 3*b519 - 6*b520
      - 3*b521 - 6*b522 - 3*b523 - 6*b524 - 3*b525 - 6*b526 - i573 - 2*i574
      - i615 - 2*i616 - i625 - 2*i626 - i667 - 2*i668 - i673 - 2*i674 - i675
      - 2*i676 - i689 - 2*i690 - i691 - 2*i692 - i693 - 2*i694 - i729 - 2*i730
      - i751 - 2*i752 - i795 - 2*i796 - i825 - 2*i826 - i841 - 2*i842 - i867
      - 2*i868 - i903 - 2*i904 - i925 - 2*i926 - i941 - 2*i942 - i943 - 2*i944
      - i945 - 2*i946 - i963 - 2*i964 - i979 - 2*i980 - i993 - 2*i994 - i1025
      - 2*i1026 - i1027 - 2*i1028 - i1029 - 2*i1030 - i1031 - 2*i1032 <= -4;

e53:  - 3*b129 - 6*b130 - 3*b145 - 6*b146 - 3*b147 - 6*b148 - 3*b161 - 6*b162
      - 3*b167 - 6*b168 - 3*b183 - 6*b184 - 3*b185 - 6*b186 - 3*b245 - 6*b246
      - 3*b257 - 6*b258 - 3*b335 - 6*b336 - 3*b347 - 6*b348 - 3*b435 - 6*b436
      - 3*b437 - 6*b438 - 3*b499 - 6*b500 - 3*b509 - 6*b510 - i635 - 2*i636
      - i651 - 2*i652 - i653 - 2*i654 - i667 - 2*i668 - i673 - 2*i674 - i689
      - 2*i690 - i691 - 2*i692 - i751 - 2*i752 - i763 - 2*i764 - i841 - 2*i842
      - i853 - 2*i854 - i941 - 2*i942 - i943 - 2*i944 - i1005 - 2*i1006 - i1015
      - 2*i1016 <= -13;

e54:  - 3*b131 - 6*b132 - 3*b169 - 6*b170 - 3*b361 - 6*b362 - 3*b373 - 6*b374
      - i637 - 2*i638 - i675 - 2*i676 - i867 - 2*i868 - i879 - 2*i880 <= -6;

e55:  - 3*b59 - 6*b60 - 3*b101 - 6*b102 - 3*b141 - 6*b142 - 3*b179 - 6*b180
      - 3*b215 - 6*b216 - 3*b249 - 6*b250 - 3*b281 - 6*b282 - 3*b311 - 6*b312
      - 3*b339 - 6*b340 - 3*b365 - 6*b366 - 3*b389 - 6*b390 - 3*b411 - 6*b412
      - 3*b431 - 6*b432 - 3*b449 - 6*b450 - 3*b467 - 6*b468 - 3*b469 - 6*b470
      - 3*b471 - 6*b472 - 3*b473 - 6*b474 - 3*b475 - 6*b476 - 3*b477 - 6*b478
      - 3*b479 - 6*b480 - 3*b481 - 6*b482 - i565 - 2*i566 - i607 - 2*i608
      - i647 - 2*i648 - i685 - 2*i686 - i721 - 2*i722 - i755 - 2*i756 - i787
      - 2*i788 - i817 - 2*i818 - i845 - 2*i846 - i871 - 2*i872 - i895 - 2*i896
      - i917 - 2*i918 - i937 - 2*i938 - i955 - 2*i956 - i973 - 2*i974 - i975
      - 2*i976 - i977 - 2*i978 - i979 - 2*i980 - i981 - 2*i982 - i983 - 2*i984
      - i985 - 2*i986 - i987 - 2*i988 <= -2;

e56:  - 3*b35 - 6*b36 - 3*b123 - 6*b124 - 3*b125 - 6*b126 - 3*b141 - 6*b142
      - 3*b151 - 6*b152 - 3*b153 - 6*b154 - 3*b157 - 6*b158 - i541 - 2*i542
      - i629 - 2*i630 - i631 - 2*i632 - i647 - 2*i648 - i657 - 2*i658 - i659
      - 2*i660 - i663 - 2*i664 <= -5;

e57:  - 3*b37 - 6*b38 - 3*b55 - 6*b56 - 3*b67 - 6*b68 - 3*b79 - 6*b80 - 3*b109
      - 6*b110 - 3*b163 - 6*b164 - 3*b171 - 6*b172 - 3*b179 - 6*b180 - 3*b181
      - 6*b182 - 3*b189 - 6*b190 - 3*b191 - 6*b192 - 3*b195 - 6*b196 - 3*b277
      - 6*b278 - 3*b289 - 6*b290 - 3*b397 - 6*b398 - 3*b431 - 6*b432 - 3*b441
      - 6*b442 - 3*b443 - 6*b444 - 3*b447 - 6*b448 - 3*b473 - 6*b474 - 3*b487
      - 6*b488 - 3*b519 - 6*b520 - 3*b521 - 6*b522 - 3*b525 - 6*b526 - i543
      - 2*i544 - i561 - 2*i562 - i573 - 2*i574 - i585 - 2*i586 - i615 - 2*i616
      - i669 - 2*i670 - i677 - 2*i678 - i685 - 2*i686 - i687 - 2*i688 - i695
      - 2*i696 - i697 - 2*i698 - i701 - 2*i702 - i783 - 2*i784 - i795 - 2*i796
      - i903 - 2*i904 - i937 - 2*i938 - i947 - 2*i948 - i949 - 2*i950 - i953
      - 2*i954 - i979 - 2*i980 - i993 - 2*i994 - i1025 - 2*i1026 - i1027
      - 2*i1028 - i1031 - 2*i1032 <= -5;

e58:  - 3*b41 - 6*b42 - 3*b83 - 6*b84 - 3*b123 - 6*b124 - 3*b197 - 6*b198
      - 3*b233 - 6*b234 - 3*b235 - 6*b236 - 3*b241 - 6*b242 - 3*b243 - 6*b244
      - 3*b247 - 6*b248 - 3*b249 - 6*b250 - 3*b251 - 6*b252 - 3*b259 - 6*b260
      - 3*b261 - 6*b262 - 3*b263 - 6*b264 - 3*b265 - 6*b266 - i547 - 2*i548
      - i589 - 2*i590 - i629 - 2*i630 - i703 - 2*i704 - i739 - 2*i740 - i741
      - 2*i742 - i747 - 2*i748 - i749 - 2*i750 - i753 - 2*i754 - i755 - 2*i756
      - i757 - 2*i758 - i765 - 2*i766 - i767 - 2*i768 - i769 - 2*i770 - i771
      - 2*i772 <= -4;

e59:  - 3*b43 - 6*b44 - 3*b59 - 6*b60 - 3*b69 - 6*b70 - 3*b85 - 6*b86 - 3*b101
      - 6*b102 - 3*b111 - 6*b112 - 3*b125 - 6*b126 - 3*b141 - 6*b142 - 3*b151
      - 6*b152 - 3*b163 - 6*b164 - 3*b179 - 6*b180 - 3*b189 - 6*b190 - 3*b199
      - 6*b200 - 3*b215 - 6*b216 - 3*b225 - 6*b226 - 3*b233 - 6*b234 - 3*b249
      - 6*b250 - 3*b259 - 6*b260 - 3*b267 - 6*b268 - 3*b269 - 6*b270 - 3*b271
      - 6*b272 - 3*b273 - 6*b274 - 3*b275 - 6*b276 - 3*b277 - 6*b278 - 3*b279
      - 6*b280 - 3*b283 - 6*b284 - 3*b285 - 6*b286 - 3*b287 - 6*b288 - 3*b289
      - 6*b290 - 3*b293 - 6*b294 - 3*b295 - 6*b296 - 3*b297 - 6*b298 - 3*b311
      - 6*b312 - 3*b321 - 6*b322 - 3*b339 - 6*b340 - 3*b349 - 6*b350 - 3*b365
      - 6*b366 - 3*b375 - 6*b376 - 3*b389 - 6*b390 - 3*b399 - 6*b400 - 3*b411
      - 6*b412 - 3*b421 - 6*b422 - 3*b431 - 6*b432 - 3*b441 - 6*b442 - 3*b449
      - 6*b450 - 3*b459 - 6*b460 - 3*b467 - 6*b468 - 3*b469 - 6*b470 - 3*b471
      - 6*b472 - 3*b473 - 6*b474 - 3*b477 - 6*b478 - 3*b479 - 6*b480 - 3*b481
      - 6*b482 - 3*b489 - 6*b490 - 3*b501 - 6*b502 - 3*b511 - 6*b512 - 3*b519
      - 6*b520 - 3*b527 - 6*b528 - 3*b529 - 6*b530 - 3*b531 - 6*b532 - i549
      - 2*i550 - i565 - 2*i566 - i575 - 2*i576 - i591 - 2*i592 - i607 - 2*i608
      - i617 - 2*i618 - i631 - 2*i632 - i647 - 2*i648 - i657 - 2*i658 - i669
      - 2*i670 - i685 - 2*i686 - i695 - 2*i696 - i705 - 2*i706 - i721 - 2*i722
      - i731 - 2*i732 - i739 - 2*i740 - i755 - 2*i756 - i765 - 2*i766 - i773
      - 2*i774 - i775 - 2*i776 - i777 - 2*i778 - i779 - 2*i780 - i781 - 2*i782
      - i783 - 2*i784 - i785 - 2*i786 - i789 - 2*i790 - i791 - 2*i792 - i793
      - 2*i794 - i795 - 2*i796 - i799 - 2*i800 - i801 - 2*i802 - i803 - 2*i804
      - i817 - 2*i818 - i827 - 2*i828 - i845 - 2*i846 - i855 - 2*i856 - i871
      - 2*i872 - i881 - 2*i882 - i895 - 2*i896 - i905 - 2*i906 - i917 - 2*i918
      - i927 - 2*i928 - i937 - 2*i938 - i947 - 2*i948 - i955 - 2*i956 - i965
      - 2*i966 - i973 - 2*i974 - i975 - 2*i976 - i977 - 2*i978 - i979 - 2*i980
      - i983 - 2*i984 - i985 - 2*i986 - i987 - 2*i988 - i995 - 2*i996 - i1007
      - 2*i1008 - i1017 - 2*i1018 - i1025 - 2*i1026 - i1033 - 2*i1034 - i1035
      - 2*i1036 - i1037 - 2*i1038 <= -8;

e60:  - 3*b47 - 6*b48 - 3*b49 - 6*b50 - 3*b89 - 6*b90 - 3*b91 - 6*b92 - 3*b203
      - 6*b204 - 3*b205 - 6*b206 - 3*b269 - 6*b270 - 3*b271 - 6*b272 - 3*b299
      - 6*b300 - 3*b301 - 6*b302 - 3*b331 - 6*b332 - 3*b333 - 6*b334 - 3*b337
      - 6*b338 - 3*b339 - 6*b340 - 3*b341 - 6*b342 - 3*b349 - 6*b350 - 3*b351
      - 6*b352 - 3*b353 - 6*b354 - 3*b355 - 6*b356 - 3*b357 - 6*b358 - 3*b359
      - 6*b360 - 3*b363 - 6*b364 - 3*b365 - 6*b366 - 3*b367 - 6*b368 - 3*b375
      - 6*b376 - 3*b377 - 6*b378 - 3*b379 - 6*b380 - 3*b381 - 6*b382 - i553
      - 2*i554 - i555 - 2*i556 - i595 - 2*i596 - i597 - 2*i598 - i709 - 2*i710
      - i711 - 2*i712 - i775 - 2*i776 - i777 - 2*i778 - i805 - 2*i806 - i807
      - 2*i808 - i837 - 2*i838 - i839 - 2*i840 - i843 - 2*i844 - i845 - 2*i846
      - i847 - 2*i848 - i855 - 2*i856 - i857 - 2*i858 - i859 - 2*i860 - i861
      - 2*i862 - i863 - 2*i864 - i865 - 2*i866 - i869 - 2*i870 - i871 - 2*i872
      - i873 - 2*i874 - i881 - 2*i882 - i883 - 2*i884 - i885 - 2*i886 - i887
      - 2*i888 <= -4;

e61:  - 3*b63 - 6*b64 - 3*b65 - 6*b66 - 3*b105 - 6*b106 - 3*b107 - 6*b108
      - 3*b219 - 6*b220 - 3*b221 - 6*b222 - 3*b285 - 6*b286 - 3*b287 - 6*b288
      - 3*b315 - 6*b316 - 3*b317 - 6*b318 - 3*b393 - 6*b394 - 3*b395 - 6*b396
      - 3*b415 - 6*b416 - 3*b417 - 6*b418 - 3*b453 - 6*b454 - 3*b455 - 6*b456
      - 3*b469 - 6*b470 - 3*b471 - 6*b472 - 3*b483 - 6*b484 - 3*b485 - 6*b486
      - 3*b501 - 6*b502 - 3*b503 - 6*b504 - 3*b505 - 6*b506 - 3*b507 - 6*b508
      - 3*b511 - 6*b512 - 3*b513 - 6*b514 - 3*b515 - 6*b516 - 3*b517 - 6*b518
      - i569 - 2*i570 - i571 - 2*i572 - i611 - 2*i612 - i613 - 2*i614 - i725
      - 2*i726 - i727 - 2*i728 - i791 - 2*i792 - i793 - 2*i794 - i821 - 2*i822
      - i823 - 2*i824 - i899 - 2*i900 - i901 - 2*i902 - i921 - 2*i922 - i923
      - 2*i924 - i959 - 2*i960 - i961 - 2*i962 - i975 - 2*i976 - i977 - 2*i978
      - i989 - 2*i990 - i991 - 2*i992 - i1007 - 2*i1008 - i1009 - 2*i1010
      - i1011 - 2*i1012 - i1013 - 2*i1014 - i1017 - 2*i1018 - i1019 - 2*i1020
      - i1021 - 2*i1022 - i1023 - 2*i1024 <= -4;

e62:  - 3*b121 - 6*b122 - 3*b127 - 6*b128 - 3*b135 - 6*b136 - 3*b139 - 6*b140
      - 3*b155 - 6*b156 - 3*b159 - 6*b160 - 3*b165 - 6*b166 - 3*b173 - 6*b174
      - 3*b177 - 6*b178 - 3*b193 - 6*b194 - 3*b211 - 6*b212 - 3*b223 - 6*b224
      - 3*b307 - 6*b308 - 3*b319 - 6*b320 - 3*b407 - 6*b408 - 3*b419 - 6*b420
      - 3*b429 - 6*b430 - 3*b445 - 6*b446 - 3*b457 - 6*b458 - 3*b523 - 6*b524
      - i627 - 2*i628 - i633 - 2*i634 - i641 - 2*i642 - i645 - 2*i646 - i661
      - 2*i662 - i665 - 2*i666 - i671 - 2*i672 - i679 - 2*i680 - i683 - 2*i684
      - i699 - 2*i700 - i717 - 2*i718 - i729 - 2*i730 - i813 - 2*i814 - i825
      - 2*i826 - i913 - 2*i914 - i925 - 2*i926 - i935 - 2*i936 - i951 - 2*i952
      - i963 - 2*i964 - i1029 - 2*i1030 <= -2;

e63:  - 3*b39 - 6*b40 - 3*b45 - 6*b46 - 3*b53 - 6*b54 - 3*b57 - 6*b58 - 3*b73
      - 6*b74 - 3*b81 - 6*b82 - 3*b87 - 6*b88 - 3*b95 - 6*b96 - 3*b99 - 6*b100
      - 3*b115 - 6*b116 - 3*b197 - 6*b198 - 3*b199 - 6*b200 - 3*b203 - 6*b204
      - 3*b205 - 6*b206 - 3*b207 - 6*b208 - 3*b215 - 6*b216 - 3*b217 - 6*b218
      - 3*b219 - 6*b220 - 3*b221 - 6*b222 - 3*b225 - 6*b226 - 3*b227 - 6*b228
      - 3*b231 - 6*b232 - 3*b235 - 6*b236 - 3*b243 - 6*b244 - 3*b247 - 6*b248
      - 3*b263 - 6*b264 - 3*b267 - 6*b268 - 3*b275 - 6*b276 - 3*b279 - 6*b280
      - 3*b295 - 6*b296 - 3*b299 - 6*b300 - 3*b301 - 6*b302 - 3*b303 - 6*b304
      - 3*b311 - 6*b312 - 3*b313 - 6*b314 - 3*b315 - 6*b316 - 3*b317 - 6*b318
      - 3*b321 - 6*b322 - 3*b323 - 6*b324 - 3*b327 - 6*b328 - 3*b333 - 6*b334
      - 3*b337 - 6*b338 - 3*b353 - 6*b354 - 3*b359 - 6*b360 - 3*b363 - 6*b364
      - 3*b379 - 6*b380 - 3*b383 - 6*b384 - 3*b387 - 6*b388 - 3*b403 - 6*b404
      - 3*b411 - 6*b412 - 3*b413 - 6*b414 - 3*b415 - 6*b416 - 3*b417 - 6*b418
      - 3*b421 - 6*b422 - 3*b423 - 6*b424 - 3*b427 - 6*b428 - 3*b449 - 6*b450
      - 3*b451 - 6*b452 - 3*b453 - 6*b454 - 3*b455 - 6*b456 - 3*b459 - 6*b460
      - 3*b461 - 6*b462 - 3*b465 - 6*b466 - 3*b479 - 6*b480 - 3*b493 - 6*b494
      - 3*b505 - 6*b506 - 3*b515 - 6*b516 - 3*b529 - 6*b530 - 3*b533 - 6*b534
      - 3*b537 - 6*b538 - i545 - 2*i546 - i551 - 2*i552 - i559 - 2*i560 - i563
      - 2*i564 - i579 - 2*i580 - i587 - 2*i588 - i593 - 2*i594 - i601 - 2*i602
      - i605 - 2*i606 - i621 - 2*i622 - i703 - 2*i704 - i705 - 2*i706 - i709
      - 2*i710 - i711 - 2*i712 - i713 - 2*i714 - i721 - 2*i722 - i723 - 2*i724
      - i725 - 2*i726 - i727 - 2*i728 - i731 - 2*i732 - i733 - 2*i734 - i737
      - 2*i738 - i741 - 2*i742 - i749 - 2*i750 - i753 - 2*i754 - i769 - 2*i770
      - i773 - 2*i774 - i781 - 2*i782 - i785 - 2*i786 - i801 - 2*i802 - i805
      - 2*i806 - i807 - 2*i808 - i809 - 2*i810 - i817 - 2*i818 - i819 - 2*i820
      - i821 - 2*i822 - i823 - 2*i824 - i827 - 2*i828 - i829 - 2*i830 - i833
      - 2*i834 - i839 - 2*i840 - i843 - 2*i844 - i859 - 2*i860 - i865 - 2*i866
      - i869 - 2*i870 - i885 - 2*i886 - i889 - 2*i890 - i893 - 2*i894 - i909
      - 2*i910 - i917 - 2*i918 - i919 - 2*i920 - i921 - 2*i922 - i923 - 2*i924
      - i927 - 2*i928 - i929 - 2*i930 - i933 - 2*i934 - i955 - 2*i956 - i957
      - 2*i958 - i959 - 2*i960 - i961 - 2*i962 - i965 - 2*i966 - i967 - 2*i968
      - i971 - 2*i972 - i985 - 2*i986 - i999 - 2*i1000 - i1011 - 2*i1012
      - i1021 - 2*i1022 - i1035 - 2*i1036 - i1039 - 2*i1040 - i1043 - 2*i1044
      <= -5;

e64:    b33 + b34 <= 1;

e65:    b35 + b36 <= 1;

e66:    b37 + b38 <= 1;

e67:    b39 + b40 <= 1;

e68:    b41 + b42 <= 1;

e69:    b43 + b44 <= 1;

e70:    b45 + b46 <= 1;

e71:    b47 + b48 <= 1;

e72:    b49 + b50 <= 1;

e73:    b51 + b52 <= 1;

e74:    b53 + b54 <= 1;

e75:    b55 + b56 <= 1;

e76:    b57 + b58 <= 1;

e77:    b59 + b60 <= 1;

e78:    b61 + b62 <= 1;

e79:    b63 + b64 <= 1;

e80:    b65 + b66 <= 1;

e81:    b67 + b68 <= 1;

e82:    b69 + b70 <= 1;

e83:    b71 + b72 <= 1;

e84:    b73 + b74 <= 1;

e85:    b75 + b76 <= 1;

e86:    b77 + b78 <= 1;

e87:    b79 + b80 <= 1;

e88:    b81 + b82 <= 1;

e89:    b83 + b84 <= 1;

e90:    b85 + b86 <= 1;

e91:    b87 + b88 <= 1;

e92:    b89 + b90 <= 1;

e93:    b91 + b92 <= 1;

e94:    b93 + b94 <= 1;

e95:    b95 + b96 <= 1;

e96:    b97 + b98 <= 1;

e97:    b99 + b100 <= 1;

e98:    b101 + b102 <= 1;

e99:    b103 + b104 <= 1;

e100:    b105 + b106 <= 1;

e101:    b107 + b108 <= 1;

e102:    b109 + b110 <= 1;

e103:    b111 + b112 <= 1;

e104:    b113 + b114 <= 1;

e105:    b115 + b116 <= 1;

e106:    b117 + b118 <= 1;

e107:    b119 + b120 <= 1;

e108:    b121 + b122 <= 1;

e109:    b123 + b124 <= 1;

e110:    b125 + b126 <= 1;

e111:    b127 + b128 <= 1;

e112:    b129 + b130 <= 1;

e113:    b131 + b132 <= 1;

e114:    b133 + b134 <= 1;

e115:    b135 + b136 <= 1;

e116:    b137 + b138 <= 1;

e117:    b139 + b140 <= 1;

e118:    b141 + b142 <= 1;

e119:    b143 + b144 <= 1;

e120:    b145 + b146 <= 1;

e121:    b147 + b148 <= 1;

e122:    b149 + b150 <= 1;

e123:    b151 + b152 <= 1;

e124:    b153 + b154 <= 1;

e125:    b155 + b156 <= 1;

e126:    b157 + b158 <= 1;

e127:    b159 + b160 <= 1;

e128:    b161 + b162 <= 1;

e129:    b163 + b164 <= 1;

e130:    b165 + b166 <= 1;

e131:    b167 + b168 <= 1;

e132:    b169 + b170 <= 1;

e133:    b171 + b172 <= 1;

e134:    b173 + b174 <= 1;

e135:    b175 + b176 <= 1;

e136:    b177 + b178 <= 1;

e137:    b179 + b180 <= 1;

e138:    b181 + b182 <= 1;

e139:    b183 + b184 <= 1;

e140:    b185 + b186 <= 1;

e141:    b187 + b188 <= 1;

e142:    b189 + b190 <= 1;

e143:    b191 + b192 <= 1;

e144:    b193 + b194 <= 1;

e145:    b195 + b196 <= 1;

e146:    b197 + b198 <= 1;

e147:    b199 + b200 <= 1;

e148:    b201 + b202 <= 1;

e149:    b203 + b204 <= 1;

e150:    b205 + b206 <= 1;

e151:    b207 + b208 <= 1;

e152:    b209 + b210 <= 1;

e153:    b211 + b212 <= 1;

e154:    b213 + b214 <= 1;

e155:    b215 + b216 <= 1;

e156:    b217 + b218 <= 1;

e157:    b219 + b220 <= 1;

e158:    b221 + b222 <= 1;

e159:    b223 + b224 <= 1;

e160:    b225 + b226 <= 1;

e161:    b227 + b228 <= 1;

e162:    b229 + b230 <= 1;

e163:    b231 + b232 <= 1;

e164:    b233 + b234 <= 1;

e165:    b235 + b236 <= 1;

e166:    b237 + b238 <= 1;

e167:    b239 + b240 <= 1;

e168:    b241 + b242 <= 1;

e169:    b243 + b244 <= 1;

e170:    b245 + b246 <= 1;

e171:    b247 + b248 <= 1;

e172:    b249 + b250 <= 1;

e173:    b251 + b252 <= 1;

e174:    b253 + b254 <= 1;

e175:    b255 + b256 <= 1;

e176:    b257 + b258 <= 1;

e177:    b259 + b260 <= 1;

e178:    b261 + b262 <= 1;

e179:    b263 + b264 <= 1;

e180:    b265 + b266 <= 1;

e181:    b267 + b268 <= 1;

e182:    b269 + b270 <= 1;

e183:    b271 + b272 <= 1;

e184:    b273 + b274 <= 1;

e185:    b275 + b276 <= 1;

e186:    b277 + b278 <= 1;

e187:    b279 + b280 <= 1;

e188:    b281 + b282 <= 1;

e189:    b283 + b284 <= 1;

e190:    b285 + b286 <= 1;

e191:    b287 + b288 <= 1;

e192:    b289 + b290 <= 1;

e193:    b291 + b292 <= 1;

e194:    b293 + b294 <= 1;

e195:    b295 + b296 <= 1;

e196:    b297 + b298 <= 1;

e197:    b299 + b300 <= 1;

e198:    b301 + b302 <= 1;

e199:    b303 + b304 <= 1;

e200:    b305 + b306 <= 1;

e201:    b307 + b308 <= 1;

e202:    b309 + b310 <= 1;

e203:    b311 + b312 <= 1;

e204:    b313 + b314 <= 1;

e205:    b315 + b316 <= 1;

e206:    b317 + b318 <= 1;

e207:    b319 + b320 <= 1;

e208:    b321 + b322 <= 1;

e209:    b323 + b324 <= 1;

e210:    b325 + b326 <= 1;

e211:    b327 + b328 <= 1;

e212:    b329 + b330 <= 1;

e213:    b331 + b332 <= 1;

e214:    b333 + b334 <= 1;

e215:    b335 + b336 <= 1;

e216:    b337 + b338 <= 1;

e217:    b339 + b340 <= 1;

e218:    b341 + b342 <= 1;

e219:    b343 + b344 <= 1;

e220:    b345 + b346 <= 1;

e221:    b347 + b348 <= 1;

e222:    b349 + b350 <= 1;

e223:    b351 + b352 <= 1;

e224:    b353 + b354 <= 1;

e225:    b355 + b356 <= 1;

e226:    b357 + b358 <= 1;

e227:    b359 + b360 <= 1;

e228:    b361 + b362 <= 1;

e229:    b363 + b364 <= 1;

e230:    b365 + b366 <= 1;

e231:    b367 + b368 <= 1;

e232:    b369 + b370 <= 1;

e233:    b371 + b372 <= 1;

e234:    b373 + b374 <= 1;

e235:    b375 + b376 <= 1;

e236:    b377 + b378 <= 1;

e237:    b379 + b380 <= 1;

e238:    b381 + b382 <= 1;

e239:    b383 + b384 <= 1;

e240:    b385 + b386 <= 1;

e241:    b387 + b388 <= 1;

e242:    b389 + b390 <= 1;

e243:    b391 + b392 <= 1;

e244:    b393 + b394 <= 1;

e245:    b395 + b396 <= 1;

e246:    b397 + b398 <= 1;

e247:    b399 + b400 <= 1;

e248:    b401 + b402 <= 1;

e249:    b403 + b404 <= 1;

e250:    b405 + b406 <= 1;

e251:    b407 + b408 <= 1;

e252:    b409 + b410 <= 1;

e253:    b411 + b412 <= 1;

e254:    b413 + b414 <= 1;

e255:    b415 + b416 <= 1;

e256:    b417 + b418 <= 1;

e257:    b419 + b420 <= 1;

e258:    b421 + b422 <= 1;

e259:    b423 + b424 <= 1;

e260:    b425 + b426 <= 1;

e261:    b427 + b428 <= 1;

e262:    b429 + b430 <= 1;

e263:    b431 + b432 <= 1;

e264:    b433 + b434 <= 1;

e265:    b435 + b436 <= 1;

e266:    b437 + b438 <= 1;

e267:    b439 + b440 <= 1;

e268:    b441 + b442 <= 1;

e269:    b443 + b444 <= 1;

e270:    b445 + b446 <= 1;

e271:    b447 + b448 <= 1;

e272:    b449 + b450 <= 1;

e273:    b451 + b452 <= 1;

e274:    b453 + b454 <= 1;

e275:    b455 + b456 <= 1;

e276:    b457 + b458 <= 1;

e277:    b459 + b460 <= 1;

e278:    b461 + b462 <= 1;

e279:    b463 + b464 <= 1;

e280:    b465 + b466 <= 1;

e281:    b467 + b468 <= 1;

e282:    b469 + b470 <= 1;

e283:    b471 + b472 <= 1;

e284:    b473 + b474 <= 1;

e285:    b475 + b476 <= 1;

e286:    b477 + b478 <= 1;

e287:    b479 + b480 <= 1;

e288:    b481 + b482 <= 1;

e289:    b483 + b484 <= 1;

e290:    b485 + b486 <= 1;

e291:    b487 + b488 <= 1;

e292:    b489 + b490 <= 1;

e293:    b491 + b492 <= 1;

e294:    b493 + b494 <= 1;

e295:    b495 + b496 <= 1;

e296:    b497 + b498 <= 1;

e297:    b499 + b500 <= 1;

e298:    b501 + b502 <= 1;

e299:    b503 + b504 <= 1;

e300:    b505 + b506 <= 1;

e301:    b507 + b508 <= 1;

e302:    b509 + b510 <= 1;

e303:    b511 + b512 <= 1;

e304:    b513 + b514 <= 1;

e305:    b515 + b516 <= 1;

e306:    b517 + b518 <= 1;

e307:    b519 + b520 <= 1;

e308:    b521 + b522 <= 1;

e309:    b523 + b524 <= 1;

e310:    b525 + b526 <= 1;

e311:    b527 + b528 <= 1;

e312:    b529 + b530 <= 1;

e313:    b531 + b532 <= 1;

e314:    b533 + b534 <= 1;

e315:    b535 + b536 <= 1;

e316:    b537 + b538 <= 1;

e317:  - 9*b33 + i539 <= 0;

e318:  - 9*b34 + i540 <= 0;

e319:  - 9*b35 + i541 <= 0;

e320:  - 9*b36 + i542 <= 0;

e321:  - 9*b37 + i543 <= 0;

e322:  - 9*b38 + i544 <= 0;

e323:  - 9*b39 + i545 <= 0;

e324:  - 9*b40 + i546 <= 0;

e325:  - 9*b41 + i547 <= 0;

e326:  - 9*b42 + i548 <= 0;

e327:  - 9*b43 + i549 <= 0;

e328:  - 9*b44 + i550 <= 0;

e329:  - 9*b45 + i551 <= 0;

e330:  - 9*b46 + i552 <= 0;

e331:  - 9*b47 + i553 <= 0;

e332:  - 9*b48 + i554 <= 0;

e333:  - 9*b49 + i555 <= 0;

e334:  - 9*b50 + i556 <= 0;

e335:  - 9*b51 + i557 <= 0;

e336:  - 9*b52 + i558 <= 0;

e337:  - 9*b53 + i559 <= 0;

e338:  - 9*b54 + i560 <= 0;

e339:  - 9*b55 + i561 <= 0;

e340:  - 9*b56 + i562 <= 0;

e341:  - 9*b57 + i563 <= 0;

e342:  - 9*b58 + i564 <= 0;

e343:  - 9*b59 + i565 <= 0;

e344:  - 9*b60 + i566 <= 0;

e345:  - 9*b61 + i567 <= 0;

e346:  - 9*b62 + i568 <= 0;

e347:  - 9*b63 + i569 <= 0;

e348:  - 9*b64 + i570 <= 0;

e349:  - 9*b65 + i571 <= 0;

e350:  - 9*b66 + i572 <= 0;

e351:  - 9*b67 + i573 <= 0;

e352:  - 9*b68 + i574 <= 0;

e353:  - 9*b69 + i575 <= 0;

e354:  - 9*b70 + i576 <= 0;

e355:  - 9*b71 + i577 <= 0;

e356:  - 9*b72 + i578 <= 0;

e357:  - 9*b73 + i579 <= 0;

e358:  - 9*b74 + i580 <= 0;

e359:  - 9*b75 + i581 <= 0;

e360:  - 9*b76 + i582 <= 0;

e361:  - 9*b77 + i583 <= 0;

e362:  - 9*b78 + i584 <= 0;

e363:  - 9*b79 + i585 <= 0;

e364:  - 9*b80 + i586 <= 0;

e365:  - 9*b81 + i587 <= 0;

e366:  - 9*b82 + i588 <= 0;

e367:  - 9*b83 + i589 <= 0;

e368:  - 9*b84 + i590 <= 0;

e369:  - 9*b85 + i591 <= 0;

e370:  - 9*b86 + i592 <= 0;

e371:  - 9*b87 + i593 <= 0;

e372:  - 9*b88 + i594 <= 0;

e373:  - 9*b89 + i595 <= 0;

e374:  - 9*b90 + i596 <= 0;

e375:  - 9*b91 + i597 <= 0;

e376:  - 9*b92 + i598 <= 0;

e377:  - 9*b93 + i599 <= 0;

e378:  - 9*b94 + i600 <= 0;

e379:  - 9*b95 + i601 <= 0;

e380:  - 9*b96 + i602 <= 0;

e381:  - 9*b97 + i603 <= 0;

e382:  - 9*b98 + i604 <= 0;

e383:  - 9*b99 + i605 <= 0;

e384:  - 9*b100 + i606 <= 0;

e385:  - 9*b101 + i607 <= 0;

e386:  - 9*b102 + i608 <= 0;

e387:  - 9*b103 + i609 <= 0;

e388:  - 9*b104 + i610 <= 0;

e389:  - 9*b105 + i611 <= 0;

e390:  - 9*b106 + i612 <= 0;

e391:  - 9*b107 + i613 <= 0;

e392:  - 9*b108 + i614 <= 0;

e393:  - 9*b109 + i615 <= 0;

e394:  - 9*b110 + i616 <= 0;

e395:  - 9*b111 + i617 <= 0;

e396:  - 9*b112 + i618 <= 0;

e397:  - 9*b113 + i619 <= 0;

e398:  - 9*b114 + i620 <= 0;

e399:  - 9*b115 + i621 <= 0;

e400:  - 9*b116 + i622 <= 0;

e401:  - 9*b117 + i623 <= 0;

e402:  - 9*b118 + i624 <= 0;

e403:  - 9*b119 + i625 <= 0;

e404:  - 9*b120 + i626 <= 0;

e405:  - 9*b121 + i627 <= 0;

e406:  - 9*b122 + i628 <= 0;

e407:  - 9*b123 + i629 <= 0;

e408:  - 9*b124 + i630 <= 0;

e409:  - 9*b125 + i631 <= 0;

e410:  - 9*b126 + i632 <= 0;

e411:  - 9*b127 + i633 <= 0;

e412:  - 9*b128 + i634 <= 0;

e413:  - 9*b129 + i635 <= 0;

e414:  - 9*b130 + i636 <= 0;

e415:  - 9*b131 + i637 <= 0;

e416:  - 9*b132 + i638 <= 0;

e417:  - 9*b133 + i639 <= 0;

e418:  - 9*b134 + i640 <= 0;

e419:  - 9*b135 + i641 <= 0;

e420:  - 9*b136 + i642 <= 0;

e421:  - 9*b137 + i643 <= 0;

e422:  - 9*b138 + i644 <= 0;

e423:  - 9*b139 + i645 <= 0;

e424:  - 9*b140 + i646 <= 0;

e425:  - 9*b141 + i647 <= 0;

e426:  - 9*b142 + i648 <= 0;

e427:  - 9*b143 + i649 <= 0;

e428:  - 9*b144 + i650 <= 0;

e429:  - 9*b145 + i651 <= 0;

e430:  - 9*b146 + i652 <= 0;

e431:  - 9*b147 + i653 <= 0;

e432:  - 9*b148 + i654 <= 0;

e433:  - 9*b149 + i655 <= 0;

e434:  - 9*b150 + i656 <= 0;

e435:  - 9*b151 + i657 <= 0;

e436:  - 9*b152 + i658 <= 0;

e437:  - 9*b153 + i659 <= 0;

e438:  - 9*b154 + i660 <= 0;

e439:  - 9*b155 + i661 <= 0;

e440:  - 9*b156 + i662 <= 0;

e441:  - 9*b157 + i663 <= 0;

e442:  - 9*b158 + i664 <= 0;

e443:  - 9*b159 + i665 <= 0;

e444:  - 9*b160 + i666 <= 0;

e445:  - 9*b161 + i667 <= 0;

e446:  - 9*b162 + i668 <= 0;

e447:  - 9*b163 + i669 <= 0;

e448:  - 9*b164 + i670 <= 0;

e449:  - 9*b165 + i671 <= 0;

e450:  - 9*b166 + i672 <= 0;

e451:  - 9*b167 + i673 <= 0;

e452:  - 9*b168 + i674 <= 0;

e453:  - 9*b169 + i675 <= 0;

e454:  - 9*b170 + i676 <= 0;

e455:  - 9*b171 + i677 <= 0;

e456:  - 9*b172 + i678 <= 0;

e457:  - 9*b173 + i679 <= 0;

e458:  - 9*b174 + i680 <= 0;

e459:  - 9*b175 + i681 <= 0;

e460:  - 9*b176 + i682 <= 0;

e461:  - 9*b177 + i683 <= 0;

e462:  - 9*b178 + i684 <= 0;

e463:  - 9*b179 + i685 <= 0;

e464:  - 9*b180 + i686 <= 0;

e465:  - 9*b181 + i687 <= 0;

e466:  - 9*b182 + i688 <= 0;

e467:  - 9*b183 + i689 <= 0;

e468:  - 9*b184 + i690 <= 0;

e469:  - 9*b185 + i691 <= 0;

e470:  - 9*b186 + i692 <= 0;

e471:  - 9*b187 + i693 <= 0;

e472:  - 9*b188 + i694 <= 0;

e473:  - 9*b189 + i695 <= 0;

e474:  - 9*b190 + i696 <= 0;

e475:  - 9*b191 + i697 <= 0;

e476:  - 9*b192 + i698 <= 0;

e477:  - 9*b193 + i699 <= 0;

e478:  - 9*b194 + i700 <= 0;

e479:  - 9*b195 + i701 <= 0;

e480:  - 9*b196 + i702 <= 0;

e481:  - 9*b197 + i703 <= 0;

e482:  - 9*b198 + i704 <= 0;

e483:  - 9*b199 + i705 <= 0;

e484:  - 9*b200 + i706 <= 0;

e485:  - 9*b201 + i707 <= 0;

e486:  - 9*b202 + i708 <= 0;

e487:  - 9*b203 + i709 <= 0;

e488:  - 9*b204 + i710 <= 0;

e489:  - 9*b205 + i711 <= 0;

e490:  - 9*b206 + i712 <= 0;

e491:  - 9*b207 + i713 <= 0;

e492:  - 9*b208 + i714 <= 0;

e493:  - 9*b209 + i715 <= 0;

e494:  - 9*b210 + i716 <= 0;

e495:  - 9*b211 + i717 <= 0;

e496:  - 9*b212 + i718 <= 0;

e497:  - 9*b213 + i719 <= 0;

e498:  - 9*b214 + i720 <= 0;

e499:  - 9*b215 + i721 <= 0;

e500:  - 9*b216 + i722 <= 0;

e501:  - 9*b217 + i723 <= 0;

e502:  - 9*b218 + i724 <= 0;

e503:  - 9*b219 + i725 <= 0;

e504:  - 9*b220 + i726 <= 0;

e505:  - 9*b221 + i727 <= 0;

e506:  - 9*b222 + i728 <= 0;

e507:  - 9*b223 + i729 <= 0;

e508:  - 9*b224 + i730 <= 0;

e509:  - 9*b225 + i731 <= 0;

e510:  - 9*b226 + i732 <= 0;

e511:  - 9*b227 + i733 <= 0;

e512:  - 9*b228 + i734 <= 0;

e513:  - 9*b229 + i735 <= 0;

e514:  - 9*b230 + i736 <= 0;

e515:  - 9*b231 + i737 <= 0;

e516:  - 9*b232 + i738 <= 0;

e517:  - 9*b233 + i739 <= 0;

e518:  - 9*b234 + i740 <= 0;

e519:  - 9*b235 + i741 <= 0;

e520:  - 9*b236 + i742 <= 0;

e521:  - 9*b237 + i743 <= 0;

e522:  - 9*b238 + i744 <= 0;

e523:  - 9*b239 + i745 <= 0;

e524:  - 9*b240 + i746 <= 0;

e525:  - 9*b241 + i747 <= 0;

e526:  - 9*b242 + i748 <= 0;

e527:  - 9*b243 + i749 <= 0;

e528:  - 9*b244 + i750 <= 0;

e529:  - 9*b245 + i751 <= 0;

e530:  - 9*b246 + i752 <= 0;

e531:  - 9*b247 + i753 <= 0;

e532:  - 9*b248 + i754 <= 0;

e533:  - 9*b249 + i755 <= 0;

e534:  - 9*b250 + i756 <= 0;

e535:  - 9*b251 + i757 <= 0;

e536:  - 9*b252 + i758 <= 0;

e537:  - 9*b253 + i759 <= 0;

e538:  - 9*b254 + i760 <= 0;

e539:  - 9*b255 + i761 <= 0;

e540:  - 9*b256 + i762 <= 0;

e541:  - 9*b257 + i763 <= 0;

e542:  - 9*b258 + i764 <= 0;

e543:  - 9*b259 + i765 <= 0;

e544:  - 9*b260 + i766 <= 0;

e545:  - 9*b261 + i767 <= 0;

e546:  - 9*b262 + i768 <= 0;

e547:  - 9*b263 + i769 <= 0;

e548:  - 9*b264 + i770 <= 0;

e549:  - 9*b265 + i771 <= 0;

e550:  - 9*b266 + i772 <= 0;

e551:  - 9*b267 + i773 <= 0;

e552:  - 9*b268 + i774 <= 0;

e553:  - 9*b269 + i775 <= 0;

e554:  - 9*b270 + i776 <= 0;

e555:  - 9*b271 + i777 <= 0;

e556:  - 9*b272 + i778 <= 0;

e557:  - 9*b273 + i779 <= 0;

e558:  - 9*b274 + i780 <= 0;

e559:  - 9*b275 + i781 <= 0;

e560:  - 9*b276 + i782 <= 0;

e561:  - 9*b277 + i783 <= 0;

e562:  - 9*b278 + i784 <= 0;

e563:  - 9*b279 + i785 <= 0;

e564:  - 9*b280 + i786 <= 0;

e565:  - 9*b281 + i787 <= 0;

e566:  - 9*b282 + i788 <= 0;

e567:  - 9*b283 + i789 <= 0;

e568:  - 9*b284 + i790 <= 0;

e569:  - 9*b285 + i791 <= 0;

e570:  - 9*b286 + i792 <= 0;

e571:  - 9*b287 + i793 <= 0;

e572:  - 9*b288 + i794 <= 0;

e573:  - 9*b289 + i795 <= 0;

e574:  - 9*b290 + i796 <= 0;

e575:  - 9*b291 + i797 <= 0;

e576:  - 9*b292 + i798 <= 0;

e577:  - 9*b293 + i799 <= 0;

e578:  - 9*b294 + i800 <= 0;

e579:  - 9*b295 + i801 <= 0;

e580:  - 9*b296 + i802 <= 0;

e581:  - 9*b297 + i803 <= 0;

e582:  - 9*b298 + i804 <= 0;

e583:  - 9*b299 + i805 <= 0;

e584:  - 9*b300 + i806 <= 0;

e585:  - 9*b301 + i807 <= 0;

e586:  - 9*b302 + i808 <= 0;

e587:  - 9*b303 + i809 <= 0;

e588:  - 9*b304 + i810 <= 0;

e589:  - 9*b305 + i811 <= 0;

e590:  - 9*b306 + i812 <= 0;

e591:  - 9*b307 + i813 <= 0;

e592:  - 9*b308 + i814 <= 0;

e593:  - 9*b309 + i815 <= 0;

e594:  - 9*b310 + i816 <= 0;

e595:  - 9*b311 + i817 <= 0;

e596:  - 9*b312 + i818 <= 0;

e597:  - 9*b313 + i819 <= 0;

e598:  - 9*b314 + i820 <= 0;

e599:  - 9*b315 + i821 <= 0;

e600:  - 9*b316 + i822 <= 0;

e601:  - 9*b317 + i823 <= 0;

e602:  - 9*b318 + i824 <= 0;

e603:  - 9*b319 + i825 <= 0;

e604:  - 9*b320 + i826 <= 0;

e605:  - 9*b321 + i827 <= 0;

e606:  - 9*b322 + i828 <= 0;

e607:  - 9*b323 + i829 <= 0;

e608:  - 9*b324 + i830 <= 0;

e609:  - 9*b325 + i831 <= 0;

e610:  - 9*b326 + i832 <= 0;

e611:  - 9*b327 + i833 <= 0;

e612:  - 9*b328 + i834 <= 0;

e613:  - 9*b329 + i835 <= 0;

e614:  - 9*b330 + i836 <= 0;

e615:  - 9*b331 + i837 <= 0;

e616:  - 9*b332 + i838 <= 0;

e617:  - 9*b333 + i839 <= 0;

e618:  - 9*b334 + i840 <= 0;

e619:  - 9*b335 + i841 <= 0;

e620:  - 9*b336 + i842 <= 0;

e621:  - 9*b337 + i843 <= 0;

e622:  - 9*b338 + i844 <= 0;

e623:  - 9*b339 + i845 <= 0;

e624:  - 9*b340 + i846 <= 0;

e625:  - 9*b341 + i847 <= 0;

e626:  - 9*b342 + i848 <= 0;

e627:  - 9*b343 + i849 <= 0;

e628:  - 9*b344 + i850 <= 0;

e629:  - 9*b345 + i851 <= 0;

e630:  - 9*b346 + i852 <= 0;

e631:  - 9*b347 + i853 <= 0;

e632:  - 9*b348 + i854 <= 0;

e633:  - 9*b349 + i855 <= 0;

e634:  - 9*b350 + i856 <= 0;

e635:  - 9*b351 + i857 <= 0;

e636:  - 9*b352 + i858 <= 0;

e637:  - 9*b353 + i859 <= 0;

e638:  - 9*b354 + i860 <= 0;

e639:  - 9*b355 + i861 <= 0;

e640:  - 9*b356 + i862 <= 0;

e641:  - 9*b357 + i863 <= 0;

e642:  - 9*b358 + i864 <= 0;

e643:  - 9*b359 + i865 <= 0;

e644:  - 9*b360 + i866 <= 0;

e645:  - 9*b361 + i867 <= 0;

e646:  - 9*b362 + i868 <= 0;

e647:  - 9*b363 + i869 <= 0;

e648:  - 9*b364 + i870 <= 0;

e649:  - 9*b365 + i871 <= 0;

e650:  - 9*b366 + i872 <= 0;

e651:  - 9*b367 + i873 <= 0;

e652:  - 9*b368 + i874 <= 0;

e653:  - 9*b369 + i875 <= 0;

e654:  - 9*b370 + i876 <= 0;

e655:  - 9*b371 + i877 <= 0;

e656:  - 9*b372 + i878 <= 0;

e657:  - 9*b373 + i879 <= 0;

e658:  - 9*b374 + i880 <= 0;

e659:  - 9*b375 + i881 <= 0;

e660:  - 9*b376 + i882 <= 0;

e661:  - 9*b377 + i883 <= 0;

e662:  - 9*b378 + i884 <= 0;

e663:  - 9*b379 + i885 <= 0;

e664:  - 9*b380 + i886 <= 0;

e665:  - 9*b381 + i887 <= 0;

e666:  - 9*b382 + i888 <= 0;

e667:  - 9*b383 + i889 <= 0;

e668:  - 9*b384 + i890 <= 0;

e669:  - 9*b385 + i891 <= 0;

e670:  - 9*b386 + i892 <= 0;

e671:  - 9*b387 + i893 <= 0;

e672:  - 9*b388 + i894 <= 0;

e673:  - 9*b389 + i895 <= 0;

e674:  - 9*b390 + i896 <= 0;

e675:  - 9*b391 + i897 <= 0;

e676:  - 9*b392 + i898 <= 0;

e677:  - 9*b393 + i899 <= 0;

e678:  - 9*b394 + i900 <= 0;

e679:  - 9*b395 + i901 <= 0;

e680:  - 9*b396 + i902 <= 0;

e681:  - 9*b397 + i903 <= 0;

e682:  - 9*b398 + i904 <= 0;

e683:  - 9*b399 + i905 <= 0;

e684:  - 9*b400 + i906 <= 0;

e685:  - 9*b401 + i907 <= 0;

e686:  - 9*b402 + i908 <= 0;

e687:  - 9*b403 + i909 <= 0;

e688:  - 9*b404 + i910 <= 0;

e689:  - 9*b405 + i911 <= 0;

e690:  - 9*b406 + i912 <= 0;

e691:  - 9*b407 + i913 <= 0;

e692:  - 9*b408 + i914 <= 0;

e693:  - 9*b409 + i915 <= 0;

e694:  - 9*b410 + i916 <= 0;

e695:  - 9*b411 + i917 <= 0;

e696:  - 9*b412 + i918 <= 0;

e697:  - 9*b413 + i919 <= 0;

e698:  - 9*b414 + i920 <= 0;

e699:  - 9*b415 + i921 <= 0;

e700:  - 9*b416 + i922 <= 0;

e701:  - 9*b417 + i923 <= 0;

e702:  - 9*b418 + i924 <= 0;

e703:  - 9*b419 + i925 <= 0;

e704:  - 9*b420 + i926 <= 0;

e705:  - 9*b421 + i927 <= 0;

e706:  - 9*b422 + i928 <= 0;

e707:  - 9*b423 + i929 <= 0;

e708:  - 9*b424 + i930 <= 0;

e709:  - 9*b425 + i931 <= 0;

e710:  - 9*b426 + i932 <= 0;

e711:  - 9*b427 + i933 <= 0;

e712:  - 9*b428 + i934 <= 0;

e713:  - 9*b429 + i935 <= 0;

e714:  - 9*b430 + i936 <= 0;

e715:  - 9*b431 + i937 <= 0;

e716:  - 9*b432 + i938 <= 0;

e717:  - 9*b433 + i939 <= 0;

e718:  - 9*b434 + i940 <= 0;

e719:  - 9*b435 + i941 <= 0;

e720:  - 9*b436 + i942 <= 0;

e721:  - 9*b437 + i943 <= 0;

e722:  - 9*b438 + i944 <= 0;

e723:  - 9*b439 + i945 <= 0;

e724:  - 9*b440 + i946 <= 0;

e725:  - 9*b441 + i947 <= 0;

e726:  - 9*b442 + i948 <= 0;

e727:  - 9*b443 + i949 <= 0;

e728:  - 9*b444 + i950 <= 0;

e729:  - 9*b445 + i951 <= 0;

e730:  - 9*b446 + i952 <= 0;

e731:  - 9*b447 + i953 <= 0;

e732:  - 9*b448 + i954 <= 0;

e733:  - 9*b449 + i955 <= 0;

e734:  - 9*b450 + i956 <= 0;

e735:  - 9*b451 + i957 <= 0;

e736:  - 9*b452 + i958 <= 0;

e737:  - 9*b453 + i959 <= 0;

e738:  - 9*b454 + i960 <= 0;

e739:  - 9*b455 + i961 <= 0;

e740:  - 9*b456 + i962 <= 0;

e741:  - 9*b457 + i963 <= 0;

e742:  - 9*b458 + i964 <= 0;

e743:  - 9*b459 + i965 <= 0;

e744:  - 9*b460 + i966 <= 0;

e745:  - 9*b461 + i967 <= 0;

e746:  - 9*b462 + i968 <= 0;

e747:  - 9*b463 + i969 <= 0;

e748:  - 9*b464 + i970 <= 0;

e749:  - 9*b465 + i971 <= 0;

e750:  - 9*b466 + i972 <= 0;

e751:  - 9*b467 + i973 <= 0;

e752:  - 9*b468 + i974 <= 0;

e753:  - 9*b469 + i975 <= 0;

e754:  - 9*b470 + i976 <= 0;

e755:  - 9*b471 + i977 <= 0;

e756:  - 9*b472 + i978 <= 0;

e757:  - 9*b473 + i979 <= 0;

e758:  - 9*b474 + i980 <= 0;

e759:  - 9*b475 + i981 <= 0;

e760:  - 9*b476 + i982 <= 0;

e761:  - 9*b477 + i983 <= 0;

e762:  - 9*b478 + i984 <= 0;

e763:  - 9*b479 + i985 <= 0;

e764:  - 9*b480 + i986 <= 0;

e765:  - 9*b481 + i987 <= 0;

e766:  - 9*b482 + i988 <= 0;

e767:  - 9*b483 + i989 <= 0;

e768:  - 9*b484 + i990 <= 0;

e769:  - 9*b485 + i991 <= 0;

e770:  - 9*b486 + i992 <= 0;

e771:  - 9*b487 + i993 <= 0;

e772:  - 9*b488 + i994 <= 0;

e773:  - 9*b489 + i995 <= 0;

e774:  - 9*b490 + i996 <= 0;

e775:  - 9*b491 + i997 <= 0;

e776:  - 9*b492 + i998 <= 0;

e777:  - 9*b493 + i999 <= 0;

e778:  - 9*b494 + i1000 <= 0;

e779:  - 9*b495 + i1001 <= 0;

e780:  - 9*b496 + i1002 <= 0;

e781:  - 9*b497 + i1003 <= 0;

e782:  - 9*b498 + i1004 <= 0;

e783:  - 9*b499 + i1005 <= 0;

e784:  - 9*b500 + i1006 <= 0;

e785:  - 9*b501 + i1007 <= 0;

e786:  - 9*b502 + i1008 <= 0;

e787:  - 9*b503 + i1009 <= 0;

e788:  - 9*b504 + i1010 <= 0;

e789:  - 9*b505 + i1011 <= 0;

e790:  - 9*b506 + i1012 <= 0;

e791:  - 9*b507 + i1013 <= 0;

e792:  - 9*b508 + i1014 <= 0;

e793:  - 9*b509 + i1015 <= 0;

e794:  - 9*b510 + i1016 <= 0;

e795:  - 9*b511 + i1017 <= 0;

e796:  - 9*b512 + i1018 <= 0;

e797:  - 9*b513 + i1019 <= 0;

e798:  - 9*b514 + i1020 <= 0;

e799:  - 9*b515 + i1021 <= 0;

e800:  - 9*b516 + i1022 <= 0;

e801:  - 9*b517 + i1023 <= 0;

e802:  - 9*b518 + i1024 <= 0;

e803:  - 9*b519 + i1025 <= 0;

e804:  - 9*b520 + i1026 <= 0;

e805:  - 9*b521 + i1027 <= 0;

e806:  - 9*b522 + i1028 <= 0;

e807:  - 9*b523 + i1029 <= 0;

e808:  - 9*b524 + i1030 <= 0;

e809:  - 9*b525 + i1031 <= 0;

e810:  - 9*b526 + i1032 <= 0;

e811:  - 9*b527 + i1033 <= 0;

e812:  - 9*b528 + i1034 <= 0;

e813:  - 9*b529 + i1035 <= 0;

e814:  - 9*b530 + i1036 <= 0;

e815:  - 9*b531 + i1037 <= 0;

e816:  - 9*b532 + i1038 <= 0;

e817:  - 9*b533 + i1039 <= 0;

e818:  - 9*b534 + i1040 <= 0;

e819:  - 9*b535 + i1041 <= 0;

e820:  - 9*b536 + i1042 <= 0;

e821:  - 9*b537 + i1043 <= 0;

e822:  - 9*b538 + i1044 <= 0;
