* Include file shared by a couple of COPS models that use the
* collocation method: pinene, popdynm, gasoil, methanol
*
* Parameter %1 collocation points
*           %2 measurements

Alias (nh,i), (nc,j,k), (ne, s);

Table legendre(*,*) roots of k-th degree Legendre polynomial
                  nc1               nc2              nc3              nc4
nc1  0.50000000000000  0.78867513459481 0.50000000000000 0.06943184420297
nc2                    0.21132486540519 0.88729833462074 0.33000947820757
nc3                                     0.11270166537926 0.66999052179243
nc4                                                      0.93056815579703
;

Parameter t(nh)   partition
          rho(nc) roots of k-th degree Legendre polynomial
          itau(nm) "itau[i] is the largest integer k with t[k] <= tau[i]";

Scalar    tf     "ODEs defined in [0,tf]"
          h      uniform interval length;

rho(nc)  = legendre(nc,'%1');
tf       = smax(nm,tau(nm));
h        = tf/card(nh);
t(nh)    = (ord(nh)-1)*h;
itau(nm) = min(%nh%,floor(tau[nm]/h)+1);

Set mapitau(nm,nh); mapitau(nm,nh) = itau(nm) = ord(nh);

Parameter fact(nc) faculty;
fact('nc1') = 1; loop(nc$(ord(nc)>1), fact(nc) = fact(nc-1)*ord(nc));

* The collocation approximation u is defined by the parameters v and w.
* uc and Duc are, respectively, u and u' evaluated at the collocation points.

Variable v(nh,ne)
         w(nh,nc,ne)
         uc(nh,nc,ne)
         Duc(nh,nc,ne)
         obj;

Equations defuc(nh,nc,ne)
          defDuc(nh,nc,ne)
          continuity(nh,ne)
          defl2error;

defuc(i,j,s)..
  uc(i,j,s) =e= v[i,s] + h*sum{k, w[i,k,s]*power(rho[j],ord(k))/fact[k]};

* fact[k-1] = fact[k]/ord(k)
defDuc(i,j,s)..
  Duc(i,j,s) =e= sum {k, w[i,k,s]*power(rho[j],ord(k)-1)/(fact[k]/ord(k))};

defl2error..  obj =e= sum{(mapitau(nm,i),s),
  sqr(v[i,s] + sum {k, w[i,k,s]*power(tau[nm]-t[i],ord(k))
                       /(fact[k]*power(h,ord(k)-1))} - z[nm,s])} ;

continuity(nh(i+1),s)..  v[i,s] + sum {j, w[i,j,s]*h/fact[j]} =e= v[i+1,s];

loop(mapitau(nm,i),
  v.l[nh,s]$(ord(nh) > itau(nm-1)+1) = z[nm,s];
);
v.l[i,s]$(ord(i) <= smin(nm, itau(nm))) = bc[s];
v.l[i,s]$(ord(i) > smax(nm, itau(nm))) = z['%2',s];
uc.l(i,j,s) = v.l[i,s];
