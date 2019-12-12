option MCP=convert;
option MCP=convert;
option MCP=convert;
$title The 1983 GEMTAB Model as MCP (GEMMCP,SEQ=137)
$Ontext

       set definitions and input data for 1983 version of gemtap.


Rutherford, T F, GEMTAP: A General Equilibrium Model for Tax Policy.

$Offtext

sets
        s   sectors (producer goods)

        /   agri,   mines,  crude,  const,  food,   textl,  paper,
            refin,  chem,   lumbr,  metls,  equip,  vehcl,  trnsp,
            trade,  fnanc,  realt,  srvcs,  govt/

        g   consumer goods

        /   food,   alchl,  tobac,  util,   housg,  frnsh,  appl,
            clth,   trnsp,  vehcl,  servc,  bnkng,  readg,  n_dur,
            petrl,  hlth,   educ,   savng /;

alias (s,ss);

sets

       hh   all households /h1*h14, hh2*hh14/,
      h(hh) aggregated households /hh2*hh14/,
     dh(hh) disaggregated households /h1*h14/;

*       the following assignment omits h1 which appears to be
*       a residual account in this data set:

set hmap(dh,h) mapping from disaggregated households
    /   h2.hh2, h3.hh3, h4.hh4, h5.hh5, h6.hh6, h7.hh7, h8.hh8,
        h9.hh9, h10.hh10, h11.hh11, h12.hh12, h13.hh13, h14.hh14 /;

scalar gdk  government capital purchases.  (p. 118)    /  1.65084e+05/;

scalar gsk  government capital ownership.  (table 6.3) /  1.13409e+05/;

scalar gdl  government labor demand.  (p. 107)         /  2.72392e+05/;

scalar gtl  labor tax payments by government.(p. 107)  /  4.41080e+04/;

parameter count(hh)  population count /

        h1       0.347
        h2       1.183
        h3       3.753
        h4       8.457
        h5      13.328
        h6      13.988
        h7      12.876
        h8      11.523
        h9      18.538
        h10     13.362
        h11     16.565
        h12      4.501
        h13      2.725
        h14      0.573 /;

parameter dk(s)   capital payments by sector.  (table 4.7)

/agri  1.50670e+04, mines 9.14909e+02, crude 2.99886e+03, const 4.99169e+03,
 food  6.71724e+03, textl 2.97874e+03, paper 4.31363e+03, refin 1.39132e+04,
 chem  4.78283e+03, lumbr 2.57358e+03, metls 2.78550e+03, equip 1.43345e+03,
 vehcl 2.49335e+02, trnsp 3.31062e+04, trade 2.77352e+04, fnanc 2.91767e+03,
 realt 1.57818e+05, srvcs 2.90328e+04, govt  1.23209e+04/

parameter sk(hh) capital ownership by household.  (table 6.2)

/h1   -1.15989e+04, h2    1.32289e+02, h3    1.40763e+03, h4    5.82356e+03,
 h5    1.51394e+04, h6    2.17343e+04, h7    2.44363e+04, h8    2.57096e+04,
 h9    4.68859e+04, h10   4.02364e+04, h11   6.74481e+04, h12   3.33326e+04,
 h13   4.47871e+04, h14   6.28510e+04/

parameter dl(s)  labor demand by sector.  (table 4.1)

/agri  1.92060e+04, mines 1.18360e+04, crude 1.92690e+04, const 1.12095e+05,
 food  3.57680e+04, textl 2.79840e+04, paper 4.39730e+04, refin 6.36500e+03,
 chem  4.58740e+04, lumbr 2.59050e+04, metls 1.82051e+05, equip 3.12680e+04,
 vehcl 2.51430e+04, trnsp 1.46020e+05, trade 3.13381e+05, fnanc 1.02262e+05,
 realt 1.68840e+04, srvcs 3.73269e+05, govt  3.07730e+04/

parameter sl(hh)  labor supply by household.  (table 6.1)

/h1   -4.07035e+02, h2    9.72331e+02, h3    4.94308e+03, h4    2.55985e+04,
 h5    8.32951e+04, h6    1.27887e+05, h7    1.53337e+05, h8    1.72699e+05,
 h9    3.26104e+05, h10   2.86196e+05, h11   3.83643e+05, h12   1.19378e+05,
 h13   1.02400e+05, h14   5.56721e+04/

parameter zta(hh)  labor endowment : supply ratios by household.
/h1    1.26791e+00, h2    1.27168e+00, h3    1.33304e+00, h4    1.40639e+00,
 h5    1.48221e+00, h6    1.53994e+00, h7    1.58088e+00, h8    1.61328e+00,
 h9    1.64773e+00, h10   1.68873e+00, h11   1.71083e+00, h12   1.69191e+00,
 h13   1.63084e+00, h14   1.34709e+00 /;

*       for increased comparability with 1973 dataset, we use a value
*       of 1.75 for all households:

        zta(hh) = 1.75;

scalar els  elasticity of labor supply /0.15/;

parameter pit(hh) income tax payments by household.  (table 6.5)

/h1    4.70693e+03, h2   -4.78527e+01, h3   -4.83605e+02, h4   -1.38173e+03,
 h5   -8.30128e+02, h6    2.07466e+03, h7    5.51451e+03, h8    9.36992e+03,
 h9    2.08846e+04, h10   2.25915e+04, h11   3.28106e+04, h12   1.08714e+04,
 h13   1.28299e+04, h14   1.30979e+04/

parameter tau(hh) marginal tax rates by household.  (table 5.8)

/h1    7.30000e-02, h2    1.00000e-03, h3    2.00000e-02, h4    6.10000e-02,
 h5    1.11000e-01, h6    1.39000e-01, h7    1.65000e-01, h8    1.95000e-01,
 h9    2.19000e-01, h10   2.56000e-01, h11   2.93000e-01, h12   3.43000e-01,
 h13   3.96000e-01, h14   4.01000e-01/

parameter trn(hh) transfer levels by household (from government).  (table 6.5)

/h1    4.62898e+02, h2    7.16898e+02, h3    9.99424e+03, h4    2.82718e+04,
 h5    4.06371e+04, h6    4.04673e+04, h7    3.55249e+04, h8    2.80239e+04,
 h9    4.10061e+04, h10   2.63098e+04, h11   3.01152e+04, h12   7.94427e+03,
 h13   4.27825e+03, h14   8.37153e+02/

parameter tc(g) consumption tax payments by good.  (table 5.4)

/food  1.02623e+02, alchl 3.43401e+01, tobac 4.92577e+01, util  5.27143e+01,
 frnsh 6.82659e+01, appl  5.61957e+01, clth  7.82538e+02, trnsp 1.29003e+00,
 vehcl 1.30150e+02, servc 8.53633e+00, readg 1.38249e+02, n_dur 9.66488e+01,
 petrl 7.99788e+01, hlth  4.19992e+01 /;

*-----------------------------------------------------------------------------
$ontext

the following three vectors which appear in the 83 dataset are converted
to percentage rate form in table taxrate:

parameter txo(s)
/
 agri  5.42000e+02, mines 2.00500e+03, crude 1.61310e+04, const 2.34900e+03,
 food  1.12890e+04, textl 1.69000e+02, paper 7.52000e+02, refin 9.20100e+03,
 chem  1.45500e+03, lumbr 4.76000e+02, metls 2.48100e+03, equip 5.41000e+02,
 vehcl 7.61000e+02, trnsp 2.03530e+04, trade 8.50440e+04, fnanc 8.57600e+03,
 realt 1.76200e+04, srvcs 8.45000e+03 /

parameter tk(s)
/
 agri  1.01810e+04, mines 1.34009e+03, crude 5.18414e+03, const 4.60731e+03,
 food  7.47776e+03, textl 3.00226e+03, paper 5.31437e+03, refin 9.16883e+03,
 chem  7.16117e+03, lumbr 3.09542e+03, metls 1.15835e+04, equip 1.10355e+03,
 vehcl 1.35867e+03, trnsp 3.50988e+04, trade 2.69098e+04, fnanc 2.22403e+04,
 realt 1.09969e+05, srvcs 1.90732e+04, govt  3.35605e+03 /

parameter tl(s)
/
 agri  2.67400e+03, mines 1.26600e+03, crude 2.18700e+03, const 1.45680e+04,
 food  5.23400e+03, textl 4.68000e+03, paper 5.97300e+03, refin 7.68000e+02,
 chem  6.86600e+03, lumbr 1.18640e+04, metls 2.51540e+04, equip 3.27600e+03,
 vehcl 3.93400e+03, trnsp 1.86950e+04, trade 4.33670e+04, fnanc 1.29190e+04,
 realt 2.52100e+03, srvcs 4.43190e+04, govt  1.34930e+04/;

parameter taxrate(s,*)  taxes (%) (tables 4.13 4.7 and 4.1 respectively);

code:

taxrate(s,"txo") = 100 * txo(s) / y(s);
taxrate(s,"tl") =  100 * tl(s) / dl(s);
taxrate(s,"tk") =  100 * tk(s) / dk(s);

display taxrate;

table tkval(s,*)  sectoral capital tax rates in 73 and 83

             tk73       tk83
agri      54.0162      67.572
mines     95.0472     146.472
crude    101.5675     172.870
const    210.4031      92.300
food     346.9550     111.322
textl    253.4060     100.790
paper    162.5490     123.199
refin     46.3458      65.900
chem     186.6596     149.727
lumbr     91.2334     120.277
metls    171.6036     415.850
equip   2356.8627      76.986
vehcl    128.7486     544.917
trnsp    170.1676     106.019
trade    185.0761      97.024
fnanc    199.2051     762.262
realt     62.9748      69.681
srvcs     86.0299      65.695
govt      26.3711      27.239;

