option MIQCP=convert;
option MIQCP=convert;
option MIQCP=convert;
$Title Mean-Variance models with variable upper and lower bounds (PMEANVAR,SEQ=380)

$ontext
A simple portfolio type problem with variable upper/lower
to show off strength of perspective relaxation, and also
how to make it SOCP

Contributed by Jeff Linderoth, University of Wisconsin, Madison


O. Gunluk and J. T. Linderoth, Perspective Relaxation of Mixed
Integer Nonlinear Programs with Indicator Variables,
Mathematical Programming, Series B, 104:183-206, 2010.
$offtext

sets i        Assets;
alias(i,j);

parameters
    Q(i,j)    Covariance matrix
    alpha(i)  Expected returns
    ell(i)    Min Buy-In
    u(i)      Max Buy-In;
scalar
    rho       Minimum return;

$if not set isize $set isize 10
$ife %isize%>200 $abort maximum isize is 200

set i / 1*%isize% /;
$gdxin mvdata
$load Q alpha ell u rho

* Produce eigenvalues and Cholesky factors of Q and Q-D
parameters
    L(i,j)   Cholesky of Q
    LT(j,i)  Transpose of cholesky of Q
    D(i)     Diagonal extraction of Q
    R(i,j)   Q - D
    M(i,j)   Cholesky of R
    MT(j,i)  Transpose of cholesky of R

execute_unload 'mv', i, Q;
execute 'eigenvalue mv.gdx i Q mvout.gdx D > %system.nullfile%';
abort$errorlevel 'problems running eigenvalue';
execute_load 'mvout', D; D(i) = D('1') - 0.001;
R(i,j) = Q(i,j) - D('1')$sameas(i,j);

execute 'cholesky mv.gdx i Q mvout.gdx L > %system.nullfile%';
abort$errorlevel 'problems running cholesky for Q';
execute_load 'mvout', L; option LT<L;

execute_unload 'mv', i, R;
execute 'cholesky mv.gdx i R mvout.gdx M > %system.nullfile%';
abort$errorlevel 'problems running cholesky for R';
execute_load 'mvout', M; option MT<M;

variables
    variance Objective variable
    x(i)     Purchase amounts
    y(i)     Surrogate for x^2
    z(i)     Indicators for purchase;

positive variables x, y;
binary variables z;

equations
    variance_con
    budget_con
    return_con
    vlb_con(i)
    vub_con(i);

variance_con..     variance =e= sum((i,j), Q(i,j)*x(i)*x(j));

budget_con..       sum(i,x(i)) =e= 1;

return_con..       sum(i, alpha(i)*x(i)) =g= rho;

vlb_con(i)..       x(i) =g= ell(i) * z(i);

vub_con(i)..       x(i) =l= u(i) * z(i);

option optcr = 0; variance.l=0;

model basic_mv / variance_con, budget_con, return_con, vlb_con, vub_con /;
solve basic_mv minimizing variance using miqcp;

parameter rep;
rep('basic','obj') = variance.l;
rep('basic','secs') = basic_mv.resusd;

variables
    w(i)           w=L^Tx
    v              Objective:  second rotated cone var
    fx             For soc;

equations
    wdef_con(i)    w=L^Tx
    conedef_con    2rv >= ||w||^2;

v.lo = 0;
fx.fx = 0.5;

* Explicit cone syntax for MOSEK
*conedef_con..        fx+v =c= sum(i, w(i));

conedef_con..      2*fx*v =g= sum(i, sqr(w(i)));

wdef_con(i)..      w(i) =e= sum(j, LT(i,j)*x(i));

model basic_socp_mv / budget_con, return_con, vlb_con,
                      vub_con, conedef_con, wdef_con /;

solve basic_socp_mv minimizing v using miqcp;

rep('socp','obj')  = variance.l;
rep('socp','secs') = basic_socp_mv.resusd;

positive variables
    t(i)           (2t_j) z_j >= x_j^2  :  2t = y: min 2Dt;

equations
    pobj_def       Perspective objective
    w2def_con(i)   For w=M^Tx
    pcone_def(i)   For 2t_i z_i >= x_j^2;

pobj_def..         variance =e=  v + sum(i, 2*D(i)*t(i));

w2def_con(i)..     w(i) =e= sum(j, MT(i,j)*x(j));

* Explicit cone syntax for MOSEK
*variable zz(i); equation defzz(i); defzz(i).. zz(i) =e= z(i);
*pcone_def(i)..       t(i)+zz(i) =c= x(i);
*model p_socp_mv / pobj_def, w2def_con, pcone_def, conedef_con,
*                  budget_con, return_con, vlb_con, vub_con, defzz /;

pcone_def(i)..     2*t(i)*z(i) =g= sqr(x(i));

model p_socp_mv / pobj_def, w2def_con, pcone_def, conedef_con,
                  budget_con, return_con, vlb_con, vub_con /;

solve p_socp_mv minimizing variance using miqcp;

rep('p_socp','obj')  = variance.l;
rep('p_socp','secs') = p_socp_mv.resusd;

display rep;
