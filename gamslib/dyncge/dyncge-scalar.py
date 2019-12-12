#  NLP written by GAMS Convert at 12/13/18 11:43:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        116      116        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        117      117        0        0        0        0        0        0
#  FX     11       11        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        521      233      288        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=6517.516)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=15985.062)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=63568.944)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=385778.096)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=5082.506)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=7042.697)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=21058.821)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=163045.396)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=1435.01)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=8942.365)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=42510.123)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=222732.7)
m.x13 = Var(within=Reals,bounds=(None,None),initialize=1643.017)
m.x14 = Var(within=Reals,bounds=(None,None),initialize=7560.896)
m.x15 = Var(within=Reals,bounds=(None,None),initialize=237.841)
m.x16 = Var(within=Reals,bounds=(None,None),initialize=1409.202)
m.x17 = Var(within=Reals,bounds=(None,None),initialize=1485.854)
m.x18 = Var(within=Reals,bounds=(None,None),initialize=10803.527)
m.x19 = Var(within=Reals,bounds=(None,None),initialize=15330.764)
m.x20 = Var(within=Reals,bounds=(None,None),initialize=18597.27)
m.x21 = Var(within=Reals,bounds=(None,None),initialize=1071.954)
m.x22 = Var(within=Reals,bounds=(None,None),initialize=4277.721)
m.x23 = Var(within=Reals,bounds=(None,None),initialize=113390.269)
m.x24 = Var(within=Reals,bounds=(None,None),initialize=48734.424)
m.x25 = Var(within=Reals,bounds=(None,None),initialize=2002.38)
m.x26 = Var(within=Reals,bounds=(None,None),initialize=11406.26)
m.x27 = Var(within=Reals,bounds=(None,None),initialize=50513.476)
m.x28 = Var(within=Reals,bounds=(None,None),initialize=177675.714)
m.x29 = Var(within=Reals,bounds=(None,None),initialize=12720.721)
m.x30 = Var(within=Reals,bounds=(None,None),initialize=50033.466)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=243041.294)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=632194.706)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=3563.257)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=32220.169)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=27648.678)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=234243.865)
m.x37 = Var(within=Reals,bounds=(-1719.66812524877,-1719.66812524877),initialize=-1719.66812524877)
m.x38 = Var(within=Reals,bounds=(-902.778746345937,-902.778746345937),initialize=-902.778746345937)
m.x39 = Var(within=Reals,bounds=(-65393.6006677317,-65393.6006677317),initialize=-65393.6006677317)
m.x40 = Var(within=Reals,bounds=(16278.6211142947,16278.6211142947),initialize=16278.6211142947)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=1869.12371065651)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=1629.89286504737)
m.x43 = Var(within=Reals,bounds=(None,None),initialize=71086.637254232)
m.x44 = Var(within=Reals,bounds=(None,None),initialize=160889.650170064)
m.x45 = Var(within=Reals,bounds=(None,None),initialize=62.464)
m.x46 = Var(within=Reals,bounds=(None,None),initialize=1196.525)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=55083.516)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=17426.156)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=2092.569)
m.x50 = Var(within=Reals,bounds=(None,None),initialize=23796.669)
m.x51 = Var(within=Reals,bounds=(None,None),initialize=30982.559)
m.x52 = Var(within=Reals,bounds=(None,None),initialize=10837.256)
m.x53 = Var(within=Reals,bounds=(None,None),initialize=15333.958)
m.x54 = Var(within=Reals,bounds=(None,None),initialize=79569.079)
m.x55 = Var(within=Reals,bounds=(None,None),initialize=230107.78)
m.x56 = Var(within=Reals,bounds=(None,None),initialize=645718.298)
m.x57 = Var(within=Reals,bounds=(None,None),initialize=13092.111)
m.x58 = Var(within=Reals,bounds=(None,None),initialize=52905.557)
m.x59 = Var(within=Reals,bounds=(None,None),initialize=197375.836)
m.x60 = Var(within=Reals,bounds=(None,None),initialize=634872.467)
m.x61 = Var(within=Reals,bounds=(499247.83846016,499247.83846016),initialize=499247.83846016)
m.x62 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x63 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x64 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x65 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x66 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x67 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x68 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x69 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x70 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x71 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x72 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x73 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x74 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x75 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x76 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x77 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x78 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x79 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x80 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x81 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x82 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x83 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x84 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x85 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x86 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x87 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x88 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x89 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x90 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x91 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x92 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x93 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x94 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x95 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x96 = Var(within=Reals,bounds=(None,None),initialize=241534.912)
m.x97 = Var(within=Reals,bounds=(-10976.1411459254,-10976.1411459254),initialize=-10976.1411459254)
m.x98 = Var(within=Reals,bounds=(None,None),initialize=-67361.263)
m.x99 = Var(within=Reals,bounds=(None,None),initialize=433.854)
m.x100 = Var(within=Reals,bounds=(None,None),initialize=4068.616)
m.x101 = Var(within=Reals,bounds=(None,None),initialize=9418.058)
m.x102 = Var(within=Reals,bounds=(None,None),initialize=20103.917)
m.x103 = Var(within=Reals,bounds=(None,None),initialize=149.278)
m.x104 = Var(within=Reals,bounds=(None,None),initialize=2866.853)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=1749.385)
m.x106 = Var(within=Reals,bounds=(None,None),initialize=8.575)
m.x107 = Var(within=Reals,bounds=(137539.847651341,137539.847651341),initialize=137539.847651341)
m.x108 = Var(within=Reals,bounds=(190585.40657592,190585.40657592),initialize=190585.40657592)
m.x109 = Var(within=Reals,bounds=(569881.674917227,569881.674917227),initialize=569881.674917227)
m.x110 = Var(within=Reals,bounds=(4412240.52191823,4412240.52191823),initialize=4412240.52191823)
m.x111 = Var(within=Reals,bounds=(None,None),initialize=6099.0072)
m.x112 = Var(within=Reals,bounds=(None,None),initialize=8451.2364)
m.x113 = Var(within=Reals,bounds=(None,None),initialize=25270.5852)
m.x114 = Var(within=Reals,bounds=(None,None),initialize=195654.4752)
m.x115 = Var(within=Reals,bounds=(None,None),initialize=235475.304)
m.x116 = Var(within=Reals,bounds=(1,1),initialize=1)

