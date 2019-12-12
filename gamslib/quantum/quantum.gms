option DNLP=convert;
option DNLP=convert;
option DNLP=convert;
$title An application from quantum mechanics (QUANTUM,SEQ=300)
$ontext

An application from quantum mechanics:
Find energy eigenvalues of the anharmonic oscillator with g=1
in the Gaussian and Post-Gaussian variational methods.


Erwin Kalvelagen, May 2004

Ogura, A, Post-Gaussian variational method for quantum anharmonic
oscillator, 1999. Laboratory of Physics, College of Science and
Technology, Nihon University,arXiv:physics/9905056 v1 28 May 1999

$offtext

variables
   ham   'expected value of hamiltonian'
   alpha 'variational parameter'
   n     'variational parameter (n=1: Gaussian trial function)';

equation
   hamiltonian;

scalar g /1/;

hamiltonian..

   ham =e= (sqr(n)/2)*(gamma(2-1/(2*n))/gamma(1/(2*n)))*(alpha**(1/n))
           +(1/2)*(gamma(3/(2*n))/gamma(1/(2*n)))*(alpha**(-1/n))
           +g*(gamma(5/(2*n))/gamma(1/(2*n)))*(alpha**(-2/n));


alpha.lo = 0.0001; alpha.up = 10; alpha.l=1;

*
* gaussian variational method
*

n.fx = 1;

model m /hamiltonian/;

solve m minimizing ham using dnlp;

parameter results(*,*);
results('Gaussian','Ground') = ham.l;
results('Gaussian','alpha')  = alpha.l;
results('Gaussian','n')      = n.l;


*
* post-gaussian variational method
*
n.lo = 0.001; n.up = 10;
solve m minimizing ham using dnlp;

results('Post-Gaussian','Ground') = ham.l;
results('Post-Gaussian','alpha')  = alpha.l;
results('Post-Gaussian','n')      = n.l;

option decimals = 6; display results;
