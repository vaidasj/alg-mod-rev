option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Simultaneous Optimization for HEN Synthesis (SYNHEAT,SEQ=117)

$Ontext

  This model designs a heat exchanger network which operates at
  minimal annual cost and satisfies heating and cooling require-
  -ments. The superstructure consists of two stages with eight
  possible exchangers


Yee, T F, and Grossmann, I E, Simultaneous Optimization of Models for
Heat Integration - Heat Exchanger Network Synthesis. Computers and
Chemical Engineering 14, 10 (1990), 1151-1184.

$Offtext


 Sets i hot streams /1*2/
      j cold streams /1*2/;

 Scalar nok  number of stages in superstructure / 2 /;

 Set  k          temperature locations  nok + 1 /1*3/
      st(k)      stages
      first(k)   first temperature location
      last(k)    last temperature location ;


 st(k)    = yes$(ord(k) lt card(k))  ;
 first(k) = yes$(ord(k) eq 1)        ;
 last(k)  = yes$(ord(k) eq card(k))  ;



 Parameters

 fh(i)      heat capacity flowrate of hot stream
 fc(j)      heat capacity flowrate of cold stream
 thin(i)    supply temp. of hot stream
 thout(i)   target temp. of hot stream
 tcin(j)    supply temp. of cold stream
 tcout(j)   target temp. of cold stream
 ech(i)     heat content hot i
 ecc(j)     heat content cold j
 hh(i)      stream-individual film coefficient hot i,
 hc(j)      stream-individual film coefficient cold j,
 hucost     cost of heating utility,
 cucost     cost of cooling utility,
 unitc      fixed charge for exchanger,
 acoeff     area cost coefficient for exchangers,
 hucoeff    area cost coefficient for heaters,
 cucoeff    area cost coefficient for coolers,
 aexp       cost exponent for exchangers,
 hhu        stream-individual film coefficient hot utility,
 hcu        stream-individual film coefficient cold utility,
 thuin      inlet temperature hot utility,
 thuout     outlet temperature hot utility,
 tcuin      inlet temperature cold utility,
 tcuout     outlet temperature cold utility,
 gamma(i,j) upper bound of driving force,
 a(i,j,k)   area for exchanger for match ij in interval k (chen approx.),
 al(i,j,k)  area calculated with log mean,
 acu(i)     area coolers,
 ahu(j)     area heaters,
 tmapp      minimum approach temperature
 costheat   cost of heating,
 costcool   cost of cooling,
 invcost    investment cost   ;

 Binary Variables      z(i,j,k), zcu(i), zhu(j)  ;

 Positive Variables
   th(i,k)    temperature of  hot stream i as it enters stage k
   tc(j,k)    temperature of cold stream j as it leaves stage k
   q(i,j,k)   energy exchanged between i and j in stage k
   qc(i)      energy exchanged between i and the cold utility
   qh(j)      energy exchanged between j and the hot utility
   dt(i,j,k)  approach between i and j at location k
   dtcu(i)    approach between i and the cold utility
   dthu(j)    approach between j and the hot utility    ;

 Variable cost    hen and utility cost       ;

 Equations
  eh(i,k)       energy exchanged by hot  stream i in stage k
  eqc(i,k)      energy exchanged by hot  stream i with the cold utility
  teh(i)        total energy exchanged by hot  stream i
  ec(j,k)       energy exchanged by cold stream j in stage k
  eqh(j,k)      energy exchanged by cold stream j with the hot utility
  tec(j)        total energy exchanged by cold  stream j
  month(i,k)    monotonicity of th
  montc(j,k)    monotonicity of tc
  monthl(i,k)   monotonicity of th k = last
  montcf(j,k)   monotonicity of tc for k = 1
  tinh(i,k)     supply temperature of hot streams
  tinc(j,k)     supply temperature of cold streams
  logq(i,j,k)   logical constraints on  q
  logqh(j)      logical constraints on qh(j)
  logqc(i)      logical constraints on qc(i)
  logdth(i,j,k) logical constraints on dt at the  hot end
  logdtc(i,j,k) logical constraints on dt at the cold end
  logdtcu(i,k)  logical constraints on dtcu
  logdthu(j,k)  logical constraints on dthu
  obj           objective function         ;


 teh(i).. (thin(i)-thout(i))*fh(i) =e= sum((j,st), q(i,j,st)) + qc(i) ;
 tec(j).. (tcout(j)-tcin(j))*fc(j) =e= sum((i,st), q(i,j,st)) + qh(j) ;

 eh(i,k)$st(k).. fh(i)*(th(i,k) - th(i,k+1)) =e= sum(j, q(i,j,k))  ;
 ec(j,k)$st(k).. fc(j)*(tc(j,k) - tc(j,k+1)) =e= sum(i,q(i,j,k)) ;

 eqc(i,k)$last(k)..  fh(i)*(th(i,k) - thout(i)) =e= qc(i) ;
 eqh(j,k)$first(k).. fc(j)*(tcout(j) - tc(j,k)) =e= qh(j) ;

 tinh(i,k)$first(k).. thin(i) =e= th(i,k) ;
 tinc(j,k)$last(k)..  tcin(j) =e= tc(j,k) ;

 month(i,k)$st(k).. th(i,k) =g= th(i,k+1) ;
 montc(j,k)$st(k).. tc(j,k) =g= tc(j,k+1) ;

 monthl(i,k)$last(k).. th(i,k) =g= thout(i) ;
 montcf(j,k)$first(k)..tcout(j) =g= tc(j,k) ;

 logq(i,j,k)$st(k)..q(i,j,k) - min(ech(i), ecc(j))*z(i,j,k) =l= 0 ;

 logqc(i)..qc(i) - ech(i)*zcu(i) =l= 0 ;
 logqh(j)..qh(j) - ecc(j)*zhu(j) =l= 0 ;

 logdth(i,j,k)$st(k)..dt(i,j,k) =l= th(i,k) - tc(j,k) +
                                    gamma(i,j)*(1 - z(i,j,k)) ;

 logdtc(i,j,k)$st(k)..dt(i,j,k+1) =l= th(i,k+1)-tc(j,k+1) +
                                      gamma(i,j)*(1 - z(i,j,k)) ;

 logdthu(j,k)$first(k)..dthu(j) =l= (thuout - tc(j,k)) ;
 logdtcu(i,k)$last(k)..dtcu(i) =l= th(i,k) - tcuout ;

 obj..cost =e= unitc*(sum((i,j,st),z(i,j,st)) +
               sum(i,zcu(i)) + sum(j,zhu(j))) +

               acoeff*sum((i,j,k),(q(i,j,k)*((1/hh(i))+(1/hc(j)))/
               (((dt(i,j,k)*dt(i,j,k+1)*(dt(i,j,k) + dt(i,j,k+1))/2 +
               1e-6)**0.33333) + 1e-6) + 1e-6)**aexp) +

               hucoeff*(sum(j,(qh(j)*((1/hc(j))+1/hhu))/
               (((thuin-tcout(j))*dthu(j)*((thuin-tcout(j)+dthu(j))/2)+
               1e-6)**0.33333) + 1e-6)**aexp) +

               cucoeff*sum(i,(qc(i)*((1/hh(i))+(1/hcu))/
               (((thout(i)-tcuin)*dtcu(i)*(thout(i)-tcuin+dtcu(i))/2 +
               1e-6)**0.33333) + 1e-6)**aexp) +

               sum(j,qh(j)*hucost) + sum(i,qc(i)*cucost) ;



