#  MINLP written by GAMS Convert at 12/13/18 11:30:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         74       23       27       24        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         47       38        9        0        0        0        0        0
#  FX      5        1        4        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        291      228       63        0


var x1 >= 0;
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
var x13 := 643, >= 643, <= 643;
var x14 := 643, >= 643, <= 4018.36;
var x15 := 643, >= 643, <= 4018.36;
var x16 := 536, >= 536, <= 3348.63;
var x17 := 536, >= 536, <= 3348.63;
var x18 := 536, >= 536, <= 3348.63;
var x19 := 214, >= 214, <= 1339.45;
var x20 := 214, >= 214, <= 1339.45;
var x21 := 214, >= 214, <= 1339.45;
var x22 := 643, >= 643, <= 4018.36;
var x23 := 536, >= 536, <= 3348.63;
var x24 := 214, >= 214, <= 1339.45;
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
var b38 binary := 1, >= 1, <= 1;
var b39 binary >= 0, <= 0;
var b40 binary := 0.550375356, >= 0, <= 1;
var b41 binary >= 0, <= 0;
var b42 binary := 0.292212117, >= 0, <= 1;
var b43 binary := 0.224052867, >= 0, <= 1;
var b44 binary >= 0, <= 0;
var b45 binary := 0.856270347, >= 0, <= 1;
var b46 binary := 0.067113723, >= 0, <= 1;
var x47;

minimize obj: x47;

subject to

e1:    x1 + x2 + x3 - x37 + 0.4*b38 + 0.4*b39 + 0.4*b40 + 0.2*b41 + 0.2*b42
     + 0.2*b43 + 0.1*b44 + 0.1*b45 + 0.1*b46 = 0;

e2:    b38 + b41 + b44 <= 1;

e3:    b39 + b42 + b45 <= 1;

e4:    b40 + b43 + b46 <= 1;

e5:    11.4794520547945*x1 - x4 - x13 + x14 + 4.59178082191781*b38
     + 2.2958904109589*b41 + 1.14794520547945*b44 = 0;

e6:    11.4794520547945*x2 - x5 - x14 + x15 + 4.59178082191781*b39
     + 2.2958904109589*b42 + 1.14794520547945*b45 = 0;

e7:    11.4794520547945*x3 - x6 + x13 - x15 + 4.59178082191781*b40
     + 2.2958904109589*b43 + 1.14794520547945*b46 = 0;

e8:    9.56712328767123*x1 - x7 - x16 + x17 + 3.82684931506849*b38
     + 1.91342465753425*b41 + 0.956712328767123*b44 = 0;

e9:    9.56712328767123*x2 - x8 - x17 + x18 + 3.82684931506849*b39
     + 1.91342465753425*b42 + 0.956712328767123*b45 = 0;

e10:    9.56712328767123*x3 - x9 + x16 - x18 + 3.82684931506849*b40
      + 1.91342465753425*b43 + 0.956712328767123*b46 = 0;

e11:    3.82739726027397*x1 - x10 - x19 + x20 + 1.53095890410959*b38
      + 0.765479452054795*b41 + 0.382739726027397*b44 = 0;

e12:    3.82739726027397*x2 - x11 - x20 + x21 + 1.53095890410959*b39
      + 0.765479452054795*b42 + 0.382739726027397*b45 = 0;

e13:    3.82739726027397*x3 - x12 + x19 - x21 + 1.53095890410959*b40
      + 0.765479452054795*b43 + 0.382739726027397*b46 = 0;

e14:    x13 - x22 <= 0;

e15:    x14 - x22 <= 0;

e16:    x15 - x22 <= 0;

e17:    x16 - x23 <= 0;

e18:    x17 - x23 <= 0;

e19:    x18 - x23 <= 0;

e20:    x19 - x24 <= 0;

e21:    x20 - x24 <= 0;

e22:    x21 - x24 <= 0;

e23: -50*x1*b38 + x4 <= 0;

e24: -50*x2*b39 + x5 <= 0;

e25: -50*x3*b40 + x6 <= 0;

e26: -50*x1*b41 + x7 <= 0;

e27: -50*x2*b42 + x8 <= 0;

e28: -50*x3*b43 + x9 <= 0;