$offtext
*-----------------------------------------------------------------------------

table taxrate(s,*)  taxes (%) (tables 4.13 4.7 and 4.1 respectively)

              txo          tl          tk

agri        0.311      13.923      67.572
mines       4.529      10.696     146.472
crude      19.296      11.350     172.870
const       0.775      12.996      92.300
food        4.016      14.633     111.322
textl       0.133      16.724     100.790
paper       0.454      13.583     123.199
refin       4.698      12.066      65.900
chem        0.618      14.967     149.727
lumbr       0.427      45.798     120.277
metls       0.337      13.817     415.850
equip       0.700      10.477      76.986
vehcl       0.682      15.647     544.917
trnsp       3.760      12.803     106.019
trade      12.991      13.838      97.024
fnanc       3.585      12.633     762.262
realt       3.650      14.931      69.681
srvcs       1.080      11.873      65.695
govt                   43.847      27.239


parameter gse(s) government commodity endowments. (table 6.3);

        gse(s) = 0;

parameter gd(s) government commodity demands.  (table 6.4)

/agri  5.74182e+02, mines 1.55043e+02, crude 3.63664e+02, const 4.50692e+04,
 food  2.67746e+03, textl 8.95648e+02, paper 4.45026e+03, refin 5.48673e+03,
 chem  4.57070e+03, lumbr 1.12229e+03, metls 1.78503e+05, equip 1.93211e+04,
 vehcl 2.35552e+03, trnsp 1.46367e+04, trade 4.89975e+03, fnanc 3.05061e+03,
 realt 3.17531e+03, srvcs 3.04402e+04, govt  6.39613e+02/


parameter vm(s)  import levels by sectoral commodity.  (table 5.1)

/agri  3.84500e+03, mines 3.49000e+03, crude 6.61250e+04, food  1.39690e+04,
 textl 1.60500e+04, paper 6.58100e+03, refin 2.23780e+04, chem  1.53900e+04,
 lumbr 8.32600e+03, metls 1.01264e+05, equip 5.50100e+03, vehcl 2.90780e+04,
 trnsp 5.29900e+03, trade 7.80800e+03, fnanc 7.43000e+02, srvcs 1.74900e+03/

parameter vx(s) export levels by sectoral commodity.  (table 5.1)

/agri  2.14831e+04, mines 5.09111e+03, crude 1.45680e+03, const 3.71680e+01,
 food  1.27640e+04, textl 4.89076e+03, paper 4.99139e+03, refin 5.75651e+03,
 chem  2.02557e+04, lumbr 5.10924e+03, metls 1.46532e+05, equip 1.51174e+04,
 vehcl 1.07298e+04, trnsp 1.52072e+04, trade 2.29182e+04, fnanc 8.49425e+02,
 realt 5.32137e+03, srvcs 9.01913e+03, govt  6.61772e+01/

parameter el(hh) elasticity between leisure and consumption. (table 6.8)

/h1    5.69000e-01, h2    6.74000e-01, h3    7.77000e-01, h4    8.38000e-01,
 h5    8.86000e-01, h6    9.48000e-01, h7    9.83000e-01, h8    9.90000e-01,
 h9    1.02700e+00, h10   1.00500e+00, h11   9.69000e-01, h12   7.38000e-01,
 h13   7.38000e-01, h14   7.38000e-01/

parameter ec(hh) elasticity in current consumption.  (table 6.9)

/h1    1.26791e+00, h2    1.27168e+00, h3    1.33304e+00, h4    1.40639e+00,
 h5    1.48221e+00, h6    1.53994e+00, h7    1.58088e+00, h8    1.61328e+00,
 h9    1.64773e+00, h10   1.68873e+00, h11   1.71083e+00, h12   1.69191e+00,
 h13   1.63084e+00, h14   1.34709e+00/

parameter ekl(s) labor-capital elasticity. (table 6.11)

/agri  1.92123e+00, mines 1.00000e+00, crude 1.00000e+00, const 1.00000e+00,
 food  1.68095e+00, textl 1.12108e+00, paper 1.11995e+00, refin 1.38332e+00,
 chem  1.04308e+00, lumbr 1.10632e+00, metls 1.55352e+00, equip 1.29132e+00,
 vehcl 1.09135e+00, trnsp 1.00000e+00, trade 1.00000e+00, fnanc 1.00000e+00,
 realt 1.00000e+00, srvcs 1.00000e+00, govt  1.00000e+00/

parameter ekl73(s) labor-capital elasticity. table 6.11

/agri  6.75900e-01, mines 1.00000e+00, crude 1.00000e+00, const 1.00000e+00,
 food  7.11700e-01, textl 9.02500e-01, paper 9.03300e-01, refin 7.83000e-01,
 chem  9.60300e-01, lumbr 9.12300e-01, metls 7.37300e-01, equip 8.15900e-01,
 vehcl 9.22800e-01, trnsp 1.00000e+00, trade 1.00000e+00, fnanc 1.00000e+00,
 realt 1.00000e+00, srvcs 1.00000e+00, govt  1.00000e+00/;

parameter ekl83(s) labor-capital elasticity. (table 6.11)

/agri  1.92123e+00, mines 1.00000e+00, crude 1.00000e+00, const 1.00000e+00,
 food  1.68095e+00, textl 1.12108e+00, paper 1.11995e+00, refin 1.38332e+00,
 chem  1.04308e+00, lumbr 1.10632e+00, metls 1.55352e+00, equip 1.29132e+00,
 vehcl 1.09135e+00, trnsp 1.00000e+00, trade 1.00000e+00, fnanc 1.00000e+00,
 realt 1.00000e+00, srvcs 1.00000e+00, govt  1.00000e+00/

parameter       em(s)   elasticity of import supply
                ex(s)   elasticity of export demand;

em(s) = 0.465;
ex(s) = 10;

parameter y(s) gross output level by sector. (table 4.13)

/agri  1.74055e+05, mines 4.42744e+04, crude 8.35975e+04, const 3.03029e+05,
 food  2.81073e+05, textl 1.26674e+05, paper 1.65760e+05, refin 1.95844e+05,
 chem  2.35265e+05, lumbr 1.11494e+05, metls 7.35374e+05, equip 7.72401e+04,
 vehcl 1.11519e+05, trnsp 5.41315e+05, trade 6.54613e+05, fnanc 2.39210e+05,
 realt 4.82737e+05, srvcs 7.82546e+05, govt  9.61957e+04 /;


table z(s,g) consumption composition matrix. (table 4.10)

            food        alchl       tobac       util        housg       frnsh
agri   3.49303e-02 3.49250e-02
mines  8.89490e-06
food   4.44127e-01 4.44162e-01 4.96879e-01
textl                                                              1.51941e-01
paper                                                              1.13370e-03
refin                                                              2.57659e-05
chem   2.13478e-04 1.95293e-04
lumbr                                                              2.60854e-01
metls                                                              9.58233e-02
equip                                                              7.98743e-04
trnsp  1.80389e-02 1.80321e-02 4.29918e-03 9.67120e-01             1.03579e-02
trade  2.34928e-01 2.34938e-01 4.98822e-01                         4.79065e-01
fnanc  8.89490e-06
realt                                                  9.63414e-01
srvcs  2.67745e-01 2.67747e-01             4.22719e-03 3.65864e-02
govt                                       2.86527e-02

+           appl        clth        trnsp       vehcl       servc       bnkng
textl  1.96668e-04 4.22525e-01             2.43355e-04
paper              9.72015e-03
chem   2.17739e-02 9.63838e-03             4.00725e-02
lumbr  3.21973e-02                         4.23618e-04 2.15520e-03
metls  5.17911e-01 5.98949e-02             1.54125e-02 2.28764e-04
equip                                      2.40200e-02
vehcl                                      4.15732e-01
trnsp  8.28815e-03 3.03563e-03 9.43310e-01 1.55927e-02 4.17193e-02
trade  4.18734e-01 4.71361e-01             2.05121e-01 1.32442e-03
fnanc                                                  1.65312e-02 1.00000e+00
realt                                                  6.51376e-03
srvcs  8.99053e-04 2.38251e-02             2.83382e-01 8.99115e-01
govt                           5.66898e-02             3.24123e-02

+           readg       n_dur       petrl       hlth        educ        savng
agri   4.41326e-02 6.14907e-04                                    -3.63988e-02
mines              6.47270e-04 3.66763e-03                         2.50821e-03
crude                                                              9.10418e-04
const                                                              4.91561e-01
food                                                              -7.32829e-04
textl  8.28619e-03 2.39490e-03                                     2.14316e-03
paper  1.66921e-01 1.60038e-01             5.69271e-03            -4.07667e-04
refin                          6.58331e-01 1.93630e-05            -1.18903e-03
chem   4.02524e-03 3.92213e-01 1.70587e-03 5.59009e-02             1.37297e-03
lumbr              3.46290e-03 1.80823e-03                         1.71430e-02
metls  1.33159e-01 7.86757e-02 8.52937e-05 1.55000e-02             2.84313e-01
equip  9.83283e-02                                                 3.99168e-02
vehcl                                                              7.10858e-02
trnsp  1.06977e-01 2.17483e-02 2.67993e-02 1.04560e-03             1.71905e-02
trade  2.68150e-01 3.40205e-01 3.07603e-01 7.96495e-02             1.19901e-01
fnanc  5.43951e-05
realt                                                              2.95876e-02
srvcs  1.55407e-01                         8.42192e-01 1.00000e+00 -3.8905e-02
govt   1.45598e-02


