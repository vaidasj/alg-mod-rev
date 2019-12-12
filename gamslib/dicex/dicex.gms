option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Non-transitive Dice Design - Enhanced (DICEX,SEQ=272)
$Ontext

 Robert A Bosch, suggested in a recent Optima Newsletter an extension
 to the original DICE (SEQ=176) model: Each number on a face can appear
 only once. This has been formulated by adding the 0/1 variable fmap
 and equations eq4 (to define the mapping of values to faces)
 and eq5 (to make this mapping unique). Note the importance of the
 '=e=' type in equation eq1 and the power of eq3.

 Probabilistic dice - an example of a non-transitive relation.
 We want to design a set of dice with an integer number on each face
 such that on average dice1 beats dice2, and dice2 on average beats
 dice3 etc, but diceN has to beat dice1.


 Martin Gardner, The Colossal Book of Mathematics, WW Norton, New
 York, NY, 2001.

 Robert A Bosch, Mindsharpener, Optima, MP Society Newsletter, Vol 70,
 June 2003, page 8-9

 Robert A Bosch, Monochromatic Squares, Optima, MP Society Newsletter,
 Vol 71, March 2004, page 6-7

$Offtext

sets    f  faces on a dice  / face1*face6 /
        d  number of dice   / dice1*dice3 / ;


parameters  wn        min wins needed
            fnum(d,f) assigned face values
            big       big m  ;

wn        = floor(0.5 * sqr(card(f))) + 1;
fnum(d,f) = card(f)*(ord(d)-1)+ord(f);
big       = card(d)*card(f) - 1;

alias(f,fp),(d,dp);

variables  wnx             number of wins
           fval(d,f)       value of dice - will be integer
           comp(d,f,fp)    one if f beats fp
           fmap(d,f,dp,fp) assigns values to dice faces
binary variable comp, fmap;

fval.lo(d,f) = 1;
fval.up(d,f) = card(d)*card(f);

fval.fx(d,f)$(ord(d)=1 and ord(f)=1) = 1;

equation eq1(d)       count the wins
         eq2(d,f,fp)  definition of non-transitive relation
         eq3(d,f)     different face values for a single dice
         eq4(d,f)     assign values to faces
         eq5(d,f)     make face assignment unique;

eq1(d)     .. sum((f,fp), comp(d,f,fp)) =e= wnx;

eq2(d,f,fp).. fval(d,f) + big*(1-comp(d,f,fp)) =g= fval(d++1,fp) + 1;

eq3(d,f-1) .. fval(d,f-1) + 1 =l= fval(d,f);

eq4(d,f)   .. sum((dp,fp), fnum(dp,fp)*fmap(d,f,dp,fp)) =e= fval(d,f);

eq5(dp,fp)   .. sum((d,f), fmap(d,f,dp,fp)) =e= 1;

model dice1 each dice with unique faces / eq1 ,eq2, eq3  /
      dice2 all faces are unique        / eq1, eq2, eq3, eq4, eq5 /;

$if set nosolve $exit

option reslim = 50, optcr = 0.0, optca = 0.99;

solve dice2 using mip maximizing wnx;

option fval:0; display wn,fval.l;

$eval NN card(d)*card(f)
set vals 'possible face values' / 1 * %NN% /;
parameter rep1 Chance of winning against next;
parameter chk(vals);
parameter fv(d,f) 'computed face values';

if( dice2.modelstat = %modelstat.Optimal% or dice2.modelstat = %modelstat.IntegerSolution%,
  rep1(d,f) = 100*sum(fp, comp.l(d,f,fp)) / card(f);
  rep1(d,'chance') = sum(f, rep1(d,f))/card(f);
  option rep1:0; display rep1;
  fv(d,f) = round(fval.l(d,f));
  abort$[card(fv) <> card(vals)] 'inconsistent face values';
  chk(vals) = 1;
  loop{(d,f)$fv(d,f),
    chk(vals)$[ord(vals) eq fv(d,f)] = chk(vals) - 1;
  };
  if {card(chk), execute_unload 'diceDebug'; };
  abort$[card(chk)] 'non-unique face values found', chk, fv;
);
