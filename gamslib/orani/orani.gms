option LP=convert;
option LP=convert;
option LP=convert;
$Title A Miniature version of Orani 78  (ORANI,SEQ=40)
$Inlinecom   /*    */

$Ontext

This mini version of ORANI, a multisector price endogenous model of
Australia, demonstrates the percentage change formulation first
applied by Johansen.


Kendrick, D, Style in Multisector Modeling. In Hughes-Hallet, J, Ed,
Applied Decision Analysis and Economic Behavior. Kluwer and Nijhoff,
Boston and The Hague, 1984.

$Offtext

 Sets  c     commodities               / food, clothing /
       ca(c) agricultural commodities  / food /
       cm(c) manufacturing commodities / clothing /
       f     factors                   / labor, capital /
       h     households                / families /
       i     industries                / agric  agriculture, manuf  manufacturing /
       s     sources                   / domestic, imported /
       ce(c,c) diagonal

 Alias (c,cp), (s,sp), (i,ip) ;
 ce(c,c) = yes ;
 Display ce;


 Table amc(c,s,*)  accounting matrix for commodities

*                    industries        households   exports   import
                     agric manuf        families     exp      duty
  food.domestic      10      8           17           19
  clothing.domestic  15      1           34            1
  food.imported       1      8            1                     -1
  clothing.imported   5      2           10                     -5


 Table amf(f,i)  accounting matrix for factors

                  agric   manuf
    labor           20      20
    capital         10       5


 Table amq(c,i)  accounting matrix for outputs

                  agric   manuf
    food            45       9
    clothing        16      35


 Table epsilon(c,s)  income elasticities

                       domestic   imported
      food                1.         1.
      clothing            1.         1.


 Parameter  amt(i)   accounting matrix for column totals
            gamma(c) export demand parameters     / food .5, clothing .05 /
            wl(i)    share of total employment    / agric .5, manuf .5 /
            theta    wage rate adjustment parameter ;

    amt(i) = sum((c,s), amc(c,s,i)) + sum(f, amf(f,i)) ;
    amc(c,s,"total") = sum(i, amc(c,s,i)) + amc(c,s,"families") + amc(c,s,"exp") + amc(c,s,"duty") ;

    theta = 1 ;

 Display amt, amc;

 Parameters  alpha(c,s,i)       share of expenditure by industry
             alphak(i)          share of expenditure on capital
             alphal(i)          share of expenditure on labor
             alphae(c,s)        share of good cs in expenditure on commodity c
             etabar(c,s,cp,sp)  compensated price elasticities
             sb(c,s)            share of good cs in household budget
             eta(c,s,cp,sp)     uncompensated price elasticities
             elevel             base period export level - not a rate
             m(c,i)             industry market share
             mlevel             base period import level - not a rate ;

 alpha(c,s,i) = amc(c,s,i)/sum(sp, amc(c,sp,i)) ;
 alphak(i)    = amf("capital",i)/sum(f, amf(f,i)) ;
 alphal(i)    = amf("labor",i)/sum(f, amf(f,i)) ;
 alphae(c,s)  = amc(c,s,"families")/sum(sp, amc(c,sp,"families"));

 etabar(c,s,cp,sp) = alphae(cp,sp) ;
 etabar(c,s,c,s) = -1. + alphae(c,s) ;
 etabar(c,s,cp,sp)$( not ce(c,cp)) = 0. ;
 sb(c,s)  =  amc(c,s,"families")/ sum((cp,sp), amc(cp,sp,"families")) ;

 eta(c,s,cp,sp) = - epsilon(c,s)*sb(cp,sp) + etabar(c,s,cp,sp) ;

 elevel = sum((c,s), amc(c,s,"exp")) ;
 m(c,i) = amq(c,i)/sum(ip, amq(c,ip)) ;
 mlevel = sum(c, amc(c,"imported","total")) ;


 Parameters  mu(c,s)         weights for cpi
             nm(c)           share in total imports
             nx(c)           share in total exports
             r(c,i)          revenue share
             sc(c,s,i)       cost share
             sk(i)           cost share for capital
             sl(i)           cost share for labor
             wc(c,s)         share of consumption in demand
             we(c)           share of exports in demand
             wi(c,s,i)       share of intermediates in demand ;

 mu(c,s) = sb(c,s) ;

 nm(c) = amc(c,"imported","total")/sum(cp, amc(cp,"imported","total")) ;
 nx(c) = amc(c,"domestic","exp")/sum(cp, amc(cp,"domestic","exp")) ;

 r(c,i) = amq(c,i)/sum(cp, amq(cp,i)) ;

 sc(c,s,i) = amc(c,s,i)/amt(i) ;
 sk(i) = amf("capital",i)/amt(i) ;
 sl(i) = amf("labor",i)/amt(i) ;

 wc(c,s)   = amc(c,s,"families")/(amc(c,s,"total") - amc(c,s,"duty")) ;
 we(c)     = amc(c,"domestic","exp")/amc(c,"domestic","total") ;
 wi(c,s,i) = amc(c,s,i)/(amc(c,s,"total") - amc(c,s,"duty")) ;

 Display alpha, alphak, alphal, alphae, etabar, sb, eta, elevel, m, mlevel, mu, nm, nx, r, sc, sk, sl, wc, we, wi;

