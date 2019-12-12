option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Vietorisz/Manne Fertilizer Model 1961  (VIETMAN,SEQ=30)

$Ontext

This model is designed to find the optimal size and location
of ammonia and fertilizer plants. Three formulations are suggested.
MIP, expanded LP and enumeration are used.


Manne, A S, and Vietoriscz Thomas, Chemical Processes, Plant Location,
and Economies of Scale. In Manne, A S, and Markowitz, H M, Eds,
Studies in Process Analysis. John Wiley and Sons, New York and London,
1963, p. 136.

$Offtext

Sets i      sources of ammonia and fertilizer  / 0*5 /
     id(i)  domestic sources - plants          / 1*5 /
     k      demand centers              / 1*12 /

Alias (i,j),(id,jd)

Table fc(i,*)  fixed cost of plant erection

     ammonia  fertilizer
  1    1760       810
  2    1656       951
  3    1626       754
  4    1784       856
  5    1782       852

Table c(i,j)  production and shipping cost for ammonia

          1    2    3    4    5
  0    56.0 47.4 47.6 54.4 51.0
  1    20.4 33.6 34.5 26.9 29.5
  2    33.4 20.2 26.7 31.3 28.1
  3    35.3 27.7 21.2 35.0 32.2
  4    41.8 46.4 49.1 35.3 42.1
  5    43.0 41.8 44.9 40.7 33.9

Table d(j,k)  production and shipping cost for fertilizer

          1    2    3    4    5    6    7    8    9   10   11   12
  0    86.1 76.4 76.8 87.0 83.6 90.3 75.4 76.4 81.2 96.4 82.4 86.4
  1    32.2 44.0 45.8 31.5 34.1 42.0 43.0 40.3 37.8 42.9 36.6 30.8
  2    36.6 24.4 29.2 37.6 34.2 41.0 26.1 24.2 29.9 48.9 31.9 37.6
  3    37.0 27.9 23.1 41.3 38.4 40.9 24.7 26.8 29.6 52.8 32.6 41.3
  4    38.5 41.9 48.0 23.2 32.2 48.5 44.6 44.1 43.1 34.5 42.4 28.9
  5    44.0 35.3 41.1 33.2 29.8 54.1 37.7 37.1 42.8 44.6 44.4 32.6

Parameter r(k)  fertilizer demand   /  1   9.2,       7 168.6
                                        2  59.9,       8  50.0
                                        3  95.8,       9  34.0
                                        4 185.3,      10  11.1
                                        5 344.1,      11 109.5
                                        6  66.1,      12  47.0 /

Scalar bigm; bigm = sum(k, r(k)); Display bigm;

$Stitle model

Variables x(i,jd)  ammonia shipment
          y(j,k)   fertilizer shipments
          u(i,j,k) tagged product shipments
          z(jd)    fertilizer decision
          w(id)    ammonia decision
          tc       total cost

Positive Variables x, y, u;
Binary variables z, w;

Equations fd(k)     final demand balance
          fd1(k)    final demand balance (tagged)
          ab(jd)    ammonia balance
          ia(id)    integer constraint ammonia
          ia1(id,k) integer constraint ammonia (tagged)
          ifu(jd)   integer constraint fertilizer
          ift(jd,k) integer constraint fertilizer (tagged)
          ta        total cost balance
          ta1       total cost balance (tagged) ;

$Double

 ab(jd)..  sum(i, x(i,jd)) =g= sum(k, y(jd,k));
 fd(k)..   sum(j, y(j,k))  =g= r(k);
 ia(id)..  bigm*w(id)  =g=  sum(jd, x(id,jd));
 ifu(jd).. bigm*z(jd)  =g=  sum(k, y(jd,k));
 ta..      tc =e= sum(id, fc(id,"ammonia")*w(id)) + sum(jd, fc(jd,"fertilizer")*z(jd))
                + sum((i,jd), c(i,jd)*x(i,jd)) + sum((j,k), d(j,k)*y(j,k));

 fd1(k) ..   sum((i,j), u(i,j,k)) =g= r(k) ;
 ia1(id,k).. r(k)*w(id) =g= sum(jd, u(id,jd,k)) ;
 ift(jd,k).. r(k)*z(jd) =g= sum(i, u(i,jd,k)) ;
 ta1..       tc =e= sum(id, fc(id,"ammonia")*w(id)) + sum(jd, fc(jd,"fertilizer")*z(jd))
                  + sum((i,j,k), (c(i,j)+d(j,k))*u(i,j,k));
$Single

Models  vietmip mip version       / fd,ab,ia,ifu,ta /
        viettag expanded version  / fd1,ia1,ift,ta1 /

Solve vietmip minimizing tc using mip;
Solve viettag minimizing tc using rmip;

$Stitle enumeration

Sets c32  labels 1 to 32 / 1*32 /
     type product types  / ammonia, fertilizer /

Alias (c32,c32p)

Parameters  pow2(id)         powers of 2
            com32(c32,i)     combinations
            tfix(c32,type)   total fixed cost at location
            minamm(c32,i)    minimum ammonia cost
            minfer(c32,c32p) minimum fertilizer cost
            fccom(c32,c32p)  fixed cost combinations
            tcost(c32,c32p)  total costs
            best             lowest cost
            best3p(c32,c32p) best combinations within 3 percent;

pow2(id) = power(2,card(id)-ord(id));
com32(c32,i)  = 1;
com32(c32,id) = mod(floor((ord(c32)-1)/pow2(id)+.001),2);

tfix(c32,type)   = sum(id, fc(id,type)*com32(c32,id));
minamm(c32,id)   = smin(i$com32(c32,i), c(i,id));
minfer(c32,c32p) = sum(k, r(k)*smin(i$com32(c32p,i), d(i,k) + minamm(c32,i)));

fccom(c32,c32p)  = tfix(c32,"ammonia") + tfix(c32p,"fertilizer");
tcost(c32,c32p)  = fccom(c32,c32p) + minfer(c32,c32p);

best             = smin((c32,c32p), tcost(c32,c32p));
best3p(c32,c32p) = tcost(c32,c32p)$(tcost(c32,c32p) le 1.03*best);

Display pow2, com32, tfix, minamm, minfer, fccom, tcost, best, best3p;
