option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Gas Transmission Problem - Belgium (GASTRANS,SEQ=217)
$ontext
The problem of distributing gas through a network of pipelines is formulated as
a cost minimization subject to nonlinear flow-pressure relations, material
balances, and pressure bounds. The Belgian gas network is used as an example.

First, we model a straight-forward NLP formulation that can be solved fine 
by todays NLP solvers.
Afterwards, the 3-stage approach by Wolf & Smeers is implemented (line 160ff).

de Wolf, D, and Smeers, Y, The Gas Transmission Problem Solved by
and Extension of the Simplex Algorithm. Management Science 46, 11
(2000), 1454-1465.

$offtext
$eolcom //

Sets i Towns / Anderlues, Antwerpen, Arlon, Berneau, Blaregnies, Brugge, Dudzele,
               Gent, Liege, Loenhout, Mons, Namur, Petange, Peronnes, Sinsin,
               Voeren, Wanze, Warnand, Zeebrugge, Zomergem /
     a Arcs  / 1*24 /
     as(a) active arcs
     ap(a) passive arcs
     aij(a,i,i) arc description

alias (i,j)

set nc node data column headers /
       slo supply lower bound (mill M3 per day)
       sup supply upper bound (mill M3 per day)
       plo pressure lower bound (bar)
       pup pressure upper bound (bar)
       c   cost ($ per MBTU)   /

table Ndata(i,nc) Node Data

               slo     sup     plo     pup     c
Anderlues       0     1.2      0      66.2     0
Antwerpen    -inf   -4.034    30      80.0     0
Arlon        -inf   -0.222     0      66.2     0
Berneau         0      0       0      66.2     0
Blaregnies   -inf   -15.616   50      66.2     0
Brugge       -inf    -3.918   30      80.0     0
Dudzele         0     8.4      0      77.0    2.28
Gent         -inf    -5.256   30      80       0
Liege        -inf    -6.385   30      66.2     0
Loenhout        0     4.8      0      77.0    2.28
Mons         -inf    -6.848    0      66.2     0
Namur        -inf    -2.120    0      66.2     0
Petange      -inf    -1.919   25      66.2     0
Peronnes        0     0.96     0      66.2    1.68
Sinsin          0      0       0      63.0     0
Voeren       20.344   22.012  50      66.2    1.68
Wanze           0      0       0      66.2     0
Warnand         0      0       0      66.2     0
Zeebrugge      8.870  11.594   0      77.0    2.28
Zomergem        0      0       0      80.0     0

set ac  Arc data column headers /
        D   diameter (mm)
        L   length (km)
        act type indicator ( 1 = active)  /

table AData(a,i,j,*) Arc Data
                                D       L    act
 1 . Zeebrugge  . Dudzele      890.0   4.0
 2 . Zeebrugge  . Dudzele      890.0   4.0
 3 . Dudzele    . Brugge       890.0   6.0
 4 . Dudzele    . Brugge       890.0   6.0
 5 . Brugge     . Zomergem     890.0  26.0
 6 . Loenhout   . Antwerpen    590.1  43.0
 7 . Antwerpen  . Gent         590.1  29.0
 8 . Gent       . Zomergem     590.1  19.0
 9 . Zomergem   . Peronnes     890.0  55.0
10 . Voeren     . Berneau      890.0   5.0    1
11 . Voeren     . Berneau      395.0   5.0    1
12 . Berneau    . Liege        890.0  20.0
13 . Berneau    . Liege        395.0  20.0
14 . Liege      . Warnand      890.0  25.0
15 . Liege      . Warnand      395.0  25.0
16 . Warnand    . Namur        890.0  42.0
17 . Namur      . Anderlues    890.0  40.0
18 . Anderlues  . Peronnes     890.0   5.0
19 . Peronnes   . Mons         890.0  10.0
20 . Mons       . Blaregnies   890.0  25.0
21 . Warnand    . Wanze        395.5  10.5
22 . Wanze      . Sinsin       315.5  26.0    1
23 . Sinsin     . Arlon        315.5  98.0
24 . Arlon      . Petange      315.5   6.0

Scalars  T   gas temperature (K)                / 281.15  /
         e   absolute rugosity (mm)             /   0.05  /
         den density of gas relative to air (-) /   0.616 /
         z   compressibility factor (-)         /   0.8   /

parameter lam(a,i,j)    lambda constant (page 1464)
          c2(a,i,j)     pipe constant (page 1463)
          arep(a,i,j,*) Arc Report;

  aij(a,i,j) = adata(a,i,j,'L');

  as(a) = sum(aij(a,i,j), adata(aij,'act'));
  ap(a) = not as(a);

  lam(aij(a,i,j)) = 1/sqr(2*log10(3.7*adata(aij,'D')/e));
  c2(aij(a,i,j)) = 96.074830e-15*power(adata(aij,'D'),5)/lam(aij)/z/t/adata(aij,'L')/den;

  arep(aij,'lam') = lam(aij);
  arep(aij,'c2')  = c2(aij);

