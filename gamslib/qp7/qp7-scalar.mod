#  QCP written by GAMS Convert at 12/13/18 11:23:22
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         34       32        2        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         82       82        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#       1585     1554       31        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 >= 0;
var x9 >= 0;
var x10 >= 0;
var x11 >= 0;
var x12 >= 0;
var x13 >= 0;
var x14 >= 0;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0;
var x22 >= 0;
var x23 >= 0;
var x24 >= 0;
var x25 >= 0;
var x26 >= 0;
var x27 >= 0;
var x28 >= 0;
var x29 >= 0;
var x30 >= 0;
var x31 >= 0;
var x32 >= 0;
var x33 >= 0;
var x34 >= 0;
var x35 >= 0;
var x36 >= 0;
var x37 >= 0;
var x38 >= 0;
var x39 >= 0;
var x40 >= 0;
var x41 >= 0;
var x42 >= 0;
var x43 >= 0;
var x44 >= 0;
var x45 >= 0;
var x46 >= 0;
var x47 >= 0;
var x48 >= 0;
var x49 >= 0;
var x50 >= 0;
var x51 >= 0;
var x52;
var x53;
var x54;
var x55;
var x56;
var x57;
var x58;
var x59;
var x60;
var x61;
var x62;
var x63;
var x64;
var x65;
var x66;
var x67;
var x68;
var x69;
var x70;
var x71;
var x72;
var x73;
var x74;
var x75;
var x76;
var x77;
var x78;
var x79;
var x80;
var x81 >= 0;
var x82 >= 0;

minimize obj:    0.0714285714285714*x81;

subject to

e2:    x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14
     + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26
     + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38
     + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50
     + x51 = 1;

e3:  - 0.0517241379310345*x3 + 0.0558620689655172*x4 + 0.116551724137931*x5
     - 0.0172413793103448*x7 - 0.0496551724137931*x8 - 0.0644827586206896*x9
     + 0.00862068965517241*x11 + 0.0689655172413793*x12
     - 0.0172413793103448*x13 - 0.0948275862068965*x14 - 0.0475862068965517*x15
     + 0.344827586206897*x16 + 0.0299999999999999*x17 + 0.0131034482758622*x18
     + 0.0562068965517241*x19 - 0.0644827586206897*x20 - 0.301724137931034*x21
     - 0.241379310344828*x22 - 0.00206896551724138*x23 - 0.0258620689655172*x24
     - 0.198275862068966*x25 - 0.0389655172413793*x26 + 0.0775862068965517*x27
     - 0.206896551724138*x28 + 0.0562068965517242*x29 - 0.0775862068965517*x30
     + 0.0689655172413793*x31 - 1.04310344827586*x32 - 0.327586206896552*x33
     - 0.0217241379310345*x34 - 0.155172413793103*x35 - 0.0172413793103448*x36
     - 0.28448275862069*x37 + 0.0558620689655173*x38 + 0.163793103448276*x39
     - 0.370689655172414*x40 + 0.0172413793103448*x41 - 0.03*x42
     + 0.0475862068965517*x43 - 0.517241379310345*x44 - 0.21551724137931*x45
     + 0.00655172413793105*x46 - 0.0537931034482758*x47
     - 0.0148275862068966*x48 - 0.417931034482759*x49 - 0.103448275862069*x50
     - 0.124827586206896*x51 >= -0.100241379310345;

e4:  - 0.431724137931033*x3 + 0.68586206896552*x4 - 0.513448275862065*x5
     - 2.01724137931034*x7 - 0.0496551724137931*x8 - 0.56448275862069*x9
     - 0.75*x10 + 0.12862068965517*x11 + 0.0689655172413793*x12
     - 0.0172413793103448*x13 + 1.1551724137931*x14 - 0.167586206896552*x15
     - 2.6551724137931*x16 + 0.53*x17 - 0.236896551724138*x18
     - 0.823793103448276*x19 + 0.555517241379311*x20 - 1.43172413793103*x21
     - 1.12137931034483*x22 - 0.132068965517241*x23 + 0.224137931034483*x24
     + 0.551724137931034*x25 - 0.40896551724138*x26 + 0.577586206896552*x27
     - 0.956896551724138*x28 - 0.573793103448277*x29 - 0.697586206896551*x30
     - 0.181034482758621*x31 - 0.673103448275858*x32 - 2.57758620689655*x33
     - 0.391724137931034*x34 - 1.6551724137931*x35 + 0.112758620689656*x36
     + 3.59551724137931*x37 - 0.444137931034483*x38 + 0.53379310344828*x39
     - 0.370689655172414*x40 + 0.517241379310345*x41 - 0.03*x42
     - 0.952413793103448*x43 + 0.982758620689655*x44 - 4.52551724137931*x45
     + 0.00655172413793105*x46 + 0.00620689655172376*x47
     + 0.0451724137931035*x48 - 2.29793103448276*x49 - 0.603448275862069*x50
     - 2.5048275862069*x51 + x52 = 0;

e5:  - 0.25*x2 - 0.0517241379310345*x3 + 0.175862068965515*x4
     + 0.616551724137931*x5 - 0.380000000000001*x6 - 1.76724137931034*x7
     - 0.299655172413793*x8 + 0.305517241379308*x9 + 0.630000000000003*x10
     + 0.388620689655175*x11 - 0.181034482758621*x12 - 0.0172413793103448*x13
     + 1.46517241379311*x14 + 0.452413793103448*x15 - 1.4051724137931*x16
     - 0.72*x17 + 0.88310344827586*x18 + 0.436206896551724*x19
     - 0.184482758620691*x20 + 0.948275862068966*x21 - 0.361379310344825*x22
     + 0.0679310344827585*x23 - 0.145862068965517*x24 + 0.921724137931032*x25
     + 0.331034482758622*x26 + 0.0775862068965517*x27 + 0.543103448275862*x28
     - 0.063793103448275*x29 - 0.827586206896552*x30 - 0.181034482758621*x31
     - 0.293103448275862*x32 - 4.32758620689655*x33 + 0.288275862068966*x34
     - 2.03517241379311*x35 - 0.0172413793103448*x36 - 1.66448275862069*x37
     - 0.314137931034484*x38 - 0.456206896551729*x39 + 0.0693103448275875*x40
     - 0.482758620689655*x41 - 0.28*x42 - 0.082413793103449*x43
     + 0.232758620689655*x44 - 0.405517241379308*x45 + 0.12655172413793*x46
     - 0.0537931034482758*x47 + 0.175172413793103*x48 - 0.917931034482758*x49
     + 0.52655172413793*x50 - 1.1248275862069*x51 + x53 = 0;