table ras(s,s)  adjusted input-output table.  (tables 4.8 and 4.9)

            agri        mines       crude       const       food        textl
agri   4.77039e+04 1.29167e+01 4.94328e+00 4.14308e+02 8.07202e+04 2.16489e+03
mines  3.19103e+02 6.05761e+03 1.28523e+01 1.74414e+03 1.58516e+02 6.93484e+01
crude  2.75040e+02 1.05530e+02 5.46406e+03 1.82005e+02 1.00093e+02 5.49454e+01
const  2.68590e+03 4.87043e+02 1.08872e+04 2.86600e+02 1.46124e+03 5.88429e+02
food   1.70603e+04 1.21148e+01 1.67424e+01 3.48826e+01 5.83569e+04 6.66520e+02
textl  3.42696e+02 1.02025e+02 2.83085e+01 1.67936e+03 1.22183e+02 4.95362e+04
paper  7.80488e+02 3.25057e+02 2.55315e+02 3.81202e+03 1.11966e+04 1.81391e+03
refin  9.88521e+03 2.35625e+03 1.24116e+03 6.24300e+03 1.93248e+03 1.25882e+03
chem   9.77087e+03 1.45763e+03 9.50792e+02 6.56288e+03 5.42140e+03 1.26869e+04
lumbr  4.56307e+02 4.98159e+02 5.60705e+01 3.76413e+04 4.69320e+03 3.62200e+02
metls  2.03185e+03 4.63286e+03 3.27433e+03 3.80960e+04 7.48649e+03 1.61303e+03
equip  5.35927e+02 1.06592e+02 5.83976e+01 5.32920e+02 2.83783e+01 4.00452e+01
vehcl  1.70121e+02 2.10930e+02 3.52576e+01 3.80755e+02 3.22277e+01 1.79056e+01
trnsp  6.02777e+03 3.34213e+03 2.53607e+03 9.87724e+03 1.02177e+04 3.74510e+03
trade  1.34513e+04 3.00750e+03 1.51076e+03 3.21204e+04 2.11882e+04 7.67672e+03
fnanc  2.55270e+03 6.17634e+02 7.68909e+02 2.51563e+03 1.28108e+03 6.32573e+02
realt  7.40672e+03 8.34401e+02 7.56553e+03 4.67231e+02 5.58298e+02 4.84227e+02
srvcs  3.93065e+03 2.15643e+03 2.06860e+03 2.08522e+04 7.80496e+03 3.21905e+03
govt   7.84913e+02 5.72576e+02 1.07121e+03 8.76811e+02 1.79685e+03 1.22383e+03

+           paper       refin       chem        lumbr       metls       equip
agri   4.95558e+01 2.57982e+00 6.13878e+02 4.10659e+03 6.67960e+01 3.48058e+00
mines  4.80497e+02 2.99266e+02 3.97423e+03 2.06994e+03 1.49215e+04 1.39879e+01
crude  1.58425e+02 1.05766e+05 3.90772e+03 1.16685e+02 6.21400e+02 2.88911e+01
const  1.26204e+03 1.38001e+03 2.06264e+03 1.15375e+03 8.36066e+03 3.29064e+02
food   5.14232e+02 8.75865e+01 2.47313e+03 9.32015e+01 3.70207e+02 1.01664e+01
textl  1.63620e+03 3.74388e+01 3.27421e+03 1.87451e+03 2.84958e+03 4.06322e+02
paper  4.63469e+04 1.05641e+03 7.79450e+03 2.06093e+03 1.33010e+04 4.51683e+02
refin  4.06976e+03 2.00380e+04 1.46170e+04 2.50776e+03 1.02380e+04 5.87484e+02
chem   7.17832e+03 4.89943e+03 6.65589e+04 3.88466e+03 3.24850e+04 8.95859e+02
lumbr  4.95827e+03 3.82156e+02 2.35622e+03 2.37056e+04 1.14772e+04 1.31904e+03
metls  3.45937e+03 9.70241e+02 8.31886e+03 4.95921e+03 2.42505e+05 1.21644e+04
equip  1.68734e+02 9.82306e+00 7.99628e+01 9.83550e+01 3.14783e+03 1.27697e+04
vehcl  6.40378e+01 1.51190e+02 8.71123e+01 1.75502e+02 2.81914e+03 4.12245e+02
trnsp  1.03269e+04 1.16825e+04 1.82501e+04 8.00805e+03 4.25135e+04 2.19451e+03
trade  1.16057e+04 5.01511e+03 1.57178e+04 7.18179e+03 7.46440e+04 3.26569e+03
fnanc  1.02228e+03 8.44861e+02 1.48315e+03 8.28850e+02 6.18708e+03 6.20171e+02
realt  1.11894e+03 2.62709e+02 1.58982e+03 4.76650e+02 5.53245e+03 3.65087e+02
srvcs  6.83419e+03 2.35907e+03 1.23156e+04 3.00436e+03 2.84889e+04 2.54310e+03
govt   4.15367e+03 1.17168e+03 3.63197e+03 1.21178e+03 1.07284e+04 1.23522e+03

+           vehcl       trnsp       trade       fnanc       realt       srvcs
agri   1.52082e+00 4.91644e+01 8.73337e+02 4.84854e+00 4.31162e+03 2.60626e+03
mines  4.38196e+01 9.75567e+03 4.67007e+00 5.24419e-01 2.40127e+01 1.13320e+02
crude  2.61194e+01 2.93924e+04 4.70898e+02 7.15163e+01 1.70123e+02 6.09765e+02
const  3.25754e+02 2.40091e+04 3.86461e+03 7.62033e+02 7.12670e+04 1.33394e+04
food   2.69740e+01 1.64303e+02 4.83188e+02 1.47578e+01 9.62752e+00 6.62090e+03
textl  2.61111e+03 4.85133e+02 3.71442e+02 1.64973e+02 2.33814e+01 4.00854e+03
paper  6.22244e+02 3.04369e+03 1.11278e+04 6.03662e+03 3.09007e+03 2.12056e+04
refin  4.10666e+02 4.84692e+04 1.10733e+04 1.18735e+03 1.89838e+03 1.40215e+04
chem   5.36451e+03 3.25176e+03 1.62399e+03 1.35312e+02 1.27542e+03 1.83553e+04
lumbr  2.10358e+03 4.08367e+02 9.40659e+02 2.70518e+01 7.10703e+01 2.67436e+03
metls  2.38947e+04 8.37612e+03 2.37642e+03 7.60264e+02 8.25374e+02 2.00537e+04
equip  4.30563e+02 6.16430e+03 3.06914e+01 6.41174e+01 1.09553e+01 1.25107e+03
vehcl  3.01012e+04 9.05646e+02 4.43927e+02 3.53968e+01 4.16257e+01 8.12870e+03
trnsp  2.25330e+03 9.36376e+04 2.96017e+04 9.49454e+03 9.99490e+03 4.07070e+04
trade  8.26929e+03 1.55832e+04 1.22973e+04 1.42583e+03 3.51304e+03 2.94769e+04
fnanc  3.80231e+02 5.55400e+03 7.08814e+03 4.20652e+04 2.05804e+04 8.10357e+03
realt  1.13128e+02 4.24392e+03 1.37242e+04 3.72805e+03 3.96620e+04 2.46183e+04
srvcs  2.60763e+03 2.19662e+04 4.69394e+04 1.75710e+04 1.53004e+04 7.48002e+04
govt   4.79289e+02 1.17297e+04 1.42000e+04 6.69891e+03 5.80996e+03 1.74284e+04



table rcs(g,hh)  adjusted consumption matrix.  tables 5.2 and 5.3

            h1          h2          h3          h4          h5          h6
food   2.43154e+03 8.31012e+02 5.20838e+03 1.59696e+04 3.11945e+04 3.68235e+04
alchl  5.99531e+02 7.09930e+01 4.47408e+02 1.47625e+03 3.10355e+03 3.85386e+03
tobac  3.00241e+02 3.55527e+01 2.24052e+02 7.39320e+02 1.55420e+03 1.92995e+03
util   8.09773e+02 2.90719e+02 1.91339e+03 6.31809e+03 1.27338e+04 1.49690e+04
housg  6.12199e+03 1.58282e+03 9.48922e+03 2.39017e+04 4.04763e+04 4.36047e+04
frnsh  6.29848e+02 7.45854e+01 4.70031e+02 1.55093e+03 3.26043e+03 4.04867e+03
appl   5.18472e+02 1.02586e+02 5.15702e+02 1.73699e+03 3.94353e+03 4.88070e+03
clth   7.22029e+03 1.94843e+02 1.20325e+03 3.92543e+03 8.34312e+03 1.02651e+04
trnsp  1.10486e+02 4.72766e+01 3.05804e+02 9.45871e+02 1.87616e+03 2.21232e+03
vehcl  1.20089e+03 2.59688e+02 1.40132e+03 5.15694e+03 1.18923e+04 1.47618e+04
servc  7.30451e+02 8.64961e+01 5.45119e+02 1.79866e+03 3.78124e+03 4.69536e+03
bnkng  1.60339e+03 1.89865e+02 1.19656e+03 3.94812e+03 8.30000e+03 1.03067e+04
readg  1.27226e+03 1.50655e+02 9.49461e+02 3.13278e+03 6.58597e+03 8.17810e+03
n_dur  8.91740e+02 6.01011e+01 3.35115e+02 1.09765e+03 2.25039e+03 2.69641e+03
petrl  5.46878e+02 1.12026e+02 7.24765e+02 2.64345e+03 5.97935e+03 7.57259e+03
hlth   3.59269e+03 3.64276e+02 2.89157e+03 9.48352e+03 1.84661e+04 2.22962e+04
educ   4.10709e+02 4.86350e+01 3.06502e+02 1.01128e+03 2.12606e+03 2.64005e+03
savng -4.6884e+04  -2.8102e+03 -1.2384e+04 -2.7382e+04 -3.3634e+04 -1.7098e+04

