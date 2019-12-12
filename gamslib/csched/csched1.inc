$Title Include data set 1 for model csched


set k subcycles      / 0*20 /
    kzero(k)         / 0 /
    i furnaces       / 1 /
    j feeds          / A,B,C /;

scalar U upper bound on processing time / 150    /
       epsi "small const to avoid 0/0"  /   0.01 /;

Table tau(i,j) "changeover time [days]"
                A       B       C
        1       2       3       3;

Table D(i,j) "processing rate [tons/day]"
                A       B       C
        1       1300    1000    1100;

Table a(i,j) "conversion parameters [1/day]"
                A       B       C
        1       0.2     0.18    0.19;

Table b(i,j) "conversion parameter [1/day]"
                A       B       C
        1       0.1     0.13    0.09;

Table c(i,j) "conversion parameter [1/day]"
                A       B       C
        1       0.18    0.1     0.12;

Table p(i,j) "price parameter [$/ton]"
                A       B       C
        1       160     90      120;

Table Cs(i,j) "setup/cleaning cost [$]"
                A       B       C
        1       100     90      80;

Parameter Flo(j) lower bnd on flow rate / A  350, B  300, C  300 /
          Fup(j) upper bnd on flow rate / A  650, B  600, C  600 /;

