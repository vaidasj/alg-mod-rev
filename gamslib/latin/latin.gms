option MIP=convert;
option MIP=convert;
option MIP=convert;
$title The Orthogonal Latin-Square Problem (LATIN,SEQ=159)
$eolcom !
$Ontext
  A latin square is an arrangement of objects such that no object
  is repeated in a row or column. Two latin squares are orthogonal
  if all entries are different. For example,

          one     two
         1 3 2   2 1 3
         3 2 1   1 3 2
         2 1 3   3 2 1

  The case of n=10 has historical interest and was only settled in 1952.

  The original formulation is not correct. A new formulation
  is presented which generates a correct solution. Also note that the
  solution time is very sensitive to formulation details and depends on
  the kind of algorithm used.

  The size of the square can easily by changed by editing the lines
  containing the definitions of the rows, columns and values in the.
  set definition below. This kind of assignment problem can be very
  difficult to solve for general purpose MIP codes.


Dantzig, G B, Chapter 26.3. In Linear Programming and Extensions. Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

sets k  rows    / row-1*row-4/      ! change row-4 to new size
     l  columns / col-1*col-4/      ! change col-4 to new size
     v  values  / val-1*val-4/      ! change val-4 to new size

alias (i,j,v);

*  ORIGINAL FORMULATION
*
*  Note that the squares use k,l for row and column indexes. The first
*  index position (i) is for the values of square one and the second
*  index position (j) is for square two. For example, the cell 2,3
*  in the latin square shown above would be defined by the value of
*  one for the following index values:
*
*      x.fx('val-1','val-2','row-2',col-3') = 1;
*
*  The original formulation is not correct. For example, you can pick
*  any cell (k,l) and pick and make the cell values equal and the
*  model will find a feasible solution. For example, you could set:
*
*      x.fx('val-1','val-1','row-1','col-1') = 1;
*
*  and get a feasible solution. Both the original and a new formulation
*  are given.

variables x(i,j,k,l)  'pairs (i,j) allocated to cell(k,l)'
          z           some objective
binary variable x;

equations
   c1(i,j)   for each cell pick only one item pair
   c2(k,l)   an item pair can show up only once
   c3(i,l)   items have to be unique in each column for square one
   c4(j,l)   items have to be unique in each column for square two
   c5(i,k)   items have to be unique in each row for square one
   c6(j,k)   items have to be unique in each row for square two
   obj       some objective function;

c1(i,j)..     sum((k,l), x(i,j,k,l)) =e= 1;
c2(k,l)..     sum((i,j), x(i,j,k,l)) =e= 1;
c3(i,l)..     sum((j,k), x(i,j,k,l)) =e= 1;
c4(j,l)..     sum((i,k), x(i,j,k,l)) =e= 1;
c5(i,k)..     sum((j,l), x(i,j,k,l)) =e= 1;
c6(j,k)..     sum((i,l), x(i,j,k,l)) =e= 1;
obj..   z =e= sum((i,j,k,l), x(i,j,k,l));

model latin / all /;

parameter report(*,k,l); option report:0:1:1;

$ontext skip over old model

* force an incorrect solution
x.fx('val-1','val-1','row-1','col-1') = 1;

solve latin minimizing z using mip;


loop((i,j,k,l)$x.l(i,j,k,l),
   report('one',k,l) = ord(i);
   report('two',k,l) = ord(j); );

display report;

$offtext

*   NEW FORMULATION

set  s  square  / one, two /

variables  y(s,v,k,l)  'square s has value v in cell(k,l)'
           dev(v,k,l)  deviation from correct formulation
           w           some objective
binary variable y;

equations

   n2(s,k,l)   exactly one value for each cell
   n3(s,v,l)   columns entries have to be unique
   n5(s,v,k)   row entries have to be unique
   n6(v,k,l)   entries in squares have to be different
   nobj        definition of objective - anything ;

n2(s,k,l)..   sum(v, y(s,v,k,l)) =e= 1;
n3(s,v,l)..   sum(k, y(s,v,k,l)) =e= 1;
n5(s,v,k)..   sum(l, y(s,v,k,l)) =e= 1;
n6(v,k,l)..   sum(s, y(s,v,k,l)) =l= 1;
nobj..        w =e= sum((s,v,k,l), y(s,v,k,l));

model newlatin / nobj,n2,n3,n5,n6 /;

* position the solution
y.fx('one','val-1','row-1','col-1') = 1;

solve newlatin min w us mip;

loop((s,v,k,l)$y.l(s,v,k,l),
   report(s,k,l) = ord(v);
   report(s,k,l) = ord(v); );

display report;
