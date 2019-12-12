option RMIQCP=convert;
option RMIQCP=convert;
option RMIQCP=convert;
$Title SDP Convexifications of the Generalized Quadratic Assignment Problem (GQAPSDP,SEQ=339)

$ontext
This model solves the Generalized Quadratic Assignment Problem
(GQAP) using different convexification methods. The GQAP describes
a broad class of quadratic integer programming problems, wherein
I pair-wise related equipments are assigned to N locations constrained
by the locations' ability to accommodate them.

Cplex has a build-in convexification method for MIQPs when the
quadratic terms involve binary variables only. The other methods
require the solution of a semidefinite program.  The communication
with the SDP solver is done through ASCII files.


Plateau M.C., Reformulations quadratiques convexes pour la
programmation quadratique en variables 0-1. PhD thesis, 
Conservatoire National des Arts et Metiers, CEDRIC, 2006.

Guignard, M., Extension to Plateau Convexification Method for
Nonconvex Quadratic 0-1 Programs. Tech. rep., The Wharton School, 2008.
$Offtext

Set i  equipments
    j  locations
Alias (i,ip), (j,jp);

Parameter
    install(i,j)  installation cost
    flow(i,ip)    volume of exchange
    unit          flow units
    dist(j,jp)    distance
    a(i)          size
    b(j)          capacity

$if not set instance $set instance pb16x7.inc
$include %instance%

* Convexification options: cplex, u, uv, au, uav
$if not set opt    $set opt u
$if '%opt%'==u     $goto optok
$if '%opt%'==uv    $goto optok
$if '%opt%'==ua    $goto optok
$if '%opt%'==uav   $goto optok
$if '%opt%'==cplex $goto optok
$abort --opt=%opt% but should be u|uv|ua|uav|cplex
$label optok

$set dou 0
$set dov 0
$set doa 0
$if '%opt%'==cplex $goto nosdp

$eval imax card(i)
$eval jmax card(j)
$eval xmax %imax%*%jmax%
$eval dmax %imax%*%imax%*%jmax%

$set dou 1
$ifthen %opt%==u
$   set more ''
$elseif %opt%==uv
$   set more ',v'
$   set dov 1
$elseif %opt%==ua
$   set more ',d1*d%dmax%'
$   set doa 1
$elseif %opt%==uav
$   set more ',d1*d%dmax%,v'
$   set dov 1
$   set doa 1
$else
$   abort missing test for opt=%opt%
$endif

Sets n      SDP variables       / #j,z,x1*x%xmax% /
     nx(n)  original x          /      x1*x%xmax% /
     nj(n)  slack for capacity  / #j              /
     m      sdp constraints     / #n,#i%more%     /
     mIx(m) identity x          / #nx /
     mA(m)  assignment          / #i  /
     mC(m)  capacity            / #j  /
$ifthen %doa%==1
     mD(m)                      / d1*d%dmax%  /
     dmap(md,*,nx) d iij map    / #md:(#i.#nx) /
$endif
     xmap(*,*,j) x ij map       / #nx:(#i.#j) /
     upper(n,n) diag and upper triangle
     lower(n,n) lower triangle;

Alias (n,np,npp), (nx,nxp);
upper(n,np) = ord(n) <= ord(np);
lower(n,np) = ord(n)  > ord(np);

Parameters F(m,n,np)   SDP constraint data
           F0(n,np)    SDP obj
           c(m)        SDP RHS data
           qq(n,np)    Q matrix
           mLE(m)      SDP constraints with =l=;

qq(nx,nxp) = sum((i,j,ip,jp)$(xmap(nx,i,j)*xmap(nxp,ip,jp)), unit*flow(i,ip)*dist(j,jp));
qq(nx,nxp) = (qq(nx,nxp) + qq(nxp,nx))/2;

* Objective
F0('z',nx)        = -sum(xmap(nx,i,j), install(i,j))/2;
F0(upper(nx,nxp)) = -qq(nx,nxp);

* Identity for x
F(mIx,nx,nx)$sameas(mIx,nx)  =  2;
F(mIx,'z',nx)$sameas(mIx,nx) = -1;

* Assignment
F(mA,'z',nx) = sum(xmap(nx,i,j)$sameas(mA,i), 1);
c(mA)        = 2;

* Capacity =l= constraint
F(mC,'z',nx)               = sum(xmap(nx,i,j)$sameas(mC,j), a(i));
F(mC,nj,nj)$sameas(mC,nj)  = 1;
c(mC)                      = 2*sum(j$sameas(mC,j), b(j));
mLE(mC)                    = yes;

$ifthen %doa%==1
* Alpha
F(mD,'z',nx)        = -sum(dmap(mD,mA,nx), 1);
loop((dmap(mD,mA,nx),xmap(nxp,mA,j)), F(mD,nx,nxp) = 2);
F(mD,upper(nx,nxp)) = (F(mD,nxp,nx) + F(mD,nx,nxp))/2; F(mD,lower) = 0;
$endif

$ifthen %dov%==1
* v
F('v','z',nx)        = -1;
F('v',upper(nx,nxp)) = sum((i,j,jp)$(xmap(nx,i,j) and xmap(nxp,i,jp)), 1);
c('v')               = -card(i);
$endif

* z=1
F('z','z','z')       = 1;
c('z')               = 1;

Parameter
    xvec(m)       SDP solution
    u(i,j)        dual of X_ijij = xij
    alpha(ip,i,j) dual of assignment constraints
    v             dual of |Ax-b|;

$if not set skip $set skip 0
$ifthen %skip%==0
execute_unload 'csdpin.gdx' n, m, mLE, c, F, F0;
execute 'gams runcsdp.inc lo=%gams.lo% --strict=1';
abort$errorlevel 'Problems running RunCSDP. Check listing file for details.'
$endif
execute_load 'csdpout.gdx', xvec;

$if %dou%==1 u(i,j)        = sum(xmap(mIx,i,j), xvec(mIx));
$if %doa%==1 alpha(ip,i,j) = sum((dmap(mD,ip,nx),xmap(nx,i,j)), xvec(mD));
$if %dov%==1 v             = xvec('v');

$label nosdp
Variables
    x(i,j)        equipment i is assigned to location j
    z             total costs;
Binary variables x;

Equations
    defcost       objective function
    assign(i)     assign each equipment to a location
    capacity(j)   location capacity in assigning equipment;

defcost.. z =e=   sum((i,j,ip,jp), x(i,j)*(unit*flow(i,ip)*dist(j,jp))*x(ip,jp))
                + sum((i,j), install(i,j)*x(i,j))
$if %dou%==1    + sum((i,j), 2*(u(i,j)*1.01)*(sqr(x(i,j))-x(i,j)))
$if %doa%==1    + sum((ip,i,j), 2*alpha(ip,i,j)*x(i,j)*(sum(jp,x(ip,jp))-1))
$if %dov%==1    + v*sum(i, sqr(sum(j,x(i,j))-1))
;

assign(i)..    sum(j, x(i,j)) =e= 1;

capacity(j)..  sum(i, a(i)*x(i,j)) =l= b(j);

model gqap / all /;

if(card(i)*card(j)>20, option limrow=0,limcol=0);
solve gqap using rmiqcp min z;

