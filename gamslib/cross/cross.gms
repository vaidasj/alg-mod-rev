option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Alcuin's River Crossing  (CROSS,SEQ=191)
$ontext
A farmer carrying a bushel of corn and accompanied by a goose
and a wolf came to a river. He found a boat capable of
transporting himself plus one of his possessions - corn, goose, or
wolf - but no more. Now, he couldn't leave the corn alone with
the goose, nor the goose alone with the wolf, else one would
consume the other. Nevertheless, he succeeded in getting himself
and his goods across the river safely.


Borndoerfer, R, Groetschel, M, and Loebel, A, Alcuin's
Transportation Problem and Integer Programming. Konrad Zuse
Zentrum for Informationstechnik, Berlin, 1995.

Contributed by Soren Nielsen, Institute for Mathematical Sciences
               University of Copenhagen
$offtext

sets i items /goose, wolf, corn/
     t time  /t1*t10/;

parameter dir(t)  crossing - near to far is +1 - far to near -1;

dir(t) = power(-1,ord(t)-1);

display dir;

variables y(i,t)       1 iff the item is on the far side at time t
          cross(i,t)   crossing the river
          done(t)      all items in far side
          nocross      number of non crossing periods;
binary variable y; positive variable cross,done;

equations  DefDone(i,t)  everything on far side
           DefCross(i,t) crossing
           LimCross(t)
           EatNone1(t)
           EatNone2(t)
           Obj;

DefCross(i,t+1)..    y(i,t+1) =e= y(i,t) + dir(t)*cross(i,t);

DefDone(i,t) .. done(t) =l= y(i,t);

limCross(t+1).. sum(i, cross(i,t)) =l= 1;

EatNone1(t)..  dir(t)*(y('goose',t) + y('wolf',t) - 1) =l= done(t) ;
EatNone2(t)..  dir(t)*(y('goose',t) + y('corn',t) - 1) =l= done(t) ;

Obj..  nocross =e= sum(t, done(t));

model river  / all /;

y.fx(i,t)$(ord(t)=1) = 0;

option optcr = 0;
solve river using mip maximizing nocross;

display y.l, cross.l;