m.obj = Objective(expr=2.01967455881457*m.x33**0.0119702541389896*m.x34**0.108239066486418*m.x35**0.092881793894488*
                       m.x36**0.786908885480104, sense=maximize)

m.c1 = Constraint(expr=-1.69406751680297*m.x5**0.779822558164798*m.x9**0.220177441835202 + m.x1 == 0)

m.c2 = Constraint(expr=-1.98589355705571*m.x6**0.440579898908118*m.x10**0.559420101091882 + m.x2 == 0)

m.c3 = Constraint(expr=-1.88716953992159*m.x7**0.331275300089931*m.x11**0.668724699910069 + m.x3 == 0)

m.c4 = Constraint(expr=-1.97610935451085*m.x8**0.422640366808177*m.x12**0.577359633191823 + m.x4 == 0)

m.c5 = Constraint(expr=-0.779822558164798*m.x70*m.x1/m.x62 + m.x5 == 0)

m.c6 = Constraint(expr=-0.440579898908118*m.x71*m.x2/m.x63 + m.x6 == 0)

m.c7 = Constraint(expr=-0.331275300089931*m.x72*m.x3/m.x64 + m.x7 == 0)

m.c8 = Constraint(expr=-0.422640366808177*m.x73*m.x4/m.x65 + m.x8 == 0)

m.c9 = Constraint(expr=-0.220177441835202*m.x70*m.x1/m.x66 + m.x9 == 0)

