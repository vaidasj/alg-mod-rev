option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Minimizing Total Average Cycle Stock (STOCKCC,SEQ=225)
$ontext
Minimizing Total Average Cycle Stock


Silver, E A, and Moon, I, A Fast Heuristic for Minimizing Total
Average Cycle Stock Subject to Practical Constraints. Journal
of the Operational Research Society 50 (1999), 789-796.

$offtext


set nn items  /n1*n48/
    mm reorder intervals /i1*i9/;

Scalar N max total number of replenishments /100/;

Parameter Y(mm) possible number of orders /
     i1   3, i2   6, i3   9, i4  12, i5  18,
     i6  36, i7  52, i8  78, i9 156 /;

Parameter Dv (nn) demand rate times unit cost of item nn /
     n1      20.04,  n2      21.72,  n3      37.92,  n4      54.12,
     n5      61.80,  n6      81.24,  n7      94.20,  n8     119.40,
     n9     171.60, n10     208.80, n11     415.27, n12     470.23,
    n13    1212   , n14    1393.2 , n15    1496.4 , n16    1600   ,
    n17    1702.4 , n18    1714.5 , n19    1870.5 , n20    1977.8 ,
    n21    2647.12, n22    3143.82, n23    4173   , n24    4347.78,
    n25    4917   , n26    5048.3 , n27    5397.2 , n28    6692.4 ,
    n29    6837.6 , n30    8003.1 , n31    8449.5 , n32    9152   ,
    n33   13236.3 , n34   13970   , n35   15327.6 , n36   16368   ,
    n37   19765   , n38   20470.3 , n39   23182.2 , n40   25026   ,
    n41   31675.6 , n42   56734.2 , n43   69040.4 , n44   75192   ,
    n45   97066.5 , n46   99803.2 , n47  105984   , n48  106465   /;

Variable x(nn)    number of orders per unit time
         z(nn,mm) discrete orders choices
         obj objective variable;
Binary variable z;

Equations  defobj
           capacity
           defx(nn)
           defsos(nn);

defobj.. obj =e= sum(nn, 1.5*Dv(nn)/x(nn));

capacity..   sum(nn, x(nn)) =l= 3*N;

defx(nn)..   sum(mm, z(nn,mm)*Y(mm)) =e= x(nn);

defsos(nn).. sum(mm, z(nn,mm)) =e= 1;

x.lo(nn) = Y('i1');
x.up(nn) = Y('i9');

model stock /all/;
*solve stock minimizing obj using minlp;

$ontext
This is the alternative formulation that becomes an easy to solve MIP
model.

First we note that defsos means that exactly one nn index value is
matched with each mm index.

Second, defx says that x(nn) must be equal to Y(mm) corresponding
to this match.

Third, the objective term 1.5*Dv(nn)/x(nn) is therefore equal to
1.5*Dev(nn)/Y(mm) for the selected (nn,mm) match. Since the match
is defined by z, the objective can be redefined using z with the
coefficient 1.5*Dv(nn)/Y(mm), and x is no longer needed.
$offtext

Parameter CostZ(nn,mm) Cost for item nn with order schedule mm;
CostZ(nn,mm) = 1.5*Dv(nn) / Y(mm);

Equation defobjmip;
defobjmip.. obj =e= sum((nn,mm), Costz(nn,mm)*z(nn,mm));

model stockmip /defobjmip, capacity, defx, defsos/;

solve stockmip miniminzing obj using mip;
