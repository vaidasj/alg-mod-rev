$label start
%1(p) = pdata(p,'%1');
$shift
$if not x%1 == x $goto start