+           h7          h8          h9          h10         h11         h12
food   3.72263e+04 3.64173e+04 6.22303e+04 4.77327e+04 5.55705e+04 1.43476e+04
alchl  4.09038e+03 4.27672e+03 7.88731e+03 6.63555e+03 8.87697e+03 3.07807e+03
tobac  2.04850e+03 2.14176e+03 3.94985e+03 3.32301e+03 4.44547e+03 1.54143e+03
util   1.49085e+04 1.44047e+04 2.47844e+04 1.92801e+04 2.31262e+04 6.46643e+03
housg  4.07999e+04 3.67105e+04 5.06882e+04 3.22039e+04 3.40273e+04 9.89624e+03
frnsh  4.29734e+03 4.49303e+03 8.28624e+03 6.97116e+03 9.32584e+03 3.23370e+03
appl   5.31140e+03 5.50475e+03 9.62492e+03 7.56886e+03 9.51822e+03 2.77065e+03
clth   1.07248e+04 1.10415e+04 1.98779e+04 1.64221e+04 2.13323e+04 7.18989e+03
trnsp  2.24502e+03 2.23530e+03 3.80079e+03 2.91343e+03 3.50719e+03 9.92770e+02
vehcl  1.65255e+04 1.69002e+04 2.91693e+04 2.27302e+04 2.85742e+04 8.05782e+03
servc  4.98369e+03 5.21064e+03 9.60965e+03 8.08456e+03 1.08154e+04 3.75019e+03
bnkng  1.09396e+04 1.14377e+04 2.10939e+04 1.77463e+04 2.37406e+04 8.23194e+03
readg  8.68036e+03 9.07556e+03 1.67376e+04 1.40813e+04 1.88378e+04 6.53186e+03
n_dur  2.77299e+03 2.88574e+03 5.33512e+03 4.58741e+03 6.38517e+03 2.59914e+03
petrl  8.00777e+03 8.11209e+03 1.44354e+04 1.14639e+04 1.36132e+04 3.64777e+03
hlth   2.30433e+04 2.30927e+04 4.00924e+04 3.17075e+04 3.96004e+04 1.21082e+04
educ   2.80215e+03 2.92981e+03 5.40313e+03 4.54572e+03 6.08121e+03 2.10860e+03
savng -1.49995e+03 1.01676e+04 4.23748e+04 5.79356e+04 1.13118e+05 4.77507e+04

+           h13         h14
food   8.11929e+03 5.24818e+02
alchl  3.30288e+03 1.53387e+03
tobac  1.65404e+03 7.68143e+02
util   4.23549e+03 3.88370e+02
housg  1.15294e+04 2.68036e+04
frnsh  3.46990e+03 1.61143e+03
appl   2.03276e+03 2.66599e+02
clth   7.94568e+03 1.13218e+04
trnsp  6.56467e+02 7.65529e+01
vehcl  6.14244e+03 1.59609e+03
servc  4.02413e+03 1.86881e+03
bnkng  8.83324e+03 4.10219e+03
readg  7.00898e+03 3.25500e+03
n_dur  3.92681e+03 1.30495e+04
petrl  2.33556e+03 3.01442e+02
hlth   9.46404e+03 1.86004e+03
educ   2.26261e+03 1.05077e+03
savng  4.67953e+04 3.21618e+04;


*       convert into units consistent with the 1973 data:

gdk = 1.e-5 * gdk;
gsk = 1.e-5 * gsk;
gdl = 1.e-5 * gdl;
gtl = 1.e-5 * gtl;

dk(s) = 1.e-5 * dk(s);
sk(hh) = 1.e-5 * sk(hh);
dl(s) = 1.e-5 * dl(s);
sl(hh) = 1.e-5 * sl(hh);
pit(hh) = 1.e-5 * pit(hh);
trn(hh) = 1.e-5 * trn(hh);
tc(g) = 1.e-5 * tc(g);
gd(s) = 1.e-5 * gd(s);
vm(s) = 1.e-5 * vm(s);
vx(s) = 1.e-5 * vx(s);
y(s) = 1.e-5 * y(s);

rcs(g,hh) = 1.e-5 * rcs(g,hh);
ras(s,ss) = 1.e-5 * ras(s,ss);

parameter

        taubmk(*)       benchmark marginal tax,
        tauave(*)       average tax,
        cc(h)           current consumption value (market + leisure),
        leisure(h)      leisure demand in benchmark,
        gc              government consumption,
        cp(h)           value of private consumption,
        eg(h)           elasticity of substitution - private vs public
        govsav          exogenous (government) savings
        cg(h)           consumption plus public goods valuation
        vpg(h)          benchmark valuation of public goods;

set             hfix(dh)        households omitted from the aggregation;
alias (hp,h);

*       identify households from the disaggregated data set
*       which are not assigned:

hfix(dh) = yes$(sum(h$hmap(dh,h), 1) eq 0);

parameter       txo(s)          production output taxes (total value),
                tk(s)           capital taxes (total value),
                tl(s)           labor taxes (total value),
                plref(s)        labor reference price,
                pkref(s)        capital reference price
                incadj(hh)      income adjustment transfer;
*
        incadj(hh) = 0;

        txo(s) = 0.01 * taxrate(s,"txo") * y(s);
        tk(s) =  0.01 * taxrate(s,"tk") * dk(s);
        tl(s) =  0.01 * taxrate(s,"tl") * dl(s);
        plref(s) = 1 + 0.01 * taxrate(s,"tl");
        pkref(s) = 1 + 0.01 * taxrate(s,"tk");

parameter  gce(g)       gross consumption expenditure by good. (table 6.6);

set excs / y, inter, netexp, findem, check/;
set hcol /expend, inc_tax, labor, capital, transf, check/;
set prft /y, va, tax, inter, check/;
set gcol /endowment, l_tax, k_tax, prod_tax, con_tax, inc_tax, revenue,
          transf, expend, outlay, deficit/;
set vcol /labor, capital, inter, total/;
set tcol / output, labor, capital, total/;
set govt(s)  government sectors  /govt/;
set ccg(g)  current consumption goods;

ccg(g) = yes;
ccg("savng") = no;


*       check consistency of the disaggregated data.

parameter
        cd(s)           consumer demand,
        fd(s)           final demand,
        va(s)           value-added,
        labmkt          labor market clearance,
        capmkt          capital market clearance,
        pmchk(s,*)      profit and market clearance check,
        budget(hh,*)    budget balance,
        gbdgt(*)        government budget balance,
        zchk            check of consumer goods transformation matrix,
        zsum(g)         transformation check sum;

parameter

        expend(hh)      benchmark consumption expenditure,
        saving(hh)      benchmark savings,
        profit(s,*)     benchmark profit check,
        excess(*,*)     excess demand check,
        bdgtbal(hh,*)   budget balance calculation,

        pctprofit(s,*)          benchmark profit check (percent),
        pctva(*,*)              value-added allocation
        pctexcess(s,*)          excess demand check (percent),
        pctbudget(hh,*)         budget balance calculation (percent),

        pctrcs(g,hh)    consumption as percentage of expenditure,
        pctras(ss,s)    intermediate input as percentage of output value,

        government(*,*)         government budget summary (percent),
        valueadded(s,*)         value-added summary,
        taxpayment(s,*)         tax payment summary;

*       perform some quick data checks:

        zsum(g) = sum(s, z(s,g));
        zchk = sum(g, abs(zsum(g)) - 1);
        abort$(abs(zchk) gt 1.e-5) " z matrix error: ", zsum;

        gce(g) = sum(dh, rcs(g,dh));

        cd(s) = sum(g, z(s,g) * (gce(g) - tc(g)));

        fd(s) = gd(s) + cd(s) + vx(s) - gse(s) - vm(s);

        va(s) = dl(s) + dk(s) + tl(s) + tk(s);

        labmkt = sum(s, dl(s)) + gdl - sum(dh, sl(dh));
        capmkt = sum(s, dk(s)) + gdk - sum(dh, sk(dh)) - gsk;

        pmchk(s,"profit") = y(s) - sum(ss,ras(ss,s)) -
                (dl(s) + dk(s) + tl(s) + tk(s) + txo(s));

        pmchk(s,"profit%") = 100 * pmchk(s,"profit") / y(s);

        pmchk(s,"excess") = fd(s) + sum(ss,ras(s,ss)) - y(s);
        pmchk(s,"excess%") = 100 * (fd(s) + sum(ss,ras(s,ss)) - y(s))/y(s);

*       include some other statistics for a complete report:

