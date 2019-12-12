option MIQCP=convert;
option MIQCP=convert;
option MIQCP=convert;
$Title Financial Optimization: Risk Management using MIQCP (QMEANVAR,SEQ=291)

$Ontext

   Minimum and maximum trade constraints are added to the standard
   mean-variance model. If it is not profitable to trade within these
   ranges, no trade should take place. A turnover constraint is added
   to improve stability of the solution to small changes in data. The
   resulting model is now expressed as a MIQCP and a frontiers is
   computed.

Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization
Models: Risk Management. In Zenios, S A, Ed, Financial Optimization.
Cambridge University Press, New York, NY, 1993.

$Offtext
$Eolcom !

Set  i  securities  / cn, fr, gr, jp, sw, uk, us /;  alias (i,j) ;

Parameter  mu(i)  expected return of security /

    cn     0.1287
    fr     0.1096
    gr     0.0501
    jp     0.1524
    sw     0.0763
    uk     0.1854
    us     0.0620 /


Table  q(i,j)   covariance matrix

            cn      fr      gr      jp      sw      uk      us
    cn    42.18
    fr    20.18   70.89
    gr    10.88   21.58   25.51
    jp     5.30   15.41    9.60   22.33
    sw    12.32   23.24   22.63   10.32   30.01
    uk    23.84   23.80   13.22   10.46   16.36   42.23
    us    17.41   12.62    4.70    1.00    7.20    9.90   16.42 ;

*  we will continue to use only the lower triangle of the q-matrix
*  and adjust the off diagonal entries to give the correct results.

q(i,j) = 2*q(j,i) ;  q(i,i) = q(i,i)/2;


Scalars  tau   bounding parameter on turnover of current holdings  /0.3 /;

Set pd  portfolio data labels  /
          old       current holdings fraction of the portfolio
          umin      minimum increase of holdings fraction of security i
          umax      maximum increase of holdings fraction of security i
          lmin      minimum decrease of holdings fraction of security i
          lmax      maximum decrease of holdings fraction of security i  /


Table    bdata(i,pd)    portfolio data and trading restrictions
*                    - increase -        - decrease -
              old    umin    umax        lmin    lmax
        cn    0.2    0.03    0.11        0.02    0.30
        fr    0.2    0.04    0.10        0.02    0.15
        gr    0.0    0.04    0.07        0.04    0.10
        jp    0.0    0.03    0.11        0.04    0.10
        sw    0.2    0.03    0.20        0.04    0.10
        uk    0.2    0.03    0.10        0.04    0.15
        us    0.2    0.03    0.10        0.04    0.30    ;

bdata(i,'lmax') = min(bdata(i,'old'),bdata(i,'lmax')); ! tighten bound

Abort$(abs(sum(i, bdata(i,'old'))-1) >= 1e5) 'error in bdata', bdata;

Variables
    var       variance of portfolio
    ret       return of portfolio
    x(i)      fraction of portfolio of current holdings of i
    xi(i)     fraction of portfolio increase
    xd(i)     fraction of portfolio decrease
    y(i)      binary switch for increasing current holdings of i
    z(i)      binary switch for decreasing current holdings of i

Binary Variables  y,z; positive variables x, xi, xd;


Equations  budget     budget constraint
           turnover   restrict maximum turnover of portfolio
           maxinc(i)  bound of maximum lot increase of fraction of i
           mininc(i)  bound of minimum lot increase of fraction of i
           maxdec(i)  bound of maximum lot decrease of fraction of i
           mindec(i)  bound of minimum lot decrease of fraction of i
           binsum(i)  restrict use of binary variables
           xdef(i)    final portfolio definition
           retdef     return definition
           vardef     variance definition;

budget..   sum(i, x(i))  =e=  1 ;

xdef(i)..  x(i) =e= bdata(i,'old') - xd(i) + xi(i);

maxinc(i)..  xi(i)  =l=  bdata(i,'umax')*y(i) ;
mininc(i)..  xi(i)  =g=  bdata(i,'umin')*y(i) ;
maxdec(i)..  xd(i)  =l=  bdata(i,'lmax')*z(i) ;
mindec(i)..  xd(i)  =g=  bdata(i,'lmin')*z(i) ;
binsum(i).. y(i) + z(i) =l= 1;

turnover.. sum(i, xi(i)) =l=  tau ;

retdef..  ret =e= sum(i, mu(i)*x(i));

vardef..  var =e= sum((i,j), x(i)*q(i,j)*x(j));



Models
maxret / budget, xdef, turnover, maxinc, mininc, maxdec, mindec, binsum, retdef /
minvar / budget, xdef, turnover, maxinc, mininc, maxdec, mindec, binsum, retdef, vardef /;

Set  p       efficient frontier points     / oldr, minvar, p1*p4, maxret, oldv /
     pp(p)   efficient frontier points     /         p1*p4                     /

Scalars     rmin     minimum variance
            rmax     maximum variance ;

Parameter Report(p,i,*)  Portfolio Details at different points
          xres(*,p)      Summary report at different points;

Option limcol=0, limrow=0, solprint=off, optcr=0;

Loop(p('maxret'),
   Solve maxret max ret using miqcp ; rmax = ret.l;
   xres(i,p)         = x.l(i);
   report(p,i,'inc') = xi.l(i);
   report(p,i,'dec') = xd.l(i) );

xres(i,'oldr')  = bdata(i,'old');
xres(i,'oldv')  = bdata(i,'old');

Loop(p('minvar'),
   Solve minvar min var using miqcp ;  rmin = ret.l;
   xres(i,p)         = x.l(i);
   report(p,i,'inc') = xi.l(i);
   report(p,i,'dec') = xd.l(i) );

Loop(p(pp),
   ret.fx = rmin + (rmax-rmin)/(card(pp)+1)*ord(pp) ;
   Solve minvar min var using miqcp ;
   xres(i,p)         = x.l(i);
   report(p,i,'inc') = xi.l(i);
   report(p,i,'dec') = xd.l(i) );

xres('mean',p) = sum(i, mu(i)*xres(i,p));
xres('var' ,p) = sum((i,j), xres(i,p)*q(i,j)*xres(j,p));
Display xres, report;

$if %system.filesys% == UNIX $exit
$call msappavail -Excel
$if errorlevel 1 $exit

* Output data to Excel into sheet 'Results'
* To create the two plots in Excel:
*
* Plot 1: Allocation -
*       1. Select data from C2:I8 and plot using an
*            "Area Plot" (type: stacked area)
*
* Plot 2: Variance vs. Mean Return -
*       1. Create an XY Scatter Plot (type: 'scatter with data points
*             connected by lines')
*       2. Data:
*             Series 1:
*                'X-Values': =Results!$C$9:$H$9
*                'Y-Values': =Results!$C$10:$H$10
*             Series 2:
*                'X-Values': =(Results!$B$9,Results!$I$9)
*                'Y-Values': =(Results!$B$10,Results!$I$10)
*

execute_unload "results.gdx" xres;
execute 'gdxxrw.exe results.gdx trace=0 par=xres rng=Results!A1'
