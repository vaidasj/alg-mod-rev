option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Sample Data Base of the US Economy  (RDATA,SEQ=38)
$Stitle Set Definitions

$Ontext

A mini relational data base of the us economy is used to demonstrate
some basic concepts of the relational data model. Data verification
and the use of math programming is shown as well.


Kendrick, D, Chapter 3: A Relational Database of the US Economy.
In Kindleberger, C P, and Ditella, G, Eds, Economics in the Long View,
Essays in the Honor of W W Rostow. Macmillan, London, 1982.

$Offtext


Sets plant      / sparrows, inland, comfort, rockdale, lansing /
     city       / sparrows-p, rockdale, p-comfort, gary, lansing /
     state      / indiana, maryland, michigan, texas /
     region     / e-coast, g-coast, mid-west /
     governor   / bowen, clements, hughes, milliken /
     party      / democrat, republican /
     company    / us-steel, alcoa, inld-steel, gm /
     union      / iam, ibew, ibt, uaw, usa /
     unit       / blast-furn, steel-shop, roll-mill, alumina, aluminum, stamping, assembly /
     commodity  / iron-ore, pig-iron, scrap-iron, steel, flat-steel, bauxite, alumina, aluminum, auto-body, automobile /
     process    / pig-iron, steel-pig, stl-scrap, rolling, alumina, aluminum, auto-body, auto-assm /
     industry   / steel, aluminum, automobile /
     sector     / p-metals, transp-equ /

     geography(plant,city,state,region) / (sparrows.sparrows-p.maryland.e-coast
                                           inland  .gary      .indiana .mid-west
                                           comfort .p-comfort .texas   .g-coast
                                           rockdale.rockdale  .texas   .g-coast
                                           lansing .lansing   .michigan.mid-west ) /

     govaff(state,governor,party) / (indiana .bowen   .republican
                                     maryland.hughes  .democrat
                                     michigan.milliken.republican
                                     texas   .clements.republican ) /

     ownership(company,plant) / (alcoa     .(comfort,rockdale)
                                 gm        .lansing
                                 inld-steel.inland
                                 us-steel  .sparrows            ) /
     sic(sector,industry,commodity) / p-metals.(steel.(iron-ore,pig-iron,steel,flat-steel,scrap-iron)
                                                aluminum.(bauxite,alumina,aluminum))
                                      transp-equ.automobile.(auto-body,automobile)  /
     indpl(industry,plant)  classification of plants by industry

$Stitle data

 Table a(commodity,process) input-output matrix

              pig-iron   steel-pig   stl-scrap     rolling   alumina   aluminum   auto-body   auto-assm

 iron-ore       -1.
 pig-iron        1.        -.9          -.7
 scrap-iron                -.2          -.4           .2
 steel                     1.           1.          -1.2
 flat-steel                                          1.                             -1.2
 bauxite                                                       -1.4
 alumina                                                        1.       -1.2
 aluminum                                                                 1          -.2
 auto-body                                                                           1.         -1.
 automobile                                                                                      1.


 Table b(unit,process) capacity utilization matrix

              pig-iron   steel-pig   stl-scrap     rolling   alumina   aluminum   auto-body   auto-assm

 blast-furn      1
 steel-shop                  1            1
 roll-mill                                            1
 alumina                                                        1
 aluminum                                                                  1
 stamping                                                                              1
 assembly                                                                                          1

 Table k80(unit,plant) capacity in 1980 ( millions of units)

              sparrows  inland  comfort  rockdale  lansing

 blast-furn      2       2.5
 steel-shop      2.35    2.8
 roll-mill       1.9     2.4
 alumina                           .8
 aluminum                          .6       .5
 stamping                                            .6
 assembly                                            .6


 Table emp(plant,union) employment (thousands)

             uaw     usa     ibew    ibt    iam

 sparrows            1.2              .3    .05
 inland               .4
 comfort              .7              .2
 rockdale             .5     .05
 lansing     1.2
   ;

$Stitle data manipulations

 indpl(industry,plant) = yes$sum((sector,commodity,process,unit)$(sic(sector,industry,commodity)
                                                                   $(a(commodity,process) gt 0)$b(unit,process)
                                                                      $k80(unit,plant)), 1);
 Display indpl;

 Parameter q1(union,company)   employment by union and company (thousands)
           q2(unit,region)     capacity by region (millions of units)
           q3(governor)        employment in steel and automobiles (thousands)
           q4                  smallest number of union participation to build cars ;

 q1(union,company)   = sum(plant$ownership(company,plant), emp(plant,union));

 q2(unit,region)     = sum((plant,city,state)$geography(plant,city,state,region), k80(unit,plant));

 Set ind3(industry)  industry grouping for q3  / steel, automobile / ;
 q3(governor)        = sum((state,party)$govaff(state,governor,party),
                         sum((ind3,plant,city,region)$(geography(plant,city,state,region)*indpl(ind3,plant)),
                           sum(union, emp(plant,union)) ) );

 Display q1, q2, q3;

* Query number 4 requires the solution of a mixed integer problem. Some other parameters are
* are needed for the mip formulation.

 Parameter demand(commodity)       in millions of units                  / automobile .5 /
           ur(process,plant,union) union relationship to plant processes
           mu(union)               maximum ;
 Set rawmat(commodity) raw materials;

 ur(process,plant,union) = sum(unit$k80(unit,plant), emp(plant,union)*b(unit,process));
 mu(union)               = sum((process,plant), ur(process,plant,union));
 rawmat(commodity) = yes$(not sum(process, a(commodity,process) gt 0)); rawmat("scrap-iron") = yes;

 Display demand, ur, mu, rawmat;

$Stitle model definiton

 Variables nunion           number of unions                          (number)
           z(process,plant) process level                      (million units)
           up(union)        union participation
           u(commodity)     purchase of raw materials          (million units)

 Positive Variable z;
 Binary Variable up;

 Equations mb(commodity)   material balance                    (million units)
           cc(unit,plant)  capacity constraint                 (million units)
           ub(union)       union balance
           ud              union definition;

$Double

 mb(commodity)..  sum((process,plant), a(commodity,process)*z(process,plant))
                 + u(commodity)$rawmat(commodity) =e= demand(commodity);

 cc(unit,plant).. sum(process, b(unit,process)*z(process,plant)) =l= k80(unit,plant);

 ub(union)..      sum((process,plant), ur(process,plant,union)*z(process,plant)) =l= mu(union)*up(union);

 ud..             nunion =e= sum(union, up(union));

 Model david / all /;

 Solve david minimizing nunion using mip;

 q4 = nunion.l; Display q4;