set     gexpend / trnsfr, adj, gc, sav/
        grevenu / gse, gsk, pit, tl, tk, txo, tc, hfix/;

        gbdgt("trnsfr") = sum(dh, trn(dh));
        gbdgt("adj") = sum(dh, incadj(dh));
        gbdgt("gc")  = sum(s, gd(s)) + gdk + gdl + gtl;

        gbdgt("gse") = sum(s,gse(s));
        gbdgt("gsk") = gsk;
        gbdgt("pit") = sum(dh, pit(dh));
        gbdgt("tl")  = sum(s, tl(s)) + gtl;
        gbdgt("tk")  = sum(s, tk(s));
        gbdgt("txo") = sum(s, txo(s));
        gbdgt("tc")  = sum(g, tc(g));

        gbdgt("revenue")  = sum(grevenu, gbdgt(grevenu));
        gbdgt("outlay")   = sum(gexpend, gbdgt(gexpend));
        gbdgt("deficit") = gbdgt("outlay") - gbdgt("revenue");


        expend(dh) = sum(ccg, rcs(ccg,dh));
        saving(dh) = rcs("savng",dh);

        bdgtbal(dh,"expend")  = expend(dh);
        bdgtbal(dh,"saving")  = saving(dh);
        bdgtbal(dh,"inc_tax") = pit(dh);
        bdgtbal(dh,"labor")   = sl(dh);
        bdgtbal(dh,"capital") = sk(dh);
        bdgtbal(dh,"transf")  = trn(dh);
        bdgtbal(dh,"check") =
          expend(dh)+saving(dh)-(sl(dh)+sk(dh)+trn(dh)-pit(dh));

        pctbudget(dh,"expend")  = 100;
        pctbudget(dh,"saving") = 100*
                        bdgtbal(dh,"saving") / expend(dh);
        pctbudget(dh,"inc_tax") = 100*
                        bdgtbal(dh,"inc_tax") / expend(dh);
        pctbudget(dh,"labor")   = 100*
                        bdgtbal(dh,"labor")  / expend(dh);
        pctbudget(dh,"capital") = 100*
                        bdgtbal(dh,"capital") / expend(dh);
        pctbudget(dh,"transf")  = 100*
                        bdgtbal(dh,"transf") / expend(dh);
        pctbudget(dh,"check") = 100*
                        bdgtbal(dh,"check") / expend(dh);

        display zchk, labmkt, capmkt, pmchk, gbdgt;
        display pctbudget, bdgtbal;


*       =================================================================
*       make adjustments to balance budgets:

*       first, remove any negative income taxes:

        pit(dh) = max(0, pit(dh));

        incadj(dh) = sum(g, rcs(g,dh)) - (sl(dh)+sk(dh)+trn(dh)-pit(dh));

*       make adjustments to balance profits:

        y(s) = y(s) - pmchk(s,"profit");

*       adjustments to balance sectoral markets:

        gse(s) = gse(s) + fd(s) + sum(ss,ras(s,ss)) - y(s);
*       =================================================================
*       recheck the central variables:

        fd(s) = gd(s) + cd(s) + vx(s) - gse(s) - vm(s);

        pmchk(s,"profit") = y(s) - sum(ss,ras(ss,s)) -
                (dl(s) + dk(s) + tl(s) + tk(s) + txo(s));
        pmchk(s,"profit%") = 100 * pmchk(s,"profit") / y(s);

        budget(dh,"value") =
                sum(g, rcs(g,dh)) - (sl(dh)+sk(dh)+trn(dh)-pit(dh));
        budget(dh,"percent") = 100 * budget(dh,"value")/sum(g, rcs(g,dh));

        pmchk(s,"excess") = fd(s) + sum(ss,ras(s,ss)) - y(s);
        pmchk(s,"excess%") = 100 * (fd(s) + sum(ss,ras(s,ss)) - y(s))/y(s);

*       recalculate the government budget statistics:

        gbdgt("trnsfr") = sum(dh, trn(dh));
        gbdgt("adj") = sum(dh, incadj(dh));
        gbdgt("gc")  = sum(s, gd(s)) + gdk + gdl + gtl;

        gbdgt("gse") = sum(s,gse(s));
        gbdgt("gsk") = gsk;
        gbdgt("pit") = sum(dh, pit(dh));
        gbdgt("tl")  = sum(s, tl(s)) + gtl;
        gbdgt("tk")  = sum(s, tk(s));
        gbdgt("txo") = sum(s, txo(s));
        gbdgt("tc")  = sum(g, tc(g));

        gbdgt("revenue")  = sum(grevenu, gbdgt(grevenu));
        gbdgt("outlay")   = sum(gexpend, gbdgt(gexpend));
        gbdgt("deficit") = gbdgt("outlay") - gbdgt("revenue");

        display pmchk, gbdgt;

        expend(dh) = sum(ccg, rcs(ccg,dh));
        saving(dh) = rcs("savng",dh);

        profit(s,"y") = y(s);
        profit(s,"va") = dl(s) + dk(s);
        profit(s,"tax")  = tl(s) + tk(s) + txo(s);
        profit(s,"inter") = sum(ss,ras(ss,s));
        profit(s,"check") = y(s) - sum(ss,ras(ss,s)) -
                (dl(s) + dk(s) + tl(s) + tk(s) + txo(s));

        pctprofit(s,"y")     = 100;
        pctprofit(s,"va")    = 100*profit(s,"va") / profit(s,"y");
        pctprofit(s,"tax")   = 100*profit(s,"tax")  / profit(s,"y");
        pctprofit(s,"inter") = 100*profit(s,"inter") / profit(s,"y");
        pctprofit(s,"check") = 100*profit(s,"check") / profit(s,"y");

        pctva(s,"k")   = 100 * dk(s) / va(s);
        pctva(s,"l")   = 100 * dl(s) / va(s);
        pctva(s,"tl")  = 100 * tl(s) / va(s);
        pctva(s,"tk")  = 100 * tk(s) / va(s);

        pctva("total","k")   = 100 * sum(s, dk(s)) / sum(s, va(s));
        pctva("total","l")   = 100 * sum(s, dl(s)) / sum(s,va(s));
        pctva("total","tl")  = 100 * sum(s, tl(s)) / sum(s,va(s));
        pctva("total","tk")  = 100 * sum(s, tk(s)) / sum(s,va(s));

        excess(s,"y")     = y(s);
        excess(s,"inter") = sum(ss,ras(s,ss));
        excess(s,"netexp") = vx(s) - vm(s);
        excess("total","netexp") = sum(s, vx(s) - vm(s));
        excess(s,"findem") = gd(s) + cd(s) - gse(s);
        excess(s,"check") = fd(s) + sum(ss,ras(s,ss)) - y(s);

        pctexcess(s,"y")     = 100;
        pctexcess(s,"inter") = 100*excess(s,"inter") /excess(s,"y");
        pctexcess(s,"netexp") = 100*excess(s,"netexp") /excess(s,"y");
        pctexcess(s,"findem") = 100*excess(s,"findem") /excess(s,"y");
        pctexcess(s,"check") = 100*excess(s,"check") /excess(s,"y");

        bdgtbal(dh,"expend")  = expend(dh);
        bdgtbal(dh,"saving")  = saving(dh);
        bdgtbal(dh,"inc_tax") = pit(dh);
        bdgtbal(dh,"labor")   = sl(dh);
        bdgtbal(dh,"capital") = sk(dh);
        bdgtbal(dh,"transf")  = trn(dh);
        bdgtbal(dh,"check") =
          expend(dh)+saving(dh)-(sl(dh)+sk(dh)+trn(dh)-pit(dh));

        pctbudget(dh,"expend")  = 100;
        pctbudget(dh,"saving") = 100*
                        bdgtbal(dh,"saving")/bdgtbal(dh,"expend");
        pctbudget(dh,"inc_tax") = 100*
                        bdgtbal(dh,"inc_tax")/bdgtbal(dh,"expend");
        pctbudget(dh,"labor")   = 100*
                        bdgtbal(dh,"labor")  /bdgtbal(dh,"expend");
        pctbudget(dh,"capital") = 100*
                        bdgtbal(dh,"capital")/bdgtbal(dh,"expend");
        pctbudget(dh,"transf")  = 100*
                        bdgtbal(dh,"transf") /bdgtbal(dh,"expend");
        pctbudget(dh,"check") = 100*
                        bdgtbal(dh,"check") /bdgtbal(dh,"expend");

        government("endowment","level") = gsk + sum(s, gse(s));
        government("l_tax","level") = sum(s, tl(s));
        government("k_tax","level") = sum(s, tk(s));
        government("prod_tax","level") = sum(s, txo(s));
        government("con_tax","level")  = sum(g, tc(g));
        government("inc_tax","level") = sum(dh, pit(dh));
        government("revenue","level")  = gsk + sum(s, gse(s)) +
                                 sum(s, tl(s) + tk(s) + txo(s)) +
                                 sum(g, tc(g)) + sum(dh, pit(dh));
        government("transf","level")  =  sum(dh, trn(dh));
        government("incadj","level")  =  sum(dh, incadj(dh));
        government("expend","level") = sum(s, gd(s)) + gdl + gdk + gtl;
        government("outlay","level") =  sum(dh, trn(dh)) +
                                sum(s, gd(s)) + gdl + gdk + gtl;

        government("deficit","level") = government("outlay","level")-
                                government("revenue","level");

        government("endowment","percent") =
          100 * government("endowment","level") /
                government("revenue","level");

        government("l_tax","percent") =
          100 * government("l_tax","level") /
                government("revenue","level");

        government("k_tax","percent") =
          100 * government("k_tax","level") /
                government("revenue","level");

        government("prod_tax","percent") =
          100 * government("prod_tax","level") /
                government("revenue","level");

        government("con_tax","percent")  =
          100 * government("con_tax","level") /
                government("revenue","level");
        government("inc_tax","percent") =
          100 * government("inc_tax","level") /
                government("revenue","level");
        government("revenue","percent")  =  100;
        government("transf","percent")  =
          100 * government("transf","level") /
                government("revenue","level");
        government("incadj","percent")  =
          100 * government("incadj","level") /
                government("revenue","level");
        government("expend","percent") =
          100 * government("expend","level") /
                government("revenue","level");
        government("outlay","percent") =
          100 * government("outlay","level") /
                government("revenue","level");
        government("deficit","percent") =
          100 * government("deficit","level") /
                government("revenue","level");

        pctrcs(g,dh) = 100 * rcs(g,dh) / expend(dh);
        pctras(ss,s) = 100 * ras(ss,s) / y(s);

        valueadded(s,"labor")   = dl(s);
        valueadded(s,"capital") = dk(s);
        valueadded(s,"inter")  = sum(ss, ras(ss,s));
        valueadded(s,"total")  = dl(s) + dk(s) + sum(ss, ras(ss,s));

        taxpayment(s,"output")  = txo(s);
        taxpayment(s,"labor")   = tl(s);
        taxpayment(s,"capital") = tk(s);
        taxpayment(s,"total") = txo(s) + tl(s) + tk(s);

