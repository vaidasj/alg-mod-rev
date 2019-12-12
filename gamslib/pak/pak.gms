option LP=convert;
option LP=convert;
option LP=convert;
$Title Optimal Patterns of Growth and Aid    (PAK,SEQ=34)
$Stitle Basic Data

$Ontext

This model explores the use of external resources to accelerate
development by supplying additional resources to increase imports
and investment. Terminal conditions cannot reproduced from the text.
All units in billions of 1965 rupees.


Chenery, H B, and Macewan, A, Chapter 9: Optimal Patterns of Growth
and Aid. In Chenery, H B, Ed, Structural Change and Development
Policy. Oxford University Press, New York and Oxford, 1979.

$Offtext


 Sets te    extended planning period  / 1962*1985 /
      t(te) planning period           / 1963*1985 /
      j     sectors                   / non-traded, traded /

 Scalars  fbb    foreign aid 1962            /  1.183 /
          sb     saving 1962                 /  3.381 /
          tib    total investment 1962       /  4.564 /
          mb     imports 1962                /  3.743 /
          eb     exports 1962                /  2.559 /
          gnpb   gnp 1962                    / 37.380 /
          cb     consumption 1962            / 33.999 /

          rho    discount rate          / .08 /
          r      post plan discount     / .10 /
          g      post plan growth       / .073 /
          gama   cost of foreign capital/ 2.0 /
          d      post plan weight       / 1.0 /

          alpha  marginal savings rate    / .24 /
          mgnp   marginal import rate on gnp  / .10 /
          mi     marginal import rate on investment / .35 /
          p      population growth   /  .025  /
          beta   maximum growth of investment  / .13 /
          ee     export growth     / .049 /
          q      aid ration        / .5 /
          num    years without aid  / 4 /

 Parameter k(j)     capital output ratio  / non-traded = 3.0, traded = 4.5 /
           delt(t)  discount factor
           dis      discounting for post horizon cons
           vb(j)    base year outputs
           e(t)     exports ;

    e(t)   = eb*(1+ee)**ord(t); display e;
    delt(t)= (1+rho)**(-ord(t)); display delt;
    dis    = (1+r)**(-card(t))*(1-alpha)*(1+g)/(r-g); display dis;
    vb("non-traded") = gnpb;

$Stitle model definition

 Variables  gnp(t)   gross national product
            v(t,j)   net output
            ti(te)   total investment
            i(te,j)  investment
            ks(te,j) capital stock
            s(t)     gross savings
            f(t)     net capital inflow
            fb       total discounted aid
            m(t)     traditional imports
            c(te)    consumption
            w        welfare

 Positive Variables v, i, s;

 Equations  gnpd(t)    gnp definition
            invd(t)    investment definition
            invt(te)   investment totals
            tgap(t)    trade gap
            incd(t)    national income definition
            capb(t,j)  capacity balance
            kbal(te,j) capital stock balance
            savl(t)    maximum savings
            impl(t)    minimum imports
            invu(te)   upper bound on investment
            invl(te)   lower bound on investment
            conl(te)   lower bound on consumption
            fup (t)    upper bound on f(t)
            taid       total aid definition
            wdef       welfare definition ;

 gnpd(t)..   gnp(t) =e= sum(j, v(t,j));

 invd(t)..   ti(t)  =e= s(t) + f(t);

 invt(te)..  ti(te) =e= sum(j, i(te,j));

 tgap(t)..   f(t)   =e= m(t) - e(t) - v(t,"traded");

 incd(t)..   gnp(t) =e= c(t) + ti(t) - f(t);

 capb(t,j).. v(t,j) =l= vb(j) + 1/k(j)* ks(t,j);

 kbal(te+1,j).. ks(te+1,j) =e= ks(te,j) + i(te,j);

 savl(t)..    s(t) =l= sb + alpha*(gnp(t) - gnpb);

 impl(t)..    m(t) =g= mb + mgnp*(gnp(t) - gnpb) + mi*(ti(t) - tib);

 invu(te+1).. ti(te+1) =l= (1+beta)*ti(te);

 invl(te+1).. ti(te+1) =g= ti(te);

 conl(te+1).. c(te+1)  =g= (1+p)*c(te);

 fup(t)..  f(t) =l= q*gnp(t);

 taid..    fb   =e= sum(t, delt(t)*f(t));

 wdef..    w    =e= sum(t, delt(t)*c(t)) - gama*fb + d*dis*gnp("1985");

 ks.fx("1962",j) = 0;
 i.fx("1962","non-traded") = tib; i.fx("1962","traded") = 0;
 c.fx("1962") = cb;
 f.up(t) = inf$(card(t)-ord(t) ge num);

 Model pak1 /all/;

 Solve pak1 maximizing w using lp;

 Parameter rep summary report (billions of rupees) ;

 rep(t,"f")    = f.l(t);
 rep(t,"gnp")  = gnp.l(t);
 rep(t,"ti")   = ti.l(t);
 rep(t,"s")    = s.l(t);
 rep(t,"c")    = c.l(t);

 Display rep;
