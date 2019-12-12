option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Linear Quadratic Control Problem  (ABEL,SEQ=64)

$Ontext

   Linear Quadratic Riccati Equations are solved as a General
   Nonlinear Programming Problem instead of the usual Matrix
   Recursion.


Kendrick, D, Caution and Probing in a Macroeconomic Model. Journal of
Economic Dynamics and Control 4, 2 (1982).

$Offtext

 Sets   n     states   / consumpt, invest /
        m     controls / gov-expend, money /
        k     horizon  / 1964-i, 1964-ii, 1964-iii, 1964-iv
                         1965-i, 1965-ii, 1965-iii, 1965-iv /
        ku(k) control horizon
        ki(k) initial period
        kt(k) terminal period ;

 Alias (n,np), (m,mp) ;

 ku(k) = yes$(ord(k) lt card(k));
 ki(k) = yes$(ord(k) eq 1);
 kt(k) = not ku(k);
 Display k, ki, kt, ku;

 Table a(n,np)  state vector matrix

          consumpt   invest
 consumpt    .914     -.016
 invest      .097      .424

 Table b(n,m)   control vector matrix

            gov-expend     money
 consumpt       .305        .424
 invest        -.101       1.459

 Table wk(n,np) penalty matrix for states - input

          consumpt  invest
 consumpt    .0625
 invest                1

 Table lambda(m,mp)  penalty matrix for controls

              gov-expend   money
 gov-expend      1
 money                      .444

 Parameter  c(n)     constant term    / consumpt -59.4,   invest -184.7 /
            xinit(n) initial value    / consumpt 387.9,   invest   85.3 /
            uinit(m) initial controls / gov-expend 110.5, money   147.1 /
            xtilde(n,k)  desired path for x
            utilde(m,k)  desired path for u
            w(n,np,k)    penalty matrix on states ;

  w(n,np,ku) = wk(n,np);
  w(n,np,kt) = 100*wk(n,np);

 xtilde(n,k) = xinit(n)*1.0075**(ord(k)-1);
 utilde(m,k) = uinit(m)*1.0075**(ord(k)-1);

 Display w, xtilde, utilde;

 Variables x(n,k)  state variable
           u(m,k)  control variable
           j       criterion

 Equations  criterion   criterion definition
            stateq(n,k) state equation ;

 criterion..

 j =e= .5*sum((k,n,np),
          (x(n,k)-xtilde(n,k))*w(n,np,k)*(x(np,k)-xtilde(np,k)))
     + .5*sum((ku,m,mp),
          (u(m,ku)-utilde(m,ku))*lambda(m,mp)*(u(mp,ku)-utilde(mp,ku)));

 stateq(n,k+1)..

  x(n,k+1) =e= sum(np, a(n,np)*x(np,k)) + sum(m, b(n,m)*u(m,k)) + c(n);

 Model abel /all/;

 x.l(n,k)   = xinit(n); u.l(m,k) = uinit(m);
 x.fx(n,ki) = xinit(n);

 Solve abel minimizing j using nlp;

 Display x.l, u.l;
