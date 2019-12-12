option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Design of a Water Distribution Network  (WATERX,SEQ=125)
$Ontext

  This example illustrates the use of nonlinear mixed-integer
  programming. this problem is a variation of the gams library model
  water (SEQ=68). This example illustrates the use of nonlinear
  programming in the design of water distribution systems. The model
  captures the main features of an actual application for a city in
  Indonesia.


Brooke, A, Drud, A S, and Meeraus, A, Modeling Systems and Nonlinear
Programming in a Research Environment. In Ragavan, R, and Rohde, S M,
Eds, Computers in Engineering, Vol. III. ACME, 1985.

Drud, A S, and Rosenborg, A, Dimensioning Water Distribution Networks.
Masters thesis, Institute of Mathematical Statistics and Operations
Research, Technical University of Denmark, 1973. (in Danish)

$Offtext

 Set   n       nodes /  nw   north west reservoir
                        e    east reservoir
                        cc   central city
                        w    west
                        sw   south west
                        s    south
                        se   south east
                        n    north       /

       a(n,n)  arcs (arbitrarily directed)  / nw.(w,cc,n), e.(n,cc,s,se), cc.(w,sw,s,n), s.se, s.sw, sw.w /
       rn(n)   reservoirs /  nw, e  /
       dn(n)   demand nodes; dn(n) = yes; dn(rn) = no; display dn;
       alias   (n,np);

 Table      node(n,*)  node data

                          demand      height       x          y       supply     wcost      pcost
*                        m**3/sec  m over base     m          m      m**3/sec   rp/m**3    rp/m**4
            nw                        6.50       1200       3600       2.500      0.20       1.02
            e                         3.25       4000       2200       6.000      0.17       1.02
            cc             1.212      3.02       2000       2300
            w              0.452      5.16        750       2400
            sw             0.245      4.20        900       1200
            s              0.652      1.50       2000       1000
            se             0.252      0.00       4000        900
            n              0.456      6.30       3700       3500

 Parameter  dist(n,n)  distance between nodes (m);
            dist(a(n,np)) = sqrt( sqr( node(n,"x")-node(np,"x") ) + sqr( node(n,"y")-node(np,"y") ) );
            display dist;

 Scalar     dpow       power on diameter in pressure loss equation     / 5.33   /
            qpow       power on flow in pressure loss equation         / 2.00   /
            dmin       minimum diameter of pipe                        / 0.15   /
            dmax       maximum diameter of pipe                        / 2.00   /
            hloss      constant in the pressure loss equation          / 1.03e-3/
            dprc       scale factor in the investment cost equation    / 6.90e-2/
            cpow       power on diameter in the cost equation          / 1.29   /
            r          interest rate                                   / 0.10   /
            maxq       bound on qp and qn                              / 2.00   /
            davg       average diameter (geometric mean)
            rr         ratio of demand to supply;

            davg = sqrt(dmin*dmax);
            rr   = sum(dn,node(dn,"demand")) / sum(rn,node(rn,"supply"));

 Variables  qp(n,n)    flow on each arc - positive     (m**3 per sec)
            qn(n,n)    flow on each arc - negative     (m**3 per sec)
            d(n,n)     pipe diameter for each arc      (m)
            h(n)       pressure at each node           (m)
            s(n)       supply at reservoir nodes       (m**3 per sec)
            pcost      annual recurrent pump costs     (mill rp)
            dcost      investment costs for pipes      (mill rp)
            wcost      annual recurrent water costs    (mill rp)
            cost       total discounted costs          (mill rp)
            pen        objective penalty

 Positive variables qp, qn(n,np)

 Binary variable qb(n,np);

 Equations  cont(n)    flow conservation equation at each node
            loss(n,n)  pressure loss on each arc
            peq        pump cost equation
            deq        investment cost equation
            weq        water cost equation
            obj        objective function
            dpen       penalty definition
            qpup(n,np) positive bounds
            qnup(n,np) negative bounds ;

cont(n)..  sum(a(np,n), qp(a)-qn(a)) - sum(a(n,np), qp(a)-qn(a)) + s(n)$rn(n) =e= node(n,"demand");

loss(a(n,np))..
h(n) - h(np) =e= [hloss*dist(a)*(qp(a)+qn(a))**(qpow-1)*(qp(a)-qn(a))/d(a)**dpow] $(qpow <> 2) +
                 [hloss*dist(a)*(qp(a)+qn(a))*          (qp(a)-qn(a))/d(a)**dpow] $(qpow = 2);

qpup(a)..   qp(a) =l=  maxq*qb(a);
qnup(a)..   qn(a) =l=  maxq*(1-qb(a));

peq.. pcost =e= sum( rn , s(rn) * node(rn,"pcost") * ( h(rn)-node(rn,"height") ) );

deq.. dcost =e= dprc * sum( (n,np)$a(n,np) , dist(n,np) * d(n,np)**cpow );

weq.. wcost =e= sum( rn , s(rn) * node(rn,"wcost") );

dpen..pen =e= sum(a, qp(a) + qn(a));

obj.. cost  =e= ( pcost + wcost ) / r + dcost + pen;


*  bounds

 d.lo(n,np)$a(n,np) = dmin;              d.up(n,np)$a(n,np) = dmax;
 h.lo(rn)           = node(rn,"height"); h.lo(dn)           = node(dn,"height") + 7.5 + 5.0 * node(dn,"demand");
 s.lo(rn)           = 0;                 s.up(rn)           = node(rn,"supply");

*  initial values

 d.l(n,np)$a(n,np)  = davg;
 h.l(n)             = h.lo(n) + 5.0;
 s.l(rn)            = node(rn,"supply")*rr;


Model network /all/;

network.domlim  =   1000;

$ontext
*  DICOPT requires different nonlinear optimizers to overcome some of
*  the difficulties with non-convexities. This problem has a large
*  number of local solutions and it is important to find a 'good'
*  first nlp solution. Minos is used to find the first nlp and Conopt
*  is used to solve the subsequent problems. Minos or Conopt alone are
*  not able to find a good solution.

File dopt / dicopt.opt /; put dopt;
putclose  'nlpsolver minos5 conopt'
        / 'nlpoptfile   0     1   ' ;

File copt / conopt.opt /; put copt;
putclose  'set rtmaxj  1.0e12';

network.optfile =     1;

Solve network using rminlp minimizing cost;
$offtext

Solve network using minlp minimizing cost;