m.c10 = Constraint(expr=-0.559420101091882*m.x71*m.x2/m.x67 + m.x10 == 0)

m.c11 = Constraint(expr=-0.668724699910069*m.x72*m.x3/m.x68 + m.x11 == 0)

m.c12 = Constraint(expr=-0.577359633191823*m.x73*m.x4/m.x69 + m.x12 == 0)

m.c13 = Constraint(expr=   m.x13 - 0.129160682008512*m.x29 == 0)

m.c14 = Constraint(expr=   m.x14 - 0.151116774520478*m.x30 == 0)

m.c15 = Constraint(expr=   m.x15 - 0.000978603249207519*m.x31 == 0)

m.c16 = Constraint(expr=   m.x16 - 0.00222906327216223*m.x32 == 0)

m.c17 = Constraint(expr=   m.x17 - 0.116805800551714*m.x29 == 0)

m.c18 = Constraint(expr=   m.x18 - 0.215926016398704*m.x30 == 0)

m.c19 = Constraint(expr=   m.x19 - 0.0630788445357767*m.x31 == 0)

m.c20 = Constraint(expr=   m.x20 - 0.0294169973641*m.x32 == 0)

m.c21 = Constraint(expr=   m.x21 - 0.0842683366768283*m.x29 == 0)

m.c22 = Constraint(expr=   m.x22 - 0.0854971950174309*m.x30 == 0)

m.c23 = Constraint(expr=   m.x23 - 0.466547339070701*m.x31 == 0)

m.c24 = Constraint(expr=   m.x24 - 0.0770876812752051*m.x32 == 0)

m.c25 = Constraint(expr=   m.x25 - 0.15741088889537*m.x29 == 0)

m.c26 = Constraint(expr=   m.x26 - 0.227972613370419*m.x30 == 0)

m.c27 = Constraint(expr=   m.x27 - 0.207839067874614*m.x31 == 0)

m.c28 = Constraint(expr=   m.x28 - 0.281045874496773*m.x32 == 0)

m.c29 = Constraint(expr=   m.x1 - 0.512354291867576*m.x29 == 0)

m.c30 = Constraint(expr=   m.x2 - 0.319487400692968*m.x30 == 0)

m.c31 = Constraint(expr=   m.x3 - 0.261556145269701*m.x31 == 0)

m.c32 = Constraint(expr=   m.x4 - 0.61022038359176*m.x32 == 0)

m.c33 = Constraint(expr= - 0.512354291867576*m.x70 + m.x74 - 0.129160682008512*m.x78 - 0.116805800551714*m.x79
                         - 0.0842683366768283*m.x80 - 0.15741088889537*m.x81 == 0)

m.c34 = Constraint(expr= - 0.319487400692968*m.x71 + m.x75 - 0.151116774520478*m.x78 - 0.215926016398704*m.x79
                         - 0.0854971950174309*m.x80 - 0.227972613370419*m.x81 == 0)

m.c35 = Constraint(expr= - 0.261556145269701*m.x72 + m.x76 - 0.000978603249207519*m.x78 - 0.0630788445357767*m.x79
                         - 0.466547339070701*m.x80 - 0.207839067874614*m.x81 == 0)

m.c36 = Constraint(expr= - 0.61022038359176*m.x73 + m.x77 - 0.00222906327216223*m.x78 - 0.0294169973641*m.x79
                         - 0.0770876812752051*m.x80 - 0.281045874496773*m.x81 == 0)

m.c37 = Constraint(expr=-(m.x78*m.x37 + m.x79*m.x38 + m.x80*m.x39 + m.x81*m.x40) + m.x98 + m.x99 + m.x100 + m.x101
                         + m.x102 + m.x103 + m.x104 + m.x105 + m.x106 == 0)

m.c38 = Constraint(expr=-0.0341060856534783*m.x74*m.x29 + m.x99 == 0)

