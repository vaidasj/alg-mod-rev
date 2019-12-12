option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Configuring text layout in table cells to minimize table height (TABLELAYOUT,SEQ=402)
$Ontext
The Automated Table Layout problem is a document processing issue.

Given a table with a number of rows and columns, into each cell you have to place some text.
For each cell, a number of configurations on how to break the text into several lines is given,
therefore it generates various rectangles of different width and height.
Thus, each configuration yields different requirements on the height and width of the cell,
and therefor on the height of the row and the width of the column that the cell belongs to.
The column width needs to be the same for all cells in that column, thus it is given by the
maximum width of the chosen configurations over all cells in that column. The same for the rows.
Given the width of the page, the objective is to find a layout minimizing the total height of the table.

For more details, see
  Mihai Bilauca and Patrick Healy (2010).
  A new model for automated table layout.
  Proceedings of the 10th ACM symposium on Document engineering, pp 169-176.
  http://dx.doi.org/10.1145/1860559.1860594

  Mihai Bilauca (2012).
  Automatic table layout and formatting.
  PhD Thesis, University of Limerick
  http://ulir.ul.ie/handle/10344/2834


Below, we provide different formulations of the problem, names "cols", "rows", and "cp".
The --formulation option can be used to select any of them. Default is "rows".
- In the "cols" formulation, we let the solver pick a width for each column out of the possible widths
  that make sense for the column, i.e., the widths of all configurations in all cells of that column.
  Thus, there is a number of binary variables for each column, exactly one of them needs to be 1,
  to decide for the column width.
- The "rows" formulation is similar, but picks a height for each row instead.
  By looking at the data, one recognizes that there are only about 6 different heights used by all configurations.
  So optimizing the task of picking a height for each row results in much less binary variables
  than picking a width for each column. (there are always as many columns as rows)
  Thus, this formulation is expected to be better than the "cols" one.
- The "cp" formulation is a very straightforward one, where we have integer variables to decide for the
  width of each column and the height of each row, and a constraint that says that for each cell, there
  need to be at least one configuration that fits into the chosen column width and row height.
  This is formulated by equation 'cellconfig' below, which can only be handled by few solvers in GAMS.
  The model type for this model is MINLP.

Finally, for the "cols" and "rows" formulation, we have two variants. In the MINLP variant, which can
be enabled via option --useMINLP 1, we use an smax to define an intermediate variable, while in the
default MIP variant this smax is linearized in the usual way (no additional variables but more equations needed).


Further instances are available at http://www.localsolver.com/exampletour.html?file=table_layout.zip
The provided tablelayout5x5.inc data file corresponds to their free_trial.in file.
$offtext

$if not set instance $set instance tablelayout5x5.inc
$if not exist "%instance%" $abort File of instance does not exist

$if not set formulation $set formulation rows

option optcr=0;
option limcol=0;
option limrow=0;

* ===== Data Preparation =====

$onechoV > "%gams.scrdir%tl.awk"
BEGIN { nr=1;
     printf("alias (*,rX,cX,wX,hX); Set rcwh(rX,cX,wX,hX) /\n$ondelim\n");
   }
!/^#/ {
   if (nr==1) {
     pw = $1;
   }
   if (nr>3) {
     printf("%d,%d,%d,%d\n",$1,$2,$3,$4);
   }
   nr++;
}
END {
   printf("$offdelim\n/;\nScalar pw /%d/;\n", pw)
}
$offecho

$set fn %gams.scrdir%tlinst.%gams.scrext%
$call awk -f "%gams.scrdir%tl.awk" %instance% | uniq > "%fn%"
$if errorlevel 1 $abort problems with awk call

