option NLP=convert;
option NLP=convert;
option NLP=convert;
$ Title A Large-country CGE Model in Ch. 10.2 (LRGCGE,SEQ=277)

$Ontext
No description.


Hosoe, N, Gasawa, K, and Hashimoto, H
Handbook of Computible General Equilibrium Modeling
University of Tokyo Press, Tokyo, Japan, 2004
$Offtext


* Definition of sets for suffix ---------------------------------------
Set     u       SAM entry     /BRD, MLK, CAP, LAB, IDT, TRF, HOH, GOV,
                               INV, EXT/
        i(u)    goods         /BRD, MLK/
        h(u)    factor        /CAP, LAB/;
Alias (u,v), (i,j), (h,k);
* ---------------------------------------------------------------------

* Loading data --------------------------------------------------------
Table   SAM(u,v)        social accounting matrix
	BRD	MLK	CAP	LAB	IDT
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

+       TRF	HOH	GOV	INV	EXT
BRD     	20	19	16	8
MLK     	30	14	15	4
CAP
LAB
IDT
TRF
HOH     				
GOV     3	23			
INV     	17	2		12
EXT
;
* Loading the initial values ------------------------------------------
Parameter       Y0(j)   composite factor
                F0(h,j) the h-th factor input by the j-th firm
                X0(i,j) intermediate input
                Z0(j)   output of the j-th good
                Xp0(i)  household consumption of the i-th good
                Xg0(i)  government consumption
                Xv0(i)  investment demand
                E0(i)   exports
                M0(i)   imports
                Q0(i)   Armington's composite good
                D0(i)   domestic good
                Sp0     private saving
                Sg0     government saving
                Td0     direct tax
                Tz0(j)  production tax
                Tm0(j)  import tariff

                FF(h)   factor endowment of the h-th factor
                Sf      foreign saving in US dollars
                pWe0(i) export price in US dollars
                pWm0(i) import price in US dollars
                tauz(i) production tax rate
                taum(i) import tariff rate
;
Td0     =SAM("GOV","HOH");
Tz0(j)  =SAM("IDT",j);
Tm0(j)  =SAM("TRF",J);

F0(h,j) =SAM(h,j);
Y0(j)   =sum(h, F0(h,j));
X0(i,j) =SAM(i,j);
Z0(j)   =Y0(j) +sum(i, X0(i,j));
M0(i)   =SAM("EXT",i);

tauz(j) =Tz0(j)/Z0(j);
taum(j) =Tm0(j)/M0(j);

Xp0(i)  =SAM(i,"HOH");
FF(h)   =SAM("HOH",h);

Xg0(i)  =SAM(i,"GOV");
Xv0(i)  =SAM(i,"INV");
E0(i)   =SAM(i,"EXT");
Q0(i)   =Xp0(i)+Xg0(i)+Xv0(i)+sum(j, X0(i,j));
D0(i)   =(1+tauz(i))*Z0(i)-E0(i);
Sp0     =SAM("INV","HOH");
Sg0     =SAM("INV","GOV");
Sf      =SAM("INV","EXT");

pWe0(i)  =1;
pWm0(i)  =1;

Display Y0,F0,X0,Z0,Xp0,Xg0,Xv0,E0,M0,Q0,D0,Sp0,Sg0,Td0,Tz0,Tm0,
        FF,Sf,tauz,taum;
* Calibration ---------------------------------------------------------
Parameter       sigma(i)        elasticity of substitution
                psi(i)          elasticity of transformation
                eta(i)          substitution elasticity parameter
                phi(i)          transformation elasticity parameter
;
sigma(i)=2;
psi(i)  =2;
eta(i)  =(sigma(i)-1)/sigma(i);
phi(i)  =(psi(i)+1)/psi(i);

Parameter       alpha(i)        share parameter in utility func.
                beta(h,j)       share parameter in production func.
                b(j)            scale parameter in production func.
                ax(i,j)         intermediate input requirement coeff.
                ay(j)           composite fact. input req. coeff.
                mu(i)           government consumption share
                lambda(i)       investment demand share
                deltam(i)       share parameter in Armington func.
                deltad(i)       share parameter in Armington func.
                gamma(i)        scale parameter in Armington func.
                xid(i)          share parameter in transformation func.
                xie(i)          share parameter in transformation func.
                theta(i)        scale parameter in transformation func.
                ssp             average propensity for private saving
                ssg             average propensity for gov. saving
                taud            direct tax rate