option arep:6:3:1; display arep,as,ap;

Variables f(a,i,j)   Arc flow (1e6 SCM)
          s(i)       supply - demand (1e6 SCM)
          pi(i)      squared pressure
          sc         supply cost
;

Equations flowbalance(i)    flow conservation
          weymouthp(a,i,j)  flow pressure relationship - passive
          weymoutha(a,i,j)  flow pressure relationship - active
          defsc             definition of supply cost
;

flowbalance(i).. sum(aij(a,i,j), f(aij)) =e= sum(aij(a,j,i), f(aij)) + s(i);

weymouthp(aij(ap,i,j)).. signpower(f(aij),2) =e= c2(aij)*(pi(i)-pi(j));

weymoutha(aij(as,i,j))..       - sqr(f(aij)) =g= c2(aij)*(pi(i)-pi(j));

defsc.. sc =e= sum(i, ndata(i,'c')*s(i));

* supply, demand, pressure, and flow bounds
s.lo(i)  = ndata(i,'slo');
s.up(i)  = ndata(i,'sup');
pi.lo(i) = sqr(ndata(i,'plo'));
pi.up(i) = sqr(ndata(i,'pup'));
f.lo(aij(as,i,j)) = 0;

* initialize flow to avoid getting trapped at signpower(0,2)
f.l(aij) = uniform(-1,1);

model gastrans / flowbalance, weymouthp, weymoutha, defsc /;

solve gastrans using nlp min sc;

display f.l;











* to run the Wolf & Smeers approach, remove the following $exit
$exit

Parameter frep Flow Report
          sdp  supply demand and pressure;

frep('NLP',aij,'Flow') = f.l(aij);

sdp('NLP',i,'Supply')   =   s.l(i)$(s.l(i) > 0);
sdp('NLP',i,'Demand')   =  -s.l(i)$(s.l(i) < 0);
sdp('NLP',i,'Pressure') =  sqrt(pi.l(i));
sdp('NLP','','Obj')     =  sc.l;


Parameters flow(a,i,j,*)    flow bounds
           pirange(a,i,j,*) squared pressure bounds
;

flow(aij(ap,i,j),'min') =  -sqrt(c2(aij)*(pi.up(j)-pi.lo(i)));
flow(aij(ap,i,j),'max') =   sqrt(c2(aij)*(pi.up(i)-pi.lo(j)));

pirange(aij(ap,i,j),'min') = pi.lo(i) - pi.up(j);
pirange(aij(ap,i,j),'max') = pi.up(i) - pi.lo(j);

option flow:3:3:1, pirange:3:3:1;
display flow, pirange;

Equations defh              definition of Smeers obj
          defsig(a,i,j)     definition of flow direction
          weymouthp2(a,i,j) flow pressure relationship - passive
          flo,fup,pilo,piup
;

Variables sig(a,i,j) flow direction (-1 or +1 for passive elements)
          b(a,i,j)   flow direction ( 1 = i to j )
          h          Smeers obj
;
Binary Variable b;

weymouthp2(aij(ap,i,j)).. sig(aij)*sqr(f(aij)) =e= c2(aij)*(pi(i)-pi(j));

defh.. h =e= sum(aij(a,i,j), abs(f(aij))*sqr(f(aij))/3/c2(aij));

defsig(aij(ap,i,j)).. sig(aij) =e= 2*b(aij)-1;

flo(aij(ap,i,j)).. f(aij) =g= flow(aij,'min')*(1-b(aij));
fup(aij(ap,i,j)).. f(aij) =l= flow(aij,'max')* b(aij);

pilo(aij(ap,i,j)).. pi(i) - pi(j) =G= pirange(aij,'min')*(1-b(aij));
piup(aij(ap,i,j)).. pi(i) - pi(j) =l= pirange(aij,'max')*b(aij);


* drop the previous solution
pi.l(i) = 0;
s.l(i) = 0;
f.l(aij) = uniform(-1,1);

model one   / defh, flowbalance /
      two   / defsc,flowbalance,weymouthp2,weymoutha /
      three / defsc,flowbalance,weymouthp2,weymoutha,defsig,pilo,piup,flo,fup /;

option limrow=0,limcol=0;

solve one using dnlp min h; // provides good initial point

solve two using nlp min sc;

* assignmenst below fix known solution
*b.fx(*aij) =1;
*b.fx(aij('7',i,j)) =0;
*b.fx(aij('8',i,j)) =0;

solve three using minlp min sc;

frep('Smeers',aij,'Flow') = f.l(aij);

sdp('Smeers',i,'Supply')   =   s.l(i)$(s.l(i) > 0);
sdp('Smeers',i,'Demand')   =  -s.l(i)$(s.l(i) < 0);
sdp('Smeers',i,'Pressure') =  sqrt(pi.l(i));
sdp('Smeers','','Obj')     =  sc.l;

option frep:6:4:1;
display frep, sdp;