e6:    0.0782758620689645*x3 - 1.06413793103448*x4 - 1.38344827586207*x5
     + 0.25*x6 - 1.39724137931034*x7 + 0.140344827586208*x8
     - 0.934482758620687*x9 - 0.880000000000003*x10 - 0.37137931034483*x11
     + 0.318965517241379*x12 - 0.0172413793103448*x13 + 1.0351724137931*x14
     - 0.0475862068965517*x15 + 0.0948275862068966*x16 - 0.47*x17
     + 0.0131034482758622*x18 + 0.0562068965517241*x19 - 0.694482758620689*x20
     - 0.231724137931034*x21 + 0.87862068965517*x22 + 0.0579310344827587*x23
     - 0.335862068965517*x24 + 0.301724137931034*x25 - 0.788965517241379*x26
     + 0.327586206896552*x27 - 0.456896551724138*x28 - 0.0737931034482766*x29
     + 0.922413793103448*x30 + 0.318965517241379*x31 - 0.413103448275867*x32
     + 2.04241379310345*x33 - 0.211724137931036*x34 + 0.164827586206897*x35
     - 0.147241379310346*x36 + 0.345517241379306*x37 + 0.305862068965517*x38
     - 0.336206896551724*x39 + 0.689310344827585*x40 - 0.352758620689653*x41
     + 0.22*x42 + 0.177586206896553*x43 + 2.35275862068966*x44
     + 0.974482758620687*x45 + 0.00655172413793105*x46 - 0.0537931034482758*x47
     + 0.0451724137931035*x48 + 1.21206896551724*x49 + 0.896551724137931*x50
     + 0.755172413793106*x51 + x54 = 0;

e7:  - 0.130000000000001*x2 + 0.198275862068966*x3 - 1.19413793103448*x4
     - 0.753448275862074*x5 - 0.119999999999999*x6 - 1.01724137931034*x7
     - 0.109655172413794*x8 - 0.0644827586206896*x9 - 1.87*x10
     - 0.111379310344825*x11 - 0.0510344827586181*x12 - 0.267241379310345*x13
     - 1.2248275862069*x14 - 0.297586206896552*x15 - 0.155172413793103*x16
     + 0.0299999999999999*x17 + 0.0131034482758622*x18 + 0.176206896551724*x19
     - 1.06448275862069*x20 - 0.491724137931036*x21 - 0.491379310344828*x22
     - 0.192068965517241*x23 - 0.0258620689655172*x24 - 2.06827586206896*x25
     + 0.211034482758621*x26 - 0.542413793103449*x27 + 0.0431034482758621*x28
     + 0.0562068965517242*x29 - 0.207586206896552*x30 - 0.181034482758621*x31
     - 3.79310344827586*x32 - 1.19758620689655*x33 - 0.0217241379310345*x34
     - 0.225172413793104*x35 - 0.137241379310344*x36 - 0.164482758620685*x37
     + 0.175862068965518*x38 - 2.33620689655172*x39 + 0.129310344827586*x40
     - 0.862758620689658*x41 + 0.22*x42 + 0.167586206896551*x43
     + 0.362758620689654*x44 - 1.40551724137931*x45 + 0.0665517241379315*x46
     + 0.0662068965517243*x47 + 0.0451724137931035*x48 - 0.917931034482758*x49
     - 0.983448275862068*x50 - 2.3748275862069*x51 + x55 = 0;

e8:  - 0.431724137931033*x3 + 0.305862068965517*x4 - 0.263448275862065*x5
     - 0.887241379310349*x7 - 0.0496551724137931*x8 - 1.06448275862069*x9
     + 0.369999999999997*x10 - 0.87137931034483*x11 + 0.0689655172413793*x12
     + 0.732758620689655*x13 + 0.405172413793103*x14 - 0.297586206896552*x15
     + 0.594827586206897*x16 - 1.34*x17 + 0.0131034482758622*x18
     + 0.0562068965517241*x19 + 0.68551724137931*x20 - 1.11172413793103*x21
     - 0.861379310344825*x22 - 0.00206896551724138*x23 + 0.224137931034483*x24
     - 0.198275862068966*x25 + 0.34103448275862*x26 - 0.422413793103448*x27
     - 0.456896551724138*x28 + 0.186206896551725*x29 - 1.57758620689655*x30
     + 0.69896551724138*x31 - 3.42310344827586*x32 + 0.922413793103448*x33
     - 0.0217241379310345*x34 + 0.224827586206899*x35 + 0.102758620689654*x36
     + 0.345517241379306*x37 - 0.314137931034484*x38 - 0.96620689655172*x39
     + 6.49931034482759*x40 - 1.23275862068966*x41 + 0.090000000000001*x42
     + 0.677586206896553*x43 + 0.982758620689655*x44 + 1.53448275862069*x45
     - 0.0534482758620694*x46 + 0.0162068965517244*x47 - 0.0148275862068966*x48
     + 0.582068965517242*x49 + 0.146551724137931*x50 - 2.6248275862069*x51
     + x56 = 0;

e9:    0.130000000000001*x2 - 0.171724137931035*x3 - 0.944137931034483*x4
     - 1.38344827586207*x5 + 1.23275862068966*x7 - 0.0496551724137931*x8
     - 0.0644827586206896*x9 + 0.138620689655175*x11 + 0.188965517241377*x12
     - 0.267241379310345*x13 - 0.0948275862068965*x14 + 0.452413793103448*x15
     - 0.905172413793103*x16 + 0.53*x17 + 0.0131034482758622*x18
     + 0.186206896551724*x19 - 0.184482758620691*x20 - 0.121724137931035*x21
     - 0.241379310344828*x22 - 0.00206896551724138*x23 + 0.0341379310344824*x24
     + 0.551724137931034*x25 + 0.0810344827586217*x26 - 0.172413793103448*x27
     - 2.83689655172414*x28 + 0.306206896551724*x29 + 0.552413793103449*x30
     - 0.311034482758621*x31 + 0.586896551724133*x32 + 1.79241379310345*x33
     - 0.0217241379310345*x34 + 1.5948275862069*x35 - 0.137241379310344*x36
     - 0.53448275862069*x37 - 0.324137931034482*x38 - 0.206206896551729*x39
     - 0.430689655172413*x40 + 1.01724137931034*x41 + 0.099999999999999*x42
     + 0.0475862068965517*x43 + 1.60275862068965*x44 + 1.53448275862069*x45
     - 0.0534482758620686*x46 + 0.506206896551724*x47 - 0.204827586206897*x48
     + 0.702068965517239*x49 + 0.02655172413793*x50 - 0.00482758620689902*x51
     + x57 = 0;

