option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Logical Inference for Reaction Path Synthesis (REACTION,SEQ=121)

$Ontext

    Given a set of possible chemical reactions, we must verify
    whether a chemical can be synthesized from a given set of
    raw materials and catalysts.


Morari, M, and Grossmann, I E, Eds, Chemical Engineering Optimization
Models with GAMS. Computer Aids for Chemical Engineering Corporation,
1991.

Raman, R, and Grossmann, I E, Relation between MINLP Modeling and
Logical Inverence for Chemical Process Synthesis. Computers and
Chemical Engineering 15, 2 (1991), 73-84.

$Offtext


Sets v system variables (chemicals)  /

       y01           ch3co2c2h5
       y02           naoc2h5
       y03           c2h5oh
       y04           ch3coch2co2c2h5
       y05           h3o-hydronium ion
       y06           ch3coch3
       y07           co2
       y08           ch3cn
       y09           ch3mgi
       y10           c2h5oc2h5
       y11           ch3c(nmgi)ch3
       y12           h2o
       y13           hcl
       y14           ch3cho
       y15           ch3ch(oh)ch3
       y16           cro3
       y17           h2so4
       y18           ch2=c(ch3)2
       y19           o3
       y20           hco2h
       y21           ch3i
       y22           mg
       y23           ch3co2ch3
       y24           hoc(ch3)3
       y25           ch4
       y26           i2
       y27           hi
       y28           o2
       y29           cr2o3
       y30           ch3cl
       y31           nacn
       y32           nacl
       y33           cl2
       y34           ch3cooh  /

     rx logical conditions / rxn01 * rxn22 /

Alias (v,vv)

Set  logic(rx,v,vv) mathematical representation of chemical reactions /

      rxn01.y04.(y01,y02,y03)
      rxn02.y06.(y04,y05)
      rxn03.y07.(y04,y05)
      rxn04.y03.(y04,y05)
      rxn05.y11.(y08,y09,y10)
      rxn06.y06.(y11,y12,y13)
      rxn07.y15.(y14,y09,y10,y05)
      rxn08.y06.(y15,y16,y17)
      rxn09.y06.(y18,y19,y12)
      rxn10.y20.(y18,y19,y12)
      rxn11.y09.(y21,y22)
      rxn12.y24.(y09,y23)
      rxn13.y18.(y24,y17)
      rxn14.y21.(y25,y26)
      rxn15.y27.(y25,y26)
      rxn16.y14.(y03,y28,y29)
      rxn17.y32.(y30,y31,y12)
      rxn18.y08.(y30,y31,y12)
      rxn19.y30.(y25,y33)
      rxn20.y13.(y25,y33)
      rxn21.y01.(y34,y03)
      rxn22.y34.(y14,y28)                 /

    rxv(rx,v) rx to v mapping;

rxv(rx,v) = sum(vv, logic(rx,v,vv));

Binary Variable  y(v); variable  totsum

Equations  obj       minimize y06 to determine if acetone can be produced
           leq(rx,v) logic constraints ;


obj..    totsum =e= y('y06') ;

leq(rxv(rx,v))..  sum(logic(rxv,vv), 1 - y(vv)) =g= 1 - y(v);


Sets yavail(v) available raw materials and catalysts /
               y02,y03,y05,y10,y12,y13,y17,y22,y25,y26,y28,y31,y33 /
     ynotavail(v)  raw materials and catalysts not available /
               y16,y19 /;

y.fx(yavail)    = 1;
y.fx(ynotavail) = 0;

Model rulebase / all /;

Solve rulebase minimizing totsum using mip;

