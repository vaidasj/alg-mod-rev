option NLP=convert;
option NLP=convert;
option NLP=convert;
$title The Pooling Problem (POOL,SEQ=254)

$ontext
This model presents a number of pooling problems from the
literature in a unified framework. It represents the
pq-formulation as of the pooling problem described in:

M. Tawarmalani and N. V. Sahinidis, in "Convexification
and Global Optimization of the Pooling Problem," May 2002,
Mathematical Programming, submitted.

All 14 problems have known global solutions.

Summary reports across all 14 problems allow quick assessment
of local and global solution methods. Also note the importance
of good starting points for local solvers.

This model and the generic pq-formulation has been provided
by Mohit Tawarmalani, August 2002.


References:

Tawarmalani, M. and Sahinidis, N., Convexification and Global
Optimization in Continuous and Mixed-Integer Nonlinear
Programming: Theory, Algorithms, Software, and Applications,
Kluwer, 2002.

Adhya, N. and Tawarmalani, M. and Sahinidis, N. V.,
"Global optimization of the pooling problem", Industrial and
Engineering Chemistry, 38, pp. 1956-1972, 1999.

C. Audet and J. Brimberg and P. Hansen and N. Mladenovic,
"Pooling problem: Alternate formulations and solution methods",
Technical Report Les Cashiers Du GERAD G-2000-23, Montreal,
2000.

Ben-Tal, A and Eiger, G and Gershovitz, V, "Global Minimization
by Reducing the Duality Gap", Mathematical Programming, 63,
pp. 193-212, 1994.

Foulds, L. R. and Haugland, D. and Jornsten, K., "A bilinear
approach to the pooling problem", Optimization, 24, pp. 165-180,
1992.

Haverly, C A, Studies of the Behavior of Recursion for the
Pooling Problem, ACM SIGMAP Bull, 25, pp. 19-28, 1978.

Haverly, C. A., "Behaviour of recursion model - More studies",
ACM SIGMAP Bulletin, 26, pp. 22-28, 1979.

$offtext


$include poolmod.inc

$eolcom //
Sets comp_ Components and Raw Materials / c1*c32 /
     pro_  Products                     / p1*p16 /
     qual_ Qualities                    / q1*q10 /
     pool_ Pools                        / o1*o10 /

     case case index / haverly1*haverly3
                       foulds2*foulds5
                       bental4*bental5
                       rt2
                       adhya1*adhya4        /

     labels / lo lower bound, up upper bound, price /

parameter sol(case) global solution /
                    haverly1 -400,
                    haverly2 -600,
                    haverly3 -750
                    foulds2 -1100,
                    foulds3*foulds5 - 8
                    bental4 -450,
                    bental5 -3500
                    rt2 -4391.8258928
                    adhya1*adhya2 -549.80305,
                    adhya3 -561.044687,
                    adhya4 -877.64574   /

table ComponentData(case,comp_,labels)

              lo   up      price
adhya1 .c1     0   75        7
adhya1 .c2     0   75        3
adhya1 .c3     0   75        2
adhya1 .c4     0   75       10
adhya1 .c5     0   75        5

adhya2 .c1     0   75        7
adhya2 .c2     0   75        3
adhya2 .c3     0   75        2
adhya2 .c4     0   75       10
adhya2 .c5     0   75        5

adhya3 .c1     0   75        7
adhya3 .c2     0   75        3
adhya3 .c3     0   75        2
adhya3 .c4     0   75       10
adhya3 .c5     0   75        5
adhya3 .c6     0   75        5
adhya3 .c7     0   75        9
adhya3 .c8     0   75       11

adhya4 .c1     0   85       15
adhya4 .c2     0   85        7
adhya4 .c3     0   85        4
adhya4 .c4     0   85        5
adhya4 .c5     0   85        6
adhya4 .c6     0   85        3
adhya4 .c7     0   85        5
adhya4 .c8     0   85        5

rt2    .c1     0   60.9756  49.2
rt2    .c2     0  161.29    62
rt2    .c3     0    5      300

