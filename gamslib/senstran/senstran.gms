option LP=convert;
option LP=convert;
option LP=convert;
$Title  Sensitivity analysis using LOOPS (SENSTRAN,SEQ=106)

$Ontext

  This problem performs sensitivity analysis on the TRNSPORT
  problem. The basic model is taken from the GAMS model
  library. A separate model is solved for each variation of the
  transport cost matrix. The transport cost on each link is raised
  and lowered by 30 percent and the shipment patterns are either
  saved in a GAMS data table or written to file for further analysis
  by a statistical system.


Dantzig, G B, Chapter 3.3. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext


  Sets
       i   canning plants   / seattle, san-diego /
       j   markets          / new-york, chicago, topeka / ;

  Parameters

       a(i)  capacity of plant i in cases
         /    seattle     350
              san-diego   600 /

       b(j)  demand at market j in cases
         /    new-york    325
              chicago     300
              topeka      275  /


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

$Stitle sensitivity part for trnsport
$Eolcom !

Alias (i,ip),(j,jp);

Scalar    sens     sensitivity value                / .3 /
          pors     put or save option save=0 put=1  / 0 /
          counter  maximum number of problems       /  2 /
Parameter report(*,ip,jp,i,j)  summary results ;
File      repdat sensitivity data report file ;

Option limcol=0,limrow=0,solprint=off;

pors    = 1;    ! write file
counter = 2;    ! set to inf to run all problems

If(pors,
   repdat.nw = 5; repdat.nd = 0; repdat.lw=11;
   Put repdat "low/high i          j                  x(i,j)" /);

counter = 10;
Loop((ip,jp)$counter, counter = counter-1;
   c(ip,jp) = c(ip,jp)*(1-sens);             ! reduce cell
   Solve transport using lp minimizing z ;   ! solve model
   If(pors,
      Put / "low      ",ip.tl,jp.tl;         ! write
      Loop((i,j),                            !    solution
         Put x.l(i,j) );                     !       one solve per line
   Else
      report("low",ip,jp,i,j) = x.l(i,j));   ! save results
   c(ip,jp) = c(ip,jp)/(1-sens)*(1+sens);    ! increase cell
   Solve transport using lp minimizing z ;   ! solve model
   c(ip,jp) = c(ip,jp)/(1+sens);             ! reset cell
   If(pors,
      Put / "high     ",ip.tl,jp.tl;         ! write
      Loop((i,j),                            !    solution
         Put x.l(i,j) );                     !       one solve per line
   Else
      report("high",ip,jp,i,j) = x.l(i,j)) );! save results

If(not pors,
   Option report:3:3:2;  Display report );

