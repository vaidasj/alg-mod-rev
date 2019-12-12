option LP=convert;
option LP=convert;
option LP=convert;
$Title Morocco Fertilizer Distribution - Mode Selection  (MSM,SEQ=66)

$Ontext

   This model has been used to estimate the transport cost for different
   types of fertilizer in Morocco. Only rail and road transport are considered
   but mode switching is permitted. Three transport matrices are computed as
   estimates for transport cost from (1) ports to bagging stations, (2) bagging
   centers to market centers and (3) port to market centers.


Meeraus, A, and Smeers, Y, Transport Cost Estimates via Linear Programming.
The World Bank, 1985.

$Offtext

Set n     nodes for rail and road network  /
          agadir     , afrour     , aknoul     , al-hoceima , azilal     , azrou      , ben-slim   , benguerir
          beni-melal , beni-oukil , berechid   , bourfa     , bougedra   , boulemane  , casablanca , chaouen
          chichaoua  , el-ayon    , el-jadida  , el-kella   , er-rachida , essaouira  , fes        , fes-e-bali
          figuig     , fqih-ben   , guercif    , ifrane     , jorf-las   , kasba-tdl  , kenitra    , ketama
          khemesset  , khenifra   , khouribga  , larache    , marrakech  , mathar     , meknes     , midelt
          nador      , ouarzazate , oued-metil , oued-zem   , ouezzane   , oujda      , qunara     , rabat
          romani     , safi       , selouane   , settat     , sid-benour , sidi-e-aid , sidi-kacem , sidi-slim
          sidi-smail , sou-e-arba , t-azial    , taline     , tanger     , taounate   , taza       , tetouan
          tiznit     , youssoufia /

    m     modes      / rail, road /

    nm(n,m)    node mode mapping

    orig(n,n)  origins

