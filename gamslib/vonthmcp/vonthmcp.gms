option MCP=convert;
option MCP=convert;
option MCP=convert;
$title  General Equilibrium Variant of the Vonthunen Model (VONTHMCP,SEQ=136)
$Ontext

General Equilibrium Variant of the von Thunen Model


Rowse, Mackinnon, Samuelson, and von Thunen, General Equilibrium Variant
of the von Thunen Model.

$Offtext




set     r       regions /r1*r12/,
        c       commodities /wheat, rice, corn, barley/,
        h       households /worker, owner, porter/;

scalar          ltot    labor endowment /30/,
                trns    transport endowment /20/;

parameter       d(r)            distance to region r,
                a(r)            area of region r,
                t(c)            transport requirement
                phi(c)          cost function scale parameter
                beta(c)         cost function share parameter,
                alpha(*,h)      demand function share;

d(r) = 5 * (2 * ord(r) - 1);
a(r) = 2 * 3.1415 * d(r);

table  misc(*,*)
                wheat   rice    corn    barley  leisure
phi             1       2       3       4
beta            0.9     0.7     0.5     0.3
t               0.015   0.006   0.004   0.01
worker          0.2     0.3     0.1     0.3     0.1
owner           0.3     0.3     0.2     0.2
porter          0.6     0.2     0.1     0.1;


phi(c)  = misc("phi",c);
beta(c) = misc("beta",c);
t(c)    = misc("t",c);
alpha(c,h) = misc(h,c);
alpha("leisure",h) = misc(h,"leisure");

positive variables
                cst(r,c)        unit cost function
                y(r,c)          output level
                ip(r)           intervention purchase
                pk(r)           rental rate
                wp              porter wage
                wl              worker wage
                p(c)            market price;

equation        def_cst(r,c)
                prf_y(r,c)
                pkbnd(r)
                mkt_k(r)
                mkt_t
                mkt_l
                mkt_g(c);

def_cst(r,c)..  phi(c) * cst(r,c) =g=

                (wl/beta(c))**beta(c) * (pk(r)/(1-beta(c)))**(1-beta(c));

prf_y(r,c)..    cst(r,c) + t(c) * d(r) * wp =g= p(c);

pkbnd(r)..      pk(r) =g= 0.0001 * wl;

mkt_k(r)..      a(r) - ip(r) =g=

                sum(c, y(r,c) * (1-beta(c)) * cst(r,c)) / pk(r) ;

mkt_t..         trns =g= sum((r,c), t(c) * d(r) * y(r,c));

mkt_l..         wl * ltot  =g= sum((r,c), y(r,c) * beta(c) * cst(r,c))
                                + alpha("leisure","porter") * ltot;

mkt_g(c)..      p(c) * sum(r, y(r,c)) =g=
                   alpha(c,"porter") * trns * wp
                +  alpha(c,"worker") * ltot * wl
                +  alpha(c,"owner") * sum(r, pk(r) * (a(r) - ip(r)));

p.lo(c)     = 0.1;
pk.lo(r)    = 0.001;

model vonthun / def_cst.cst,
                prf_y.y,
                pkbnd.ip,
                mkt_k.pk,
                mkt_t.wp,
                mkt_l.wl,
                mkt_g.p /;

cst.l(r,c) = 1;
y.l(r,c) = 1;
ip.l(r)  = 0;
pk.l(r)  = 1;
wp.l     = 1;
wl.l     = 1;
p.l(c)   = 1;

*       use the labor wage as numeraire:

wl.fx = 1;

solve vonthun using mcp;

display y.l, cst.l;