;
alpha(i)=Xp0(i)/sum(j, Xp0(j));
beta(h,j)=F0(h,j)/sum(k, F0(k,j));
b(j)    =Y0(j)/prod(h, F0(h,j)**beta(h,j));

ax(i,j) =X0(i,j)/Z0(j);
ay(j)   =Y0(j)/Z0(j);
mu(i)   =Xg0(i)/sum(j, Xg0(j));
lambda(i)=Xv0(i)/(Sp0+Sg0+Sf);

deltam(i)=(1+taum(i))*M0(i)**(1-eta(i))
        /((1+taum(i))*M0(i)**(1-eta(i)) +D0(i)**(1-eta(i)));
deltad(i)=D0(i)**(1-eta(i))
        /((1+taum(i))*M0(i)**(1-eta(i)) +D0(i)**(1-eta(i)));
gamma(i)=Q0(i)/(deltam(i)*M0(i)**eta(i)+deltad(i)*D0(i)**eta(i))
        **(1/eta(i));

xie(i)=E0(i)**(1-phi(i))/(E0(i)**(1-phi(i))+D0(i)**(1-phi(i)));
xid(i)=D0(i)**(1-phi(i))/(E0(i)**(1-phi(i))+D0(i)**(1-phi(i)));
theta(i)=Z0(i)/(xie(i)*E0(i)**phi(i)+xid(i)*D0(i)**phi(i))**(1/phi(i));

ssp     =Sp0/sum(h, FF(h));
ssg     =Sg0/(Td0+sum(j, Tz0(j))+sum(j, Tm0(j)));
taud    =Td0/sum(h, FF(h));


Display alpha,beta,b,ax,ay,mu,lambda,deltam,deltad,gamma,xie,
        xid,theta,ssp,ssg,taud;
* ---------------------------------------------------------------------

* Defining model system -----------------------------------------------
Variable        Y(j)            composite factor
                F(h,j)          the h-th factor input by the j-th firm
                X(i,j)          intermediate input
                Z(j)            output of the j-th good
                Xp(i)           household consumption of the i-th good
                Xg(i)           government consumption
                Xv(i)           investment demand
                E(i)            exports
                M(i)            imports
                Q(i)            Armington's composite good
                D(i)            domestic good

                pf(h)           the h-th factor price
                py(j)           composite factor price
                pz(j)           supply price of the i-th good
                pq(i)           Armington's composite good price
                pe(i)           export price in local currency
                pm(i)           import price in local currency
                pd(i)           the i-th domestic good price
                epsilon         exchange rate
                pWe(i)          world export price
                pWm(i)          world import price

                Sp              private saving
                Sg              government saving
                Td              direct tax
                Tz(j)           production tax
                Tm(i)           import tariff

                UU      utility [fictitious]
;
Equation        eqpy(j)         composite factor aggregation func.
                eqX(i,j)        intermediate demand function
                eqY(j)          composite factor demand function
                eqF(h,j)        factor demand function
                eqpzs(j)        unit cost function

                eqTd            direct tax revenue function
                eqTz(j)         production tax revenue function
                eqTm(i)         import tariff revenue function
                eqXg(i)         government demand function

                eqXv(i)         investment demand function
                eqSp            private saving function
                eqSg            government saving function

                eqXp(i)         household demand function

                eqpe(i)         world export price equation
                eqpm(i)         world import price equation
                eqepsilon       balance of payments
                eqfe(i)         foreign export demand function
                eqfm(i)         foreign import supply function

                eqpqs(i)        Armington function
                eqM(i)          import demand function
                eqD(i)          domestic good demand function

                eqpzd(i)        transformation function
                eqDs(i)         domestic good supply function
                eqE(i)          export supply function

                eqpqd(i)        market clearing cond. for comp. good
                eqpf(h)         factor market clearing condition

                obj             utility function [fictitious]
;
*[domestic production] ----
eqpy(j)..       Y(j)    =e= b(j)*prod(h, F(h,j)**beta(h,j));
eqX(i,j)..      X(i,j)  =e= ax(i,j)*Z(j);
eqY(j)..        Y(j)    =e= ay(j)*Z(j);
eqF(h,j)..      F(h,j)  =e= beta(h,j)*py(j)*Y(j)/pf(h);
eqpzs(j)..      pz(j)   =e= ay(j)*py(j) +sum(i, ax(i,j)*pq(i));

