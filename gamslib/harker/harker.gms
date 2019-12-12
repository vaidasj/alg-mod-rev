option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Models of Spatial Competition (HARKER,SEQ=85)

$Ontext

   A spatial equilibrium model is used to demonstrate different
   ways of modeling market behavior. Competitive and Monopolistic markets
   are modeled using consumers' and producers' surplus. A Cournot-Nash
   Oligopoly model is solved by a Diagonalization or Jacobi algorithm.


Network structure:

        one      two     three        demand and supply points
        /  \       \     /
       /    \       \   /
     four -- five -- six              transport nodes

linear demand function:        demand(price) = (rho - price)/eta

linear marginal cost function: cost(supply) = alpha + 2*beta*supply

transport cost:                cost(t(ij)) = kappa(ij)*t(ij) + nu(ij)*t(ij)^3


Harker, P T, Alternative Models of Spatial Competition. Operations
Research 34, 3 (1986), 410-425.

$Offtext

Sets  n     nodes    / one, two, three, four, five, six /
      l(n)  regions  / one, two, three /

Alias (l,lp),(n,np)

Table coefs(l,*)  demand and supply data

         alpha   beta    rho      eta
one       1.0     .5      19      .2
two       2.0     .4      27      .01
three     1.5     .3      30      .3

Table pairs(n,np,*)  transport data

           kappa     nu
one.four     1       .5
one.five     2       .2
two.six      3       .3
three.six    1       .4
four.one     2       .3
four.five    1       .1
four.six     1       .1
five.one     3       .5
five.four    2       .2
five.six     1      1.0
six.two      2       .25
six.three    2       .2
six.four     1       .9
six.five     3       .8

Set arc(n,np) active arcs; arc(n,np) = pairs(n,np,"kappa");

Positive
Variables   t(n,np)  transport
            tt(l,lp) notional o-d flows
            d(n)     demand
            s(n)     supply
Variables   obj      objective value

Equations bal      supply demand balance
          sbal(l)  supply balance
          dbal(l)  demand balance
          nbal(n)  node balance
          in(l)    inflow balance
          objdef   objective definition
          objoli   objective definition oligopoly   ;

Scalars pm   product market type
        tm   transport market type;

bal..      sum(l, d(l)) =e= sum(l, s(l)) ;

nbal(n)..  s(n)$l(n) + sum(arc(np,n), t(arc)) =e= d(n)$l(n) + sum(arc(n,np), t(arc));

objdef.. obj =e= sum(l, coefs(l,"rho")*d(l) - pm*coefs(l,"eta")*sqr(d(l)) )

               - sum(l, coefs(l,"alpha")*s(l) + coefs(l,"beta")*sqr(s(l)) )

               - sum(arc, pairs(arc,"kappa")*t(arc)
                        + tm*pairs(arc,"nu")*power(t(arc),3) );

Model hark     / bal, nbal, objdef /;

Parameters rep1 transport summary
           rep2 supply demand and price summary;

s.l(l) = 25; d.l(l)=25;

*       1. classical spatial price equilibrium: perfectly competitive
*       producers and suppliers facing average cost pricing
*       of transportation:

pm = .5; tm = 1/3; Solve hark maximizing obj using nlp;
                   rep1(arc,       "cspe2") = t.l(arc);
                   rep2("supply",l,"cspe2") = s.l(l);
                   rep2("demand",l,"cspe2") = d.l(l);
                   rep2("price ",l,"cspe2") = coefs(l,"rho") - coefs(l,"eta")*d.l(l);

*       2. monopoly pricing equilibrium in which the firm owns both
*       means of production and distribution network (hence, marginal
*       cost pricing prevails at both the factory and the railhead):

pm = 1; tm = 1;    Solve hark maximizing obj using nlp;
                   rep1(arc,       "monop1") = t.l(arc);
                   rep2("supply",l,"monop1") = s.l(l);
                   rep2("demand",l,"monop1") = d.l(l);
                   rep2("price ",l,"monop1") = coefs(l,"rho") - coefs(l,"eta")*d.l(l);

*       3. monopoly pricing equilibrium in which the firm uses the
*       distribution network with average cost pricing:

pm = 1; tm = 1/3;  Solve hark maximizing obj using nlp;
                   rep1(arc,       "monop2") = t.l(arc);
                   rep2("supply",l,"monop2") = s.l(l);
                   rep2("demand",l,"monop2") = d.l(l);
                   rep2("price ",l,"monop2") = coefs(l,"rho") - coefs(l,"eta")*d.l(l);

*       4. multi-producer oligopoly model with average cost pricing
*       of transportation links:

pm = 1; tm = 1/3;

* Additional equation required to solve the a Cournot-Nash
* Oligopoly model by a Diagonalization or Jacobi algorithm.
*
* note the use of d.l(l)-tt.l(lp,l) which holds the values of the
* previous iteration


Variable  tt(l,lp) notional o-d flows

Equations sbal(l)  supply balance
          dbal(l)  demand balance
          in(l)    inflow balance
          objoli   objective definition oligopoly   ;


sbal(l).. s(l) =e= sum(lp, tt(l,lp));

dbal(l).. d(l) =e= sum(lp, tt(lp,l));

in(l)..   d(l) =e= tt(l,l) + sum(arc(n,l), t(arc));

objoli.. obj =e= sum(l, coefs(l,"rho")*d(l) - pm*coefs(l,"eta")*
                               sum(lp, (d.l(l)-tt.l(lp,l)+tt(lp,l))*tt(lp,l)) )

               - sum(l, coefs(l,"alpha")*s(l) + coefs(l,"beta")*sqr(s(l)) )

               - sum(arc, pairs(arc,"kappa")*t(arc)
                        + tm*pairs(arc,"nu")*power(t(arc),3) );

model harkoli  / nbal, sbal, dbal, in, objoli / ;

set iter iteration count / iter1*iter20 /;
parameters objold previous objective, irep(iter,n,np) iteration summary;
option irep:8:1:2;


 tt.l(l,lp)=1; Option limcol=0,limrow=0;

objold=0; harkoli.objval=1;
loop(iter$(abs(objold-harkoli.objval) > 1e-5),
   objold = harkoli.objval;
   Solve harkoli maximizing obj using nlp;
   harkoli.solprint=%solprint.Quiet%;
   irep(iter,arc) = t.l(arc) );

Display irep;

rep1(arc,       "oligop") = t.l(arc);
rep2("supply",l,"oligop") = s.l(l);
rep2("demand",l,"oligop") = d.l(l);
rep2("price ",l,"oligop") = coefs(l,"rho") - coefs(l,"eta")*d.l(l);

Display rep1, rep2;