e10:    0.119999999999999*x2 + 0.448275862068966*x3 + 0.805862068965517*x4
      + 0.616551724137931*x5 - 0.14724137931034*x7 + 0.320344827586206*x8
      + 0.68551724137931*x9 + 1.63*x10 + 0.62862068965517*x11
      - 0.181034482758621*x12 + 0.102758620689656*x13 - 0.524827586206896*x14
      - 0.0475862068965517*x15 + 0.344827586206897*x16 + 0.28*x17
      + 0.0131034482758622*x18 + 0.176206896551724*x19 - 0.0644827586206897*x20
      + 0.0782758620689645*x21 + 1.12862068965517*x22 - 0.0620689655172414*x23
      + 0.224137931034483*x24 - 0.0082758620689678*x25 - 0.0389655172413793*x26
      + 0.577586206896552*x27 + 0.793103448275862*x28 + 0.0562068965517242*x29
      - 0.267586206896551*x30 + 0.44896551724138*x31 + 0.956896551724138*x32
      - 0.197586206896549*x33 + 0.108275862068966*x34 - 0.785172413793106*x35
      + 0.102758620689654*x36 + 0.0855172413793149*x37 + 0.435862068965516*x38
      + 0.78379310344828*x39 - 0.180689655172414*x40 + 1.01724137931034*x41
      + 0.72*x42 + 0.417586206896551*x43 + 0.112758620689656*x44
      + 1.28448275862069*x45 + 0.00655172413793105*x46 + 0.316206896551724*x47
      + 0.235172413793103*x48 + 0.582068965517242*x49 + 0.146551724137931*x50
      + 3.1251724137931*x51 + x58 = 0;

e11:  - 0.119999999999999*x2 - 0.551724137931034*x3 + 0.175862068965515*x4
      + 0.616551724137931*x5 + 5.36275862068965*x7 - 0.169655172413792*x8
      + 0.18551724137931*x9 - 0.111379310344825*x11 - 0.0510344827586181*x12
      - 0.387241379310346*x13 - 0.224827586206899*x14 - 0.427586206896552*x15
      + 1.0948275862069*x16 - 0.100000000000003*x17 + 0.0131034482758622*x18
      + 0.0562068965517241*x19 - 0.0644827586206897*x20 + 0.198275862068966*x21
      + 0.638620689655175*x22 + 0.0579310344827587*x23 - 0.0258620689655172*x24
      - 1.01827586206897*x25 + 0.211034482758621*x26 - 0.172413793103448*x27
      - 1.07689655172414*x28 + 0.0562068965517242*x29 - 0.0775862068965517*x30
      + 0.318965517241379*x31 - 4.54310344827586*x32 + 0.292413793103446*x33
      + 0.0982758620689647*x34 - 1.1551724137931*x35 - 0.0172413793103448*x36
      - 0.0344827586206897*x37 - 0.0741379310344817*x38 + 0.543793103448271*x39
      - 0.0606896551724133*x40 - 0.352758620689653*x41 - 0.28*x42
      - 0.572413793103447*x43 - 2.14724137931034*x44 - 0.96551724137931*x45
      + 0.0665517241379307*x46 - 0.483793103448276*x47 - 0.0748275862068966*x48
      - 1.91793103448276*x49 - 0.233448275862068*x50 + 0.125172413793104*x51
      + x59 = 0;

e12:  - 0.130000000000001*x2 - 0.551724137931034*x3 - 0.194137931034483*x4
      - 0.253448275862074*x5 - 0.25*x6 + 2.98275862068966*x7
      + 0.320344827586206*x8 + 0.68551724137931*x9 - 0.630000000000003*x10
      + 0.12862068965517*x11 - 0.0610344827586232*x12 + 0.232758620689655*x13
      - 0.464827586206894*x14 - 0.167586206896552*x15 - 0.405172413793103*x16
      + 0.0299999999999999*x17 - 0.106896551724135*x18 + 0.186206896551724*x19
      + 0.68551724137931*x20 - 0.0517241379310345*x21 + 0.758620689655172*x22
      + 0.127931034482758*x23 + 0.344137931034483*x24 + 0.551724137931034*x25
      - 0.288965517241379*x26 + 0.197586206896553*x27 - 1.20689655172414*x28
      + 0.0562068965517242*x29 + 0.362413793103448*x30 - 0.0610344827586215*x31
      - 1.04310344827586*x32 - 0.447586206896549*x33 + 0.358275862068966*x34
      - 0.655172413793103*x35 + 0.232758620689655*x36 - 0.28448275862069*x37
      + 0.0558620689655173*x38 - 0.71620689655172*x39 + 0.569310344827586*x40
      - 1.11275862068966*x41 - 0.03*x42 + 0.547586206896552*x43
      - 1.07724137931035*x44 - 0.345517241379313*x45 + 0.00655172413793105*x46
      - 0.0537931034482758*x47 + 0.0451724137931035*x48 - 2.16793103448276*x49
      + 0.396551724137931*x50 + 0.505172413793106*x51 + x60 = 0;

e13:    0.130000000000001*x2 + 0.0682758620689665*x3 + 0.18586206896552*x4
      - 1.13344827586207*x5 + 0.119999999999999*x6 + 2.73275862068966*x7
      - 0.0496551724137931*x8 + 0.18551724137931*x9 + 0.130000000000003*x10
      + 1.00862068965517*x11 - 0.0510344827586181*x12 - 0.0172413793103448*x13
      - 0.224827586206899*x14 + 0.452413793103448*x15 + 0.344827586206897*x16
      - 1.22*x17 - 0.36689655172414*x18 + 0.176206896551724*x19
      + 0.18551724137931*x20 + 0.198275862068966*x21 + 0.37862068965517*x22
      + 0.0579310344827587*x23 - 0.275862068965517*x24 + 0.431724137931037*x25
      + 0.34103448275862*x26 + 0.577586206896552*x27 + 0.543103448275862*x28
      - 0.443793103448276*x29 + 1.04241379310345*x30 - 0.0510344827586199*x31
      - 0.543103448275862*x32 - 0.207586206896554*x33 + 0.978275862068965*x34
      + 1.4748275862069*x35 - 0.0172413793103448*x36 + 0.96551724137931*x37
      - 0.444137931034483*x38 + 0.413793103448276*x39 - 1.00068965517241*x40
      + 1.64724137931035*x41 + 0.47*x42 - 0.082413793103449*x43
      - 0.207241379310343*x44 + 4.41448275862069*x45 - 0.0534482758620686*x46
      - 0.0537931034482758*x47 + 0.0551724137931033*x48 + 2.46206896551724*x49
      + 0.646551724137931*x50 + 0.245172413793101*x51 + x61 = 0;