$onecho > "%gams.scrdir%dataprep.gms"
set dummy for good uel sort order / 0*10000 /;
$offlisting
$include "%fn%"
$onlisting
set r(rX), c(cX), w(wX), h(hX);
c(cX) = sum(rcwh(rX,cX,wX,hX), 1);
r(rX) = sum(rcwh(rX,cX,wX,hX), 1);
w(wX) = sum(rcwh(rX,cX,wX,hX), 1);
h(hX) = sum(rcwh(rX,cX,wX,hX), 1);
Parameter nw(wX), nh(hX);
nw(w) = w.val;
nh(h) = h.val;
execute_unload '%gams.scrdir%inst',r,c,w,h,rcwh,pw,nw,nh;
$offecho
$call gams "%gams.scrdir%dataprep" lo=%gams.lo% o="%gams.scrdir%dataprep.lst"
$if errorlevel 1 $abort problems with gams dataprep

Set  r              rows
     c              columns
     w              widths
     h              heights
     rcwh(r,c,w,h)  configuration data (width and heights in a cell)
Parameter
     pw    page width
     nw(w) numerical width
     nh(h) numercial height
;
$gdxin %gams.scrdir%inst
$load r c w h rcwh pw nw nh
$gdxin

* ===== Goto Formulation =====

$if %formulation% == cols $goto formcols
$if %formulation% == rows $goto formrows
$if %formulation% == cp $goto formcp
$abort Unknown Formulation "%formulation%", proper values are "cols", "rows", and "cp"


* ===== Formulation where a Column Width is chosen for each column =====
$label formcols

Set  cw(c,w)              widths in a column;
cw(c,w) = sum(rcwh(r,c,w,h), 1);

Alias (w,ww);

* if cell (r,c) takes width w, look for the smallest possible height that (r,c) would need
* i.e., among all configurations with width <= w, pick the one with minimal height
Parameter minRCWh(r,c,w) 'minimum possible height in cell (r,c) when column c takes width w';
minRCWh(r,cw(c,w)) = smin(rcwh(r,c,ww,h)$(nw(ww)<=nw(w)), nh(h));

* Remove column width that result in infeasible layout
* I.e., if assigning a certain width to a column would mean that for certain cells in this
* column there is no configuration that fits into this width (represented by an INF for the
* above smin), then we can forbid this column to width assignment.
cw(c,w)$sum(r$(minRCWh(r,c,w)=INF),1) = no;

* Check that problem is feasible
Parameter
     minCw(c)             minimum possible width in column;
minCw(c) = smin(cw(c,w), nw(w));
abort$(sum(c, minCw(c)) > pw) 'page width too small';

Variables
    bCW(c,w)    column c takes width w
    xRCh(r,c)   height of cell
    xRh(r)      height of row
    toth        total page height
Binary variables bCW;
Equation
    defbCW(c)      each column takes exactly one width
    defxRCh(r,c)   define cell height
    defxRhMINLP(r) define row height
    defxRhMIP(r,c) define row height
    defpw          limit layout by page width
    deftoth        objective total height;

defbCW(c)..      sum(cw(c,w), bCW(c,w)) =e= 1;

* the height of cell (r,c) in case that column c chooses width w has been
* precomputed above to be minRCWh(r,c,w), so here we just have to pick the right one
defxRCh(r,c)..   xRCh(r,c) =e= sum(cw(c,w), bCW(c,w)*minRCWh(r,c,w));

* the height of a row r is given by the maximum of the heights of the cells in row r
defxRhMINLP(r).. xRh(r) =e= smax(c, xRCh(r,c));
defxRhMIP(r,c).. xRh(r) =g= xRCh(r,c);

defpw..          sum(cw(c,w), bCW(c,w)*nw(w)) =l= pw;

* the objective is to minimize the sum of the heights of all rows
deftoth..        toth =e= sum(r, xRh(r));

model layoutMINLP / all - defxRhMIP   /
      layoutMIP   / all - defxRhMINLP /;

option optcr=0;

$if     set useMINLP  solve layoutMINLP using MINLP min toth;
$if not set useMINLP  solve layoutMIP   using MIP   min toth;

$goto cleanup


* ===== Formulation where a Row Height is chosen for each row =====
$label formrows

Set  rh(r,h)              heights in a row;
rh(r,h) = sum(rcwh(r,c,w,h), 1);