m.c39 = Constraint(expr=-0.0813178923083202*m.x75*m.x30 + m.x100 == 0)

m.c40 = Constraint(expr=-0.0387508552353247*m.x76*m.x31 + m.x101 == 0)

m.c41 = Constraint(expr=-0.031800198276257*m.x77*m.x32 + m.x102 == 0)

m.c42 = Constraint(expr=   m.x103 == 0)

m.c43 = Constraint(expr=   m.x104 == 0)

m.c44 = Constraint(expr=   m.x105 == 0)

m.c45 = Constraint(expr=   m.x106 == 0)

m.c46 = Constraint(expr=-0.00793766343606252*m.x94*(m.x111 + m.x112 + m.x113 + m.x114)/m.x78 + m.x41 == 0)

m.c47 = Constraint(expr=-0.00692171466544692*m.x94*(m.x111 + m.x112 + m.x113 + m.x114)/m.x79 + m.x42 == 0)

m.c48 = Constraint(expr=-0.30188574362869*m.x94*(m.x111 + m.x112 + m.x113 + m.x114)/m.x80 + m.x43 == 0)

m.c49 = Constraint(expr=-0.6832548782698*m.x94*(m.x111 + m.x112 + m.x113 + m.x114)/m.x81 + m.x44 == 0)

m.c50 = Constraint(expr=-0.447941465038796*(m.x62*m.x5 + m.x63*m.x6 + m.x64*m.x7 + m.x65*m.x8 + m.x66*m.x9 + m.x67*m.x10
                         + m.x68*m.x11 + m.x69*m.x12) + m.x96 + 0.447941465038796*m.x98 == 0)

m.c51 = Constraint(expr=-(0.0119702541389896*(m.x62*m.x5 + m.x63*m.x6 + m.x64*m.x7 + m.x65*m.x8 + m.x66*m.x9 + m.x67*
                        m.x10 + m.x68*m.x11 + m.x69*m.x12) - 0.0119702541389896*m.x96 - 0.0119702541389896*m.x98)/m.x78
                         + m.x33 == 0)

m.c52 = Constraint(expr=-(0.108239066486418*(m.x62*m.x5 + m.x63*m.x6 + m.x64*m.x7 + m.x65*m.x8 + m.x66*m.x9 + m.x67*
                        m.x10 + m.x68*m.x11 + m.x69*m.x12) - 0.108239066486418*m.x96 - 0.108239066486418*m.x98)/m.x79
                         + m.x34 == 0)

m.c53 = Constraint(expr=-(0.092881793894488*(m.x62*m.x5 + m.x63*m.x6 + m.x64*m.x7 + m.x65*m.x8 + m.x66*m.x9 + m.x67*
                        m.x10 + m.x68*m.x11 + m.x69*m.x12) - 0.092881793894488*m.x96 - 0.092881793894488*m.x98)/m.x80
                         + m.x35 == 0)

m.c54 = Constraint(expr=-(0.786908885480104*(m.x62*m.x5 + m.x63*m.x6 + m.x64*m.x7 + m.x65*m.x8 + m.x66*m.x9 + m.x67*
                        m.x10 + m.x68*m.x11 + m.x69*m.x12) - 0.786908885480104*m.x96 - 0.786908885480104*m.x98)/m.x81
                         + m.x36 == 0)

m.c55 = Constraint(expr=   m.x82 - m.x95 == 0)

m.c56 = Constraint(expr=   m.x83 - m.x95 == 0)

m.c57 = Constraint(expr=   m.x84 - m.x95 == 0)

m.c58 = Constraint(expr=   m.x85 - m.x95 == 0)

m.c59 = Constraint(expr=   m.x86 - m.x95 == 0)

m.c60 = Constraint(expr=   m.x87 - m.x95 == 0)

m.c61 = Constraint(expr=   m.x88 - m.x95 == 0)

m.c62 = Constraint(expr=   m.x89 - m.x95 == 0)

