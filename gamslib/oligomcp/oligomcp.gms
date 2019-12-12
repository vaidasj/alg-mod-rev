option MCP=convert;
option MCP=convert;
option MCP=convert;
$title Oligopolistic Competition - Examples from MP (OLIGOMCP,SEQ=133)
$Ontext
Oligopolistic Competition - Examples from MP


Murphy, F H, Sherali, H D, and Soyster, A L, A mathematical programming
approach for determining oligopolistic market equilibrium. Mathematical
Programming 24 (1982), 92-106.

Harker, P T, Oligopolistic equilibrium. Mathematical Programming 30
(1984), 105-111.

$Offtext


sets    f               firms   /f1*f5/;

*       f(q) = c q + beta/(beta+1) l^(-1/beta) q^(beta+1)/beta

*       f'(q) = c + (q/l)^(1/beta)

table data(f,*)  cost function data

                        c       l       beta
                f1      10      5       1.2
                f2      8       5       1.1
                f3      6       5       1.0
                f4      4       5       0.9
                f5      2       5       0.8

parameter       c(f), l(f), beta(f);

c(f) = data(f,"c"); l(f) = data(f,"l"); beta(f) = data(f,"beta");

positive variables

                p               price,
                q(f)            supply;

equations
                demand          supply - demand balance,
                profit(f)       nash first order condition;

demand..        sum(f, q(f)) =g= 5000 * p**(-1.1);

profit(f)..     c(f) + (q(f)/l(f))**(1/beta(f))
                        =g= p - q(f) * p**2.1 / 5500;

model oligop /demand.p, profit.q/;

*       initial guess:

 q.l(f) = 10;
 p.l    = (5000/sum(f, q.l(f)))**(1/1.1);

 solve oligop using mcp;