bental4.c1     0  300        6
bental4.c2     0   50       15
bental4.c3     0  300       16
bental4.c4     0  300       10

bental5.c1    0   600        6
bental5.c2    0   600       16
bental5.c3    0   600       15
bental5.c4    0   600       12
bental5.c5    0   600        6
bental5.c6    0   600       16
bental5.c7    0   600       15
bental5.c8    0   600       12
bental5.c9    0   600        6
bental5.c10   0   600       16
bental5.c11   0   600       15
bental5.c12   0   600       12
bental5.c13   0   600       10

haverly1.c1   0   300        6
haverly1.c2   0   300       16
haverly1.c3   0   300       10

haverly2.c1   0   800        6
haverly2.c2   0   800       16
haverly2.c3   0   800       10

haverly3.c1   0   300        6
haverly3.c2   0   300       13
haverly3.c3   0   300       10

foulds2 .c1   0   600        6
foulds2 .c2   0   600       16
foulds2 .c3   0   600       10
foulds2 .c4   0   600        3
foulds2 .c5   0   600       13
foulds2 .c6   0   600        7

foulds3 .c1   0    16       20
foulds3 .c2   0    16       19
foulds3 .c3   0    16       18
foulds3 .c4   0    16       17
foulds3 .c5   0    16       19
foulds3 .c6   0    16       18
foulds3 .c7   0    16       17
foulds3 .c8   0    16       16
foulds3 .c9   0    16       18
foulds3 .c10  0    16       17
foulds3 .c11  0    16       16
foulds3 .c12  0    16       15
foulds3 .c13  0    16       17
foulds3 .c14  0    16       16
foulds3 .c15  0    16       15
foulds3 .c16  0    16       14
foulds3 .c17  0    16       16
foulds3 .c18  0    16       15
foulds3 .c19  0    16       14
foulds3 .c20  0    16       13
foulds3 .c21  0    16       15
foulds3 .c22  0    16       14
foulds3 .c23  0    16       13
foulds3 .c24  0    16       12
foulds3 .c25  0    16       14
foulds3 .c26  0    16       13
foulds3 .c27  0    16       12
foulds3 .c28  0    16       11
foulds3 .c29  0    16       13
foulds3 .c30  0    16       12
foulds3 .c31  0    16       11
foulds3 .c32  0    16       10

foulds4 .c1   0    16       20
foulds4 .c2   0    16       19
foulds4 .c3   0    16       18
foulds4 .c4   0    16       17
foulds4 .c5   0    16       16
foulds4 .c6   0    16       15
foulds4 .c7   0    16       14
foulds4 .c8   0    16       13
foulds4 .c9   0    16       12
foulds4 .c10  0    16       11
foulds4 .c11  0    16       10

foulds5 .c1   0    16       20
foulds5 .c2   0    16       19
foulds5 .c3   0    16       18
foulds5 .c4   0    16       17
foulds5 .c5   0    16       16
foulds5 .c6   0    16       15
foulds5 .c7   0    16       14
foulds5 .c8   0    16       13
foulds5 .c9   0    16       12
foulds5 .c10  0    16       11
foulds5 .c11  0    16       10



table ComponentQuality(case,comp_,qual_)

                q1   q2   q3   q4   q5   q6
adhya1 .c1       1    6    4  0.5
adhya1 .c2       4    1    3    2
adhya1 .c3       4  5.5    3  0.9
adhya1 .c4       3    3    3    1
adhya1 .c5       1  2.7    4  1.6

adhya2 .c1       1    6    4  0.5    5    9
adhya2 .c2       4    1    3    2    4    4
adhya2 .c3       4  5.5    3  0.9    7   10
adhya2 .c4       3    3    3    1    3    4
adhya2 .c5       1  2.7    4  1.6    3    7

