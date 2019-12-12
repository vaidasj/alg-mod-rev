*  NLP written by GAMS Convert at 12/13/18 11:23:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         19        7        6        6        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*       1003     1003        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       2139       57     2082        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219,x220
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245,x246
          ,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258,x259
          ,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270,x271,x272
          ,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283,x284,x285
          ,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296,x297,x298
          ,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308,x309,x310,x311
          ,x312,x313,x314,x315,x316,x317,x318,x319,x320,x321,x322,x323,x324
          ,x325,x326,x327,x328,x329,x330,x331,x332,x333,x334,x335,x336,x337
          ,x338,x339,x340,x341,x342,x343,x344,x345,x346,x347,x348,x349,x350
          ,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360,x361,x362,x363
          ,x364,x365,x366,x367,x368,x369,x370,x371,x372,x373,x374,x375,x376
          ,x377,x378,x379,x380,x381,x382,x383,x384,x385,x386,x387,x388,x389
          ,x390,x391,x392,x393,x394,x395,x396,x397,x398,x399,x400,x401,x402
          ,x403,x404,x405,x406,x407,x408,x409,x410,x411,x412,x413,x414,x415
          ,x416,x417,x418,x419,x420,x421,x422,x423,x424,x425,x426,x427,x428
          ,x429,x430,x431,x432,x433,x434,x435,x436,x437,x438,x439,x440,x441
          ,x442,x443,x444,x445,x446,x447,x448,x449,x450,x451,x452,x453,x454
          ,x455,x456,x457,x458,x459,x460,x461,x462,x463,x464,x465,x466,x467
          ,x468,x469,x470,x471,x472,x473,x474,x475,x476,x477,x478,x479,x480
          ,x481,x482,x483,x484,x485,x486,x487,x488,x489,x490,x491,x492,x493
          ,x494,x495,x496,x497,x498,x499,x500,x501,x502,x503,x504,x505,x506
          ,x507,x508,x509,x510,x511,x512,x513,x514,x515,x516,x517,x518,x519
          ,x520,x521,x522,x523,x524,x525,x526,x527,x528,x529,x530,x531,x532
          ,x533,x534,x535,x536,x537,x538,x539,x540,x541,x542,x543,x544,x545
          ,x546,x547,x548,x549,x550,x551,x552,x553,x554,x555,x556,x557,x558
          ,x559,x560,x561,x562,x563,x564,x565,x566,x567,x568,x569,x570,x571
          ,x572,x573,x574,x575,x576,x577,x578,x579,x580,x581,x582,x583,x584
          ,x585,x586,x587,x588,x589,x590,x591,x592,x593,x594,x595,x596,x597
          ,x598,x599,x600,x601,x602,x603,x604,x605,x606,x607,x608,x609,x610
          ,x611,x612,x613,x614,x615,x616,x617,x618,x619,x620,x621,x622,x623
          ,x624,x625,x626,x627,x628,x629,x630,x631,x632,x633,x634,x635,x636
          ,x637,x638,x639,x640,x641,x642,x643,x644,x645,x646,x647,x648,x649
          ,x650,x651,x652,x653,x654,x655,x656,x657,x658,x659,x660,x661,x662
          ,x663,x664,x665,x666,x667,x668,x669,x670,x671,x672,x673,x674,x675
          ,x676,x677,x678,x679,x680,x681,x682,x683,x684,x685,x686,x687,x688
          ,x689,x690,x691,x692,x693,x694,x695,x696,x697,x698,x699,x700,x701
          ,x702,x703,x704,x705,x706,x707,x708,x709,x710,x711,x712,x713,x714
          ,x715,x716,x717,x718,x719,x720,x721,x722,x723,x724,x725,x726,x727
          ,x728,x729,x730,x731,x732,x733,x734,x735,x736,x737,x738,x739,x740
          ,x741,x742,x743,x744,x745,x746,x747,x748,x749,x750,x751,x752,x753
          ,x754,x755,x756,x757,x758,x759,x760,x761,x762,x763,x764,x765,x766
          ,x767,x768,x769,x770,x771,x772,x773,x774,x775,x776,x777,x778,x779
          ,x780,x781,x782,x783,x784,x785,x786,x787,x788,x789,x790,x791,x792
          ,x793,x794,x795,x796,x797,x798,x799,x800,x801,x802,x803,x804,x805
          ,x806,x807,x808,x809,x810,x811,x812,x813,x814,x815,x816,x817,x818
          ,x819,x820,x821,x822,x823,x824,x825,x826,x827,x828,x829,x830,x831
          ,x832,x833,x834,x835,x836,x837,x838,x839,x840,x841,x842,x843,x844
          ,x845,x846,x847,x848,x849,x850,x851,x852,x853,x854,x855,x856,x857
          ,x858,x859,x860,x861,x862,x863,x864,x865,x866,x867,x868,x869,x870
          ,x871,x872,x873,x874,x875,x876,x877,x878,x879,x880,x881,x882,x883
          ,x884,x885,x886,x887,x888,x889,x890,x891,x892,x893,x894,x895,x896
          ,x897,x898,x899,x900,x901,x902,x903,x904,x905,x906,x907,x908,x909
          ,x910,x911,x912,x913,x914,x915,x916,x917,x918,x919,x920,x921,x922
          ,x923,x924,x925,x926,x927,x928,x929,x930,x931,x932,x933,x934,x935
          ,x936,x937,x938,x939,x940,x941,x942,x943,x944,x945,x946,x947,x948
          ,x949,x950,x951,x952,x953,x954,x955,x956,x957,x958,x959,x960,x961
          ,x962,x963,x964,x965,x966,x967,x968,x969,x970,x971,x972,x973,x974
          ,x975,x976,x977,x978,x979,x980,x981,x982,x983,x984,x985,x986,x987
          ,x988,x989,x990,x991,x992,x993,x994,x995,x996,x997,x998,x999,x1000
          ,x1001,x1002,x1003;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19;


e1..    x1 - x2 - 100*x3 =E= 0;

e2.. -(sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + sqr(x8) + sqr(x9) + sqr(x10) + 
     sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14) + sqr(x15) + sqr(x16) + sqr(x17)
      + sqr(x18) + sqr(x19) + sqr(x20) + sqr(x21) + sqr(x22) + sqr(x23) + sqr(
     x24) + sqr(x25) + sqr(x26) + sqr(x27) + sqr(x28) + sqr(x29) + sqr(x30) + 
     sqr(x31) + sqr(x32) + sqr(x33) + sqr(x34) + sqr(x35) + sqr(x36) + sqr(x37)
      + sqr(x38) + sqr(x39) + sqr(x40) + sqr(x41) + sqr(x42) + sqr(x43) + sqr(
     x44) + sqr(x45) + sqr(x46) + sqr(x47) + sqr(x48) + sqr(x49) + sqr(x50) + 
     sqr(x51) + sqr(x52) + sqr(x53) + sqr(x54) + sqr(x55) + sqr(x56) + sqr(x57)
      + sqr(x58) + sqr(x59) + sqr(x60) + sqr(x61) + sqr(x62) + sqr(x63) + sqr(
     x64) + sqr(x65) + sqr(x66) + sqr(x67) + sqr(x68) + sqr(x69) + sqr(x70) + 
     sqr(x71) + sqr(x72) + sqr(x73) + sqr(x74) + sqr(x75) + sqr(x76) + sqr(x77)
      + sqr(x78) + sqr(x79) + sqr(x80) + sqr(x81) + sqr(x82) + sqr(x83) + sqr(
     x84) + sqr(x85) + sqr(x86) + sqr(x87) + sqr(x88) + sqr(x89) + sqr(x90) + 
     sqr(x91) + sqr(x92) + sqr(x93) + sqr(x94) + sqr(x95) + sqr(x96) + sqr(x97)
      + sqr(x98) + sqr(x99) + sqr(x100) + sqr(x101) + sqr(x102) + sqr(x103) + 
     sqr(x104) + sqr(x105) + sqr(x106) + sqr(x107) + sqr(x108) + sqr(x109) + 
     sqr(x110) + sqr(x111) + sqr(x112) + sqr(x113) + sqr(x114) + sqr(x115) + 
     sqr(x116) + sqr(x117) + sqr(x118) + sqr(x119) + sqr(x120) + sqr(x121) + 
     sqr(x122) + sqr(x123) + sqr(x124) + sqr(x125) + sqr(x126) + sqr(x127) + 
     sqr(x128) + sqr(x129) + sqr(x130) + sqr(x131) + sqr(x132) + sqr(x133) + 
     sqr(x134) + sqr(x135) + sqr(x136) + sqr(x137) + sqr(x138) + sqr(x139) + 
     sqr(x140) + sqr(x141) + sqr(x142) + sqr(x143) + sqr(x144) + sqr(x145) + 
     sqr(x146) + sqr(x147) + sqr(x148) + sqr(x149) + sqr(x150) + sqr(x151) + 
     sqr(x152) + sqr(x153) + sqr(x154) + sqr(x155) + sqr(x156) + sqr(x157) + 
     sqr(x158) + sqr(x159) + sqr(x160) + sqr(x161) + sqr(x162) + sqr(x163) + 
     sqr(x164) + sqr(x165) + sqr(x166) + sqr(x167) + sqr(x168) + sqr(x169) + 
     sqr(x170) + sqr(x171) + sqr(x172) + sqr(x173) + sqr(x174) + sqr(x175) + 
     sqr(x176) + sqr(x177) + sqr(x178) + sqr(x179) + sqr(x180) + sqr(x181) + 
     sqr(x182) + sqr(x183) + sqr(x184) + sqr(x185) + sqr(x186) + sqr(x187) + 
     sqr(x188) + sqr(x189) + sqr(x190) + sqr(x191) + sqr(x192) + sqr(x193) + 
     sqr(x194) + sqr(x195) + sqr(x196) + sqr(x197) + sqr(x198) + sqr(x199) + 
     sqr(x200) + sqr(x201) + sqr(x202) + sqr(x203) + sqr(x204) + sqr(x205) + 
     sqr(x206) + sqr(x207) + sqr(x208) + sqr(x209) + sqr(x210) + sqr(x211) + 
     sqr(x212) + sqr(x213) + sqr(x214) + sqr(x215) + sqr(x216) + sqr(x217) + 
     sqr(x218) + sqr(x219) + sqr(x220) + sqr(x221) + sqr(x222) + sqr(x223) + 
     sqr(x224) + sqr(x225) + sqr(x226) + sqr(x227) + sqr(x228) + sqr(x229) + 
     sqr(x230) + sqr(x231) + sqr(x232) + sqr(x233) + sqr(x234) + sqr(x235) + 
     sqr(x236) + sqr(x237) + sqr(x238) + sqr(x239) + sqr(x240) + sqr(x241) + 
     sqr(x242) + sqr(x243) + sqr(x244) + sqr(x245) + sqr(x246) + sqr(x247) + 
     sqr(x248) + sqr(x249) + sqr(x250) + sqr(x251) + sqr(x252) + sqr(x253) + 
     sqr(x254) + sqr(x255) + sqr(x256) + sqr(x257) + sqr(x258) + sqr(x259) + 
     sqr(x260) + sqr(x261) + sqr(x262) + sqr(x263) + sqr(x264) + sqr(x265) + 
     sqr(x266) + sqr(x267) + sqr(x268) + sqr(x269) + sqr(x270) + sqr(x271) + 
     sqr(x272) + sqr(x273) + sqr(x274) + sqr(x275) + sqr(x276) + sqr(x277) + 
     sqr(x278) + sqr(x279) + sqr(x280) + sqr(x281) + sqr(x282) + sqr(x283) + 
     sqr(x284) + sqr(x285) + sqr(x286) + sqr(x287) + sqr(x288) + sqr(x289) + 
     sqr(x290) + sqr(x291) + sqr(x292) + sqr(x293) + sqr(x294) + sqr(x295) + 
     sqr(x296) + sqr(x297) + sqr(x298) + sqr(x299) + sqr(x300) + sqr(x301) + 
     sqr(x302) + sqr(x303) + sqr(x304) + sqr(x305) + sqr(x306) + sqr(x307) + 
     sqr(x308) + sqr(x309) + sqr(x310) + sqr(x311) + sqr(x312) + sqr(x313) + 
     sqr(x314) + sqr(x315) + sqr(x316) + sqr(x317) + sqr(x318) + sqr(x319) + 
     sqr(x320) + sqr(x321) + sqr(x322) + sqr(x323) + sqr(x324) + sqr(x325) + 
     sqr(x326) + sqr(x327) + sqr(x328) + sqr(x329) + sqr(x330) + sqr(x331) + 
     sqr(x332) + sqr(x333) + sqr(x334) + sqr(x335) + sqr(x336) + sqr(x337) + 
     sqr(x338) + sqr(x339) + sqr(x340) + sqr(x341) + sqr(x342) + sqr(x343) + 
     sqr(x344) + sqr(x345) + sqr(x346) + sqr(x347) + sqr(x348) + sqr(x349) + 
     sqr(x350) + sqr(x351) + sqr(x352) + sqr(x353) + sqr(x354) + sqr(x355) + 
     sqr(x356) + sqr(x357) + sqr(x358) + sqr(x359) + sqr(x360) + sqr(x361) + 
     sqr(x362) + sqr(x363) + sqr(x364) + sqr(x365) + sqr(x366) + sqr(x367) + 
     sqr(x368) + sqr(x369) + sqr(x370) + sqr(x371) + sqr(x372) + sqr(x373) + 
     sqr(x374) + sqr(x375) + sqr(x376) + sqr(x377) + sqr(x378) + sqr(x379) + 
     sqr(x380) + sqr(x381) + sqr(x382) + sqr(x383) + sqr(x384) + sqr(x385) + 
     sqr(x386) + sqr(x387) + sqr(x388) + sqr(x389) + sqr(x390) + sqr(x391) + 
     sqr(x392) + sqr(x393) + sqr(x394) + sqr(x395) + sqr(x396) + sqr(x397) + 
     sqr(x398) + sqr(x399) + sqr(x400) + sqr(x401) + sqr(x402) + sqr(x403) + 
     sqr(x404) + sqr(x405) + sqr(x406) + sqr(x407) + sqr(x408) + sqr(x409) + 
     sqr(x410) + sqr(x411) + sqr(x412) + sqr(x413) + sqr(x414) + sqr(x415) + 
     sqr(x416) + sqr(x417) + sqr(x418) + sqr(x419) + sqr(x420) + sqr(x421) + 
     sqr(x422) + sqr(x423) + sqr(x424) + sqr(x425) + sqr(x426) + sqr(x427) + 
     sqr(x428) + sqr(x429) + sqr(x430) + sqr(x431) + sqr(x432) + sqr(x433) + 
     sqr(x434) + sqr(x435) + sqr(x436) + sqr(x437) + sqr(x438) + sqr(x439) + 
     sqr(x440) + sqr(x441) + sqr(x442) + sqr(x443) + sqr(x444) + sqr(x445) + 
     sqr(x446) + sqr(x447) + sqr(x448) + sqr(x449) + sqr(x450) + sqr(x451) + 
     sqr(x452) + sqr(x453) + sqr(x454) + sqr(x455) + sqr(x456) + sqr(x457) + 
     sqr(x458) + sqr(x459) + sqr(x460) + sqr(x461) + sqr(x462) + sqr(x463) + 
     sqr(x464) + sqr(x465) + sqr(x466) + sqr(x467) + sqr(x468) + sqr(x469) + 
     sqr(x470) + sqr(x471) + sqr(x472) + sqr(x473) + sqr(x474) + sqr(x475) + 
     sqr(x476) + sqr(x477) + sqr(x478) + sqr(x479) + sqr(x480) + sqr(x481) + 
     sqr(x482) + sqr(x483) + sqr(x484) + sqr(x485) + sqr(x486) + sqr(x487) + 
     sqr(x488) + sqr(x489) + sqr(x490) + sqr(x491) + sqr(x492) + sqr(x493) + 
     sqr(x494) + sqr(x495) + sqr(x496) + sqr(x497) + sqr(x498) + sqr(x499) + 
     sqr(x500) + sqr(x501) + sqr(x502) + sqr(x503) + sqr(x504) + sqr(x505) + 
     sqr(x506) + sqr(x507) + sqr(x508) + sqr(x509) + sqr(x510) + sqr(x511) + 
     sqr(x512) + sqr(x513) + sqr(x514) + sqr(x515) + sqr(x516) + sqr(x517) + 
     sqr(x518) + sqr(x519) + sqr(x520) + sqr(x521) + sqr(x522) + sqr(x523) + 
     sqr(x524) + sqr(x525) + sqr(x526) + sqr(x527) + sqr(x528) + sqr(x529) + 
     sqr(x530) + sqr(x531) + sqr(x532) + sqr(x533) + sqr(x534) + sqr(x535) + 
     sqr(x536) + sqr(x537) + sqr(x538) + sqr(x539) + sqr(x540) + sqr(x541) + 
     sqr(x542) + sqr(x543) + sqr(x544) + sqr(x545) + sqr(x546) + sqr(x547) + 
     sqr(x548) + sqr(x549) + sqr(x550) + sqr(x551) + sqr(x552) + sqr(x553) + 
     sqr(x554) + sqr(x555) + sqr(x556) + sqr(x557) + sqr(x558) + sqr(x559) + 
     sqr(x560) + sqr(x561) + sqr(x562) + sqr(x563) + sqr(x564) + sqr(x565) + 
     sqr(x566) + sqr(x567) + sqr(x568) + sqr(x569) + sqr(x570) + sqr(x571) + 
     sqr(x572) + sqr(x573) + sqr(x574) + sqr(x575) + sqr(x576) + sqr(x577) + 
     sqr(x578) + sqr(x579) + sqr(x580) + sqr(x581) + sqr(x582) + sqr(x583) + 
     sqr(x584) + sqr(x585) + sqr(x586) + sqr(x587) + sqr(x588) + sqr(x589) + 
     sqr(x590) + sqr(x591) + sqr(x592) + sqr(x593) + sqr(x594) + sqr(x595) + 
     sqr(x596) + sqr(x597) + sqr(x598) + sqr(x599) + sqr(x600) + sqr(x601) + 
     sqr(x602) + sqr(x603) + sqr(x604) + sqr(x605) + sqr(x606) + sqr(x607) + 
     sqr(x608) + sqr(x609) + sqr(x610) + sqr(x611) + sqr(x612) + sqr(x613) + 
     sqr(x614) + sqr(x615) + sqr(x616) + sqr(x617) + sqr(x618) + sqr(x619) + 
     sqr(x620) + sqr(x621) + sqr(x622) + sqr(x623) + sqr(x624) + sqr(x625) + 
     sqr(x626) + sqr(x627) + sqr(x628) + sqr(x629) + sqr(x630) + sqr(x631) + 
     sqr(x632) + sqr(x633) + sqr(x634) + sqr(x635) + sqr(x636) + sqr(x637) + 
     sqr(x638) + sqr(x639) + sqr(x640) + sqr(x641) + sqr(x642) + sqr(x643) + 
     sqr(x644) + sqr(x645) + sqr(x646) + sqr(x647) + sqr(x648) + sqr(x649) + 
     sqr(x650) + sqr(x651) + sqr(x652) + sqr(x653) + sqr(x654) + sqr(x655) + 
     sqr(x656) + sqr(x657) + sqr(x658) + sqr(x659) + sqr(x660) + sqr(x661) + 
     sqr(x662) + sqr(x663) + sqr(x664) + sqr(x665) + sqr(x666) + sqr(x667) + 
     sqr(x668) + sqr(x669) + sqr(x670) + sqr(x671) + sqr(x672) + sqr(x673) + 
     sqr(x674) + sqr(x675) + sqr(x676) + sqr(x677) + sqr(x678) + sqr(x679) + 
     sqr(x680) + sqr(x681) + sqr(x682) + sqr(x683) + sqr(x684) + sqr(x685) + 
     sqr(x686) + sqr(x687) + sqr(x688) + sqr(x689) + sqr(x690) + sqr(x691) + 
     sqr(x692) + sqr(x693) + sqr(x694) + sqr(x695) + sqr(x696) + sqr(x697) + 
     sqr(x698) + sqr(x699) + sqr(x700) + sqr(x701) + sqr(x702) + sqr(x703) + 
     sqr(x704) + sqr(x705) + sqr(x706) + sqr(x707) + sqr(x708) + sqr(x709) + 
     sqr(x710) + sqr(x711) + sqr(x712) + sqr(x713) + sqr(x714) + sqr(x715) + 
     sqr(x716) + sqr(x717) + sqr(x718) + sqr(x719) + sqr(x720) + sqr(x721) + 
     sqr(x722) + sqr(x723) + sqr(x724) + sqr(x725) + sqr(x726) + sqr(x727) + 
     sqr(x728) + sqr(x729) + sqr(x730) + sqr(x731) + sqr(x732) + sqr(x733) + 
     sqr(x734) + sqr(x735) + sqr(x736) + sqr(x737) + sqr(x738) + sqr(x739) + 
     sqr(x740) + sqr(x741) + sqr(x742) + sqr(x743) + sqr(x744) + sqr(x745) + 
     sqr(x746) + sqr(x747) + sqr(x748) + sqr(x749) + sqr(x750) + sqr(x751) + 
     sqr(x752) + sqr(x753) + sqr(x754) + sqr(x755) + sqr(x756) + sqr(x757) + 
     sqr(x758) + sqr(x759) + sqr(x760) + sqr(x761) + sqr(x762) + sqr(x763) + 
     sqr(x764) + sqr(x765) + sqr(x766) + sqr(x767) + sqr(x768) + sqr(x769) + 
     sqr(x770) + sqr(x771) + sqr(x772) + sqr(x773) + sqr(x774) + sqr(x775) + 
     sqr(x776) + sqr(x777) + sqr(x778) + sqr(x779) + sqr(x780) + sqr(x781) + 
     sqr(x782) + sqr(x783) + sqr(x784) + sqr(x785) + sqr(x786) + sqr(x787) + 
     sqr(x788) + sqr(x789) + sqr(x790) + sqr(x791) + sqr(x792) + sqr(x793) + 
     sqr(x794) + sqr(x795) + sqr(x796) + sqr(x797) + sqr(x798) + sqr(x799) + 
     sqr(x800) + sqr(x801) + sqr(x802) + sqr(x803) + sqr(x804) + sqr(x805) + 
     sqr(x806) + sqr(x807) + sqr(x808) + sqr(x809) + sqr(x810) + sqr(x811) + 
     sqr(x812) + sqr(x813) + sqr(x814) + sqr(x815) + sqr(x816) + sqr(x817) + 
     sqr(x818) + sqr(x819) + sqr(x820) + sqr(x821) + sqr(x822) + sqr(x823) + 
     sqr(x824) + sqr(x825) + sqr(x826) + sqr(x827) + sqr(x828) + sqr(x829) + 
     sqr(x830) + sqr(x831) + sqr(x832) + sqr(x833) + sqr(x834) + sqr(x835) + 
     sqr(x836) + sqr(x837) + sqr(x838) + sqr(x839) + sqr(x840) + sqr(x841) + 
     sqr(x842) + sqr(x843) + sqr(x844) + sqr(x845) + sqr(x846) + sqr(x847) + 
     sqr(x848) + sqr(x849) + sqr(x850) + sqr(x851) + sqr(x852) + sqr(x853) + 
     sqr(x854) + sqr(x855) + sqr(x856) + sqr(x857) + sqr(x858) + sqr(x859) + 
     sqr(x860) + sqr(x861) + sqr(x862) + sqr(x863) + sqr(x864) + sqr(x865) + 
     sqr(x866) + sqr(x867) + sqr(x868) + sqr(x869) + sqr(x870) + sqr(x871) + 
     sqr(x872) + sqr(x873) + sqr(x874) + sqr(x875) + sqr(x876) + sqr(x877) + 
     sqr(x878) + sqr(x879) + sqr(x880) + sqr(x881) + sqr(x882) + sqr(x883) + 
     sqr(x884) + sqr(x885) + sqr(x886) + sqr(x887) + sqr(x888) + sqr(x889) + 
     sqr(x890) + sqr(x891) + sqr(x892) + sqr(x893) + sqr(x894) + sqr(x895) + 
     sqr(x896) + sqr(x897) + sqr(x898) + sqr(x899) + sqr(x900) + sqr(x901) + 
     sqr(x902) + sqr(x903) + sqr(x904) + sqr(x905) + sqr(x906) + sqr(x907) + 
     sqr(x908) + sqr(x909) + sqr(x910) + sqr(x911) + sqr(x912) + sqr(x913) + 
     sqr(x914) + sqr(x915) + sqr(x916) + sqr(x917) + sqr(x918) + sqr(x919) + 
     sqr(x920) + sqr(x921) + sqr(x922) + sqr(x923) + sqr(x924) + sqr(x925) + 
     sqr(x926) + sqr(x927) + sqr(x928) + sqr(x929) + sqr(x930) + sqr(x931) + 
     sqr(x932) + sqr(x933) + sqr(x934) + sqr(x935) + sqr(x936) + sqr(x937) + 
     sqr(x938) + sqr(x939) + sqr(x940) + sqr(x941) + sqr(x942) + sqr(x943) + 
     sqr(x944) + sqr(x945) + sqr(x946) + sqr(x947) + sqr(x948) + sqr(x949) + 
     sqr(x950) + sqr(x951) + sqr(x952) + sqr(x953) + sqr(x954) + sqr(x955) + 
     sqr(x956) + sqr(x957) + sqr(x958) + sqr(x959) + sqr(x960) + sqr(x961) + 
     sqr(x962) + sqr(x963) + sqr(x964) + sqr(x965) + sqr(x966) + sqr(x967) + 
     sqr(x968) + sqr(x969) + sqr(x970) + sqr(x971) + sqr(x972) + sqr(x973) + 
     sqr(x974) + sqr(x975) + sqr(x976) + sqr(x977) + sqr(x978) + sqr(x979) + 
     sqr(x980) + sqr(x981) + sqr(x982) + sqr(x983) + sqr(x984) + sqr(x985) + 
     sqr(x986) + sqr(x987) + sqr(x988) + sqr(x989) + sqr(x990) + sqr(x991) + 
     sqr(x992) + sqr(x993) + sqr(x994) + sqr(x995) + sqr(x996) + sqr(x997) + 
     sqr(x998) + sqr(x999) + sqr(x1000) + sqr(x1001) + sqr(x1002) + sqr(x1003))
      + x2 =E= 0;