e14:    0.31*x2 + 0.0782758620689645*x3 - 0.194137931034483*x4
      + 0.116551724137931*x5 - 0.5*x6 + 3.35275862068965*x7
      - 0.0496551724137931*x8 - 2.06448275862069*x9 - 0.241379310344828*x11
      - 0.0610344827586232*x12 - 0.267241379310345*x13 - 0.214827586206894*x14
      - 0.297586206896552*x15 + 1.0948275862069*x16 + 0.28*x17
      - 0.356896551724135*x18 + 0.0562068965517241*x19 - 0.0644827586206897*x20
      - 0.241724137931036*x21 - 0.491379310344828*x22 + 0.0579310344827587*x23
      + 0.104137931034483*x24 - 0.578275862068968*x25 - 1.28896551724138*x26
      + 0.457586206896551*x27 - 0.456896551724138*x28 - 0.0737931034482766*x29
      - 0.197586206896551*x30 + 0.318965517241379*x31 - 1.54310344827586*x32
      + 0.302413793103451*x33 - 0.521724137931035*x34 + 0.344827586206897*x35
      - 0.137241379310344*x36 + 2.09551724137931*x37 + 0.185862068965516*x38
      - 2.33620689655172*x39 - 0.680689655172413*x40 - 1.73275862068966*x41
      - 0.53*x42 - 0.012413793103447*x43 - 0.137241379310346*x44
      + 0.53448275862069*x45 + 0.00655172413793105*x46 - 0.0537931034482758*x47
      - 0.204827586206897*x48 - 1.16793103448276*x49 + 0.396551724137931*x50
      + 0.255172413793106*x51 + x62 = 0;

e15:    0.0599999999999987*x2 - 0.301724137931034*x3 - 0.324137931034485*x4
      + 0.736551724137935*x5 - 0.137241379310342*x7 + 0.0803448275862076*x8
      - 0.31448275862069*x9 - 0.25*x10 - 0.241379310344828*x11
      - 0.301034482758618*x12 - 0.517241379310345*x13 - 0.0948275862068965*x14
      + 0.0724137931034484*x15 + 2.8448275862069*x16 - 0.0899999999999975*x17
      + 0.13310344827586*x18 - 0.193793103448276*x19 - 0.0644827586206897*x20
      + 1.38827586206897*x21 - 0.241379310344828*x22 - 0.00206896551724138*x23
      + 0.224137931034483*x24 - 0.068275862068963*x25 + 1.71103448275862*x26
      + 0.197586206896553*x27 + 3.04310344827586*x28 + 0.556206896551724*x29
      - 0.207586206896552*x30 - 0.181034482758621*x31 + 4.82689655172414*x32
      + 2.17241379310345*x33 - 0.271724137931035*x34 + 2.46482758620689*x35
      - 0.0172413793103448*x36 - 2.03448275862069*x37 - 0.0741379310344817*x38
      - 0.706206896551729*x39 - 0.310689655172415*x40 + 1.13724137931034*x41
      - 0.53*x42 + 0.10758620689655*x43 + 1.73275862068966*x44
      + 2.15448275862069*x45 + 0.0665517241379307*x46 + 0.0662068965517234*x47
      - 0.0148275862068966*x48 + 2.08206896551724*x49 - 0.603448275862069*x50
      + 1.6251724137931*x51 + x63 = 0;

e16:  - 0.551724137931034*x3 + 0.0558620689655172*x4 - 0.883448275862069*x5
      + 0.380000000000001*x6 - 1.01724137931034*x7 + 0.0703448275862061*x8
      - 0.694482758620692*x9 - 0.5*x10 - 0.111379310344825*x11
      + 0.0689655172413793*x12 - 1.01724137931034*x13 - 0.414827586206897*x14
      + 0.142413793103448*x15 + 0.594827586206897*x16 - 0.22*x17
      - 0.486896551724138*x18 - 0.313793103448276*x19 - 0.0644827586206897*x20
      + 0.818275862068967*x21 - 0.241379310344828*x22 - 0.00206896551724138*x23
      - 0.275862068965517*x24 + 2.80172413793103*x25 + 0.0810344827586217*x26
      - 0.0424137931034493*x27 - 0.456896551724138*x28 - 0.563793103448275*x29
      + 0.302413793103449*x30 + 0.318965517241379*x31 + 2.83689655172413*x32
      + 0.422413793103448*x33 - 0.271724137931035*x34 + 1.9748275862069*x35
      - 0.0172413793103448*x36 - 1.91448275862069*x37 + 0.0558620689655173*x38
      + 1.16379310344828*x39 - 0.120689655172414*x40 - 0.102758620689653*x41
      - 0.03*x42 - 0.202413793103448*x43 + 0.102758620689654*x44
      - 0.21551724137931*x45 + 0.136551724137932*x46 + 0.0762068965517249*x47
      + 0.105172413793104*x48 + 0.582068965517242*x49 + 0.27655172413793*x50
      - 0.00482758620689902*x51 + x64 = 0;

e17:    0.380000000000001*x2 + 0.198275862068966*x3 - 0.0641379310344803*x4
      - 0.133448275862069*x5 + 0.369999999999999*x6 + 2.35275862068965*x7
      + 0.0803448275862076*x8 - 0.0644827586206896*x9 + 1.25862068965517*x11
      + 0.318965517241379*x12 - 0.767241379310345*x13 + 0.905172413793103*x14
      + 0.512413793103449*x15 + 2.0948275862069*x16 + 0.78*x17
      + 0.893103448275865*x18 + 0.0562068965517241*x19 - 0.0644827586206897*x20
      - 0.171724137931035*x21 + 0.508620689655172*x22 - 0.00206896551724138*x23
      + 0.344137931034483*x24 + 2.80172413793103*x25 + 0.711034482758621*x26
      + 0.197586206896553*x27 + 1.54310344827586*x28 - 0.0737931034482766*x29
      + 1.04241379310345*x30 + 0.0689655172413793*x31 + 3.95689655172414*x32
      + 1.29241379310345*x33 + 0.728275862068965*x34 + 1.8448275862069*x35
      + 0.352758620689654*x36 + 0.71551724137931*x37 - 0.0641379310344837*x38
      + 0.28379310344828*x39 + 0.629310344827586*x40 + 0.887241379310342*x41
      - 0.339999999999999*x42 + 0.427586206896553*x43 - 0.387241379310344*x44
      - 2.21551724137931*x45 - 0.0634482758620692*x46 - 0.0537931034482758*x47
      - 0.134827586206897*x48 + 2.83206896551724*x49 + 1.01655172413793*x50
      + 3.8751724137931*x51 + x65 = 0;

