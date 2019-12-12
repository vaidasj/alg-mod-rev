option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Industrial Pollution Control (POLLUT,SEQ=96)

$Ontext

   This is an example of planning production within certain pollution
   standards.


Mangasarian, O L, Nonlinear Programming. McGraw Hill, New York, 1973.

$Offtext

Sets  j  sectors  / food, textile, apparel, lumber, furniture, pulp+paper
                    printing, chemicals, coal+petro, rubber, leather
                    clay+stone, steel, nf-metals, metals-pr, machinery
                    elec-mach, transport, prec-mach, misc /
      i  pollutant / cod, so2, land, water /

Table w(j,i) unit load

               cod     so2    land   water
food        .08488  .00909  .02990  .07195
textile     .03353  .02470  .08980  .17032
apparel     .03353  .02470  .02780  .01345
lumber      .00135  .00084  .06890  .01606
furniture   .00153  .00084  .03500  .01429
pulp+paper  .23368  .07461  .04690  .15532
printing    .07609  .05767  .01290  .01850
chemicals   .07689  .05767  .05370  .09680
coal+petro  .03736  .01663  .27080  .02900
rubber      .02794  .00456  .06040  .09200
leather     .02794  .00456  .04980  .07320
clay+stone  .00213  .08800  .11510  .09520
steel       .00633  .02361  .08900  .07780
nf-metals   .00091  .03376  .02670  .03720
metals-pr   .00125  .00860  .06790  .04930
machinery   .00089  .00376  .06210  .02480
elec-mach   .00123  .00369  .02950  .02300
transport   .00079  .00127  .07870  .04300
prec-mach   .00396  .00252  .03830  .03010
misc        .00931  .00252  .04240  .03500

Table z(j,*) other data

                a      b       k       k0      l0
food        9.600   .121   .1064    29406   24709
textile     6.353   .194   .1611    21375   18918
apparel     9.818   .204   .0848     8423   20636
lumber      7.371   .181   .1428    13873   10457
furniture  10.220   .171   .0955     8470    9739
pulp+paper  6.255   .145   .1759    36375   18880
printing    8.149   .304   .2190    66016   44480
chemicals   7.794   .146   .1439    80134   36526
coal+petro  8.400   .173   .1314     1327     758
rubber      9.933   .174   .0987     4414    4921
leather    11.069   .167   .0817     3709    6766
clay+stone  6.528   .192   .1665    14496    9368
steel       7.928   .116   .1448   102399   31127
nf-metals  10.559   .091   .1026    28008    1166
metals-pr   6.606   .227   .1567    69314   59525
machinery   7.153   .208   .1506    90014   63048
elec-mach  11.146   .151   .0895    29360   29839
transport   6.884   .199   .1602    27687   16945
prec-mach   6.660   .253   .1446     4009    4828
misc        7.929   .182   .1256    24323   24569

Scalars  alpha /  .6 /

         beta  / 1.4 /
         gamma1 / 1.4 /, gamma2 / .9 /

Parameter tau(i) / cod  .153e6, so2 .12e6, (land, water) .25e6 /;

Variables k(j) capital
          l(j) labor
          tk
          tl
          output;

Equations obj
          eq4(i)
          eq5a
          eq5b
          kdef
          ldef ;

obj..   output =e= sum(j, z(j,"a")*k(j)**(1-z(j,"b"))*l(j)**z(j,"b"));

eq4(i).. sum(j, w(j,i)/z(j,"k")*k(j)) =l= tau(i);

eq5a..  tk =g= gamma2*tl;

eq5b..  tk =l= gamma1*tl;

kdef.. tk =e= sum(j, k(j));

ldef.. tl =e= sum(j, l(j));

k.lo(j) = alpha*z(j,"k0");  k.up(j) = beta*z(j,"k0"); k.l(j) = z(j,"k0");
l.lo(j) = alpha*z(j,"l0");  l.up(j) = beta*z(j,"l0"); l.l(j) = z(j,"l0");

Model one /all/;

Solve one maximizing output using nlp;

