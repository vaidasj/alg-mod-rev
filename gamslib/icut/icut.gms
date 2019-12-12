option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Integer Cut Example (ICUT,SEQ=160)
$eolcom !
$Ontext
  Sometimes it may be required to exclude certain integer solutions.
  Additional constraints, called cuts, can be added to exclude such
  solutions. To exclude the k'th integer solution we can write:

      cut(k)..  sum(i, abs(x(i)-xsol(i,k)) =g= 1;

  The absolute function has to be simulated using 0/1 variables
  and some additional constraints. When the solution to be excluded
  is at lower or upper bound, we do not need additional 0/1 variables.

  In this example we simply show how to enumerate all possible
  combinations of four integer variables.


GAMS Development Corporation, Formulation and Language Example.

$Offtext
sets  i      index on integer variable  / 1 * 4 /
      ie(i)  variables fixed
      in(i)  not fixed
      il(i)  solutions at lower bound
      iu(i)  solutions at upper bound
      ib(i)  solution between bounds

      kk       cut identification set  / 1 * 100 /
      k(kk)    dynamic subset of k
      bb(kk,i) cut memory
      bl(kk,i) cut memory
      bu(kk,i) cut memory


variables  x(i)    test variable
           z       some objective variable
           b(kk,i) flip-flop for in between solutions
           u(kk,i) changes up
           l(kk,i) changes down

integer variable x;
binary variable b; positive variable u,l;

equations cut(kk)     main cut equations
          cutu(kk,i)  upper bound limit for inbetween integers
          cutl(kk,i)  lower bound limit for inbetween integers
          cutul(kk,i) definition of positive and negative deviations
          obj         obj definition;

parameters  cutrhs(kk)    cut RHS value
            cutlx(kk,i)   cut lower bound
            cutux(kk,i)   cut upper bound
            cuts(kk,i)    cut solution value

            report(kk,*)  cut report variable
            whatnext      loop control variable;

*  pick an objective function which will order the solutions

obj..   z =e= sum(i, power(10,card(i)-ord(i))*x(i));

cut(k)..      - sum(bu(k,i), x(i)) + sum(bl(k,i),x(i))
              + sum(bb(k,i), l(bb) + u(bb)) =g= cutrhs(k);

cutu(bb(k,i))..  u(bb) =l= cutux(bb)*b(bb);

cutl(bb(k,i))..  l(bb) =l= cutlx(bb)*(1-b(bb));

cutul(bb(k,i)).. x(i)  =e= cuts(bb) + u(bb) - l(bb);

model enum / all /;

* get an initial solution and set bounds

x.lo(i)   = 2;
x.up(i)   = 4;
x.fx('2') = 3;   ! fix one variable
x.up('4') = 3;   ! only two values

x.l(i)    = x.lo(i);

k(kk) = no;                        ! make cut set empty
ie(i) = yes$(x.lo(i)=x.up(i));     ! find fixed variables
in(i) = yes - ie(i);               ! find free variables

whatnext    = 1;  ! initial loop control
enum.resusd = 0;  ! inital CPU used

enum.reslim = 60; ! dont spend more than 60 seconds on on problem

* We enumerate all solutions so we are happy with the first solution
* the solver finds.

enum.optcr  = 0; enum.optca = 1e06;

loop(kk$whatnext,
   il(in) = yes$(x.l(in)=x.lo(in));         ! find variables at lower
   iu(in) = yes$(x.l(in)=x.up(in));         ! find variables at upper
   ib(in) = yes - ie(in) - iu(in) - il(in); ! find variables between
   k(kk)        = yes;   ! add
   bl(kk,il)    = yes;   !   cut
   bu(kk,iu)    = yes;   !      information
   bb(kk,ib)    = yes;   !         as needed
   cutux(kk,ib) = x.up(ib) - x.l(ib);
   cutlx(kk,ib) = x.l(ib) - x.lo(ib);
   cuts(kk,ib)  = x.l(ib);
   cutrhs(kk)   = 1 + sum(il, x.l(il)) - sum(iu, x.l(iu));
   report(kk,i) = x.l(i);                   ! save previous solution
   report(kk,'binaries') = card(bb);        ! remember binaries
   report(kk,'CPU time') = enum.resusd;     ! remember time
   solve enum min z us mip;
   enum.limcol = 0;                   ! turn off
   enum.limrow = 0;                   !    all
   enum.solprint = %solprint.Quiet%;  !       output
   whatnext = enum.modelstat=%modelstat.Optimal% or enum.modelstat=%modelstat.IntegerSolution% );

display enum.solvestat, enum.modelstat, report;