e18:  - 0.25*x2 - 0.681724137931033*x3 - 0.444137931034483*x4
      + 0.746551724137926*x5 + 0.130000000000001*x6 - 2.88724137931034*x7
      - 0.0496551724137931*x8 - 0.434482758620687*x9 - 0.491379310344828*x11
      - 0.0610344827586232*x12 - 0.267241379310345*x13 + 0.345172413793101*x14
      - 0.0475862068965517*x15 - 1.4051724137931*x16 - 0.100000000000003*x17
      - 1.23689655172414*x18 - 0.693793103448276*x19 - 0.0644827586206897*x20
      - 0.0517241379310345*x21 - 2.86137931034482*x22 - 0.00206896551724138*x23
      + 0.044137931034483*x24 - 0.698275862068966*x25 + 0.84103448275862*x26
      + 0.207586206896551*x27 - 2.45689655172414*x28 + 0.0562068965517242*x29
      - 0.827586206896552*x30 + 0.0689655172413793*x31 - 7.54310344827586*x32
      - 4.07758620689655*x33 - 0.271724137931035*x34 - 2.53517241379311*x35
      - 0.0172413793103448*x36 - 0.154482758620694*x37 + 0.0558620689655173*x38
      + 1.66379310344828*x39 - 1.24068965517241*x40 + 0.267241379310345*x41
      - 0.35*x42 - 0.452413793103448*x43 - 1.51724137931034*x44
      - 4.33551724137931*x45 - 0.173448275862069*x46 - 0.123793103448276*x47
      - 0.0748275862068966*x48 - 4.66793103448276*x49 - 0.47344827586207*x50
      - 2.3748275862069*x51 + x66 = 0;

e19:  - 0.301724137931034*x3 + 0.555862068965517*x4 + 2.11655172413793*x5
      - 2.26724137931034*x7 - 0.0496551724137931*x8 + 0.93551724137931*x9
      - 0.380000000000003*x10 - 0.12137931034483*x11 - 0.301034482758618*x12
      + 0.352758620689656*x13 + 0.465172413793106*x14 - 0.167586206896552*x15
      - 3.1551724137931*x16 - 0.22*x17 - 0.11689655172414*x18
      + 0.176206896551724*x19 - 0.0644827586206897*x20 - 0.431724137931033*x21
      + 0.12862068965517*x22 + 0.0579310344827587*x23 - 0.215862068965518*x24
      - 0.0782758620689681*x25 - 0.538965517241379*x26 - 0.552413793103447*x27
      + 1.54310344827586*x28 + 0.0562068965517242*x29 - 0.197586206896551*x30
      + 0.0689655172413793*x31 - 0.793103448275862*x32 + 1.80241379310345*x33
      + 0.0982758620689647*x34 - 0.655172413793103*x35 - 0.267241379310345*x36
      - 1.66448275862069*x37 - 0.0741379310344817*x38 + 3.54379310344827*x39
      - 1.06068965517241*x40 + 0.0172413793103448*x41 + 0.099999999999999*x42
      + 0.487586206896551*x43 + 0.232758620689655*x44 + 1.15448275862069*x45
      + 0.186551724137931*x46 - 0.0537931034482758*x47 - 0.0848275862068964*x48
      + 1.95206896551724*x49 + 0.516551724137932*x50 + 0.0051724137931061*x51
      + x67 = 0;

e20:  - 0.25*x2 - 0.301724137931034*x3 - 0.824137931034485*x4
      - 0.383448275862069*x5 - 0.130000000000001*x6 - 1.51724137931034*x7
      - 0.109655172413794*x8 - 0.444482758620692*x9 - 1.25*x10
      - 0.491379310344828*x11 - 0.181034482758621*x12 + 0.612758620689654*x13
      - 0.0948275862068965*x14 - 0.0475862068965517*x15 - 1.4051724137931*x16
      - 0.0899999999999975*x17 - 0.106896551724135*x18 - 0.193793103448276*x19
      - 0.0644827586206897*x20 - 0.301724137931034*x21 + 2.50862068965517*x22
      - 0.00206896551724138*x23 + 0.224137931034483*x24 - 0.068275862068963*x25
      - 0.538965517241379*x26 + 0.327586206896552*x27 - 0.956896551724138*x28
      + 0.306206896551724*x29 + 0.542413793103448*x30 + 0.568965517241379*x31
      - 2.54310344827586*x32 - 1.82758620689655*x33 - 0.391724137931034*x34
      - 1.1551724137931*x35 - 0.0172413793103448*x36 - 0.28448275862069*x37
      - 0.194137931034486*x38 - 2.83620689655172*x39 - 0.180689655172414*x40
      - 0.602758620689653*x41 + 0.47*x42 + 0.857586206896552*x43
      - 1.14724137931035*x44 - 1.21551724137931*x45 + 0.00655172413793105*x46
      + 0.0762068965517241*x47 - 0.0148275862068966*x48 - 1.84793103448276*x49
      - 0.47344827586207*x50 - 1.6248275862069*x51 + x68 = 0;

e21:  - 0.380000000000001*x2 - 0.0517241379310345*x3 - 0.0641379310344803*x4
      - 1.01344827586206*x5 + 0.130000000000001*x6 - 1.64724137931035*x7
      - 0.239655172413793*x8 + 0.315517241379313*x9 + 0.130000000000003*x10
      + 0.388620689655175*x11 - 0.181034482758621*x12 + 0.482758620689655*x13
      - 0.0948275862068965*x14 + 0.0724137931034484*x15 - 1.1551724137931*x16
      - 0.100000000000003*x17 + 1.01310344827586*x18 - 0.193793103448276*x19
      - 0.0644827586206897*x20 - 0.0517241379310345*x21 - 0.241379310344828*x22
      - 0.0620689655172414*x23 - 0.155862068965517*x24 + 0.0517241379310345*x25
      - 0.538965517241379*x26 - 0.172413793103448*x27 - 0.456896551724138*x28
      + 0.0562068965517242*x29 - 0.197586206896551*x30 + 0.318965517241379*x31
      - 0.0431034482758621*x32 - 0.0775862068965517*x33 - 0.271724137931035*x34
      + 0.224827586206899*x35 - 0.0172413793103448*x36 - 0.904482758620694*x37
      - 0.444137931034483*x38 + 0.0337931034482804*x39 - 0.500689655172415*x40
      - 0.232758620689655*x41 + 0.47*x42 - 0.202413793103448*x43
      - 0.517241379310345*x44 - 0.71551724137931*x45 - 0.0534482758620694*x46
      - 0.0537931034482758*x47 - 0.0748275862068966*x48 - 0.487931034482759*x49
      - 0.233448275862068*x50 - 1.1248275862069*x51 + x69 = 0;

