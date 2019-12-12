option NLP=convert;
option NLP=convert;
option NLP=convert;
$ Title A Two-country CGE Model in Ch. 10.3 (TWOCGE,SEQ=278)

$Ontext
No description.


Hosoe, N, Gasawa, K, and Hashimoto, H
Handbook of Computible General Equilibrium Modeling
University of Tokyo Press, Tokyo, Japan, 2004
$Offtext


* definition of sets for suffix ---------------------------------------
Set     u       SAM entry     /BRD, MLK, CAP, LAB, IDT, TRF, HOH, GOV,
                               INV, EXT/
        i(u)    goods         /BRD, MLK/
        h(u)    factor        /CAP, LAB/
        r       country       /JPN, USA/;

Alias (u,v), (i,j), (h,k), (r,rr);
* ---------------------------------------------------------------------

* loading data --------------------------------------------------------
Table   SAM(u,v,r)        social accounting matrix
	BRD.JPN	MLK.JPN	CAP.JPN	LAB.JPN	IDT.JPN
BRD	21	8			
MLK	17	9			
CAP     20      30
LAB     15      25
IDT     5       4
TRF     1       2
HOH			50	40	
GOV					9
INV					
EXT     13      11

+       TRF.JPN	HOH.JPN	GOV.JPN	INV.JPN	EXT.JPN
BRD     	20	19	16	8
MLK     	30	14	15	4
CAP
LAB
IDT
TRF
HOH     				
GOV	3	23			
INV		17	2		12
EXT

+       BRD.USA MLK.USA CAP.USA LAB.USA IDT.USA
BRD     40	1			
MLK     17	29			
CAP     33      30
LAB     15      31
IDT     10      20
TRF     1       1
HOH     		63	46	
GOV     				30
INV     				
EXT     8       4

+       TRF.USA	HOH.USA	GOV.USA	INV.USA	EXT.USA
BRD     	30	20	20	13
MLK     	30	14	15	11
CAP
LAB
IDT
TRF
HOH     				
GOV	2	29			
INV		20	27		-12
EXT
;

* loading the initial values ------------------------------------------
Parameter       Y0(j,r)         composite factor
                F0(h,j,r)       the h-th factor input by the j-th firm
                X0(i,j,r)       intermediate input
                Z0(j,r)         output of the j-th good
                Xp0(i,r)        household consumption of the i-th good
                Xg0(i,r)        government consumption
                Xv0(i,r)        investment demand
                E0(i,r)         exports
                M0(i,r)         imports
                Q0(i,r)         Armington's composite good
                D0(i,r)         domestic good
                Sp0(r)          private saving
                Sg0(r)          government saving
                Td0(r)          direct tax
                Tz0(j,r)        production tax
                Tm0(j,r)        import tariff

                FF(h,r)         factor endowment of the h-th factor
                Sf(r)           foreign saving in US dollars
                tauz(i,r)       indirect tax rate
                taum(i,r)       import tariff rate
;
Td0(r)    =SAM("GOV","HOH",r);
Tz0(j,r)  =SAM("IDT",j,r);
Tm0(j,r)  =SAM("TRF",J,r);

F0(h,j,r) =SAM(h,j,r);
Y0(j,r)   =sum(h, F0(h,j,r));
X0(i,j,r) =SAM(i,j,r);
Z0(j,r)   =Y0(j,r) +sum(i, X0(i,j,r));
M0(i,r)   =SAM("EXT",i,r);

tauz(j,r) =Tz0(j,r)/Z0(j,r);
taum(j,r) =Tm0(j,r)/M0(j,r);

Xp0(i,r)  =SAM(i,"HOH",r);
FF(h,r)   =SAM("HOH",h,r);

Xg0(i,r)  =SAM(i,"GOV",r);
Xv0(i,r)  =SAM(i,"INV",r);
E0(i,r)   =SAM(i,"EXT",r);
Q0(i,r)   =(Xp0(i,r)+Xg0(i,r)+Xv0(i,r)+sum(j, X0(i,j,r)));
D0(i,r)   =(1+tauz(i,r))*Z0(i,r)-E0(i,r);
Sp0(r)    =SAM("INV","HOH",r);
Sg0(r)    =SAM("INV","GOV",r);
Sf(r)     =SAM("INV","EXT",r);

