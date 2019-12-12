option DNLP=convert;
option DNLP=convert;
option DNLP=convert;
$Title  Minimal y of GAMMA(x) (MINGAMMA,SEQ=299)
$ontext

Find minimum of y=gamma(x) and y=loggamma(x) for x>0


Sloane, N J A, The On-Line Encyclopedia of Integer Sequences; Sequence
A030169. https://oeis.org/A030169

$offtext

variables y1,y2,x1,x2;
equations y1def,y2def;

x1.lo = 0.01; x2.lo = 0.01;

y1def.. y1 =e= gamma(x1);
y2def.. y2 =e= loggamma(x2);

model m1 /y1def/
      m2 /y2def/;

solve m1 minimizing y1 using dnlp;

solve m2 minimizing y2 using nlp;

scalar x1opt / 1.46163214496836   /, x1delta, x2delta
       y1opt / 0.8856031944108887 /, y1delta, y2delta
       y2opt;

y2opt := log(y1opt);

option decimals=8;

x1delta = x1.l - x1opt; y1delta = y1.l - y1opt;
x2delta = x2.l - x1opt; y2delta = y2.l - y2opt;
display x1.l,x2.l,y1.l,y2.l,x1opt,y1opt,y2opt,
        x1delta,x2delta,y1delta,y2delta;

scalar tol / 1e-6 /;

if( m1.solvestat <> %Solvestat.Capability Problems% and
    m2.solvestat <> %Solvestat.Capability Problems%,
abort$(abs(x1delta) > tol or abs(x2delta) > tol or
       abs(y1delta) > tol or abs(y2delta) > tol    ) "inconsistent results";
)
