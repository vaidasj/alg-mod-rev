option MIP=convert;
option MIP=convert;
option MIP=convert;
$title TSP solution with subtour elimination (TSP42,SEQ=213)
$ontext


 This model solves a Symmetric TSP using a simple algorithm
 that adds cuts to exclude subtours found in the previous
 solution. The data set is dantzig42 from TSPLIB.


Dantzig, G B, Fulkerson, and Johnson, Solution of a Large-Scale
Traveling-Salesman Problem. Operations Research 2 (1954), 393-410.

 optimal solution: 699

$offtext
$eolcom //

option optcr=0;
option limrow=0;
option limcol=0;
option solprint=off;

set i cities /

  c1  'Manchester, N.H.'
  c2  'Montpelier, Vt.'
  c3  'Detroit, Mich.'
  c4  'Cleveland, Ohio'
  c5  'Charleston, W.Va.'
  c6  'Louisville, Ky.'
  c7  'Indianapolis, Ind.'
  c8  'Chicago, Ill.'
  c9  'Milwaukee, Wis.'
  c10 'Minneapolis, Minn.'
  c11 'Pierre, S.D.'
  c12 'Bismarck, N.D.'
  c13 'Helena, Mont.'
  c14 'Seattle, Wash.'
  c15 'Portland, Ore.'
  c16 'Boise, Idaho'
  c17 'Salt Lake City, Utah'
  c18 'Carson City, Nevada'
  c19 'Los Angeles, Calif.'
  c20 'Phoenix, Ariz.'
  c21 'Santa Fe, N.M.'
  c22 'Denver, Colo.'
  c23 'Cheyenne, Wyo.'
  c24 'Omaha, Neb.'
  c25 'Des Moines, Iowa'
  c26 'Kansas City, Mo.'
  c27 'Topeka, Kans.'
  c28 'Oklahoma City, Okla.'
  c29 'Dallas, Tex.'
  c30 'Little Rock, Ark.'
  c31 'Memphis, Tenn.'
  c32 'Jackson, Miss.'
  c33 'New Orleans, La.'
  c34 'Birmingham, Ala.'
  c35 'Atlanta, Ga.'
  c36 'Jacksonville, Fla.'
  c37 'Columbia, S.C.'
  c38 'Raleigh, N.C.'
  c39 'Richmond, Va.'
  c40 'Washington, D.C.'
  c41 'Boston, Mass.'
  c42 'Portland, Me.'

/;

alias (i,j,k);

table d(i,j)


     c1  c2  c3  c4  c5  c6  c7  c8  c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21
