option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Flow in a channel COPS 2.0 #7 (FLOWCHAN,SEQ=235)

$ontext

Analyze the flow of a fluid during injection into a long vertical
channel, assuming that the flow is modeled by the boundary value
problem

        u''''=R(u'u''-uu''),    0<=t<=1,
        u(0)=0, u(1)=1, u'(0)=u'(1)=0,

where u is the potential function, u' is the tangential velocity of
the fluid, and R is the Reynolds number.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --nh. COPS performance tests have been reported for nh
= 50, 100, 200, 400

The model can be solved as an NLP (with a dummy objective) or as a
CNS. Select command line parameter --cns to solve the CNS model.

Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical
Solution of Boundary Value Problems for Ordinary
Differential Equations. SIAM, 1995.

$offtext


$if     set n  $set nh %n%
$if not set nh $set nh 50

$set nc 4
$set nd 4

Sets    nc collocation points                  /1*%nc%/
        nh partition intervals                 /1*%nh%/
        nd order of the differential equation  /1*%nd%/
Scalars
    tf    ODEs defined in [0 tf]               /  1   /
    R     Reynolds number                      / 10.0 /
    h     uniform interval length;             h = tf/%nh%;

parameter bc(nd,*) Boundary condition /
1.Start   0
1.End     1
2.Start   0
2.End     0
/

Parameter rho(nc) roots of k-th degree Legendre polynomial /
  1 0.06943184420297
  2 0.33000947820757
  3 0.66999052179243
  4 0.93056815579703
/

* The collocation approximation u is defined by the parameters v and w.
* uc[i,j] is u evaluated at the collocation points.
* Duc[i,j,s] is the (s-1)-th derivative of u at the collocation points.

Variables  v(nh,nd)
           w(nh,nc)
           Duc(nh,nc,nd);

Equations  Ducdef(nh,nc,nd)
           bc_3
           bc_4
           continuity(nh,nd)
           collocation(nh,nc);

Alias (nh,i), (nc,j,kj), (nd,s,ks);

Ducdef{i,j,s}.. Duc(i,j,s) =e=
    sum {ks$(ord(ks)-ord(s)>=0), v[i,ks]*power(rho[j]*h,ord(ks)-ord(s))/fact[ord(ks)-ord(s)]}
  + power(h,%nd%-ord(s)+1)* sum{kj, w[i,kj]*power(rho[j],ord(kj)+%nd%-ord(s))/fact[ord(kj)+%nd%-ord(s)]};

* Boundary conditions
v.fx('1','1') = bc('1','Start');
v.fx('1','2') = bc('2','Start');

bc_3..
  sum {ks, v['%nh%',ks]*power(h,ord(ks)-1)/fact[ord(ks)-1]} + power(h,%nd%)*
  sum {kj, w['%nh%',kj]/fact[ord(kj)+%nd%-1]} =e= bc('1','End');

bc_4..
    sum {ks$(ord(ks)-2>=0), v['%nh%',ks]*power(h,ord(ks)-2)/fact[ord(ks)-2]}
  + power(h,%nd%-1)*sum {kj, w['%nh%',kj]/fact[ord(kj)+%nd%-2]} =e= bc('2','End');

continuity(i+1,s)..
    sum {ks$(ord(ks)-ord(s)>=0), v[i,ks]*power(h,ord(ks)-ord(s))/fact[ord(ks)-ord(s)]}
  + power(h,%nd%-ord(s)+1)*sum {kj, w[i,kj]/fact[ord(kj)+%nd%-ord(s)]}
    =e= v[i+1,s];

collocation(i,j)..
  sum {kj, w[i,kj]*power(rho[j],ord(kj)-1)/fact[ord(kj)-1]} =e=
  R*(Duc[i,j,'2']*Duc[i,j,'3'] - Duc[i,j,'1']*Duc[i,j,'4']);

*
* initial values
*
Parameter t(nh) partition; t(i) = (ord(i)-1)*h;

v.l[i,'1'] = sqr(t[i])*(3 - 2*t[i]);
v.l[i,'2'] = 6*t[i]*(1 - t[i]);
v.l[i,'3'] = 6*(1.0 - 2*t[i]);
v.l[i,'4'] = -12;

Duc.l{i,j,s} = sum {ks$(ord(ks)-ord(s)>=0),
                    v.l[i,ks]*power(rho[j]*h,ord(ks)-ord(s))/fact[ord(ks)-ord(s)]};

$if not set cns $goto nlp

model channel /all/;

$if set workspace channel.workspace = %workspace%;

solve channel using cns;

$goto continue

$label nlp

Variable obj    dummy objective;
Equation defobj; defobj.. obj =e= 0.0;

model channel /all/;

$if set workspace channel.workspace = %workspace%;

solve channel minimizing obj using nlp;

$label continue
Parameter uc(nh,nc,nd) summary report;
uc(i,j,s) =   v.l[i,s] + h*sum {kj, w.l[i,kj]*power(rho[j],ord(kj))/fact[ord(kj)]};
display uc;

