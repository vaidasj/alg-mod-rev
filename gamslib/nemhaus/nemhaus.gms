option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Scheduling to Minimize Interaction Cost  (NEMHAUS,SEQ=194)
$ontext
Activities can be scheduled on different facilities. If two activities
are scheduled on the same facility, an interaction cost occurs. This
has originally be formulated as a 0/1 quadratic programming problem.
In addition, an MIP formulations is explored and the models are solved
for all possible facilities.


Carlson, R C, and Nemhauser, G L, Scheduling to Minimize Interaction Cost.
Operations Research 14 (1966), 52-58.

$offtext
$eolcom // inlinecom { } onnestcom

Sets i     activities
     jj    facilities
     j(jj) dynamic subset of facilities
     alias (i,k)

parameter a(i,k) cost of scheduling activity i and k on same facility;

variables z         total interaction cost
          x(i,jj)   activity i scheduled on facility j
          y(i,jj,k) product of x*x
          xb(i,jj)  0-1 version of x
binary variable xb; positive variables x,y;

equations zdef    objective definition
          sch(i)  schedule all activities
          bzdef   objective definition
          bsch(i) schedule for binary version
          ydef(i,jj,k) definition of product

model one QP formulation  / zdef, sch /
      two MIP formulation / bzdef, bsch, ydef /;

zdef..   z =e= sum((i,j,k), x(i,j)*a(i,k)*x(k,j));

sch(i).. sum(j, x(i,j)) =e= 1;


bzdef..  z =e= sum((i,j,k), a(i,k)*y(i,j,k));

bsch(i).. sum(j, xb(i,j)) =e= 1;

ydef(i,j,k)$a(i,k).. y(i,j,k) =g= xb(i,j) + xb(k,j) - 1;

//{--- original data

sets i j/ act-1*act-5 /
     jj / fac-1*fac-5 /

table a(i,k)  interaction cost

       act-1 act-2 act-3 act-4 act-5
act-1                2     4     3
act-2                6     2     3
act-3    2     6           5     3
act-4    4     2     5           3
act-5    3     3     3     3         ;

{ note the local solution to the NLP in case of
  4 facilities:
  local optimum   interaction cost = 1.5
  (act-1,act-2).fac-1      1.0000
  (act-3,act-5).fac-2      0.5000
  (act-4      ).fac-3      1.0000
  (act-3,act-5).fac-4      0.5000


  global optimum  interaction cost = 0.0
  (act-1,act-2).fac-1      1.0000
  (act-3      ).fac-2      1.0000
  (act-4      ).fac-3      1.0000
  (act-5      ).fac-4      1.0000            }

//}

{--- 20 activities data set
sets i j/ a-01*a-20 /
     jj / f-01*f-20 /

table a(i,k) interaction cost

     a-01 a-02 a-03 a-04 a-05 a-06 a-07 a-08 a-09 a-10 a-11 a-12 a-13 a-14 a-15 a-16 a-17 a-18 a-19 a-20
a-01         8    4                       18    8    3   19    4   17    6    9    7    6   10    5    7
a-02    8                   4    7    1    5   11             10    4   10    2    7    4   13    4    7
a-03    4              3         1    5    9   16         5   15    4              4    9    3    7   14
a-04              3         2    3    4   11    1         9    3    2    9    1    7    5         6    3
a-05         4         2         4         9        17   13    1    1   14    2   12         7    1    4
a-06         7    1    3    4         5             13    1    2    6    2    1   13                   4
a-07         1    5    4         5             10    9   14    4         4    5    8    4    5    5    1
a-08   18    5    9   11    9                        5   13    7         3    6    5   12    4    7    5
a-09    8   11   16    1             10              9    2   10   10    3    7    3    3   11    4    7
a-10    3                  17   13    9    5    9        14    6   14    8    2    1    7    4    1    3
a-11   19         5    9   13    1   14   13    2   14         6   11        11   11         9    5    4
a-12    4   10   15    3    1    2    4    7   10    6    6         6   11    6   10    8    4    6    9
a-13   17    4    4    2    1    6             10   14   11    6             16    7   17         5
a-14    6   10         9   14    2    4    3    3    8        11              5   10   10    3    9    6
a-15    9    2         1    2    1    5    6    7    2   11    6   16    5        12   18   13    8    9
a-16    7    7    4    7   12   13    8    5    3    1   11   10    7   10   12        14    5    5   11
a-17    6    4    9    5              4   12    3    7         8   17   10   18   14              8    2
a-18   10   13    3         7         5    4   11    4    9    4         3   13    5                   6
a-19    5    4    7    6    1         5    7    4    1    5    6    5    9    8    5    8              3
a-20    7    7   14    3    4    4    1    5    7    3    4    9         6    9   11    2    6    3       ;
}

{---  make random data
sets i  / a-01*a-20 /
     jj / f-01*f-20 /  ;

a(i,k) = max(0,uniform(-5 ,10));
a(i,k) = round(a(i,k) + a(k,i));
a(i,i) = 0;  }


a(i,k)$(ord(i) > ord(k)) = 0;  // exploit symmetry

// set some global options
option limcol   = 0         // no activity listing
       limrow   = 0         // no row listing
       reslim   = 10        // set max running time for solver
       optcr    = 0.001     // set mip relative criterion
       solprint = off;      // turn solprint off

parameter objval(jj,*) objective values; scalar more;


// expand facilities until we have no conflicts
j(jj) = no;
more= 1;
loop(jj$more,
   j(jj) = yes;
   solve one us nlp min z;
   objval(jj,'nlp') = z.l;
   more = z.l;
   solve two us mip min z;
   objval(jj,'mip') = z.l;
   more = more or z.l )

display objval;
