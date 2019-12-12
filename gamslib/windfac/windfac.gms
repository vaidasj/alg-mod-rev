option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Winding Factor of Electrical Machines (WINDFAC, SEQ=224)
$ontext
This model determines the optimal winding factor for electrical
machines.


Michna, M, and Gdanska, P, Winding Factor of Electrical Machines, 1984.

$offtext


scalar ms  number of phases       /3/
       p   number of pole pairs   /2/
       pi  pi                     /3.141592654/
       K   harmonic order         /5/
       ns  coil span              /1/;

Variables
    q      number of slots per one phase and per one pole
    Nz     number of slots
    alfae
    tauz   slots pitch
    s      span
Integer variables q,Nz,s;

q.lo = 1; q.up = 10;
Nz.lo = 1;
s.lo=1;
alfae.l = 1.5;
tauz.l = 1.0;


variables kz1, kz3, kz5  coil-group factor
          ks1, ks3, ks5  coil-span factor
          kw, kw3, kw5   winding factor
          kw1            winding factor for first harmonic;

kw1.lo = 0.8;

equations
  def_Nz, def_alfae, def_tauz, def_s, def_kz1, def_ks1, def_kw1,
  def_kz3, def_ks3, def_kw3, def_kz5, def_ks5, def_kw5, def_kw;


def_Nz..      Nz =e= 2 * ms * q * p;
def_alfae..   alfae =e= (2 * pi * p)/Nz;
def_tauz..    tauz =e= Nz / (2*p);
def_s..       s =e= tauz - ns;
def_kz1..     (q * sin( alfae / 2)) * kz1 =e= sin(q * alfae / 2);
def_ks1..     ks1 =e= sin((s * pi) / (tauz * 2));
def_kw1..     kw1 =e= ks1 * kz1;
def_kz3..     (q * sin(3 * alfae / 2)) * kz3 =e= sin(3 * q * alfae / 2);
def_ks3..     ks3 =e= sin((3 * s * pi) / (tauz * 2));
def_kw3..     kw3 =e= ks3 * kz3;
def_kz5..     (q * sin(5 * alfae / 2)) * kz5 =e= sin(5 * q * alfae / 2);
def_ks5..     ks5 =e= sin((5 * s * pi) / (tauz * 2));
def_kw5..     kw5 =e= ks5 * kz5;
def_kw..      kw =e= kw3 * kw3 + kw5 * kw5;

model wind /all/;
solve wind minimizing kw using minlp;
