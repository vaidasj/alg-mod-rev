option LP=convert;
option LP=convert;
option LP=convert;
$title Grid Transportation Problem (TRNSGRID,SEQ=315)
$Ontext

This problem finds a least cost shipping schedule that meets
requirements at markets and supplies at factories.

The model demonstrates how to run multiple scenarios with different
demands in a parallel fashion using the GAMS Grid Facility.


Dantzig, G B, Chapter 3.3. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

  Sets
       i   canning plants   / seattle, san-diego /
       j   markets          / new-york, chicago, topeka / ;

  Parameters

       a(i)  capacity of plant i in cases
         /    seattle     350
              san-diego   600  /

       b(j)  demand at market j in cases
         /    new-york    325
              chicago     300
              topeka      275  / ;

  Table d(i,j)  distance in thousands of miles
                    new-york       chicago      topeka
      seattle          2.5           1.7          1.8
      san-diego        2.5           1.8          1.4  ;

  Scalar f  freight in dollars per case per thousand miles  /90/ ;

  Parameter c(i,j)  transport cost in thousands of dollars per case ;

            c(i,j) = f * d(i,j) / 1000 ;

  Variables
       x(i,j)  shipment quantities in cases
       z       total transportation costs in thousands of dollars ;

  Positive Variable x ;

  Equations
       cost        define objective function
       supply(i)   observe supply limit at plant i
       demand(j)   satisfy demand at market j ;

  cost ..        z  =e=  sum((i,j), c(i,j)*x(i,j)) ;

  supply(i) ..   sum(j, x(i,j))  =l=  a(i) ;

  demand(j) ..   sum(i, x(i,j))  =g=  b(j) ;

  Model transport /all/ ;

$eolcom //

transport.solvelink = %solvelink.AsyncGrid%;  // turn on grid option
transport.limcol    = 0;
transport.limrow    = 0;
transport.solprint  = %solprint.Quiet%;

set s scenarios / 1*5 /;

parameter dem(s,j)  random demand
          h(s) store the instance handle;

dem(s,j)= b(j)*uniform(.95,1.15); // create some random demands

loop(s,
   b(j) = dem(s,j)
   Solve transport using lp minimizing z;
   h(s) = transport.handle );    // save instance handle

parameter repx(s,i,j) solution report
          repy        summary report;

repy(s,'solvestat') = na;
repy(s,'modelstat') = na;

* we use the handle parameter to indicate that the solution has been collected
repeat
   loop(s$handlecollect(h(s)),
      repx(s,i,j) = x.l(i,j);
      repy(s,'solvestat') = transport.solvestat;
      repy(s,'modelstat') = transport.modelstat;
      repy(s,'resusd'   ) = transport.resusd;
      repy(s,'objval')    = transport.objval;
      display$handledelete(h(s)) 'trouble deleting handles' ;
      h(s) = 0 ) ;    // indicate that we have loaded the solution
   display$sleep(card(h)*0.2) 'was sleeping for some time';
until card(h) = 0 or timeelapsed > 10;  // wait until all models are loaded

display repx, repy;

abort$sum(s$(repy(s,'solvestat')=na),1) 'Some jobs did not return';