Display Y0,F0,Z0,X0,Xp0,Xg0,Xv0,E0,M0,Q0,D0,Sp0,Sg0,Td0,Tz0,Tm0,
        FF,Sf,tauz,taum;
* calibration ---------------------------------------------------------
Parameter       sigma(i)        elasticity of substitution
                psi(i)          elasticity of transformation
                eta(i)          substitution elasticity parameter
                phi(i)          transformation elasticity parameter
;
sigma(i)=2;
psi(i)  =2;
eta(i)  =(sigma(i)-1)/sigma(i);
phi(i)  =(psi(i)+1)/psi(i);

Parameter       alpha(i,r)      share parameter in utility function
                beta(h,j,r)     share parameter in production function
                b(j,r)          scale parameter in production function
                ax(i,j,r)       intermediate input requirement coeff.
                ay(j,r)         composite fact. input req. coeff.
                mu(i,r)         government consumption share
                lambda(i,r)     investment demand share
                deltam(i,r)     share parameter in Armington function
                deltad(i,r)     share parameter in Armington function
                gamma(i,r)      scale parameter in Armington function
                xid(i,r)        share parameter in transformation func.
                xie(i,r)        share parameter in transformation func.
                theta(i,r)      scale parameter in transformation func.
                ssp(r)          average propensity for private saving
                ssg(r)          average propensity for gov. saving
                taud(r)         direct tax rate
;

alpha(i,r)=Xp0(i,r)/sum(j, Xp0(j,r));
beta(h,j,r)=F0(h,j,r)/sum(k, F0(k,j,r));
b(j,r)    =Y0(j,r)/prod(h, F0(h,j,r)**beta(h,j,r));

ax(i,j,r) =X0(i,j,r)/Z0(j,r);
ay(j,r)   =Y0(j,r)/Z0(j,r);
mu(i,r)   =Xg0(i,r)/sum(j, Xg0(j,r));
lambda(i,r)=Xv0(i,r)/(Sp0(r)+Sg0(r)+Sf(r));

deltam(i,r)=(1+taum(i,r))*M0(i,r)**(1-eta(i))
        /((1+taum(i,r))*M0(i,r)**(1-eta(i)) +D0(i,r)**(1-eta(i)));
deltad(i,r)=D0(i,r)**(1-eta(i))
        /((1+taum(i,r))*M0(i,r)**(1-eta(i)) +D0(i,r)**(1-eta(i)));
gamma(i,r) =Q0(i,r)/(deltam(i,r)*M0(i,r)**eta(i)
        +deltad(i,r)*D0(i,r)**eta(i))**(1/eta(i));

xie(i,r)=E0(i,r)**(1-phi(i))/(E0(i,r)**(1-phi(i))+D0(i,r)**(1-phi(i)));
xid(i,r)=D0(i,r)**(1-phi(i))/(E0(i,r)**(1-phi(i))+D0(i,r)**(1-phi(i)));
theta(i,r)=Z0(i,r)/(xie(i,r)*E0(i,r)**phi(i)
        +xid(i,r)*D0(i,r)**phi(i))**(1/phi(i));

ssp(r)  =Sp0(r)/sum(h, FF(h,r));
ssg(r)  =Sg0(r)/(Td0(r)+sum(j, Tz0(j,r))+sum(j, Tm0(j,r)));
taud(r) =Td0(r)/sum(h, FF(h,r));


Display alpha,beta,b,ax,ay,mu,lambda,deltam,deltad,gamma,xie,
        xid,theta,ssp,ssg,taud;
* ---------------------------------------------------------------------

