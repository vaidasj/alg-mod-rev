#  MIQCP written by GAMS Convert at 12/13/18 11:34:55
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         44       12       22       10        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       33       10        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        179      137       42        0
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
var b12 binary >= 0, <= 1;
var b13 binary >= 0, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 1;
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var x22;
var x23;
var x24;
var x25;
var x26;
var x27;
var x28;
var x29;
var x30;
var x31;
var x32 >= 0;
var x33 := 0.5, >= 0.5, <= 0.5;
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

minimize obj:    x32 + 1452.87264558178*x34 + 1452.87264558178*x35
     + 1452.87264558178*x36 + 1452.87264558178*x37 + 1452.87264558178*x38
     + 1452.87264558178*x39 + 1452.87264558178*x40 + 1452.87264558178*x41
     + 1452.87264558178*x42 + 1452.87264558178*x43;

subject to

e2:  - 9.87743272359322*x2 - 0.60744529149446*x3 - 0.30372264574723*x4
     - 0.809927055325946*x5 - 0.60744529149446*x6 - 0.506204409578716*x7
     - 0.506204409578716*x8 - 0.809927055325946*x9 - 0.91116793724169*x10
     - 0.809927055325946*x11 + x22 = 0;

e3:  - 1.09301757851895*x3 - 6.23549450884011*x4 - 4.12437431234793*x5
     - 4.23690369565354*x6 - 7.03786349464858*x7 - 0.633574910850047*x8
     - 6.86906941969016*x9 - 3.15321125158105*x10 - 6.86906941969016*x11 + x23
     = 0;

e4:  - 7.78396030268624*x4 + 2.82163650777779*x5 + 3.28928766645632*x6
     + 5.01522405040292*x7 - 0.115057290256277*x8 + 5.27726712856556*x9
     + 1.27680170435039*x10 + 5.40573643738962*x11 + x24 = 0;

e5:  - 19.8478109453859*x5 + 1.272066595968*x6 + 2.04495656699716*x7
     - 0.367877401526204*x8 + 1.75722778630245*x9 + 0.823550435809287*x10
     + 2.17855856756178*x11 + x25 = 0;

e6:  - 20.9238086333112*x6 + 1.92240703366328*x7 - 0.0886327028593701*x8
     + 2.15970874257105*x9 + 0.772360159642639*x10 + 2.06214205621627*x11 + x26
     = 0;

e7:  - 18.5942448971665*x7 - 0.31108888369893*x8 + 4.40811298406918*x9
     + 1.51796805048267*x10 + 4.04877290837993*x11 + x27 = 0;

e8:  - 16.4818934933157*x8 - 0.245985664690768*x9 + 0.0284240686306186*x10
     - 0.188306921712992*x11 + x28 = 0;

e9:  - 7.78651860346819*x9 + 4.74348724367373*x10 + 12.2703400205275*x11 + x29
     = 0;

e10:  - 9.43822042084945*x10 + 9.3271064009653*x11 + x30 = 0;

e11:  - 1.5870939997747*x11 + x31 = 0;

e12: 2*x34*b12 - x2^2 >= 0;

e13: 2*x35*b13 - x3^2 >= 0;

e14: 2*x36*b14 - x4^2 >= 0;

e15: 2*x37*b15 - x5^2 >= 0;

e16: 2*x38*b16 - x6^2 >= 0;

e17: 2*x39*b17 - x7^2 >= 0;

e18: 2*x40*b18 - x8^2 >= 0;

e19: 2*x41*b19 - x9^2 >= 0;

e20: 2*x42*b20 - x10^2 >= 0;

e21: 2*x43*b21 - x11^2 >= 0;

e22: 2*x33*x32 - (x22^2 + x23^2 + x24^2 + x25^2 + x26^2 + x27^2 + x28^2 + x29^2
      + x30^2 + x31^2) >= 0;

e23:    x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 = 1;

e24:    0.00510823*x2 + 0.00428357*x3 + 0.00233976*x4 + 0.00459156*x5
      + 0.0077475*x6 + 0.00851154*x7 + 0.00961483*x8 + 0.0026363*x9
      + 0.0062024*x10 + 0.00557745*x11 >= 0.0044635;

e25:    x2 - 0.11665305*b12 >= 0;

e26:    x3 - 0.08608984*b13 >= 0;

e27:    x4 - 0.09019614*b14 >= 0;

e28:    x5 - 0.12100282*b15 >= 0;

e29:    x6 - 0.07911833*b16 >= 0;

e30:    x7 - 0.10907854*b17 >= 0;

e31:    x8 - 0.12264871*b18 >= 0;

e32:    x9 - 0.1130799*b19 >= 0;

e33:    x10 - 0.07906355*b20 >= 0;

e34:    x11 - 0.09599385*b21 >= 0;

e35:    x2 - 0.39835244*b12 <= 0;

e36:    x3 - 0.39486243*b13 <= 0;

e37:    x4 - 0.38205737*b14 <= 0;

e38:    x5 - 0.39297053*b15 <= 0;

e39:    x6 - 0.39886594*b16 <= 0;

e40:    x7 - 0.40689465*b17 <= 0;

e41:    x8 - 0.39141883*b18 <= 0;

e42:    x9 - 0.39760512*b19 <= 0;

e43:    x10 - 0.40413791*b20 <= 0;

e44:    x11 - 0.38879835*b21 <= 0;
