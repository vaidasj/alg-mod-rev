option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Bid Evaluation with Piecewise Linear Functions (BIDPWL,SEQ=385)
$Ontext
A company obtains a number of bids from vendors for the supply
of a specified number of units of an item. Most of the submitted
bids have prices that depend on the volume of business. A formulation
with 0/1 variables is shown in the original gamslib model BID, one with
SOS2 sets in gamslib model bidsos. Here we use segments with a point, length,
and slope to define a model.


Bracken, J, and McCormick, G P, Chapter 3. In Selected Applications
of Nonlinear Programming. John Wiley and Sons, New York, 1968,
pp. 28-36.

$Offtext
$eolcom //

sets   v   vendors        / a, b, c, d, e /
       cl  column labels  / setup, price, q-min, q-max ,cost /
       s   segements      / 0*5 /
       sl  segment labels / x, y coordinates, l length, g slope /
scalar req requirements   / 239600.48 /;

table bid(v,s,cl) bid data
               setup      price     q-min    q-max
a.1          3855.84     61.150              33000
b.1        125804.84     68.099     22000    70000
b.2                      66.049     70000   100000
b.3                      64.099    100000   150000
b.4                      62.119    150000   160000
c.1         13456.00     62.190             165600
d.1          6583.98     72.488              12000
e.1                      70.150              42000
e.2                      68.150     42000    77000;

parameter BidPwl(v,s,sl) Bid segment definition;
bidpwl(v,  s,'x') = bid(v,s,'q-min');
bidpwl(v,'1','y') = bid(v,'1','setup') + bid(v,'1','q-min')*bid(v,'1','price');
bidpwl(v,  s,'l') = bid(v,s,'q-max') - bid(v,s,'q-min');
bidpwl(v,  s,'g') = bid(v,s,'price');
bidpwl(v,'0','g') = 1; // no deal

* This following batinclude has a parameter p as first argument that
* defines segments of a piecewise linear function. A start point (x,y) of
* a segment plus length and slope need to be provided provides by this
* parameter. The actual labels for are also provided on the batinclude
* call (arguments 3-6) together with the set of segments (arg 2) and an
* optional index set (idxp) to define an indexed parameter to define multiple
* piecewise linear functions (arg 7). The optional arguments 8 and 9 allow
* the use the same function f with different endogenous arguments (idxm).
*
* The batinclude provides a subset of active segments p_Seg(s), i.e. the
* parameter must have data before the batinclude call. The batinclude also
* provide a couple of macros:
* 1) p_Func(x[,idxp])   evaluates the function at point x
* 2) p_x([idxp][,idxm]) expression to assign x(idxm) value
* 3) p_y([idxp][,idxm]) expression to assign y(idxm) value
*
* The header of pwlfunc.inc describes its use in more detail

$batinclude pwlfunc.inc BidPwl s x y l g v

* Fill missing y coordinate for s2 and further
loop(BidPwl_Seg(v,s)$(ord(s)>2),
  BidPwl(v,s,'y') = BidPwl(v,s-1,'y') +
                    BidPwl(v,s-1,'g')*BidPwl(v,s-1,'l'));

variable   c          total cost
           x(v)       vendor units
           y(v)       vendor units
equations  defx(v)    define vendor units
           demand     demand constraint
           defy(v)    define cost of vendor units
           costdef    cost definition;

defx(v).. x(v) =e= BidPwl_x(v);
demand..  req  =e= sum(v, x(v));
defy(v).. y(v) =e= BidPwl_y(v);
costdef.. c    =e= sum(v, y(v));

model bideval / all /;

option optcr=0.0; solve bideval minimizing c using mip;

parameter rep;
rep(v,'xmodel') = x.l(v);
rep(v,'ymodel') = y.l(v);
rep(v,'yexec')  = BidPwl_Func(x.l(v),v);
rep(v,'diff')   = rep(v,'ymodel') - rep(v,'yexec');
abort$(sum(v, abs(rep(v,'diff')))>(1e-6)*card(v))
       'model and execution time disagree', rep;
display rep;