Alias (n,np,npp), (m,mp);


 Table  arcs(n,np,m)  rail and road distances  (km)

                            rail        road
  agadir.    chichaoua                   198
  agadir.    essaouira                   173
  agadir.    taline                      130
  agadir.    tiznit                       78
  afrour.    azilal                       67
  afrour.    beni-melal                   19
  afrour.    el-kella                     91
  afrour.    fqih-ben                     40
  aknoul.    t-azial                      39
  aknoul.    taounate                    120
  aknoul.    taza                         61
  al-hoceima.ketama                      107
  al-hoceima.t-azial                      65
  azilal.    marrakech                   163
  azrou.     fes                          61
  azrou.     khenifra                     82
  azrou.     meknes                       60
  azrou.     midelt                      125
  ben-slim.  casablanca                   55
  ben-slim.  rabat                        64
  ben-slim.  romani                       57
  benguerir. el-kella                     57
  benguerir. marrakech        74          70
  benguerir. settat          104          96
  benguerir. youssoufia       59          60
  beni-melal.fqih-ben                     42
  beni-melal.kasba-tdl                    30
  beni-oukil.bourfa          287
  beni-oukil.el-ayon          64
  beni-oukil.oujda            16
  berechid.  casablanca       36          36
  berechid.  el-jadida                   106
  berechid.  khouribga                    78
  berechid.  settat                       30
  berechid.  sidi-e-aid       14          14
  bourfa.    er-rachida                  250
  bourfa.    figuig                      108
  bourfa.    mathar                      185
  bougedra.  marrakech                   131
  bougedra.  qunara                       97
  bougedra.  safi                         26
  bougedra.  sidi-smail                   81
  boulemane. fes                         101
  boulemane. ifrane                       53
  boulemane. midelt                       86
  casablanca.el-jadida                    98
  casablanca.jorf-las                    110
  casablanca.rabat            89          91
  chaouen.   ketama                       80
  chaouen.   ouezzane                     60
  chaouen.   tetouan                      60
  chichaoua. essaouira                   101
  chichaoua. marrakech                    75
  el-ayon.   guercif                      89
  el-ayon.   oued-metil                   21
  el-ayon.   oujda            80          79
  el-ayon.   taza            164         164
  el-jadida. jorf-las         12          12
  el-jadida. safi                        142
  el-jadida. settat                      137
  el-jadida. sidi-smail                   50
  el-kella.  fqih-ben                    102
  el-kella.  marrakech                    84
  er-rachida.midelt                      154
  er-rachida.ouarzazate                  320
  essaouira. qunara                       24
  fes.       fes-e-bali                   87
  fes.       ifrane                       61
  fes.       meknes           56          60
  fes.       ouezzane                    134
  fes.       sidi-kacem                   82
  fes.       taounate                     81
  fes.       taza            100         120
  fes-e-bali.ouezzane                     70
  fes-e-bali.taounate                     56
  fqih-ben.  khouribga                    48
  fqih-ben.  oued-zem                     46
  guercif.   midelt                      277
  guercif.   oued-metil                   78
  guercif.   taza                         65
  ifrane.    meknes                       65
  jorf-las.  safi                        130
  jorf-las.  settat                      135
  jorf-las.  sidi-smail                   48
  kasba-tdl. khenifra                     99
  kasba-tdl. midelt                      191
  kasba-tdl. oued-zem                     47
  kenitra.   khemesset                    79
  kenitra.   rabat            40          41
  kenitra.   sidi-slim        60          62
  kenitra.   sou-e-arba                   78
  ketama.    taounate                     79
  khemesset. meknes                       46
  khemesset. rabat                        81
  khemesset. romani                       78
  khemesset. sidi-slim                    59
  khenifra.  meknes                      119
  khouribga. oued-zem         34          33
  khouribga. sidi-e-aid       89          83
  larache.   sou-e-arba                   73
  larache.   tanger                       87
  marrakech. ouarzazate                  178
  marrakech. sid-benour                  137
  marrakech. taline                      171
  mathar.    oujda                        83
  meknes.    ouezzane                    104
  meknes.    sidi-kacem       55          46
  meknes.    sidi-slim                    57
  nador.     selouane                     11
  ouarzazate.taline                      217
  oued-metil.selouane                     65
  oued-zem.  romani                       91
  ouezzane.  sou-e-arba                   53
  oujda.     selouane                    129
  rabat.     romani                       81
  safi.      youssoufia       83          90
  selouane.  t-azial                      80
  settat.    sidi-e-aid       16          16
  sid-benour.sidi-smail                   28
  sidi-kacem.sidi-slim        25          22
  sidi-kacem.sou-e-arba       60          60
  sou-e-arba.tanger          140         160
  tanger.    tetouan                      60

Parameter darcs(n,np,m)  directed arc length    (km);

darcs(n,np,m) = max(arcs(n,np,m),arcs(np,n,m));
nm(n,m)       = yes$sum(np, darcs(n,np,m) ne 0);
orig(n,n)     = yes;

Display arcs, nm;

$Stitle model and parameter definitions

Parameters  mrate(m)    mode rate by distance   ($ per km per ton)
            lrate(m)    loading rate            ($ per ton)
            urate(m)    unloading rate          ($ per ton)
            srate(m,mp) mode switching cost     ($ per ton) ;


Variables x(n,np,npp,m)  flow on arcs
          y(n,m)         loading at source
          z(n,np,m)      unloading at destination
          w(n,np,m,mp)   switching of modes
          phi            total cost                  ($ per ton)
          phil           loading cost                ($ per ton)
          phiu           unloading cost              ($ per ton)
          phis           switching cost              ($ per ton)
          phim           mode travel cost            ($ per ton)

Positive Variables x, y, z, w;

Equations nb(n,np,m)      node balance
          db(n,np)        destination balance
          cd              accounting: total cost       ($ per ton)
          al              accounting: loading cost     ($ per ton)
          au              accounting: unloading cost   ($ per ton)
          as              accounting: switching cost   ($ per ton)
          am              accounting: mode travel cost ($ per ton);

Sets s(n)  source nodes - dynamic
     d(n)  destination nodes - dynamic ;  s(n) = no; d(n) = no;


nb(s,n,m)$nm(n,m)..