* process streams

* hot

 thin('1')=650;  thout('1')=370;  fh('1')=10; hh('1')=1;
 thin('2')=590;  thout('2')=370;  fh('2')=20; hh('2')=1;

* cold

  tcin('1')=410;  tcout('1')=650;  fc('1')=15;  hc('1')=1;
  tcin('2')=350;  tcout('2')=500;  fc('2')=13;  hc('2')=1;

* costs and coefficients

 hucost =80; hucoeff =150; thuin  =680; thuout =680; hhu   =5;
 cucost =15; cucoeff =150; tcuin  =300; tcuout =320; hcu   =1;

 unitc  =5500;   acoeff =150;  aexp   =1;


 tmapp = 10;

* bounds

 dt.lo(i,j,k) = tmapp ;
 dthu.lo(j) = tmapp ;
 dtcu.lo(i) = tmapp ;

 th.up(i,k) = thin(i) ;
 th.lo(i,k) = thout(i) ;
 tc.up(j,k) = tcout(j) ;
 tc.lo(j,k) = tcin(j) ;

* initialization

 th.l(i,k) = thin(i) ;
 tc.l(j,k) = tcin(j) ;

 dthu.l(j) = thuout - tcin(j) ;
 dtcu.l(i) = thin(i) - tcuout ;

 ech(i) = fh(i)*(thin(i) - thout(i)) ;
 ecc(j) = fc(j)*(tcout(j) - tcin(j)) ;

 gamma(i,j) = max(0,tcin(j) - thin(i), tcin(j) - thout(i),
                  tcout(j) - thin(i), tcout(j) - thout(i)) ;

 dt.l(i,j,k) = thin(i) - tcin(j) ;

 q.l(i,j,k)$st(k) = min(ech(i),ecc(j)) ;



 Model super/all/ ;

 Option optcr    = 0 ;
 Option limrow   = 0 ;
 Option limcol   = 0 ;
 Option solprint = off ;
 Option sysout   = off ;


 Solve super using minlp minimizing cost ;

*  areas by chen approximation

 a(i,j,k)$st(k) = q.l(i,j,k)*((1/hh(i))+(1/hc(j)))/
                  (2/3*sqrt(dt.l(i,j,k)*dt.l(i,j,k+1)) +
                   1/6*(1e-8 + dt.l(i,j,k) + dt.l(i,j,k+1))) ;

*  areas by log mean temperature

 al(i,j,k)$st(k) = (q.l(i,j,k)*((1/hh(i))+(1/hc(j))))/
                   (dt.l(i,j,k)*dt.l(i,j,k+1)*
                   (dt.l(i,j,k)+dt.l(i,j,k+1))/2)**0.33333  ;


 display a,al ;


* areas of heaters and coolers

 ahu(j) = (qh.l(j)*((1/hc(j)) + (1/hhu))/(((thuin-tcout(j))*dthu.l(j)*
          ((thuin-tcout(j)+dthu.l(j)))/2) + 1e-6)**0.33333)  ;

 acu(i) = (qc.l(i)*((1/hh(i))+(1/hcu))/(((thout(i)-tcuin)*dtcu.l(i)*
          (thout(i)-tcuin+dtcu.l(i))/2 + 1e-6)**0.33333)) ;


 display acu, ahu ;


*  utility costs

 costheat = sum(j,qh.l(j)*hucost) ;
 costcool = sum(i,qc.l(i)*cucost) ;


 display costheat, costcool ;


*  investment cost

 invcost = cost.l - costheat - costcool ;


 display invcost ;

