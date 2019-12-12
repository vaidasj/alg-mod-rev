option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Peacefully Coexisting Armies of Queens (COEX,SEQ=219)
$Ontext
 Two armies of queens (black and white) peacefully coexist on a
 chessboard when they are placed on the board in such a way that
 no two queens from opposing armies can attack each other. The
 problem is to find the maximum two equal-sized armies.


Bosch, R, Mind Sharpener. OPTIMA MPS Newsletter (2000).

$Offtext

Sets i  size of chess board  / 1*8 /

Alias (i,j,ii,jj)

set M(i,j,ii,jj) shared positions on the board;

M(i,j,ii,jj) = (ord(i)=ord(ii)) or
               (ord(j)=ord(jj)) or
               (abs(ord(i)-ord(ii))=abs(ord(j)-ord(jj)));

Binary Variables b(i,j) square occupied by a black Queen
                 w(i,j) square occupied by a white Queen
       Variable  tot    total queens in each army;

Equations eq1(i,j,ii,jj) keeps armies at peace
          eq2            add up all the black queens
          eq3            add up all the white queens;


eq1(m(i,j,ii,jj)).. b(i,j) + w(ii,jj) =l= 1;

eq2.. tot =e= sum((i,j), b(i,j));

eq3.. tot =e= sum((i,j), w(i,j));

model armies / all /;

option limcol=0,limrow=0;

$ontext
* solution reported in OPTIMA
b.fx('6','2') = 1;
b.fx('7','2') = 1;
b.fx('8','2') = 1;
b.fx('7','1') = 1;
b.fx('8','1') = 1;
b.fx('7','6') = 1;
b.fx('8','6') = 1;
b.fx('7','7') = 1;
b.fx('8','7') = 1;
$offtext

solve armies maximizing tot using mip;