* defining model system -----------------------------------------------
Variable        Y(j,r)          composite factor
                F(h,j,r)        the h-th factor input by the j-th firm
                X(i,j,r)        intermediate input
                Z(j,r)          output of the j-th good
                Xp(i,r)         household cons. of the i-th good
                Xg(i,r)         government consumption
                Xv(i,r)         investment demand
                E(i,r)          exports
                M(i,r)          imports
                Q(i,r)          Armington's composite good
                D(i,r)          domestic good

                pf(h,r)         the h-th factor price
                py(j,r)         composite factor price
                pz(i,r)         supply price of the i-th good
                pq(i,r)         Armington's composite good price
                pe(i,r)         export price in local currency
                pm(i,r)         import price in local currency
                pd(i,r)         the i-th domestic good price
                epsilon(r)      exchange rate
                pWe(i,r)        export price in US dollars
                pWm(i,r)        import price in US dollars

                Sp(r)           private saving
                Sg(r)           government saving
                Td(r)           direct tax
                Tz(j,r)         production tax
                Tm(i,r)         import tariff

                UU(r)           utility
                SW              Social Welfare [fictitious obj. func.]
;

Equation        eqpy(j,r)       composite factor aggregation func.
                eqX(i,j,r)      intermediate demand function
                eqY(j,r)        composite factor demand func.
                eqF(h,j,r)      factor demand function
                eqpzs(j,r)      unit cost function

                eqTd(r)         direct tax revenue function
                eqTz(j,r)       production tax revenue function
                eqTm(i,r)       import tariff revenue function
                eqXg(i,r)       government demand function

                eqXv(i,r)       investment demand function
                eqSp(r)         private saving function
                eqSg(r)         government saving function

                eqXp(i,r)       household demand function

                eqpe(i,r)       world export price equation
                eqpm(i,r)       world import price equation
                eqepsilon(r)    balance of payments

                eqpqs(i,r)      Armington function
                eqM(i,r)        import demand function
                eqD(i,r)        domestic good demand function

                eqpzd(i,r)      transformation function
                eqDs(i,r)       domestic good supply function
                eqE(i,r)        export supply function

                eqpw(i,r,rr)    international price equilibrium
                eqw(i,r,rr)     international quantity equilibrium

                eqpqd(i,r)      market clearing cond. for comp. good
                eqpf(h,r)       factor market clearing condition

                eqUU(r)         utility function
                obj             social welfare function [fictitious]
;

*[domestic production] ----
eqpy(j,r)..     Y(j,r)  =e= b(j,r)*prod(h, F(h,j,r)**beta(h,j,r));
eqX(i,j,r)..    X(i,j,r)=e= ax(i,j,r)*Z(j,r);
eqY(j,r)..      Y(j,r)  =e= ay(j,r)*Z(j,r);
eqF(h,j,r)..    F(h,j,r)=e= beta(h,j,r)*py(j,r)*Y(j,r)/pf(h,r);
eqpzs(j,r)..    pz(j,r) =e= ay(j,r)*py(j,r) +sum(i, ax(i,j,r)*pq(i,r));

*[government behavior] ----
eqTd(r)..       Td(r)   =e= taud(r)*sum(h, pf(h,r)*FF(h,r));
eqTz(i,r)..     Tz(i,r) =e= tauz(i,r)*pz(i,r)*Z(i,r);
eqTm(i,r)..     Tm(i,r) =e= taum(i,r)*pm(i,r)*M(i,r);
eqXg(i,r)..     Xg(i,r) =e= mu(i,r)*(Td(r)+sum(j, Tz(j,r))
                            +sum(j, Tm(j,r))-Sg(r))/pq(i,r);

*[investment behavior] ----
eqXv(i,r)..     Xv(i,r) =e= lambda(i,r)*(Sp(r) +Sg(r)
                            +epsilon(r)*Sf(r))/pq(i,r);

*[savings] ----------------
eqSp(r)..       Sp(r)   =e= ssp(r)*sum(h, pf(h,r)*FF(h,r));
eqSg(r)..       Sg(r)   =e= ssg(r)*(Td(r) +sum(j, Tz(j,r))
                            +sum(j, Tm(j,r)));

*[household consumption] --
eqXp(i,r)..     Xp(i,r) =e= alpha(i,r)*(sum(h, pf(h,r)*FF(h,r))
                            -Sp(r) -Td(r))/pq(i,r);

*[international trade] ----
eqpe(i,r)..     pe(i,r) =e= epsilon(r)*pWe(i,r);
eqpm(i,r)..     pm(i,r) =e= epsilon(r)*pWm(i,r);
eqepsilon(r)..  sum(i, pWe(i,r)*E(i,r)) +Sf(r)
                        =e= sum(i, pWm(i,r)*M(i,r));