e3.. -(sqr(sin(sqr(x4))) + sqr(sin(sqr(x5))) + sqr(sin(sqr(x6))) + sqr(sin(sqr(
     x7))) + sqr(sin(sqr(x8))) + sqr(sin(sqr(x9))) + sqr(sin(sqr(x10))) + sqr(
     sin(sqr(x11))) + sqr(sin(sqr(x12))) + sqr(sin(sqr(x13))) + sqr(sin(sqr(x14
     ))) + sqr(sin(sqr(x15))) + sqr(sin(sqr(x16))) + sqr(sin(sqr(x17))) + sqr(
     sin(sqr(x18))) + sqr(sin(sqr(x19))) + sqr(sin(sqr(x20))) + sqr(sin(sqr(x21
     ))) + sqr(sin(sqr(x22))) + sqr(sin(sqr(x23))) + sqr(sin(sqr(x24))) + sqr(
     sin(sqr(x25))) + sqr(sin(sqr(x26))) + sqr(sin(sqr(x27))) + sqr(sin(sqr(x28
     ))) + sqr(sin(sqr(x29))) + sqr(sin(sqr(x30))) + sqr(sin(sqr(x31))) + sqr(
     sin(sqr(x32))) + sqr(sin(sqr(x33))) + sqr(sin(sqr(x34))) + sqr(sin(sqr(x35
     ))) + sqr(sin(sqr(x36))) + sqr(sin(sqr(x37))) + sqr(sin(sqr(x38))) + sqr(
     sin(sqr(x39))) + sqr(sin(sqr(x40))) + sqr(sin(sqr(x41))) + sqr(sin(sqr(x42
     ))) + sqr(sin(sqr(x43))) + sqr(sin(sqr(x44))) + sqr(sin(sqr(x45))) + sqr(
     sin(sqr(x46))) + sqr(sin(sqr(x47))) + sqr(sin(sqr(x48))) + sqr(sin(sqr(x49
     ))) + sqr(sin(sqr(x50))) + sqr(sin(sqr(x51))) + sqr(sin(sqr(x52))) + sqr(
     sin(sqr(x53))) + sqr(sin(sqr(x54))) + sqr(sin(sqr(x55))) + sqr(sin(sqr(x56
     ))) + sqr(sin(sqr(x57))) + sqr(sin(sqr(x58))) + sqr(sin(sqr(x59))) + sqr(
     sin(sqr(x60))) + sqr(sin(sqr(x61))) + sqr(sin(sqr(x62))) + sqr(sin(sqr(x63
     ))) + sqr(sin(sqr(x64))) + sqr(sin(sqr(x65))) + sqr(sin(sqr(x66))) + sqr(
     sin(sqr(x67))) + sqr(sin(sqr(x68))) + sqr(sin(sqr(x69))) + sqr(sin(sqr(x70
     ))) + sqr(sin(sqr(x71))) + sqr(sin(sqr(x72))) + sqr(sin(sqr(x73))) + sqr(
     sin(sqr(x74))) + sqr(sin(sqr(x75))) + sqr(sin(sqr(x76))) + sqr(sin(sqr(x77
     ))) + sqr(sin(sqr(x78))) + sqr(sin(sqr(x79))) + sqr(sin(sqr(x80))) + sqr(
     sin(sqr(x81))) + sqr(sin(sqr(x82))) + sqr(sin(sqr(x83))) + sqr(sin(sqr(x84
     ))) + sqr(sin(sqr(x85))) + sqr(sin(sqr(x86))) + sqr(sin(sqr(x87))) + sqr(
     sin(sqr(x88))) + sqr(sin(sqr(x89))) + sqr(sin(sqr(x90))) + sqr(sin(sqr(x91
     ))) + sqr(sin(sqr(x92))) + sqr(sin(sqr(x93))) + sqr(sin(sqr(x94))) + sqr(
     sin(sqr(x95))) + sqr(sin(sqr(x96))) + sqr(sin(sqr(x97))) + sqr(sin(sqr(x98
     ))) + sqr(sin(sqr(x99))) + sqr(sin(sqr(x100))) + sqr(sin(sqr(x101))) + 
     sqr(sin(sqr(x102))) + sqr(sin(sqr(x103))) + sqr(sin(sqr(x104))) + sqr(sin(
     sqr(x105))) + sqr(sin(sqr(x106))) + sqr(sin(sqr(x107))) + sqr(sin(sqr(x108
     ))) + sqr(sin(sqr(x109))) + sqr(sin(sqr(x110))) + sqr(sin(sqr(x111))) + 
     sqr(sin(sqr(x112))) + sqr(sin(sqr(x113))) + sqr(sin(sqr(x114))) + sqr(sin(
     sqr(x115))) + sqr(sin(sqr(x116))) + sqr(sin(sqr(x117))) + sqr(sin(sqr(x118
     ))) + sqr(sin(sqr(x119))) + sqr(sin(sqr(x120))) + sqr(sin(sqr(x121))) + 
     sqr(sin(sqr(x122))) + sqr(sin(sqr(x123))) + sqr(sin(sqr(x124))) + sqr(sin(
     sqr(x125))) + sqr(sin(sqr(x126))) + sqr(sin(sqr(x127))) + sqr(sin(sqr(x128
     ))) + sqr(sin(sqr(x129))) + sqr(sin(sqr(x130))) + sqr(sin(sqr(x131))) + 
     sqr(sin(sqr(x132))) + sqr(sin(sqr(x133))) + sqr(sin(sqr(x134))) + sqr(sin(
     sqr(x135))) + sqr(sin(sqr(x136))) + sqr(sin(sqr(x137))) + sqr(sin(sqr(x138
     ))) + sqr(sin(sqr(x139))) + sqr(sin(sqr(x140))) + sqr(sin(sqr(x141))) + 
     sqr(sin(sqr(x142))) + sqr(sin(sqr(x143))) + sqr(sin(sqr(x144))) + sqr(sin(
     sqr(x145))) + sqr(sin(sqr(x146))) + sqr(sin(sqr(x147))) + sqr(sin(sqr(x148
     ))) + sqr(sin(sqr(x149))) + sqr(sin(sqr(x150))) + sqr(sin(sqr(x151))) + 
     sqr(sin(sqr(x152))) + sqr(sin(sqr(x153))) + sqr(sin(sqr(x154))) + sqr(sin(
     sqr(x155))) + sqr(sin(sqr(x156))) + sqr(sin(sqr(x157))) + sqr(sin(sqr(x158
     ))) + sqr(sin(sqr(x159))) + sqr(sin(sqr(x160))) + sqr(sin(sqr(x161))) + 
     sqr(sin(sqr(x162))) + sqr(sin(sqr(x163))) + sqr(sin(sqr(x164))) + sqr(sin(
     sqr(x165))) + sqr(sin(sqr(x166))) + sqr(sin(sqr(x167))) + sqr(sin(sqr(x168
     ))) + sqr(sin(sqr(x169))) + sqr(sin(sqr(x170))) + sqr(sin(sqr(x171))) + 
     sqr(sin(sqr(x172))) + sqr(sin(sqr(x173))) + sqr(sin(sqr(x174))) + sqr(sin(
     sqr(x175))) + sqr(sin(sqr(x176))) + sqr(sin(sqr(x177))) + sqr(sin(sqr(x178
     ))) + sqr(sin(sqr(x179))) + sqr(sin(sqr(x180))) + sqr(sin(sqr(x181))) + 
     sqr(sin(sqr(x182))) + sqr(sin(sqr(x183))) + sqr(sin(sqr(x184))) + sqr(sin(
     sqr(x185))) + sqr(sin(sqr(x186))) + sqr(sin(sqr(x187))) + sqr(sin(sqr(x188
     ))) + sqr(sin(sqr(x189))) + sqr(sin(sqr(x190))) + sqr(sin(sqr(x191))) + 
     sqr(sin(sqr(x192))) + sqr(sin(sqr(x193))) + sqr(sin(sqr(x194))) + sqr(sin(
     sqr(x195))) + sqr(sin(sqr(x196))) + sqr(sin(sqr(x197))) + sqr(sin(sqr(x198
     ))) + sqr(sin(sqr(x199))) + sqr(sin(sqr(x200))) + sqr(sin(sqr(x201))) + 
     sqr(sin(sqr(x202))) + sqr(sin(sqr(x203))) + sqr(sin(sqr(x204))) + sqr(sin(
     sqr(x205))) + sqr(sin(sqr(x206))) + sqr(sin(sqr(x207))) + sqr(sin(sqr(x208
     ))) + sqr(sin(sqr(x209))) + sqr(sin(sqr(x210))) + sqr(sin(sqr(x211))) + 
     sqr(sin(sqr(x212))) + sqr(sin(sqr(x213))) + sqr(sin(sqr(x214))) + sqr(sin(
     sqr(x215))) + sqr(sin(sqr(x216))) + sqr(sin(sqr(x217))) + sqr(sin(sqr(x218
     ))) + sqr(sin(sqr(x219))) + sqr(sin(sqr(x220))) + sqr(sin(sqr(x221))) + 
     sqr(sin(sqr(x222))) + sqr(sin(sqr(x223))) + sqr(sin(sqr(x224))) + sqr(sin(
     sqr(x225))) + sqr(sin(sqr(x226))) + sqr(sin(sqr(x227))) + sqr(sin(sqr(x228
     ))) + sqr(sin(sqr(x229))) + sqr(sin(sqr(x230))) + sqr(sin(sqr(x231))) + 
     sqr(sin(sqr(x232))) + sqr(sin(sqr(x233))) + sqr(sin(sqr(x234))) + sqr(sin(
     sqr(x235))) + sqr(sin(sqr(x236))) + sqr(sin(sqr(x237))) + sqr(sin(sqr(x238
     ))) + sqr(sin(sqr(x239))) + sqr(sin(sqr(x240))) + sqr(sin(sqr(x241))) + 
     sqr(sin(sqr(x242))) + sqr(sin(sqr(x243))) + sqr(sin(sqr(x244))) + sqr(sin(
     sqr(x245))) + sqr(sin(sqr(x246))) + sqr(sin(sqr(x247))) + sqr(sin(sqr(x248
     ))) + sqr(sin(sqr(x249))) + sqr(sin(sqr(x250))) + sqr(sin(sqr(x251))) + 
     sqr(sin(sqr(x252))) + sqr(sin(sqr(x253))) + sqr(sin(sqr(x254))) + sqr(sin(
     sqr(x255))) + sqr(sin(sqr(x256))) + sqr(sin(sqr(x257))) + sqr(sin(sqr(x258
     ))) + sqr(sin(sqr(x259))) + sqr(sin(sqr(x260))) + sqr(sin(sqr(x261))) + 
     sqr(sin(sqr(x262))) + sqr(sin(sqr(x263))) + sqr(sin(sqr(x264))) + sqr(sin(
     sqr(x265))) + sqr(sin(sqr(x266))) + sqr(sin(sqr(x267))) + sqr(sin(sqr(x268
     ))) + sqr(sin(sqr(x269))) + sqr(sin(sqr(x270))) + sqr(sin(sqr(x271))) + 
     sqr(sin(sqr(x272))) + sqr(sin(sqr(x273))) + sqr(sin(sqr(x274))) + sqr(sin(
     sqr(x275))) + sqr(sin(sqr(x276))) + sqr(sin(sqr(x277))) + sqr(sin(sqr(x278
     ))) + sqr(sin(sqr(x279))) + sqr(sin(sqr(x280))) + sqr(sin(sqr(x281))) + 
     sqr(sin(sqr(x282))) + sqr(sin(sqr(x283))) + sqr(sin(sqr(x284))) + sqr(sin(
     sqr(x285))) + sqr(sin(sqr(x286))) + sqr(sin(sqr(x287))) + sqr(sin(sqr(x288
     ))) + sqr(sin(sqr(x289))) + sqr(sin(sqr(x290))) + sqr(sin(sqr(x291))) + 
     sqr(sin(sqr(x292))) + sqr(sin(sqr(x293))) + sqr(sin(sqr(x294))) + sqr(sin(
     sqr(x295))) + sqr(sin(sqr(x296))) + sqr(sin(sqr(x297))) + sqr(sin(sqr(x298
     ))) + sqr(sin(sqr(x299))) + sqr(sin(sqr(x300))) + sqr(sin(sqr(x301))) + 
     sqr(sin(sqr(x302))) + sqr(sin(sqr(x303))) + sqr(sin(sqr(x304))) + sqr(sin(
     sqr(x305))) + sqr(sin(sqr(x306))) + sqr(sin(sqr(x307))) + sqr(sin(sqr(x308
     ))) + sqr(sin(sqr(x309))) + sqr(sin(sqr(x310))) + sqr(sin(sqr(x311))) + 
     sqr(sin(sqr(x312))) + sqr(sin(sqr(x313))) + sqr(sin(sqr(x314))) + sqr(sin(
     sqr(x315))) + sqr(sin(sqr(x316))) + sqr(sin(sqr(x317))) + sqr(sin(sqr(x318
     ))) + sqr(sin(sqr(x319))) + sqr(sin(sqr(x320))) + sqr(sin(sqr(x321))) + 
     sqr(sin(sqr(x322))) + sqr(sin(sqr(x323))) + sqr(sin(sqr(x324))) + sqr(sin(
     sqr(x325))) + sqr(sin(sqr(x326))) + sqr(sin(sqr(x327))) + sqr(sin(sqr(x328
     ))) + sqr(sin(sqr(x329))) + sqr(sin(sqr(x330))) + sqr(sin(sqr(x331))) + 
     sqr(sin(sqr(x332))) + sqr(sin(sqr(x333))) + sqr(sin(sqr(x334))) + sqr(sin(
     sqr(x335))) + sqr(sin(sqr(x336))) + sqr(sin(sqr(x337))) + sqr(sin(sqr(x338
     ))) + sqr(sin(sqr(x339))) + sqr(sin(sqr(x340))) + sqr(sin(sqr(x341))) + 
     sqr(sin(sqr(x342))) + sqr(sin(sqr(x343))) + sqr(sin(sqr(x344))) + sqr(sin(
     sqr(x345))) + sqr(sin(sqr(x346))) + sqr(sin(sqr(x347))) + sqr(sin(sqr(x348
     ))) + sqr(sin(sqr(x349))) + sqr(sin(sqr(x350))) + sqr(sin(sqr(x351))) + 
     sqr(sin(sqr(x352))) + sqr(sin(sqr(x353))) + sqr(sin(sqr(x354))) + sqr(sin(
     sqr(x355))) + sqr(sin(sqr(x356))) + sqr(sin(sqr(x357))) + sqr(sin(sqr(x358
     ))) + sqr(sin(sqr(x359))) + sqr(sin(sqr(x360))) + sqr(sin(sqr(x361))) + 
     sqr(sin(sqr(x362))) + sqr(sin(sqr(x363))) + sqr(sin(sqr(x364))) + sqr(sin(
     sqr(x365))) + sqr(sin(sqr(x366))) + sqr(sin(sqr(x367))) + sqr(sin(sqr(x368
     ))) + sqr(sin(sqr(x369))) + sqr(sin(sqr(x370))) + sqr(sin(sqr(x371))) + 
     sqr(sin(sqr(x372))) + sqr(sin(sqr(x373))) + sqr(sin(sqr(x374))) + sqr(sin(
     sqr(x375))) + sqr(sin(sqr(x376))) + sqr(sin(sqr(x377))) + sqr(sin(sqr(x378
     ))) + sqr(sin(sqr(x379))) + sqr(sin(sqr(x380))) + sqr(sin(sqr(x381))) + 
     sqr(sin(sqr(x382))) + sqr(sin(sqr(x383))) + sqr(sin(sqr(x384))) + sqr(sin(
     sqr(x385))) + sqr(sin(sqr(x386))) + sqr(sin(sqr(x387))) + sqr(sin(sqr(x388
     ))) + sqr(sin(sqr(x389))) + sqr(sin(sqr(x390))) + sqr(sin(sqr(x391))) + 
     sqr(sin(sqr(x392))) + sqr(sin(sqr(x393))) + sqr(sin(sqr(x394))) + sqr(sin(
     sqr(x395))) + sqr(sin(sqr(x396))) + sqr(sin(sqr(x397))) + sqr(sin(sqr(x398
     ))) + sqr(sin(sqr(x399))) + sqr(sin(sqr(x400))) + sqr(sin(sqr(x401))) + 
     sqr(sin(sqr(x402))) + sqr(sin(sqr(x403))) + sqr(sin(sqr(x404))) + sqr(sin(
     sqr(x405))) + sqr(sin(sqr(x406))) + sqr(sin(sqr(x407))) + sqr(sin(sqr(x408
     ))) + sqr(sin(sqr(x409))) + sqr(sin(sqr(x410))) + sqr(sin(sqr(x411))) + 
     sqr(sin(sqr(x412))) + sqr(sin(sqr(x413))) + sqr(sin(sqr(x414))) + sqr(sin(
     sqr(x415))) + sqr(sin(sqr(x416))) + sqr(sin(sqr(x417))) + sqr(sin(sqr(x418
     ))) + sqr(sin(sqr(x419))) + sqr(sin(sqr(x420))) + sqr(sin(sqr(x421))) + 
     sqr(sin(sqr(x422))) + sqr(sin(sqr(x423))) + sqr(sin(sqr(x424))) + sqr(sin(
     sqr(x425))) + sqr(sin(sqr(x426))) + sqr(sin(sqr(x427))) + sqr(sin(sqr(x428
     ))) + sqr(sin(sqr(x429))) + sqr(sin(sqr(x430))) + sqr(sin(sqr(x431))) + 
     sqr(sin(sqr(x432))) + sqr(sin(sqr(x433))) + sqr(sin(sqr(x434))) + sqr(sin(
     sqr(x435))) + sqr(sin(sqr(x436))) + sqr(sin(sqr(x437))) + sqr(sin(sqr(x438
     ))) + sqr(sin(sqr(x439))) + sqr(sin(sqr(x440))) + sqr(sin(sqr(x441))) + 
     sqr(sin(sqr(x442))) + sqr(sin(sqr(x443))) + sqr(sin(sqr(x444))) + sqr(sin(
     sqr(x445))) + sqr(sin(sqr(x446))) + sqr(sin(sqr(x447))) + sqr(sin(sqr(x448
     ))) + sqr(sin(sqr(x449))) + sqr(sin(sqr(x450))) + sqr(sin(sqr(x451))) + 
     sqr(sin(sqr(x452))) + sqr(sin(sqr(x453))) + sqr(sin(sqr(x454))) + sqr(sin(
     sqr(x455))) + sqr(sin(sqr(x456))) + sqr(sin(sqr(x457))) + sqr(sin(sqr(x458
     ))) + sqr(sin(sqr(x459))) + sqr(sin(sqr(x460))) + sqr(sin(sqr(x461))) + 
     sqr(sin(sqr(x462))) + sqr(sin(sqr(x463))) + sqr(sin(sqr(x464))) + sqr(sin(
     sqr(x465))) + sqr(sin(sqr(x466))) + sqr(sin(sqr(x467))) + sqr(sin(sqr(x468
     ))) + sqr(sin(sqr(x469))) + sqr(sin(sqr(x470))) + sqr(sin(sqr(x471))) + 
     sqr(sin(sqr(x472))) + sqr(sin(sqr(x473))) + sqr(sin(sqr(x474))) + sqr(sin(
     sqr(x475))) + sqr(sin(sqr(x476))) + sqr(sin(sqr(x477))) + sqr(sin(sqr(x478
     ))) + sqr(sin(sqr(x479))) + sqr(sin(sqr(x480))) + sqr(sin(sqr(x481))) + 
     sqr(sin(sqr(x482))) + sqr(sin(sqr(x483))) + sqr(sin(sqr(x484))) + sqr(sin(
     sqr(x485))) + sqr(sin(sqr(x486))) + sqr(sin(sqr(x487))) + sqr(sin(sqr(x488
     ))) + sqr(sin(sqr(x489))) + sqr(sin(sqr(x490))) + sqr(sin(sqr(x491))) + 
     sqr(sin(sqr(x492))) + sqr(sin(sqr(x493))) + sqr(sin(sqr(x494))) + sqr(sin(
     sqr(x495))) + sqr(sin(sqr(x496))) + sqr(sin(sqr(x497))) + sqr(sin(sqr(x498
     ))) + sqr(sin(sqr(x499))) + sqr(sin(sqr(x500))) + sqr(sin(sqr(x501))) + 
     sqr(sin(sqr(x502))) + sqr(sin(sqr(x503))) + sqr(sin(sqr(x504))) + sqr(sin(
     sqr(x505))) + sqr(sin(sqr(x506))) + sqr(sin(sqr(x507))) + sqr(sin(sqr(x508
     ))) + sqr(sin(sqr(x509))) + sqr(sin(sqr(x510))) + sqr(sin(sqr(x511))) + 
     sqr(sin(sqr(x512))) + sqr(sin(sqr(x513))) + sqr(sin(sqr(x514))) + sqr(sin(
     sqr(x515))) + sqr(sin(sqr(x516))) + sqr(sin(sqr(x517))) + sqr(sin(sqr(x518
     ))) + sqr(sin(sqr(x519))) + sqr(sin(sqr(x520))) + sqr(sin(sqr(x521))) + 
     sqr(sin(sqr(x522))) + sqr(sin(sqr(x523))) + sqr(sin(sqr(x524))) + sqr(sin(
     sqr(x525))) + sqr(sin(sqr(x526))) + sqr(sin(sqr(x527))) + sqr(sin(sqr(x528
     ))) + sqr(sin(sqr(x529))) + sqr(sin(sqr(x530))) + sqr(sin(sqr(x531))) + 
     sqr(sin(sqr(x532))) + sqr(sin(sqr(x533))) + sqr(sin(sqr(x534))) + sqr(sin(
     sqr(x535))) + sqr(sin(sqr(x536))) + sqr(sin(sqr(x537))) + sqr(sin(sqr(x538
     ))) + sqr(sin(sqr(x539))) + sqr(sin(sqr(x540))) + sqr(sin(sqr(x541))) + 
     sqr(sin(sqr(x542))) + sqr(sin(sqr(x543))) + sqr(sin(sqr(x544))) + sqr(sin(
     sqr(x545))) + sqr(sin(sqr(x546))) + sqr(sin(sqr(x547))) + sqr(sin(sqr(x548
     ))) + sqr(sin(sqr(x549))) + sqr(sin(sqr(x550))) + sqr(sin(sqr(x551))) + 
     sqr(sin(sqr(x552))) + sqr(sin(sqr(x553))) + sqr(sin(sqr(x554))) + sqr(sin(
     sqr(x555))) + sqr(sin(sqr(x556))) + sqr(sin(sqr(x557))) + sqr(sin(sqr(x558
     ))) + sqr(sin(sqr(x559))) + sqr(sin(sqr(x560))) + sqr(sin(sqr(x561))) + 
     sqr(sin(sqr(x562))) + sqr(sin(sqr(x563))) + sqr(sin(sqr(x564))) + sqr(sin(
     sqr(x565))) + sqr(sin(sqr(x566))) + sqr(sin(sqr(x567))) + sqr(sin(sqr(x568
     ))) + sqr(sin(sqr(x569))) + sqr(sin(sqr(x570))) + sqr(sin(sqr(x571))) + 
     sqr(sin(sqr(x572))) + sqr(sin(sqr(x573))) + sqr(sin(sqr(x574))) + sqr(sin(
     sqr(x575))) + sqr(sin(sqr(x576))) + sqr(sin(sqr(x577))) + sqr(sin(sqr(x578
     ))) + sqr(sin(sqr(x579))) + sqr(sin(sqr(x580))) + sqr(sin(sqr(x581))) + 
     sqr(sin(sqr(x582))) + sqr(sin(sqr(x583))) + sqr(sin(sqr(x584))) + sqr(sin(
     sqr(x585))) + sqr(sin(sqr(x586))) + sqr(sin(sqr(x587))) + sqr(sin(sqr(x588
     ))) + sqr(sin(sqr(x589))) + sqr(sin(sqr(x590))) + sqr(sin(sqr(x591))) + 
     sqr(sin(sqr(x592))) + sqr(sin(sqr(x593))) + sqr(sin(sqr(x594))) + sqr(sin(
     sqr(x595))) + sqr(sin(sqr(x596))) + sqr(sin(sqr(x597))) + sqr(sin(sqr(x598
     ))) + sqr(sin(sqr(x599))) + sqr(sin(sqr(x600))) + sqr(sin(sqr(x601))) + 
     sqr(sin(sqr(x602))) + sqr(sin(sqr(x603))) + sqr(sin(sqr(x604))) + sqr(sin(
     sqr(x605))) + sqr(sin(sqr(x606))) + sqr(sin(sqr(x607))) + sqr(sin(sqr(x608
     ))) + sqr(sin(sqr(x609))) + sqr(sin(sqr(x610))) + sqr(sin(sqr(x611))) + 
     sqr(sin(sqr(x612))) + sqr(sin(sqr(x613))) + sqr(sin(sqr(x614))) + sqr(sin(
     sqr(x615))) + sqr(sin(sqr(x616))) + sqr(sin(sqr(x617))) + sqr(sin(sqr(x618
     ))) + sqr(sin(sqr(x619))) + sqr(sin(sqr(x620))) + sqr(sin(sqr(x621))) + 
     sqr(sin(sqr(x622))) + sqr(sin(sqr(x623))) + sqr(sin(sqr(x624))) + sqr(sin(
     sqr(x625))) + sqr(sin(sqr(x626))) + sqr(sin(sqr(x627))) + sqr(sin(sqr(x628
     ))) + sqr(sin(sqr(x629))) + sqr(sin(sqr(x630))) + sqr(sin(sqr(x631))) + 
     sqr(sin(sqr(x632))) + sqr(sin(sqr(x633))) + sqr(sin(sqr(x634))) + sqr(sin(
     sqr(x635))) + sqr(sin(sqr(x636))) + sqr(sin(sqr(x637))) + sqr(sin(sqr(x638
     ))) + sqr(sin(sqr(x639))) + sqr(sin(sqr(x640))) + sqr(sin(sqr(x641))) + 
     sqr(sin(sqr(x642))) + sqr(sin(sqr(x643))) + sqr(sin(sqr(x644))) + sqr(sin(
     sqr(x645))) + sqr(sin(sqr(x646))) + sqr(sin(sqr(x647))) + sqr(sin(sqr(x648
     ))) + sqr(sin(sqr(x649))) + sqr(sin(sqr(x650))) + sqr(sin(sqr(x651))) + 
     sqr(sin(sqr(x652))) + sqr(sin(sqr(x653))) + sqr(sin(sqr(x654))) + sqr(sin(
     sqr(x655))) + sqr(sin(sqr(x656))) + sqr(sin(sqr(x657))) + sqr(sin(sqr(x658
     ))) + sqr(sin(sqr(x659))) + sqr(sin(sqr(x660))) + sqr(sin(sqr(x661))) + 
     sqr(sin(sqr(x662))) + sqr(sin(sqr(x663))) + sqr(sin(sqr(x664))) + sqr(sin(
     sqr(x665))) + sqr(sin(sqr(x666))) + sqr(sin(sqr(x667))) + sqr(sin(sqr(x668
     ))) + sqr(sin(sqr(x669))) + sqr(sin(sqr(x670))) + sqr(sin(sqr(x671))) + 
     sqr(sin(sqr(x672))) + sqr(sin(sqr(x673))) + sqr(sin(sqr(x674))) + sqr(sin(
     sqr(x675))) + sqr(sin(sqr(x676))) + sqr(sin(sqr(x677))) + sqr(sin(sqr(x678
     ))) + sqr(sin(sqr(x679))) + sqr(sin(sqr(x680))) + sqr(sin(sqr(x681))) + 
     sqr(sin(sqr(x682))) + sqr(sin(sqr(x683))) + sqr(sin(sqr(x684))) + sqr(sin(
     sqr(x685))) + sqr(sin(sqr(x686))) + sqr(sin(sqr(x687))) + sqr(sin(sqr(x688
     ))) + sqr(sin(sqr(x689))) + sqr(sin(sqr(x690))) + sqr(sin(sqr(x691))) + 
     sqr(sin(sqr(x692))) + sqr(sin(sqr(x693))) + sqr(sin(sqr(x694))) + sqr(sin(
     sqr(x695))) + sqr(sin(sqr(x696))) + sqr(sin(sqr(x697))) + sqr(sin(sqr(x698
     ))) + sqr(sin(sqr(x699))) + sqr(sin(sqr(x700))) + sqr(sin(sqr(x701))) + 
     sqr(sin(sqr(x702))) + sqr(sin(sqr(x703))) + sqr(sin(sqr(x704))) + sqr(sin(
     sqr(x705))) + sqr(sin(sqr(x706))) + sqr(sin(sqr(x707))) + sqr(sin(sqr(x708
     ))) + sqr(sin(sqr(x709))) + sqr(sin(sqr(x710))) + sqr(sin(sqr(x711))) + 
     sqr(sin(sqr(x712))) + sqr(sin(sqr(x713))) + sqr(sin(sqr(x714))) + sqr(sin(
     sqr(x715))) + sqr(sin(sqr(x716))) + sqr(sin(sqr(x717))) + sqr(sin(sqr(x718
     ))) + sqr(sin(sqr(x719))) + sqr(sin(sqr(x720))) + sqr(sin(sqr(x721))) + 
     sqr(sin(sqr(x722))) + sqr(sin(sqr(x723))) + sqr(sin(sqr(x724))) + sqr(sin(
     sqr(x725))) + sqr(sin(sqr(x726))) + sqr(sin(sqr(x727))) + sqr(sin(sqr(x728
     ))) + sqr(sin(sqr(x729))) + sqr(sin(sqr(x730))) + sqr(sin(sqr(x731))) + 
     sqr(sin(sqr(x732))) + sqr(sin(sqr(x733))) + sqr(sin(sqr(x734))) + sqr(sin(
     sqr(x735))) + sqr(sin(sqr(x736))) + sqr(sin(sqr(x737))) + sqr(sin(sqr(x738
     ))) + sqr(sin(sqr(x739))) + sqr(sin(sqr(x740))) + sqr(sin(sqr(x741))) + 
     sqr(sin(sqr(x742))) + sqr(sin(sqr(x743))) + sqr(sin(sqr(x744))) + sqr(sin(
     sqr(x745))) + sqr(sin(sqr(x746))) + sqr(sin(sqr(x747))) + sqr(sin(sqr(x748
     ))) + sqr(sin(sqr(x749))) + sqr(sin(sqr(x750))) + sqr(sin(sqr(x751))) + 
     sqr(sin(sqr(x752))) + sqr(sin(sqr(x753))) + sqr(sin(sqr(x754))) + sqr(sin(
     sqr(x755))) + sqr(sin(sqr(x756))) + sqr(sin(sqr(x757))) + sqr(sin(sqr(x758
     ))) + sqr(sin(sqr(x759))) + sqr(sin(sqr(x760))) + sqr(sin(sqr(x761))) + 
     sqr(sin(sqr(x762))) + sqr(sin(sqr(x763))) + sqr(sin(sqr(x764))) + sqr(sin(
     sqr(x765))) + sqr(sin(sqr(x766))) + sqr(sin(sqr(x767))) + sqr(sin(sqr(x768
     ))) + sqr(sin(sqr(x769))) + sqr(sin(sqr(x770))) + sqr(sin(sqr(x771))) + 
     sqr(sin(sqr(x772))) + sqr(sin(sqr(x773))) + sqr(sin(sqr(x774))) + sqr(sin(
     sqr(x775))) + sqr(sin(sqr(x776))) + sqr(sin(sqr(x777))) + sqr(sin(sqr(x778
     ))) + sqr(sin(sqr(x779))) + sqr(sin(sqr(x780))) + sqr(sin(sqr(x781))) + 
     sqr(sin(sqr(x782))) + sqr(sin(sqr(x783))) + sqr(sin(sqr(x784))) + sqr(sin(
     sqr(x785))) + sqr(sin(sqr(x786))) + sqr(sin(sqr(x787))) + sqr(sin(sqr(x788
     ))) + sqr(sin(sqr(x789))) + sqr(sin(sqr(x790))) + sqr(sin(sqr(x791))) + 
     sqr(sin(sqr(x792))) + sqr(sin(sqr(x793))) + sqr(sin(sqr(x794))) + sqr(sin(
     sqr(x795))) + sqr(sin(sqr(x796))) + sqr(sin(sqr(x797))) + sqr(sin(sqr(x798
     ))) + sqr(sin(sqr(x799))) + sqr(sin(sqr(x800))) + sqr(sin(sqr(x801))) + 
     sqr(sin(sqr(x802))) + sqr(sin(sqr(x803))) + sqr(sin(sqr(x804))) + sqr(sin(
     sqr(x805))) + sqr(sin(sqr(x806))) + sqr(sin(sqr(x807))) + sqr(sin(sqr(x808
     ))) + sqr(sin(sqr(x809))) + sqr(sin(sqr(x810))) + sqr(sin(sqr(x811))) + 
     sqr(sin(sqr(x812))) + sqr(sin(sqr(x813))) + sqr(sin(sqr(x814))) + sqr(sin(
     sqr(x815))) + sqr(sin(sqr(x816))) + sqr(sin(sqr(x817))) + sqr(sin(sqr(x818
     ))) + sqr(sin(sqr(x819))) + sqr(sin(sqr(x820))) + sqr(sin(sqr(x821))) + 
     sqr(sin(sqr(x822))) + sqr(sin(sqr(x823))) + sqr(sin(sqr(x824))) + sqr(sin(
     sqr(x825))) + sqr(sin(sqr(x826))) + sqr(sin(sqr(x827))) + sqr(sin(sqr(x828
     ))) + sqr(sin(sqr(x829))) + sqr(sin(sqr(x830))) + sqr(sin(sqr(x831))) + 
     sqr(sin(sqr(x832))) + sqr(sin(sqr(x833))) + sqr(sin(sqr(x834))) + sqr(sin(
     sqr(x835))) + sqr(sin(sqr(x836))) + sqr(sin(sqr(x837))) + sqr(sin(sqr(x838
     ))) + sqr(sin(sqr(x839))) + sqr(sin(sqr(x840))) + sqr(sin(sqr(x841))) + 
     sqr(sin(sqr(x842))) + sqr(sin(sqr(x843))) + sqr(sin(sqr(x844))) + sqr(sin(
     sqr(x845))) + sqr(sin(sqr(x846))) + sqr(sin(sqr(x847))) + sqr(sin(sqr(x848
     ))) + sqr(sin(sqr(x849))) + sqr(sin(sqr(x850))) + sqr(sin(sqr(x851))) + 
     sqr(sin(sqr(x852))) + sqr(sin(sqr(x853))) + sqr(sin(sqr(x854))) + sqr(sin(
     sqr(x855))) + sqr(sin(sqr(x856))) + sqr(sin(sqr(x857))) + sqr(sin(sqr(x858
     ))) + sqr(sin(sqr(x859))) + sqr(sin(sqr(x860))) + sqr(sin(sqr(x861))) + 
     sqr(sin(sqr(x862))) + sqr(sin(sqr(x863))) + sqr(sin(sqr(x864))) + sqr(sin(
     sqr(x865))) + sqr(sin(sqr(x866))) + sqr(sin(sqr(x867))) + sqr(sin(sqr(x868
     ))) + sqr(sin(sqr(x869))) + sqr(sin(sqr(x870))) + sqr(sin(sqr(x871))) + 
     sqr(sin(sqr(x872))) + sqr(sin(sqr(x873))) + sqr(sin(sqr(x874))) + sqr(sin(
     sqr(x875))) + sqr(sin(sqr(x876))) + sqr(sin(sqr(x877))) + sqr(sin(sqr(x878
     ))) + sqr(sin(sqr(x879))) + sqr(sin(sqr(x880))) + sqr(sin(sqr(x881))) + 
     sqr(sin(sqr(x882))) + sqr(sin(sqr(x883))) + sqr(sin(sqr(x884))) + sqr(sin(
     sqr(x885))) + sqr(sin(sqr(x886))) + sqr(sin(sqr(x887))) + sqr(sin(sqr(x888
     ))) + sqr(sin(sqr(x889))) + sqr(sin(sqr(x890))) + sqr(sin(sqr(x891))) + 
     sqr(sin(sqr(x892))) + sqr(sin(sqr(x893))) + sqr(sin(sqr(x894))) + sqr(sin(
     sqr(x895))) + sqr(sin(sqr(x896))) + sqr(sin(sqr(x897))) + sqr(sin(sqr(x898
     ))) + sqr(sin(sqr(x899))) + sqr(sin(sqr(x900))) + sqr(sin(sqr(x901))) + 
     sqr(sin(sqr(x902))) + sqr(sin(sqr(x903))) + sqr(sin(sqr(x904))) + sqr(sin(
     sqr(x905))) + sqr(sin(sqr(x906))) + sqr(sin(sqr(x907))) + sqr(sin(sqr(x908
     ))) + sqr(sin(sqr(x909))) + sqr(sin(sqr(x910))) + sqr(sin(sqr(x911))) + 
     sqr(sin(sqr(x912))) + sqr(sin(sqr(x913))) + sqr(sin(sqr(x914))) + sqr(sin(
     sqr(x915))) + sqr(sin(sqr(x916))) + sqr(sin(sqr(x917))) + sqr(sin(sqr(x918
     ))) + sqr(sin(sqr(x919))) + sqr(sin(sqr(x920))) + sqr(sin(sqr(x921))) + 
     sqr(sin(sqr(x922))) + sqr(sin(sqr(x923))) + sqr(sin(sqr(x924))) + sqr(sin(
     sqr(x925))) + sqr(sin(sqr(x926))) + sqr(sin(sqr(x927))) + sqr(sin(sqr(x928
     ))) + sqr(sin(sqr(x929))) + sqr(sin(sqr(x930))) + sqr(sin(sqr(x931))) + 
     sqr(sin(sqr(x932))) + sqr(sin(sqr(x933))) + sqr(sin(sqr(x934))) + sqr(sin(
     sqr(x935))) + sqr(sin(sqr(x936))) + sqr(sin(sqr(x937))) + sqr(sin(sqr(x938
     ))) + sqr(sin(sqr(x939))) + sqr(sin(sqr(x940))) + sqr(sin(sqr(x941))) + 
     sqr(sin(sqr(x942))) + sqr(sin(sqr(x943))) + sqr(sin(sqr(x944))) + sqr(sin(
     sqr(x945))) + sqr(sin(sqr(x946))) + sqr(sin(sqr(x947))) + sqr(sin(sqr(x948
     ))) + sqr(sin(sqr(x949))) + sqr(sin(sqr(x950))) + sqr(sin(sqr(x951))) + 
     sqr(sin(sqr(x952))) + sqr(sin(sqr(x953))) + sqr(sin(sqr(x954))) + sqr(sin(
     sqr(x955))) + sqr(sin(sqr(x956))) + sqr(sin(sqr(x957))) + sqr(sin(sqr(x958
     ))) + sqr(sin(sqr(x959))) + sqr(sin(sqr(x960))) + sqr(sin(sqr(x961))) + 
     sqr(sin(sqr(x962))) + sqr(sin(sqr(x963))) + sqr(sin(sqr(x964))) + sqr(sin(
     sqr(x965))) + sqr(sin(sqr(x966))) + sqr(sin(sqr(x967))) + sqr(sin(sqr(x968
     ))) + sqr(sin(sqr(x969))) + sqr(sin(sqr(x970))) + sqr(sin(sqr(x971))) + 
     sqr(sin(sqr(x972))) + sqr(sin(sqr(x973))) + sqr(sin(sqr(x974))) + sqr(sin(
     sqr(x975))) + sqr(sin(sqr(x976))) + sqr(sin(sqr(x977))) + sqr(sin(sqr(x978
     ))) + sqr(sin(sqr(x979))) + sqr(sin(sqr(x980))) + sqr(sin(sqr(x981))) + 
     sqr(sin(sqr(x982))) + sqr(sin(sqr(x983))) + sqr(sin(sqr(x984))) + sqr(sin(
     sqr(x985))) + sqr(sin(sqr(x986))) + sqr(sin(sqr(x987))) + sqr(sin(sqr(x988
     ))) + sqr(sin(sqr(x989))) + sqr(sin(sqr(x990))) + sqr(sin(sqr(x991))) + 
     sqr(sin(sqr(x992))) + sqr(sin(sqr(x993))) + sqr(sin(sqr(x994))) + sqr(sin(
     sqr(x995))) + sqr(sin(sqr(x996))) + sqr(sin(sqr(x997))) + sqr(sin(sqr(x998
     ))) + sqr(sin(sqr(x999))) + sqr(sin(sqr(x1000))) + sqr(sin(sqr(x1001))) + 
     sqr(sin(sqr(x1002))) + sqr(sin(sqr(x1003)))) + x3 =E= 0;

