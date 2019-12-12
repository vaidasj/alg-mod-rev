option LP=convert;
option LP=convert;
option LP=convert;
$Title UIMP - Production Scheduling Problem   (UIMP,SEQ=11)

$ontext

A company manufactures nuts, bolts and washers using three different machines
that can be operated in normal or overtime production mode. The company
needs to plan operations for the next two periods.


Ellison, E F D, and Mitra, P, UIMP - User Interface for Mathematical
Programming. ACM Transactions on Mathematical Software 8, 2 (1982).

$Offtext

 Sets  i  time periods       / summer, winter /
       j  production mode    / normal, overtime /
       k  products           / nuts, bolts, washers /
       l  machines           / m1, m2, m3 /


 Table  mh(l,k)  machine hours (hours per unit)

       nuts  bolts  washers
  m1    4     4       6
  m2    7     6       6
  m3    3


 Table mhadd(i,j) addfactors for mh

             normal  overtime
 summer                 -1
 winter        +1


 Table  av(l,j)  availability  (hours)

         normal  overtime
   m1     100       80
   m2     100       90
   m3      40       30

 Parameter t(i,j,k,l)  machine hours required
            a(i,j,l)    machine hours available;

  t(i,j,k,l) = mh(l,k) + mhadd(i,j)$mh(l,k) ;
  t("winter","overtime","washers","m1") = 5;

  a("summer",j,l) = av(l,j); a("winter",j,l) = av(l,j) + 10;

 Display mh, mhadd, av, t, a;


 Table tc(l,k)  production cost data

        nuts  bolts  washers
 m1      2      3       4
 m2      4      3       2
 m3      1


 Table tcadd(i,j) addfactors for tc

              normal  overtime
 summer                  1
 winter          1       2


 Parameter c(i,j,k,l)  production cost ;

  c(i,j,k,l) = tc(l,k) + tcadd(i,j)$tc(l,k);  display c;


 Table  p(i,k)  selling price

              nuts  bolts  washers
 summer       10     10      9
 winter       11     11     10

 Table  d(i,k)  demand

             nuts  bolts  washers
 summer      25     30      30
 winter      30     25      25


 Parameter s(k)   storage cost     / (nuts,bolts,washers) = 1  /
           h(k)   storage capacity / (nuts,bolts)         = 20 /



 Variables  x(i,j,k,l)  production
            y(i,k)      products stored
            z(i,k)      products sold
            cost, revenue, profit

 Positive Variables x, y ;

 Equations  pdef        profit definition
            cdef        cost definition
            rdef        revenue definition
            ma(i,j,l)   machine availability
            ib(i,k)     inventory balance ;

 pdef.. profit =e= revenue - cost ;

 cdef.. cost =e= sum((i,k), s(k)*y(i,k) + sum((j,l), c(i,j,k,l)*x(i,j,k,l))) ;

 rdef.. revenue =e= sum((i,k), p(i,k)*z(i,k));

 ma(i,j,l)..    sum(k, t(i,j,k,l)*x(i,j,k,l)) =l= a(i,j,l) ;

 ib(i,k).. sum((j,l)$mh(l,k), x(i,j,k,l)) + y(i-1,k) =e= z(i,k) + y(i,k) ;

   z.lo(i,k) = d(i,k) ;  y.up(i,k) = h(k) ;

 Model uimp ellison mitra / all / ;

  Solve uimp maximizing revenue using lp ;
  Solve uimp maximizing profit using lp ;

 Parameter rep summary report ;

     rep(l,i,k)  =  sum(j, x.l(i,j,k,l));
     rep("demand",i,k) = d(i,k);
     rep("supply",i,k) = sum(l, rep(l,i,k));

 Display rep;
