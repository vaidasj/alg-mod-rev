option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Maximum Queens Chess Problem  (QUEENS,SEQ=103)
$Eolcom !

$Ontext

   This model finds all possible ways to arrange eight queens on a chess
   board in such a way that no two queens check against any other queen.
   The solution proceeds in two steps. In the first step, we find any
   solution. In the second step we find all solutions by adding cuts to
   to the original problem set. Finally, a reporting step is added
   to print all solutions found. This problem has a long history. In 1850
   it was investigated by C.F. Gauss, but he was unable to solve it
   completely. There are 92 possible solutions.


Dudeney, H E, Amusements in Mathematics. Dover, New York, 1970.

Beauvais, J, Solving the Maximum Queens Chess Problem with OSL. IBM
Kingston, EKKNEWS 2 (1991).

$Offtext

Sets i  size of chess board     / 1*8 /
     s  diagonal offsets        / 1*13 /   ! 2i-3 diagonals
Alias (i,j)

Parameter sh(s) shift values for diagonals
          rev(i) reverse order;

sh(s)  = ord(s) - card(i) + 1 ;
rev(i) = card(i) + 1 - 2*ord(i);
Display sh, rev;

Binary Variable x(i,j) square occupied by Queen
       Variable tot    total squares occupied by queens

Equations a(i)  no to queens may be in the same rank
          b(j)  no to queens may be in the same file
          c(s)  no to queens may be in the same diagonal (forward)
          d(s)  no to queens may be in the same diagonal (backward)
          obj   objective definition ;

a(i).. sum(j, x(i,j)) =e= 1;

b(j).. sum(i, x(i,j)) =e= 1;

c(s).. sum(i, x(i,i+sh(s))) =l= 1;

d(s).. sum(i, x(i,i+(rev(i)+sh(s)))) =l= 1;

obj..  tot =e= sum((i,j), x(i,j));

Model queen1 first model for queens / all /;

Option optcr = 0;

Solve queen1 maximizing tot using mip;

$Stitle Find all remaining solutions

Sets nn    max number of solutions groups / 1*20 /
     n(nn) dynamic set for solution groups
     t     multiple solutions via rotations and reflections /
           found       original solution
           rot-90      original solution rotated  90 degrees
           rot-180     original solution rotated 180 degrees
           rot-270     original solution rotated 270 degrees
           ref-h       original solution reflected horizontally
           ref-v       original solution reflected vertically
           ref-r       original solution reflected diagonally main
           ref-l       original solution reflected diagonally back   /

Scalar    saverow, coloff;
Parameter cutval all possible solutions for cut generation;

Equation cut(nn,t)  known solutions to be eliminated;

cut(n,t).. sum((i,j), cutval(n,t,i,j)*x(i,j)) =l= card(i)-1;

Model queens queens model with cuts / all /;

Option limrow=0, limcol=0, solprint=off;


n(nn) = no;  ! clear set of cuts

queens.solvestat = %solvestat.NormalCompletion%;
queens.modelstat = %modelstat.Optimal%;

Loop(nn$(queens.solvestat=%solvestat.NormalCompletion% and
         queens.modelstat=%modelstat.Optimal%),

   n(nn) = yes;   ! add element to set

   cutval(nn,'found'   ,i,j) = x.l(i       ,j       );
   cutval(nn,'rot-90'  ,i,j) = x.l(j+rev(j),i       );
   cutval(nn,'rot-180' ,i,j) = x.l(i+rev(i),j+rev(j));
   cutval(nn,'rot-270' ,i,j) = x.l(j       ,i+rev(i));
   cutval(nn,'ref-h'   ,i,j) = x.l(i+rev(i),j       );
   cutval(nn,'ref-v'   ,i,j) = x.l(i       ,j+rev(j));
   cutval(nn,'ref-r'   ,i,j) = x.l(j       ,i       );
   cutval(nn,'ref-l'   ,i,j) = x.l(j+rev(j),i+rev(i));

   Solve queens maximizing tot using mip;    )

Option cutval:0:3:1; display cutval;

$Stitle Write solution report to PUT file

File   queen report file for solution groups ; put queen; queen.pc=3;
Scalar saverow  row position to start second report column
       coloff   column offset for board displays;

Puttl 'Queens Solution Summary        ' system.date ' ' system.time
Loop(n(nn),
   Putpage;
   Put @12 // 'Solution Number ' ord(nn):3:0 ' of ' card(n):<3:0 ;
   saverow = file.cr; coloff = 1;
   Loop(t,
      if(ord(t)=5,
         file.cr = saverow;
         coloff  = 31);
      Put // @coloff 'Type = ' t.tl // @(coloff+2) ;
      Loop(j,
         Put j.tl:>2);
      Loop(i,
         Put / @coloff i.tl:>2;
         Loop(j,
            If(cutval(n,t,i,j),
               Put ' x'
             Else Put '  ' ) ) ) ) );

