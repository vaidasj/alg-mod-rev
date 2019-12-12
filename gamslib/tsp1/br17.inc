
* TSP data and incomplete TSP model. The data is problem br17 from TSPLIB.
* (http://www.iwr.uni-heidelberg.de/iwr/comopt/soft/TSPLIB95/TSPLIB.html)

set ii    cities / i1*i17 /
    i(ii) subset of cities
alias (ii,jj),(i,j,k);

table c(ii,jj) cost coefficients (br17 from TSPLIB)
     i1  i2  i3  i4  i5  i6  i7  i8  i9  i10 i11 i12 i13 i14 i15 i16 i17
i1        3   5  48  48   8   8   5   5   3   3   0   3   5   8   8   5
i2    3       3  48  48   8   8   5   5   0   0   3   0   3   8   8   5
i3    5   3      72  72  48  48  24  24   3   3   5   3   0  48  48  24
i4   48  48  74       0   6   6  12  12  48  48  48  48  74   6   6  12
i5   48  48  74   0       6   6  12  12  48  48  48  48  74   6   6  12
i6    8   8  50   6   6       0   8   8   8   8   8   8  50   0   0   8
i7    8   8  50   6   6   0       8   8   8   8   8   8  50   0   0   8
i8    5   5  26  12  12   8   8       0   5   5   5   5  26   8   8   0
i9    5   5  26  12  12   8   8   0       5   5   5   5  26   8   8   0
i10   3   0   3  48  48   8   8   5   5       0   3   0   3   8   8   5
i11   3   0   3  48  48   8   8   5   5   0       3   0   3   8   8   5
i12   0   3   5  48  48   8   8   5   5   3   3       3   5   8   8   5
i13   3   0   3  48  48   8   8   5   5   0   0   3       3   8   8   5
i14   5   3   0  72  72  48  48  24  24   3   3   5   3      48  48  24
i15   8   8  50   6   6   0   0   8   8   8   8   8   8  50       0   8
i16   8   8  50   6   6   0   0   8   8   8   8   8   8  50   0       8
i17   5   5  26  12  12   8   8   0   0   5   5   5   5  26   8   8
*
* for computational work with simple minded
* algorithm we can restrict size of problem
* and define the model over a subset of all cities.
*
*
variables x(ii,jj)  decision variables - leg of trip
          z         objective variable;
binary variable x;

equations objective   total cost
          rowsum(ii)  leave each city only once
          colsum(jj)  arrive at each city only once;
*
*
* the assignment problem is a relaxation of the TSP
*
objective.. z =e= sum((i,j), c(i,j)*x(i,j));

rowsum(i).. sum(j, x(i,j)) =e= 1;
colsum(j).. sum(i, x(i,j)) =e= 1;

* exclude diagonal
*
x.fx(ii,ii) = 0;