*[Armington function] -----
eqpqs(i,r)..    Q(i,r)  =e= gamma(i,r)*(deltam(i,r)*M(i,r)**eta(i)
                            +deltad(i,r)*D(i,r)**eta(i))**(1/eta(i));
eqM(i,r)..      M(i,r)  =e= (gamma(i,r)**eta(i)*deltam(i,r)*pq(i,r)
                            /((1+taum(i,r))*pm(i,r)))**(1/(1-eta(i)))
                            *Q(i,r);
eqD(i,r)..      D(i,r)  =e= (gamma(i,r)**eta(i)*deltad(i,r)*pq(i,r)
                            /pd(i,r))**(1/(1-eta(i)))*Q(i,r);

*[transformation function] -----
eqpzd(i,r)..    Z(i,r)  =e= theta(i,r)*(xie(i,r)*E(i,r)**phi(i)
                            +xid(i,r)*D(i,r)**phi(i))**(1/phi(i));
eqE(i,r)..      E(i,r)  =e= (theta(i,r)**phi(i)*xie(i,r)*(1+tauz(i,r))
                            *pz(i,r)/pe(i,r))**(1/(1-phi(i)))*Z(i,r);
eqDs(i,r)..     D(i,r)  =e= (theta(i,r)**phi(i)*xid(i,r)*(1+tauz(i,r))
                            *pz(i,r)/pd(i,r))**(1/(1-phi(i)))*Z(i,r);

*[market clearing condition]
eqpqd(i,r)..    Q(i,r)  =e= Xp(i,r)+Xg(i,r)+Xv(i,r)+sum(j, X(i,j,r));
eqpf(h,r)..     FF(h,r) =e= sum(j, F(h,j,r));

*[international market clearing condition]
eqpw(i,r,rr)..  (pWe(i,r) -pWm(i,rr))$(ord(r) ne ord(rr)) =e= 0;
eqw(i,r,rr)..   (E(i,r) -M(i,rr))$(ord(r) ne ord(rr)) =e= 0;

*[fictitious objective function]
eqUU(r)..       UU(r)   =e= prod(i, Xp(i,r)**alpha(i,r));
obj..           SW      =e= sum(r, UU(r));
* ---------------------------------------------------------------------

* Initializing variables ----------------------------------------------
Y.l(j,r)  =Y0(j,r);
F.l(h,j,r)=F0(h,j,r);
X.l(i,j,r)=X0(i,j,r);
Z.l(j,r)  =Z0(j,r);
Xp.l(i,r) =Xp0(i,r);
Xg.l(i,r) =Xg0(i,r);
Xv.l(i,r) =Xv0(i,r);
Q.l(i,r)  =Q0(i,r);
E.l(i,r)  =E0(i,r);
M.l(i,r)  =M0(i,r);
D.l(i,r)  =D0(i,r);
pf.l(h,r) =1;
py.l(j,r) =1;
pz.l(i,r) =1;
pq.l(i,r) =1;
pe.l(i,r) =1;
pm.l(i,r) =1;
pd.l(i,r) =1;
epsilon.l(r)=1;
pWe.l(i,r)=1;
pWm.l(i,r)=1;
Sp.l(r)   =Sp0(r);
Sg.l(r)   =Sg0(r);
Td.l(r)   =Td0(r);
Tz.l(i,r) =Tz0(i,r);
Tm.l(i,r) =Tm0(i,r);
* ---------------------------------------------------------------------
* setting lower bounds to avoid division by zero ----------------------
Y.lo(j,r) =0.00001;
F.lo(h,j,r)=0.00001;
X.lo(i,j,r)=0.00001;
Z.lo(j,r) =0.00001;
Xp.lo(i,r)=0.00001;
Xg.lo(i,r)=0.00001;
Xv.lo(i,r)=0.00001;
Q.lo(i,r) =0.00001;
E.lo(i,r) =0.00001;
M.lo(i,r) =0.00001;
D.lo(i,r) =0.00001;
pf.lo(h,r)=0.00001;
py.lo(j,r)=0.00001;
pz.lo(i,r)=0.00001;
pq.lo(i,r)=0.00001;
pe.lo(i,r)=0.00001;
pm.lo(i,r)=0.00001;
pd.lo(i,r)=0.00001;
epsilon.lo(r)=0.00001;
pWe.lo(i,r)=0.00001;
pWm.lo(i,r)=0.00001;
Sp.lo(r)   =0.00001;
Sg.lo(r)   =0.00001;
Td.lo(r)   =0.00001;
Tz.lo(i,r) =0.0000;
Tm.lo(i,r) =0.0000;