e22:    0.198275862068966*x3 - 0.0741379310344854*x4 - 0.383448275862069*x5
      - 0.380000000000001*x6 + 0.482758620689655*x7 + 0.140344827586206*x8
      + 0.43551724137931*x9 + 0.369999999999997*x10 - 0.991379310344828*x11
      + 0.318965517241379*x12 + 0.482758620689655*x13 + 0.845172413793101*x14
      + 0.0824137931034482*x15 + 0.464827586206894*x16 - 0.0899999999999975*x17
      + 0.13310344827586*x18 + 0.0562068965517241*x19 - 0.0644827586206897*x20
      - 0.421724137931035*x21 + 1.63862068965517*x22 - 0.00206896551724138*x23
      - 0.0258620689655172*x24 - 0.0082758620689678*x25
      - 0.0389655172413793*x26 + 0.577586206896552*x27 - 0.206896551724138*x28
      - 0.193793103448276*x29 - 0.577586206896552*x30 - 0.931034482758621*x31
      - 1.29310344827586*x32 + 0.292413793103446*x33 + 0.478275862068965*x34
      - 0.785172413793106*x35 - 0.0172413793103448*x36 + 0.0855172413793149*x37
      + 0.555862068965517*x38 + 0.663793103448276*x39 - 0.490689655172413*x40
      - 0.232758620689655*x41 - 0.28*x42 - 0.202413793103448*x43
      - 0.387241379310344*x44 - 0.71551724137931*x45 + 0.00655172413793105*x46
      + 0.0662068965517243*x47 + 0.115172413793103*x48 - 0.917931034482758*x49
      + 0.02655172413793*x50 + 0.625172413793104*x51 + x70 = 0;

e23:    0.130000000000001*x2 + 0.328275862068965*x3 - 0.194137931034483*x4
      + 0.496551724137926*x5 - 0.25*x6 - 1.01724137931034*x7
      + 0.0103448275862073*x8 - 0.444482758620692*x9 + 0.5*x10
      - 0.741379310344828*x11 + 0.0689655172413793*x12 + 0.732758620689655*x13
      - 0.964827586206894*x14 + 0.262413793103448*x15 + 0.0948275862068966*x16
      + 0.53*x17 - 0.606896551724135*x18 + 0.0562068965517241*x19
      - 0.0644827586206897*x20 - 0.931724137931033*x21 + 1.50862068965517*x22
      - 0.00206896551724138*x23 + 0.224137931034483*x24 - 0.518275862068966*x25
      + 0.211034482758621*x26 + 0.0775862068965517*x27 + 1.04310344827586*x28
      + 0.0562068965517242*x29 + 0.0424137931034475*x30 - 0.12103448275862*x31
      - 1.04310344827586*x32 - 0.697586206896549*x33 - 0.521724137931035*x34
      + 0.974827586206899*x35 + 0.232758620689655*x36 + 1.09551724137931*x37
      - 0.194137931034483*x38 + 0.413793103448276*x39 - 0.370689655172414*x40
      + 0.517241379310345*x41 - 0.03*x42 + 0.0475862068965517*x43
      - 0.767241379310345*x44 + 0.60448275862069*x45 - 0.0534482758620686*x46
      + 0.0162068965517244*x47 + 0.0451724137931035*x48 + 0.212068965517244*x49
      + 0.146551724137931*x50 + 0.745172413793101*x51 + x71 = 0;

e24:    0.119999999999999*x2 + 0.0682758620689665*x3 - 0.194137931034483*x4
      + 0.736551724137935*x5 - 0.25*x6 - 0.637241379310342*x7
      + 0.200344827586207*x8 - 0.0644827586206896*x9 + 0.25*x10
      + 0.00862068965517241*x11 + 0.188965517241377*x12
      - 0.0172413793103448*x13 + 0.0251724137931009*x14 + 0.142413793103449*x15
      - 0.275172413793101*x16 - 0.22*x17 + 0.0131034482758622*x18
      + 0.0562068965517241*x19 - 0.0644827586206897*x20 - 0.481724137931034*x21
      - 0.991379310344828*x22 - 0.00206896551724138*x23 + 0.104137931034483*x24
      + 0.181724137931037*x25 + 0.211034482758621*x26 + 0.0775862068965517*x27
      - 0.456896551724138*x28 + 0.0562068965517242*x29 + 0.422413793103448*x30
      + 0.128965517241378*x31 + 1.95689655172414*x32 + 0.422413793103448*x33
      + 0.978275862068965*x34 + 0.214827586206894*x35 - 0.137241379310344*x36
      - 0.0344827586206897*x37 + 0.0558620689655173*x38 - 1.08620689655172*x39
      - 0.370689655172414*x40 + 0.137241379310342*x41 + 0.47*x42
      + 0.547586206896552*x43 + 0.102758620689654*x44 + 1.96448275862069*x45
      - 0.123448275862069*x46 + 0.0662068965517234*x47 - 0.0148275862068966*x48
      + 1.33206896551724*x49 + 0.266551724137932*x50 + 0.505172413793106*x51
      + x72 = 0;

