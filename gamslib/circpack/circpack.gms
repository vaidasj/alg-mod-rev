option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title  Pack circles in the smallest possible rectangle (CIRCPACK,SEQ=401)
$Ontext

For a given set of circles determine the minimum area rectangle which hosts
all circles.

The problem requires a global solver.


Kallrath, J. Cutting Circles and Polygons from Area-Minimizing Rectangles.
Journal of Global Optimization 43 (2009), 299-328
$Offtext

Set d 'dimensions'    / 1,2 /
    i 'items=circles' / i1*i6/ ;

Parameter
    sizeLB(d) 'lower bounds on rectangle size' / 1 1, 2 1 /
    sizeUB(d) 'upper bounds on rectangle size' / 1 4, 2 8 /
    R(i)      'radius of circles' / i1 1.2, i2 0.6, i3 0.8,
                                    i4 1.7, i5 1.3, i6 0.5 / ;

*-----------------------------------------------------
* The NLP model for solving the circle packing problem
*-----------------------------------------------------

Alias (i,ii) ;
Variables
    a           'area of the rectangle'
    xP(d)       'the width (d=1) and length (d=2) of the rectangle'
    x(i,d)      'the center of circle i'
    z           'objective function' ;
Positive variables a, xP, x;

Equations
   objective      'trimloss'
   area           'the area of the rectangle'
   disjun(i,ii)   'non-overlap condition for the circles'
   ULx(i,d)       'upper limit on x(i) le w - R(i) ' ;

objective.. z =e= a - sum (i, pi*sqr(R(i)) );

* compute the area of the design rectangle (bilinear version)
area..      a =e= prod(d, xP(d)) ;

* upper limit on the coordinates of the center of the circles
ULx(i,d)..  x(i,d) =l= xP(d) - R(i) ;

* DISJUN(i,ii)$(not sameas(i,ii))..
disjun(i,ii)$(i.pos > ii.pos)..
            sum(d, sqr(x(i,d)-x(ii,d))) =g= sqr(R(i)+R(ii)) ;


model Circpack  /all/;

* lower and upper bounds on the centre of the circles
x.lo(i,d) = R(i) ;
x.up(i,d) = sizeUB(d) - R(i) ;

* upper bound on the area
a.up = prod(d,sizeUB(d)) ;

* upper bounds on the width and length of the rectangle
xP.up(d) = sizeUB(d) ;

* A simple scheme (such as below) for setting the starting point does not 
* lead to a feasible solution when using a local solver. This problem requires 
* a global code
x.l(i,d) = uniform(x.lo(i,d), x.up(i,d)) ;
xP.l(d) = sizeUB(d) ;
a.l = a.up ;

option reslim = 60, optcr = 0;
solve Circpack using nlp minimizing z ;

display a.l, xP.l, z.l, x.l ;

*  produce some nice looking output

$ifthen set gnuplot
* create the output file: result.out which can be fed into GnuPlot
  File fresultout / result.out/ ;  put fresultout;
  put ' output ' /
      'set parametric' /
      'set trange [0:',(2*PI):11:8,']' /
      @21, ' plot '
  loop (i,
      put x.l(i,"2"):4:2,'+',R(i):4:2,'*cos(t),', x.l(i,"1"):4:2,'+',R(i):4:2,'*sin(t),'
  ) ;
  put ' ' / ;

  put ' ' /  ;
  put ' Verschnitt in qm : ', (a.l - SUM (i,R(i) ) ):5:2 / ;
$endif

$ifthen set latex
*  produce tex output-file to show the result

* create the output file: graphics.tex
  File fgraphics / graphics.tex/ ; put fgraphics;
$onput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        "graphics.tex"                              %
%         written by Josef Kallrath and Steffen Rebennack            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\documentclass{article}
\usepackage{pst-all}
%
\begin{document}
%
  \pagestyle{empty}
  \centering
  \begin{figure}
$offput
* calculate the size of the figure
* -> find out the maximum coordinates
  Scalar
    maxX  'maximum x coordinate'
    maxY  'maximum y coordinate'
    step  '1 pt is step cm in the picture' ;

  maxX = smax(i, x.l(i,"2")+R(i));
  maxY = smax(i, x.l(i,"1")+R(i));
  step = 20/(max(maxX,maxY) + 2);

* print the size of the figure
  put '    \psset{xunit=' ,  step:4:2 , 'cm,yunit=' ,  step:4:2 , 'cm}' /
      '    \begin{pspicture}(0,0)(' , maxX:4:0 , ','  , maxY:4:0 , ')' /
      '      \psaxes{<->}' , '(0,0)(-.5,-.5)(' , maxX:4:0 , ',' , maxY:4:0 , ')' /
      '      % ' / ;

* print all circles
  loop (i,
      put  '      \psellipse[linewidth=1pt,linecolor=black]'
          '(' , x.l(i,"2"):4:2 , ',' , x.l(i,"1"):4:2 , ')'
          '(' , R(i):4:2 , ',' ,  R(i):4:2 , ')' / ;
  ) ;
  put '      % ' / ;

* draw rectangle
  put  '      \psline[linewidth=1pt,linecolor=blue]'
      '(' , 0:6:2 , ',' , 0:6:2, ')'
      '(' , xP.l('2'):6:2 , ',' , 0:6:2, ')' /
       '      \psline[linewidth=1pt,linecolor=blue]'
      '(' , xP.l('2'):6:2 , ',' , 0:6:2, ')'
      '(' , xP.l('2'):6:2 , ',' , xP.l('1'):6:2, ')' /
       '      \psline[linewidth=1pt,linecolor=blue]'
      '(' , xP.l('2'):6:2 , ',' , xP.l('1'):6:2, ')'
      '(' , 0:6:2 , ',' , xP.l('1'):6:2, ')' /
      '       \psline[linewidth=1pt,linecolor=blue]'
      '(' , 0:6:2 , ',' , xP.l('1'):6:2, ')'
      '(' , 0:6:2 , ',' , 0:6:2, ')' / ;

  put '      %' /
      '    \end{pspicture}' /
      '  \end{figure}' /
      '  %' /
      '\end{document}' / ;

*    produce a PostScript and a PDF file (works only with a LaTeX compiler)
execute 'latex graphics.tex && dvips graphics.dvi && ps2pdf graphics.ps' ;
execute 'rm -f graphics.aux graphics.dvi graphics.log graphics.ps' ;
$endif
