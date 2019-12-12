option LP=convert;
option LP=convert;
option LP=convert;
$Title Stigler's Nutrition model (DIET,SEQ=7)

$Ontext

This model determines a least cost diet which meets the daily
allowances of nutrients for a moderately active man weighing 154 lbs.


Dantzig, G B, Chapter 27.1. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

 Sets n nutrients / calorie     thousands   , protein     grams     , calcium     grams     , iron   milligrams
                    vitamin-a   thousand ius, vitamin-b1  milligrams, vitamin-b2  milligrams,
                    niacin      milligrams  , vitamin-c   milligrams                                              /
      f foods     / wheat  , cornmeal , cannedmilk, margarine , cheese   , peanut-b , lard
                    liver  , porkroast, salmon    , greenbeans, cabbage  , onions   , potatoes
                    spinach, sweet-pot, peaches   , prunes    , limabeans, navybeans           /

 Parameter b(n) required daily allowances of nutrients / calorie      3, protein    70  , calcium   .8  , iron      12
                                                         vitamin-a    5, vitamin-b1  1.8, vitamin-b2 2.7,
                                                         niacin      18, vitamin-c  75                                 /

 Table a(f,n) nutritive value of foods (per dollar spent)

              calorie  protein  calcium  iron  vitamin-a  vitamin-b1  vitamin-b2  niacin  vitamin-c
*              (1000)    (g)      (g)    (mg)   (1000iu)    (mg)         (mg)       (mg)    (mg)

 wheat           44.7     1411      2.0   365                 55.4        33.3       441
 cornmeal        36        897      1.7    99      30.9       17.4         7.9       106
 cannedmilk       8.4      422     15.1     9      26          3          23.5        11       60
 margarine       20.6       17       .6     6      55.8         .2
 cheese           7.4      448     16.4    19      28.1         .8        10.3         4
 peanut-b        15.7      661      1      48                  9.6         8.1       471
 lard            41.7                                .2                     .5         5
 liver            2.2      333       .2   139     169.2        6.4        50.8       316      525
 porkroast        4.4      249       .3    37                 18.2         3.6        79
 salmon           5.8      705      6.8    45       3.5        1           4.9       209
 greenbeans       2.4      138      3.7    80      69          4.3         5.8        37      862
 cabbage          2.6      125      4      36       7.2        9           4.5        26     5369
 onions           5.8      166      3.8    59      16.6        4.7         5.9        21     1184
 potatoes        14.3      336      1.8   118       6.7       29.4         7.1       198     2522
 spinach          1.1      106            138     918.4        5.7        13.8        33     2755
 sweet-pot        9.6      138      2.7    54     290.7        8.4         5.4        83     1912
 peaches          8.5       87      1.7   173      86.8        1.2         4.3        55       57
 prunes          12.8       99      2.5   154      85.7        3.9         4.3        65      257
 limabeans       17.4     1055      3.7   459       5.1       26.9        38.2        93
 navybeans       26.9     1691     11.4   792                 38.4        24.6       217


 Positive Variable x(f)  dollars of food f to be purchased daily   (dollars)

 Free     Variable cost  total food bill                           (dollars)

 Equations  nb(n) nutrient balance  (units),  cb cost balance  (dollars) ;

 nb(n).. sum(f, a(f,n)*x(f)) =g= b(n);  cb..  cost=e= sum(f, x(f));

 Model diet stiglers diet problem / nb,cb /;
 Solve diet minimizing cost using lp;
