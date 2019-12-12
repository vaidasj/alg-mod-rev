option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Financial Optimization: Financial Engineering (TBA,SEQ=115)

$Ontext

   The delivery and settlement of mortgage-backed securities is governed
   by an extensive set of rules and regulations. Forward delivery
   settlements of not yet pooled mortgages are on a to-be-announced
   (TPA) basis. Some allowed variance allows to structure the TBAs in
   a cost effective manner.


Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization
Models: Risk Management. In Zenios, S A, Ed, Financial Optimization.
Cambridge University Press, New York, NY, 1993.

$Offtext

Sets

    p        gnma pools                / gn999001*gn999011 /
    i        tbas                      / 20580252 /
    l        lots                      / l1*l4 /
    c3(p)    class 3 high risk pools   / gn999010*gn999011 / ;

* note:
*   class1  in the box
*   class2  delivery within 48 hours
*   class3  delayed delivery

Alias  (p,pp), (i,ii), (l,ll) ;


Table  pv(p,*)   value of pools
                   original    adjusted
    gn999001            50          50
    gn999002           100         100
    gn999003           300         300
    gn999004           400         400
    gn999005           450         450
    gn999006           450         450
    gn999007           475         475
    gn999008           700         700
    gn999009          1000        1000
    gn999010          1000        1000
    gn999011          5000        5000 ;


Table tbainfo(i,*)   tba information table

              quantity  selling   market  variation  maxpools
  20580252        5000   100.88      100        .05         3 ;



Parameter
    o(p)           original face value of pools
    a(p)           adjusted face value of pools
    head           first incremental step for allocation
    steps          incremental step size between head and tail
    tail(p)        tail of pools
    splitcost(p)   cost of splitting pools
    futprice(i)    agreed delivery price
    mktprice(i)    market price
    futamt(i)      agreed quantity
    var(i)         agreed upper and lower relative deviation
    maxpools(i)    maximum number of pools in 1 mill dollar tba lots
    lsize(i,l)     tba lot sizes
    maxp(i,l)      maximum number of pools to allocate to each lot
    m(p,i,l)       upper bound on the number of value incremental steps
    mb(p)          upper bound on the number of box incremental steps
    n              total number of lots in the allocation ;

  o(p)          =  pv(p,"original") ;
  a(p)          =  pv(p,"adjusted") ;
  head          =  25 ;
  steps         =  5 ;
  tail(p)       =  mod((o(p)-head$(o(p) gt head)),steps) ;
  splitcost(p)  =  .00001 ;
  futamt(i)     =  tbainfo(i,"quantity") ;
  futprice(i)   =  tbainfo(i,"selling")/100 ;
  mktprice(i)   =  tbainfo(i,"market")/100 ;
  var(i)        =  tbainfo(i,"variation") ;
  maxpools(i)   =  tbainfo(i,"maxpools") ;

  lsize(i,l) = 0 ;
  Loop(l,
     lsize(i,l) = min(1000,futamt(i)-sum(ll$(ord(ll) lt ord(l)), lsize(i,ll)))) ;

  maxp(i,l) = (maxpools(i)-2) $ (lsize(i,l) lt 500)
            + (maxpools(i)-1) $ (lsize(i,l) ge 500
                                  and lsize(i,l) lt 1000)
            +  maxpools(i)    $ (lsize(i,l) eq 1000) ;

  m(p,i,l) = floor(
               max( 0,
                 ((1+var(i))*lsize(i,l)*o(p)/a(p)-head) / steps ) );

  mb(p) = floor( max(0,o(p)-head)/steps) ;

  n =  sum((i,l)$lsize(i,l), 1) ;



Variable
    profit       total profit ;

Positive Variable
    v(p,i,l)     allocated pool values by tba lot
    b(p)         adjusted face value of pools remaining in box ;

Binary Variable
    z(p,i,l)     decision whether to allocated pool to tba lot
    zb1(p)       auxiliary binary variable to determine splits
    zb2(p)       auxiliary binary variable to determine splits
    w(i,l)       decision whether to fail tba lot  (0=failed)
    u0(p,i,l)    auxiliary binary variable for minimum allocation
    u0b(p)       auxiliary binary variable for minimum boxing
    ut(p,i,l)    auxiliary binary variable for tail allocation
    ubt(p)       auxiliary binary variable for tail boxing
    s(p)         decision whether to split pools
    f1(i,l)      binary variable for one big pool allocation
    f2(i,l)      binary variable for two big pools allocation

Integer Variable
    u(p,i,l)     auxiliary integer variable for allocation steps
    ub(p)        auxiliary integer variable for box steps ;



Equation
    loval(i,l)            lower limit on allocated value by tba lot
    upval(i,l)            upper limit on allocated value by tba lot
    supply(p)             allocate value and boxed amounts
    class3con(i,l)        constraint on use of class 3 pools

    splitsize(p,i,l)      allocate head step and tail variables
    stepcon(p,i,l)        allocate step only after head allocation
    tailcon(p,i,l)        allocate tail only after head allocation
    onetail(p)            allocate tail only once for each pool

    boxsize(p)            allocate boxed head step and tail variables
    stepboxcon(p)         allocate boxed steps after boxed head
    boxtailcon(p)         allocate boxed tail after boxed head

    zdet(p,i,l)           determination of whether to allocate pool
    zbox1def(p)           definition of zb1
    zbox2def(p)           definition of zb2
    splitdet(p)           determination of whether to split

    f1det(p,i,l)          determination of single big allocated pools
    f2det(p,pp,i,l)       determination of two big pools
    maxpool1(i,l)         constraint on maximum pools per lot
    maxpool2(i,l)         constraint on maximum pools per lot
    maxpool3(i,l)         constraint on maximum pools per lot

    profitdef             definition of profits   ;