Alias (h,hh);

* if cell (r,c) takes height h, look for the smallest possible width that (r,c) would need
* i.e., among all configurations with height <= h, pick the one with minimal width
Parameter minRCHw(r,c,h) 'minimum possible width in cell (r,c) when row r takes height h';
minRCHw(r,c,h)$rh(r,h) = smin(rcwh(r,c,w,hh)$(nh(hh)<=nh(h)), nw(w));

* Remove row height that result in infeasible layout
* I.e., if assigning a certain height to a row would mean that for certain cells in this
* row there is no configuration that fits into this height (represented by an INF for the
* above smin), then we can forbid this row to height assignment.
rh(r,h)$sum(c$(minRCHw(r,c,h)=INF),1) = no;

Variables
    bRH(r,h)    row r takes height h
    xRCw(r,c)   width of cell
    xCw(c)      width of column
    toth        total page height
Binary variables bRH;
Equation
    defbRH(r)      each row takes exactly one height
    defxRCw(r,c)   define cell width
    defxCwMINLP(c) define column width
    defxCwMIP(r,c) define column width
    defpw          limit layout by page width
    deftoth        objective total height;

defbRH(r)..      sum(rh(r,h), bRH(r,h)) =e= 1;

* the width of cell (r,c) in case that row r chooses height h has been
* precomputed above to be minRCHw(r,c,h), so here we just have to pick the right one
defxRCw(r,c)..   xRCw(r,c) =e= sum(rh(r,h), bRH(r,h)*minRCHw(r,c,h));

* the width of a column c is given by the maximum of the widths of the cells in column c
defxCwMINLP(c).. xCw(c) =e= smax(r, xRCw(r,c));
defxCwMIP(r,c).. xCw(c) =g= xRCw(r,c);

defpw..          sum(c, xCW(c)) =l= pw;

* the objective is to minimize the sum of the heights of all rows
deftoth..        toth =e= sum(rh(r,h), bRH(r,h) * nh(h));

model layoutMINLP / all - defxCwMIP   /
      layoutMIP   / all - defxCwMINLP /;

option optcr=0;

$if     set useMINLP  solve layoutMINLP using MINLP min toth;
$if not set useMINLP  solve layoutMIP   using MIP   min toth;

$goto cleanup



* ===== CP Formulation where a Column Width's and Row Height's are chosen =====
$label formcp

Integer Variables
    iCW(c)      width of column c
    iRH(r)      height of row r
;    

* minimal width of column c is given by taking the minimal width of
* all configurations in a row, and maximize this over all rows
iCW.lo(c) = smax(r, smin(rcwh(r,c,w,h), nw(w)));
iCW.up(c) = pw;

* minimal height of row r is given by taking the minimal height of
* all configurations in a column, and maximize this over all columns
iRH.lo(r) = smax(c, smin(rcwh(r,c,w,h), nh(h)));

* maximal height of row r is given by taking the maximal height of
* all configurations of all columns in the row
iRH.up(r) = smax(rcwh(r,c,w,h), nh(h));

Variables
    tableH      table height
;

Equations
    deftableH    define table height
    maxtableW    limit on table width
    cellconfig(c,r)  at least one cell config need to fit into selected width and height
;

* table width now allowed to exceed page width
maxtableW..
    sum(c, iCW(c)) =l= pw;

* table height is the sum of the row heights    
deftableH..
    tableH =e= sum(r, iRH(r));

* for each cell, there need to be at least one configuration that fits
* into the chosen column width and row height
cellconfig(c,r)..
    sum(rcwh(r,c,w,h), (nw(w) le iCW(c)) and (nh(h) le iRH(r))) =g= 1;

model layout  / all /;

solve layout using MINLP min tableH;
$goto cleanup


$label cleanup
$call rm -f "%gams.scrdir%inst.gdx" "%gams.scrdir%dataprep.gms" "%gams.scrdir%dataprep.lst" "%gams.scrdir%tl.awk"