adhya3 .c1       1    6    4  0.5    5    9
adhya3 .c2       4    1    3    2    4    4
adhya3 .c3       4  5.5    3  0.9    7   10
adhya3 .c4       3    3    3    1    3    4
adhya3 .c5       1  2.7    4  1.6    3    7
adhya3 .c6     1.8  2.7    4  3.5  6.1    3
adhya3 .c7       5    1  1.7  2.9  3.5  2.9
adhya3 .c8       3    3    3    1    5    2

adhya4 .c1     0.5  1.9  1.3    1
adhya4 .c2     1.4  1.8  1.7  1.6
adhya4 .c3     1.2  1.9  1.4  1.4
adhya4 .c4     1.5  1.2  1.7  1.3
adhya4 .c5     1.6  1.8  1.6    2
adhya4 .c6     1.2  1.1  1.4    2
adhya4 .c7     1.5  1.5  1.5  1.5
adhya4 .c8     1.4  1.6  1.2  1.6

rt2    .c1     0.82 3    99.2 90.5
rt2    .c2     0.62 0    87.9 83.5
rt2    .c3     0.75 0    114  98.7

bental4.c1      3
bental4.c2      1
bental4.c3      1
bental4.c4      2

bental5.c1      3     1
bental5.c2      1     3
bental5.c3    1.2     5
bental5.c4    1.5   2.5
bental5.c5      3     1
bental5.c6      1     3
bental5.c7    1.2     5
bental5.c8    1.5   2.5
bental5.c9      3     1
bental5.c10     1     3
bental5.c11   1.2     5
bental5.c12   1.5   2.5
bental5.c13     2   2.5

haverly1.c1     3
haverly1.c2     1
haverly1.c3     2

haverly2.c1     3
haverly2.c2     1
haverly2.c3     2

haverly3.c1     3
haverly3.c2     1
haverly3.c3     2

foulds2 .c1     3
foulds2 .c2     1
foulds2 .c3     2
foulds2 .c4   3.5
foulds2 .c5   1.5
foulds2 .c6   2.5

foulds3 .c1   1
foulds3 .c2   1.1
foulds3 .c3   1.2
foulds3 .c4   1.3
foulds3 .c5   1.1
foulds3 .c6   1.2
foulds3 .c7   1.3
foulds3 .c8   1.4
foulds3 .c9   1.2
foulds3 .c10  1.3
foulds3 .c11  1.4
foulds3 .c12  1.5
foulds3 .c13  1.3
foulds3 .c14  1.4
foulds3 .c15  1.5
foulds3 .c16  1.6
foulds3 .c17  1.4
foulds3 .c18  1.5
foulds3 .c19  1.6
foulds3 .c20  1.7
foulds3 .c21  1.5
foulds3 .c22  1.6
foulds3 .c23  1.7
foulds3 .c24  1.8
foulds3 .c25  1.6
foulds3 .c26  1.7
foulds3 .c27  1.8
foulds3 .c28  1.9
foulds3 .c29  1.7
foulds3 .c30  1.8
foulds3 .c31  1.9
foulds3 .c32  2

foulds4 .c1   1
foulds4 .c2   1.1
foulds4 .c3   1.2
foulds4 .c4   1.3
foulds4 .c5   1.4
foulds4 .c6   1.5
foulds4 .c7   1.6
foulds4 .c8   1.7
foulds4 .c9   1.8
foulds4 .c10  1.9
foulds4 .c11  2

foulds5 .c1   1
foulds5 .c2   1.1
foulds5 .c3   1.2
foulds5 .c4   1.3
foulds5 .c5   1.4
foulds5 .c6   1.5
foulds5 .c7   1.6
foulds5 .c8   1.7
foulds5 .c9   1.8
foulds5 .c10  1.9
foulds5 .c11  2


table ProductData(case,pro_,labels)

              lo   up  price
adhya1 .p1     0   10   16
adhya1 .p2     0   25   25
adhya1 .p3     0   30   15
adhya1 .p4     0   10   10

adhya2 .p1     0   10   16
adhya2 .p2     0   25   25
adhya2 .p3     0   30   15
adhya2 .p4     0   10   10