* ---------------------------------------------------------------------
* numeraire ---
pf.fx("LAB",r)=1;
* fixing the redundant variable
epsilon.fx("USA")=1;
* ---------------------------------------------------------------------
* Defining and solving the model --------------------------------------
Model twocge /all/;
Solve twocge maximizing SW using nlp;
* ---------------------------------------------------------------------

* ---------------------------------------------------------------------
* Simulation Runs: Abolition of Import Tariffs
taum(i,r)=0; option bratio=1;
Solve twocge maximizing SW using nlp;
* ---------------------------------------------------------------------

* Display changes -----------------------------------------------------
Parameter
dY(j,r),dF(h,j,r),dX(i,j,r),dZ(j,r),dXp(i,r),dXg(i,r),dXv(i,r),
dQ(i,r),dE(i,r),dM(i,r),dD(i,r),dpf(h,r),dpy(j,r),dpz(i,r),dpq(i,r),
dpe(i,r),dpm(i,r),dpd(i,r),depsilon(r),dpWe(i,r),dpWm(i,r),
dSp(r),dSg(r),dTd(r),dTz(i,r),dTm(i,r);

dY(j,r)  =(Y.l(j,r)  /Y0(j,r)  -1)*100;
dF(h,j,r)=(F.l(h,j,r)/F0(h,j,r)-1)*100;
dX(i,j,r)=(X.l(i,j,r)/X0(i,j,r)-1)*100;
dZ(j,r)  =(Z.l(j,r)  /Z0(j,r)  -1)*100;
dXp(i,r) =(Xp.l(i,r) /Xp0(i,r) -1)*100;
dXg(i,r) =(Xg.l(i,r) /Xg0(i,r) -1)*100;
dXv(i,r) =(Xv.l(i,r) /Xv0(i,r) -1)*100;
dQ(i,r)  =(Q.l(i,r)  /Q0(i,r)  -1)*100;
dE(i,r)  =(E.l(i,r)  /E0(i,r)  -1)*100;
dM(i,r)  =(M.l(i,r)  /M0(i,r)  -1)*100;
dD(i,r)  =(D.l(i,r)  /D0(i,r)  -1)*100;
dpf(h,r) =(pf.l(h,r) /1 -1)*100;
dpy(j,r) =(py.l(j,r) /1 -1)*100;
dpz(i,r) =(pz.l(i,r) /1 -1)*100;
dpq(i,r) =(pq.l(i,r) /1 -1)*100;
dpe(i,r) =(pe.l(i,r) /1 -1)*100;
dpm(i,r) =(pm.l(i,r) /1 -1)*100;
dpd(i,r) =(pd.l(i,r) /1 -1)*100;
dpWe(i,r)=(pWe.l(i,r)/1 -1)*100;
dpWm(i,r)=(pWm.l(i,r)/1 -1)*100;
depsilon(r)=(epsilon.l(r)/1 -1)*100;
dSp(r)   =(Sp.l(r)   /Sp0(r)   -1)*100;
dSg(r)   =(Sg.l(r)   /Sg0(r)   -1)*100;
dTd(r)   =(Td.l(r)   /Td0(r)   -1)*100;
dTz(i,r) =(Tz.l(i,r) /Tz0(i,r) -1)*100;
dTm(i,r) =(Tm.l(i,r) /Tm0(i,r) -1)*100;

Display
dY,dF,dX,dZ,dXp,dXg,dXv,dQ,dE,dM,dD,dpf,dpy,dpz,dpq,
dpe,dpm,dpd,dpWe,dpWm,depsilon,dTd,dTz,dTm,dSp,dSg;

* ---------------------------------------------------------------------
* end of model --------------------------------------------------------
* ---------------------------------------------------------------------
