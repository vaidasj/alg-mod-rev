option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Optimal Design of a Gas Transmission Network (GASNET, SEQ=223)
$ontext
A gas pipeline is to be designed to transport a fixed amount of gas from
one point to two others. Both, the initial and final stages of the gas
are known. We need to determine:

  Number of compressor stations
  Length of the pipeline segments
  Diameter of pipeline segments
  Suction and discharge pressures at each stations


Edgar, T F, Himmelblau, D M, and Lasdon, L S, Optimization of
Chemical Processes. McGraw Hill, Boston, 2001.

$offtext


$eolcom !

Sets
   ii    all pipe segments / s0 * s11 /
   i(ii) pipe segments     / s1 * s11 /
         i1(i) segments one   / s1 * s3  /
         i2(i) segments two   / s4 * s7  /
         i3(i) segments three / s8 * s11 /
   j     compressors  / c1 * c10 /
   jii(j,ii,i) connections / c1.s0.s1, c2.s1.s2,  c3.s2.s3,   c4.s3.(s4,s8)
                             c5.s4.s5, c6.s5.s6,  c7.s6.s7
                             c8.s8.s9, c9.s9.s10, c10.s10.s11 /
   qi(ii,i) pipeline flow mapping
   cj(j,ii) compressor inflow mapping
   ji(j,ii) compressor pipeline flow mapping
   is(ii)   all segments less terminal segments;

cj(j,ii) = sum(i,  jii(j,ii,i));
qi(ii,i) = sum(j,  jii(j,ii,i));
ji(j,i)  = sum(ii, jii(j,ii,i));
is(ii)   = sum(j,  cj (j,ii));

Parameters

   k     suction condition      /  1.26 /
   z     compressibility factor /  0.88 /
   t     suction temperature    /   520 /

   cvar  compressor annual capital variable cost ( $ per hp) /  70 /
   cfix  compressor annual fixed cost ( $ )                  / 1e4 /
   pcost pipe capital cost ( $ per inch per mile )           / 870 /
   ocost operating cost ( $ per hp)                          /   8 /


Variables

   l(i)    pipe length
   Pd(i)   discharge pressure (psi)
   Ps(ii)  suction pressure (psi)
   D(i)    diameter (inches)
   Q(ii)   flow (MMCFD)
   CR(j)   compression ratio
   W(j)    work (hp)
   b(j)    compressor decision

   cl      pipe capital cost
   cc      compressor capital cost
   oc      operating cost
   cost
binary variable b; positive variables w;

Equations

   pdrop(i)  pressure drop in lines
   ltwo      line length two
   lthree    line length three
   qdef(i)   flow definitions
   qbal(ii)  flow balances and gas consumption
   wdef(j,i)   work definition
   crdef(j,ii,i)  compression definition
   cdef(j)

   cldef     cost of pipes
   ccdef     cost of compressors
   ocdef     operating cost
   obj       total cost;

pdrop(i).. pd(i) =g= ps(i);

ltwo..   sum(i1, l(i1)) + sum(i2, l(i2)) =e= 175;

lthree.. sum(i1, l(i1)) + sum(i3, l(i3)) =e= 200;

qdef(i).. l(i)  =e=
                sqr(871*1e-6)*d(i)**(16/3)*(sqr(pd(i))-sqr(ps(i)))/sqr(q(i));

crdef(jii(j,ii,i))..  cr(j)*ps(ii) =e= pd(i);

cdef(j).. cr(j) =l= 1 + (cr.up(j)-1)*b(j);

qbal(is)..   q(is) =e= sum(qi(is,i), q(i)) + sum(cj(j,is), 0.005*q(is)*b(j));

wdef(ji(j,i))..  w(j) =e= 0.08531*q(i)*k/(k-1)*t*(cr(j)**(z*(k-1)/k)-1);

cldef.. cl =e= sum(i, pcost*l(i)*d(i));

ccdef.. cc =e= Sum(j, cvar*w(j) + cfix*b(j));

ocdef.. oc =e= sum(j, ocost*w(j));

obj..   cost =e= cl + cc + oc;

model gasnet / all /;

* simple bounds
pd.lo(i) = 200; pd.up(i) = 1000;
ps.lo(i) = 200; ps.up(i) = 1000;
L.lo(i) = 2; L.up(i) = 200;
D.lo(i) = 4; D.up(i1) = 36; D.up(i2) = 18; D.up(i3) = 18;
cr.lo(j) = 1; cr.up(j) = 2;
q.lo(i) = 200; q.up(i) = 600;

ps.fx('s0')  = 500;  ! fix starting pressure at line one
ps.fx('s7')  = 600;  ! fix end pressure at line two
ps.fx('s11') = 300;  ! fix end pressure at line three

q.fx('s0')   = 600;  ! fix inflow at line one

l.l(i) = 20;
d.l(i) = 18;

solve gasnet minimizing cost using minlp;

parameter prep Pipe report
          crep Compressor report;

prep(i,'Discharge') = pd.l(i);
prep(i,'Suction')   = ps.l(i);
prep(i,'Diameter')   = d.l(i);
prep(i,'Length')    = l.l(i);
prep(i,'Flow')      = q.l(i);

crep(j,'Ratio')$b.l(j) = cr.l(j);
crep(j,'Work' )$b.l(j) = w.l(j);

display prep,crep;