e25:    0.0782758620689645*x3 + 0.68586206896552*x4 - 0.753448275862074*x5
      - 0.369999999999999*x6 - 1.39724137931035*x7 - 0.0496551724137931*x8
      - 0.684482758620687*x9 - 2*x10 + 0.00862068965517241*x11
      - 0.551034482758618*x12 - 0.517241379310345*x13 + 0.345172413793105*x14
      + 0.0724137931034484*x15 + 0.0948275862068966*x16 - 0.600000000000003*x17
      + 0.13310344827586*x18 + 0.0562068965517241*x19 - 0.0644827586206897*x20
      - 0.621724137931035*x21 - 2.62137931034483*x22 + 0.0579310344827587*x23
      - 0.0258620689655172*x24 - 0.0782758620689645*x25 - 0.168965517241378*x26
      - 0.172413793103448*x27 - 0.206896551724138*x28 + 0.0562068965517242*x29
      + 0.0524137931034491*x30 + 0.0689655172413793*x31 - 1.79310344827586*x32
      - 0.577586206896552*x33 - 1.15172413793104*x34 - 0.775172413793101*x35
      + 0.232758620689655*x36 + 0.71551724137931*x37 - 0.0641379310344802*x38
      - 0.456206896551729*x39 - 0.250689655172415*x40 + 0.397241379310347*x41
      - 0.28*x42 + 0.167586206896551*x43 + 1.23275862068966*x44
      - 0.0855172413793078*x45 + 0.136551724137931*x46 + 0.0762068965517249*x47
      - 0.0148275862068966*x48 + 0.452068965517239*x49 + 0.02655172413793*x50
      - 1.3748275862069*x51 + x73 = 0;

e26:    0.130000000000001*x2 - 0.0517241379310345*x3 - 0.324137931034485*x4
      - 1.38344827586207*x5 + 0.369999999999999*x6 - 1.26724137931034*x7
      + 0.0703448275862061*x8 - 1.19448275862069*x9 + 0.630000000000003*x10
      - 1.24137931034483*x11 - 0.0610344827586232*x12 - 0.517241379310345*x13
      - 1.4048275862069*x14 - 0.417586206896552*x15 + 2.3448275862069*x16
      + 0.53*x17 - 0.356896551724135*x18 + 0.0562068965517241*x19
      - 0.694482758620689*x20 + 1.82827586206896*x21 - 1.74137931034483*x22
      - 0.00206896551724138*x23 - 0.155862068965517*x24 - 0.448275862068969*x25
      - 0.0389655172413793*x26 - 0.922413793103448*x27 - 0.706896551724138*x28
      - 0.193793103448276*x29 - 0.577586206896552*x30 - 0.0510344827586199*x31
      - 3.17310344827586*x32 + 0.672413793103448*x33 - 0.0217241379310345*x34
      - 1.6551724137931*x35 - 0.267241379310345*x36 - 0.664482758620685*x37
      + 0.0558620689655173*x38 + 0.663793103448276*x39 - 0.930689655172413*x40
      - 1.73275862068966*x41 - 0.28*x42 - 0.702413793103448*x43
      - 0.517241379310345*x44 - 0.905517241379308*x45 + 0.00655172413793105*x46
      - 0.0537931034482758*x47 - 0.0148275862068966*x48 - 2.41793103448276*x49
      - 0.853448275862069*x50 - 2.7548275862069*x51 + x74 = 0;

e27:  - 0.130000000000001*x2 - 0.0517241379310345*x3 - 0.0641379310344803*x4
      - 0.0134482758620646*x5 - 2.13724137931034*x7 + 0.0803448275862076*x8
      + 1.18551724137931*x9 + 0.369999999999997*x10 - 1.24137931034483*x11
      + 0.318965517241379*x12 + 0.232758620689655*x13 - 0.414827586206897*x14
      - 1.04758620689655*x15 + 0.594827586206897*x16 + 0.78*x17
      - 0.736896551724138*x18 + 0.0562068965517241*x19 - 0.0644827586206897*x20
      + 0.698275862068966*x21 - 1.11137931034483*x22 + 0.0679310344827585*x23
      - 0.0858620689655177*x24 - 0.198275862068966*x25 - 0.40896551724138*x26
      - 0.422413793103448*x27 + 0.293103448275862*x28 - 0.313793103448275*x29
      + 0.172413793103448*x30 + 0.568965517241379*x31 + 2.70689655172413*x32
      + 1.92241379310345*x33 + 0.478275862068965*x34 + 3.8448275862069*x35
      - 0.267241379310345*x36 - 0.53448275862069*x37 + 0.175862068965515*x38
      + 0.663793103448276*x39 - 0.310689655172415*x40 - 1.23275862068966*x41
      - 0.53*x42 + 0.0475862068965517*x43 + 0.112758620689656*x44
      + 3.78448275862069*x45 - 0.123448275862069*x46 - 0.183793103448277*x47
      + 0.0451724137931035*x48 + 3.46206896551724*x49 + 0.016551724137932*x50
      + 0.625172413793104*x51 + x75 = 0;

e28:  - 0.0517241379310345*x3 + 0.0558620689655172*x4 + 0.116551724137931*x5
      - 0.0172413793103448*x7 - 0.179655172413794*x8 - 0.0644827586206896*x9
      + 0.00862068965517241*x11 + 0.0689655172413793*x12
      - 0.0172413793103448*x13 - 0.0948275862068965*x14 + 0.202413793103448*x15
      + 2.8448275862069*x16 + 0.0299999999999999*x17 + 0.0131034482758622*x18
      + 0.0562068965517241*x19 - 0.0644827586206897*x20 + 2.31827586206896*x21
      - 0.241379310344828*x22 - 0.00206896551724138*x23
      - 0.0258620689655172*x24 - 0.198275862068966*x25 - 0.0389655172413793*x26
      + 0.0775862068965517*x27 - 0.206896551724138*x28 + 0.0562068965517242*x29
      - 0.0775862068965517*x30 + 0.0689655172413793*x31 + 0.83689655172414*x32
      + 1.42241379310345*x33 - 0.141724137931034*x34 - 0.785172413793106*x35
      - 0.0172413793103448*x36 - 0.154482758620694*x37 + 0.18586206896552*x38
      + 0.78379310344828*x39 + 0.00931034482758697*x40 + 1.13724137931034*x41
      + 0.22*x42 - 0.012413793103447*x43 - 0.397241379310346*x44
      - 0.775517241379313*x45 + 0.00655172413793105*x46
      - 0.0537931034482758*x47 - 0.0148275862068966*x48 - 0.977931034482761*x49
      + 0.27655172413793*x50 - 0.494827586206894*x51 + x76 = 0;

