option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title House Plan Design (HOUSE,SEQ=99)

$Ontext

   This problem designs the size of an L shaped house
   meeting limitations imposed by city codes and aesthetic
   considerations.


Borland, Eureka: The Solver. Tech. rep., Borland International, 1987.

$Offtext

Variables x  width of front wing  (ft)
          y  length of front wing (ft)
          z  length of second story (ft)
          b  total house width    (ft)
          a  length of back wing  (ft)
          l  total house length   (ft)
          a1 area of first floor      (sq ft)
          a2 area of the second floor (sq ft)
          ta total area of the house  (sq ft)

Equations defa1  definition of first floor area  (sq ft)
          defa2  definition of second floor area (sq ft)
          defta  definition of total floor area  (sq ft)
          defl   definition of total house length(ft)
          minw   front wing minimum width        (ft)
          maxw   front wing maximum width        (ft)
          minp   minimum pool area               (sq ft)
          balk   balcony size restriction       (ft)
          prop   wing proportionality            (ft) ;

defa1.. a1 =e= x*y + a*b;  defa2.. a2 =e= x*z;

defta.. ta =e= a1 + a2;

minw..  x =g= b/3;  maxw..  x  =l= b/2;

minp..  y*(b - x) =g= 1500;

defl..  l =e= y + a;

balk..  z =e= a + y/2; prop.. a =g= y/2;

b.lo  =   40; b.up = 68; l.lo = 56; l.up = 100; a1.up = 3000;

b.l=68; x.l=30;

Model house /all/; Solve house maximizing ta using nlp;

