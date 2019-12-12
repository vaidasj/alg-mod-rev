option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Cyclic Scheduling of Continuous Parallel Units (CSCHED,SEQ=222)
$ontext
Cyclic Scheduling of Continuous Parallel Units


Jain, V, and Grossmann, I E, Cyclic Scheduling of Continuous
Parallel Units with Decaying Performance. American Institute
of Chemical Engineers Journal 44, 7 (1998), 1623-1636.

$offtext


Set k        subcycles
    kzero(k) subcycle 0
    i        furnaces
    j        feeds

Parameter tau(i,j) "changeover time [days]"
          D(i,j)   "processing rate [tons/day]"
          a(i,j)   "conversion parameters [1/day]"
          b(i,j)   "conversion parameter [1/day]"
          c(i,j)   "conversion parameter [1/day]"
          p(i,j)   "price parameter [$/ton]"
          Cs(i,j)  "setup/cleaning cost [$]"
          Flo(j)   lower bnd on flow rate
          Fup(j)   upper bnd on flow rate
          Cc(i,j)
          Cp(i,j)
          yk(k);

Scalar U upper bound on processing time
       epsi "small const to avoid 0/0"

Variables t(i,j)   process time of feed in furnace
          n(i,j)   number of subcycles of feed in furnace
          F(j)     rate of arrival of feed j
          S(j)     extra amount of feed processed above min
          dt(i,j)  time devoted to feed in furnace
          Tcycle   common cycle time for all furnaces
          y(i,j,k) "SOS to model n(i,j)"
          obj      objective variable;

Positive Variable t, n, S, dt, Tcycle;
Binary Variable y;

Equation   defobj       "objective is to maximize profit/cycle-time"
           massbal_1(j) "mass balance equations (8)"
           massbal_2(j) "mass balance equations (9)"
           integ_1(i,j) "integrality constraints (10)"
           integ_2(i,j) "integrality constraints (11)"
           time_1(i,j)  "relate total time of feed to processing & clean-up"
           time_2(i)    "total time less than cycle time"
           time_3(i,j)  "t(i,j) is zero if number of subcycles is zero"
           extra(j)     "extra constraints";

defobj.. Tcycle * obj =e=  sum((i,j),
                        Cc(i,j)*t(i,j) - Cs(i,j)*n(i,j)
                      + Cp(i,j)*n(i,j)*(1 - exp(-b(i,j)*t(i,j)/n(i,j)))) ;

massbal_1(j).. Flo(j)*Tcycle + S(j) =e= sum(i, D(i,j)*t(i,j));
massbal_2(j).. S(j) =l= (Fup(j) - Flo(j))*Tcycle;

integ_1(i,j).. n(i,j) =e= sum(k, yk(k) * y(i,j,k));
integ_2(i,j).. 1 =e= sum(k, y(i,j,k));

time_1(i,j)..  dt(i,j) =e= n(i,j)*tau(i,j) + t(i,j);
time_2(i)..    sum(j, dt(i,j)) =l= Tcycle;
time_3(i,j)..  t(i,j) =l= sum(kzero,U*(1 - y(i,j,kzero)));

extra(j)$(Flo(j) > 0).. sum(i, n(i,j)) =g= 1;

model csched /all/;

$if not set dataset $set dataset 1
$include csched%dataset%.inc

yk(k) = ord(k)-1; yk(kzero) = epsi;
Cc(i,j) = P(i,j)*D(i,j)*c(i,j);
Cp(i,j) = P(i,j)*D(i,j)*a(i,j)/ b(i,j);

n.up(i,j) = card(k)-1;
n.l(i,j) = 1;
n.lo(i,j) = epsi;
F.lo(j) = Flo(j); F.up(j) = Fup(j);
Tcycle.l = 100;

solve csched maximizing obj using minlp;