adhya3 .p1     0   10   16
adhya3 .p2     0   25   25
adhya3 .p3     0   30   15
adhya3 .p4     0   10   10

adhya4 .p1     0   15   10
adhya4 .p2     0   25   25
adhya4 .p3     0   10   30
adhya4 .p4     0   20    6
adhya4 .p5     0   15   10

rt2    .p1     5  300  190
rt2    .p2     5  300  230
rt2    .p3     5  300  150

bental4.p1     0  100    9
bental4.p2     0  200   15

bental5.p1     0  100   18
bental5.p2     0  200   15
bental5.p3     0  100   19
bental5.p4     0  100   16
bental5.p5     0  100   14

haverly1.p1    0  100    9
haverly1.p2    0  200   15

haverly2.p1    0  600    9
haverly2.p2    0  200   15

haverly3.p1    0  100    9
haverly3.p2    0  200   15

foulds2 .p1    0  100    9
foulds2 .p2    0  200   15
foulds2 .p3    0  100    6
foulds2 .p4    0  200   12

foulds3 .p1    0    1   20
foulds3 .p2    0    1   19.5
foulds3 .p3    0    1   19
foulds3 .p4    0    1   18.5
foulds3 .p5    0    1   18
foulds3 .p6    0    1   17.5
foulds3 .p7    0    1   17
foulds3 .p8    0    1   16.5
foulds3 .p9    0    1   16
foulds3 .p10   0    1   15.5
foulds3 .p11   0    1   15
foulds3 .p12   0    1   14.5
foulds3 .p13   0    1   14
foulds3 .p14   0    1   13.5
foulds3 .p15   0    1   13
foulds3 .p16   0    1   12.5

foulds4 .p1    0    1   20
foulds4 .p2    0    1   19.5
foulds4 .p3    0    1   19
foulds4 .p4    0    1   18.5
foulds4 .p5    0    1   18
foulds4 .p6    0    1   17.5
foulds4 .p7    0    1   17
foulds4 .p8    0    1   16.5
foulds4 .p9    0    1   16
foulds4 .p10   0    1   15.5
foulds4 .p11   0    1   15
foulds4 .p12   0    1   14.5
foulds4 .p13   0    1   14
foulds4 .p14   0    1   13.5
foulds4 .p15   0    1   13
foulds4 .p16   0    1   12.5

foulds5 .p1    0    1   20
foulds5 .p2    0    1   19.5
foulds5 .p3    0    1   19
foulds5 .p4    0    1   18.5
foulds5 .p5    0    1   18
foulds5 .p6    0    1   17.5
foulds5 .p7    0    1   17
foulds5 .p8    0    1   16.5
foulds5 .p9    0    1   16
foulds5 .p10   0    1   15.5
foulds5 .p11   0    1   15
foulds5 .p12   0    1   14.5
foulds5 .p13   0    1   14
foulds5 .p14   0    1   13.5
foulds5 .p15   0    1   13
foulds5 .p16   0    1   12.5


table ProductQualityLower(case,pro_,qual_)

              q1   q2   q3   q4   q5   q6

rt2    .p1   0.74  0    95   85
rt2    .p2   0.74  0    96   88
rt2    .p3   0.74  0    91 83.5


table ProductQualityUpper(case,pro_,qual_)

                q1    q2    q3    q4    q5    q6
adhya1 .p1       3     3  3.25  0.75
adhya1 .p2       4   2.5  3.5   1.5
adhya1 .p3     1.5   5.5  3.9   0.8
adhya1 .p4       3     4    4   1.8

adhya2 .p1       3     3  3.25  0.75    6     5
adhya2 .p2       4   2.5  3.5   1.5     7     6
adhya2 .p3     1.5   5.5  3.9   0.8     7     6
adhya2 .p4       3     4    4   1.8     8     6

adhya3 .p1       3     3  3.25  0.75    6     5
adhya3 .p2       4   2.5  3.5   1.5     7     6
adhya3 .p3     1.5   5.5  3.9   0.8     7     6
adhya3 .p4       3     4    4   1.8     8     6