*[government behavior] ----
eqTd..          Td      =e= taud*sum(h, pf(h)*FF(h));
eqTz(j)..       Tz(j)   =e= tauz(j)*pz(j)*Z(j);
eqTm(i)..       Tm(i)   =e= taum(i)*pm(i)*M(i);
eqXg(i)..       Xg(i)   =e= mu(i)*(Td +sum(j, Tz(j)) +sum(j, Tm(j))
                            -Sg)/pq(i);

*[investment behavior] ----
eqXv(i)..       Xv(i)   =e= lambda(i)*(Sp +Sg +epsilon*Sf)/pq(i);

*[savings] ----------------
eqSp..          Sp      =e= ssp*sum(h, pf(h)*FF(h));
eqSg..          Sg      =e= ssg*(Td +sum(j, Tz(j))+sum(j, Tm(j)));

*[household consumption] --
eqXp(i)..       Xp(i)   =e= alpha(i)*(sum(h, pf(h)*FF(h)) -Sp -Td)
                            /pq(i);

*[international trade] ----
eqpe(i)..       pe(i)   =e= epsilon*pWe(i);
eqpm(i)..       pm(i)   =e= epsilon*pWm(i);
eqepsilon..     sum(i, pWe(i)*E(i)) +Sf =e= sum(i, pWm(i)*M(i));
eqfe(i)..       E(i)/E0(i) =e= (pWe(i)/pWe0(i))**(-sigma(i));
eqfm(i)..       M(i)/M0(i) =e= (pWm(i)/pWm0(i))**psi(i);

*[Armington function] -----
eqpqs(i)..      Q(i)    =e= gamma(i)*(deltam(i)*M(i)**eta(i)
                            +deltad(i)*D(i)**eta(i))**(1/eta(i));
eqM(i)..        M(i)    =e= (gamma(i)**eta(i)*deltam(i)*pq(i)
                            /((1+taum(i))*pm(i)))**(1/(1-eta(i)))*Q(i);
eqD(i)..        D(i)    =e= (gamma(i)**eta(i)*deltad(i)*pq(i)
                            /pd(i))**(1/(1-eta(i)))*Q(i);

*[transformation function] -----
eqpzd(i)..      Z(i)    =e= theta(i)*(xie(i)*E(i)**phi(i)+xid(i)
                            *D(i)**phi(i))**(1/phi(i));
eqE(i)..        E(i)    =e= (theta(i)**phi(i)*xie(i)*(1+tauz(i))*pz(i)
                            /pe(i))**(1/(1-phi(i)))*Z(i);
eqDs(i)..       D(i)    =e= (theta(i)**phi(i)*xid(i)*(1+tauz(i))*pz(i)
                            /pd(i))**(1/(1-phi(i)))*Z(i);

*[market clearing condition]
eqpqd(i)..      Q(i)    =e= Xp(i) +Xg(i) +Xv(i) +sum(j, X(i,j));
eqpf(h)..       sum(j, F(h,j)) =e= FF(h);

*[fictitious objective function]
obj..           UU      =e= prod(i, Xp(i)**alpha(i));
* ---------------------------------------------------------------------

* Initializing variables ----------------------------------------------
Y.l(j)  =Y0(j);
F.l(h,j)=F0(h,j);
X.l(i,j)=X0(i,j);
Z.l(j)  =Z0(j);
Xp.l(i) =Xp0(i);
Xg.l(i) =Xg0(i);
Xv.l(i) =Xv0(i);
E.l(i)  =E0(i);
M.l(i)  =M0(i);
Q.l(i)  =Q0(i);
D.l(i)  =D0(i);
pf.l(h) =1;
py.l(j) =1;
pz.l(j) =1;
pq.l(i) =1;
pe.l(i) =1;
pm.l(i) =1;
pd.l(i) =1;
epsilon.l=1;
pWe.l(i)=1;
pWm.l(i)=1;
Sp.l    =Sp0;
Sg.l    =Sg0;
Td.l    =Td0;
Tz.l(j) =Tz0(j);
Tm.l(i) =Tm0(i);
* ---------------------------------------------------------------------

