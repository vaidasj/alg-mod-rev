option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Three-dimensional Noughts and Crosses  (CUBE,SEQ=42)

$Ontext

White and black balls are to be arranged in a cube one to a
cell in such a way as to minimize the number of lines with balls
of equal color. For this example the length of the cube is three.
a total of 49 lines exist in a cube of 3x3x3. 27 lines by changing
only one coordinate, 18 diagonals within a plane, and 4 diagonals
going across planes.


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

$if set nosolve $exit

* this is a very difficult problem that takes a long time with
* the default settings. we use an optca value that will
* cause termination after finding the best solution, but before
* proving that it is the best. the best solution is 4.

 Option optca = 3.9;
 Solve cube minimizing num using mip;