adhya4 .p1     1.2   1.7  1.4   1.7
adhya4 .p2     1.4   1.3  1.8   1.4
adhya4 .p3     1.3   1.3  1.9   1.9
adhya4 .p4     1.2   1.1  1.7   1.6
adhya4 .p5     1.6   1.9    2   2.5

rt2    .p1     0.79  3    114  98.7
rt2    .p2     0.79  0.9  114  98.7
rt2    .p3     0.79  3    114  98.7

bental4.p1     2.5
bental4.p2     1.5

bental5.p1     2.5   2
bental5.p2     1.5   2.5
bental5.p3       2   2.6
bental5.p4       2   2
bental5.p5       2   2

haverly1.p1    2.5
haverly1.p2    1.5

haverly2.p1    2.5
haverly2.p2    1.5

haverly3.p1    2.5
haverly3.p2    1.5

foulds2 .p1    2.5
foulds2 .p2    1.5
foulds2 .p3    3
foulds2 .p4    2

foulds3 .p1    1.05
foulds3 .p2    1.1
foulds3 .p3    1.15
foulds3 .p4    1.2
foulds3 .p5    1.25
foulds3 .p6    1.3
foulds3 .p7    1.35
foulds3 .p8    1.4
foulds3 .p9    1.45
foulds3 .p10   1.5
foulds3 .p11   1.55
foulds3 .p12   1.6
foulds3 .p13   1.65
foulds3 .p14   1.7
foulds3 .p15   1.75
foulds3 .p16   1.8

foulds4 .p1    1.05
foulds4 .p2    1.1
foulds4 .p3    1.15
foulds4 .p4    1.2
foulds4 .p5    1.25
foulds4 .p6    1.3
foulds4 .p7    1.35
foulds4 .p8    1.4
foulds4 .p9    1.45
foulds4 .p10   1.5
foulds4 .p11   1.55
foulds4 .p12   1.6
foulds4 .p13   1.65
foulds4 .p14   1.7
foulds4 .p15   1.75
foulds4 .p16   1.8

foulds5 .p1    1.05
foulds5 .p2    1.1
foulds5 .p3    1.15
foulds5 .p4    1.2
foulds5 .p5    1.25
foulds5 .p6    1.3
foulds5 .p7    1.35
foulds5 .p8    1.4
foulds5 .p9    1.45
foulds5 .p10   1.5
foulds5 .p11   1.55
foulds5 .p12   1.6
foulds5 .p13   1.65
foulds5 .p14   1.7
foulds5 .p15   1.75
foulds5 .p16   1.8


table Poolsize(case,pool_)

          o1   o2   o3   o4   o5   o6   o7   o8

adhya1    75   75
adhya2    75   75
adhya3    75   75   75
adhya4    85   85
rt2       12.5 17.5
bental4  300
bental5  600  600  600
haverly1 300
haverly2 800
haverly3 300
foulds2  600  600
foulds3   16   16   16   16   16   16   16   16
foulds4   16   16   16   16   16   16   16   16
foulds5   16   16   16   16   16   16   16   16

table ComponentPoolFraction(case,comp_,pool_)  upper bound on q

              o1   o2   o3   o4   o5   o6   o7   o8
adhya1 .c1     1
adhya1 .c2     1
adhya1 .c3          1
adhya1 .c4          1
adhya1 .c5          1

adhya2 .c1     1
adhya2 .c2     1
adhya2 .c3          1
adhya2 .c4          1
adhya2 .c5          1

adhya3 .c1     1
adhya3 .c2     1
adhya3 .c3          1
adhya3 .c4          1
adhya3 .c5          1
adhya3 .c6               1
adhya3 .c7               1
adhya3 .c8               1

adhya4 .c1     1
adhya4 .c2     1
adhya4 .c3     1
adhya4 .c4     1
adhya4 .c5          1
adhya4 .c6          1
adhya4 .c7          1
adhya4 .c8          1

