Set
   i / seattle,  san-diego /
   j / new-york, chicago, topeka /;
Parameter
   a(i)
        / seattle    350
          san-diego  600 /

   b(j)
        / new-york   325
          chicago    300
          topeka     275 /;
Table d(i,j)
              new-york  chicago  topeka
   seattle         2.5      1.7     1.8
   san-diego       2.5      1.8     1.4;
Scalar f / 90 /;
Parameter c(i,j);
c(i,j) = f*d(i,j)/1000;
Variable
   x(i,j)
   z ;
Positive Variable x;
Equation
   cost
   supply(i)
   demand(j)
cost..      z =e= sum((i,j), c(i,j)*x(i,j));
supply(i).. sum(j, x(i,j)) =l= a(i);
demand(j).. sum(i, x(i,j)) =g= b(j);
Model transport / all /;