e4.. (x5 - x4)*(x6 - x4) + (x6 - x5)*(x7 - x5) + (x7 - x6)*(x8 - x6) + (x8 - x7
     )*(x9 - x7) + (x9 - x8)*(x10 - x8) + (x10 - x9)*(x11 - x9) + (x11 - x10)*(
     x12 - x10) + (x12 - x11)*(x13 - x11) + (x13 - x12)*(x14 - x12)
      =L= 0.0316227766016838;

e5..    x114 + x125 - x136 - x147 - x158 + x169 - x180 + x191
      =L= 0.0316227766016838;

e6.. (-x206*x218) - x230*x242 - x245*x257 + x202 + x269 =L= 0.0316227766016838;

e7.. (-x286*x298) - x10*x26 - x45*x57 + x69 + x282 =L= 0.0316227766016838;

e8..    x314 + x325 - x336 - x347 - x358 + x369 - x380 + x391 =E= 0;

e9.. (-x606*x618) - x630*x542 - x545*x657 + x602 + x669 =L= 0.0316227766016838;

e10.. (-x786*x798) - x10*x26 - x745*x757 + x669 + x682 =L= 0.0316227766016838;

e11..    x325 - x347 + x369 - x390 + x814 - x836 - x858 + x891 =E= 0;

e12.. (-x906*x918) - x630*x942 - x945*x657 + x902 + x969 =E= 0;

