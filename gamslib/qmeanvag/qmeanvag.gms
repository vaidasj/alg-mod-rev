option MIQCP=convert;
option MIQCP=convert;
option MIQCP=convert;
$Title Portfolio Modeling with Parallel Solutions (QMEANVAG,SEQ=327)

$Ontext

This model is a parallel implementation of the sequential QMEANVAR
model. Minimum and maximum trade constraints are added to the standard
mean-variance model. If it is not profitable to trade within these
ranges, no trade should take place. A turnover constraint is added to
improve stability of the solution to small changes in data. The
resulting model is now expressed as a MIQCP and a frontier is
computed.

Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization
Models: Risk Management. In Zenios, S A, Ed, Financial Optimization.
Cambridge University Press, New York, NY, 1993.


Two double dash option are used to conveniently change the number of
points and set a time limit.
$Offtext

$Eolcom !
$ife %system.gamsversion%<231 $abort Version too old! Need 231 or higher

$setddlist points maxtime
$if NOT set points  $set points    4
$if NOT set maxtime $set maxtime 120
$if NOT errorfree $abort wrong double dash parameters: --points=n --maxtime=secs

scalar maxtime / %maxtime% /

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

bdata(i,'lmax') = min(bdata(i,'old'),bdata(i,'lmax')); ! tighten bounds

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

Set  p       efficient frontier points     / minvar, p1*p%points%, maxret /
     pp(p)   efficient frontier points     /         p1*p%points%         /

Scalars     rmin     minimum variance
            rmax     maximum variance ;

Parameter Report(p,i,*)  Portfolio Details at different points
          xres(*,p)      Summary report at different points;

Option limcol=0, limrow=0, solprint=off, optcr=0, solvelink=%solvelink.CallModule%, reslim = %maxtime%;

Loop(p('maxret'),
   Solve maxret max ret using miqcp ; rmax = ret.l;
   xres(i,p)         = x.l(i);
   report(p,i,'inc') = xi.l(i);
   report(p,i,'dec') = xd.l(i) );

Loop(p('minvar'),
   Solve minvar min var using miqcp ;  rmin = ret.l;
   xres(i,p)         = x.l(i);
   report(p,i,'inc') = xi.l(i);
   report(p,i,'dec') = xd.l(i) );

parameter h(p) solution handle;

minvar.solprint=%solprint.Quiet%; minvar.solvelink=%solvelink.AsyncGrid%;

abort$(timeelapsed > maxtime - 5)  "too much time spend for initial solves";
minvar.reslim = maxtime - timeelapsed - 4;

Loop(pp,
   ret.fx = rmin + (rmax-rmin)/(card(pp)+1)*ord(pp) ;
   Solve minvar min var using miqcp ;
   h(pp) = minvar.handle; );

Repeat
   loop(pp$handlecollect(h(pp)),
      if(minvar.solvestat = %solvestat.NormalCompletion%,
         xres(i,pp)         = x.l(i);
         report(pp,i,'inc') = xi.l(i);
         report(pp,i,'dec') = xd.l(i) );
      display$handledelete(h(pp)) 'trouble deleting handles' ;
      h(pp) = 0 ) ;
   display$sleep(card(h)*0.1) 'sleep some time';
until card(h) = 0 or timeelapsed > maxtime;

xres(i,pp)$h(pp) = na;

xres('mean',p) = sum(i, mu(i)*xres(i,p));
xres('var' ,p) = sum((i,j), xres(i,p)*q(i,j)*xres(j,p));

Display$(card(p) < 10) xres, report;

* prepare gdx data for IDE charting

execute_unload "qmeanvarg.gdx";
