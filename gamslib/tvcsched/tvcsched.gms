option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Flow Formulation of the ISCI Rotator Problem  (TVCSCHED,SEQ=247)
$Ontext

Given N balls out of which n1 are of color 1, n2 are of color 2, ...
nk are of color k, find an assignment of the N balls to N ordered
slots such that balls of any one color are as much evenly spaced as
possible.

The paper by Bollapragada, Bussieck and Mallik lists 25 examples. Use the
command line option --curid n to select the nth example. if --curid is
missing we select problem number 12.

Adding the option --sparse 1 creates a sparse flow graph which might
result in an approximate solution only.

More information on this problem can be found at http://www.gams.com/apps/isci


Bollapragada, S, Bussieck, M.R., and Mallik, S, Scheduling Commercial
Videotapes in Broadcast Television. Operations Research, 2003

Bollapragada, S, Cheng, H, Phillips, M, and Garbiras, M,
NBC's Optimization Systems Increase Its Revenues and Productivity.
Interfaces 31, 1 (2002).

$Offtext

$if not set curid $set curid 12

Set  sp slots plus initial  / 0 * 100 /
     s(sp) slots
     c colors               / R red, B blue, W white, G green, Y yellow /
     id test set id         / 1*25 /;

Table  idc(id,c) number of colors
         R     B     W     G    Y
 1       5     3
 2       4     2     2
 3       5     3     2
 4       6     3     2
 5       6     4     2
 6       4     3     3     2
 7       6     4     4
 8       6     5     4
 9       8     3     3     2
10       7     6     4
11       8     7     5
12       8     7     3     2
13       5     5     5     4    1
14       8     6     6     5
15       7     6     5     4    3
16      10     8     7     5
17       9     7     6     5    3
18      17    10     8     5
19      16    15    14
20      25    13    12
21      21    16    13
22      26    12    10     2
23      25    23    12
24      27    25    14     9
25      33    25    21    15    6
;

Set preplace(id,sp,c) preplaced balls /
 1. (6.B,  8.R)
 2. (1.R,  2.B,  3.W)
 3. (1.B,  2.W)
 4. (1.B,  5.W,  6.B)
 5. (1.R,  3.B)
 6. (2.R,  3.R,  4.B,  6.W)
 7. (1.R,  6.B, 14.W)
 8. (1.B,  4.W,  7.R)
 9. (1.R,  3.W,  5.G)
10. (1.B,  2.B, 15.W)
11. (1.W,  5.R, 10.B)
12. (1.W,  5.R, 10.B, 20.G)
13. (2.R, 10.R, 17.B)
14. (1.R,  6.G, 25.W)
15. (1.R,  5.R,  6.G, 25.W)
16. (3.R,  9.G, 15.B)
17. (3.R,  9.G, 15.B)
18. (1.W,  9.G, 17.R, 38.R)
19. (1.B,  5.B,  6.W)
20. (7.R, 15.B, 17.B, 20.W, 39.W)
21. (7.R, 15.B, 17.B, 20.W, 39.W)
22. (1.B,  9.R, 10.G, 20.R)
23. (1.W, 17.R, 30.B)
24. (1.R,  5.B, 11.G, 15.B, 25.G)
25. (1.B,  5.G,  6.R, 25.W, 41.Y)
/;

Parameter   nc(c) number of colors; nc(c) = idc('%curid%',c);
Scalar      n number of commercial; n = sum(c,nc(c));
Parameter   dc(c) ideal distance; dc(c)$nc(c) = n/nc(c);

Alias (sp,i,j);

s(sp+1) = ord(sp) <= n;

* Build network
Set         net(c,i,j) network connecting slots
Parameter   dev(c,i,j) deviation of distance i and j to ideal distance
Scalar      isf initial span factor /2/
            msf middle span factor range /0.1/
            sf  span factor;

$if set sparse $goto dosparse

* Dense graph
loop(c$nc(c),
  loop(i$(ord(i)<=n+1),
    net(c,i,j)$(ord(j)>ord(i)) = yes;
  )
);