e13.. (-x786*x798) - x10*x26 - x745*x757 + x669 + x682 =E= 0;

e14.. (x5 - x4)*(x6 - x4) + (x6 - x5)*(x7 - x5) + (x7 - x6)*(x8 - x6) + (x8 - 
      x7)*(x9 - x7) + (x9 - x8)*(x10 - x8) + (x10 - x9)*(x11 - x9) + (x11 - x10
      )*(x12 - x10) + (x12 - x11)*(x13 - x11) + (x13 - x12)*(x14 - x12)
       =G= -0.0316227766016838;

e15..    x114 + x125 - x136 - x147 - x158 + x169 - x180 + x191
       =G= -0.0316227766016838;

e16.. (-x206*x218) - x230*x242 - x245*x257 + x202 + x269
       =G= -0.0316227766016838;

e17.. (-x286*x298) - x10*x26 - x45*x57 + x69 + x282 =G= -0.0316227766016838;

e18.. (-x606*x618) - x630*x542 - x545*x657 + x602 + x669
       =G= -0.0316227766016838;

e19.. (-x786*x798) - x10*x26 - x745*x757 + x669 + x682 =G= -0.0316227766016838;

* set non-default bounds
x4.lo = -1.3; x4.up = 1.7;
x5.lo = -0.4; x5.up = 0.8;
x6.lo = -1.2; x6.up = 0.9;
x7.lo = -1.3; x7.up = 1.7;
x8.lo = -0.4; x8.up = 0.8;
x9.lo = -1.2; x9.up = 0.9;
x10.lo = -1.3; x10.up = 1.7;
x11.lo = -0.4; x11.up = 0.8;
x12.lo = -1.2; x12.up = 0.9;
x13.lo = -1.3; x13.up = 1.7;
x14.lo = -1.3; x14.up = 1.7;
x15.lo = -0.4; x15.up = 0.8;
x16.lo = -1.2; x16.up = 0.9;
x17.lo = -1.3; x17.up = 1.7;
x18.lo = -0.4; x18.up = 0.8;
x19.lo = -1.2; x19.up = 0.9;
x20.lo = -1.3; x20.up = 1.7;
x21.lo = -0.4; x21.up = 0.8;
x22.lo = -1.2; x22.up = 0.9;
x23.lo = -1.3; x23.up = 1.7;
x24.lo = -1.3; x24.up = 1.7;
x25.lo = -0.4; x25.up = 0.8;
x26.lo = -1.2; x26.up = 0.9;
x27.lo = -1.3; x27.up = 1.7;
x28.lo = -0.4; x28.up = 0.8;
x29.lo = -1.2; x29.up = 0.9;
x30.lo = -1.3; x30.up = 1.7;
x31.lo = -0.4; x31.up = 0.8;
x32.lo = -1.2; x32.up = 0.9;
x33.lo = -1.3; x33.up = 1.7;
x34.lo = -1.3; x34.up = 1.7;
x35.lo = -0.4; x35.up = 0.8;
x36.lo = -1.2; x36.up = 0.9;
x37.lo = -1.3; x37.up = 1.7;
x38.lo = -0.4; x38.up = 0.8;
x39.lo = -1.2; x39.up = 0.9;
x40.lo = -1.3; x40.up = 1.7;
x41.lo = -0.4; x41.up = 0.8;
x42.lo = -1.2; x42.up = 0.9;
x43.lo = -1.3; x43.up = 1.7;
x44.lo = -1.3; x44.up = 1.7;
x45.lo = -0.4; x45.up = 0.8;
x46.lo = -1.2; x46.up = 0.9;
x47.lo = -1.3; x47.up = 1.7;
x48.lo = -0.4; x48.up = 0.8;
x49.lo = -1.2; x49.up = 0.9;
x50.lo = -1.3; x50.up = 1.7;
x51.lo = -0.4; x51.up = 0.8;
x52.lo = -1.2; x52.up = 0.9;
x53.lo = -1.3; x53.up = 1.7;
x54.lo = -1.3; x54.up = 1.7;
x55.lo = -0.4; x55.up = 0.8;
x56.lo = -1.2; x56.up = 0.9;
x57.lo = -1.3; x57.up = 1.7;
x58.lo = -0.4; x58.up = 0.8;
x59.lo = -1.2; x59.up = 0.9;
x60.lo = -1.3; x60.up = 1.7;
x61.lo = -0.4; x61.up = 0.8;
x62.lo = -1.2; x62.up = 0.9;
x63.lo = -1.3; x63.up = 1.7;
x64.lo = -1.3; x64.up = 1.7;
x65.lo = -0.4; x65.up = 0.8;
x66.lo = -1.2; x66.up = 0.9;
x67.lo = -1.3; x67.up = 1.7;
x68.lo = -0.4; x68.up = 0.8;
x69.lo = -1.2; x69.up = 0.9;
x70.lo = -1.3; x70.up = 1.7;
x71.lo = -0.4; x71.up = 0.8;
x72.lo = -1.2; x72.up = 0.9;
x73.lo = -1.3; x73.up = 1.7;
x74.lo = -1.3; x74.up = 1.7;
x75.lo = -0.4; x75.up = 0.8;
x76.lo = -1.2; x76.up = 0.9;
x77.lo = -1.3; x77.up = 1.7;
x78.lo = -0.4; x78.up = 0.8;
x79.lo = -1.2; x79.up = 0.9;
x80.lo = -1.3; x80.up = 1.7;
x81.lo = -0.4; x81.up = 0.8;
x82.lo = -1.2; x82.up = 0.9;
x83.lo = -1.3; x83.up = 1.7;
x84.lo = -1.3; x84.up = 1.7;
x85.lo = -0.4; x85.up = 0.8;
x86.lo = -1.2; x86.up = 0.9;
x87.lo = -1.3; x87.up = 1.7;
x88.lo = -0.4; x88.up = 0.8;
x89.lo = -1.2; x89.up = 0.9;
x90.lo = -1.3; x90.up = 1.7;
x91.lo = -0.4; x91.up = 0.8;
x92.lo = -1.2; x92.up = 0.9;
x93.lo = -1.3; x93.up = 1.7;
x94.lo = -1.3; x94.up = 1.7;
x95.lo = -0.4; x95.up = 0.8;
x96.lo = -1.2; x96.up = 0.9;
x97.lo = -1.3; x97.up = 1.7;
x98.lo = -0.4; x98.up = 0.8;
x99.lo = -1.2; x99.up = 0.9;
x100.lo = -1.3; x100.up = 1.7;
x101.lo = -0.4; x101.up = 0.8;
x102.lo = -1.2; x102.up = 0.9;
x103.lo = -1.3; x103.up = 1.7;
x104.lo = -1.3; x104.up = 1.7;
x105.lo = -0.4; x105.up = 0.8;
x106.lo = -1.2; x106.up = 0.9;
x107.lo = -1.3; x107.up = 1.7;
x108.lo = -0.4; x108.up = 0.8;
x109.lo = -1.2; x109.up = 0.9;
x110.lo = -1.3; x110.up = 1.7;
x111.lo = -0.4; x111.up = 0.8;
x112.lo = -1.2; x112.up = 0.9;
x113.lo = -1.3; x113.up = 1.7;
x114.lo = -1.3; x114.up = 1.7;
x115.lo = -0.4; x115.up = 0.8;
x116.lo = -1.2; x116.up = 0.9;
x117.lo = -1.3; x117.up = 1.7;
x118.lo = -0.4; x118.up = 0.8;
x119.lo = -1.2; x119.up = 0.9;
x120.lo = -1.3; x120.up = 1.7;
x121.lo = -0.4; x121.up = 0.8;
x122.lo = -1.2; x122.up = 0.9;
x123.lo = -1.3; x123.up = 1.7;
x124.lo = -1.3; x124.up = 1.7;
x125.lo = -0.4; x125.up = 0.8;
x126.lo = -1.2; x126.up = 0.9;
x127.lo = -1.3; x127.up = 1.7;
x128.lo = -0.4; x128.up = 0.8;
x129.lo = -1.2; x129.up = 0.9;
x130.lo = -1.3; x130.up = 1.7;
x131.lo = -0.4; x131.up = 0.8;
x132.lo = -1.2; x132.up = 0.9;
x133.lo = -1.3; x133.up = 1.7;
x134.lo = -1.3; x134.up = 1.7;
x135.lo = -0.4; x135.up = 0.8;
x136.lo = -1.2; x136.up = 0.9;
x137.lo = -1.3; x137.up = 1.7;
x138.lo = -0.4; x138.up = 0.8;
x139.lo = -1.2; x139.up = 0.9;
x140.lo = -1.3; x140.up = 1.7;
x141.lo = -0.4; x141.up = 0.8;
x142.lo = -1.2; x142.up = 0.9;
x143.lo = -1.3; x143.up = 1.7;
x144.lo = -1.3; x144.up = 1.7;
x145.lo = -0.4; x145.up = 0.8;
x146.lo = -1.2; x146.up = 0.9;
x147.lo = -1.3; x147.up = 1.7;
x148.lo = -0.4; x148.up = 0.8;
x149.lo = -1.2; x149.up = 0.9;
x150.lo = -1.3; x150.up = 1.7;
x151.lo = -0.4; x151.up = 0.8;
x152.lo = -1.2; x152.up = 0.9;
x153.lo = -1.3; x153.up = 1.7;
x154.lo = -1.3; x154.up = 1.7;
x155.lo = -0.4; x155.up = 0.8;
x156.lo = -1.2; x156.up = 0.9;
x157.lo = -1.3; x157.up = 1.7;
x158.lo = -0.4; x158.up = 0.8;
x159.lo = -1.2; x159.up = 0.9;
x160.lo = -1.3; x160.up = 1.7;
x161.lo = -0.4; x161.up = 0.8;
x162.lo = -1.2; x162.up = 0.9;
x163.lo = -1.3; x163.up = 1.7;
x164.lo = -1.3; x164.up = 1.7;
x165.lo = -0.4; x165.up = 0.8;
x166.lo = -1.2; x166.up = 0.9;
x167.lo = -1.3; x167.up = 1.7;
x168.lo = -0.4; x168.up = 0.8;
x169.lo = -1.2; x169.up = 0.9;
x170.lo = -1.3; x170.up = 1.7;
x171.lo = -0.4; x171.up = 0.8;
x172.lo = -1.2; x172.up = 0.9;
x173.lo = -1.3; x173.up = 1.7;
x174.lo = -1.3; x174.up = 1.7;
x175.lo = -0.4; x175.up = 0.8;
x176.lo = -1.2; x176.up = 0.9;
x177.lo = -1.3; x177.up = 1.7;
x178.lo = -0.4; x178.up = 0.8;
x179.lo = -1.2; x179.up = 0.9;
x180.lo = -1.3; x180.up = 1.7;
x181.lo = -0.4; x181.up = 0.8;
x182.lo = -1.2; x182.up = 0.9;
x183.lo = -1.3; x183.up = 1.7;
x184.lo = -1.3; x184.up = 1.7;
x185.lo = -0.4; x185.up = 0.8;
x186.lo = -1.2; x186.up = 0.9;
x187.lo = -1.3; x187.up = 1.7;
x188.lo = -0.4; x188.up = 0.8;
x189.lo = -1.2; x189.up = 0.9;
x190.lo = -1.3; x190.up = 1.7;
x191.lo = -0.4; x191.up = 0.8;
x192.lo = -1.2; x192.up = 0.9;
x193.lo = -1.3; x193.up = 1.7;
x194.lo = -1.3; x194.up = 1.7;
x195.lo = -0.4; x195.up = 0.8;
x196.lo = -1.2; x196.up = 0.9;
x197.lo = -1.3; x197.up = 1.7;
x198.lo = -0.4; x198.up = 0.8;
x199.lo = -1.2; x199.up = 0.9;
x200.lo = -1.3; x200.up = 1.7;
x201.lo = -0.4; x201.up = 0.8;
x202.lo = -1.2; x202.up = 0.9;
x203.lo = -1.3; x203.up = 1.7;
x204.lo = -1.3; x204.up = 1.7;
x205.lo = -0.4; x205.up = 0.8;
x206.lo = -1.2; x206.up = 0.9;
x207.lo = -1.3; x207.up = 1.7;
x208.lo = -0.4; x208.up = 0.8;
x209.lo = -1.2; x209.up = 0.9;
x210.lo = -1.3; x210.up = 1.7;
x211.lo = -0.4; x211.up = 0.8;
x212.lo = -1.2; x212.up = 0.9;
x213.lo = -1.3; x213.up = 1.7;
x214.lo = -1.3; x214.up = 1.7;
x215.lo = -0.4; x215.up = 0.8;
x216.lo = -1.2; x216.up = 0.9;
x217.lo = -1.3; x217.up = 1.7;
x218.lo = -0.4; x218.up = 0.8;
x219.lo = -1.2; x219.up = 0.9;
x220.lo = -1.3; x220.up = 1.7;
x221.lo = -0.4; x221.up = 0.8;
x222.lo = -1.2; x222.up = 0.9;
x223.lo = -1.3; x223.up = 1.7;
x224.lo = -1.3; x224.up = 1.7;
x225.lo = -0.4; x225.up = 0.8;
x226.lo = -1.2; x226.up = 0.9;
x227.lo = -1.3; x227.up = 1.7;
x228.lo = -0.4; x228.up = 0.8;
x229.lo = -1.2; x229.up = 0.9;
x230.lo = -1.3; x230.up = 1.7;
x231.lo = -0.4; x231.up = 0.8;
x232.lo = -1.2; x232.up = 0.9;
x233.lo = -1.3; x233.up = 1.7;
x234.lo = -1.3; x234.up = 1.7;
x235.lo = -0.4; x235.up = 0.8;
x236.lo = -1.2; x236.up = 0.9;
x237.lo = -1.3; x237.up = 1.7;
x238.lo = -0.4; x238.up = 0.8;
x239.lo = -1.2; x239.up = 0.9;
x240.lo = -1.3; x240.up = 1.7;
x241.lo = -0.4; x241.up = 0.8;
x242.lo = -1.2; x242.up = 0.9;
x243.lo = -1.3; x243.up = 1.7;
x244.lo = -1.3; x244.up = 1.7;
x245.lo = -0.4; x245.up = 0.8;
x246.lo = -1.2; x246.up = 0.9;
x247.lo = -1.3; x247.up = 1.7;
x248.lo = -0.4; x248.up = 0.8;
x249.lo = -1.2; x249.up = 0.9;
x250.lo = -1.3; x250.up = 1.7;
x251.lo = -0.4; x251.up = 0.8;
x252.lo = -1.2; x252.up = 0.9;
x253.lo = -1.3; x253.up = 1.7;
x254.lo = -1.3; x254.up = 1.7;
x255.lo = -0.4; x255.up = 0.8;
x256.lo = -1.2; x256.up = 0.9;
x257.lo = -1.3; x257.up = 1.7;
x258.lo = -0.4; x258.up = 0.8;
x259.lo = -1.2; x259.up = 0.9;
x260.lo = -1.3; x260.up = 1.7;
x261.lo = -0.4; x261.up = 0.8;
x262.lo = -1.2; x262.up = 0.9;
x263.lo = -1.3; x263.up = 1.7;
x264.lo = -1.3; x264.up = 1.7;
x265.lo = -0.4; x265.up = 0.8;
x266.lo = -1.2; x266.up = 0.9;
x267.lo = -1.3; x267.up = 1.7;
x268.lo = -0.4; x268.up = 0.8;
x269.lo = -1.2; x269.up = 0.9;
x270.lo = -1.3; x270.up = 1.7;
x271.lo = -0.4; x271.up = 0.8;
x272.lo = -1.2; x272.up = 0.9;
x273.lo = -1.3; x273.up = 1.7;
x274.lo = -1.3; x274.up = 1.7;
x275.lo = -0.4; x275.up = 0.8;
x276.lo = -1.2; x276.up = 0.9;
x277.lo = -1.3; x277.up = 1.7;
x278.lo = -0.4; x278.up = 0.8;
x279.lo = -1.2; x279.up = 0.9;
x280.lo = -1.3; x280.up = 1.7;
x281.lo = -0.4; x281.up = 0.8;
x282.lo = -1.2; x282.up = 0.9;
x283.lo = -1.3; x283.up = 1.7;
x284.lo = -1.3; x284.up = 1.7;
x285.lo = -0.4; x285.up = 0.8;
x286.lo = -1.2; x286.up = 0.9;
x287.lo = -1.3; x287.up = 1.7;
x288.lo = -0.4; x288.up = 0.8;
x289.lo = -1.2; x289.up = 0.9;
x290.lo = -1.3; x290.up = 1.7;
x291.lo = -0.4; x291.up = 0.8;
x292.lo = -1.2; x292.up = 0.9;
x293.lo = -1.3; x293.up = 1.7;
x294.lo = -1.3; x294.up = 1.7;
x295.lo = -0.4; x295.up = 0.8;
x296.lo = -1.2; x296.up = 0.9;
x297.lo = -1.3; x297.up = 1.7;
x298.lo = -0.4; x298.up = 0.8;
x299.lo = -1.2; x299.up = 0.9;
x300.lo = -1.3; x300.up = 1.7;
x301.lo = -0.4; x301.up = 0.8;
x302.lo = -1.2; x302.up = 0.9;
x303.lo = -1.3; x303.up = 1.7;
x304.lo = -1.3; x304.up = 1.7;
x305.lo = -0.4; x305.up = 0.8;
x306.lo = -1.2; x306.up = 0.9;
x307.lo = -1.3; x307.up = 1.7;
x308.lo = -0.4; x308.up = 0.8;
x309.lo = -1.2; x309.up = 0.9;
x310.lo = -1.3; x310.up = 1.7;
x311.lo = -0.4; x311.up = 0.8;
x312.lo = -1.2; x312.up = 0.9;
x313.lo = -1.3; x313.up = 1.7;
x314.lo = -1.3; x314.up = 1.7;
x315.lo = -0.4; x315.up = 0.8;
x316.lo = -1.2; x316.up = 0.9;
x317.lo = -1.3; x317.up = 1.7;
x318.lo = -0.4; x318.up = 0.8;
x319.lo = -1.2; x319.up = 0.9;
x320.lo = -1.3; x320.up = 1.7;
x321.lo = -0.4; x321.up = 0.8;
x322.lo = -1.2; x322.up = 0.9;
x323.lo = -1.3; x323.up = 1.7;
x324.lo = -1.3; x324.up = 1.7;
x325.lo = -0.4; x325.up = 0.8;
x326.lo = -1.2; x326.up = 0.9;
x327.lo = -1.3; x327.up = 1.7;
x328.lo = -0.4; x328.up = 0.8;
x329.lo = -1.2; x329.up = 0.9;
x330.lo = -1.3; x330.up = 1.7;
x331.lo = -0.4; x331.up = 0.8;
x332.lo = -1.2; x332.up = 0.9;
x333.lo = -1.3; x333.up = 1.7;
x334.lo = -1.3; x334.up = 1.7;
x335.lo = -0.4; x335.up = 0.8;
x336.lo = -1.2; x336.up = 0.9;
x337.lo = -1.3; x337.up = 1.7;
x338.lo = -0.4; x338.up = 0.8;
x339.lo = -1.2; x339.up = 0.9;
x340.lo = -1.3; x340.up = 1.7;
x341.lo = -0.4; x341.up = 0.8;
x342.lo = -1.2; x342.up = 0.9;
x343.lo = -1.3; x343.up = 1.7;
x344.lo = -1.3; x344.up = 1.7;
x345.lo = -0.4; x345.up = 0.8;
x346.lo = -1.2; x346.up = 0.9;
x347.lo = -1.3; x347.up = 1.7;
x348.lo = -0.4; x348.up = 0.8;
x349.lo = -1.2; x349.up = 0.9;
x350.lo = -1.3; x350.up = 1.7;
x351.lo = -0.4; x351.up = 0.8;
x352.lo = -1.2; x352.up = 0.9;
x353.lo = -1.3; x353.up = 1.7;
x354.lo = -1.3; x354.up = 1.7;
x355.lo = -0.4; x355.up = 0.8;
x356.lo = -1.2; x356.up = 0.9;
x357.lo = -1.3; x357.up = 1.7;
x358.lo = -0.4; x358.up = 0.8;
x359.lo = -1.2; x359.up = 0.9;
x360.lo = -1.3; x360.up = 1.7;
x361.lo = -0.4; x361.up = 0.8;
x362.lo = -1.2; x362.up = 0.9;
x363.lo = -1.3; x363.up = 1.7;
x364.lo = -1.3; x364.up = 1.7;
x365.lo = -0.4; x365.up = 0.8;
x366.lo = -1.2; x366.up = 0.9;
x367.lo = -1.3; x367.up = 1.7;
x368.lo = -0.4; x368.up = 0.8;
x369.lo = -1.2; x369.up = 0.9;
x370.lo = -1.3; x370.up = 1.7;
x371.lo = -0.4; x371.up = 0.8;
x372.lo = -1.2; x372.up = 0.9;
x373.lo = -1.3; x373.up = 1.7;
x374.lo = -1.3; x374.up = 1.7;
x375.lo = -0.4; x375.up = 0.8;
x376.lo = -1.2; x376.up = 0.9;
x377.lo = -1.3; x377.up = 1.7;
x378.lo = -0.4; x378.up = 0.8;
x379.lo = -1.2; x379.up = 0.9;
x380.lo = -1.3; x380.up = 1.7;
x381.lo = -0.4; x381.up = 0.8;
x382.lo = -1.2; x382.up = 0.9;
x383.lo = -1.3; x383.up = 1.7;
x384.lo = -1.3; x384.up = 1.7;
x385.lo = -0.4; x385.up = 0.8;
x386.lo = -1.2; x386.up = 0.9;
x387.lo = -1.3; x387.up = 1.7;
x388.lo = -0.4; x388.up = 0.8;
x389.lo = -1.2; x389.up = 0.9;
x390.lo = -1.3; x390.up = 1.7;
x391.lo = -0.4; x391.up = 0.8;
x392.lo = -1.2; x392.up = 0.9;
x393.lo = -1.3; x393.up = 1.7;
x394.lo = -1.3; x394.up = 1.7;
x395.lo = -0.4; x395.up = 0.8;
x396.lo = -1.2; x396.up = 0.9;
x397.lo = -1.3; x397.up = 1.7;
x398.lo = -0.4; x398.up = 0.8;
x399.lo = -1.2; x399.up = 0.9;
x400.lo = -1.3; x400.up = 1.7;
x401.lo = -0.4; x401.up = 0.8;
x402.lo = -1.2; x402.up = 0.9;
x403.lo = -1.3; x403.up = 1.7;
x404.lo = -1.3; x404.up = 1.7;
x405.lo = -0.4; x405.up = 0.8;
x406.lo = -1.2; x406.up = 0.9;
x407.lo = -1.3; x407.up = 1.7;
x408.lo = -0.4; x408.up = 0.8;
x409.lo = -1.2; x409.up = 0.9;
x410.lo = -1.3; x410.up = 1.7;
x411.lo = -0.4; x411.up = 0.8;
x412.lo = -1.2; x412.up = 0.9;
x413.lo = -1.3; x413.up = 1.7;
x414.lo = -1.3; x414.up = 1.7;
x415.lo = -0.4; x415.up = 0.8;
x416.lo = -1.2; x416.up = 0.9;
x417.lo = -1.3; x417.up = 1.7;
x418.lo = -0.4; x418.up = 0.8;
x419.lo = -1.2; x419.up = 0.9;
x420.lo = -1.3; x420.up = 1.7;
x421.lo = -0.4; x421.up = 0.8;
x422.lo = -1.2; x422.up = 0.9;
x423.lo = -1.3; x423.up = 1.7;
x424.lo = -1.3; x424.up = 1.7;
x425.lo = -0.4; x425.up = 0.8;
x426.lo = -1.2; x426.up = 0.9;
x427.lo = -1.3; x427.up = 1.7;
x428.lo = -0.4; x428.up = 0.8;
x429.lo = -1.2; x429.up = 0.9;
x430.lo = -1.3; x430.up = 1.7;
x431.lo = -0.4; x431.up = 0.8;
x432.lo = -1.2; x432.up = 0.9;
x433.lo = -1.3; x433.up = 1.7;
x434.lo = -1.3; x434.up = 1.7;
x435.lo = -0.4; x435.up = 0.8;
x436.lo = -1.2; x436.up = 0.9;
x437.lo = -1.3; x437.up = 1.7;
x438.lo = -0.4; x438.up = 0.8;
x439.lo = -1.2; x439.up = 0.9;
x440.lo = -1.3; x440.up = 1.7;
x441.lo = -0.4; x441.up = 0.8;
x442.lo = -1.2; x442.up = 0.9;
x443.lo = -1.3; x443.up = 1.7;
x444.lo = -1.3; x444.up = 1.7;
x445.lo = -0.4; x445.up = 0.8;
x446.lo = -1.2; x446.up = 0.9;
x447.lo = -1.3; x447.up = 1.7;
x448.lo = -0.4; x448.up = 0.8;
x449.lo = -1.2; x449.up = 0.9;
x450.lo = -1.3; x450.up = 1.7;
x451.lo = -0.4; x451.up = 0.8;
x452.lo = -1.2; x452.up = 0.9;
x453.lo = -1.3; x453.up = 1.7;
x454.lo = -1.3; x454.up = 1.7;
x455.lo = -0.4; x455.up = 0.8;
x456.lo = -1.2; x456.up = 0.9;
x457.lo = -1.3; x457.up = 1.7;
x458.lo = -0.4; x458.up = 0.8;
x459.lo = -1.2; x459.up = 0.9;
x460.lo = -1.3; x460.up = 1.7;
x461.lo = -0.4; x461.up = 0.8;
x462.lo = -1.2; x462.up = 0.9;
x463.lo = -1.3; x463.up = 1.7;
x464.lo = -1.3; x464.up = 1.7;
x465.lo = -0.4; x465.up = 0.8;
x466.lo = -1.2; x466.up = 0.9;
x467.lo = -1.3; x467.up = 1.7;
x468.lo = -0.4; x468.up = 0.8;
x469.lo = -1.2; x469.up = 0.9;
x470.lo = -1.3; x470.up = 1.7;
x471.lo = -0.4; x471.up = 0.8;
x472.lo = -1.2; x472.up = 0.9;
x473.lo = -1.3; x473.up = 1.7;
x474.lo = -1.3; x474.up = 1.7;
x475.lo = -0.4; x475.up = 0.8;
x476.lo = -1.2; x476.up = 0.9;
x477.lo = -1.3; x477.up = 1.7;
x478.lo = -0.4; x478.up = 0.8;
x479.lo = -1.2; x479.up = 0.9;
x480.lo = -1.3; x480.up = 1.7;
x481.lo = -0.4; x481.up = 0.8;
x482.lo = -1.2; x482.up = 0.9;
x483.lo = -1.3; x483.up = 1.7;
x484.lo = -1.3; x484.up = 1.7;
x485.lo = -0.4; x485.up = 0.8;
x486.lo = -1.2; x486.up = 0.9;
x487.lo = -1.3; x487.up = 1.7;
x488.lo = -0.4; x488.up = 0.8;
x489.lo = -1.2; x489.up = 0.9;
x490.lo = -1.3; x490.up = 1.7;
x491.lo = -0.4; x491.up = 0.8;
x492.lo = -1.2; x492.up = 0.9;
x493.lo = -1.3; x493.up = 1.7;
x494.lo = -1.3; x494.up = 1.7;
x495.lo = -0.4; x495.up = 0.8;
x496.lo = -1.2; x496.up = 0.9;
x497.lo = -1.3; x497.up = 1.7;
x498.lo = -0.4; x498.up = 0.8;
x499.lo = -1.2; x499.up = 0.9;
x500.lo = -1.3; x500.up = 1.7;
x501.lo = -0.4; x501.up = 0.8;
x502.lo = -1.2; x502.up = 0.9;
x503.lo = -1.3; x503.up = 1.7;
x504.lo = -1.3; x504.up = 1.7;
x505.lo = -0.4; x505.up = 0.8;
x506.lo = -1.2; x506.up = 0.9;
x507.lo = -1.3; x507.up = 1.7;
x508.lo = -0.4; x508.up = 0.8;
x509.lo = -1.2; x509.up = 0.9;
x510.lo = -1.3; x510.up = 1.7;
x511.lo = -0.4; x511.up = 0.8;
x512.lo = -1.2; x512.up = 0.9;
x513.lo = -1.3; x513.up = 1.7;
x514.lo = -1.3; x514.up = 1.7;
x515.lo = -0.4; x515.up = 0.8;
x516.lo = -1.2; x516.up = 0.9;
x517.lo = -1.3; x517.up = 1.7;
x518.lo = -0.4; x518.up = 0.8;
x519.lo = -1.2; x519.up = 0.9;
x520.lo = -1.3; x520.up = 1.7;
x521.lo = -0.4; x521.up = 0.8;
x522.lo = -1.2; x522.up = 0.9;
x523.lo = -1.3; x523.up = 1.7;
x524.lo = -1.3; x524.up = 1.7;
x525.lo = -0.4; x525.up = 0.8;
x526.lo = -1.2; x526.up = 0.9;
x527.lo = -1.3; x527.up = 1.7;
x528.lo = -0.4; x528.up = 0.8;
x529.lo = -1.2; x529.up = 0.9;
x530.lo = -1.3; x530.up = 1.7;
x531.lo = -0.4; x531.up = 0.8;
x532.lo = -1.2; x532.up = 0.9;
x533.lo = -1.3; x533.up = 1.7;
x534.lo = -1.3; x534.up = 1.7;
x535.lo = -0.4; x535.up = 0.8;
x536.lo = -1.2; x536.up = 0.9;
x537.lo = -1.3; x537.up = 1.7;
x538.lo = -0.4; x538.up = 0.8;
x539.lo = -1.2; x539.up = 0.9;
x540.lo = -1.3; x540.up = 1.7;
x541.lo = -0.4; x541.up = 0.8;
x542.lo = -1.2; x542.up = 0.9;
x543.lo = -1.3; x543.up = 1.7;
x544.lo = -1.3; x544.up = 1.7;
x545.lo = -0.4; x545.up = 0.8;
x546.lo = -1.2; x546.up = 0.9;
x547.lo = -1.3; x547.up = 1.7;
x548.lo = -0.4; x548.up = 0.8;
x549.lo = -1.2; x549.up = 0.9;
x550.lo = -1.3; x550.up = 1.7;
x551.lo = -0.4; x551.up = 0.8;
x552.lo = -1.2; x552.up = 0.9;
x553.lo = -1.3; x553.up = 1.7;
x554.lo = -1.3; x554.up = 1.7;
x555.lo = -0.4; x555.up = 0.8;
x556.lo = -1.2; x556.up = 0.9;
x557.lo = -1.3; x557.up = 1.7;
x558.lo = -0.4; x558.up = 0.8;
x559.lo = -1.2; x559.up = 0.9;
x560.lo = -1.3; x560.up = 1.7;
x561.lo = -0.4; x561.up = 0.8;
x562.lo = -1.2; x562.up = 0.9;
x563.lo = -1.3; x563.up = 1.7;
x564.lo = -1.3; x564.up = 1.7;
x565.lo = -0.4; x565.up = 0.8;
x566.lo = -1.2; x566.up = 0.9;
x567.lo = -1.3; x567.up = 1.7;
x568.lo = -0.4; x568.up = 0.8;
x569.lo = -1.2; x569.up = 0.9;
x570.lo = -1.3; x570.up = 1.7;
x571.lo = -0.4; x571.up = 0.8;
x572.lo = -1.2; x572.up = 0.9;
x573.lo = -1.3; x573.up = 1.7;
x574.lo = -1.3; x574.up = 1.7;
x575.lo = -0.4; x575.up = 0.8;
x576.lo = -1.2; x576.up = 0.9;
x577.lo = -1.3; x577.up = 1.7;
x578.lo = -0.4; x578.up = 0.8;
x579.lo = -1.2; x579.up = 0.9;
x580.lo = -1.3; x580.up = 1.7;
x581.lo = -0.4; x581.up = 0.8;
x582.lo = -1.2; x582.up = 0.9;
x583.lo = -1.3; x583.up = 1.7;
x584.lo = -1.3; x584.up = 1.7;
x585.lo = -0.4; x585.up = 0.8;
x586.lo = -1.2; x586.up = 0.9;
x587.lo = -1.3; x587.up = 1.7;
x588.lo = -0.4; x588.up = 0.8;
x589.lo = -1.2; x589.up = 0.9;
x590.lo = -1.3; x590.up = 1.7;
x591.lo = -0.4; x591.up = 0.8;
x592.lo = -1.2; x592.up = 0.9;
x593.lo = -1.3; x593.up = 1.7;
x594.lo = -1.3; x594.up = 1.7;
x595.lo = -0.4; x595.up = 0.8;
x596.lo = -1.2; x596.up = 0.9;
x597.lo = -1.3; x597.up = 1.7;
x598.lo = -0.4; x598.up = 0.8;
x599.lo = -1.2; x599.up = 0.9;
x600.lo = -1.3; x600.up = 1.7;
x601.lo = -0.4; x601.up = 0.8;
x602.lo = -1.2; x602.up = 0.9;
x603.lo = -1.3; x603.up = 1.7;
x604.lo = -1.3; x604.up = 1.7;
x605.lo = -0.4; x605.up = 0.8;
x606.lo = -1.2; x606.up = 0.9;
x607.lo = -1.3; x607.up = 1.7;
x608.lo = -0.4; x608.up = 0.8;
x609.lo = -1.2; x609.up = 0.9;
x610.lo = -1.3; x610.up = 1.7;
x611.lo = -0.4; x611.up = 0.8;
x612.lo = -1.2; x612.up = 0.9;
x613.lo = -1.3; x613.up = 1.7;
x614.lo = -1.3; x614.up = 1.7;
x615.lo = -0.4; x615.up = 0.8;
x616.lo = -1.2; x616.up = 0.9;
x617.lo = -1.3; x617.up = 1.7;
x618.lo = -0.4; x618.up = 0.8;
x619.lo = -1.2; x619.up = 0.9;
x620.lo = -1.3; x620.up = 1.7;
x621.lo = -0.4; x621.up = 0.8;
x622.lo = -1.2; x622.up = 0.9;
x623.lo = -1.3; x623.up = 1.7;
x624.lo = -1.3; x624.up = 1.7;
x625.lo = -0.4; x625.up = 0.8;
x626.lo = -1.2; x626.up = 0.9;
x627.lo = -1.3; x627.up = 1.7;
x628.lo = -0.4; x628.up = 0.8;
x629.lo = -1.2; x629.up = 0.9;
x630.lo = -1.3; x630.up = 1.7;
x631.lo = -0.4; x631.up = 0.8;
x632.lo = -1.2; x632.up = 0.9;
x633.lo = -1.3; x633.up = 1.7;
x634.lo = -1.3; x634.up = 1.7;
x635.lo = -0.4; x635.up = 0.8;
x636.lo = -1.2; x636.up = 0.9;
x637.lo = -1.3; x637.up = 1.7;
x638.lo = -0.4; x638.up = 0.8;
x639.lo = -1.2; x639.up = 0.9;
x640.lo = -1.3; x640.up = 1.7;
x641.lo = -0.4; x641.up = 0.8;
x642.lo = -1.2; x642.up = 0.9;
x643.lo = -1.3; x643.up = 1.7;
x644.lo = -1.3; x644.up = 1.7;
x645.lo = -0.4; x645.up = 0.8;
x646.lo = -1.2; x646.up = 0.9;
x647.lo = -1.3; x647.up = 1.7;
x648.lo = -0.4; x648.up = 0.8;
x649.lo = -1.2; x649.up = 0.9;
x650.lo = -1.3; x650.up = 1.7;
x651.lo = -0.4; x651.up = 0.8;
x652.lo = -1.2; x652.up = 0.9;
x653.lo = -1.3; x653.up = 1.7;
x654.lo = -1.3; x654.up = 1.7;
x655.lo = -0.4; x655.up = 0.8;
x656.lo = -1.2; x656.up = 0.9;
x657.lo = -1.3; x657.up = 1.7;
x658.lo = -0.4; x658.up = 0.8;
x659.lo = -1.2; x659.up = 0.9;
x660.lo = -1.3; x660.up = 1.7;
x661.lo = -0.4; x661.up = 0.8;
x662.lo = -1.2; x662.up = 0.9;
x663.lo = -1.3; x663.up = 1.7;
x664.lo = -1.3; x664.up = 1.7;
x665.lo = -0.4; x665.up = 0.8;
x666.lo = -1.2; x666.up = 0.9;
x667.lo = -1.3; x667.up = 1.7;
x668.lo = -0.4; x668.up = 0.8;
x669.lo = -1.2; x669.up = 0.9;
x670.lo = -1.3; x670.up = 1.7;
x671.lo = -0.4; x671.up = 0.8;
x672.lo = -1.2; x672.up = 0.9;
x673.lo = -1.3; x673.up = 1.7;
x674.lo = -1.3; x674.up = 1.7;
x675.lo = -0.4; x675.up = 0.8;
x676.lo = -1.2; x676.up = 0.9;
x677.lo = -1.3; x677.up = 1.7;
x678.lo = -0.4; x678.up = 0.8;
x679.lo = -1.2; x679.up = 0.9;
x680.lo = -1.3; x680.up = 1.7;
x681.lo = -0.4; x681.up = 0.8;
x682.lo = -1.2; x682.up = 0.9;
x683.lo = -1.3; x683.up = 1.7;
x684.lo = -1.3; x684.up = 1.7;
x685.lo = -0.4; x685.up = 0.8;
x686.lo = -1.2; x686.up = 0.9;
x687.lo = -1.3; x687.up = 1.7;
x688.lo = -0.4; x688.up = 0.8;
x689.lo = -1.2; x689.up = 0.9;
x690.lo = -1.3; x690.up = 1.7;
x691.lo = -0.4; x691.up = 0.8;
x692.lo = -1.2; x692.up = 0.9;
x693.lo = -1.3; x693.up = 1.7;
x694.lo = -1.3; x694.up = 1.7;
x695.lo = -0.4; x695.up = 0.8;
x696.lo = -1.2; x696.up = 0.9;
x697.lo = -1.3; x697.up = 1.7;
x698.lo = -0.4; x698.up = 0.8;
x699.lo = -1.2; x699.up = 0.9;
x700.lo = -1.3; x700.up = 1.7;
x701.lo = -0.4; x701.up = 0.8;
x702.lo = -1.2; x702.up = 0.9;
x703.lo = -1.3; x703.up = 1.7;
x704.lo = -1.3; x704.up = 1.7;
x705.lo = -0.4; x705.up = 0.8;
x706.lo = -1.2; x706.up = 0.9;
x707.lo = -1.3; x707.up = 1.7;
x708.lo = -0.4; x708.up = 0.8;
x709.lo = -1.2; x709.up = 0.9;
x710.lo = -1.3; x710.up = 1.7;
x711.lo = -0.4; x711.up = 0.8;
x712.lo = -1.2; x712.up = 0.9;
x713.lo = -1.3; x713.up = 1.7;
x714.lo = -1.3; x714.up = 1.7;
x715.lo = -0.4; x715.up = 0.8;
x716.lo = -1.2; x716.up = 0.9;
x717.lo = -1.3; x717.up = 1.7;
x718.lo = -0.4; x718.up = 0.8;
x719.lo = -1.2; x719.up = 0.9;
x720.lo = -1.3; x720.up = 1.7;
x721.lo = -0.4; x721.up = 0.8;
x722.lo = -1.2; x722.up = 0.9;
x723.lo = -1.3; x723.up = 1.7;
x724.lo = -1.3; x724.up = 1.7;
x725.lo = -0.4; x725.up = 0.8;
x726.lo = -1.2; x726.up = 0.9;
x727.lo = -1.3; x727.up = 1.7;
x728.lo = -0.4; x728.up = 0.8;
x729.lo = -1.2; x729.up = 0.9;
x730.lo = -1.3; x730.up = 1.7;
x731.lo = -0.4; x731.up = 0.8;
x732.lo = -1.2; x732.up = 0.9;
x733.lo = -1.3; x733.up = 1.7;
x734.lo = -1.3; x734.up = 1.7;
x735.lo = -0.4; x735.up = 0.8;
x736.lo = -1.2; x736.up = 0.9;
x737.lo = -1.3; x737.up = 1.7;
x738.lo = -0.4; x738.up = 0.8;
x739.lo = -1.2; x739.up = 0.9;
x740.lo = -1.3; x740.up = 1.7;
x741.lo = -0.4; x741.up = 0.8;
x742.lo = -1.2; x742.up = 0.9;
x743.lo = -1.3; x743.up = 1.7;
x744.lo = -1.3; x744.up = 1.7;
x745.lo = -0.4; x745.up = 0.8;
x746.lo = -1.2; x746.up = 0.9;
x747.lo = -1.3; x747.up = 1.7;
x748.lo = -0.4; x748.up = 0.8;
x749.lo = -1.2; x749.up = 0.9;
x750.lo = -1.3; x750.up = 1.7;
x751.lo = -0.4; x751.up = 0.8;
x752.lo = -1.2; x752.up = 0.9;
x753.lo = -1.3; x753.up = 1.7;
x754.lo = -1.3; x754.up = 1.7;
x755.lo = -0.4; x755.up = 0.8;
x756.lo = -1.2; x756.up = 0.9;
x757.lo = -1.3; x757.up = 1.7;
x758.lo = -0.4; x758.up = 0.8;
x759.lo = -1.2; x759.up = 0.9;
x760.lo = -1.3; x760.up = 1.7;
x761.lo = -0.4; x761.up = 0.8;
x762.lo = -1.2; x762.up = 0.9;
x763.lo = -1.3; x763.up = 1.7;
x764.lo = -1.3; x764.up = 1.7;
x765.lo = -0.4; x765.up = 0.8;
x766.lo = -1.2; x766.up = 0.9;
x767.lo = -1.3; x767.up = 1.7;
x768.lo = -0.4; x768.up = 0.8;
x769.lo = -1.2; x769.up = 0.9;
x770.lo = -1.3; x770.up = 1.7;
x771.lo = -0.4; x771.up = 0.8;
x772.lo = -1.2; x772.up = 0.9;
x773.lo = -1.3; x773.up = 1.7;
x774.lo = -1.3; x774.up = 1.7;
x775.lo = -0.4; x775.up = 0.8;
x776.lo = -1.2; x776.up = 0.9;
x777.lo = -1.3; x777.up = 1.7;
x778.lo = -0.4; x778.up = 0.8;
x779.lo = -1.2; x779.up = 0.9;
x780.lo = -1.3; x780.up = 1.7;
x781.lo = -0.4; x781.up = 0.8;
x782.lo = -1.2; x782.up = 0.9;
x783.lo = -1.3; x783.up = 1.7;
x784.lo = -1.3; x784.up = 1.7;
x785.lo = -0.4; x785.up = 0.8;
x786.lo = -1.2; x786.up = 0.9;
x787.lo = -1.3; x787.up = 1.7;
x788.lo = -0.4; x788.up = 0.8;
x789.lo = -1.2; x789.up = 0.9;
x790.lo = -1.3; x790.up = 1.7;
x791.lo = -0.4; x791.up = 0.8;
x792.lo = -1.2; x792.up = 0.9;
x793.lo = -1.3; x793.up = 1.7;
x794.lo = -1.3; x794.up = 1.7;
x795.lo = -0.4; x795.up = 0.8;
x796.lo = -1.2; x796.up = 0.9;
x797.lo = -1.3; x797.up = 1.7;
x798.lo = -0.4; x798.up = 0.8;
x799.lo = -1.2; x799.up = 0.9;
x800.lo = -1.3; x800.up = 1.7;
x801.lo = -0.4; x801.up = 0.8;
x802.lo = -1.2; x802.up = 0.9;
x803.lo = -1.3; x803.up = 1.7;
x804.lo = -1.3; x804.up = 1.7;
x805.lo = -0.4; x805.up = 0.8;
x806.lo = -1.2; x806.up = 0.9;
x807.lo = -1.3; x807.up = 1.7;
x808.lo = -0.4; x808.up = 0.8;
x809.lo = -1.2; x809.up = 0.9;
x810.lo = -1.3; x810.up = 1.7;
x811.lo = -0.4; x811.up = 0.8;
x812.lo = -1.2; x812.up = 0.9;
x813.lo = -1.3; x813.up = 1.7;
x814.lo = -1.3; x814.up = 1.7;
x815.lo = -0.4; x815.up = 0.8;
x816.lo = -1.2; x816.up = 0.9;
x817.lo = -1.3; x817.up = 1.7;
x818.lo = -0.4; x818.up = 0.8;
x819.lo = -1.2; x819.up = 0.9;
x820.lo = -1.3; x820.up = 1.7;
x821.lo = -0.4; x821.up = 0.8;
x822.lo = -1.2; x822.up = 0.9;
x823.lo = -1.3; x823.up = 1.7;
x824.lo = -1.3; x824.up = 1.7;
x825.lo = -0.4; x825.up = 0.8;
x826.lo = -1.2; x826.up = 0.9;
x827.lo = -1.3; x827.up = 1.7;
x828.lo = -0.4; x828.up = 0.8;
x829.lo = -1.2; x829.up = 0.9;
x830.lo = -1.3; x830.up = 1.7;
x831.lo = -0.4; x831.up = 0.8;
x832.lo = -1.2; x832.up = 0.9;
x833.lo = -1.3; x833.up = 1.7;
x834.lo = -1.3; x834.up = 1.7;
x835.lo = -0.4; x835.up = 0.8;
x836.lo = -1.2; x836.up = 0.9;
x837.lo = -1.3; x837.up = 1.7;
x838.lo = -0.4; x838.up = 0.8;
x839.lo = -1.2; x839.up = 0.9;
x840.lo = -1.3; x840.up = 1.7;
x841.lo = -0.4; x841.up = 0.8;
x842.lo = -1.2; x842.up = 0.9;
x843.lo = -1.3; x843.up = 1.7;
x844.lo = -1.3; x844.up = 1.7;
x845.lo = -0.4; x845.up = 0.8;
x846.lo = -1.2; x846.up = 0.9;
x847.lo = -1.3; x847.up = 1.7;
x848.lo = -0.4; x848.up = 0.8;
x849.lo = -1.2; x849.up = 0.9;
x850.lo = -1.3; x850.up = 1.7;
x851.lo = -0.4; x851.up = 0.8;
x852.lo = -1.2; x852.up = 0.9;
x853.lo = -1.3; x853.up = 1.7;
x854.lo = -1.3; x854.up = 1.7;
x855.lo = -0.4; x855.up = 0.8;
x856.lo = -1.2; x856.up = 0.9;
x857.lo = -1.3; x857.up = 1.7;
x858.lo = -0.4; x858.up = 0.8;
x859.lo = -1.2; x859.up = 0.9;
x860.lo = -1.3; x860.up = 1.7;
x861.lo = -0.4; x861.up = 0.8;
x862.lo = -1.2; x862.up = 0.9;
x863.lo = -1.3; x863.up = 1.7;
x864.lo = -1.3; x864.up = 1.7;
x865.lo = -0.4; x865.up = 0.8;
x866.lo = -1.2; x866.up = 0.9;
x867.lo = -1.3; x867.up = 1.7;
x868.lo = -0.4; x868.up = 0.8;
x869.lo = -1.2; x869.up = 0.9;
x870.lo = -1.3; x870.up = 1.7;
x871.lo = -0.4; x871.up = 0.8;
x872.lo = -1.2; x872.up = 0.9;
x873.lo = -1.3; x873.up = 1.7;
x874.lo = -1.3; x874.up = 1.7;
x875.lo = -0.4; x875.up = 0.8;
x876.lo = -1.2; x876.up = 0.9;
x877.lo = -1.3; x877.up = 1.7;
x878.lo = -0.4; x878.up = 0.8;
x879.lo = -1.2; x879.up = 0.9;
x880.lo = -1.3; x880.up = 1.7;
x881.lo = -0.4; x881.up = 0.8;
x882.lo = -1.2; x882.up = 0.9;
x883.lo = -1.3; x883.up = 1.7;
x884.lo = -1.3; x884.up = 1.7;
x885.lo = -0.4; x885.up = 0.8;
x886.lo = -1.2; x886.up = 0.9;
x887.lo = -1.3; x887.up = 1.7;
x888.lo = -0.4; x888.up = 0.8;
x889.lo = -1.2; x889.up = 0.9;
x890.lo = -1.3; x890.up = 1.7;
x891.lo = -0.4; x891.up = 0.8;
x892.lo = -1.2; x892.up = 0.9;
x893.lo = -1.3; x893.up = 1.7;
x894.lo = -1.3; x894.up = 1.7;
x895.lo = -0.4; x895.up = 0.8;
x896.lo = -1.2; x896.up = 0.9;
x897.lo = -1.3; x897.up = 1.7;
x898.lo = -0.4; x898.up = 0.8;
x899.lo = -1.2; x899.up = 0.9;
x900.lo = -1.3; x900.up = 1.7;
x901.lo = -0.4; x901.up = 0.8;
x902.lo = -1.2; x902.up = 0.9;
x903.lo = -1.3; x903.up = 1.7;
x904.lo = -1.3; x904.up = 1.7;
x905.lo = -0.4; x905.up = 0.8;
x906.lo = -1.2; x906.up = 0.9;
x907.lo = -1.3; x907.up = 1.7;
x908.lo = -0.4; x908.up = 0.8;
x909.lo = -1.2; x909.up = 0.9;
x910.lo = -1.3; x910.up = 1.7;
x911.lo = -0.4; x911.up = 0.8;
x912.lo = -1.2; x912.up = 0.9;
x913.lo = -1.3; x913.up = 1.7;
x914.lo = -1.3; x914.up = 1.7;
x915.lo = -0.4; x915.up = 0.8;
x916.lo = -1.2; x916.up = 0.9;
x917.lo = -1.3; x917.up = 1.7;
x918.lo = -0.4; x918.up = 0.8;
x919.lo = -1.2; x919.up = 0.9;
x920.lo = -1.3; x920.up = 1.7;
x921.lo = -0.4; x921.up = 0.8;
x922.lo = -1.2; x922.up = 0.9;
x923.lo = -1.3; x923.up = 1.7;
x924.lo = -1.3; x924.up = 1.7;
x925.lo = -0.4; x925.up = 0.8;
x926.lo = -1.2; x926.up = 0.9;
x927.lo = -1.3; x927.up = 1.7;
x928.lo = -0.4; x928.up = 0.8;
x929.lo = -1.2; x929.up = 0.9;
x930.lo = -1.3; x930.up = 1.7;
x931.lo = -0.4; x931.up = 0.8;
x932.lo = -1.2; x932.up = 0.9;
x933.lo = -1.3; x933.up = 1.7;
x934.lo = -1.3; x934.up = 1.7;
x935.lo = -0.4; x935.up = 0.8;
x936.lo = -1.2; x936.up = 0.9;
x937.lo = -1.3; x937.up = 1.7;
x938.lo = -0.4; x938.up = 0.8;
x939.lo = -1.2; x939.up = 0.9;
x940.lo = -1.3; x940.up = 1.7;
x941.lo = -0.4; x941.up = 0.8;
x942.lo = -1.2; x942.up = 0.9;
x943.lo = -1.3; x943.up = 1.7;
x944.lo = -1.3; x944.up = 1.7;
x945.lo = -0.4; x945.up = 0.8;
x946.lo = -1.2; x946.up = 0.9;
x947.lo = -1.3; x947.up = 1.7;
x948.lo = -0.4; x948.up = 0.8;
x949.lo = -1.2; x949.up = 0.9;
x950.lo = -1.3; x950.up = 1.7;
x951.lo = -0.4; x951.up = 0.8;
x952.lo = -1.2; x952.up = 0.9;
x953.lo = -1.3; x953.up = 1.7;
x954.lo = -1.3; x954.up = 1.7;
x955.lo = -0.4; x955.up = 0.8;
x956.lo = -1.2; x956.up = 0.9;
x957.lo = -1.3; x957.up = 1.7;
x958.lo = -0.4; x958.up = 0.8;
x959.lo = -1.2; x959.up = 0.9;
x960.lo = -1.3; x960.up = 1.7;
x961.lo = -0.4; x961.up = 0.8;
x962.lo = -1.2; x962.up = 0.9;
x963.lo = -1.3; x963.up = 1.7;
x964.lo = -1.3; x964.up = 1.7;
x965.lo = -0.4; x965.up = 0.8;
x966.lo = -1.2; x966.up = 0.9;
x967.lo = -1.3; x967.up = 1.7;
x968.lo = -0.4; x968.up = 0.8;
x969.lo = -1.2; x969.up = 0.9;
x970.lo = -1.3; x970.up = 1.7;
x971.lo = -0.4; x971.up = 0.8;
x972.lo = -1.2; x972.up = 0.9;
x973.lo = -1.3; x973.up = 1.7;
x974.lo = -1.3; x974.up = 1.7;
x975.lo = -0.4; x975.up = 0.8;
x976.lo = -1.2; x976.up = 0.9;
x977.lo = -1.3; x977.up = 1.7;
x978.lo = -0.4; x978.up = 0.8;
x979.lo = -1.2; x979.up = 0.9;
x980.lo = -1.3; x980.up = 1.7;
x981.lo = -0.4; x981.up = 0.8;
x982.lo = -1.2; x982.up = 0.9;
x983.lo = -1.3; x983.up = 1.7;
x984.lo = -1.3; x984.up = 1.7;
x985.lo = -0.4; x985.up = 0.8;
x986.lo = -1.2; x986.up = 0.9;
x987.lo = -1.3; x987.up = 1.7;
x988.lo = -0.4; x988.up = 0.8;
x989.lo = -1.2; x989.up = 0.9;
x990.lo = -1.3; x990.up = 1.7;
x991.lo = -0.4; x991.up = 0.8;
x992.lo = -1.2; x992.up = 0.9;
x993.lo = -1.3; x993.up = 1.7;
x994.lo = -1.3; x994.up = 1.7;
x995.lo = -0.4; x995.up = 0.8;
x996.lo = -1.2; x996.up = 0.9;
x997.lo = -1.3; x997.up = 1.7;
x998.lo = -0.4; x998.up = 0.8;
x999.lo = -1.2; x999.up = 0.9;
x1000.lo = -1.3; x1000.up = 1.7;
x1001.lo = -0.4; x1001.up = 0.8;
x1002.lo = -1.2; x1002.up = 0.9;
x1003.lo = -1.3; x1003.up = 1.7;

