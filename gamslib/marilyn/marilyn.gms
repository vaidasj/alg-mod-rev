option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Numerical Puzzle (MARILYN,SEQ=193)
$ontext
Place the digits 1 trough 8 in eight circles connected shown below, but
with one restriction: Any two circles next to each other must have digits
assigned that are not serial.

                   1
                  /| \
                 2-3-4
                 |X|X|
                 5-6-7
                  \|/
                   8


Savant, M, Ask Marilyn, 1988. Parade, May 23

$offtext
sets c circles / c1*c8 /

     net(c,c)  / c1.(c2,c3,c4)
                 c2.(c3,c5,c6)
                 c3.(c4,c5,c6,c7)
                 c4.(c6,c7)
                 c5.(c6,c8)
                 c6.(c7,c8)
                 c7.c8               /

alias(c,cc);

net(c,cc) = net(c,cc) + net(cc,c);

integer variable x(c)      digits to be placed in circles
binary  variable ll(c,cc)  less or greater indicator
                 y(c,cc)   digit assignment
        variable dummy;

equations less(c,c)     links having smaller neighbors
          more(c,cc)    links having larger neighbors
          cross(c,cc)   links are one way or the other
          digit(c)      assignment of digits to circles
          rowsum(c)     assignment condition 1
          colsum(c)     assignment condition 2
          obj;

x.lo(c) = 1; x.up(c) = 8;

*       distance to neighbor at least 2
*
*  neighbor(net(c,cc))..  abs(x(cc)-x(c)) =g= 2;
*
less(net(c,cc))..  x(cc) =l= x(c) - 2 + 9*ll(c,cc);
more(net(c,cc))..  x(cc) =g= x(c) + 2 - 9*ll(cc,c);
cross(net(c,cc)).. ll(c,cc) + ll(cc,c) =e= 1;

* assign  the values of 1,2,..8 to x
*
*   digit(c).. sum(cc, x(cc)=ord(c)) =e= 1;
*
digit(c).. x(c) =e= sum(cc, ord(cc)*y(c,cc));
rowsum(c).. sum(cc, y(c,cc)) =e= 1;
colsum(c).. sum(cc, y(cc,c)) =e= 1;

obj.. dummy =e= sum(c, x(c));

* obj below is very slow on some systems
* obj.. dummy =e= sum(c, ord(c)*x(c));

model m / all /;

* use bbpreproc for osl

solve m us mip min dummy;