e29:    0.130000000000001*x2 + 0.698275862068966*x3 + 0.925862068965515*x4
      + 0.866551724137931*x5 + 0.25*x6 + 0.982758620689655*x7
      - 0.169655172413792*x8 + 2.18551724137931*x9 + 1.5*x10
      + 1.25862068965517*x11 + 0.0689655172413793*x12 + 0.482758620689655*x13
      - 1.0248275862069*x14 + 0.262413793103448*x15 - 0.785172413793106*x16
      + 0.28*x17 - 0.11689655172414*x18 + 0.0562068965517241*x19
      + 1.06551724137931*x20 - 0.361724137931033*x21 - 0.37137931034483*x22
      - 0.132068965517241*x23 - 0.465862068965517*x24 - 2.31827586206896*x25
      - 0.788965517241379*x26 - 0.422413793103448*x27 + 0.543103448275862*x28
      + 0.306206896551724*x29 + 0.292413793103448*x30 - 0.181034482758621*x31
      + 15.2068965517241*x32 - 2.20758620689655*x33 - 0.271724137931035*x34
      - 1.1551724137931*x35 - 0.0172413793103448*x36 - 0.78448275862069*x37
      - 0.194137931034483*x38 + 0.163793103448276*x39 - 0.250689655172415*x40
      + 0.647241379310347*x41 - 0.03*x42 - 0.14241379310345*x43
      - 0.267241379310345*x44 - 1.96551724137931*x45 + 0.00655172413793105*x46
      + 0.136206896551725*x47 + 0.0451724137931035*x48 + 0.392068965517244*x49
      - 1.48344827586207*x50 + 1.6251724137931*x51 + x77 = 0;

e30:    0.198275862068966*x3 + 0.0558620689655172*x4 - 0.383448275862069*x5
      + 0.35275862068966*x7 + 0.0703448275862061*x8 + 0.315517241379313*x9
      - 0.25*x10 - 0.241379310344828*x11 + 0.198965517241382*x12
      + 0.732758620689655*x13 + 0.405172413793103*x14 - 0.107586206896551*x15
      - 6.0251724137931*x16 + 0.0299999999999999*x17 + 0.513103448275862*x18
      + 0.0562068965517241*x19 + 0.0555172413793113*x20 - 0.611724137931035*x21
      + 2.75862068965517*x22 - 0.00206896551724138*x23 - 0.0258620689655172*x24
      - 0.578275862068968*x25 - 0.288965517241379*x26 - 0.422413793103448*x27
      - 0.206896551724138*x28 + 0.176206896551723*x29 - 0.197586206896551*x30
      + 0.438965517241379*x31 - 0.673103448275865*x32 - 1.19758620689655*x33
      - 0.0217241379310345*x34 + 0.0948275862068965*x35 + 0.232758620689655*x36
      + 0.0855172413793149*x37 + 0.0558620689655173*x38 - 1.58620689655172*x39
      - 0.620689655172414*x40 - 0.362758620689658*x41 + 0.340000000000001*x42
      - 0.452413793103448*x43 - 0.637241379310344*x44 + 0.0344827586206897*x45
      - 0.113448275862069*x46 - 0.0537931034482758*x47 - 0.0148275862068966*x48
      - 0.547931034482761*x49 + 0.646551724137931*x50 + 0.495172413793101*x51
      + x78 = 0;

e31:  - 0.130000000000001*x2 + 0.698275862068966*x3 + 0.43586206896552*x4
      + 1.36655172413793*x5 + 0.130000000000001*x6 + 3.61275862068965*x7
      + 0.200344827586207*x8 + 0.43551724137931*x9 + 1.13*x10
      + 1.75862068965517*x11 - 0.181034482758621*x12 - 1.01724137931034*x13
      + 0.155172413793103*x14 + 0.202413793103448*x15 - 0.155172413793103*x16
      + 0.28*x17 + 0.143103448275865*x18 + 0.0562068965517241*x19
      + 0.565517241379309*x20 - 0.181724137931035*x21 + 0.758620689655172*x22
      - 0.122068965517241*x23 - 0.0258620689655172*x24 + 1.68172413793104*x25
      + 0.211034482758621*x26 - 0.0424137931034493*x27 + 1.29310344827586*x28
      - 0.063793103448275*x29 + 1.04241379310345*x30 - 0.181034482758621*x31
      + 2.83689655172414*x32 + 3.67241379310345*x33 - 0.0217241379310345*x34
      + 1.7248275862069*x35 - 0.0172413793103448*x36 + 0.0955172413793058*x37
      + 0.555862068965517*x38 + 0.913793103448276*x39 + 0.629310344827586*x40
      - 0.352758620689653*x41 - 0.150000000000001*x42 - 0.452413793103448*x43
      + 1.23275862068966*x44 + 3.15448275862069*x45 - 0.123448275862069*x46
      + 0.0662068965517243*x47 - 0.0148275862068966*x48 + 3.46206896551724*x49
      + 0.77655172413793*x50 + 2.25517241379311*x51 + x79 = 0;

e32:    0.130000000000001*x2 + 1.19827586206897*x3 + 1.05586206896552*x4
      + 1.86655172413793*x5 + 0.5*x6 - 0.267241379310345*x7
      - 0.109655172413792*x8 + 1.30551724137931*x9 + 1.12*x10
      + 0.508620689655172*x11 + 0.188965517241377*x12 + 0.732758620689655*x13
      + 0.0251724137931009*x14 + 0.202413793103448*x15 + 4.3448275862069*x16
      + 0.660000000000002*x17 + 0.88310344827586*x18 + 0.0562068965517241*x19
      + 0.0555172413793113*x20 - 0.171724137931034*x21 + 0.638620689655175*x22
      + 0.117931034482759*x23 - 0.0258620689655172*x24 - 1.69827586206897*x25
      + 0.711034482758621*x26 - 0.0524137931034473*x27 + 2.54310344827586*x28
      + 0.176206896551723*x29 - 0.0775862068965517*x30 - 2.18103448275862*x31
      - 1.54310344827586*x32 + 0.172413793103448*x33 + 0.228275862068965*x34
      - 1.1551724137931*x35 + 0.102758620689654*x36 + 1.58551724137931*x37
      + 0.305862068965517*x38 + 0.793793103448271*x39 + 0.509310344827587*x40
      + 1.63724137931034*x41 + 0.090000000000001*x42 - 0.202413793103448*x43
      - 1.26724137931034*x44 - 2.33551724137931*x45 + 0.136551724137931*x46
      - 0.173793103448276*x47 - 0.0148275862068966*x48 - 1.04793103448276*x49
      - 1.23344827586207*x50 + 0.995172413793101*x51 + x80 = 0;

e33:    x82 = 1;

e34: 2*x81*x82 - (x52^2 + x53^2 + x54^2 + x55^2 + x56^2 + x57^2 + x58^2 + x59^2
      + x60^2 + x61^2 + x62^2 + x63^2 + x64^2 + x65^2 + x66^2 + x67^2 + x68^2
      + x69^2 + x70^2 + x71^2 + x72^2 + x73^2 + x74^2 + x75^2 + x76^2 + x77^2
      + x78^2 + x79^2 + x80^2) >= 0;
