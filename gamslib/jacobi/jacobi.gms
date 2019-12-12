option MCP=convert;
option MCP=convert;
option MCP=convert;
$Title Asynchronous Jacobi Methods (JACOBI,SEQ=329)

$ontext

This example outlines procedures for implementing various serial and
parallel iterative schemes. For simplicity, a system of linear equations
is selected. This schema extends naturally to other problem types like
nonlinear systems and mixed complementarity problems.

We will implement various ways to solve the problem:

   Gauss Seidel      serial
   Jacobi - parallel sub problems
   Gauss-Seidel      Asynchronous


Bertsekas, D P, and Tsitsiklis, J N, Parallel and distributed
computation: numerical methods. Prentice-Hall, Inc., Upper Saddle
River, NJ, USA, 1989.

$offtext
$ife %system.gamsversion%<231 $abort Version too old! Need 231 or higher
$eolcom !

$setddlist vars parts iters       ! acceptable double dash parameters
$if NOT set vars  $set vars   50  ! number of variables
$if NOT set parts $set parts   5  ! number of partitions
$if NOT set iters $set iters 100  ! max number of iterations
$if NOT errorfree $abort wrong double dash parameters: --vars=n --parts=n iters=n

set i problem size /i1*i%vars%/; alias(i,j);

variables x(i); equations e(i); parameter A(i,j), b(i);

e(i)..  sum(j, A(i,j)*x(j)) =e= b(i); model lin /e.x/;

b(i) = 1; A(i,i) = 1; A(i,j)$(not sameas(i,j)) = 0.001;

lin.solprint  = %solprint.Quiet%;       ! suppress solution output
lin.solvelink = %solvelink.CallModule%; ! keep gams memory resident
lin.holdfixed = 1;                      ! treat fixed vars as constants

sets iters       iteration count / iter0*iter%iters% /
     k           problem partition blocks  / block_1*block_%parts% /
     active(k,i) active vars in partition k
     fixed(k,i)  fixed vars in partition k;
alias(kp,k);

parameters resrep(iters,*) Summary Residual Report
           solrep(i,*)     Summary solution report
           stats           Summary statistics
           res(iters)      max residual
           h(k)            handles
           tol             convergence tolerance / 1e-4 /
           iter            iteration counter
           curres          intermediate residual values
           t1              temporary timer vars ;


active(k,i) = ceil(ord(i)*card(k)/card(i)) = ord(k);
fixed(k,i)  = not active(k,i);


**** solve big problem

t1 := TimeElapsed;
solve lin us mcp;
stats('elapsed','Big Problem') = TimeElapsed - t1;
stats('solves' ,'Big Problem') = 1;

solrep(i,'Big Problem') = x.l(i);


****  Gauss Seidel - all serial

x.l(i) = 0; res(iters) = 0; res('iter0') = smax(i, abs(b(i)));
t1 := TimeElapsed;
loop(iters$(res(iters) > tol),
  loop(k,
    x.fx(i)$fixed(k,i) = x.l(i);
    solve lin using mcp;
    x.lo(i)$fixed(k,i) = -inf;
    x.up(i)$fixed(k,i) =  inf );
  res(iters+1) = smax(i, abs(b(i) - sum(j, A(i,j)*x.l(j)))) );

stats('elapsed','Gauss Seidel') = TimeElapsed - t1;
stats('solves' ,'Gauss Seidel') = (card(res)-1)*card(k);

resrep(iters,'Gauss Seidel') = res(iters);
solrep(i,'Gauss Seidel') = x.l(i);


**** Jacobi - parallel sub problems

lin.solvelink = %solvelink.AsyncGrid%; ! set grid mode

x.l(i) = 0; res(iters) = 0; res('iter0') = smax(i, abs(b(i)));
t1 := TimeElapsed;
loop(iters$(res(iters) > tol),
   loop(k,                            ! submitting loop
      x.fx(i)$fixed(k,i) = x.l(i);
      solve lin using mcp; h(k) = lin.handle;
      x.lo(i)$fixed(k,i) = -inf;
      x.up(i)$fixed(k,i) =  inf );
   repeat                             ! collection loop
       loop(k$handlecollect(h(k)),
          display$handledelete(h(k)) 'trouble deleting handle';
          h(k) = 0  );                  ! mark problem as solved
   display$sleep(card(h)*0.1) ' sleep a bit';
   until card(h) = 0 or timeelapsed > 10;
   res(iters+1) = smax(i, abs(b(i) - sum(j, A(i,j)*x.l(j)))) );

stats('elapsed','Jacobi') = TimeElapsed - t1;
stats('solves' ,'Jacobi') = (card(res)-1)*card(k);
resrep(iters,'Jacobi') = res(iters);
solrep(i,'Jacopi') = x.l(i);


**** Asynchronous Gauss-Seidel

lin.solvelink = %solvelink.AsyncGrid%;   ! set grid mode

x.l(i) = 0; res(iters) = 0; res('iter0') = smax(i, abs(b(i)));
iter = 0; t1 := TimeElapsed;

loop(k,                          ! initial submission loop
  x.fx(i)$fixed(k,i) = x.l(i);
  solve lin using mcp;
  h(k) = lin.handle;
  x.lo(i)$fixed(k,i) = -inf;
  x.up(i)$fixed(k,i) =  inf );

repeat   ! retriev and submit
  loop(k$handlecollect(h(k)),
     display$handledelete(h(k)) 'trouble deleting handle';
     h(k) = 0;
     iter = iter + 1;
     curres = smax(i, abs(b(i) - sum(j, A(i,j)*x.l(j))));
     res(iters)$(ord(iters) = iter + 1) = curres;
     if(curres > tol,
        loop(kp$(h(kp)=0 and
                 smax(active(kp,i), abs(b(i) - sum(j, A(i,j)*x.l(j)))) > tol),
           x.fx(i)$fixed(kp,i) = x.l(i);
           solve lin using mcp;  ! submit new problem
           h(kp) = lin.handle;
           x.lo(i)$fixed(kp,i) = -inf;
           x.up(i)$fixed(kp,i) =  inf ) ) );
   display$sleep(card(h)*0.1) ' sleep a bit',curres;
until card(h) = 0 or timeelapsed > 100;


stats('elapsed','Async Gauss') = TimeElapsed - t1;
stats('solves' ,'Async Gauss') = card(res)-1;

resrep(iters,'Async Gauss') = res(iters);
solrep(i,'Async Gauss') = x.l(i);

option dispwidth=15,decimals=6;
display resrep,solrep,stats;
