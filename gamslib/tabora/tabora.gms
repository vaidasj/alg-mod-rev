option LP=convert;
option LP=convert;
option LP=convert;
$Title Tabora Rural Development - Fuelwood Production (TABORA,SEQ=57)

$Ontext

   A village in Tanzania, growing maize and tobacco, is faced with the
   decision to either invest in a managed forest close to the village or
   continue to harvest wood from the natural forest which requires increasing
   travel time as the resource gets depleted. The investments in the
   managed forest are analyzed using a 30 year dynamic model.


World Bank, Tanzania: Appraisal of the Tabora Rural Development Project.
Tech. rep., The World Bank, 1977.

$Offtext

 Set  t     time periods    / y01*y30 /
      a     age of trees    / a01*a24 /
      m     month           / jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec /
      mc(m) cutting months  / jul, aug, sep, oct /
      i     annuly          / 1*9 /
      c     annual crops    / maize, tobacco /


 Table ld(*,m)  labor requirements

            jan   feb   mar   apr   may   jun   jul   aug   sep   oct   nov   dec

 tobacco   44.7  84.2  87.3  90.7  20.5                    37.3  44.7  19.7  46.4
 maize     46.7  10.0  13.0  16.7  18.3                                13.3  33.3
 timber-1  10.0         3.0        10.0               1.0   7.0   8.0   9.0
 timber-2   7.0                    10.0               1.0
 other     10.0   8.0  12.0  10.0   4.0   2.0                    10.0  28.0  24.0


 Table tmd(*,c)   crop data

              tobacco    maize

 input-cost    2000        20
 yield          675       750
 price            8.4        .8


 Scalars  nfam     number of families in village              / 400   /
          sfam     size of family           (adult equiv)     /   3   /
          resw     reservation wage        (tsh per hour)     /    .5 /
          fdmaize  domestic maize demand  (kg per family)     / 650   /
          tob      steady state tobacco              (ha)     / 234   /

          sr       starting radius of annulus         (km)    /  5   /
          width    width of annulus                   (km)    /  1   /
          ws       walking speed             (km per hour)    /  5   /
          whd      work hours per day                         / 10   /
          wdm      working days per month                     / 25   /
          tr       transport cost      (tsh per m3 per km)    /   1.31 /
          tc       timber planting cost       (tsh per ha)    / 349    /
          wrc      wood for curing             (m3 per ha)    /  46.75 /
          dwr      domestic wood requirement (m3 per family)  /  10    /

          labwc    labor for cutting forest (man-days per m3) / 1   /
          labvc    labor for cutting timber (man-days per m3) /  .5 /

          yw       yield of existing forest      (m3 per ha)  / 40   /
          rho      discount rate                              /   .1 /
          matr     improvement in maize yield after tobacco   /   .25/
          dmaize   domestic maize demand in village (kg)
          wr       wood requirements for domestic use and tobacco curing (m3)

 Parameters yv(a)     yield of planted timber     (m3 per ha)  / (a08,a16,a24) = 120 /
            vr(t)     residual value of timber          (tsh)
            labor(m)  village labor supply         (man-days)
            fa(i)     area of annulus                    (ha)
            dist(i)   average distance of annulus        (km)

            labw(i)   labor for cutting forest     (man-days)

            cc(c)     input cost                 (tsh per ha)
            yc(c)     crop yields                 (kg per ha)
            pc(c)     crop prices                (tsh per kg)
            cr(c)     crop revenues              (tsh per ha)
            delt(t)   discount factor
            delta(a)  discount factor for tree age;


 dmaize   = fdmaize*nfam;
 wr       = tob*wrc + dwr*nfam;

 delt(t)  = (1+rho)**(-ord(t));
 delta(a) = (1+rho)**(-ord(a));
 vr(t)    = tr*sr*sum(a$(ord(t)+ord(a) gt card(t)), yv(a)*delta(a));
 dist(i)  = sr - width/2 + width*ord(i) ;
 fa(i)    = 100*3.1416*dist(i)*width ;

 labor(m) = nfam*(sfam*wdm - ld("other",m));
 labw(i)  = yw*labwc*whd/(whd - 2*dist(i)/ws);

 cc(c)   = tmd("input-cost",c);
 yc(c)   = tmd("yield",c);
 pc(c)   = tmd("price",c);
 cr(c)   = yc(c)*pc(c);

 Display dmaize,wr,delt,delta,vr,fa,yv,dist,labor,labw,pc,yc,cc,cr;