display profit, excess, bdgtbal;
display pctprofit, pctva, pctexcess, pctbudget;
display government, taxpayment;
option pctrcs:1;
option pctras:1;
*.display valueadded, pctrcs, pctras;

*== display tax rates before aggregation:

tauave(dh) = pit(dh) / (sl(dh) + sk(dh));
display tau, tauave;
tauave(dh) = 0;

*======= check the aggregation.

abort$(smax(dh, sum(h$hmap(dh,h), 1)-1) gt 0) "invalid mapping.";

*======= perform the aggregation ===========

parameter popshr(h)  share of population;

        count(h) = sum(dh$hmap(dh,h), count(dh));
        popshr(h) = count(h) / sum(hp, count(hp));
        sk(h) = sum(dh$hmap(dh,h), sk(dh));
        sl(h) = sum(dh$hmap(dh,h), sl(dh));
        pit(h) = sum(dh$hmap(dh,h), pit(dh));
        incadj(h) = sum(dh$hmap(dh,h), incadj(dh));
        trn(h) = sum(dh$hmap(dh,h), trn(dh));
        tau(h)$pit(h) = sum(dh$hmap(dh,h), pit(dh) * tau(dh)) / pit(h);
        rcs(g,h) = sum(dh$hmap(dh,h), rcs(g,dh));

        zta(h) = sum(dh$hmap(dh,h), sl(dh) * zta(dh)) /
                 sum(dh$hmap(dh,h), sl(dh));

*       fix elasticities:

        el(h)  = sum(dh$hmap(dh,h), el(dh)*sl(dh))/
                 sum(dh$hmap(dh,h), sl(dh));
        ec(h)  = 1.5;

        taubmk(h) = tau(h);
        tauave(h) = pit(h) / (sl(h) + sk(h));
        leisure(h) = sl(h)*(zta(h)-1);
        cc(h) = sum(g$ccg(g), rcs(g,h)) + leisure(h);
        gc = sum(s, gd(s)) + gdk + gdl + gtl;

*       set savings levels to zero for households with negative savings
*       and make according income adjustment:

        saving(h) = sum(g$(not ccg(g)), rcs(g,h));
        expend(h) = sum(ccg, rcs(ccg,h));

        govsav = sum(h$(saving(h) lt 0), saving(h));
        incadj(h)$(saving(h) lt 0) = incadj(h) - saving(h);
        loop(g$(not ccg(g)), rcs(g,h)$(saving(h) lt 0) = 0;);

        saving(h) = sum(g$(not ccg(g)), rcs(g,h));
        display govsav, saving;

     bdgtbal(dh,"expend")  = 0;
     bdgtbal(dh,"saving")  = 0;
     bdgtbal(dh,"inc_tax") = 0;
     bdgtbal(dh,"labor")   = 0;
     bdgtbal(dh,"capital") = 0;
     bdgtbal(dh,"transf")  = 0;
     bdgtbal(dh,"check") = 0;
     pctbudget(dh,"expend")  = 0;
     pctbudget(dh,"saving")  = 0;
     pctbudget(dh,"inc_tax") = 0;
     pctbudget(dh,"labor")   = 0;
     pctbudget(dh,"capital") = 0;
     pctbudget(dh,"transf")  = 0;
     pctbudget(dh,"check") = 0;

bdgtbal(h,"expend")  = expend(h);
bdgtbal(h,"saving")  = saving(h);
bdgtbal(h,"inc_tax") = pit(h);
bdgtbal(h,"labor")   = sl(h);
bdgtbal(h,"capital") = sk(h);
bdgtbal(h,"incadj")  = incadj(h);
bdgtbal(h,"transf")  = trn(h);
bdgtbal(h,"check")   = expend(h)+saving(h) -
                        (sl(h)+sk(h)+trn(h)+incadj(h)-pit(h));

pctbudget(h,"expend")  = 100;
pctbudget(h,"saving") =  100* bdgtbal(h,"saving")/bdgtbal(h,"expend");
pctbudget(h,"inc_tax") = 100* bdgtbal(h,"inc_tax")/bdgtbal(h,"expend");
pctbudget(h,"labor")   = 100* bdgtbal(h,"labor")  /bdgtbal(h,"expend");
pctbudget(h,"capital") = 100* bdgtbal(h,"capital")/bdgtbal(h,"expend");
pctbudget(h,"transf")  = 100* bdgtbal(h,"transf") /bdgtbal(h,"expend");
pctbudget(h,"incadj")  = 100* bdgtbal(h,"incadj") /bdgtbal(h,"expend");
pctbudget(h,"check")   = 100 * bdgtbal(h,"check") /bdgtbal(h,"expend");

display popshr, bdgtbal, pctbudget;

parameter share(h,*);

     share(h,"l/k") = sl(h) / sk(h);
     share(h,"saving") = 100 * saving(h) / sum(hp, saving(hp));
     share(h,"sl") = 100 * sl(h) / sum(hp, sl(hp));
     share(h,"sk") = 100 * sk(h) / sum(hp, sk(hp));
     share(h,"tr") = 100 * trn(h) / sum(hp, trn(hp));
     share(h,"pit") = 100 * pit(h) / sum(hp, pit(hp));
     share(h,"expend") = 100 * expend(h) / sum(hp, expend(hp));
display share;

        government("endowment","level") = gsk + sum(s, gse(s));
        government("l_tax","level") = sum(s, tl(s)) + gtl;
        government("k_tax","level") = sum(s, tk(s));
        government("prod_tax","level") = sum(s, txo(s));
        government("con_tax","level")  = sum(g, tc(g));
        government("inc_tax","level") = sum(h, pit(h));
        government("trd_bal","level")  = sum(s, vm(s) - vx(s));
        government("revenue","level")  = gsk + sum(s, gse(s)) +
                                 sum(s, tl(s) + tk(s) + txo(s)) + gtl +
                                 sum(s, vm(s) - vx(s)) +
                                 sum(g, tc(g)) + sum(h, pit(h));

        government("transf","level")  =  sum(h, trn(h));
        government("incadj","level")  =  sum(h, incadj(h));
        government("hfix","level")  =  sum(hfix, sum(g, rcs(g,hfix))
                                                  - sl(hfix) - sk(hfix));
        government("expend","level") = sum(s, gd(s)) + gdl + gdk + gtl;
        government("outlay","level") =  sum(h, trn(h) + incadj(h)) +
                                government("hfix","level") +
                                sum(s, gd(s)) + gdl + gdk + gtl;

        government("deficit","level") = government("outlay", "level")-
                                        government("revenue","level");

        government("endowment","percent") =
          100 * government("endowment","level") /
                government("revenue","level");

        government("l_tax","percent") =
          100 * government("l_tax","level") /
                government("revenue","level");

        government("k_tax","percent") =
          100 * government("k_tax","level") /
                government("revenue","level");

        government("prod_tax","percent") =
          100 * government("prod_tax","level") /
                government("revenue","level");

        government("con_tax","percent")  =
          100 * government("con_tax","level") /
                government("revenue","level");
        government("inc_tax","percent") =
          100 * government("inc_tax","level") /
                government("revenue","level");
        government("revenue","percent")  =  100;
        government("transf","percent")  =
          100 * government("transf","level") /
                government("revenue","level");
        government("incadj","percent")  =
          100 * government("incadj","level") /
                government("revenue","level");
        government("hfix","percent")  =
          100 * government("hfix","level") /
                government("revenue","level");
        government("expend","percent") =
          100 * government("expend","level") /
                government("revenue","level");
        government("outlay","percent") =
          100 * government("outlay","level") /
                government("revenue","level");
        government("deficit","percent") =
          100 * government("deficit","level") /
                government("revenue","level");

display government;

*       recalculate the government budget statistics:

        gbdgt("trnsfr") = sum(h, trn(h));
        gbdgt("adj") = sum(h, incadj(h));
        gbdgt("gc")  = sum(s, gd(s)) + gdk + gdl + gtl;
        gbdgt("sav") = govsav;

        gbdgt("hfix") = sum(hfix, sl(hfix)+sk(hfix) - sum(g, rcs(g,hfix)));
        gbdgt("gse") = sum(s,gse(s));
        gbdgt("gsk") = gsk;
        gbdgt("pit") = sum(h, pit(h));
        gbdgt("tl")  = sum(s, tl(s)) + gtl;
        gbdgt("tk")  = sum(s, tk(s));
        gbdgt("txo") = sum(s, txo(s));
        gbdgt("tc")  = sum(g, tc(g));

        gbdgt("revenue")  = sum(grevenu, gbdgt(grevenu));
        gbdgt("outlay")   = sum(gexpend, gbdgt(gexpend));
        gbdgt("deficit") = gbdgt("outlay") - gbdgt("revenue");

        display gbdgt;