sum(np$darcs(np,n,m), x(s,np,n,m)) + sum(mp$nm(n,mp), w(s,n,m,mp)) + y(s,m)$orig(s,n)
 =g= sum(np$darcs(n,np,m), x(s,n,np,m)) + z(s,n,m)$d(n) + sum(mp$nm(n,mp), w(s,n,mp,m));

db(s,d).. sum(m$nm(d,m), z(s,d,m)) =g= 1;

al.. phil =e= sum((s,m)$nm(s,m), lrate(m)*y(s,m));

au.. phiu =e= sum((s,d,m)$nm(d,m), urate(m)*z(s,d,m));

as.. phis =e= sum((s,n,m,mp)$(nm(n,m)*nm(n,mp)), srate(m,mp)*w(s,n,m,mp));

am.. phim =e= sum((s,n,np,m), mrate(m)*darcs(n,np,m)*x(s,n,np,m));

cd.. phi  =e= phil + phiu + phis + phim;

Model msm  morocco mode selection model / all / ;

$Stitle submodel selection and rate definitions

Sets pp(n)  plants and ports     / agadir , casablanca , jorf-las , kenitra , nador , safi , tanger /

     bc(n)  bagging centers  /
            agadir     , beni-melal  , berechid  , bougedra   , casablanca , el-ayon    , fes        , jorf-las
            kenitra    , marrakech   , meknes    , nador      , oued-zem   , safi       , sidi-slim  , sou-e-arba
            tanger     , taza        /

     mc(n)  market centers  /
            agadir     , al-hoceima , azilal     , beni-melal , ben-slim   , boulemane  , casablanca , chaouen
            el-jadida  , el-kella   , er-rachida , essaouira  , fes        , figuig     , ifrane     , kenitra
            khemesset  , khenifra   , khouribga  , marrakech  , meknes     , nador      , ouarzazate , oujda
            rabat      , safi       , settat     , tanger     , taounate   , taza       , tetouan    , tiznit     / ;

Options solveopt=replace;

** ports-to-bagging centers **

s(n) = pp(n);
d(n) = bc(n);
lrate(m) = .5;
urate(m) = 0;
srate(m,mp) = 5;
mrate("rail") = .029;
mrate("road") = .045;
srate(m,m) = 0;

Solve msm minimizing phi using lp;

Parameter pptobc(n,np) transport cost of bulk: ports to bagging center ($ per ton);
pptobc(s,d) = db.m(s,d) + .50$orig(s,d);

** ports-to-markets **

s(n) = pp(n);
d(n) = mc(n);
lrate(m) = 1;
urate(m) = 1;
srate(m,mp) = 1;
mrate("rail") = .035;
mrate("road") = .065;
srate(m,m) = 0;

Solve msm minimizing phi using lp;

Parameter pptomc(n,np) transport cost bagged: port to market ($ per ton);
pptomc(s,d) = db.m(s,d) + 1.30$orig(s,d);

** bagging centers-to-demand points **

s(n) = no;
d(n) = mc(n);
lrate(m) = 1;
urate(m) = 1;
srate(m,mp) = 1;
mrate("rail") = .035;
mrate("road") = .065;
srate(m,m) = 0;

Parameter bctomc(n,np) transport cost bagged: bagging center to market ($ per ton);

*  the problem is broken up into tthree problems to fit into the cyber
*  workspace. not needed on other machines or professional verions.
*  also observe that bctomc is assigned after each solve because of
*  the solopt=replace.

s(bc) = yes$(ord(bc) le 6);
Solve msm minimizing phi using lp;

bctomc(s,d) = db.m(s,d) + 1.30$orig(s,d);
s(bc) = yes$(ord(bc) gt 6 and ord(bc) le 12);
Solve msm minimizing phi using lp;

bctomc(s,d) = db.m(s,d) + 1.30$orig(s,d);
s(bc) = yes$(ord(bc) gt 12);
Solve msm minimizing phi using lp;

bctomc(s,d) = db.m(s,d) + 1.30$orig(s,d);

Display pptobc, pptomc, bctomc;
