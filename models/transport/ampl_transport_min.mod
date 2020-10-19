set I;
set J;
param a{i in I};
param b{j in J};
param d{i in I, j in J};
param f;
param c{i in I, j in J} := f * d[i,j] / 1000;
var x{i in I, j in J} >= 0;
minimize cost: sum{i in I, j in J} c[i,j] * x[i,j];
s.t. supply{i in I}: sum{j in J} x[i,j] <= a[i];
s.t. demand{j in J}: sum{i in I} x[i,j] >= b[j];
data;
set I := Seattle San-Diego;
set J := New-York Chicago Topeka;
param a := Seattle     350
           San-Diego   600;
param b := New-York    325
           Chicago     300
           Topeka      275;
param d :              New-York   Chicago   Topeka :=
           Seattle     2.5        1.7       1.8
           San-Diego   2.5        1.8       1.4  ;
param f := 90;  
end;