m.c63 = Constraint(expr=   m.x45 + m.x46 + m.x47 + m.x48 - m.x49 - m.x50 - m.x51 - m.x52 + m.x97 == 0)

m.c64 = Constraint(expr=-1.74181559989014*(0.299873337754138*m.x49**0.5 + 0.700126662245862*m.x57**0.5)**2 + m.x53 == 0)

m.c65 = Constraint(expr=-2.03967000415918*(0.42904941090414*m.x50**0.5 + 0.57095058909586*m.x58**0.5)**2 + m.x54 == 0)

m.c66 = Constraint(expr=-1.72608859013589*(0.295063822716336*m.x51**0.5 + 0.704936177283664*m.x59**0.5)**2 + m.x55 == 0)

m.c67 = Constraint(expr=-1.25713178423147*(0.115635509057695*m.x52**0.5 + 0.884364490942305*m.x60**0.5)**2 + m.x56 == 0)

m.c68 = Constraint(expr=-(0.395766419203511*m.x78/m.x86)**2*m.x53 + m.x49 == 0)

m.c69 = Constraint(expr=-(0.612755565555217*m.x79/m.x87)**2*m.x54 + m.x50 == 0)

m.c70 = Constraint(expr=-(0.387656888431472*m.x80/m.x88)**2*m.x55 + m.x51 == 0)

m.c71 = Constraint(expr=-(0.129652716333586*m.x81/m.x89)**2*m.x56 + m.x52 == 0)

m.c72 = Constraint(expr=-(0.92401219855408*m.x78/m.x90)**2*m.x53 + m.x57 == 0)

m.c73 = Constraint(expr=-(0.815414593830276*m.x79/m.x91)**2*m.x54 + m.x58 == 0)

m.c74 = Constraint(expr=-(0.926150019046142*m.x80/m.x92)**2*m.x55 + m.x59 == 0)

m.c75 = Constraint(expr=-(0.991566166949901*m.x81/m.x93)**2*m.x56 + m.x60 == 0)

m.c76 = Constraint(expr=-6.01527608470345*(0.935389577226454*m.x45**1.5 + 0.0646104227735464*m.x57**1.5)**
                        0.666666666666667 + m.x29 == 0)

m.c77 = Constraint(expr=-3.61720661816441*(0.869272702066364*m.x46**1.5 + 0.130727297933637*m.x58**1.5)**
                        0.666666666666667 + m.x30 == 0)

m.c78 = Constraint(expr=-2.12168261795511*(0.65433053205311*m.x47**1.5 + 0.34566946794689*m.x59**1.5)**0.666666666666667
                         + m.x31 == 0)

m.c79 = Constraint(expr=-3.59090892375353*(0.857871887526444*m.x48**1.5 + 0.142128112473556*m.x60**1.5)**
                        0.666666666666667 + m.x32 == 0)

m.c80 = Constraint(expr=-(14.2705584239207*m.x74/m.x82)**(-2)*m.x29 + m.x45 == 0)

m.c81 = Constraint(expr=-(6.46650184736328*m.x75/m.x83)**(-2)*m.x30 + m.x46 == 0)

m.c82 = Constraint(expr=-(2.10053154298257*m.x76/m.x84)**(-2)*m.x31 + m.x47 == 0)

m.c83 = Constraint(expr=-(6.02316317064515*m.x77/m.x85)**(-2)*m.x32 + m.x48 == 0)

m.c84 = Constraint(expr=-(0.985714225850187*m.x74/m.x90)**(-2)*m.x29 + m.x57 == 0)

m.c85 = Constraint(expr=-(0.972477694950249*m.x75/m.x91)**(-2)*m.x30 + m.x58 == 0)

m.c86 = Constraint(expr=-(1.109667951135*m.x76/m.x92)**(-2)*m.x31 + m.x59 == 0)

m.c87 = Constraint(expr=-(0.997888874797343*m.x77/m.x93)**(-2)*m.x32 + m.x60 == 0)

