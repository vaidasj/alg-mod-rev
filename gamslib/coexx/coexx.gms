option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Peacefully Coexisting Armies of Queens - tight (COEXX,SEQ=218)
$Ontext
 This is a tighter formulation than the original COEX problem.
 We have set the size of the board to 5 in order to find
 solutions quickly. In addition we fix the position of one queen.

 Two armies of queens (black and white) peacefully coexist on a
 chessboard when they are placed on the board in such a way that
 no two queens from opposing armies can attack each other. The
 problem is to find the maximum two equal-sized armies.


Bosch, R, Mind Sharpener. OPTIMA MPS Newsletter (2000).

$Offtext

$eolcom !
Sets i  size of chess board     / 1* 5 /    ! use 8 for chess (13)
     s  diagonal offsets        / 1* 7 /    ! 2i-3 diagonals

scalar idiags correct size of s; idiags = 2*card(i) - 3;
abort$(card(s) <> idiags) 's has incorrect size',idiags;

Alias (i,j)

Parameter sh(s)    shift values for diagonals
          rev(s,i) reverse shift order;

sh(s)  = ord(s) - card(i) + 1 ;
rev(s,i) = card(i) + 1 - 2*ord(i) + sh(s);

Binary Variable xw(i,j) has a white queen
                xb(i,j) has a black queen
                wa(i)   white in row i
                wb(i)   white in column j
                wc(s)   white in diagonal s
                wd(s)   white in backward diagonal s;
       Variable tot;

Equations aw(i,j) white in row i
          bw(j,i) white in column j
          cw(s,i) white in diagonal s
          dw(s,i) white in backward diagonal s
          ew      total white
          ab(i,j) black in row i
          bb(j,i) black in column j
          cb(s,i) black in diagonal s
          db(s,i) black in backward diagonal s
          eb      total black;

aw(i,j).. wa(i) =g=  xw(i,j);

bw(j,i).. wb(j) =g=  xw(i,j);

cw(s,i).. wc(s) =g=  xw(i,i+sh(s));

dw(s,i).. wd(s) =g= xw(i,i+rev(s,i));

ab(i,j).. 1-wa(i) =g= xb(i,j);

bb(j,i).. 1-wb(j) =g= xb(i,j);

cb(s,i).. 1-wc(s) =g= xb(i,i+sh(s));

db(s,i).. 1-wd(s) =g= xb(i,i+rev(s,i));

eb..  tot =e= sum((i,j), xb(i,j));

ew..  tot =e= sum((i,j), xw(i,j));


Model army / all /;

option limcol=0,limrow=0;

xb.fx('1','1') = 1; ! fix one position in the NW corner

Solve army maximizing tot using mip;
