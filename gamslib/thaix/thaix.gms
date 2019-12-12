option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Thai Navy Problem Extended (THAIX,SEQ=105)

$Ontext

   This model is an extension of the original library model THAI.
   Multidimensional sets (tuples and maps) are used to allow a more
   compact representation. MIP priorities are used to speed up the
   solution process. Data definitions are moved from the beginning to
   the end of the model definitions. Overall, the model is used to allocate ships to
   transport personnel from different port to a training center.


Choypeng, P, Puakpong, P, and Rosenthal, R E, Optimal Ship Routing and
Personnel Assignment for Naval Recruitment in Thailand. Interfaces
16, 4 (1986), 356-366.

$Offtext

Sets
   p  ports         / chumphon, surat, nakon, songkhla /
   v  voyages       / v-01* v-15 /
   k  ship classes  / small, medium, large /

Variables
   z(v,k)     number of times voyage vk is used
   y(v,k,p)   number of men transported from port p via voyage vk
   obj        objective function to be minimized
   voyages    the number of voyages
   shipmiles  ship miles
   manmiles   man miles

Integer Variables z; positive variables y ;

Equations
   objdef           objective function definition
   dvoyages         definition of the number of voyages
   dshipmiles       definition of ship miles
   dmanmiles        definition of man miles
   demand(p)        pick up all the men at port p
   voycap(v,k)      observe variable capacity of voyage vk
   shiplim(k)       observe limit of class k

Sets
   vk(v,k)     voyage capability
   vkp(v,k,p)  trips: voyage - ship class - port

Parameters
   d(p)  number of men at port p needing transport
   shipcap(k)  ship capacity in men
   n(k)   number of ships of class k available
   dist(v) voyage distance

Scalars
   w1 ship assignment weight
   w2 ship distance traveled weight
   w3 personnel distance travel weight;

demand(p)..        sum(vkp(vk,p), y(vkp))  =g=  d(p) ;

voycap(vk(v,k))..  sum(vkp(vk,p), y(vkp))  =l=  shipcap(k)*z(vk) ;

shiplim(k)..       sum(vk(v,k), z(vk))   =l=  n(k) ;

dvoyages  .. voyages   =e= sum(vk,                 z(vk));
dshipmiles.. shipmiles =e= sum(vk(v,k),    dist(v)*z(vk));
dmanmiles .. manmiles  =e= sum(vkp(v,k,p), dist(v)*y(vkp)) ;

objdef..     obj =e= w1*voyages + w2*shipmiles + w3*manmiles ;

Model thainavy /all/;

$Stitle data

Set   kp(k,p) port capability / small. (chumphon)
                                medium.(chumphon,surat,nakon)
                                large. (chumphon,surat,nakon,songkhla) /

Parameter  d(p)  number of men at port p needing transport
                / chumphon = 475, surat     = 659
                  nakon    = 672, songkhla = 1123 /
           shipcap(k)  ship capacity in men / small   100
                                              medium  200
                                              large   600 /
           n(k)   number of ships available / small     2
                                              medium    3
                                              large     4  /

Table   a(v,*)   assignment of ports to voyages

        dist  chumphon surat nakon songkhla
v-01     370      1
v-02     460              1
v-03     600                    1
v-04     750                            1
v-05     515      1       1
v-06     640      1             1
v-07     810      1                     1
v-08     665              1     1
v-09     665              1             1
v-10     800                    1       1
v-11     720      1       1     1
v-12     860      1       1             1
v-13     840      1             1       1
v-14     865              1     1       1
v-15     920      1       1     1       1 ;

vk(v,k)         = prod(p$a(v,p), kp(k,p));
vkp(vk(v,k),p)  = yes$a(v,p);
dist(v)         = a(v,'dist');
z.up(vk(v,k))   = n(k) ;

z.prior(vk(v,'small'))  = 3;
z.prior(vk(v,'medium')) = 2;
z.prior(vk(v,'large'))  = 1;

thainavy.prioropt = 1;
thainavy.limcol   = 0;
thainavy.limrow   = 0;

w1=1; w2=0; w3=0; Solve thainavy minimizing obj using mip ;
w1=0; w2=1; w3=0; Solve thainavy minimizing obj using mip ;
w1=0; w2=0; w3=1; Solve thainavy minimizing obj using mip ;
