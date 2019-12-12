option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Three-dimensional Noughts and Crosses Multiple Solutions (CUBESOLN,SEQ=371)

$Ontext

White and black balls are to be arranged in a cube one to a
cell in such a way as to minimize the number of lines with balls
of equal color. For this example the length of the cube is three.
a total of 49 lines exist in a cube of 3x3x3. 27 lines by changing
only one coordinate, 18 diagonals within a plane, and 4 diagonals
going across planes.

This variation of the model uses a simple "binary cut" to eliminate a solution
so a subsequent solve produces an alternative solution. This is done in a loop
to produce altenative solutions. It also uses Cplex' solution pool facility to
generate multiple solutions.

There are many symmetries in the cube model so both procedures find multiple
optimal solutions.


Williams, H P, Experiments in the formulation of Integer Programming
Problems. Mathematical Programming Study 2 (1974).

$Offtext

Sets  s       domain for line identification   / a, b, c, incr, decr /
      x(s)    coordinate labels                / a, b, c /
      d(s)    directions                       / incr, decr /
      b       bounds                           / low, high /

Alias (x,y,z), (d,dp), (s,sp,spp)

Set ld(s,sp,spp)  line definition ;

   ld("incr",y,z) = yes;  ld(x,"incr",z) = yes; ld(x,y,"incr") = yes;
   ld("incr",d,z) = yes;  ld(x,"incr",d) = yes; ld(d,y,"incr") = yes;
   ld("incr",d,dp) = yes; display ld;

Parameters  ls(b)    sign for line definitions      / low  +1, high -1 /
            lr(b)    rhs for line definitions       / low   2, high -1 /
            df(x,s)  line definition function;

   df(x,y) = ord(y) - ord(x); df(x,"decr") = 1 + card(x) - 2*ord(x); display df;

Variables  core(x,y,z)    placement of balls (white 0  black 1)
           line(s,sp,spp) line identification
           num            number of lines of equal color

Binary Variables core;
Positive Variable line;

Equations  nbb              total number of balls definition
           ldef(s,sp,spp,b) line definitions
           ndef             number of lines definition ;

nbb..  sum((x,y,z), core(x,y,z)) =e= floor(card(x)**3/2);

ldef(s,sp,spp,b)$ld(s,sp,spp).. ls(b)*sum(x, core(x+df(x,s),x+df(x,sp),x+df(x,spp))) =l= line(s,sp,spp) + lr(b) ;

ndef.. num =e= sum((s,sp,spp)$ld(s,sp,spp), line(s,sp,spp)) ;

Model cube / all /

Option optcr=0, reslim=10, limrow=0, limcol=0, solprint=silent;
Solve cube minimizing num using mip;

*
* Cuts to cut off binary solution
*
set cuts / c1*c5 /, cc(cuts) dynamic cuts;
parameter sol solutions to cut off;
equation cut(cuts);

cut(cc)..     sum((x,y,z)$sol(cc,x,y,z), core(x,y,z))
          +   sum((x,y,z)$(sol(cc,x,y,z)=0), 1-core(x,y,z))
          =l= card(x)*card(y)*card(z)-1;


Model cubeCut /all/;

loop(cuts,
  sol(cuts,x,y,z) = round(core.l(x,y,z));
  sol(cuts,'','','obj') = num.l;
  cc(cuts) = yes;
  Solve cubeCut minimizing num using mip;
  abort.noerror$(cubeCut.modelstat <> %modelstat.Optimal% and
                 cubeCut.modelstat <> %modelstat.IntegerSolution%) sol;

);
display 'more solutions available', sol, core.l, num.l;
option clear=sol;

*
* Cplex solution pool facility
*
$onecho > cplex.opt
solnpool solnpool.gdx
solnpoolpop 2
solnpoolintensity 4
populatelim 41
solnpoolgap 0.03
$offecho

cube.optfile = 1;
option mip=cplex;
Solve cube minimizing num using mip;
display core.l, num.l;

sets soln           possible solutions in the solution pool /file1*file40/
     solnpool(soln) actual solutions;
file fsoln;
execute_load 'solnpool.gdx', solnpool=index;
loop(solnpool(soln),
  put_utility fsoln 'gdxin' / solnpool.te(soln);
  execute_loadpoint;
  sol(soln,x,y,z) = round(core.l(x,y,z));
  sol(soln,'','','obj') = num.l;
);
display$(card(solnpool)=card(soln)) 'more solutions available';
display sol;