$Stitle variable and equation declaration

/*   all variables are rates of change unless otherwise noted    */

 Variables  b          balance of trade
            cn(c,s)    consumption - nominal
            cr         consumption - real
            df(c)      foreign demand shift
            e(c)       exports of agricultural commodities
            et         total exports
            k(i)       capital demand
            kappa(i)   sectoral capital stocks
            l          total employment
            li(i)      labor demand by industry
            mt         total imports
            p(c,s)     prices for commodities in domestic currency
            pc         prices:  consumer price index
            phi        exchange rate
            pk(i)      price of capital
            px(c)      export price in foreign currency
            pm(c)      import price in foreign currency
            q(c,i)     output
            t(c)       import duty
            v(c)       export subsidy for the manufactures
            w          wage rate
            ws         wage shift
            x(c,s,i)   intermediate commodity demands
            ye         household expenditure
            z(i)       industry activity level


 Equations  con(c,s)    consumption
            expd(c)     export demands
            supply(c,i) supply relations
            indc(c,s,i) input demand for commodities
            indcap(i)   input demand for capital
            indlab(i)   input demand for labor
            pric(i)     price equations for commodities
            priexp(c)   price equations for exports
            priimp(c)   price equations for imports
            bald(c)     balance equation for domestic commodities
            ballab      balance equation for labor
            balcap(i)   balance equation for capital
            imports     imports
            exports     exports
            baltrade    balance of trade
            cpi         consumer price index
            wage        wage rate
            realc       real consumption
            dummy       nonbinding constraint to get nonzero rhs ;

$Stitle equation definitions

 con(c,s)..    cn(c,s) =e=  epsilon(c,s)*ye + sum((cp,sp), eta(c,s,cp,sp)*p(cp,sp)) ;

 expd(c)..     px(c) =e= - gamma(c)*e(c) + df(c) ;

 supply(c,i).. q(c,i) =e=  z(i) + ( p(c,"domestic") - sum(cp, r(cp,i)*p(cp,"domestic")) ) ;

 indc(c,s,i).. x(c,s,i) =e=  z(i) -  ( p(c,s) - sum(sp, alpha(c,sp,i)*p(c,sp)) ) ;

 indcap(i)..   k(i) =e=  z(i) - ( pk(i) - alphal(i)*w - alphak(i)*pk(i) ) ;

 indlab(i)..   li(i) =e=  z(i) - ( w - alphal(i)*w - alphak(i)*pk(i) ) ;

 pric(i)..     sum(c, r(c,i)*p(c,"domestic")) =e= sum((c,sp), sc(c,sp,i)*p(c,sp)) + sk(i)*pk(i) + sl(i)*w ;

 priexp(c)..   p(c,"domestic") =e= px(c) + v(c) + phi ;

 priimp(c)..   p(c,"imported") =e= pm(c) + t(c) + phi ;

 bald(c)..     sum(i, m(c,i)*q(c,i)) =e= sum(i, wi(c,"domestic",i)*x(c,"domestic",i))
                                       + wc(c,"domestic")*cn(c,"domestic") + we(c)*e(c) ;

 ballab..   sum(i, wl(i)*li(i)) =e= l ;

 balcap(i).. k(i) =e= kappa(i) ;

 imports..   mt =e= sum(c, nm(c)*( pm(c) + sum(i, wi(c,"imported",i)*x(c,"imported",i))
                 + wc(c,"imported")*cn(c,"imported"))) ;

 exports..   et =e= sum(c, nx(c)*px(c) + nx(c)*e(c)) ;

 baltrade..  b =e= ( elevel*et - mlevel*mt )/100 ;

 cpi..       pc =e= sum((c,s), mu(c,s)*p(c,s)) ;

 wage..      w =e= theta*pc + ws ;

 realc..     cr =e= ye - pc  ;

 dummy.. pc =l= 100000;

$Stitle exogenous variables and solution reports

 df.fx(c)=1; e.fx(cm)=1; kappa.fx(i)=3; phi.fx=0; pm.fx(c)=-2; t.fx(c)=0; v.fx(ca)=0; ws.fx=0; ye.fx=2;

 Model orani /all/ ;
 Solve orani using lp minimizing pc;

 Parameters  varcomm(c,*)    commodity reports
             varindus(i,*)   industry reports ;

      varcomm(c,"t")  = t.l(c);
      varcomm(c,"v")  = v.l(c);
      varcomm(c,"df") = df.l(c);
      varcomm(c,"e")  = e.l(c);
      varcomm(c,"px") = px.l(c);
      varcomm(c,"pm") = pm.l(c);

      varindus(i,"k")  = k.l(i);
      varindus(i,"li") = li.l(i);
      varindus(i,"pk") = pk.l(i);
      varindus(i,"z")  = z.l(i);
      varindus(i,"kappa") = kappa.l(i);

 Display b.l, cr.l, et.l, l.l, mt.l, pc.l, w.l, phi.l, ws.l, ye.l ,q.l, x.l, cn.l, varcomm, varindus;