e29: -50*x1*b44 + x10 <= 0;

e30: -50*x2*b45 + x11 <= 0;

e31: -50*x3*b46 + x12 <= 0;

e32: -15*x1*b38 + x4 >= 0;

e33: -15*x2*b39 + x5 >= 0;

e34: -15*x3*b40 + x6 >= 0;

e35: -15*x1*b41 + x7 >= 0;

e36: -15*x2*b42 + x8 >= 0;

e37: -15*x3*b43 + x9 >= 0;

e38: -7*x1*b44 + x10 >= 0;

e39: -7*x2*b45 + x11 >= 0;

e40: -7*x3*b46 + x12 >= 0;

e41:    x1 - 40*b38 - 40*b41 - 40*b44 <= 0;

e42:    x2 - 40*b39 - 40*b42 - 40*b45 <= 0;

e43:    x3 - 40*b40 - 40*b43 - 40*b46 <= 0;

e44:    x1 - b38 - b41 - b44 >= 0;

e45:    x2 - b39 - b42 - b45 >= 0;

e46:    x3 - b40 - b43 - b46 >= 0;

e47:    x35 - 10*b38 - 10*b39 - 10*b40 - 20*b41 - 20*b42 - 20*b43 - 30*b44
      - 30*b45 - 30*b46 = 0;

e48: -0.3271*(sqrt(x22) + sqrt(x23) + sqrt(x24)) + x34 = 0;

e49: -(0.0515901369863014*x25*(x1 + 0.4*b38 + 0.2*b41 + 0.1*b44) + 
     0.0515901369863014*x26*(x2 + 0.4*b39 + 0.2*b42 + 0.1*b45) + 
     0.0515901369863014*x27*(x3 + 0.4*b40 + 0.2*b43 + 0.1*b46) + 
     0.0528586301369863*x28*(x1 + 0.4*b38 + 0.2*b41 + 0.1*b44) + 
     0.0528586301369863*x29*(x2 + 0.4*b39 + 0.2*b42 + 0.1*b45) + 
     0.0528586301369863*x30*(x3 + 0.4*b40 + 0.2*b43 + 0.1*b46) + 
     0.0541268493150685*x31*(x1 + 0.4*b38 + 0.2*b41 + 0.1*b44) + 
     0.0541268493150685*x32*(x2 + 0.4*b39 + 0.2*b42 + 0.1*b45) + 
     0.0541268493150685*x33*(x3 + 0.4*b40 + 0.2*b43 + 0.1*b46)) + x36 = 0;

e50:  - 0.5*x13 - 0.5*x14 + x25 = -643;

e51:  - 0.5*x14 - 0.5*x15 + x26 = -643;

e52:  - 0.5*x13 - 0.5*x15 + x27 = -643;

e53:  - 0.5*x16 - 0.5*x17 + x28 = -536;

e54:  - 0.5*x17 - 0.5*x18 + x29 = -536;

e55:  - 0.5*x16 - 0.5*x18 + x30 = -536;

e56:  - 0.5*x19 - 0.5*x20 + x31 = -214;

e57:  - 0.5*x20 - 0.5*x21 + x32 = -214;

e58:  - 0.5*x19 - 0.5*x21 + x33 = -214;

e59: (24.8739726027397*x47 - x34)*x37 - x35 - x36 = 0;

e60:  - x1 + 40*b38 + 40*b41 + 40*b44 >= 0;

e61:  - x2 + 40*b39 + 40*b42 + 40*b45 >= 0;

e62:  - x3 + 40*b40 + 40*b43 + 40*b46 >= 0;

e63:  - b38 - b39 >= -1;

e64:  - b39 - b40 >= -1;

e65:  - b40 >= -1;

e66:  - b41 - b42 >= -1;

e67:  - b42 - b43 >= -1;

e68:  - b43 >= -1;

e69:  - b44 - b45 >= -1;

e70:  - b45 - b46 >= -1;

e71:  - b46 >= -1;

e72:    b38 - b39 + b41 - b42 + b44 - b45 >= 0;

e73:    b39 - b40 + b42 - b43 + b45 - b46 >= 0;

e74:    b40 + b43 + b46 >= 0;