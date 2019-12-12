option LP=convert;
option LP=convert;
option LP=convert;
$Title Opencast Mining   (MINE,SEQ=39)

$Ontext

This model finds an optimal extraction schedule for an opencast mine
with a side angle of 45 degrees and square plots. The extraction blocks
are identified by level, row and column number, with the surface blocks
having level number one.


Williams, H P, Model Building in Mathematical Programming. John Wiley
and Sons, 1978.

$Offtext


 Set l identifiers for level row and column labels  / 1*4 /;
 Alias(l,i,j);


 Table conc(l,i,j)  estimated ore concentration (percent metal)

                    1    2    3    4

          1.1     1.5  1.5  1.5  .75
          1.2     1.5  2.0  1.5  .75
          1.3     1.0  1.0  .75  .50
          1.4     .75  .75  .50  .25

          2.1       4    4    2
          2.2       3    3    1
          2.3       2    2   .5

          3.1      12    6
          3.2       5    4

          4.1       6

 Sets  k         location of four neighboring blocks / nw, "ne", se, sw /
       c(l,i,j)  neighboring blocks related to extraction feasibility
       d(l,i,j)  complete set of block identifiers

 Parameters li(k)   lead for i  / (se,sw)  = 1 /
            lj(k)   lead for j  / ("ne",se) = 1 /
            cost(l) block extraction cost  / 1=3000, 2=6000, 3=8000, 4=10000 /

 Scalar value  extracted block value if 100 percent metal / 200000 / ;

 c(l,i,j) = yes$((ord(l) + ord(i)) le card(l) and (ord(l) + ord(j)) le card(l)); display c;
 d(l,i,j) = yes$(ord(l) + ord(i) le card(l) + 1 and ord(l) + ord(j) le card(l) + 1); display d;

 Variables x(l,i,j)   extraction of blocks
           profit

 Positive Variable x

 Equations pr(k,l,i,j)  precedence relationships
           def          profit definition ;

 def.. profit =e= sum((l,i,j)$d(l,i,j), (conc(l,i,j)*value/100 - cost(l))*x(l,i,j)) ;

 pr(k,l+1,i,j)$c(l,i,j).. x(l,i+li(k),j+lj(k)) =g= x(l+1,i,j);

 x.up(l,i,j) = 1;

 Model mine /all/ ;
 Solve mine maximizing profit using lp;

 Parameter rep(i,j,l) extraction decision table;
 rep(i,j,l) = x.l(l,i,j);
 Display rep;
