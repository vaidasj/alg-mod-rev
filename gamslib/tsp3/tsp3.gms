option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Traveling Salesman Problem - Three (TSP3,SEQ=179)
$eolcom //
$Ontext
 This is the third problem in a series of traveling salesman
 problems. The formulation uses a subtour elimination based
 on logic to find all subtours first, and then add appropriate
 eliminations constraints.


Kalvelagen, E, Model Building with GAMS. forthcoming

de Wetering, A V, private communication.

Lawler, E L, Lenstra, J K, Kan, A H G R, and Shmoys, D B, Eds, The
Traveling Salesman Problem, A Guided Tour of Combinatorial
Optimization. Wiley, 1985.

 Additional information can be found at:

 http://www.gams.com/modlib/adddocs/tsp3doc.htm

$Offtext

$include br17.inc

* first select a small subset
set i(ii) / i1*i6 /;

* This code is tricky and the generation of all
* subsets is explained by example below:
*
* First we take one element
*  n1  yes
*  n2  no
* Then for i=i2 we have
*  n1  yes   no
*  n2  no    no
*  n3  yes   yes  copy of n1 plus adding i2=yes
*  n4  no    tes  copy of n2 plus adding i2=yes
* Then for i=i3 we have
*  n1  yes   no   no
*  n2  no    no   no
*  n3  yes   yes  no
*  n4  no    yes  no
*  n5  yes   no   yes
*  n6  no    no   yes
*  n7  yes   yes  yes
*  n8  no    yes  yes

sets n subtour id  / n1*n500/  //  maximum of 1000 subsets
     nn(n), nnn(n), curn(n)
     si(n,i)     subset
     sicomp(n,i) subsets complements;

* initialize tree
si('n1','i1') = yes;
si('n2','i1') = no;
curn('n2') = yes;
nnn('n1')  = yes;
nnn('n2')  = yes;

scalar goon;
loop(i$(ord(i)>1),
   // make a copy of all previously generated sets
   // one copy is to include i, the other one not.
   nn(n) = nnn(n);
   loop(nn,
      curn(n) = curn(n-1);
      nnn(curn) = yes;
      si(curn, j) = si(nn,j);  // copy old one
      si(curn, i) = yes;
   );
);

sicomp(nnn,i) = not si(nnn,i);
display si, sicomp;

* exclude empty rows like
*      i1   i2   i3
*  n2  no   no   no
* and "full" rows like:
*      i1   i2   i3
*  n7  yes  yes  yes
*
set n1(n) simplified set of subtours;

n1(nnn)=yes;
n1(nnn)$(sum(i$si(nnn,i),1) = 0) = no;
n1(nnn)$(sum(i$si(nnn,i),1) = card(i)) = no;


equations  se1(n) subtour elimination 1
           se2(n) subtour elimination 2;


se1(n1).. sum(i$si(n1,i),sum(j$si(n1,j), x(i,j))) =L= sum(si(n1,i),1) - 1;
se2(n1).. sum(si(n1,i),sum(sicomp(n1,j), x(i,j))) =G= 1;

model subt1 /objective, rowsum, colsum, se1/;
model subt2 /objective, rowsum, colsum, se2/;

solve subt1 using mip minimizing z;
display x.l

solve subt2 using mip minimizing z
display x.l;