rt2    .c1     1    1
rt2    .c2     1    1
rt2    .c3     1    1

bental4.c1     1
bental4.c2     1
bental4.c3     1
bental4.c4

bental5.c1     1
bental5.c2     1
bental5.c3     1
bental5.c4     1
bental5.c5          1
bental5.c6          1
bental5.c7          1
bental5.c8          1
bental5.c9               1
bental5.c10              1
bental5.c11              1
bental5.c12              1
bental5.c13

haverly1.c1    1
haverly1.c2    1
haverly1.c3

haverly2.c1    1
haverly2.c2    1
haverly2.c3    0

haverly3.c1    1
haverly3.c2    1
haverly3.c3

foulds2 .c1    1
foulds2 .c2    1
foulds2 .c3
foulds2 .c4         1
foulds2 .c5         1
foulds2 .c6

*             o1   o2   o3   o4   o5   o6   o7   o8

foulds3 .c1    1
foulds3 .c2    1
foulds3 .c3    1
foulds3 .c4    1
foulds3 .c5         1
foulds3 .c6         1
foulds3 .c7         1
foulds3 .c8         1
foulds3 .c9              1
foulds3 .c10             1
foulds3 .c11             1
foulds3 .c12             1
foulds3 .c13                  1
foulds3 .c14                  1
foulds3 .c15                  1
foulds3 .c16                  1
foulds3 .c17                       1
foulds3 .c18                       1
foulds3 .c19                       1
foulds3 .c20                       1
foulds3 .c21                            1
foulds3 .c22                            1
foulds3 .c23                            1
foulds3 .c24                            1
foulds3 .c25                                 1
foulds3 .c26                                 1
foulds3 .c27                                 1
foulds3 .c28                                 1
foulds3 .c29                                      1
foulds3 .c30                                      1
foulds3 .c31                                      1
foulds3 .c32                                      1

*             o1   o2   o3   o4   o5   o6   o7   o8

foulds4 .c1    1
foulds4 .c2         1    1
foulds4 .c3              1    1    1
foulds4 .c4    1              1         1    1
foulds4 .c5         1    1         1              1
foulds4 .c6              1    1    1    1
foulds4 .c7    1              1         1    1
foulds4 .c8         1              1         1    1
foulds4 .c9                             1    1    1
foulds4 .c10   1                                  1
foulds4 .c11        1

*             o1   o2   o3   o4   o5   o6   o7   o8

foulds5 .c1    1                             1
foulds5 .c2    1         1                   1
foulds5 .c3    1         1                   1
foulds5 .c4    1         1         1         1
foulds5 .c5              1         1              1
foulds5 .c6                        1              1
foulds5 .c7                   1    1              1
foulds5 .c8         1         1         1         1
foulds5 .c9         1         1         1
foulds5 .c10        1         1         1
foulds5 .c11        1                   1


table PoolProductBound(case,pool_,pro_) upper bound on y

                  p1   p2   p3   p4   p5
adhya1 .o1        10   25   30   10
adhya1 .o2        30   10   10   25

adhya2 .o1        10   25   30   10
adhya2 .o2        30   10   10   25

adhya3 .o1        10   25   30   10
adhya3 .o2        10   10   25   30
adhya3 .o3        30   10   10   25

adhya4 .o1        15   25   10   20   15
adhya4 .o2        10   20   15   15   25

rt2    .o1       12.5 12.5 12.5
rt2    .o2       17.5 17.5 17.5

bental4.o1       100  200

bental5.o1       100  200  100  100  100
bental5.o2       100  100  100  200  100
bental5.o3       200  100  100  100  100

haverly1.o1      100  200

haverly2.o1      600  200

haverly3.o1      100  200

foulds2 .o1*o2   100  200  100  200

foulds3. o1*o8    16   16   16   16   16
foulds4. o1*o8    16   16   16   16   16
foulds5. o1*o8    16   16   16   16   16

   +             p6*p16
