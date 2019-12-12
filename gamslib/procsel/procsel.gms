option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Structural Optimization of Process Flowsheets (PROCSEL,SEQ=116)

$Ontext

   The goal is the profitable production of chemical C.
   which can be produced from chemical B where B may be
   the raw material that can be purchased from the
   external market or an intermediate that is produced
   from raw material A. There are two alternative paths
   of producing B from A. A mixed-integer nonlinear
   formulation is presented to solve the optimal
   production and capacity expansion problem.


Kocis, G R, and Grossmann, I E, Relaxation Strategy for the Structural
Optimization of Process Flow Sheets. Independent Engineering Chemical
Research 26, 9 (1987), 1869-1880.

Morari, M, and Grossmann, I E, Eds, Chemical Engineering Optimization
Models with GAMS. Computer Aids for Chemical Engineering Corporation,
1991.

   Process flowsheet


         A2    +-----+  B2      BP
        +----->|  2  |----->+    |
   A    |      +-----+      |    |  B1    +-----+    C1
   ---->|                   +----+------->|  1  |-------->
        |      +-----+      |             +-----+
        +----->|  3  |----->+
         A3    +-----+  B3


$Offtext

$Eolcom !


 Positive Variables
    a2    consumption of chemical a in process 2
    a3    consumption of chemical a in process 3
    b2    production capacity of chemical b in process 2
    b3    production capacity of chemical b in process 3
    bp    amount of chemical b purchased in external market
    b1    consumption of chemical b in process 1
    c1     production capacity of chemical c in process 1 ;

 Binary Variables
    y1    denotes potential existence of process 1
    y2    denotes potential existence of process 2
    y3    denotes potential existence of process 3  ;

 Variable
    pr    total profit in million $ per year ;



 Equations
    inout1   input-output for process 1
    inout2   input-output for process 2
    inout3   input-output for process 3
    mbalb    mass balance for chemical b
    log1     logical constraint for process 1
    log2     logical constraint for process 2
    log3     logical constraint for process 3
    obj      profit objective function ;


* the original constraint for inout2 is b2 = log(1+a2)
* but this has been convexified to the form used below.
* the same is true for inout3. so b2 and b3 are the
* output variables from units 2 and 3 respectively

 inout1..  c1 =e= 0.9*b1 ;
 inout2..  exp(b2) - 1 =e=  a2 ;
 inout3..  exp(b3/1.2) - 1 =e= a3 ;

 mbalb..   b1 =e= b2 + b3 + bp ;

 log1..   c1  =l= 2*y1 ;
 log2..   b2  =l= 4*y2 ;
 log3..   b3  =l= 5*y3 ;

 obj..    pr =e=   11*c1                 ! sales revenue
                 - 3.5*y1 - y2 - 1.5*y3  ! fixed investment cost
                 - b2 - 1.2*b3           ! operating cost
                 - 1.8*(a2+a3) - 7*bp ;  ! purchases


* demand constraint on chemical c based on market requirements

  c1.up = 1;


 Model process /all/ ;

 Solve process maximizing pr using minlp ;
