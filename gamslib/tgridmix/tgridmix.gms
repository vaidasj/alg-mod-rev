option LP=convert;
option LP=convert;
option LP=convert;
$title Grid/MT Transportation Problem with Single Submit and Collect Loop (TGRIDMIX,SEQ=391)
$Ontext

This problem finds a least cost shipping schedule that meets
requirements at markets and supplies at factories.

The model demonstrates how to run multiple scenarios with different
demands in a parallel fashion using the GAMS asynchronous grid and
threads facility. This model submits and collects jobs in a single
loop. This allows to control the total number of active jobs during
the entire execution.


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

transport.limcol    = 0;
transport.limrow    = 0;
transport.solprint  = %solprint.Quiet%;
$if not set threads $set threads 4
option threadsAsync=%threads%;

set  s           scenarios          / 1*10 /
     sl          solvelink          / Threads, Grid  /
     nexS(s)     next job to submit
     actS(s)     active jobs
     colS(s)     collected jobs
parameter
     slnum(sl)   solvelink number / Threads %solvelink.AsyncThreads%
                                    Grid    %solvelink.AsyncGrid% /
     dem(s,j)    random demand
     h(s)        store the instance handle
     repx        solution report
     repy        summary report
     maxS        maximum number of active jobs /%threads%/
     tStart      time stamp;


dem(s,j)= b(j)*uniform(.95,1.15); // create some random demands
loop(sl,
  tStart = jnow;
  repy(sl,s,'solvestat') = na;
  repy(sl,s,'modelstat') = na;
  actS(s) = no; h(s) = 0; nexS(s) = sameas('1',s);
  transport.solvelink = slnum(sl);

  repeat
     while (card(actS)<maxS and card(nexS),
        loop(nexS(s),
           b(j) = dem(s,j)
           Solve transport using lp minimizing z;
           h(s) = transport.handle;
           actS(s) = yes;
        );
        nexS(s) = nexS(s-1); // advance nexS
     );
     colS(s) = no;
     display$ReadyCollect(h) 'Waiting for next instance to collect';
     loop(actS(s)$handlecollect(h(s)),
        repx(sl,s,i,j) = x.l(i,j);
        repy(sl,s,'solvestat') = transport.solvestat;
        repy(sl,s,'modelstat') = transport.modelstat;
        repy(sl,s,'resusd'   ) = transport.resusd;
        repy(sl,s,'objval')    = transport.objval;
        display$handledelete(h(s)) 'trouble deleting handles' ;
        colS(s) = yes; h(s) = 0;
     ); actS(colS) = no;
  until (card(nexS)=0 and card(actS) = 0) or timeelapsed > 10;  // wait until all models are loaded
  repy(sl,'time','elapsed') = (jnow - tStart)*3600*24;
  abort$sum(s$(repy(sl,s,'solvestat')=na),1) 'Some jobs did not return';
);
display repx, repy;