c2    8
c3   39  45
c4   37  47   9
c5   50  49  21  15
c6   61  62  21  20  17
c7   58  60  16  17  18   6
c8   59  60  15  20  26  17  10
c9   62  66  20  25  31  22  15   5
c10  81  81  40  44  50  41  35  24  20
c11 103 107  62  67  72  63  57  46  41  23
c12 108 117  66  71  77  68  61  51  46  26  11
c13 145 149 104 108 114 106  99  88  84  63  49  40
c14 181 185 140 144 150 142 135 124 120  99  85  76  35
c15 187 191 146 150 156 142 137 130 125 105  90  81  41  10
c16 161 170 120 124 130 115 110 104 105  90  72  62  34  31  27
c17 142 146 101 104 111  97  91  85  86  75  51  59  29  53  48  21
c18 174 178 133 138 143 129 123 117 118 107  83  84  54  46  35  26  31
c19 185 186 142 143 140 130 126 124 128 118  93 101  72  69  58  58  43  26
c20 164 165 120 123 124 106 106 105 110 104  86  97  71  93  82  62  42  45  22
c21 137 139  94  96  94  80  78  77  84  77  56  64  65  90  87  58  36  68  50  30
c22 117 122  77  80  83  68  62  60  61  50  34  42  49  82  77  60  30  62  70  49  21
c23 114 118  73  78  84  69  63  57  59  48  28  36  43  77  72  45  27  59  69  55  27
c24  85  89  44  48  53  41  34  28  29  22  23  35  69 105 102  74  56  88  99  81  54
c25  77  80  36  40  46  34  27  19  21  14  29  40  77 114 111  84  64  96 107  87  60
c26  87  89  44  46  46  30  28  29  32  27  36  47  78 116 112  84  66  98  95  75  47
c27  91  93  48  50  48  34  32  33  36  30  34  45  77 115 110  83  63  97  91  72  44
c28 105 106  62  63  64  47  46  49  54  48  46  59  85 119 115  88  66  98  79  59  31
c29 111 113  69  71  66  51  53  56  61  57  59  71  96 130 126  98  75  98  85  62  38
c30  91  92  50  51  46  30  34  38  43  49  60  71 103 141 136 109  90 115  99  81  53
c31  83  85  42  43  38  22  26  32  36  51  63  75 106 142 140 112  93 126 108  88  60
c32  89  91  55  55  50  34  39  44  49  63  76  87 120 155 150 123 100 123 109  86  62
c33  95  97  64  63  56  42  49  56  60  75  86  97 126 160 155 128 104 128 113  90  67
c34  74  81  44  43  35  23  30  39  44  62  78  89 121 159 155 127 108 136 124 101  75
c35  67  69  42  41  31  25  32  41  46  64  83  90 130 164 160 133 114 146 134 111  85
c36  74  76  61  60  42  44  51  60  66  83 102 110 147 185 179 155 133 159 146 122  98
c37  57  59  46  41  25  30  36  47  52  71  93  98 136 172 172 148 126 158 147 124 121
c38  45  46  41  34  20  34  38  48  53  73  96  99 137 176 178 151 131 163 159 135 108
c39  35  37  35  26  18  34  36  46  51  70  93  97 134 171 176 151 129 161 163 139 118
c40  29  33  30  21  18  35  33  40  45  65  87  91 117 166 171 144 125 157 156 139 113
c41   3  11  41  37  47  57  55  58  63  83 105 109 147 186 188 164 144 176 182 161 134
c42   5  12  55  41  53  64  61  61  66  84 111 113 150 186 192 166 147 180 188 167 140

+
    c22 c23 c24 c25 c26 c27 c28 c29 c30 c31 c32 c33 c34 c35 c36 c37 c38 c39 c40 c41
c23   5
c24  32  29
c25  40  37   8
c26  36  39  12  11
c27  32  36   9  15   3
c28  36  42  28  33  21  20
c29  47  53  39  42  29  30  12
c30  61  62  36  34  24  28  20  20
c31  64  66  39  36  27  31  28  28   8
c32  71  78  52  49  39  44  35  24  15  12
c33  76  82  62  59  49  53  40  29  25  23  11
c34  79  81  54  50  42  46  43  39  23  14  14  21
c35  84  86  59  52  47  51  53  49  32  24  24  30   9
c36 105 107  79  71  66  70  70  60  48  40  36  33  25  18
c37  97  99  71  65  59  63  67  62  46  38  37  43  23  13  17
c38 102 103  73  67  64  69  75  72  54  46  49  54  34  24  29  12
c39 102 101  71  65  65  70  84  78  58  50  56  62  41  32  38  21   9
c40  95  97  67  60  62  67  79  82  62  53  59  66  45  38  45  27  15   6
c41 119 116  86  78  84  88 101 108  88  80  86  92  71  64  71  54  41  32  25
c42 124 119  90  87  90  94 107 114  77  86  92  98  80  74  77  60  48  38  32   6

;


set lt(i,j) lower triangular;
lt(i,j)$(ord(i)>ord(j)) = yes;

free variable z;
binary variable x(i,j);
equations twomatch(i), obj;


obj.. z =e= sum(lt(i,j), d(i,j)*x(i,j));
twomatch(k).. sum(lt(i,k), x(i,k)) + sum(lt(k,j),x(k,j)) =e= 2;

model match /obj,twomatch/;