foulds3. o1*o8    16
foulds4. o1*o8    16
foulds5. o1*o8    16


table ComponentProductBound(case,comp_,pro_)  upper bound on z

                 p1      p2      p3    p4    p5
rt2    .c1        0     7.5       0
rt2    .c2   161.29       0  161.29
rt2    .c3      7.5       0       0

bental4.c4      100     200

bental5.c13     100     200     100   100   100

haverly1.c3     100     200
haverly2.c3     600     200
haverly3.c3     100     200

foulds2 .c3     100     200     100   200
foulds2 .c6     100     200     100   200


parameter rep1(case,*)  Problem Characteristics
          rep2(case,*)  Solution Summary;

option optcr=0.0, optca=1e-6;

loop(case,

   // extract domains for current problem

   comp(comp_) = ComponentData(case,comp_,'up');
   qual(qual_) = sum(comp_$ComponentQuality(case,comp_,qual_), 1);
   pool(pool_) = PoolSize(case,pool_);
   pro (pro_ ) = ProductData(case,pro_,'up');


   // extract data

   cl(comp)         = ComponentData(case,comp,'lo');
   cu(comp)         = ComponentData(case,comp,'up');
   cprice(comp)     = ComponentData(case,comp,'price');
   cqual(comp,qual) = ComponentQuality(case,comp,qual);

   prl(pro)        = ProductData(case,pro,'lo');
   pru(pro)        = ProductData(case,pro,'up');
   pprice(pro)     = ProductData(case,pro,'price');
   pqlbd(pro,qual) = ProductQualityLower(case,pro,qual);
   pqubd(pro,qual) = ProductQualityUpper(case,pro,qual);

   psize(pool)     = PoolSize(case,pool);

   // find domain restrictions

   y_dom(pool,pro)       = PoolProductBound(case,pool,pro);
   z_dom(comp,pro)       = ComponentProductBound(case,comp,pro);
   q_dom(comp,pool)      = ComponentPoolFraction(case,comp,pool);
   qy_dom(comp,pool,pro) = q_dom(comp,pool)*y_dom(pool,pro);

   option clear=q,clear=y,clear=z;  // start from same default point
   option clear=obj,clear=clower,clear=cupper,clear=pszrlt,clear=plower,clear=pupper
          clear=pqlower,clear=pqupper,clear=fraction,clear=extensions;

   // set variable bounds

   q.up(comp,pool) = ComponentPoolFraction(case,comp, pool);
   y.up(pool,pro)  = PoolProductBound(case,pool,pro);
   z.up(comp,pro)  = ComponentProductBound(case,comp,pro);

   // loacl solvers need a better starting point than 0*0
   // anything better than 0 will do, without this starting
   // point, most local solvers will give very poor results or
   // get stuck at a local stationary point

   q.l(comp,pool) = 0.1;
   y.l(pool,pro)  = 0.1;
   z.l(comp,pro)  = 0.1;

   solve poolprob minimizing cost using nlp;

   rep1(case, 'RawMat')    = card(comp);
   rep1(case, 'Products')  = card(pro);
   rep1(case, 'Qualities') = card(qual);
   rep1(case, 'Pools')     = card(pool);
   rep1(case, 'Equs')      = poolprob.numequ;
   rep1(case, 'Vars')      = poolprob.numvar;
   rep1(case, 'NZ')        = poolprob.numnz;

   rep2(case, 'Solstat')   = poolprob.solvestat;
   rep2(case, 'Modstat')   = poolprob.modelstat;
   rep2(case, 'Obj')       = poolprob.objval;
   rep2(case, 'CPU')       = poolprob.resusd;

);

rep2(case,'GlobalObj') = sol(case);
rep2(case,'optcr')$(abs(sol(case)) > 1e-6)= round(abs((rep2(case,'Obj') - sol(case))/sol(case)),6);
rep2(case,'optca')$(abs(sol(case)) > 1e-6)= round(abs(rep2(case,'Obj') - sol(case)),6);

display rep1, rep2;
