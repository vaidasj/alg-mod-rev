option LP=convert;
option LP=convert;
option LP=convert;
$Title Ajax Paper Company Production Schedule  (AJAX,SEQ=60)

$Ontext

   This sample model is taken from the cybernet pds/apex sample
   library of models. A paper manufacturer can produce four different
   types of paper on three different machines. Given a fixed demand
   schedule the objective is to find a production plan that
   maximizes monthly profits.


CDC, PDS/APEX Sample Model Library, 1977. Control Data Corporation

$Offtext

 Sets  m     machines at mills  / machine-1, machine-2, machine-3 /
       g     paper grades       / 20-bond-wt, 25-bond-wt, c-bond-ext, tissue-wrp /

 Table prate(g,m)  production rate (tons per hour)

            machine-1  machine-2   machine-3
 20-bond-wt    53        52         49
 25-bond-wt    51        49         44
 c-bond-ext    52        45         47
 tissue-wrp    42        44         40


 Table pcost(g,m)  production cost ($ per ton)

              machine-1  machine-2  machine-3
 20-bond-wt      76        75        73
 25-bond-wt      82        80        78
 c-bond-ext      96        95        92
 tissue-wrp      72        71        70

 Table dempr(g,*)  demand and prices

              demand  price
 20-bond-wt    30000    77
 25-bond-wt    20000    81
 c-bond-ext    12000    99
 tissue-wrp     8000   105

 Parameter avail(m)  available machine time (hours per month) /
                     machine-1  672, machine-2  600, machine-3  480  /


 Variables  outp(g,m)    production  (tons per month)
            profit       profit ($ per month)

 Positive Variable outp

 Equations  cap(m)       machine capacity (hours per month)
            dem(g)       demand (tons per month)
            pdef         profit definition ($ per month) ;

 cap(m)..  sum(g, outp(g,m)/prate(g,m)) =l= avail(m);

 dem(g)..  sum(m, outp(g,m)) =e= dempr(g,"demand");

 pdef..    profit =e= sum(g, dempr(g,"demand")*dempr(g,"price")) - sum((g,m), pcost(g,m)*outp(g,m));

 Model ajax /all/;
 Solve ajax using lp maximizing profit;

$Stitle report definitions

 Parameter mtr(m,*)  machine time report
           par(g,*)  production allocation report ;

    mtr(m,"avail-h")   = avail(m); mtr(m,"used-h") = cap.l(m); mtr(m,"unused-h") = avail(m) - cap.l(m);
    mtr(m,"marginal")  = - cap.m(m);

    par(g,"demand")    = dempr(g,"demand"); par(g,"sold") = dem.l(g); par(g,"unsold") = dempr(g,"demand") - dem.l(g);
    par(g,"marginal")  = dem.m(g);

 Display mtr, par , outp.l, outp.m ;