solve match minimizing z using mip;

*display x.l;



*
* dynamic number of cuts
*

set cycle /cycle1*cycle50/;
set t tours  /t1*t100/;
set cutindex(cycle,t)              dynamic set for addressing cuts;
equation cut(cycle,t)              actual cuts;
parameter cutcoeff(cycle,t,i,j)    coefficients in cuts;
parameter cutlength(cycle,t)       rhs for cuts;

cut(cutindex).. sum((i,j), cutcoeff(cutindex,i,j)*x(i,j)) =l= cutlength(cutindex)-1;

model tsp /obj, twomatch, cut/;


*
* used to find and display tours
*
set s(i,j) current solution;
set tour(t,i,j) subtours;
set tt(t) current subtour;
set first(i,j) 'first (i,j) in S';
set reach(i,j) "(i,j)'s connected to tour(tt)";

scalar done /0/;
scalar continue;

parameter results;  // for reporting
results('relaxed','obj')=z.l;
results('relaxed','total equs') = match.numequ;

parameter solutions(*,i,j);
solutions('relaxed',i,j) = x.l(i,j);


loop(cycle,

*
* initialization
*
   tour(t,i,j) = no;
   s(i,j) = no;
   first(i,j) = no;
   reach(i,j) = no;
   done = 0;

   tt(t) = no;
   tt(t)$(ord(t)=1) = 1;         // initialize tt(1) = yes

   s(i,j)=yes$(x.l(i,j) > 0.5);  // initialize to current solution

   while(not done,

*
* pick any (i,j) from remaining solutions
*

      first(i,j)=no;
      loop((i,j)$(card(first)=0),
         first(i,j) = s(i,j);
      );
*   display first;

*
* this is he beginning of a new subtour
*
      tour(tt,first) = yes;
      s(first) = no;

      continue = 1;
      while(continue,
*
* find (i,j)'s connected to tour(tt)
* note that the loop over tt is just syntax: tt contains one element
*
         reach(i,j) = no;
         loop((tt,k),
            reach(s(i,j))$tour(tt,k,j) = yes;
            reach(s(i,j))$tour(tt,i,k) = yes;
            reach(s(i,j))$tour(tt,k,i) = yes;
            reach(s(i,j))$tour(tt,j,k) = yes;
         );
*       display tour,s,reach;


*
* if reach = empty then we can stop the while loop
*
         if (card(reach)=0, continue = 0);

*
* add them to the current subtour
* note that the loop over tt is just syntax: tt contains one element
*
         loop(tt,
            tour(tt,reach) = yes;
         );
         s(reach) = no;
      );

*   display tour;

*
* if no remaining solutions, we are done
*
      if (card(s)=0, done=1);

*
* new subtour
*
      tt(t) = tt(t-1);   // t := t + 1

   );


   cutindex(cycle,t)$(sum(tour(t,i,j),1)>0.5) = yes;
*
* check
*
   option tour:0:1:1;
*  display tour;
   loop(cutindex(cycle,t),
      abort$(sum(tour(t,i,j),1) < 2.5) "subtour with 1 or 2 points";
   );

   if (sum(cutindex(cycle,t),1) > 1.5,

      cutcoeff(cycle,tour(t,i,j))$cutindex(cycle,t) = 1;
      cutlength(cutindex(cycle,t)) = sum(tour(t,i,j),1);

      option cutindex:0:1:1;
      option cutcoeff:0:1:1;
*     display cutindex,cutcoeff,cutlength;

      solve tsp minimizing z using mip;
*     display x.l;

      results(cycle,'obj') = z.l;
      results(cycle,'cuts added') = sum(cutindex(cycle,t), 1);
      results(cycle,'total equs') = tsp.numequ;
*     display results;

      solutions(cycle,i,j) = x.l(i,j);

   else

      display "Optimal solution found!";
      done = 1;

      solutions('optimal',i,j) = x.l(i,j);

   );
);

option x:0:0:1; display x.l;

display results;