$label dosparse
loop(c$nc(c),
  net(c,'0',j)$(ord(j)>1 and ord(j)<=min(n+1,1+isf*dc(c))) = yes;
  sf = msf;
  if (sf*dc(c) < 5, sf = 5/dc(c));
  loop(i$(ord(i)>1 and ord(i)<=n+1),
    net(c,i,j)$(ord(j)>max(ord(i),ord(i)+(1-sf)*dc(c)) and
                ord(j)<=min(n+1,ord(i)+(1+sf)*dc(c))) = yes;
  )
);

* The arcs back to the source
net(c,s,'0') = yes;

dev(net(c,i,j))$(ord(i)>1 and ord(j)>1) = abs(ord(j)-ord(i) - dc(c));

* option dev:5:0:1;display dev;

* Model
Variable f(c,i,j) flow variable
         p(c,i)   placement variable
         obj      objective variable

Binary variable p;
Positive variable f;

Equation bal(c,i)     flow balance equation
         balinit(c)   flow balance for node 0
         defopen(c,i) close slots for different colors
         defsump(c)   number of open slots
         covslot(i)   slot cover requirement
         defobj       objective function;

bal(c,s)$nc(c)..
         sum(net(c,j,s), f(net)) - sum(net(c,s,j), f(net)) =e= 0;

balinit(c)$nc(c)..
         sum(net(c,'0',j), f(net)) =e= 1;

defopen(c,s)$nc(c)..
         sum(net(c,s,j), f(net)) =e= p(c,s);

defsump(c)$nc(c)..
         sum(s, p(c,s)) =e= nc(c);

covslot(s)..
         sum(c$nc(c), p(c,s)) =e= 1;

defobj.. obj =e= sum(net, dev(net)*f(net));

model commercial /all/;

option optcr=0, reslim=300;
Set sol Solution reporting set;
Parameter solrep;

* Try priorities
commercial.prioropt = 1;
p.prior(c,s) = nc(c);

* Solve the preplaced model first
p.lo(c,s)$preplace('%curid%',s,c) = 1;
solve commercial min obj using mip;

sol('%curid%','PRE',s,c) = p.l(c,s);
solrep('PRE','obj') = obj.l;
solrep('PRE','bnd') = commercial.objest;
solrep('PRE','res') = commercial.resusd;

* Release the preplaced balls
p.lo(c,s)$preplace('%curid%',s,c) = 0;

* Lets start with the pre fixed solution if using CPLEX
* (uncomment next three lines)
*file fcpx /cplex.opt/;
*putclose fcpx 'mipstart 1';
*commercial.optfile = 1;

solve commercial min obj using mip;

sol('%curid%','FREE',s,c) = p.l(c,s);
solrep('FREE','obj') = obj.l;
solrep('FREE','bnd') = commercial.objest;
solrep('FREE','res') = commercial.resusd;


display sol, solrep;

* If you want a report with times, objs, and bnd useful for batchruns,
* uncomment the $exit
$exit

file fsol / allsol.txt /;
* Append to solution file, but not for the first one
fsol.ap$(not sameas('%curid%','1')) = 1;

put fsol 'Solution for Instance %curid%: obj_pre: ' solrep('PRE','obj'):12:5
                                    '   obj_free: ' solrep('FREE','obj'):12:5 /
         'Slot pre free' /;
loop(s(sp),
   put (ord(sp)-1):3:0 '   '
   loop(c$sol('%curid%','PRE' ,s,c), put c.tl:1 '   ');
   loop(c$sol('%curid%','FREE',s,c), put c.tl:1 /);
);

file ftim / alltim.txt /;
* Append to time file, but not for the first one
ftim.ap$(not sameas('%curid%','1')) = 1;
* put a header for the first one
put$sameas('%curid%','1') ftim
  '               Preplace balls                     no preplaced balls'     /
  'id       obj         bnd         res         obj         bnd         res'/;
put ftim (%curid%):2:0 solrep('PRE','obj'):12:5
                       solrep('PRE','bnd'):12:5
                       solrep('PRE','res'):12:5
                       solrep('FREE','obj'):12:5
                       solrep('FREE','bnd'):12:5
                       solrep('FREE','res'):12:5 /;
