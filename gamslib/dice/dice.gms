option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Non-transitive Dice Design (DICE,SEQ=176)
$Ontext
 Probabilistic dice - an example of a non-transitive relation.
 We want to design a set of dice with an integer number on each face
 such that on average dice1 beats dice2, and dice2 on average beats
 dice3 etc, but diceN has to beat dice1.

 MIP codes behave very erratic on such a problem and slight
 reformulations can result in dramatic changes in performance. Also
 note the face value will be integers automatically.


 Gardner, M, Scientific American.

 Robert A Bosch, Mindsharpener, Optima, MP Society Newsletter, Vol 70,
 June 2003, page 8-9

 Robert A Bosch, Monochromatic Squares, Optima, MP Society Newsletter,
 Vol 71, March 2004, page 6-7

$Offtext

sets    f    faces on a dice  / face1*face6 /
        dice number of dice   / dice1*dice3 / ;

scalars flo  lowest face value  / 1 /
        fup  highest face value
        wn   wins needed - possible bound ;

fup = card(dice) * card(f);

wn = floor(0.5 * sqr(card(f))) + 1;

alias(f,fp);
alias(dice,dicep);

variables  wnx               number of wins
           fval(dice,f)      value of dice - will be integer
           comp(dice,f,fp)   one if f beats fp ;
binary variable comp;

fval.lo(dice,f) = flo;
fval.up(dice,f) = fup;

fval.fx("dice1","face1") = flo;

equation eq1(dice)       count the wins
         eq3(dice,f,fp)  definition of non-transitive relation
         eq4(dice,f)     different face values for a single dice;

eq1(dice).. sum((f,fp), comp(dice,f,fp)) =e= wnx;

eq3(dice,f,fp) .. fval(dice,f) + (fup-flo)*(1-comp(dice,f,fp)) =g= fval(dice++1,fp) + 1;

eq4(dice,f-1) .. fval(dice,f-1) + 1 =l= fval(dice,f);


model xdice /all /;

$if set nosolve $exit

xdice.reslim = 20;
solve xdice using mip max wnx;

option fval:0; display wn,fval.l;

parameter rep1 Chance of winning against next;
rep1(dice,f) = 100*sum(fp, comp.l(dice,f,fp)) / card(f);
rep1(dice,'chance') = sum(f, rep1(dice,f))/card(f);
option rep1:0; display rep1;
