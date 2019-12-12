$ontext

Author: Mohit Tawarmalani, August 2002

Purpose:
To encode the pq-formulation of the pooling problem described in:
M. Tawarmalani and N. V. Sahinidis, "Convexification and
Global Optimization of the Pooling Problem," May 2002,
Mathematical Programming, submitted.

$offtext

Sets comp_ Components and Raw Matereials
     pro_  Products
     qual_ Qualities
     pool_ Pools

Sets comp(comp_) Instance of Components and Raw Matereials
     pro(pro_)   Instance of Products
     qual(qual_) Instance of Qualities
     pool(pool_) Instance of Pools



parameters cl(comp_)          min use of raw material
           cu(comp_)          max avaialbility of raw material
           cprice(comp_)      unit cost of raw materials
           cqual(comp_,qual_) quality of raw material

           prl(pro_)          min product output
           pru(pro_)          max product output
           pprice(pro_)       product price
           pqlbd(pro_,qual_)  min product quality
           pqubd(pro_,qual_)  max product quality

           psize(pool_)      pool capacity


variables  q(comp_, pool_) pool quality from pooling raw materials
           y(pool_, pro_)  flow from pool to product
           z(comp_, pro_)  direct flow of rawmaterials to product
           cost          total cost
positive variables q,y,z;

equations obj                    objective function,
          clower(comp_)          lower bound component availability
          cupper(comp_)          upper bound component availability
          pszrlt(comp_,pool_)    ss-rlt on pool size constraints
          plower(pro_)           minimum product production
          pupper(pro_)           maximum product demand
          pqlower(pro_,qual_)    minimum product quality requirement
          pqupper(pro_,qual_)    maximum product quality
          fraction(pool_)        fractions sum to one
          extensions(pool_,pro_) convexification constraints;

set z_dom(comp_,pro_)        domain of z
    y_dom(pool_,pro_)        domain of y
    q_dom(comp_,pool_)       domain of q
    qy_dom(comp_,pool_,pro_) domain of q*y;


obj.. cost =e=

  sum(qy_dom(comp,pool,pro), cprice(comp)*q(comp,pool)*y(pool,pro))

 - sum(y_dom(pool,pro), pprice(pro)*y(pool, pro))

 + sum(z_dom(comp,pro), (cprice(comp)-pprice(pro))*z(comp,pro));


clower(comp).. sum(qy_dom(comp,pool,pro), q(comp,pool)*y(pool,pro))
             + sum(z_dom(comp,pro), z(comp, pro)) =g= cl(comp);

cupper(comp).. sum(qy_dom(comp,pool,pro), q(comp,pool)*y(pool,pro))
             + sum(z_dom(comp,pro), z(comp, pro)) =l= cu(comp);

pszrlt(q_dom(comp,pool))..
   sum(y_dom(pool,pro), q(comp,pool)*y(pool,pro)) =l= q(comp,pool)*psize(pool);

plower(pro).. sum(y_dom(pool,pro),  y(pool,pro))
            + sum(z_dom(comp, pro), z(comp, pro)) =g= prl(pro);

pupper(pro).. sum(y_dom(pool,pro),  y(pool,pro))
            + sum(z_dom(comp, pro), z(comp, pro)) =l= pru(pro);


pqlower(pro,qual)..
    sum(qy_dom(comp,pool,pro), cqual(comp, qual)*q(comp,pool)*y(pool,pro))
  + sum(z_dom(comp,pro),       cqual(comp,qual)*z(comp, pro))
=g= sum(y_dom(pool,pro),       pqlbd(pro,qual)*y(pool,pro))
  + sum(z_dom(comp,pro),       pqlbd(pro,qual)*z(comp,pro));

pqupper(pro,qual)..
    sum(qy_dom(comp,pool,pro), cqual(comp, qual)*q(comp,pool)*y(pool,pro))
  + sum(z_dom(comp,pro),       cqual(comp,qual)*z(comp, pro))
=l= sum(y_dom(pool,pro),       pqubd(pro,qual)*y(pool,pro))
  + sum(z_dom(comp,pro),       pqubd(pro,qual)*z(comp,pro));

fraction(pool).. sum(q_dom(comp,pool), q(comp, pool)) =e= 1;

extensions(y_dom(pool, pro))..
   sum(q_dom(comp,pool), q(comp,pool)*y(pool,pro)) =e= y(pool,pro);

model poolprob /all/;
