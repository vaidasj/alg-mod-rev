$Title Include data set 2 for model csched


set k subcycles      / 0*10 /
    kzero(k)         / 0 /
    i furnaces       / 1*4  /
    j feeds          / A,B,C,D,E,F,G  /;

scalar U upper bound on processing time / 100    /
       epsi "small const to avoid 0/0"  /   0.01 /;

Table tau(i,j) "changeover time [days]"
                A       B       C       D       E       F       G
        1       2       3       3       3       1       2       3
        2       3       1       2       2       2       1       1
        3       1       3       1       1       2       1       2
        4       2       1       3       2       2       1       1 ;

Table D(i,j) "processing rate [tons/day]"
                A       B       C       D       E       F       G
        1       1300    1200    1100    800     1300    300     700
        2       1100    1050    1000    1000    1200    400     600
        3       900     800     800     1200    1000    300     850
        4       1200    1000    800     700     1200    400     600 ;

Table a(i,j) "conversion parameters [1/day]"
                A       B       C       D       E       F       G
        1       0.3     0.4     0.35    0.32    0.29    0.35    0.31
        2       0.32    0.38    0.33    0.31    0.28    0.4     0.34
        3       0.31    0.35    0.36    0.36    0.29    0.37    0.31
        4       0.31    0.36    0.35    0.36    0.28    0.39    0.32 ;

Table b(i,j) "conversion parameter [1/day]"
                A       B       C       D       E       F       G
        1       0.1     0.2     0.1     0.2     0.23    0.34    0.20
        2       0.2     0.1     0.2     0.25    0.29    0.27    0.30
        3       0.3     0.2     0.3     0.27    0.28    0.29    0.25
        4       0.2     0.2     0.15    0.25    0.29    0.22    0.28 ;

Table c(i,j) "conversion parameter [1/day]"
                A       B       C       D       E       F       G
        1       0.20    0.18    0.21    0.20    0.3     0.26    0.16
        2       0.21    0.19    0.23    0.25    0.31    0.27    0.17
        3       0.19    0.18    0.21    0.23    0.30    0.25    0.18
        4       0.20    0.19    0.21    0.24    0.31    0.26    0.17 ;

Table p(i,j) "price parameter [$/ton]"
                A       B       C       D       E       F       G
        1       123     105     110     123     105     110     120
        2       114     132     129     114     132     129     113
        3       110     122     120     110     122     120     117
        4       120     125     129     115     115     128     115 ;

Table Cs(i,j) "setup/cleaning cost [$]"
                A       B       C       D       E       F       G
        1       100     90      80      75      90      93      78
        2       80      85      75      90      94      78      70
        3       90      90      90      85      93      92      75
        4       80      90      85      80      92      85      72 ;

Parameter Flo(j) lower bnd on flow rate /
  A  300, B  400, C  300, D  500, E  500, F  100, G  600
                                            /
          Fup(j) upper bnd on flow rate /
  A  600, B  700, C  600, D  800, E  800, F  400, G  900
                                            /;


$ontext
* Solution of value 165398.7013
* optimum is at least 166101.9... found by sbb/conopt1
y.fx(i,j,k) = 0;
y.fx("1" ,"A" , "1") = 1;
y.fx("1" ,"B" , "0") = 1;
y.fx("1" ,"C" , "1") = 1;
y.fx("1" ,"D" , "0") = 1;
y.fx("1" ,"E" , "2") = 1;
y.fx("1" ,"F" , "0") = 1;
y.fx("1" ,"G" , "0") = 1;
y.fx("2" ,"A" , "0") = 1;
y.fx("2" ,"B" , "4") = 1;
y.fx("2" ,"C" , "0") = 1;
y.fx("2" ,"D" , "0") = 1;
y.fx("2" ,"E" , "1") = 1;
y.fx("2" ,"F" , "0") = 1;
y.fx("2" ,"G" , "0") = 1;
y.fx("3" ,"A" , "0") = 1;
y.fx("3" ,"B" , "0") = 1;
y.fx("3" ,"C" , "0") = 1;
y.fx("3" ,"D" , "3") = 1;
y.fx("3" ,"E" , "0") = 1;
y.fx("3" ,"F" , "0") = 1;
y.fx("3" ,"G" , "1") = 1;
y.fx("4" ,"A" , "0") = 1;
y.fx("4" ,"B" , "0") = 1;
y.fx("4" ,"C" , "0") = 1;
y.fx("4" ,"D" , "0") = 1;
y.fx("4" ,"E" , "1") = 1;
y.fx("4" ,"F" , "1") = 1;
y.fx("4" ,"G" , "2") = 1;
$offtext

