option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Maximum Likelihood Estimation  (LIKE,SEQ=25)
$Ontext

This application from the biomedical area tests the hypothesis
that a population of systolic blood pressure can be separated into
three distinct groups.


Bracken, J, and McCormick, G P, Chapter 8.5. In Selected Applications of
Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 90-92.

$Offtext

 sets  i  observations  / 1*31 /
       g  groups        / one, two, three /


       table  data(*,i)  systolic blood pressure data

            1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
pressure   95 105 110 115 120 125 130 135 140 145 150 155 160 165 170
frequency   1   1   4   4  15  15  15  13  21  12  17   4  20   8  17

  +        16  17  18  19  20  21  22  23  24  25  26  27  28  29  30  31
pressure  175 180 185 190 195 200 205 210 215 220 225 230 235 240 245 260
frequency   8   6   6   7   4   3   3   8   1   6   0   5   1   7   1   2

  parameters  y(i)   pressure
              w(i)   frequency weight
              c      constant ;

  y(i) = data("pressure",i);  w(i) = data("frequency",i);
  c    = 1/sqrt(2*3.14159); display y, w, c;

  positive variables  p(g)   proportion of population
                      m(g)   population mean
                      s(g)   population standard deviation
           variable   mlf    maximum likelihood value

  equations like, pdef, rank;


like.. mlf =e= sum(i, w(i)*log(c*sum(g, p(g)/s(g)*exp(-.5*sqr((y(i)-m(g))/s(g))))));

pdef.. sum(g, p(g)) =e= 1 ;

rank(g+1).. m(g+1) =g= m(g);

model ml1 maximum likelihood - ordered    / like,pdef,rank /
      ml2 maximum likelihood - unordered  / like,pdef / ;

p.l(g) = 1/3; m.l(g) = 100 + 30*ord(g); s.l(g) = 15;

p.lo(g)=.1;
s.lo(g)=.1;

*  reported solution below gives a nonoptimal solution
*  p.fx('one')   = .365;
*  p.fx('two')   = .475;
*  p.fx('three') = .160;

option domlim  = 1e3;
ml1.workfactor = 1.5;
solve ml1 maximizing mlf using nlp;