* set non-default levels
x4.l = -0.61;
x5.l = 0.63;
x6.l = 0.78;
x7.l = 0.51;
x8.l = 0.63;
x9.l = 0.78;
x10.l = 0.51;
x11.l = -0.33;
x12.l = 0.78;
x13.l = -0.81;
x14.l = 0.51;
x15.l = 0.8;
x16.l = 0.78;
x17.l = 0.91;
x18.l = 0.63;
x19.l = 0.9;
x20.l = 0.51;
x21.l = 0.63;
x22.l = 0.9;
x23.l = 0.51;
x24.l = -0.91;
x25.l = 0.63;
x26.l = 0.78;
x27.l = 0.91;
x28.l = 0.63;
x29.l = -0.78;
x30.l = 0.51;
x31.l = 0.63;
x32.l = 0.9;
x33.l = 0.51;
x34.l = -0.51;
x35.l = 0.63;
x36.l = -0.98;
x37.l = 0.51;
x38.l = 0.63;
x39.l = 0.78;
x40.l = -0.91;
x41.l = 0.63;
x42.l = 0.78;
x43.l = -0.51;
x44.l = 0.51;
x45.l = 0.8;
x46.l = 0.78;
x47.l = 0.51;
x48.l = 0.63;
x49.l = -0.78;
x50.l = 0.91;
x51.l = 0.63;
x52.l = -0.78;
x53.l = -0.61;
x54.l = -0.61;
x55.l = 0.63;
x56.l = 0.78;
x57.l = 0.51;
x58.l = 0.63;
x59.l = 0.78;
x60.l = 0.51;
x61.l = -0.33;
x62.l = 0.78;
x63.l = -0.81;
x64.l = 0.51;
x65.l = 0.8;
x66.l = 0.78;
x67.l = 0.91;
x68.l = 0.63;
x69.l = 0.9;
x70.l = 0.51;
x71.l = 0.63;
x72.l = 0.9;
x73.l = 0.51;
x74.l = -0.91;
x75.l = 0.63;
x76.l = 0.78;
x77.l = 0.91;
x78.l = 0.63;
x79.l = -0.78;
x80.l = 0.51;
x81.l = 0.63;
x82.l = 0.9;
x83.l = 0.51;
x84.l = -0.51;
x85.l = 0.63;
x86.l = -0.98;
x87.l = 0.51;
x88.l = 0.63;
x89.l = 0.78;
x90.l = -0.91;
x91.l = 0.63;
x92.l = 0.78;
x93.l = -0.51;
x94.l = 0.51;
x95.l = 0.8;
x96.l = 0.78;
x97.l = 0.51;
x98.l = 0.63;
x99.l = -0.78;
x100.l = 0.91;
x101.l = 0.63;
x102.l = -0.78;
x103.l = -0.61;
x104.l = -0.61;
x105.l = 0.63;
x106.l = 0.78;
x107.l = 0.51;
x108.l = 0.63;
x109.l = 0.78;
x110.l = 0.51;
x111.l = -0.33;
x112.l = 0.78;
x113.l = -0.81;
x114.l = 0.51;
x115.l = 0.8;
x116.l = 0.78;
x117.l = 0.91;
x118.l = 0.63;
x119.l = 0.9;
x120.l = 0.51;
x121.l = 0.63;
x122.l = 0.9;
x123.l = 0.51;
x124.l = -0.91;
x125.l = 0.63;
x126.l = 0.78;
x127.l = 0.91;
x128.l = 0.63;
x129.l = -0.78;
x130.l = 0.51;
x131.l = 0.63;
x132.l = 0.9;
x133.l = 0.51;
x134.l = -0.51;
x135.l = 0.63;
x136.l = -0.98;
x137.l = 0.51;
x138.l = 0.63;
x139.l = 0.78;
x140.l = -0.91;
x141.l = 0.63;
x142.l = 0.78;
x143.l = -0.51;
x144.l = 0.51;
x145.l = 0.8;
x146.l = 0.78;
x147.l = 0.51;
x148.l = 0.63;
x149.l = -0.78;
x150.l = 0.91;
x151.l = 0.63;
x152.l = -0.78;
x153.l = -0.61;
x154.l = -0.61;
x155.l = 0.63;
x156.l = 0.78;
x157.l = 0.51;
x158.l = 0.63;
x159.l = 0.78;
x160.l = 0.51;
x161.l = -0.33;
x162.l = 0.78;
x163.l = -0.81;
x164.l = 0.51;
x165.l = 0.8;
x166.l = 0.78;
x167.l = 0.91;
x168.l = 0.63;
x169.l = 0.9;
x170.l = 0.51;
x171.l = 0.63;
x172.l = 0.9;
x173.l = 0.51;
x174.l = -0.91;
x175.l = 0.63;
x176.l = 0.78;
x177.l = 0.91;
x178.l = 0.63;
x179.l = -0.78;
x180.l = 0.51;
x181.l = 0.63;
x182.l = 0.9;
x183.l = 0.51;
x184.l = -0.51;
x185.l = 0.63;
x186.l = -0.98;
x187.l = 0.51;
x188.l = 0.63;
x189.l = 0.78;
x190.l = -0.91;
x191.l = 0.63;
x192.l = 0.78;
x193.l = -0.51;
x194.l = 0.51;
x195.l = 0.8;
x196.l = 0.78;
x197.l = 0.51;
x198.l = 0.63;
x199.l = -0.78;
x200.l = 0.91;
x201.l = 0.63;
x202.l = -0.78;
x203.l = -0.61;
x204.l = -0.61;
x205.l = 0.63;
x206.l = 0.78;
x207.l = 0.51;
x208.l = 0.63;
x209.l = 0.78;
x210.l = 0.51;
x211.l = -0.33;
x212.l = 0.78;
x213.l = -0.81;
x214.l = 0.51;
x215.l = 0.8;
x216.l = 0.78;
x217.l = 0.91;
x218.l = 0.63;
x219.l = 0.9;
x220.l = 0.51;
x221.l = 0.63;
x222.l = 0.9;
x223.l = 0.51;
x224.l = -0.91;
x225.l = 0.63;
x226.l = 0.78;
x227.l = 0.91;
x228.l = 0.63;
x229.l = -0.78;
x230.l = 0.51;
x231.l = 0.63;
x232.l = 0.9;
x233.l = 0.51;
x234.l = -0.51;
x235.l = 0.63;
x236.l = -0.98;
x237.l = 0.51;
x238.l = 0.63;
x239.l = 0.78;
x240.l = -0.91;
x241.l = 0.63;
x242.l = 0.78;
x243.l = -0.51;
x244.l = 0.51;
x245.l = 0.8;
x246.l = 0.78;
x247.l = 0.51;
x248.l = 0.63;
x249.l = -0.78;
x250.l = 0.91;
x251.l = 0.63;
x252.l = -0.78;
x253.l = -0.61;
x254.l = -0.61;
x255.l = 0.63;
x256.l = 0.78;
x257.l = 0.51;
x258.l = 0.63;
x259.l = 0.78;
x260.l = 0.51;
x261.l = -0.33;
x262.l = 0.78;
x263.l = -0.81;
x264.l = 0.51;
x265.l = 0.8;
x266.l = 0.78;
x267.l = 0.91;
x268.l = 0.63;
x269.l = 0.9;
x270.l = 0.51;
x271.l = 0.63;
x272.l = 0.9;
x273.l = 0.51;
x274.l = -0.91;
x275.l = 0.63;
x276.l = 0.78;
x277.l = 0.91;
x278.l = 0.63;
x279.l = -0.78;
x280.l = 0.51;
x281.l = 0.63;
x282.l = 0.9;
x283.l = 0.51;
x284.l = -0.51;
x285.l = 0.63;
x286.l = -0.98;
x287.l = 0.51;
x288.l = 0.63;
x289.l = 0.78;
x290.l = -0.91;
x291.l = 0.63;
x292.l = 0.78;
x293.l = -0.51;
x294.l = 0.51;
x295.l = 0.8;
x296.l = 0.78;
x297.l = 0.51;
x298.l = 0.63;
x299.l = -0.78;
x300.l = 0.91;
x301.l = 0.63;
x302.l = -0.78;
x303.l = -0.61;
x304.l = -0.61;
x305.l = 0.63;
x306.l = 0.78;
x307.l = 0.51;
x308.l = 0.63;
x309.l = 0.78;
x310.l = 0.51;
x311.l = -0.33;
x312.l = 0.78;
x313.l = -0.81;
x314.l = 0.51;
x315.l = 0.8;
x316.l = 0.78;
x317.l = 0.91;
x318.l = 0.63;
x319.l = 0.9;
x320.l = 0.51;
x321.l = 0.63;
x322.l = 0.9;
x323.l = 0.51;
x324.l = -0.91;
x325.l = 0.63;
x326.l = 0.78;
x327.l = 0.91;
x328.l = 0.63;
x329.l = -0.78;
x330.l = 0.51;
x331.l = 0.63;
x332.l = 0.9;
x333.l = 0.51;
x334.l = -0.51;
x335.l = 0.63;
x336.l = -0.98;
x337.l = 0.51;
x338.l = 0.63;
x339.l = 0.78;
x340.l = -0.91;
x341.l = 0.63;
x342.l = 0.78;
x343.l = -0.51;
x344.l = 0.51;
x345.l = 0.8;
x346.l = 0.78;
x347.l = 0.51;
x348.l = 0.63;
x349.l = -0.78;
x350.l = 0.91;
x351.l = 0.63;
x352.l = -0.78;
x353.l = -0.61;
x354.l = -0.61;
x355.l = 0.63;
x356.l = 0.78;
x357.l = 0.51;
x358.l = 0.63;
x359.l = 0.78;
x360.l = 0.51;
x361.l = -0.33;
x362.l = 0.78;
x363.l = -0.81;
x364.l = 0.51;
x365.l = 0.8;
x366.l = 0.78;
x367.l = 0.91;
x368.l = 0.63;
x369.l = 0.9;
x370.l = 0.51;
x371.l = 0.63;
x372.l = 0.9;
x373.l = 0.51;
x374.l = -0.91;
x375.l = 0.63;
x376.l = 0.78;
x377.l = 0.91;
x378.l = 0.63;
x379.l = -0.78;
x380.l = 0.51;
x381.l = 0.63;
x382.l = 0.9;
x383.l = 0.51;
x384.l = -0.51;
x385.l = 0.63;
x386.l = -0.98;
x387.l = 0.51;
x388.l = 0.63;
x389.l = 0.78;
x390.l = -0.91;
x391.l = 0.63;
x392.l = 0.78;
x393.l = -0.51;
x394.l = 0.51;
x395.l = 0.8;
x396.l = 0.78;
x397.l = 0.51;
x398.l = 0.63;
x399.l = -0.78;
x400.l = 0.91;
x401.l = 0.63;
x402.l = -0.78;
x403.l = -0.61;
x404.l = -0.61;
x405.l = 0.63;
x406.l = 0.78;
x407.l = 0.51;
x408.l = 0.63;
x409.l = 0.78;
x410.l = 0.51;
x411.l = -0.33;
x412.l = 0.78;
x413.l = -0.81;
x414.l = 0.51;
x415.l = 0.8;
x416.l = 0.78;
x417.l = 0.91;
x418.l = 0.63;
x419.l = 0.9;
x420.l = 0.51;
x421.l = 0.63;
x422.l = 0.9;
x423.l = 0.51;
x424.l = -0.91;
x425.l = 0.63;
x426.l = 0.78;
x427.l = 0.91;
x428.l = 0.63;
x429.l = -0.78;
x430.l = 0.51;
x431.l = 0.63;
x432.l = 0.9;
x433.l = 0.51;
x434.l = -0.51;
x435.l = 0.63;
x436.l = -0.98;
x437.l = 0.51;
x438.l = 0.63;
x439.l = 0.78;
x440.l = -0.91;
x441.l = 0.63;
x442.l = 0.78;
x443.l = -0.51;
x444.l = 0.51;
x445.l = 0.8;
x446.l = 0.78;
x447.l = 0.51;
x448.l = 0.63;
x449.l = -0.78;
x450.l = 0.91;
x451.l = 0.63;
x452.l = -0.78;
x453.l = -0.61;
x454.l = -0.61;
x455.l = 0.63;
x456.l = 0.78;
x457.l = 0.51;
x458.l = 0.63;
x459.l = 0.78;
x460.l = 0.51;
x461.l = -0.33;
x462.l = 0.78;
x463.l = -0.81;
x464.l = 0.51;
x465.l = 0.8;
x466.l = 0.78;
x467.l = 0.91;
x468.l = 0.63;
x469.l = 0.9;
x470.l = 0.51;
x471.l = 0.63;
x472.l = 0.9;
x473.l = 0.51;
x474.l = -0.91;
x475.l = 0.63;
x476.l = 0.78;
x477.l = 0.91;
x478.l = 0.63;
x479.l = -0.78;
x480.l = 0.51;
x481.l = 0.63;
x482.l = 0.9;
x483.l = 0.51;
x484.l = -0.51;
x485.l = 0.63;
x486.l = -0.98;
x487.l = 0.51;
x488.l = 0.63;
x489.l = 0.78;
x490.l = -0.91;
x491.l = 0.63;
x492.l = 0.78;
x493.l = -0.51;
x494.l = 0.51;
x495.l = 0.8;
x496.l = 0.78;
x497.l = 0.51;
x498.l = 0.63;
x499.l = -0.78;
x500.l = 0.91;
x501.l = 0.63;
x502.l = -0.78;
x503.l = -0.61;
x504.l = -0.61;
x505.l = 0.63;
x506.l = 0.78;
x507.l = 0.51;
x508.l = 0.63;
x509.l = 0.78;
x510.l = 0.51;
x511.l = -0.33;
x512.l = 0.78;
x513.l = -0.81;
x514.l = 0.51;
x515.l = 0.8;
x516.l = 0.78;
x517.l = 0.91;
x518.l = 0.63;
x519.l = 0.9;
x520.l = 0.51;
x521.l = 0.63;
x522.l = 0.9;
x523.l = 0.51;
x524.l = -0.91;
x525.l = 0.63;
x526.l = 0.78;
x527.l = 0.91;
x528.l = 0.63;
x529.l = -0.78;
x530.l = 0.51;
x531.l = 0.63;
x532.l = 0.9;
x533.l = 0.51;
x534.l = -0.51;
x535.l = 0.63;
x536.l = -0.98;
x537.l = 0.51;
x538.l = 0.63;
x539.l = 0.78;
x540.l = -0.91;
x541.l = 0.63;
x542.l = 0.78;
x543.l = -0.51;
x544.l = 0.51;
x545.l = 0.8;
x546.l = 0.78;
x547.l = 0.51;
x548.l = 0.63;
x549.l = -0.78;
x550.l = 0.91;
x551.l = 0.63;
x552.l = -0.78;
x553.l = -0.61;
x554.l = -0.61;
x555.l = 0.63;
x556.l = 0.78;
x557.l = 0.51;
x558.l = 0.63;
x559.l = 0.78;
x560.l = 0.51;
x561.l = -0.33;
x562.l = 0.78;
x563.l = -0.81;
x564.l = 0.51;
x565.l = 0.8;
x566.l = 0.78;
x567.l = 0.91;
x568.l = 0.63;
x569.l = 0.9;
x570.l = 0.51;
x571.l = 0.63;
x572.l = 0.9;
x573.l = 0.51;
x574.l = -0.91;
x575.l = 0.63;
x576.l = 0.78;
x577.l = 0.91;
x578.l = 0.63;
x579.l = -0.78;
x580.l = 0.51;
x581.l = 0.63;
x582.l = 0.9;
x583.l = 0.51;
x584.l = -0.51;
x585.l = 0.63;
x586.l = -0.98;
x587.l = 0.51;
x588.l = 0.63;
x589.l = 0.78;
x590.l = -0.91;
x591.l = 0.63;
x592.l = 0.78;
x593.l = -0.51;
x594.l = 0.51;
x595.l = 0.8;
x596.l = 0.78;
x597.l = 0.51;
x598.l = 0.63;
x599.l = -0.78;
x600.l = 0.91;
x601.l = 0.63;
x602.l = -0.78;
x603.l = -0.61;
x604.l = -0.61;
x605.l = 0.63;
x606.l = 0.78;
x607.l = 0.51;
x608.l = 0.63;
x609.l = 0.78;
x610.l = 0.51;
x611.l = -0.33;
x612.l = 0.78;
x613.l = -0.81;
x614.l = 0.51;
x615.l = 0.8;
x616.l = 0.78;
x617.l = 0.91;
x618.l = 0.63;
x619.l = 0.9;
x620.l = 0.51;
x621.l = 0.63;
x622.l = 0.9;
x623.l = 0.51;
x624.l = -0.91;
x625.l = 0.63;
x626.l = 0.78;
x627.l = 0.91;
x628.l = 0.63;
x629.l = -0.78;
x630.l = 0.51;
x631.l = 0.63;
x632.l = 0.9;
x633.l = 0.51;
x634.l = -0.51;
x635.l = 0.63;
x636.l = -0.98;
x637.l = 0.51;
x638.l = 0.63;
x639.l = 0.78;
x640.l = -0.91;
x641.l = 0.63;
x642.l = 0.78;
x643.l = -0.51;
x644.l = 0.51;
x645.l = 0.8;
x646.l = 0.78;
x647.l = 0.51;
x648.l = 0.63;
x649.l = -0.78;
x650.l = 0.91;
x651.l = 0.63;
x652.l = -0.78;
x653.l = -0.61;
x654.l = -0.61;
x655.l = 0.63;
x656.l = 0.78;
x657.l = 0.51;
x658.l = 0.63;
x659.l = 0.78;
x660.l = 0.51;
x661.l = -0.33;
x662.l = 0.78;
x663.l = -0.81;
x664.l = 0.51;
x665.l = 0.8;
x666.l = 0.78;
x667.l = 0.91;
x668.l = 0.63;
x669.l = 0.9;
x670.l = 0.51;
x671.l = 0.63;
x672.l = 0.9;
x673.l = 0.51;
x674.l = -0.91;
x675.l = 0.63;
x676.l = 0.78;
x677.l = 0.91;
x678.l = 0.63;
x679.l = -0.78;
x680.l = 0.51;
x681.l = 0.63;
x682.l = 0.9;
x683.l = 0.51;
x684.l = -0.51;
x685.l = 0.63;
x686.l = -0.98;
x687.l = 0.51;
x688.l = 0.63;
x689.l = 0.78;
x690.l = -0.91;
x691.l = 0.63;
x692.l = 0.78;
x693.l = -0.51;
x694.l = 0.51;
x695.l = 0.8;
x696.l = 0.78;
x697.l = 0.51;
x698.l = 0.63;
x699.l = -0.78;
x700.l = 0.91;
x701.l = 0.63;
x702.l = -0.78;
x703.l = -0.61;
x704.l = -0.61;
x705.l = 0.63;
x706.l = 0.78;
x707.l = 0.51;
x708.l = 0.63;
x709.l = 0.78;
x710.l = 0.51;
x711.l = -0.33;
x712.l = 0.78;
x713.l = -0.81;
x714.l = 0.51;
x715.l = 0.8;
x716.l = 0.78;
x717.l = 0.91;
x718.l = 0.63;
x719.l = 0.9;
x720.l = 0.51;
x721.l = 0.63;
x722.l = 0.9;
x723.l = 0.51;
x724.l = -0.91;
x725.l = 0.63;
x726.l = 0.78;
x727.l = 0.91;
x728.l = 0.63;
x729.l = -0.78;
x730.l = 0.51;
x731.l = 0.63;
x732.l = 0.9;
x733.l = 0.51;
x734.l = -0.51;
x735.l = 0.63;
x736.l = -0.98;
x737.l = 0.51;
x738.l = 0.63;
x739.l = 0.78;
x740.l = -0.91;
x741.l = 0.63;
x742.l = 0.78;
x743.l = -0.51;
x744.l = 0.51;
x745.l = 0.8;
x746.l = 0.78;
x747.l = 0.51;
x748.l = 0.63;
x749.l = -0.78;
x750.l = 0.91;
x751.l = 0.63;
x752.l = -0.78;
x753.l = -0.61;
x754.l = -0.61;
x755.l = 0.63;
x756.l = 0.78;
x757.l = 0.51;
x758.l = 0.63;
x759.l = 0.78;
x760.l = 0.51;
x761.l = -0.33;
x762.l = 0.78;
x763.l = -0.81;
x764.l = 0.51;
x765.l = 0.8;
x766.l = 0.78;
x767.l = 0.91;
x768.l = 0.63;
x769.l = 0.9;
x770.l = 0.51;
x771.l = 0.63;
x772.l = 0.9;
x773.l = 0.51;
x774.l = -0.91;
x775.l = 0.63;
x776.l = 0.78;
x777.l = 0.91;
x778.l = 0.63;
x779.l = -0.78;
x780.l = 0.51;
x781.l = 0.63;
x782.l = 0.9;
x783.l = 0.51;
x784.l = -0.51;
x785.l = 0.63;
x786.l = -0.98;
x787.l = 0.51;
x788.l = 0.63;
x789.l = 0.78;
x790.l = -0.91;
x791.l = 0.63;
x792.l = 0.78;
x793.l = -0.51;
x794.l = 0.51;
x795.l = 0.8;
x796.l = 0.78;
x797.l = 0.51;
x798.l = 0.63;
x799.l = -0.78;
x800.l = 0.91;
x801.l = 0.63;
x802.l = -0.78;
x803.l = -0.61;
x804.l = -0.61;
x805.l = 0.63;
x806.l = 0.78;
x807.l = 0.51;
x808.l = 0.63;
x809.l = 0.78;
x810.l = 0.51;
x811.l = -0.33;
x812.l = 0.78;
x813.l = -0.81;
x814.l = 0.51;
x815.l = 0.8;
x816.l = 0.78;
x817.l = 0.91;
x818.l = 0.63;
x819.l = 0.9;
x820.l = 0.51;
x821.l = 0.63;
x822.l = 0.9;
x823.l = 0.51;
x824.l = -0.91;
x825.l = 0.63;
x826.l = 0.78;
x827.l = 0.91;
x828.l = 0.63;
x829.l = -0.78;
x830.l = 0.51;
x831.l = 0.63;
x832.l = 0.9;
x833.l = 0.51;
x834.l = -0.51;
x835.l = 0.63;
x836.l = -0.98;
x837.l = 0.51;
x838.l = 0.63;
x839.l = 0.78;
x840.l = -0.91;
x841.l = 0.63;
x842.l = 0.78;
x843.l = -0.51;
x844.l = 0.51;
x845.l = 0.8;
x846.l = 0.78;
x847.l = 0.51;
x848.l = 0.63;
x849.l = -0.78;
x850.l = 0.91;
x851.l = 0.63;
x852.l = -0.78;
x853.l = -0.61;
x854.l = -0.61;
x855.l = 0.63;
x856.l = 0.78;
x857.l = 0.51;
x858.l = 0.63;
x859.l = 0.78;
x860.l = 0.51;
x861.l = -0.33;
x862.l = 0.78;
x863.l = -0.81;
x864.l = 0.51;
x865.l = 0.8;
x866.l = 0.78;
x867.l = 0.91;
x868.l = 0.63;
x869.l = 0.9;
x870.l = 0.51;
x871.l = 0.63;
x872.l = 0.9;
x873.l = 0.51;
x874.l = -0.91;
x875.l = 0.63;
x876.l = 0.78;
x877.l = 0.91;
x878.l = 0.63;
x879.l = -0.78;
x880.l = 0.51;
x881.l = 0.63;
x882.l = 0.9;
x883.l = 0.51;
x884.l = -0.51;
x885.l = 0.63;
x886.l = -0.98;
x887.l = 0.51;
x888.l = 0.63;
x889.l = 0.78;
x890.l = -0.91;
x891.l = 0.63;
x892.l = 0.78;
x893.l = -0.51;
x894.l = 0.51;
x895.l = 0.8;
x896.l = 0.78;
x897.l = 0.51;
x898.l = 0.63;
x899.l = -0.78;
x900.l = 0.91;
x901.l = 0.63;
x902.l = -0.78;
x903.l = -0.61;
x904.l = -0.61;
x905.l = 0.63;
x906.l = 0.78;
x907.l = 0.51;
x908.l = 0.63;
x909.l = 0.78;
x910.l = 0.51;
x911.l = -0.33;
x912.l = 0.78;
x913.l = -0.81;
x914.l = 0.51;
x915.l = 0.8;
x916.l = 0.78;
x917.l = 0.91;
x918.l = 0.63;
x919.l = 0.9;
x920.l = 0.51;
x921.l = 0.63;
x922.l = 0.9;
x923.l = 0.51;
x924.l = -0.91;
x925.l = 0.63;
x926.l = 0.78;
x927.l = 0.91;
x928.l = 0.63;
x929.l = -0.78;
x930.l = 0.51;
x931.l = 0.63;
x932.l = 0.9;
x933.l = 0.51;
x934.l = -0.51;
x935.l = 0.63;
x936.l = -0.98;
x937.l = 0.51;
x938.l = 0.63;
x939.l = 0.78;
x940.l = -0.91;
x941.l = 0.63;
x942.l = 0.78;
x943.l = -0.51;
x944.l = 0.51;
x945.l = 0.8;
x946.l = 0.78;
x947.l = 0.51;
x948.l = 0.63;
x949.l = -0.78;
x950.l = 0.91;
x951.l = 0.63;
x952.l = -0.78;
x953.l = -0.61;
x954.l = -0.61;
x955.l = 0.63;
x956.l = 0.78;
x957.l = 0.51;
x958.l = 0.63;
x959.l = 0.78;
x960.l = 0.51;
x961.l = -0.33;
x962.l = 0.78;
x963.l = -0.81;
x964.l = 0.51;
x965.l = 0.8;
x966.l = 0.78;
x967.l = 0.91;
x968.l = 0.63;
x969.l = 0.9;
x970.l = 0.51;
x971.l = 0.63;
x972.l = 0.9;
x973.l = 0.51;
x974.l = -0.91;
x975.l = 0.63;
x976.l = 0.78;
x977.l = 0.91;
x978.l = 0.63;
x979.l = -0.78;
x980.l = 0.51;
x981.l = 0.63;
x982.l = 0.9;
x983.l = 0.51;
x984.l = -0.51;
x985.l = 0.63;
x986.l = -0.98;
x987.l = 0.51;
x988.l = 0.63;
x989.l = 0.78;
x990.l = -0.91;
x991.l = 0.63;
x992.l = 0.78;
x993.l = -0.51;
x994.l = 0.51;
x995.l = 0.8;
x996.l = 0.78;
x997.l = 0.51;
x998.l = 0.63;
x999.l = -0.78;
x1000.l = 0.91;
x1001.l = 0.63;
x1002.l = -0.78;
x1003.l = -0.61;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;
