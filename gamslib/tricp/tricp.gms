option QCP=convert;
option QCP=convert;
option QCP=convert;
$title Triangular Graph Circle Packing (tricp,SEQ=395)
$ontext
A circle packing is a collection of circles whose interiors are disjoint. 
The contact graph of a circle packing in the plane is always a planar graph, 
and the set of circle centers with the line segments connecting tangent circle centers
forms a planar embedding of the contact graph.

The Koebe-Andreev-Thurston theorem states that also the converse is true:
For every connected simple planar graph G, there is a circle packing in the 
plane whose contact graph is isomorphic to G.

We use a triangulation of n-3 random points in a triangle to construct circle 
packing instances. Note that similarities (translations, rotations, scalings) 
have to be excluded by fixing some coordinates or selecting suitable start values.
In this way, nice geometric problems result for a complete subdivision solver:


Ch. Fuenfzig, D. Michelucci, S. Foufou: Nonlinear systems solver in floating-point 
arithmetic using LP reduction, SIAM/ACM Joint Conference on Geometric and Physical 
Modeling 2009.

Contributor: Christoph Fuenfzig (c.fuenfzig@gmx.de)
$offtext

set n      nodes     / n0*n19 /
    e(n,n) edges     /
           n0.(n1,n2,n3,n5,n6,n7,n9,n11,n19)
           n1.(n2,n3)
           n2.(n3,n4,n7)
           n3.(n4,n5)
           n4.(n5,n6,n7)
           n5.n6
           n6.(n7,n8)
           n7.(n8,n9)
           n6.(n10,n11)
           n8.(n9,n10)
           n9.(n10,n11,n12,n13,n14,n15,n18,n19)
           n10.n11
           n11.(n12,n13,n14,n16,n17,n19)
           n12.n13
           n13.n14
           n14.(n15,n16)
           n15.(n16,n17,n18)
           n16.n17
           n17.(n18,n19)
           n18.n19
           /
    k      dimension / k0*k1 /;
alias (n,i,j), (k,kp);
$oneps
Parameter
    fx(n,k) /
              n0 .k0 10, n0 .k1 10
              n19.k0 20, n19.k1 10
              n9 .k0 15, n9 .k1 20
            /

$offeps

Variables
    x(n,k)   coordinates
    r(n)     radius
    slp(n,n) positive slack
    sln(n,n) negative slack
    z        feasibility maker
    obj      objective;

Positive variable x, r, z, slp, sln;

Scalar myScale /1e2/;
x.up(n,k) = myScale*smax((i,kp),fx(i,kp));
x.fx(n,k)$fx(n,k) = myScale*fx(n,k);
r.lo(n) = myScale*0.001;

* Random starting point
x.l(n,k) = myScale*uniform(0,smax(i,fx(i,k)));
r.l(n) = myScale*1;

Equations
    defobj    objective
    eq1(n,n)  neighboring nodes kiss
    eq2(n,n)  non-neiggboring nodes disjoint;

eq1(e(i,j)).. sum(k, sqr(x(i,k)-x(j,k))) =e= sqr(r(i)+r(j)) + slp(e) - sln(e);

eq2(i,j)$(not e(i,j) and ord(i)<ord(j))..
              sum(k, sqr(x(i,k)-x(j,k))) =g= sqr(r(i)+r(j)) - z;

defobj..      obj =e= 100*z + sum(e, slp(e) + sln(e));

model cp / all /;

option optcr=1e-6, optca=1e-6;
solve cp using qcp min obj;

* Output packing as EPS
file fcp / 'cp.eps' /; fcp.ap=1; fcp.nd=4; put fcp;
if (cp.modelstat <= 2,
  x.l(n,k) = x.l(n,k)/myScale;
  r.l(n) = r.l(n)/myScale;
  loop(n,
   put   '% annotate in gray'
       / '0.4 setgray'
       / 'newpath'
       / x.l(n,'k0'):0:4 ' ' x.l(n,'k1'):0:4 ' moveto'
       / 'currentpoint exch 0.1 2 div sub exch moveto'
       / '(' (ord(n)-1):0:0 ') show'
       / '% draw circle in red'
       / '1 0 0 setrgbcolor'
       / 'newpath'
       / x.l(n,'k0'):0:4 ' ' x.l(n,'k1'):0:4 ' ' r.l(n):0:4 ' 0 360 arc stroke'
       / 'stroke' /;
  )
  put 'showpage';
);

$onechoV > cp.eps
%!PS-Adobe-2.0 EPSF-2.0
%%Creator: class EPSDevice
%%Title: template.eps
%%BoundingBox: 0 0 501 501
%%EndComments
/Rect {
/InputDict 8 dict def
InputDict begin
/Y4 exch def
/X4 exch def
/Y3 exch def
/X3 exch def
/Y2 exch def
/X2 exch def
/Y1 exch def
/X1 exch def
newpath
X1 Y1 moveto
X2 Y2 lineto
X3 Y3 lineto
X4 Y4 lineto
closepath
end } def
/cRect {
/InputDict 9 dict def
InputDict begin
/comment exch def
/Y4 exch def
/X4 exch def
/Y3 exch def
/X3 exch def
/Y2 exch def
/X2 exch def
/Y1 exch def
/X1 exch def
newpath
X1 Y1 moveto
currentfont 12 scalefont
comment stringwidth pop
X3 X1 sub exch div 0.8 mul
Y3 Y1 sub 12 div
1 index 1 index lt { exch } if
gsave dup scale
comment show
X1 Y1 comment stringwidth rectclip grestore
newpath
X1 Y1 moveto
X2 Y2 lineto
X3 Y3 lineto
X4 Y4 lineto
closepath
end } def
/SetupFont {
/InputDict 1 dict def
InputDict begin
/size exch def
/Helvetica findfont
size scalefont
setfont end } def
%% end header
% setup coordinate system [10, 20]*[10, 20]
0 0 translate
48.0769 48.0769 scale
-9.8 -9.8 translate
% set clipping box
newpath
9.8 9.8 moveto
20.2 9.8 lineto
20.2 20.2 lineto
9.8 20.2 lineto
closepath
clip
% draw box in gray
0.01 setlinewidth
0 setgray
9.8 9.8 20.2 9.8 20.2 20.2 9.8 20.2 Rect
stroke
%% drawing below
0.02 setlinewidth
0.2 SetupFont
$offecho