parameter       tikave  average capital-income tax rate,
                tiave   average income tax rate,
                tlave   average labor tax rate,
                tkave   average capital tax rate,
                gbench  benchmark provision;

        tlave = sum(s, tl(s)) / sum(s, dl(s) + tl(s));

        tiave = sum(h, pit(h)) / sum(h, sl(h) + sk(h));

        tkave = sum(s, tk(s)) / sum(s, dk(s)+tk(s));

        tikave = (sum(h, pit(h))        + sum(s, tk(s))) /
                (sum(h, pit(h) + sl(h) + sk(h)) + sum(s, dk(s)+tk(s)));

        gbench = (gdl + gtl + gdk + sum(s, gd(s))) /

                sum((g,h), rcs(g,h));

display tiave, tlave, tikave, tkave, gbench, tauave, taubmk;


scalar  static  switch for fixed capital stock /1/
        redist  switch for endogenous income redistribution /1/;

scalar  efks    elasticity of foreign capital supply /0.25/,
        vscale  scale factor on valuation of public good /1/;

alias (hp,h);

option limrow=0;
option limcol=0;
$offsymlist offsymxref offuellist offuelxref


parameter
        qref_ls(h)      reference level of labor supply - net of tax
        qref_z(s,g)     reference level of consumer goods formation net tax
        qref_va(s)      refreence level of value-added
        qref_i(h)       reference level of household income-expenditure
        qref_gc         reference level of government consumption
        qref_trn        reference level of transfers
        qref_adj        reference level of income adjustments
        qref_ginc       reference level of government income

        pref_ls(h)      reference price of leisure
        pref_l(s)       reference price of labor
        pref_k(s)       reference price of capital services

        t_l(s)          labor tax
        t_k(s)          capital tax
        t_y(s)          output tax
        t_i(h)          income tax (marginal rate)
        t_iave(h)       income tax (average rate)
        t_c(g)          tax rates on consumption
        t_gdl           tax rate on government labor demand
        theta(h)        weights applied in synthetic objective ;

        qref_ls(h) = sl(h)*(1-taubmk(h));

        pref_ls(h) = 1 + taubmk(h)/(1-taubmk(h));

        t_i(h) = taubmk(h)/(1-taubmk(h));

        t_iave(h) = pit(h) / (sl(h) + sk(h));

        qref_z(s,g) = z(s,g)*(gce(g)-tc(g));

        t_c(g) = tc(g) / gce(g);

        qref_va(s) = dl(s) + tl(s) + dk(s) + tk(s);

        pref_l(s) = 1 + tl(s)/dl(s);
        t_l(s) = tl(s) / dl(s);

        pref_k(s) = 1 + tk(s)/dk(s);
        t_k(s) = tk(s)/dk(s);

        t_y(s) = txo(s) / y(s);

        qref_gc = gdl + gtl + gdk + sum(s, gd(s));

        vpg(h) = vscale *
                 qref_gc * sum(ccg, rcs(ccg,h)) / sum((ccg,hp), rcs(ccg,hp));

        cp(h) = sum(g$ccg(g), rcs(g,h));

        cg(h) = cp(h) + vpg(h);

        qref_i(h) = cg(h) + leisure(h);

        t_gdl = gtl/gdl;

        qref_trn = sum(h, trn(h));

        qref_adj = sum(h, incadj(h));

        qref_ginc = qref_trn + qref_adj + qref_gc;

*       calibrate the top level elasticity of leisure vs. consumption:

        el(h) = (leisure(h)/(qref_i(h)-leisure(h)) + 0.15 /(zta(h)-1)) /
                (1 - qref_ls(h)/(qref_i(h)-leisure(h)));
        el(dh) = 0;

        eg(h) = 0.5;
        vpg(h) = qref_gc * popshr(h);
        cg(h) = sum(ccg, rcs(ccg,h)) + vpg(h);
        qref_i(h) = cg(h) + leisure(h);
        el(h) =  ( els/(zta(h)-1) + qref_ls(h) / qref_i(h) ) /
                (1 - leisure(h) / qref_i(h));
        display el;

alias (hp,h);

option solprint=off;
option limrow=0;
option limcol=0;
$offsymlist offsymxref offuellist offuelxref

*       gemtap model in mcp format.


variables
        p_l             wage index
        p_k             capital return index
        p_ls(h)         leisure price
        p_c(g)          consumption goods price
        p_cc(h)         current consumption price
        p_w(h)          welfare price index
        p_gc            government consumption price
        p_cp(h)         private consumption price
        p_g(h)          household valuation of public good
        p_y(s)          sectoral goods price
        p_va(s)         value-added price index
        p_trn           transfer price index
        p_fx            the real exchange rate

        a_gc            government consumption
        a_invest        investment-capital stock
        a_y(s)          production index
        a_va(s)         value added index
        a_w(h)          welfare index
        a_cc(h)         current consumption
        a_cp(h)         private consumption aggregate
        a_c(g)          aggregate consumption index
        a_ls(h)         labor supply

        i_gov           governemtn income
        i_h(h)          household income (total)
        i_e(h)          endowment income

        tau_l           labor tax instrument
        tau_k           capital and income tax instrument

        tau_pl          instrument for compute labour supply elasticity;

variable
        a_km            net capital inflow;


equations

        mkt_l           labor market - endogenous taxes
        mkt_k           capital market - endogenous taxes
        mkt_ls(h)       leisure - labor market
        mkt_c(g)        consumption good market
        mkt_cc(h)       current consumption market
        mkt_w(h)        supply-demand for welfare
        mkt_gc          government consumption
        mkt_cp(h)       private consumption aggregate
        mkt_g(h)        household valuation of public good
        mkt_va(s)       value-added supply-demand
        mkt_y(s)        sectoral output markets
        mkt_trn         transfer balance
        mkt_fx          foreign exchange market

        prf_gc          government consumption (leontief)
        prf_invest      zero profit for investment
        prf_y(s)        sectoral cost function (leontief)
        prf_va(s)       value-added cost function (ces) - endogenous taxes
        prf_w(h)        welfare index (ces)
        prf_cc(h)       current consumption (ces)
        prf_cp(h)       zero profit condition for private consumption
        prf_c(g)        consumption good formation (leontief)
        prf_ls(h)       labor supply (leontief)

        kmdef           capital import definition

        totinc(h)       household income definition - total
        income(h)       household endowment income
        govinc          government income;


*       labor supply condition:

prf_ls(h)..     p_ls(h) * (1 + t_i(h)) / pref_ls(h)

                        =e= p_l + tau_pl * p_trn;


prf_c(g)..      sum(s$z(s,g), p_y(s) * qref_z(s,g)) =e=

                p_c(g) * gce(g) * (1 - t_c(g));


prf_cp(h)..
                ( sum(g$ccg(g),

                    rcs(g,h) * p_c(g)**(1-ec(h)) ) -

                    cp(h) * p_cp(h)**(1-ec(h)) )$(ec(h) ne 1) +

                ( sum(g$ccg(g), rcs(g,h) * log(p_c(g))) -

                    cp(h) * log(p_cp(h)) )$(ec(h) eq 1) =e= 0;


prf_cc(h)..   ( (vpg(h) * p_g(h)**(1-eg(h)))$vpg(h) +

                 cp(h) *  p_cp(h)**(1-eg(h)) -

                 cg(h) * p_cc(h)**(1-eg(h)) )$(eg(h) ne 1) +

              ( (vpg(h) * log(p_g(h)))$vpg(h) +

                cp(h) * log(p_cp(h)) -

                cg(h) * log(p_cc(h)) )$(eg(h) eq 1) =e= 0;


prf_w(h)..    ( cg(h) * p_cc(h)**(1-el(h))  +

                leisure(h) * p_ls(h)**(1-el(h))  -

                qref_i(h) * p_w(h)**(1-el(h)) )$(el(h) ne 1) +


              ( cg(h) * log(p_cc(h)) +

                leisure(h) * log(p_ls(h)) -

                qref_i(h) * log(p_w(h)) )$(el(h) eq 1) =e= 0;


prf_gc..        p_l * (1 + t_gdl) * gdl + p_k * gdk

                + sum(s$gd(s), p_y(s) * gd(s)) =e= p_gc * qref_gc;


prf_va(s)..

        ((p_l * (1+tau_l*t_l(s))/pref_l(s))**(1-ekl(s))
                * dl(s) * pref_l(s) +

         (p_k * (1+ tau_k * t_k(s))/pref_k(s))**(1-ekl(s))
                * dk(s) * pref_k(s)

                - p_va(s)**(1-ekl(s)) * qref_va(s) )$(ekl(s) ne 1) +

(dl(s) * pref_l(s) * log(p_l * (1+tau_l*t_l(s))/ pref_l(s)) +

 dk(s) * pref_k(s) * log(p_k * (1+ tau_k *t_k(s))/pref_k(s)) -

        qref_va(s) * log(p_va(s)) )$(ekl(s) eq 1) =e=  0;


prf_y(s)..      p_va(s) * qref_va(s) +

                sum(ss$ras(ss,s), ras(ss,s) * p_y(ss)) =e=

                p_y(s) * y(s) * (1-t_y(s));


prf_invest..

                sum(g$(not ccg(g)), p_c(g)) =e= p_k;


kmdef.. a_km =e= 1 - (p_fx/p_k)**efks;

mkt_k..         a_invest * (sum(h, sk(h)) + gsk) + sum(hfix, sk(hfix))

*       foreign capital flows:

                + (sum(h, sk(h)) * a_km)$efks =e=

                sum(s, a_va(s) * dk(s)*

                ( pref_k(s)/(1+tau_k *t_k(s)) )**ekl(s) *

                ( p_va(s)/p_k )**ekl(s) )

                + a_gc * gdk;


mkt_l..         sum(h, a_ls(h)*sl(h)) + sum(hfix, sl(hfix)) =e=

                sum(s, a_va(s) * dl(s) *

                  ( pref_l(s) / (1+tau_l*t_l(s)) )**ekl(s) *

                  ( p_va(s)/p_l)**ekl(s) )

                + a_gc * gdl;