$Stitle model definition

 Variables  w(t,i)  cutting of existing forest                    (ha)
            v(t)    management of planted timber                  (ha)
            x(t,c)  cropping activity                             (ha)
            mat(t)  maize after tobacco                           (ha)
            lc(t,m) labor for wood cutting                  (man-days)
            rev(t)  revenue                                 (1000 tsh)
            cost(t) annual cost                             (1000 tsh)
            income  discounted income            (discounted 1000 tsh)

 Positive Variables w,v,x,mat,lc

 Equations  wb(t)    wood balance                                 (m3)
            wa(i)    wood availability                            (ha)
            lb(t,m)  labor balance                          (man-days)
            lw(t)    labor constraint for wood cutting      (man-days)
            matd1(t) maize after tobacco: type 1                  (ha)
            matd2(t) maize after tobacco: type 2                  (ha)
            mm(t)    minimum maize demand                         (kg)
            ttb(t)   post terminal timber bounds                  (m3)
            rd(t)    revenue definition                     (1000 tsh)
            cd(t)    cost definition                        (1000 tsh)
            od       objective definition        (discounted 1000 tsh);
$Eject

 wb(t)..   yw*sum(i, w(t,i)) + sum(a, yv(a)*v(t-ord(a))) =g= wrc*x(t,"tobacco") + dwr*nfam;

 wa(i)..   sum(t, w(t,i)) =l= fa(i) ;

 lb(t,m).. ld("timber-1",m)*v(t) + ld("timber-2",m)*v(t-1) + sum(c, ld(c,m)*x(t,c)) + lc(t,m)$mc(m) =l= labor(m);

 lw(t)..   sum(mc, lc(t,mc)) =e= sum(i, labw(i)*w(t,i)) + sum(a, labvc*yv(a)*v(t-ord(a)));

 mm(t)..   yc("maize")*(x(t,"maize") + matr*mat(t)) =g= dmaize;

 ttb(t)..  sum(a , yv(a)*v(t+(card(t)-ord(a))) ) =l= wr;

 matd1(t-1).. mat(t) =l= x(t-1,"tobacco");

 matd2(t)..   mat(t) =l= x(t,"maize");

 rd(t).. rev(t)  =e= (sum(c, cr(c)*x(t,c)) + matr*cr("maize")*mat(t))/1000;

 cd(t).. cost(t) =e= (sum(c, cc(c)*x(t,c)) + tc*v(t) + resw*whd*sum(mc, lc(t,mc)) + sum(i, tr*yw*dist(i)*w(t,i)))/1000;

 od..    income =e= sum(t, delt(t)*(rev(t) - cost(t) + vr(t)*v(t)/1000) );

 mat.up("y01") = tob;

  Model tabora /all/ ;

*  this problem is poorly scaled and the shadow prices are so small to
*  be indistinguishable from zero in the last few periods. automatic scaling
*  was required when using apex4. the folling option statement was needed.
*  option scale=on;

  Solve tabora maximizing income using lp;

 Parameter rep1 summary report;
 rep1(t,"income") = rev.l(t) - cost.l(t); rep1(t,"timber") = v.l(t);
 rep1(t,c)        = x.l(t,c);             rep1(t,"forest") = sum(i, w.l(t,i));
 rep1(t,"distance")$rep1(t,"forest") = sum(i, dist(i)*w.l(t,i))/rep1(t,"forest");
 Display rep1;