$Stitle  equations and model definition

*
* the value of pools assigned to a tba lot must be above the lower limit
* given by the agreement on delivery and variance, unless the lot is
* failed in which case it must be zero.
*

  loval(i,l)$lsize(i,l)..

     sum(p, v(p,i,l))  =g=  (1-var(i))*lsize(i,l)*w(i,l) ;



*
* the value of pools assigned to a tba lot must be below the upper limit
* given by the agreement on delivery and variance, unless the lot is
* failed in which case it must be zero.
*

  upval(i,l)$lsize(i,l)..

     sum(p, v(p,i,l))  =l=  (1+var(i))*lsize(i,l)*w(i,l) ;



*
* no more than the adjusted face value of a pool can be assigned
* or boxed.
*

  supply(p)..

     sum((i,l)$lsize(i,l), v(p,i,l)) + b(p)  =e=  a(p) ;



*
* it is illegal to use only class 3 pools in a lot.
*

  class3con(i,l)$lsize(i,l)..

     sum(p$(not c3(p)), v(p,i,l))  =g=  w(i,l) ;



*
* pools must be allocated in a minimum amount of head dollars of
* original face value and with increments of steps dollars original face
* value, except possibly for the tail.
*

  splitsize(p,i,l)$lsize(i,l)..

     v(p,i,l)*o(p)/a(p)  =e=
             head*u0(p,i,l) + steps*u(p,i,l) + tail(p)*ut(p,i,l) ;



*
* the steps increments in a split pool only applies after
* the head has been allocated for the tba lot.
*

  stepcon(p,i,l)$lsize(i,l)..

      u(p,i,l) =l= m(p,i,l)*u0(p,i,l) ;



*
* the tail increment in a split pool only applies after
* the head has been allocated for the tba lot.
*

  tailcon(p,i,l)$(lsize(i,l) and tail(p))..
      ut(p,i,l) =l= u0(p,i,l) ;



*
* the tail of a pool can not be split.
*

  onetail(p)$tail(p)..

     sum((i,l)$lsize(i,l), ut(p,i,l))  + ubt(p)  =l=  1 ;



*
* the above size rules for split pools also apply to what remains in
* the box.
*

  boxsize(p)..

      b(p)*o(p)/a(p) =e= head*u0b(p) + steps*ub(p) + tail(p)*ubt(p) ;



*
* this also applies to the box.
*

  stepboxcon(p)..  ub(p) =l= mb(p)*u0b(p) ;



*
* the box tail increment in a split pool only applies after
* the box head has been allocated for the pool.
*

  boxtailcon(p)$tail(p).. ubt(p) =l= u0b(p) ;



*
* if a pool is not allocated to tba lot, the value of that allocation
* must be zero.
*

  zdet(p,i,l)$lsize(i,l)..  v(p,i,l)  =l=  (1+var(i))*lsize(i,l)*z(p,i,l) ;



*
* zb1 is 1 if something or nothing - but not everything - of a
* pool is boxed. it is zero if everything is boxed.
*

  zbox1def(p)..    zb1(p)  =g=  (a(p) - b(p))/a(p) ;



*
* zb2 is 1 if something or everything of a pool is boxed. it is zero
* if nothing remains in the box.  thus zb1 + zb2 equals 1 if
* everything or nothing remains in the box and 2 otherwise.
*

  zbox2def(p)..  zb2(p)  =g=  1 - (a(p) - b(p))/a(p) ;



*
* a pool is split if it is allocated to more than one lot or - if
* allocated to only one lot - if it is not fully allocated, (i.e.,
* a fraction, but not all original value, remains in the box).
*

  splitdet(p)..  sum((i,l)$lsize(i,l), z(p,i,l)) + zb1(p) + zb2(p) - 2 =l=  n*s(p) ;



*
* a single pool allocation is big if it is greater than or equal to
* the lower value requirement.
*

  f1det(p,i,l)$lsize(i,l)..

      2*var(i)*lsize(i,l)*f1(i,l) =g= v(p,i,l) - (1-var(i))*lsize(i,l) ;



*
* a two pool allocation is big if the sum of the allocated values for
* those two pools is greater than or equal to the minimum allocation
* value requirement.
*

  f2det(p,pp,i,l)$(lsize(i,l) and ord(p) lt ord(pp))..

     2*var(i)*lsize(i,l)*f2(i,l) =g= v(p,i,l) + v(pp,i,l) - (1-var(i))*lsize(i,l) ;



*
* no more than the specified number of pools can be allocated to a
* lot.  if a big single pool allocation takes place then only that
* pool can be allocated, and if a big two pool allocation takes place
* for a tba lot, then only those two pools can be allocated to the lot.
*

  maxpool1(i,l)$lsize(i,l)..  sum(p, z(p,i,l))  =l=  maxp(i,l) ;


  maxpool2(i,l)$lsize(i,l).. sum(p, z(p,i,l))  =l=  1 + (1 - f1(i,l))*maxp(i,l) ;


  maxpool3(i,l)$lsize(i,l).. sum(p, z(p,i,l))  =l=  2 + (1 - f2(i,l))*maxp(i,l) ;



*
* total profit equals margin times delivery minus splitting costs.
*

  profitdef..

      profit =e=
        sum((p,i,l)$lsize(i,l), (futprice(i)-mktprice(i))*v(p,i,l))
           - sum(p, splitcost(p)*s(p)) ;



Model poolassign    pool to tab lot assignment model / all /;

  u.up(p,i,l) = m(p,i,l) ;
  ub.up(p)    = mb(p) ;

* help the mip code along
u.prior(p,i,l) = 2;
ub.prior(p)    = 2;
poolassign.prioropt=1;
poolassign.optcr = .0001;

Solve poolassign maximizing profit using  mip ;