mkt_ls(h)..     leisure(h) + qref_ls(h) =e=

                leisure(h) * a_w(h) * (p_w(h)/p_ls(h))**el(h) +

                qref_ls(h) * a_ls(h);


mkt_c(g)..      gce(g) * a_c(g) =e=

*       exogenous household demand and saving:

                sum(hfix, rcs(g,hfix))  +  govsav$(not ccg(g))

*       current consumption goods:

                + sum(h, (a_cp(h) * rcs(g,h) *

                        (p_cp(h)/p_c(g))**eg(h))$ccg(g)

*       investment demand:

                + (a_invest * rcs(g,h))$(not ccg(g)) );


mkt_cc(h)..     a_cc(h) =e= a_w(h) * (p_w(h)/p_cc(h))**el(h);


mkt_cp(h)..     a_cp(h) =e= a_cc(h) * (p_cc(h)/p_cp(h))**eg(h);


mkt_g(h)..

                a_gc =e= a_cc(h) * (p_cc(h) / p_g(h))**eg(h);


mkt_w(h)..      a_w(h) =e= i_h(h) / p_w(h);


mkt_gc..        p_trn * (qref_trn + qref_adj) +

                p_gc * a_gc * qref_gc =e= i_gov * qref_ginc;


mkt_va(s)..     a_va(s) =e= a_y(s);


*       trade elasticity parameters (0.465 and 10) taken from p139 of bfsw:

mkt_y(s)..      a_y(s) * y(s) + vm(s)*(p_y(s)/p_fx)**0.465 + gse(s)  =e=

                sum(ss, a_y(ss) * ras(s,ss))

                + sum(g, a_c(g) * qref_z(s,g)) + gd(s) * a_gc

                + vx(s)*(p_fx/p_y(s))**10;

mkt_fx..        sum(s,  vm(s)*(p_y(s)/p_fx)**0.465 -

                        vx(s)*(p_fx/p_y(s))**10 )

*       capital flows:

                + (sum(h, sk(h)) * a_km)$efks =e= 0;


*       hold real value of transfers constant:

mkt_trn..       p_trn =e= sum((h,ccg), rcs(ccg,h) * p_c(ccg)) /
                          sum((h,ccg), rcs(ccg,h));


*       total income includes private valuation of public good:

totinc(h)..     i_h(h) * qref_i(h) =e= i_e(h) * (qref_i(h)-vpg(h))

                + (p_g(h) * vpg(h) * a_gc)$vpg(h);


income(h)..     i_e(h) * (qref_i(h)-vpg(h)) =e=

*       capital income:

                a_invest * (  p_k * sk(h)
                              - sum(g$(not ccg(g)), p_c(g) * saving(h)) )

*       labor income:

                + p_ls(h) * (qref_ls(h) + leisure(h))

*       income taxes (average with marginal adjustment):

                - t_iave(h) * (sl(h) + sk(h)) * p_trn * tau_k
                - t_i(h) * sk(h) * (p_k - p_trn)
                + t_i(h) * qref_ls(h) * p_trn

*       transfers:

                + p_trn * (trn(h) + incadj(h));


govinc..

        i_gov * qref_ginc =e=

*       income of exogenous households:

                sum(hfix, sl(hfix) * p_l + sk(hfix) * p_k

                        - sum(g, rcs(g,hfix) * p_c(g)) )

*       savings (exogenous)

                - sum(g$(not ccg(g)), p_c(g) * govsav)

*       capital revenue:

                + a_invest * p_k * gsk

*       government expenditures:

                + sum(s, p_y(s) * gse(s))

*       tax receipts:

                + sum(h,
                        t_iave(h) * (sl(h) + sk(h))  * p_trn * tau_k
                        + t_i(h) *
                        ( qref_ls(h) * (a_ls(h) * p_ls(h) - p_trn)  +
                          sk(h) * (p_k-p_trn) )
                  )

                + sum(s, a_va(s) * p_l * dl(s) * tau_l * t_l(s)
                        * (pref_l(s)/(1+tau_l*t_l(s)))**ekl(s)
                        * (p_va(s)/p_l)**ekl(s) )

                + sum(s, a_va(s) * p_k * dk(s) * tau_k * t_k(s)
                        * (pref_k(s)/(1+tau_k *t_k(s)))**ekl(s)
                        * (p_va(s)/p_k)**ekl(s))

                + sum(s, a_y(s) * p_y(s) * y(s) * t_y(s))

                + a_gc * p_l * gdl * t_gdl

        + sum(g, a_c(g) * p_c(g) * gce(g) * t_c(g));

model  gemtap /
        mkt_l.p_l,
        mkt_k.p_k,
        mkt_ls.p_ls,
        mkt_c.p_c,
        mkt_cc.p_cc,
        mkt_w.p_w,
        mkt_gc.p_gc,
        mkt_cp.p_cp,
        mkt_g.p_g,
        mkt_va.p_va,
        mkt_y.p_y,
        mkt_trn.p_trn,
        mkt_fx.p_fx,
        prf_gc.a_gc,
        prf_invest.a_invest,
        prf_y.a_y,
        prf_va.a_va,
        prf_w.a_w,
        prf_cc.a_cc
        prf_cp.a_cp,
        prf_c.a_c,
        prf_ls.a_ls,
        kmdef.a_km,
        totinc.i_h,
        income.i_e,
        govinc.i_gov /;

*       default calibration: uniform attribubtion with -0.5 elasticity:

eg(h) = 0.5;
vpg(h) = qref_gc * popshr(h);
cg(h) = sum(ccg, rcs(ccg,h)) + vpg(h);
qref_i(h) = cg(h) + leisure(h);

$ontext
scalar peps / 1.e-5 / ;
p_k.lo     = peps;
p_l.lo     = peps;
p_va.lo(s) = peps;
p_ls.lo(h) = peps;
p_c.lo(g)  = peps;
p_cc.lo(h) = peps;
p_cp.lo(h) = peps;
p_g.lo(h)  = peps;
p_w.lo(h)  = peps;
p_fx.lo    = peps;
p_y.lo(s)  = peps;
$offtext

*       install benchmark:

        a_cp.l(h) = 1;
        p_cp.l(h) = 1;
        a_gc.l = 1;
        a_invest.l = 1;
        a_y.l(s) = 1;
        a_va.l(s) = 1;
        a_w.l(h) = 1;
        a_cc.l(h) = 1;
        a_c.l(g) = 1;
        a_ls.l(h) = 1;
        p_l.l = 1;
        p_k.l = 1;
        p_gc.l = 1;
        p_g.l(h) = 1;
        p_trn.l = 1;
        p_fx.l = 1;
        p_ls.l(h) = 1;
        p_w.l(h) = 1;
        p_y.l(s) = 1;
        p_va.l(s) = 1;
        p_c.l(g) = 1;
        p_cc.l(h) = 1;
        i_gov.l = 1;
        i_e.l(h) = 1;
        i_h.l(h) = 1;

        a_km.l = 0;
        tau_l.l = 1;
        tau_k.l = 1;

*       fix indicator variables:

        tau_pl.fx = 0;
        tau_l.fx  = 1;
        tau_k.fx  = 1;

*       fix variables according to switches and benchmark values.
*       n.b. this causes associated equations to drop.

        a_invest.fx$static = 1;
        a_km.fx$(efks eq 0)   = 1;
        p_g.fx(h)$(vpg(h) eq 0) = 0;
        i_e.fx(h)$(not redist)  = 1;
        i_gov.fx$redist = 1;


        solve gemtap using mcp;


set     sc  scenarios  /bench   benchmark replication,
                        itcut   uniform (flat rate) income tax,
                        ktcut   uniform capital tax,
                        ltcut   uniform labor tax/;

parameter       summary(*,*,sc)         solution summary;

table  uniftax(sc,*)    indicators for uniform
                 k       l        i
bench            0       0        0
itcut            0       0        1
ktcut            1       0        0
ltcut            0       1        0;

loop(sc,

*       flat rate capital tax:

        if (uniftax(sc,"k"),
                t_k(s) = sum(ss, tk(ss)) / sum(ss, dk(ss));
        else
                t_k(s) = tk(s)/dk(s);
        );

*       flat rate labor tax:

        if (uniftax(sc,"l"),
                t_l(s) = sum(ss, tl(ss)) / sum(ss, dl(ss));
        else
                t_l(s) = tl(s) / dl(s);
        );

*       move to a flat rate income tax:

        if (uniftax(sc,"i"),
                t_i(h) = tiave;
                t_iave(h) = tiave;
        else
                t_i(h) = taubmk(h)/(1-taubmk(h));
                t_iave(h) = pit(h) / (sl(h) + sk(h));
        );


        solve gemtap using mcp;

*       report solution statistics:

        summary("status","_", sc) = gemtap.modelstat;
        summary("iters", "_", sc) = gemtap.iterusd;
        summary("cpu",   "_", sc) = gemtap.resusd;

*       public goods provision:

        summary("g","_",sc) = 100 * (a_gc.l - 1);

        summary("pk","_",sc) = 100 * (p_k.l/p_trn.l - 1);

        summary("pl","_",sc) = 100 * (p_l.l/p_trn.l - 1);

        summary("kmx","_",sc) = 100 * a_km.l;

*       report welare changes indices:

        summary("ev",h,sc) = 100 * (a_w.l(h) - 1);

*       report current consumption:

        summary("cc",h,sc) = 100 * (a_cc.l(h) - 1);

*       report private consumption:

        summary("cp",h,sc) = 100 * (a_cp.l(h) - 1);

);

display summary;