m.c88 = Constraint(expr= - m.x13 - m.x14 - m.x15 - m.x16 - m.x33 - m.x37 - m.x41 + m.x53 == 0)

m.c89 = Constraint(expr= - m.x17 - m.x18 - m.x19 - m.x20 - m.x34 - m.x38 - m.x42 + m.x54 == 0)

m.c90 = Constraint(expr= - m.x21 - m.x22 - m.x23 - m.x24 - m.x35 - m.x39 - m.x43 + m.x55 == 0)

m.c91 = Constraint(expr= - m.x25 - m.x26 - m.x27 - m.x28 - m.x36 - m.x40 - m.x44 + m.x56 == 0)

m.c92 = Constraint(expr=   m.x9 + m.x10 + m.x11 + m.x12 - m.x61 == 0)

m.c93 = Constraint(expr= - m.x66 + m.x67 == 0)

m.c94 = Constraint(expr= - m.x66 + m.x68 == 0)

m.c95 = Constraint(expr= - m.x66 + m.x69 == 0)

m.c96 = Constraint(expr=   m.x66 - m.x67 == 0)

m.c97 = Constraint(expr= - m.x67 + m.x68 == 0)

m.c98 = Constraint(expr= - m.x67 + m.x69 == 0)

m.c99 = Constraint(expr=   m.x66 - m.x68 == 0)

m.c100 = Constraint(expr=   m.x67 - m.x68 == 0)

m.c101 = Constraint(expr= - m.x68 + m.x69 == 0)

m.c102 = Constraint(expr=   m.x66 - m.x69 == 0)

m.c103 = Constraint(expr=   m.x67 - m.x69 == 0)

m.c104 = Constraint(expr=   m.x68 - m.x69 == 0)

m.c105 = Constraint(expr=   m.x5 - 0.05*m.x107 == 0)

m.c106 = Constraint(expr=   m.x6 - 0.05*m.x108 == 0)

m.c107 = Constraint(expr=   m.x7 - 0.05*m.x109 == 0)

m.c108 = Constraint(expr=   m.x8 - 0.05*m.x110 == 0)

m.c109 = Constraint(expr=   m.x111 + m.x112 + m.x113 + m.x114 - m.x115 == 0)

m.c110 = Constraint(expr=-2.0029550751034*m.x41**0.00793766343606252*m.x42**0.00692171466544692*m.x43**0.30188574362869*
                         m.x44**0.6832548782698 + m.x115 == 0)

m.c111 = Constraint(expr=m.x94*m.x111 - m.x62**1*m.x5/(m.x62**1*m.x5 + m.x63**1*m.x6 + m.x64**1*m.x7 + m.x65**1*m.x8)*(
                         m.x95*m.x97 + m.x96) == 0)

m.c112 = Constraint(expr=m.x94*m.x112 - m.x63**1*m.x6/(m.x62**1*m.x5 + m.x63**1*m.x6 + m.x64**1*m.x7 + m.x65**1*m.x8)*(
                         m.x95*m.x97 + m.x96) == 0)

m.c113 = Constraint(expr=m.x94*m.x113 - m.x64**1*m.x7/(m.x62**1*m.x5 + m.x63**1*m.x6 + m.x64**1*m.x7 + m.x65**1*m.x8)*(
                         m.x95*m.x97 + m.x96) == 0)

m.c114 = Constraint(expr=m.x94*m.x114 - m.x65**1*m.x8/(m.x62**1*m.x5 + m.x63**1*m.x6 + m.x64**1*m.x7 + m.x65**1*m.x8)*(
                         m.x95*m.x97 + m.x96) == 0)

m.c116 = Constraint(expr= - 0.0157963305757034*m.x78 - 0.0819683656032095*m.x79 - 0.237046336041955*m.x80
                          - 0.665188967779132*m.x81 + m.x116 == 0)