* Setting lower bounds to avoid division by zero ----------------------
Y.lo(j) =0.00001;
F.lo(h,j)=0.00001;
X.lo(i,j)=0.00001;
Z.lo(j) =0.00001;
Xp.lo(i)=0.00001;
Xg.lo(i)=0.00001;
Xv.lo(i)=0.00001;
E.lo(i) =0.00001;
M.lo(i) =0.00001;
Q.lo(i) =0.00001;
D.lo(i) =0.00001;
pf.lo(h)=0.00001;
py.lo(j)=0.00001;
pz.lo(j)=0.00001;
pq.lo(i)=0.00001;
pe.lo(i)=0.00001;
pm.lo(i)=0.00001;
pd.lo(i)=0.00001;
epsilon.lo=0.00001;
pWe.lo(i)=0.00001;
pWm.lo(i)=0.00001;
Sp.lo   =0.00001;
Sg.lo   =0.00001;
Td.lo   =0.00001;
Tz.lo(j)=0.0000;
Tm.lo(i)=0.0000;
* ---------------------------------------------------------------------
* numeraire ---
pf.fx("LAB")=1;
* ---------------------------------------------------------------------
* Defining and solving the model --------------------------------------
Model lrgcge /all/;
Solve lrgcge maximizing UU using nlp;

* ---------------------------------------------------------------------
* Simulation Runs: Abolition of Import Tariffs
taum(i)=0; option bratio=1;
Solve lrgcge maximizing UU using nlp;
* ---------------------------------------------------------------------

* Display of changes --------------------------------------------------
Parameter
dY(j),dF(h,j),dX(i,j),dZ(j),dXp(i),dXg(i),dXv(i),
dE(i),dM(i),dQ(i),dD(i),dpd(i),dpz(i),dpq(i),dpy(j),
dpm(i),dpe(i),dpf(h),depsilon,dTd,dTz(i),dTm(i),dSp,dSg;

dY(j)  =(Y.l(j)  /Y0(j)  -1)*100;
dF(h,j)=(F.l(h,j)/F0(h,j)-1)*100;
dX(i,j)=(X.l(i,j)/X0(i,j)-1)*100;
dZ(j)  =(Z.l(j)  /Z0(j)  -1)*100;
dXp(i) =(Xp.l(i) /Xp0(i) -1)*100;
dXg(i) =(Xg.l(i) /Xg0(i) -1)*100;
dXv(i) =(Xv.l(i) /Xv0(i) -1)*100;
dE(i)  =(E.l(i)  /E0(i)  -1)*100;
dM(i)  =(M.l(i)  /M0(i)  -1)*100;
dQ(i)  =(Q.l(i)  /Q0(i)  -1)*100;
dD(i)  =(D.l(i)  /D0(i)  -1)*100;
dpf(h) =(pf.l(h) /1 -1)*100;
dpy(j) =(py.l(j) /1 -1)*100;
dpz(j) =(pz.l(j) /1 -1)*100;
dpq(i) =(pq.l(i) /1 -1)*100;
dpe(i) =(pe.l(i) /1 -1)*100;
dpm(i) =(pm.l(i) /1 -1)*100;
dpd(i) =(pd.l(i) /1 -1)*100;
depsilon=(epsilon.l/1 -1)*100;
dTd    =(Td.l    /Td0    -1)*100;
dTz(j) =(Tz.l(j) /Tz0(j) -1)*100;
dTm(i) =(Tm.l(i) /Tm0(i) -1)*100;
dSp    =(Sp.l    /Sp0    -1)*100;
dSg    =(Sg.l    /Sg0    -1)*100;

Display
dY,dF,dX,dZ,dXp,dXg,dXv,dE,dM,dQ,dD,dpf,dpy,dpz,
dpq,dpe,dpm,dpd,depsilon,dTd,dTz,dTm,dSp,dSg;

* Welfare measure: Hicksian equivalent variations ---------------------
Parameter       UU0             utility level in the Base Run Eq.
                ep0             expenditure func. in the Base Run Eq.
                ep1             expenditure func. in the C-f Eq.
                EV              Hicksian equivalent variations
;
UU0     =prod(i, Xp0(i)**alpha(i));
ep0     =UU0 /prod(i,(alpha(i)/1)**alpha(i));
ep1     =UU.l/prod(i,(alpha(i)/1)**alpha(i));
EV      =ep1-ep0;

Display EV;
* ---------------------------------------------------------------------
* end of model --------------------------------------------------------
* ---------------------------------------------------------------------
