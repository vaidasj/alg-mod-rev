#  RMIQCP written by GAMS Convert at 12/13/18 11:30:31
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24       17        0        7        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        113        1      112        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        337      225      112        0
# 
#  Reformulation has removed 1 variable and 1 equation
# 
#  Please note that the model below has been relaxed


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b2 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b3 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b4 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b5 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b6 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b7 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b8 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b9 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b10 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b11 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b12 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b13 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b14 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b15 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b16 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b17 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b18 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b19 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b20 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b21 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b22 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b23 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b24 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b25 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b26 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b27 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b28 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b29 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b30 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b31 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b32 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b33 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b34 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b35 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b36 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b37 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b38 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b39 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b40 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b41 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b42 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b43 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b44 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b45 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b46 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b47 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b48 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b49 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b50 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b51 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b52 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b53 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b54 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b55 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b56 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b57 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b58 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b59 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b60 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b61 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b62 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b63 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b64 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b65 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b66 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b67 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b68 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b69 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b70 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b71 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b72 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b73 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b74 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b75 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b76 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b77 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b78 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b79 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b80 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b81 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b82 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b83 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b84 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b85 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b86 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b87 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b88 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b89 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b90 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b91 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b92 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b93 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b94 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b95 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b96 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b97 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b98 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b99 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b100 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b101 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b102 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b103 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b104 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b105 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b106 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b107 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b108 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b109 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b110 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b111 = Var(within=CannotHandle,bounds=(0,1),initialize=0)
m.b112 = Var(within=CannotHandle,bounds=(0,1),initialize=0)

m.obj = Objective(expr=10000*m.b1*m.b16 + 15000*m.b1*m.b17 + 10000*m.b1*m.b18 + 5000*m.b1*m.b19 + 8000*m.b1*m.b20 + 9000
                       *m.b1*m.b21 + 40000*m.b1*m.b44 + 60000*m.b1*m.b45 + 40000*m.b1*m.b46 + 20000*m.b1*m.b47 + 32000*
                       m.b1*m.b48 + 36000*m.b1*m.b49 + 45000*m.b1*m.b65 + 67500*m.b1*m.b66 + 45000*m.b1*m.b67 + 22500*
                       m.b1*m.b68 + 36000*m.b1*m.b69 + 40500*m.b1*m.b70 + 90000*m.b1*m.b79 + 135000*m.b1*m.b80 + 90000*
                       m.b1*m.b81 + 45000*m.b1*m.b82 + 72000*m.b1*m.b83 + 81000*m.b1*m.b84 + 40000*m.b1*m.b86 + 60000*
                       m.b1*m.b87 + 40000*m.b1*m.b88 + 20000*m.b1*m.b89 + 32000*m.b1*m.b90 + 36000*m.b1*m.b91 + 50000*
                       m.b1*m.b100 + 75000*m.b1*m.b101 + 50000*m.b1*m.b102 + 25000*m.b1*m.b103 + 40000*m.b1*m.b104 + 
                       45000*m.b1*m.b105 + 10000*m.b2*m.b15 + 8000*m.b2*m.b17 + 6000*m.b2*m.b18 + 5000*m.b2*m.b19 + 
                       10000*m.b2*m.b20 + 7000*m.b2*m.b21 + 40000*m.b2*m.b43 + 32000*m.b2*m.b45 + 24000*m.b2*m.b46 + 
                       20000*m.b2*m.b47 + 40000*m.b2*m.b48 + 28000*m.b2*m.b49 + 45000*m.b2*m.b64 + 36000*m.b2*m.b66 + 
                       27000*m.b2*m.b67 + 22500*m.b2*m.b68 + 45000*m.b2*m.b69 + 31500*m.b2*m.b70 + 90000*m.b2*m.b78 + 
                       72000*m.b2*m.b80 + 54000*m.b2*m.b81 + 45000*m.b2*m.b82 + 90000*m.b2*m.b83 + 63000*m.b2*m.b84 + 
                       40000*m.b2*m.b85 + 32000*m.b2*m.b87 + 24000*m.b2*m.b88 + 20000*m.b2*m.b89 + 40000*m.b2*m.b90 + 
                       28000*m.b2*m.b91 + 50000*m.b2*m.b99 + 40000*m.b2*m.b101 + 30000*m.b2*m.b102 + 25000*m.b2*m.b103
                        + 50000*m.b2*m.b104 + 35000*m.b2*m.b105 + 15000*m.b3*m.b15 + 8000*m.b3*m.b16 + 7000*m.b3*m.b18
                        + 12000*m.b3*m.b19 + 7000*m.b3*m.b20 + 10000*m.b3*m.b21 + 60000*m.b3*m.b43 + 32000*m.b3*m.b44 + 
                       28000*m.b3*m.b46 + 48000*m.b3*m.b47 + 28000*m.b3*m.b48 + 40000*m.b3*m.b49 + 67500*m.b3*m.b64 + 
                       36000*m.b3*m.b65 + 31500*m.b3*m.b67 + 54000*m.b3*m.b68 + 31500*m.b3*m.b69 + 45000*m.b3*m.b70 + 
                       135000*m.b3*m.b78 + 72000*m.b3*m.b79 + 63000*m.b3*m.b81 + 108000*m.b3*m.b82 + 63000*m.b3*m.b83 + 
                       90000*m.b3*m.b84 + 60000*m.b3*m.b85 + 32000*m.b3*m.b86 + 28000*m.b3*m.b88 + 48000*m.b3*m.b89 + 
                       28000*m.b3*m.b90 + 40000*m.b3*m.b91 + 75000*m.b3*m.b99 + 40000*m.b3*m.b100 + 35000*m.b3*m.b102 + 
                       60000*m.b3*m.b103 + 35000*m.b3*m.b104 + 50000*m.b3*m.b105 + 10000*m.b4*m.b15 + 6000*m.b4*m.b16 + 
                       7000*m.b4*m.b17 + 6000*m.b4*m.b19 + 10000*m.b4*m.b20 + 8000*m.b4*m.b21 + 40000*m.b4*m.b43 + 24000
                       *m.b4*m.b44 + 28000*m.b4*m.b45 + 24000*m.b4*m.b47 + 40000*m.b4*m.b48 + 32000*m.b4*m.b49 + 45000*
                       m.b4*m.b64 + 27000*m.b4*m.b65 + 31500*m.b4*m.b66 + 27000*m.b4*m.b68 + 45000*m.b4*m.b69 + 36000*
                       m.b4*m.b70 + 90000*m.b4*m.b78 + 54000*m.b4*m.b79 + 63000*m.b4*m.b80 + 54000*m.b4*m.b82 + 90000*
                       m.b4*m.b83 + 72000*m.b4*m.b84 + 40000*m.b4*m.b85 + 24000*m.b4*m.b86 + 28000*m.b4*m.b87 + 24000*
                       m.b4*m.b89 + 40000*m.b4*m.b90 + 32000*m.b4*m.b91 + 50000*m.b4*m.b99 + 30000*m.b4*m.b100 + 35000*
                       m.b4*m.b101 + 30000*m.b4*m.b103 + 50000*m.b4*m.b104 + 40000*m.b4*m.b105 + 5000*m.b5*m.b15 + 5000*
                       m.b5*m.b16 + 12000*m.b5*m.b17 + 6000*m.b5*m.b18 + 8000*m.b5*m.b20 + 10000*m.b5*m.b21 + 20000*m.b5
                       *m.b43 + 20000*m.b5*m.b44 + 48000*m.b5*m.b45 + 24000*m.b5*m.b46 + 32000*m.b5*m.b48 + 40000*m.b5*
                       m.b49 + 22500*m.b5*m.b64 + 22500*m.b5*m.b65 + 54000*m.b5*m.b66 + 27000*m.b5*m.b67 + 36000*m.b5*
                       m.b69 + 45000*m.b5*m.b70 + 45000*m.b5*m.b78 + 45000*m.b5*m.b79 + 108000*m.b5*m.b80 + 54000*m.b5*
                       m.b81 + 72000*m.b5*m.b83 + 90000*m.b5*m.b84 + 20000*m.b5*m.b85 + 20000*m.b5*m.b86 + 48000*m.b5*
                       m.b87 + 24000*m.b5*m.b88 + 32000*m.b5*m.b90 + 40000*m.b5*m.b91 + 25000*m.b5*m.b99 + 25000*m.b5*
                       m.b100 + 60000*m.b5*m.b101 + 30000*m.b5*m.b102 + 40000*m.b5*m.b104 + 50000*m.b5*m.b105 + 8000*
                       m.b6*m.b15 + 10000*m.b6*m.b16 + 7000*m.b6*m.b17 + 10000*m.b6*m.b18 + 8000*m.b6*m.b19 + 7000*m.b6*
                       m.b21 + 32000*m.b6*m.b43 + 40000*m.b6*m.b44 + 28000*m.b6*m.b45 + 40000*m.b6*m.b46 + 32000*m.b6*
                       m.b47 + 28000*m.b6*m.b49 + 36000*m.b6*m.b64 + 45000*m.b6*m.b65 + 31500*m.b6*m.b66 + 45000*m.b6*
                       m.b67 + 36000*m.b6*m.b68 + 31500*m.b6*m.b70 + 72000*m.b6*m.b78 + 90000*m.b6*m.b79 + 63000*m.b6*
                       m.b80 + 90000*m.b6*m.b81 + 72000*m.b6*m.b82 + 63000*m.b6*m.b84 + 32000*m.b6*m.b85 + 40000*m.b6*
                       m.b86 + 28000*m.b6*m.b87 + 40000*m.b6*m.b88 + 32000*m.b6*m.b89 + 28000*m.b6*m.b91 + 40000*m.b6*
                       m.b99 + 50000*m.b6*m.b100 + 35000*m.b6*m.b101 + 50000*m.b6*m.b102 + 40000*m.b6*m.b103 + 35000*
                       m.b6*m.b105 + 9000*m.b7*m.b15 + 7000*m.b7*m.b16 + 10000*m.b7*m.b17 + 8000*m.b7*m.b18 + 10000*m.b7
                       *m.b19 + 7000*m.b7*m.b20 + 36000*m.b7*m.b43 + 28000*m.b7*m.b44 + 40000*m.b7*m.b45 + 32000*m.b7*
                       m.b46 + 40000*m.b7*m.b47 + 28000*m.b7*m.b48 + 40500*m.b7*m.b64 + 31500*m.b7*m.b65 + 45000*m.b7*
                       m.b66 + 36000*m.b7*m.b67 + 45000*m.b7*m.b68 + 31500*m.b7*m.b69 + 81000*m.b7*m.b78 + 63000*m.b7*
                       m.b79 + 90000*m.b7*m.b80 + 72000*m.b7*m.b81 + 90000*m.b7*m.b82 + 63000*m.b7*m.b83 + 36000*m.b7*
                       m.b85 + 28000*m.b7*m.b86 + 40000*m.b7*m.b87 + 32000*m.b7*m.b88 + 40000*m.b7*m.b89 + 28000*m.b7*
                       m.b90 + 45000*m.b7*m.b99 + 35000*m.b7*m.b100 + 50000*m.b7*m.b101 + 40000*m.b7*m.b102 + 50000*m.b7
                       *m.b103 + 35000*m.b7*m.b104 + 25000*m.b8*m.b23 + 37500*m.b8*m.b24 + 25000*m.b8*m.b25 + 12500*m.b8
                       *m.b26 + 20000*m.b8*m.b27 + 22500*m.b8*m.b28 + 20000*m.b8*m.b37 + 30000*m.b8*m.b38 + 20000*m.b8*
                       m.b39 + 10000*m.b8*m.b40 + 16000*m.b8*m.b41 + 18000*m.b8*m.b42 + 29000*m.b8*m.b44 + 43500*m.b8*
                       m.b45 + 29000*m.b8*m.b46 + 14500*m.b8*m.b47 + 23200*m.b8*m.b48 + 26100*m.b8*m.b49 + 50000*m.b8*
                       m.b72 + 75000*m.b8*m.b73 + 50000*m.b8*m.b74 + 25000*m.b8*m.b75 + 40000*m.b8*m.b76 + 45000*m.b8*
                       m.b77 + 50000*m.b8*m.b93 + 75000*m.b8*m.b94 + 50000*m.b8*m.b95 + 25000*m.b8*m.b96 + 40000*m.b8*
                       m.b97 + 45000*m.b8*m.b98 + 50000*m.b8*m.b107 + 75000*m.b8*m.b108 + 50000*m.b8*m.b109 + 25000*m.b8
                       *m.b110 + 40000*m.b8*m.b111 + 45000*m.b8*m.b112 + 25000*m.b9*m.b22 + 20000*m.b9*m.b24 + 15000*
                       m.b9*m.b25 + 12500*m.b9*m.b26 + 25000*m.b9*m.b27 + 17500*m.b9*m.b28 + 20000*m.b9*m.b36 + 16000*
                       m.b9*m.b38 + 12000*m.b9*m.b39 + 10000*m.b9*m.b40 + 20000*m.b9*m.b41 + 14000*m.b9*m.b42 + 29000*
                       m.b9*m.b43 + 23200*m.b9*m.b45 + 17400*m.b9*m.b46 + 14500*m.b9*m.b47 + 29000*m.b9*m.b48 + 20300*
                       m.b9*m.b49 + 50000*m.b9*m.b71 + 40000*m.b9*m.b73 + 30000*m.b9*m.b74 + 25000*m.b9*m.b75 + 50000*
                       m.b9*m.b76 + 35000*m.b9*m.b77 + 50000*m.b9*m.b92 + 40000*m.b9*m.b94 + 30000*m.b9*m.b95 + 25000*
                       m.b9*m.b96 + 50000*m.b9*m.b97 + 35000*m.b9*m.b98 + 50000*m.b9*m.b106 + 40000*m.b9*m.b108 + 30000*
                       m.b9*m.b109 + 25000*m.b9*m.b110 + 50000*m.b9*m.b111 + 35000*m.b9*m.b112 + 37500*m.b10*m.b22 + 
                       20000*m.b10*m.b23 + 17500*m.b10*m.b25 + 30000*m.b10*m.b26 + 17500*m.b10*m.b27 + 25000*m.b10*m.b28
                        + 30000*m.b10*m.b36 + 16000*m.b10*m.b37 + 14000*m.b10*m.b39 + 24000*m.b10*m.b40 + 14000*m.b10*
                       m.b41 + 20000*m.b10*m.b42 + 43500*m.b10*m.b43 + 23200*m.b10*m.b44 + 20300*m.b10*m.b46 + 34800*
                       m.b10*m.b47 + 20300*m.b10*m.b48 + 29000*m.b10*m.b49 + 75000*m.b10*m.b71 + 40000*m.b10*m.b72 + 
                       35000*m.b10*m.b74 + 60000*m.b10*m.b75 + 35000*m.b10*m.b76 + 50000*m.b10*m.b77 + 75000*m.b10*m.b92
                        + 40000*m.b10*m.b93 + 35000*m.b10*m.b95 + 60000*m.b10*m.b96 + 35000*m.b10*m.b97 + 50000*m.b10*
                       m.b98 + 75000*m.b10*m.b106 + 40000*m.b10*m.b107 + 35000*m.b10*m.b109 + 60000*m.b10*m.b110 + 35000
                       *m.b10*m.b111 + 50000*m.b10*m.b112 + 25000*m.b11*m.b22 + 15000*m.b11*m.b23 + 17500*m.b11*m.b24 + 
                       15000*m.b11*m.b26 + 25000*m.b11*m.b27 + 20000*m.b11*m.b28 + 20000*m.b11*m.b36 + 12000*m.b11*m.b37
                        + 14000*m.b11*m.b38 + 12000*m.b11*m.b40 + 20000*m.b11*m.b41 + 16000*m.b11*m.b42 + 29000*m.b11*
                       m.b43 + 17400*m.b11*m.b44 + 20300*m.b11*m.b45 + 17400*m.b11*m.b47 + 29000*m.b11*m.b48 + 23200*
                       m.b11*m.b49 + 50000*m.b11*m.b71 + 30000*m.b11*m.b72 + 35000*m.b11*m.b73 + 30000*m.b11*m.b75 + 
                       50000*m.b11*m.b76 + 40000*m.b11*m.b77 + 50000*m.b11*m.b92 + 30000*m.b11*m.b93 + 35000*m.b11*m.b94
                        + 30000*m.b11*m.b96 + 50000*m.b11*m.b97 + 40000*m.b11*m.b98 + 50000*m.b11*m.b106 + 30000*m.b11*
                       m.b107 + 35000*m.b11*m.b108 + 30000*m.b11*m.b110 + 50000*m.b11*m.b111 + 40000*m.b11*m.b112 + 
                       12500*m.b12*m.b22 + 12500*m.b12*m.b23 + 30000*m.b12*m.b24 + 15000*m.b12*m.b25 + 20000*m.b12*m.b27
                        + 25000*m.b12*m.b28 + 10000*m.b12*m.b36 + 10000*m.b12*m.b37 + 24000*m.b12*m.b38 + 12000*m.b12*
                       m.b39 + 16000*m.b12*m.b41 + 20000*m.b12*m.b42 + 14500*m.b12*m.b43 + 14500*m.b12*m.b44 + 34800*
                       m.b12*m.b45 + 17400*m.b12*m.b46 + 23200*m.b12*m.b48 + 29000*m.b12*m.b49 + 25000*m.b12*m.b71 + 
                       25000*m.b12*m.b72 + 60000*m.b12*m.b73 + 30000*m.b12*m.b74 + 40000*m.b12*m.b76 + 50000*m.b12*m.b77
                        + 25000*m.b12*m.b92 + 25000*m.b12*m.b93 + 60000*m.b12*m.b94 + 30000*m.b12*m.b95 + 40000*m.b12*
                       m.b97 + 50000*m.b12*m.b98 + 25000*m.b12*m.b106 + 25000*m.b12*m.b107 + 60000*m.b12*m.b108 + 30000*
                       m.b12*m.b109 + 40000*m.b12*m.b111 + 50000*m.b12*m.b112 + 20000*m.b13*m.b22 + 25000*m.b13*m.b23 + 
                       17500*m.b13*m.b24 + 25000*m.b13*m.b25 + 20000*m.b13*m.b26 + 17500*m.b13*m.b28 + 16000*m.b13*m.b36
                        + 20000*m.b13*m.b37 + 14000*m.b13*m.b38 + 20000*m.b13*m.b39 + 16000*m.b13*m.b40 + 14000*m.b13*
                       m.b42 + 23200*m.b13*m.b43 + 29000*m.b13*m.b44 + 20300*m.b13*m.b45 + 29000*m.b13*m.b46 + 23200*
                       m.b13*m.b47 + 20300*m.b13*m.b49 + 40000*m.b13*m.b71 + 50000*m.b13*m.b72 + 35000*m.b13*m.b73 + 
                       50000*m.b13*m.b74 + 40000*m.b13*m.b75 + 35000*m.b13*m.b77 + 40000*m.b13*m.b92 + 50000*m.b13*m.b93
                        + 35000*m.b13*m.b94 + 50000*m.b13*m.b95 + 40000*m.b13*m.b96 + 35000*m.b13*m.b98 + 40000*m.b13*
                       m.b106 + 50000*m.b13*m.b107 + 35000*m.b13*m.b108 + 50000*m.b13*m.b109 + 40000*m.b13*m.b110 + 
                       35000*m.b13*m.b112 + 22500*m.b14*m.b22 + 17500*m.b14*m.b23 + 25000*m.b14*m.b24 + 20000*m.b14*
                       m.b25 + 25000*m.b14*m.b26 + 17500*m.b14*m.b27 + 18000*m.b14*m.b36 + 14000*m.b14*m.b37 + 20000*
                       m.b14*m.b38 + 16000*m.b14*m.b39 + 20000*m.b14*m.b40 + 14000*m.b14*m.b41 + 26100*m.b14*m.b43 + 
                       20300*m.b14*m.b44 + 29000*m.b14*m.b45 + 23200*m.b14*m.b46 + 29000*m.b14*m.b47 + 20300*m.b14*m.b48
                        + 45000*m.b14*m.b71 + 35000*m.b14*m.b72 + 50000*m.b14*m.b73 + 40000*m.b14*m.b74 + 50000*m.b14*
                       m.b75 + 35000*m.b14*m.b76 + 45000*m.b14*m.b92 + 35000*m.b14*m.b93 + 50000*m.b14*m.b94 + 40000*
                       m.b14*m.b95 + 50000*m.b14*m.b96 + 35000*m.b14*m.b97 + 45000*m.b14*m.b106 + 35000*m.b14*m.b107 + 
                       50000*m.b14*m.b108 + 40000*m.b14*m.b109 + 50000*m.b14*m.b110 + 35000*m.b14*m.b111 + 30000*m.b15*
                       m.b2 + 45000*m.b15*m.b3 + 30000*m.b15*m.b4 + 15000*m.b15*m.b5 + 24000*m.b15*m.b6 + 27000*m.b15*
                       m.b7 + 15000*m.b15*m.b23 + 22500*m.b15*m.b24 + 15000*m.b15*m.b25 + 7500*m.b15*m.b26 + 12000*m.b15
                       *m.b27 + 13500*m.b15*m.b28 + 37500*m.b15*m.b37 + 56250*m.b15*m.b38 + 37500*m.b15*m.b39 + 18750*
                       m.b15*m.b40 + 30000*m.b15*m.b41 + 33750*m.b15*m.b42 + 75000*m.b15*m.b51 + 112500*m.b15*m.b52 + 
                       75000*m.b15*m.b53 + 37500*m.b15*m.b54 + 60000*m.b15*m.b55 + 67500*m.b15*m.b56 + 30000*m.b15*m.b58
                        + 45000*m.b15*m.b59 + 30000*m.b15*m.b60 + 15000*m.b15*m.b61 + 24000*m.b15*m.b62 + 27000*m.b15*
                       m.b63 + 25000*m.b15*m.b79 + 37500*m.b15*m.b80 + 25000*m.b15*m.b81 + 12500*m.b15*m.b82 + 20000*
                       m.b15*m.b83 + 22500*m.b15*m.b84 + 25000*m.b15*m.b93 + 37500*m.b15*m.b94 + 25000*m.b15*m.b95 + 
                       12500*m.b15*m.b96 + 20000*m.b15*m.b97 + 22500*m.b15*m.b98 + 25000*m.b15*m.b107 + 37500*m.b15*
                       m.b108 + 25000*m.b15*m.b109 + 12500*m.b15*m.b110 + 20000*m.b15*m.b111 + 22500*m.b15*m.b112 + 
                       30000*m.b16*m.b1 + 24000*m.b16*m.b3 + 18000*m.b16*m.b4 + 15000*m.b16*m.b5 + 30000*m.b16*m.b6 + 
                       21000*m.b16*m.b7 + 15000*m.b16*m.b22 + 12000*m.b16*m.b24 + 9000*m.b16*m.b25 + 7500*m.b16*m.b26 + 
                       15000*m.b16*m.b27 + 10500*m.b16*m.b28 + 37500*m.b16*m.b36 + 30000*m.b16*m.b38 + 22500*m.b16*m.b39
                        + 18750*m.b16*m.b40 + 37500*m.b16*m.b41 + 26250*m.b16*m.b42 + 75000*m.b16*m.b50 + 60000*m.b16*
                       m.b52 + 45000*m.b16*m.b53 + 37500*m.b16*m.b54 + 75000*m.b16*m.b55 + 52500*m.b16*m.b56 + 30000*
                       m.b16*m.b57 + 24000*m.b16*m.b59 + 18000*m.b16*m.b60 + 15000*m.b16*m.b61 + 30000*m.b16*m.b62 + 
                       21000*m.b16*m.b63 + 25000*m.b16*m.b78 + 20000*m.b16*m.b80 + 15000*m.b16*m.b81 + 12500*m.b16*m.b82
                        + 25000*m.b16*m.b83 + 17500*m.b16*m.b84 + 25000*m.b16*m.b92 + 20000*m.b16*m.b94 + 15000*m.b16*
                       m.b95 + 12500*m.b16*m.b96 + 25000*m.b16*m.b97 + 17500*m.b16*m.b98 + 25000*m.b16*m.b106 + 20000*
                       m.b16*m.b108 + 15000*m.b16*m.b109 + 12500*m.b16*m.b110 + 25000*m.b16*m.b111 + 17500*m.b16*m.b112
                        + 45000*m.b17*m.b1 + 24000*m.b17*m.b2 + 21000*m.b17*m.b4 + 36000*m.b17*m.b5 + 21000*m.b17*m.b6
                        + 30000*m.b17*m.b7 + 22500*m.b17*m.b22 + 12000*m.b17*m.b23 + 10500*m.b17*m.b25 + 18000*m.b17*
                       m.b26 + 10500*m.b17*m.b27 + 15000*m.b17*m.b28 + 56250*m.b17*m.b36 + 30000*m.b17*m.b37 + 26250*
                       m.b17*m.b39 + 45000*m.b17*m.b40 + 26250*m.b17*m.b41 + 37500*m.b17*m.b42 + 112500*m.b17*m.b50 + 
                       60000*m.b17*m.b51 + 52500*m.b17*m.b53 + 90000*m.b17*m.b54 + 52500*m.b17*m.b55 + 75000*m.b17*m.b56
                        + 45000*m.b17*m.b57 + 24000*m.b17*m.b58 + 21000*m.b17*m.b60 + 36000*m.b17*m.b61 + 21000*m.b17*
                       m.b62 + 30000*m.b17*m.b63 + 37500*m.b17*m.b78 + 20000*m.b17*m.b79 + 17500*m.b17*m.b81 + 30000*
                       m.b17*m.b82 + 17500*m.b17*m.b83 + 25000*m.b17*m.b84 + 37500*m.b17*m.b92 + 20000*m.b17*m.b93 + 
                       17500*m.b17*m.b95 + 30000*m.b17*m.b96 + 17500*m.b17*m.b97 + 25000*m.b17*m.b98 + 37500*m.b17*
                       m.b106 + 20000*m.b17*m.b107 + 17500*m.b17*m.b109 + 30000*m.b17*m.b110 + 17500*m.b17*m.b111 + 
                       25000*m.b17*m.b112 + 30000*m.b18*m.b1 + 18000*m.b18*m.b2 + 21000*m.b18*m.b3 + 18000*m.b18*m.b5 + 
                       30000*m.b18*m.b6 + 24000*m.b18*m.b7 + 15000*m.b18*m.b22 + 9000*m.b18*m.b23 + 10500*m.b18*m.b24 + 
                       9000*m.b18*m.b26 + 15000*m.b18*m.b27 + 12000*m.b18*m.b28 + 37500*m.b18*m.b36 + 22500*m.b18*m.b37
                        + 26250*m.b18*m.b38 + 22500*m.b18*m.b40 + 37500*m.b18*m.b41 + 30000*m.b18*m.b42 + 75000*m.b18*
                       m.b50 + 45000*m.b18*m.b51 + 52500*m.b18*m.b52 + 45000*m.b18*m.b54 + 75000*m.b18*m.b55 + 60000*
                       m.b18*m.b56 + 30000*m.b18*m.b57 + 18000*m.b18*m.b58 + 21000*m.b18*m.b59 + 18000*m.b18*m.b61 + 
                       30000*m.b18*m.b62 + 24000*m.b18*m.b63 + 25000*m.b18*m.b78 + 15000*m.b18*m.b79 + 17500*m.b18*m.b80
                        + 15000*m.b18*m.b82 + 25000*m.b18*m.b83 + 20000*m.b18*m.b84 + 25000*m.b18*m.b92 + 15000*m.b18*
                       m.b93 + 17500*m.b18*m.b94 + 15000*m.b18*m.b96 + 25000*m.b18*m.b97 + 20000*m.b18*m.b98 + 25000*
                       m.b18*m.b106 + 15000*m.b18*m.b107 + 17500*m.b18*m.b108 + 15000*m.b18*m.b110 + 25000*m.b18*m.b111
                        + 20000*m.b18*m.b112 + 15000*m.b19*m.b1 + 15000*m.b19*m.b2 + 36000*m.b19*m.b3 + 18000*m.b19*m.b4
                        + 24000*m.b19*m.b6 + 30000*m.b19*m.b7 + 7500*m.b19*m.b22 + 7500*m.b19*m.b23 + 18000*m.b19*m.b24
                        + 9000*m.b19*m.b25 + 12000*m.b19*m.b27 + 15000*m.b19*m.b28 + 18750*m.b19*m.b36 + 18750*m.b19*
                       m.b37 + 45000*m.b19*m.b38 + 22500*m.b19*m.b39 + 30000*m.b19*m.b41 + 37500*m.b19*m.b42 + 37500*
                       m.b19*m.b50 + 37500*m.b19*m.b51 + 90000*m.b19*m.b52 + 45000*m.b19*m.b53 + 60000*m.b19*m.b55 + 
                       75000*m.b19*m.b56 + 15000*m.b19*m.b57 + 15000*m.b19*m.b58 + 36000*m.b19*m.b59 + 18000*m.b19*m.b60
                        + 24000*m.b19*m.b62 + 30000*m.b19*m.b63 + 12500*m.b19*m.b78 + 12500*m.b19*m.b79 + 30000*m.b19*
                       m.b80 + 15000*m.b19*m.b81 + 20000*m.b19*m.b83 + 25000*m.b19*m.b84 + 12500*m.b19*m.b92 + 12500*
                       m.b19*m.b93 + 30000*m.b19*m.b94 + 15000*m.b19*m.b95 + 20000*m.b19*m.b97 + 25000*m.b19*m.b98 + 
                       12500*m.b19*m.b106 + 12500*m.b19*m.b107 + 30000*m.b19*m.b108 + 15000*m.b19*m.b109 + 20000*m.b19*
                       m.b111 + 25000*m.b19*m.b112 + 24000*m.b20*m.b1 + 30000*m.b20*m.b2 + 21000*m.b20*m.b3 + 30000*
                       m.b20*m.b4 + 24000*m.b20*m.b5 + 21000*m.b20*m.b7 + 12000*m.b20*m.b22 + 15000*m.b20*m.b23 + 10500*
                       m.b20*m.b24 + 15000*m.b20*m.b25 + 12000*m.b20*m.b26 + 10500*m.b20*m.b28 + 30000*m.b20*m.b36 + 
                       37500*m.b20*m.b37 + 26250*m.b20*m.b38 + 37500*m.b20*m.b39 + 30000*m.b20*m.b40 + 26250*m.b20*m.b42
                        + 60000*m.b20*m.b50 + 75000*m.b20*m.b51 + 52500*m.b20*m.b52 + 75000*m.b20*m.b53 + 60000*m.b20*
                       m.b54 + 52500*m.b20*m.b56 + 24000*m.b20*m.b57 + 30000*m.b20*m.b58 + 21000*m.b20*m.b59 + 30000*
                       m.b20*m.b60 + 24000*m.b20*m.b61 + 21000*m.b20*m.b63 + 20000*m.b20*m.b78 + 25000*m.b20*m.b79 + 
                       17500*m.b20*m.b80 + 25000*m.b20*m.b81 + 20000*m.b20*m.b82 + 17500*m.b20*m.b84 + 20000*m.b20*m.b92
                        + 25000*m.b20*m.b93 + 17500*m.b20*m.b94 + 25000*m.b20*m.b95 + 20000*m.b20*m.b96 + 17500*m.b20*
                       m.b98 + 20000*m.b20*m.b106 + 25000*m.b20*m.b107 + 17500*m.b20*m.b108 + 25000*m.b20*m.b109 + 20000
                       *m.b20*m.b110 + 17500*m.b20*m.b112 + 27000*m.b21*m.b1 + 21000*m.b21*m.b2 + 30000*m.b21*m.b3 + 
                       24000*m.b21*m.b4 + 30000*m.b21*m.b5 + 21000*m.b21*m.b6 + 13500*m.b21*m.b22 + 10500*m.b21*m.b23 + 
                       15000*m.b21*m.b24 + 12000*m.b21*m.b25 + 15000*m.b21*m.b26 + 10500*m.b21*m.b27 + 33750*m.b21*m.b36
                        + 26250*m.b21*m.b37 + 37500*m.b21*m.b38 + 30000*m.b21*m.b39 + 37500*m.b21*m.b40 + 26250*m.b21*
                       m.b41 + 67500*m.b21*m.b50 + 52500*m.b21*m.b51 + 75000*m.b21*m.b52 + 60000*m.b21*m.b53 + 75000*
                       m.b21*m.b54 + 52500*m.b21*m.b55 + 27000*m.b21*m.b57 + 21000*m.b21*m.b58 + 30000*m.b21*m.b59 + 
                       24000*m.b21*m.b60 + 30000*m.b21*m.b61 + 21000*m.b21*m.b62 + 22500*m.b21*m.b78 + 17500*m.b21*m.b79
                        + 25000*m.b21*m.b80 + 20000*m.b21*m.b81 + 25000*m.b21*m.b82 + 17500*m.b21*m.b83 + 22500*m.b21*
                       m.b92 + 17500*m.b21*m.b93 + 25000*m.b21*m.b94 + 20000*m.b21*m.b95 + 25000*m.b21*m.b96 + 17500*
                       m.b21*m.b97 + 22500*m.b21*m.b106 + 17500*m.b21*m.b107 + 25000*m.b21*m.b108 + 20000*m.b21*m.b109
                        + 25000*m.b21*m.b110 + 17500*m.b21*m.b111 + 30000*m.b22*m.b16 + 45000*m.b22*m.b17 + 30000*m.b22*
                       m.b18 + 15000*m.b22*m.b19 + 24000*m.b22*m.b20 + 27000*m.b22*m.b21 + 25000*m.b22*m.b30 + 37500*
                       m.b22*m.b31 + 25000*m.b22*m.b32 + 12500*m.b22*m.b33 + 20000*m.b22*m.b34 + 22500*m.b22*m.b35 + 
                       30000*m.b22*m.b37 + 45000*m.b22*m.b38 + 30000*m.b22*m.b39 + 15000*m.b22*m.b40 + 24000*m.b22*m.b41
                        + 27000*m.b22*m.b42 + 27500*m.b22*m.b72 + 41250*m.b22*m.b73 + 27500*m.b22*m.b74 + 13750*m.b22*
                       m.b75 + 22000*m.b22*m.b76 + 24750*m.b22*m.b77 + 25000*m.b22*m.b93 + 37500*m.b22*m.b94 + 25000*
                       m.b22*m.b95 + 12500*m.b22*m.b96 + 20000*m.b22*m.b97 + 22500*m.b22*m.b98 + 40000*m.b22*m.b100 + 
                       60000*m.b22*m.b101 + 40000*m.b22*m.b102 + 20000*m.b22*m.b103 + 32000*m.b22*m.b104 + 36000*m.b22*
                       m.b105 + 30000*m.b23*m.b15 + 24000*m.b23*m.b17 + 18000*m.b23*m.b18 + 15000*m.b23*m.b19 + 30000*
                       m.b23*m.b20 + 21000*m.b23*m.b21 + 25000*m.b23*m.b29 + 20000*m.b23*m.b31 + 15000*m.b23*m.b32 + 
                       12500*m.b23*m.b33 + 25000*m.b23*m.b34 + 17500*m.b23*m.b35 + 30000*m.b23*m.b36 + 24000*m.b23*m.b38
                        + 18000*m.b23*m.b39 + 15000*m.b23*m.b40 + 30000*m.b23*m.b41 + 21000*m.b23*m.b42 + 27500*m.b23*
                       m.b71 + 22000*m.b23*m.b73 + 16500*m.b23*m.b74 + 13750*m.b23*m.b75 + 27500*m.b23*m.b76 + 19250*
                       m.b23*m.b77 + 25000*m.b23*m.b92 + 20000*m.b23*m.b94 + 15000*m.b23*m.b95 + 12500*m.b23*m.b96 + 
                       25000*m.b23*m.b97 + 17500*m.b23*m.b98 + 40000*m.b23*m.b99 + 32000*m.b23*m.b101 + 24000*m.b23*
                       m.b102 + 20000*m.b23*m.b103 + 40000*m.b23*m.b104 + 28000*m.b23*m.b105 + 45000*m.b24*m.b15 + 24000
                       *m.b24*m.b16 + 21000*m.b24*m.b18 + 36000*m.b24*m.b19 + 21000*m.b24*m.b20 + 30000*m.b24*m.b21 + 
                       37500*m.b24*m.b29 + 20000*m.b24*m.b30 + 17500*m.b24*m.b32 + 30000*m.b24*m.b33 + 17500*m.b24*m.b34
                        + 25000*m.b24*m.b35 + 45000*m.b24*m.b36 + 24000*m.b24*m.b37 + 21000*m.b24*m.b39 + 36000*m.b24*
                       m.b40 + 21000*m.b24*m.b41 + 30000*m.b24*m.b42 + 41250*m.b24*m.b71 + 22000*m.b24*m.b72 + 19250*
                       m.b24*m.b74 + 33000*m.b24*m.b75 + 19250*m.b24*m.b76 + 27500*m.b24*m.b77 + 37500*m.b24*m.b92 + 
                       20000*m.b24*m.b93 + 17500*m.b24*m.b95 + 30000*m.b24*m.b96 + 17500*m.b24*m.b97 + 25000*m.b24*m.b98
                        + 60000*m.b24*m.b99 + 32000*m.b24*m.b100 + 28000*m.b24*m.b102 + 48000*m.b24*m.b103 + 28000*m.b24
                       *m.b104 + 40000*m.b24*m.b105 + 30000*m.b25*m.b15 + 18000*m.b25*m.b16 + 21000*m.b25*m.b17 + 18000*
                       m.b25*m.b19 + 30000*m.b25*m.b20 + 24000*m.b25*m.b21 + 25000*m.b25*m.b29 + 15000*m.b25*m.b30 + 
                       17500*m.b25*m.b31 + 15000*m.b25*m.b33 + 25000*m.b25*m.b34 + 20000*m.b25*m.b35 + 30000*m.b25*m.b36
                        + 18000*m.b25*m.b37 + 21000*m.b25*m.b38 + 18000*m.b25*m.b40 + 30000*m.b25*m.b41 + 24000*m.b25*
                       m.b42 + 27500*m.b25*m.b71 + 16500*m.b25*m.b72 + 19250*m.b25*m.b73 + 16500*m.b25*m.b75 + 27500*
                       m.b25*m.b76 + 22000*m.b25*m.b77 + 25000*m.b25*m.b92 + 15000*m.b25*m.b93 + 17500*m.b25*m.b94 + 
                       15000*m.b25*m.b96 + 25000*m.b25*m.b97 + 20000*m.b25*m.b98 + 40000*m.b25*m.b99 + 24000*m.b25*
                       m.b100 + 28000*m.b25*m.b101 + 24000*m.b25*m.b103 + 40000*m.b25*m.b104 + 32000*m.b25*m.b105 + 
                       15000*m.b26*m.b15 + 15000*m.b26*m.b16 + 36000*m.b26*m.b17 + 18000*m.b26*m.b18 + 24000*m.b26*m.b20
                        + 30000*m.b26*m.b21 + 12500*m.b26*m.b29 + 12500*m.b26*m.b30 + 30000*m.b26*m.b31 + 15000*m.b26*
                       m.b32 + 20000*m.b26*m.b34 + 25000*m.b26*m.b35 + 15000*m.b26*m.b36 + 15000*m.b26*m.b37 + 36000*
                       m.b26*m.b38 + 18000*m.b26*m.b39 + 24000*m.b26*m.b41 + 30000*m.b26*m.b42 + 13750*m.b26*m.b71 + 
                       13750*m.b26*m.b72 + 33000*m.b26*m.b73 + 16500*m.b26*m.b74 + 22000*m.b26*m.b76 + 27500*m.b26*m.b77
                        + 12500*m.b26*m.b92 + 12500*m.b26*m.b93 + 30000*m.b26*m.b94 + 15000*m.b26*m.b95 + 20000*m.b26*
                       m.b97 + 25000*m.b26*m.b98 + 20000*m.b26*m.b99 + 20000*m.b26*m.b100 + 48000*m.b26*m.b101 + 24000*
                       m.b26*m.b102 + 32000*m.b26*m.b104 + 40000*m.b26*m.b105 + 24000*m.b27*m.b15 + 30000*m.b27*m.b16 + 
                       21000*m.b27*m.b17 + 30000*m.b27*m.b18 + 24000*m.b27*m.b19 + 21000*m.b27*m.b21 + 20000*m.b27*m.b29
                        + 25000*m.b27*m.b30 + 17500*m.b27*m.b31 + 25000*m.b27*m.b32 + 20000*m.b27*m.b33 + 17500*m.b27*
                       m.b35 + 24000*m.b27*m.b36 + 30000*m.b27*m.b37 + 21000*m.b27*m.b38 + 30000*m.b27*m.b39 + 24000*
                       m.b27*m.b40 + 21000*m.b27*m.b42 + 22000*m.b27*m.b71 + 27500*m.b27*m.b72 + 19250*m.b27*m.b73 + 
                       27500*m.b27*m.b74 + 22000*m.b27*m.b75 + 19250*m.b27*m.b77 + 20000*m.b27*m.b92 + 25000*m.b27*m.b93
                        + 17500*m.b27*m.b94 + 25000*m.b27*m.b95 + 20000*m.b27*m.b96 + 17500*m.b27*m.b98 + 32000*m.b27*
                       m.b99 + 40000*m.b27*m.b100 + 28000*m.b27*m.b101 + 40000*m.b27*m.b102 + 32000*m.b27*m.b103 + 28000
                       *m.b27*m.b105 + 27000*m.b28*m.b15 + 21000*m.b28*m.b16 + 30000*m.b28*m.b17 + 24000*m.b28*m.b18 + 
                       30000*m.b28*m.b19 + 21000*m.b28*m.b20 + 22500*m.b28*m.b29 + 17500*m.b28*m.b30 + 25000*m.b28*m.b31
                        + 20000*m.b28*m.b32 + 25000*m.b28*m.b33 + 17500*m.b28*m.b34 + 27000*m.b28*m.b36 + 21000*m.b28*
                       m.b37 + 30000*m.b28*m.b38 + 24000*m.b28*m.b39 + 30000*m.b28*m.b40 + 21000*m.b28*m.b41 + 24750*
                       m.b28*m.b71 + 19250*m.b28*m.b72 + 27500*m.b28*m.b73 + 22000*m.b28*m.b74 + 27500*m.b28*m.b75 + 
                       19250*m.b28*m.b76 + 22500*m.b28*m.b92 + 17500*m.b28*m.b93 + 25000*m.b28*m.b94 + 20000*m.b28*m.b95
                        + 25000*m.b28*m.b96 + 17500*m.b28*m.b97 + 36000*m.b28*m.b99 + 28000*m.b28*m.b100 + 40000*m.b28*
                       m.b101 + 32000*m.b28*m.b102 + 40000*m.b28*m.b103 + 28000*m.b28*m.b104 + 35000*m.b29*m.b16 + 52500
                       *m.b29*m.b17 + 35000*m.b29*m.b18 + 17500*m.b29*m.b19 + 28000*m.b29*m.b20 + 31500*m.b29*m.b21 + 
                       50000*m.b29*m.b37 + 75000*m.b29*m.b38 + 50000*m.b29*m.b39 + 25000*m.b29*m.b40 + 40000*m.b29*m.b41
                        + 45000*m.b29*m.b42 + 25000*m.b29*m.b44 + 37500*m.b29*m.b45 + 25000*m.b29*m.b46 + 12500*m.b29*
                       m.b47 + 20000*m.b29*m.b48 + 22500*m.b29*m.b49 + 29000*m.b29*m.b51 + 43500*m.b29*m.b52 + 29000*
                       m.b29*m.b53 + 14500*m.b29*m.b54 + 23200*m.b29*m.b55 + 26100*m.b29*m.b56 + 32500*m.b29*m.b79 + 
                       48750*m.b29*m.b80 + 32500*m.b29*m.b81 + 16250*m.b29*m.b82 + 26000*m.b29*m.b83 + 29250*m.b29*m.b84
                        + 25000*m.b29*m.b93 + 37500*m.b29*m.b94 + 25000*m.b29*m.b95 + 12500*m.b29*m.b96 + 20000*m.b29*
                       m.b97 + 22500*m.b29*m.b98 + 25000*m.b29*m.b107 + 37500*m.b29*m.b108 + 25000*m.b29*m.b109 + 12500*
                       m.b29*m.b110 + 20000*m.b29*m.b111 + 22500*m.b29*m.b112 + 35000*m.b30*m.b15 + 28000*m.b30*m.b17 + 
                       21000*m.b30*m.b18 + 17500*m.b30*m.b19 + 35000*m.b30*m.b20 + 24500*m.b30*m.b21 + 50000*m.b30*m.b36
                        + 40000*m.b30*m.b38 + 30000*m.b30*m.b39 + 25000*m.b30*m.b40 + 50000*m.b30*m.b41 + 35000*m.b30*
                       m.b42 + 25000*m.b30*m.b43 + 20000*m.b30*m.b45 + 15000*m.b30*m.b46 + 12500*m.b30*m.b47 + 25000*
                       m.b30*m.b48 + 17500*m.b30*m.b49 + 29000*m.b30*m.b50 + 23200*m.b30*m.b52 + 17400*m.b30*m.b53 + 
                       14500*m.b30*m.b54 + 29000*m.b30*m.b55 + 20300*m.b30*m.b56 + 32500*m.b30*m.b78 + 26000*m.b30*m.b80
                        + 19500*m.b30*m.b81 + 16250*m.b30*m.b82 + 32500*m.b30*m.b83 + 22750*m.b30*m.b84 + 25000*m.b30*
                       m.b92 + 20000*m.b30*m.b94 + 15000*m.b30*m.b95 + 12500*m.b30*m.b96 + 25000*m.b30*m.b97 + 17500*
                       m.b30*m.b98 + 25000*m.b30*m.b106 + 20000*m.b30*m.b108 + 15000*m.b30*m.b109 + 12500*m.b30*m.b110
                        + 25000*m.b30*m.b111 + 17500*m.b30*m.b112 + 52500*m.b31*m.b15 + 28000*m.b31*m.b16 + 24500*m.b31*
                       m.b18 + 42000*m.b31*m.b19 + 24500*m.b31*m.b20 + 35000*m.b31*m.b21 + 75000*m.b31*m.b36 + 40000*
                       m.b31*m.b37 + 35000*m.b31*m.b39 + 60000*m.b31*m.b40 + 35000*m.b31*m.b41 + 50000*m.b31*m.b42 + 
                       37500*m.b31*m.b43 + 20000*m.b31*m.b44 + 17500*m.b31*m.b46 + 30000*m.b31*m.b47 + 17500*m.b31*m.b48
                        + 25000*m.b31*m.b49 + 43500*m.b31*m.b50 + 23200*m.b31*m.b51 + 20300*m.b31*m.b53 + 34800*m.b31*
                       m.b54 + 20300*m.b31*m.b55 + 29000*m.b31*m.b56 + 48750*m.b31*m.b78 + 26000*m.b31*m.b79 + 22750*
                       m.b31*m.b81 + 39000*m.b31*m.b82 + 22750*m.b31*m.b83 + 32500*m.b31*m.b84 + 37500*m.b31*m.b92 + 
                       20000*m.b31*m.b93 + 17500*m.b31*m.b95 + 30000*m.b31*m.b96 + 17500*m.b31*m.b97 + 25000*m.b31*m.b98
                        + 37500*m.b31*m.b106 + 20000*m.b31*m.b107 + 17500*m.b31*m.b109 + 30000*m.b31*m.b110 + 17500*
                       m.b31*m.b111 + 25000*m.b31*m.b112 + 35000*m.b32*m.b15 + 21000*m.b32*m.b16 + 24500*m.b32*m.b17 + 
                       21000*m.b32*m.b19 + 35000*m.b32*m.b20 + 28000*m.b32*m.b21 + 50000*m.b32*m.b36 + 30000*m.b32*m.b37
                        + 35000*m.b32*m.b38 + 30000*m.b32*m.b40 + 50000*m.b32*m.b41 + 40000*m.b32*m.b42 + 25000*m.b32*
                       m.b43 + 15000*m.b32*m.b44 + 17500*m.b32*m.b45 + 15000*m.b32*m.b47 + 25000*m.b32*m.b48 + 20000*
                       m.b32*m.b49 + 29000*m.b32*m.b50 + 17400*m.b32*m.b51 + 20300*m.b32*m.b52 + 17400*m.b32*m.b54 + 
                       29000*m.b32*m.b55 + 23200*m.b32*m.b56 + 32500*m.b32*m.b78 + 19500*m.b32*m.b79 + 22750*m.b32*m.b80
                        + 19500*m.b32*m.b82 + 32500*m.b32*m.b83 + 26000*m.b32*m.b84 + 25000*m.b32*m.b92 + 15000*m.b32*
                       m.b93 + 17500*m.b32*m.b94 + 15000*m.b32*m.b96 + 25000*m.b32*m.b97 + 20000*m.b32*m.b98 + 25000*
                       m.b32*m.b106 + 15000*m.b32*m.b107 + 17500*m.b32*m.b108 + 15000*m.b32*m.b110 + 25000*m.b32*m.b111
                        + 20000*m.b32*m.b112 + 17500*m.b33*m.b15 + 17500*m.b33*m.b16 + 42000*m.b33*m.b17 + 21000*m.b33*
                       m.b18 + 28000*m.b33*m.b20 + 35000*m.b33*m.b21 + 25000*m.b33*m.b36 + 25000*m.b33*m.b37 + 60000*
                       m.b33*m.b38 + 30000*m.b33*m.b39 + 40000*m.b33*m.b41 + 50000*m.b33*m.b42 + 12500*m.b33*m.b43 + 
                       12500*m.b33*m.b44 + 30000*m.b33*m.b45 + 15000*m.b33*m.b46 + 20000*m.b33*m.b48 + 25000*m.b33*m.b49
                        + 14500*m.b33*m.b50 + 14500*m.b33*m.b51 + 34800*m.b33*m.b52 + 17400*m.b33*m.b53 + 23200*m.b33*
                       m.b55 + 29000*m.b33*m.b56 + 16250*m.b33*m.b78 + 16250*m.b33*m.b79 + 39000*m.b33*m.b80 + 19500*
                       m.b33*m.b81 + 26000*m.b33*m.b83 + 32500*m.b33*m.b84 + 12500*m.b33*m.b92 + 12500*m.b33*m.b93 + 
                       30000*m.b33*m.b94 + 15000*m.b33*m.b95 + 20000*m.b33*m.b97 + 25000*m.b33*m.b98 + 12500*m.b33*
                       m.b106 + 12500*m.b33*m.b107 + 30000*m.b33*m.b108 + 15000*m.b33*m.b109 + 20000*m.b33*m.b111 + 
                       25000*m.b33*m.b112 + 28000*m.b34*m.b15 + 35000*m.b34*m.b16 + 24500*m.b34*m.b17 + 35000*m.b34*
                       m.b18 + 28000*m.b34*m.b19 + 24500*m.b34*m.b21 + 40000*m.b34*m.b36 + 50000*m.b34*m.b37 + 35000*
                       m.b34*m.b38 + 50000*m.b34*m.b39 + 40000*m.b34*m.b40 + 35000*m.b34*m.b42 + 20000*m.b34*m.b43 + 
                       25000*m.b34*m.b44 + 17500*m.b34*m.b45 + 25000*m.b34*m.b46 + 20000*m.b34*m.b47 + 17500*m.b34*m.b49
                        + 23200*m.b34*m.b50 + 29000*m.b34*m.b51 + 20300*m.b34*m.b52 + 29000*m.b34*m.b53 + 23200*m.b34*
                       m.b54 + 20300*m.b34*m.b56 + 26000*m.b34*m.b78 + 32500*m.b34*m.b79 + 22750*m.b34*m.b80 + 32500*
                       m.b34*m.b81 + 26000*m.b34*m.b82 + 22750*m.b34*m.b84 + 20000*m.b34*m.b92 + 25000*m.b34*m.b93 + 
                       17500*m.b34*m.b94 + 25000*m.b34*m.b95 + 20000*m.b34*m.b96 + 17500*m.b34*m.b98 + 20000*m.b34*
                       m.b106 + 25000*m.b34*m.b107 + 17500*m.b34*m.b108 + 25000*m.b34*m.b109 + 20000*m.b34*m.b110 + 
                       17500*m.b34*m.b112 + 31500*m.b35*m.b15 + 24500*m.b35*m.b16 + 35000*m.b35*m.b17 + 28000*m.b35*
                       m.b18 + 35000*m.b35*m.b19 + 24500*m.b35*m.b20 + 45000*m.b35*m.b36 + 35000*m.b35*m.b37 + 50000*
                       m.b35*m.b38 + 40000*m.b35*m.b39 + 50000*m.b35*m.b40 + 35000*m.b35*m.b41 + 22500*m.b35*m.b43 + 
                       17500*m.b35*m.b44 + 25000*m.b35*m.b45 + 20000*m.b35*m.b46 + 25000*m.b35*m.b47 + 17500*m.b35*m.b48
                        + 26100*m.b35*m.b50 + 20300*m.b35*m.b51 + 29000*m.b35*m.b52 + 23200*m.b35*m.b53 + 29000*m.b35*
                       m.b54 + 20300*m.b35*m.b55 + 29250*m.b35*m.b78 + 22750*m.b35*m.b79 + 32500*m.b35*m.b80 + 26000*
                       m.b35*m.b81 + 32500*m.b35*m.b82 + 22750*m.b35*m.b83 + 22500*m.b35*m.b92 + 17500*m.b35*m.b93 + 
                       25000*m.b35*m.b94 + 20000*m.b35*m.b95 + 25000*m.b35*m.b96 + 17500*m.b35*m.b97 + 22500*m.b35*
                       m.b106 + 17500*m.b35*m.b107 + 25000*m.b35*m.b108 + 20000*m.b35*m.b109 + 25000*m.b35*m.b110 + 
                       17500*m.b35*m.b111 + 30000*m.b36*m.b16 + 45000*m.b36*m.b17 + 30000*m.b36*m.b18 + 15000*m.b36*
                       m.b19 + 24000*m.b36*m.b20 + 27000*m.b36*m.b21 + 15000*m.b36*m.b23 + 22500*m.b36*m.b24 + 15000*
                       m.b36*m.b25 + 7500*m.b36*m.b26 + 12000*m.b36*m.b27 + 13500*m.b36*m.b28 + 25000*m.b36*m.b44 + 
                       37500*m.b36*m.b45 + 25000*m.b36*m.b46 + 12500*m.b36*m.b47 + 20000*m.b36*m.b48 + 22500*m.b36*m.b49
                        + 62500*m.b36*m.b51 + 93750*m.b36*m.b52 + 62500*m.b36*m.b53 + 31250*m.b36*m.b54 + 50000*m.b36*
                       m.b55 + 56250*m.b36*m.b56 + 30000*m.b36*m.b65 + 45000*m.b36*m.b66 + 30000*m.b36*m.b67 + 15000*
                       m.b36*m.b68 + 24000*m.b36*m.b69 + 27000*m.b36*m.b70 + 20000*m.b36*m.b72 + 30000*m.b36*m.b73 + 
                       20000*m.b36*m.b74 + 10000*m.b36*m.b75 + 16000*m.b36*m.b76 + 18000*m.b36*m.b77 + 20000*m.b36*m.b86
                        + 30000*m.b36*m.b87 + 20000*m.b36*m.b88 + 10000*m.b36*m.b89 + 16000*m.b36*m.b90 + 18000*m.b36*
                       m.b91 + 30000*m.b37*m.b15 + 24000*m.b37*m.b17 + 18000*m.b37*m.b18 + 15000*m.b37*m.b19 + 30000*
                       m.b37*m.b20 + 21000*m.b37*m.b21 + 15000*m.b37*m.b22 + 12000*m.b37*m.b24 + 9000*m.b37*m.b25 + 7500
                       *m.b37*m.b26 + 15000*m.b37*m.b27 + 10500*m.b37*m.b28 + 25000*m.b37*m.b43 + 20000*m.b37*m.b45 + 
                       15000*m.b37*m.b46 + 12500*m.b37*m.b47 + 25000*m.b37*m.b48 + 17500*m.b37*m.b49 + 62500*m.b37*m.b50
                        + 50000*m.b37*m.b52 + 37500*m.b37*m.b53 + 31250*m.b37*m.b54 + 62500*m.b37*m.b55 + 43750*m.b37*
                       m.b56 + 30000*m.b37*m.b64 + 24000*m.b37*m.b66 + 18000*m.b37*m.b67 + 15000*m.b37*m.b68 + 30000*
                       m.b37*m.b69 + 21000*m.b37*m.b70 + 20000*m.b37*m.b71 + 16000*m.b37*m.b73 + 12000*m.b37*m.b74 + 
                       10000*m.b37*m.b75 + 20000*m.b37*m.b76 + 14000*m.b37*m.b77 + 20000*m.b37*m.b85 + 16000*m.b37*m.b87
                        + 12000*m.b37*m.b88 + 10000*m.b37*m.b89 + 20000*m.b37*m.b90 + 14000*m.b37*m.b91 + 45000*m.b38*
                       m.b15 + 24000*m.b38*m.b16 + 21000*m.b38*m.b18 + 36000*m.b38*m.b19 + 21000*m.b38*m.b20 + 30000*
                       m.b38*m.b21 + 22500*m.b38*m.b22 + 12000*m.b38*m.b23 + 10500*m.b38*m.b25 + 18000*m.b38*m.b26 + 
                       10500*m.b38*m.b27 + 15000*m.b38*m.b28 + 37500*m.b38*m.b43 + 20000*m.b38*m.b44 + 17500*m.b38*m.b46
                        + 30000*m.b38*m.b47 + 17500*m.b38*m.b48 + 25000*m.b38*m.b49 + 93750*m.b38*m.b50 + 50000*m.b38*
                       m.b51 + 43750*m.b38*m.b53 + 75000*m.b38*m.b54 + 43750*m.b38*m.b55 + 62500*m.b38*m.b56 + 45000*
                       m.b38*m.b64 + 24000*m.b38*m.b65 + 21000*m.b38*m.b67 + 36000*m.b38*m.b68 + 21000*m.b38*m.b69 + 
                       30000*m.b38*m.b70 + 30000*m.b38*m.b71 + 16000*m.b38*m.b72 + 14000*m.b38*m.b74 + 24000*m.b38*m.b75
                        + 14000*m.b38*m.b76 + 20000*m.b38*m.b77 + 30000*m.b38*m.b85 + 16000*m.b38*m.b86 + 14000*m.b38*
                       m.b88 + 24000*m.b38*m.b89 + 14000*m.b38*m.b90 + 20000*m.b38*m.b91 + 30000*m.b39*m.b15 + 18000*
                       m.b39*m.b16 + 21000*m.b39*m.b17 + 18000*m.b39*m.b19 + 30000*m.b39*m.b20 + 24000*m.b39*m.b21 + 
                       15000*m.b39*m.b22 + 9000*m.b39*m.b23 + 10500*m.b39*m.b24 + 9000*m.b39*m.b26 + 15000*m.b39*m.b27
                        + 12000*m.b39*m.b28 + 25000*m.b39*m.b43 + 15000*m.b39*m.b44 + 17500*m.b39*m.b45 + 15000*m.b39*
                       m.b47 + 25000*m.b39*m.b48 + 20000*m.b39*m.b49 + 62500*m.b39*m.b50 + 37500*m.b39*m.b51 + 43750*
                       m.b39*m.b52 + 37500*m.b39*m.b54 + 62500*m.b39*m.b55 + 50000*m.b39*m.b56 + 30000*m.b39*m.b64 + 
                       18000*m.b39*m.b65 + 21000*m.b39*m.b66 + 18000*m.b39*m.b68 + 30000*m.b39*m.b69 + 24000*m.b39*m.b70
                        + 20000*m.b39*m.b71 + 12000*m.b39*m.b72 + 14000*m.b39*m.b73 + 12000*m.b39*m.b75 + 20000*m.b39*
                       m.b76 + 16000*m.b39*m.b77 + 20000*m.b39*m.b85 + 12000*m.b39*m.b86 + 14000*m.b39*m.b87 + 12000*
                       m.b39*m.b89 + 20000*m.b39*m.b90 + 16000*m.b39*m.b91 + 15000*m.b40*m.b15 + 15000*m.b40*m.b16 + 
                       36000*m.b40*m.b17 + 18000*m.b40*m.b18 + 24000*m.b40*m.b20 + 30000*m.b40*m.b21 + 7500*m.b40*m.b22
                        + 7500*m.b40*m.b23 + 18000*m.b40*m.b24 + 9000*m.b40*m.b25 + 12000*m.b40*m.b27 + 15000*m.b40*
                       m.b28 + 12500*m.b40*m.b43 + 12500*m.b40*m.b44 + 30000*m.b40*m.b45 + 15000*m.b40*m.b46 + 20000*
                       m.b40*m.b48 + 25000*m.b40*m.b49 + 31250*m.b40*m.b50 + 31250*m.b40*m.b51 + 75000*m.b40*m.b52 + 
                       37500*m.b40*m.b53 + 50000*m.b40*m.b55 + 62500*m.b40*m.b56 + 15000*m.b40*m.b64 + 15000*m.b40*m.b65
                        + 36000*m.b40*m.b66 + 18000*m.b40*m.b67 + 24000*m.b40*m.b69 + 30000*m.b40*m.b70 + 10000*m.b40*
                       m.b71 + 10000*m.b40*m.b72 + 24000*m.b40*m.b73 + 12000*m.b40*m.b74 + 16000*m.b40*m.b76 + 20000*
                       m.b40*m.b77 + 10000*m.b40*m.b85 + 10000*m.b40*m.b86 + 24000*m.b40*m.b87 + 12000*m.b40*m.b88 + 
                       16000*m.b40*m.b90 + 20000*m.b40*m.b91 + 24000*m.b41*m.b15 + 30000*m.b41*m.b16 + 21000*m.b41*m.b17
                        + 30000*m.b41*m.b18 + 24000*m.b41*m.b19 + 21000*m.b41*m.b21 + 12000*m.b41*m.b22 + 15000*m.b41*
                       m.b23 + 10500*m.b41*m.b24 + 15000*m.b41*m.b25 + 12000*m.b41*m.b26 + 10500*m.b41*m.b28 + 20000*
                       m.b41*m.b43 + 25000*m.b41*m.b44 + 17500*m.b41*m.b45 + 25000*m.b41*m.b46 + 20000*m.b41*m.b47 + 
                       17500*m.b41*m.b49 + 50000*m.b41*m.b50 + 62500*m.b41*m.b51 + 43750*m.b41*m.b52 + 62500*m.b41*m.b53
                        + 50000*m.b41*m.b54 + 43750*m.b41*m.b56 + 24000*m.b41*m.b64 + 30000*m.b41*m.b65 + 21000*m.b41*
                       m.b66 + 30000*m.b41*m.b67 + 24000*m.b41*m.b68 + 21000*m.b41*m.b70 + 16000*m.b41*m.b71 + 20000*
                       m.b41*m.b72 + 14000*m.b41*m.b73 + 20000*m.b41*m.b74 + 16000*m.b41*m.b75 + 14000*m.b41*m.b77 + 
                       16000*m.b41*m.b85 + 20000*m.b41*m.b86 + 14000*m.b41*m.b87 + 20000*m.b41*m.b88 + 16000*m.b41*m.b89
                        + 14000*m.b41*m.b91 + 27000*m.b42*m.b15 + 21000*m.b42*m.b16 + 30000*m.b42*m.b17 + 24000*m.b42*
                       m.b18 + 30000*m.b42*m.b19 + 21000*m.b42*m.b20 + 13500*m.b42*m.b22 + 10500*m.b42*m.b23 + 15000*
                       m.b42*m.b24 + 12000*m.b42*m.b25 + 15000*m.b42*m.b26 + 10500*m.b42*m.b27 + 22500*m.b42*m.b43 + 
                       17500*m.b42*m.b44 + 25000*m.b42*m.b45 + 20000*m.b42*m.b46 + 25000*m.b42*m.b47 + 17500*m.b42*m.b48
                        + 56250*m.b42*m.b50 + 43750*m.b42*m.b51 + 62500*m.b42*m.b52 + 50000*m.b42*m.b53 + 62500*m.b42*
                       m.b54 + 43750*m.b42*m.b55 + 27000*m.b42*m.b64 + 21000*m.b42*m.b65 + 30000*m.b42*m.b66 + 24000*
                       m.b42*m.b67 + 30000*m.b42*m.b68 + 21000*m.b42*m.b69 + 18000*m.b42*m.b71 + 14000*m.b42*m.b72 + 
                       20000*m.b42*m.b73 + 16000*m.b42*m.b74 + 20000*m.b42*m.b75 + 14000*m.b42*m.b76 + 18000*m.b42*m.b85
                        + 14000*m.b42*m.b86 + 20000*m.b42*m.b87 + 16000*m.b42*m.b88 + 20000*m.b42*m.b89 + 14000*m.b42*
                       m.b90 + 25000*m.b43*m.b2 + 37500*m.b43*m.b3 + 25000*m.b43*m.b4 + 12500*m.b43*m.b5 + 20000*m.b43*
                       m.b6 + 22500*m.b43*m.b7 + 40000*m.b43*m.b16 + 60000*m.b43*m.b17 + 40000*m.b43*m.b18 + 20000*m.b43
                       *m.b19 + 32000*m.b43*m.b20 + 36000*m.b43*m.b21 + 15000*m.b43*m.b37 + 22500*m.b43*m.b38 + 15000*
                       m.b43*m.b39 + 7500*m.b43*m.b40 + 12000*m.b43*m.b41 + 13500*m.b43*m.b42 + 12500*m.b43*m.b51 + 
                       18750*m.b43*m.b52 + 12500*m.b43*m.b53 + 6250*m.b43*m.b54 + 10000*m.b43*m.b55 + 11250*m.b43*m.b56
                        + 15000*m.b43*m.b58 + 22500*m.b43*m.b59 + 15000*m.b43*m.b60 + 7500*m.b43*m.b61 + 12000*m.b43*
                       m.b62 + 13500*m.b43*m.b63 + 20000*m.b43*m.b86 + 30000*m.b43*m.b87 + 20000*m.b43*m.b88 + 10000*
                       m.b43*m.b89 + 16000*m.b43*m.b90 + 18000*m.b43*m.b91 + 20000*m.b43*m.b107 + 30000*m.b43*m.b108 + 
                       20000*m.b43*m.b109 + 10000*m.b43*m.b110 + 16000*m.b43*m.b111 + 18000*m.b43*m.b112 + 25000*m.b44*
                       m.b1 + 20000*m.b44*m.b3 + 15000*m.b44*m.b4 + 12500*m.b44*m.b5 + 25000*m.b44*m.b6 + 17500*m.b44*
                       m.b7 + 40000*m.b44*m.b15 + 32000*m.b44*m.b17 + 24000*m.b44*m.b18 + 20000*m.b44*m.b19 + 40000*
                       m.b44*m.b20 + 28000*m.b44*m.b21 + 15000*m.b44*m.b36 + 12000*m.b44*m.b38 + 9000*m.b44*m.b39 + 7500
                       *m.b44*m.b40 + 15000*m.b44*m.b41 + 10500*m.b44*m.b42 + 12500*m.b44*m.b50 + 10000*m.b44*m.b52 + 
                       7500*m.b44*m.b53 + 6250*m.b44*m.b54 + 12500*m.b44*m.b55 + 8750*m.b44*m.b56 + 15000*m.b44*m.b57 + 
                       12000*m.b44*m.b59 + 9000*m.b44*m.b60 + 7500*m.b44*m.b61 + 15000*m.b44*m.b62 + 10500*m.b44*m.b63
                        + 20000*m.b44*m.b85 + 16000*m.b44*m.b87 + 12000*m.b44*m.b88 + 10000*m.b44*m.b89 + 20000*m.b44*
                       m.b90 + 14000*m.b44*m.b91 + 20000*m.b44*m.b106 + 16000*m.b44*m.b108 + 12000*m.b44*m.b109 + 10000*
                       m.b44*m.b110 + 20000*m.b44*m.b111 + 14000*m.b44*m.b112 + 37500*m.b45*m.b1 + 20000*m.b45*m.b2 + 
                       17500*m.b45*m.b4 + 30000*m.b45*m.b5 + 17500*m.b45*m.b6 + 25000*m.b45*m.b7 + 60000*m.b45*m.b15 + 
                       32000*m.b45*m.b16 + 28000*m.b45*m.b18 + 48000*m.b45*m.b19 + 28000*m.b45*m.b20 + 40000*m.b45*m.b21
                        + 22500*m.b45*m.b36 + 12000*m.b45*m.b37 + 10500*m.b45*m.b39 + 18000*m.b45*m.b40 + 10500*m.b45*
                       m.b41 + 15000*m.b45*m.b42 + 18750*m.b45*m.b50 + 10000*m.b45*m.b51 + 8750*m.b45*m.b53 + 15000*
                       m.b45*m.b54 + 8750*m.b45*m.b55 + 12500*m.b45*m.b56 + 22500*m.b45*m.b57 + 12000*m.b45*m.b58 + 
                       10500*m.b45*m.b60 + 18000*m.b45*m.b61 + 10500*m.b45*m.b62 + 15000*m.b45*m.b63 + 30000*m.b45*m.b85
                        + 16000*m.b45*m.b86 + 14000*m.b45*m.b88 + 24000*m.b45*m.b89 + 14000*m.b45*m.b90 + 20000*m.b45*
                       m.b91 + 30000*m.b45*m.b106 + 16000*m.b45*m.b107 + 14000*m.b45*m.b109 + 24000*m.b45*m.b110 + 14000
                       *m.b45*m.b111 + 20000*m.b45*m.b112 + 25000*m.b46*m.b1 + 15000*m.b46*m.b2 + 17500*m.b46*m.b3 + 
                       15000*m.b46*m.b5 + 25000*m.b46*m.b6 + 20000*m.b46*m.b7 + 40000*m.b46*m.b15 + 24000*m.b46*m.b16 + 
                       28000*m.b46*m.b17 + 24000*m.b46*m.b19 + 40000*m.b46*m.b20 + 32000*m.b46*m.b21 + 15000*m.b46*m.b36
                        + 9000*m.b46*m.b37 + 10500*m.b46*m.b38 + 9000*m.b46*m.b40 + 15000*m.b46*m.b41 + 12000*m.b46*
                       m.b42 + 12500*m.b46*m.b50 + 7500*m.b46*m.b51 + 8750*m.b46*m.b52 + 7500*m.b46*m.b54 + 12500*m.b46*
                       m.b55 + 10000*m.b46*m.b56 + 15000*m.b46*m.b57 + 9000*m.b46*m.b58 + 10500*m.b46*m.b59 + 9000*m.b46
                       *m.b61 + 15000*m.b46*m.b62 + 12000*m.b46*m.b63 + 20000*m.b46*m.b85 + 12000*m.b46*m.b86 + 14000*
                       m.b46*m.b87 + 12000*m.b46*m.b89 + 20000*m.b46*m.b90 + 16000*m.b46*m.b91 + 20000*m.b46*m.b106 + 
                       12000*m.b46*m.b107 + 14000*m.b46*m.b108 + 12000*m.b46*m.b110 + 20000*m.b46*m.b111 + 16000*m.b46*
                       m.b112 + 12500*m.b47*m.b1 + 12500*m.b47*m.b2 + 30000*m.b47*m.b3 + 15000*m.b47*m.b4 + 20000*m.b47*
                       m.b6 + 25000*m.b47*m.b7 + 20000*m.b47*m.b15 + 20000*m.b47*m.b16 + 48000*m.b47*m.b17 + 24000*m.b47
                       *m.b18 + 32000*m.b47*m.b20 + 40000*m.b47*m.b21 + 7500*m.b47*m.b36 + 7500*m.b47*m.b37 + 18000*
                       m.b47*m.b38 + 9000*m.b47*m.b39 + 12000*m.b47*m.b41 + 15000*m.b47*m.b42 + 6250*m.b47*m.b50 + 6250*
                       m.b47*m.b51 + 15000*m.b47*m.b52 + 7500*m.b47*m.b53 + 10000*m.b47*m.b55 + 12500*m.b47*m.b56 + 7500
                       *m.b47*m.b57 + 7500*m.b47*m.b58 + 18000*m.b47*m.b59 + 9000*m.b47*m.b60 + 12000*m.b47*m.b62 + 
                       15000*m.b47*m.b63 + 10000*m.b47*m.b85 + 10000*m.b47*m.b86 + 24000*m.b47*m.b87 + 12000*m.b47*m.b88
                        + 16000*m.b47*m.b90 + 20000*m.b47*m.b91 + 10000*m.b47*m.b106 + 10000*m.b47*m.b107 + 24000*m.b47*
                       m.b108 + 12000*m.b47*m.b109 + 16000*m.b47*m.b111 + 20000*m.b47*m.b112 + 20000*m.b48*m.b1 + 25000*
                       m.b48*m.b2 + 17500*m.b48*m.b3 + 25000*m.b48*m.b4 + 20000*m.b48*m.b5 + 17500*m.b48*m.b7 + 32000*
                       m.b48*m.b15 + 40000*m.b48*m.b16 + 28000*m.b48*m.b17 + 40000*m.b48*m.b18 + 32000*m.b48*m.b19 + 
                       28000*m.b48*m.b21 + 12000*m.b48*m.b36 + 15000*m.b48*m.b37 + 10500*m.b48*m.b38 + 15000*m.b48*m.b39
                        + 12000*m.b48*m.b40 + 10500*m.b48*m.b42 + 10000*m.b48*m.b50 + 12500*m.b48*m.b51 + 8750*m.b48*
                       m.b52 + 12500*m.b48*m.b53 + 10000*m.b48*m.b54 + 8750*m.b48*m.b56 + 12000*m.b48*m.b57 + 15000*
                       m.b48*m.b58 + 10500*m.b48*m.b59 + 15000*m.b48*m.b60 + 12000*m.b48*m.b61 + 10500*m.b48*m.b63 + 
                       16000*m.b48*m.b85 + 20000*m.b48*m.b86 + 14000*m.b48*m.b87 + 20000*m.b48*m.b88 + 16000*m.b48*m.b89
                        + 14000*m.b48*m.b91 + 16000*m.b48*m.b106 + 20000*m.b48*m.b107 + 14000*m.b48*m.b108 + 20000*m.b48
                       *m.b109 + 16000*m.b48*m.b110 + 14000*m.b48*m.b112 + 22500*m.b49*m.b1 + 17500*m.b49*m.b2 + 25000*
                       m.b49*m.b3 + 20000*m.b49*m.b4 + 25000*m.b49*m.b5 + 17500*m.b49*m.b6 + 36000*m.b49*m.b15 + 28000*
                       m.b49*m.b16 + 40000*m.b49*m.b17 + 32000*m.b49*m.b18 + 40000*m.b49*m.b19 + 28000*m.b49*m.b20 + 
                       13500*m.b49*m.b36 + 10500*m.b49*m.b37 + 15000*m.b49*m.b38 + 12000*m.b49*m.b39 + 15000*m.b49*m.b40
                        + 10500*m.b49*m.b41 + 11250*m.b49*m.b50 + 8750*m.b49*m.b51 + 12500*m.b49*m.b52 + 10000*m.b49*
                       m.b53 + 12500*m.b49*m.b54 + 8750*m.b49*m.b55 + 13500*m.b49*m.b57 + 10500*m.b49*m.b58 + 15000*
                       m.b49*m.b59 + 12000*m.b49*m.b60 + 15000*m.b49*m.b61 + 10500*m.b49*m.b62 + 18000*m.b49*m.b85 + 
                       14000*m.b49*m.b86 + 20000*m.b49*m.b87 + 16000*m.b49*m.b88 + 20000*m.b49*m.b89 + 14000*m.b49*m.b90
                        + 18000*m.b49*m.b106 + 14000*m.b49*m.b107 + 20000*m.b49*m.b108 + 16000*m.b49*m.b109 + 20000*
                       m.b49*m.b110 + 14000*m.b49*m.b111 + 55000*m.b50*m.b16 + 82500*m.b50*m.b17 + 55000*m.b50*m.b18 + 
                       27500*m.b50*m.b19 + 44000*m.b50*m.b20 + 49500*m.b50*m.b21 + 45000*m.b50*m.b30 + 67500*m.b50*m.b31
                        + 45000*m.b50*m.b32 + 22500*m.b50*m.b33 + 36000*m.b50*m.b34 + 40500*m.b50*m.b35 + 25000*m.b50*
                       m.b44 + 37500*m.b50*m.b45 + 25000*m.b50*m.b46 + 12500*m.b50*m.b47 + 20000*m.b50*m.b48 + 22500*
                       m.b50*m.b49 + 22500*m.b50*m.b58 + 33750*m.b50*m.b59 + 22500*m.b50*m.b60 + 11250*m.b50*m.b61 + 
                       18000*m.b50*m.b62 + 20250*m.b50*m.b63 + 30000*m.b50*m.b65 + 45000*m.b50*m.b66 + 30000*m.b50*m.b67
                        + 15000*m.b50*m.b68 + 24000*m.b50*m.b69 + 27000*m.b50*m.b70 + 25000*m.b50*m.b79 + 37500*m.b50*
                       m.b80 + 25000*m.b50*m.b81 + 12500*m.b50*m.b82 + 20000*m.b50*m.b83 + 22500*m.b50*m.b84 + 75000*
                       m.b50*m.b93 + 112500*m.b50*m.b94 + 75000*m.b50*m.b95 + 37500*m.b50*m.b96 + 60000*m.b50*m.b97 + 
                       67500*m.b50*m.b98 + 50000*m.b50*m.b100 + 75000*m.b50*m.b101 + 50000*m.b50*m.b102 + 25000*m.b50*
                       m.b103 + 40000*m.b50*m.b104 + 45000*m.b50*m.b105 + 55000*m.b51*m.b15 + 44000*m.b51*m.b17 + 33000*
                       m.b51*m.b18 + 27500*m.b51*m.b19 + 55000*m.b51*m.b20 + 38500*m.b51*m.b21 + 45000*m.b51*m.b29 + 
                       36000*m.b51*m.b31 + 27000*m.b51*m.b32 + 22500*m.b51*m.b33 + 45000*m.b51*m.b34 + 31500*m.b51*m.b35
                        + 25000*m.b51*m.b43 + 20000*m.b51*m.b45 + 15000*m.b51*m.b46 + 12500*m.b51*m.b47 + 25000*m.b51*
                       m.b48 + 17500*m.b51*m.b49 + 22500*m.b51*m.b57 + 18000*m.b51*m.b59 + 13500*m.b51*m.b60 + 11250*
                       m.b51*m.b61 + 22500*m.b51*m.b62 + 15750*m.b51*m.b63 + 30000*m.b51*m.b64 + 24000*m.b51*m.b66 + 
                       18000*m.b51*m.b67 + 15000*m.b51*m.b68 + 30000*m.b51*m.b69 + 21000*m.b51*m.b70 + 25000*m.b51*m.b78
                        + 20000*m.b51*m.b80 + 15000*m.b51*m.b81 + 12500*m.b51*m.b82 + 25000*m.b51*m.b83 + 17500*m.b51*
                       m.b84 + 75000*m.b51*m.b92 + 60000*m.b51*m.b94 + 45000*m.b51*m.b95 + 37500*m.b51*m.b96 + 75000*
                       m.b51*m.b97 + 52500*m.b51*m.b98 + 50000*m.b51*m.b99 + 40000*m.b51*m.b101 + 30000*m.b51*m.b102 + 
                       25000*m.b51*m.b103 + 50000*m.b51*m.b104 + 35000*m.b51*m.b105 + 82500*m.b52*m.b15 + 44000*m.b52*
                       m.b16 + 38500*m.b52*m.b18 + 66000*m.b52*m.b19 + 38500*m.b52*m.b20 + 55000*m.b52*m.b21 + 67500*
                       m.b52*m.b29 + 36000*m.b52*m.b30 + 31500*m.b52*m.b32 + 54000*m.b52*m.b33 + 31500*m.b52*m.b34 + 
                       45000*m.b52*m.b35 + 37500*m.b52*m.b43 + 20000*m.b52*m.b44 + 17500*m.b52*m.b46 + 30000*m.b52*m.b47
                        + 17500*m.b52*m.b48 + 25000*m.b52*m.b49 + 33750*m.b52*m.b57 + 18000*m.b52*m.b58 + 15750*m.b52*
                       m.b60 + 27000*m.b52*m.b61 + 15750*m.b52*m.b62 + 22500*m.b52*m.b63 + 45000*m.b52*m.b64 + 24000*
                       m.b52*m.b65 + 21000*m.b52*m.b67 + 36000*m.b52*m.b68 + 21000*m.b52*m.b69 + 30000*m.b52*m.b70 + 
                       37500*m.b52*m.b78 + 20000*m.b52*m.b79 + 17500*m.b52*m.b81 + 30000*m.b52*m.b82 + 17500*m.b52*m.b83
                        + 25000*m.b52*m.b84 + 112500*m.b52*m.b92 + 60000*m.b52*m.b93 + 52500*m.b52*m.b95 + 90000*m.b52*
                       m.b96 + 52500*m.b52*m.b97 + 75000*m.b52*m.b98 + 75000*m.b52*m.b99 + 40000*m.b52*m.b100 + 35000*
                       m.b52*m.b102 + 60000*m.b52*m.b103 + 35000*m.b52*m.b104 + 50000*m.b52*m.b105 + 55000*m.b53*m.b15
                        + 33000*m.b53*m.b16 + 38500*m.b53*m.b17 + 33000*m.b53*m.b19 + 55000*m.b53*m.b20 + 44000*m.b53*
                       m.b21 + 45000*m.b53*m.b29 + 27000*m.b53*m.b30 + 31500*m.b53*m.b31 + 27000*m.b53*m.b33 + 45000*
                       m.b53*m.b34 + 36000*m.b53*m.b35 + 25000*m.b53*m.b43 + 15000*m.b53*m.b44 + 17500*m.b53*m.b45 + 
                       15000*m.b53*m.b47 + 25000*m.b53*m.b48 + 20000*m.b53*m.b49 + 22500*m.b53*m.b57 + 13500*m.b53*m.b58
                        + 15750*m.b53*m.b59 + 13500*m.b53*m.b61 + 22500*m.b53*m.b62 + 18000*m.b53*m.b63 + 30000*m.b53*
                       m.b64 + 18000*m.b53*m.b65 + 21000*m.b53*m.b66 + 18000*m.b53*m.b68 + 30000*m.b53*m.b69 + 24000*
                       m.b53*m.b70 + 25000*m.b53*m.b78 + 15000*m.b53*m.b79 + 17500*m.b53*m.b80 + 15000*m.b53*m.b82 + 
                       25000*m.b53*m.b83 + 20000*m.b53*m.b84 + 75000*m.b53*m.b92 + 45000*m.b53*m.b93 + 52500*m.b53*m.b94
                        + 45000*m.b53*m.b96 + 75000*m.b53*m.b97 + 60000*m.b53*m.b98 + 50000*m.b53*m.b99 + 30000*m.b53*
                       m.b100 + 35000*m.b53*m.b101 + 30000*m.b53*m.b103 + 50000*m.b53*m.b104 + 40000*m.b53*m.b105 + 
                       27500*m.b54*m.b15 + 27500*m.b54*m.b16 + 66000*m.b54*m.b17 + 33000*m.b54*m.b18 + 44000*m.b54*m.b20
                        + 55000*m.b54*m.b21 + 22500*m.b54*m.b29 + 22500*m.b54*m.b30 + 54000*m.b54*m.b31 + 27000*m.b54*
                       m.b32 + 36000*m.b54*m.b34 + 45000*m.b54*m.b35 + 12500*m.b54*m.b43 + 12500*m.b54*m.b44 + 30000*
                       m.b54*m.b45 + 15000*m.b54*m.b46 + 20000*m.b54*m.b48 + 25000*m.b54*m.b49 + 11250*m.b54*m.b57 + 
                       11250*m.b54*m.b58 + 27000*m.b54*m.b59 + 13500*m.b54*m.b60 + 18000*m.b54*m.b62 + 22500*m.b54*m.b63
                        + 15000*m.b54*m.b64 + 15000*m.b54*m.b65 + 36000*m.b54*m.b66 + 18000*m.b54*m.b67 + 24000*m.b54*
                       m.b69 + 30000*m.b54*m.b70 + 12500*m.b54*m.b78 + 12500*m.b54*m.b79 + 30000*m.b54*m.b80 + 15000*
                       m.b54*m.b81 + 20000*m.b54*m.b83 + 25000*m.b54*m.b84 + 37500*m.b54*m.b92 + 37500*m.b54*m.b93 + 
                       90000*m.b54*m.b94 + 45000*m.b54*m.b95 + 60000*m.b54*m.b97 + 75000*m.b54*m.b98 + 25000*m.b54*m.b99
                        + 25000*m.b54*m.b100 + 60000*m.b54*m.b101 + 30000*m.b54*m.b102 + 40000*m.b54*m.b104 + 50000*
                       m.b54*m.b105 + 44000*m.b55*m.b15 + 55000*m.b55*m.b16 + 38500*m.b55*m.b17 + 55000*m.b55*m.b18 + 
                       44000*m.b55*m.b19 + 38500*m.b55*m.b21 + 36000*m.b55*m.b29 + 45000*m.b55*m.b30 + 31500*m.b55*m.b31
                        + 45000*m.b55*m.b32 + 36000*m.b55*m.b33 + 31500*m.b55*m.b35 + 20000*m.b55*m.b43 + 25000*m.b55*
                       m.b44 + 17500*m.b55*m.b45 + 25000*m.b55*m.b46 + 20000*m.b55*m.b47 + 17500*m.b55*m.b49 + 18000*
                       m.b55*m.b57 + 22500*m.b55*m.b58 + 15750*m.b55*m.b59 + 22500*m.b55*m.b60 + 18000*m.b55*m.b61 + 
                       15750*m.b55*m.b63 + 24000*m.b55*m.b64 + 30000*m.b55*m.b65 + 21000*m.b55*m.b66 + 30000*m.b55*m.b67
                        + 24000*m.b55*m.b68 + 21000*m.b55*m.b70 + 20000*m.b55*m.b78 + 25000*m.b55*m.b79 + 17500*m.b55*
                       m.b80 + 25000*m.b55*m.b81 + 20000*m.b55*m.b82 + 17500*m.b55*m.b84 + 60000*m.b55*m.b92 + 75000*
                       m.b55*m.b93 + 52500*m.b55*m.b94 + 75000*m.b55*m.b95 + 60000*m.b55*m.b96 + 52500*m.b55*m.b98 + 
                       40000*m.b55*m.b99 + 50000*m.b55*m.b100 + 35000*m.b55*m.b101 + 50000*m.b55*m.b102 + 40000*m.b55*
                       m.b103 + 35000*m.b55*m.b105 + 49500*m.b56*m.b15 + 38500*m.b56*m.b16 + 55000*m.b56*m.b17 + 44000*
                       m.b56*m.b18 + 55000*m.b56*m.b19 + 38500*m.b56*m.b20 + 40500*m.b56*m.b29 + 31500*m.b56*m.b30 + 
                       45000*m.b56*m.b31 + 36000*m.b56*m.b32 + 45000*m.b56*m.b33 + 31500*m.b56*m.b34 + 22500*m.b56*m.b43
                        + 17500*m.b56*m.b44 + 25000*m.b56*m.b45 + 20000*m.b56*m.b46 + 25000*m.b56*m.b47 + 17500*m.b56*
                       m.b48 + 20250*m.b56*m.b57 + 15750*m.b56*m.b58 + 22500*m.b56*m.b59 + 18000*m.b56*m.b60 + 22500*
                       m.b56*m.b61 + 15750*m.b56*m.b62 + 27000*m.b56*m.b64 + 21000*m.b56*m.b65 + 30000*m.b56*m.b66 + 
                       24000*m.b56*m.b67 + 30000*m.b56*m.b68 + 21000*m.b56*m.b69 + 22500*m.b56*m.b78 + 17500*m.b56*m.b79
                        + 25000*m.b56*m.b80 + 20000*m.b56*m.b81 + 25000*m.b56*m.b82 + 17500*m.b56*m.b83 + 67500*m.b56*
                       m.b92 + 52500*m.b56*m.b93 + 75000*m.b56*m.b94 + 60000*m.b56*m.b95 + 75000*m.b56*m.b96 + 52500*
                       m.b56*m.b97 + 45000*m.b56*m.b99 + 35000*m.b56*m.b100 + 50000*m.b56*m.b101 + 40000*m.b56*m.b102 + 
                       50000*m.b56*m.b103 + 35000*m.b56*m.b104 + 75000*m.b57*m.b9 + 112500*m.b57*m.b10 + 75000*m.b57*
                       m.b11 + 37500*m.b57*m.b12 + 60000*m.b57*m.b13 + 67500*m.b57*m.b14 + 55000*m.b57*m.b23 + 82500*
                       m.b57*m.b24 + 55000*m.b57*m.b25 + 27500*m.b57*m.b26 + 44000*m.b57*m.b27 + 49500*m.b57*m.b28 + 
                       37500*m.b57*m.b51 + 56250*m.b57*m.b52 + 37500*m.b57*m.b53 + 18750*m.b57*m.b54 + 30000*m.b57*m.b55
                        + 33750*m.b57*m.b56 + 35000*m.b57*m.b65 + 52500*m.b57*m.b66 + 35000*m.b57*m.b67 + 17500*m.b57*
                       m.b68 + 28000*m.b57*m.b69 + 31500*m.b57*m.b70 + 25000*m.b57*m.b93 + 37500*m.b57*m.b94 + 25000*
                       m.b57*m.b95 + 12500*m.b57*m.b96 + 20000*m.b57*m.b97 + 22500*m.b57*m.b98 + 75000*m.b58*m.b8 + 
                       60000*m.b58*m.b10 + 45000*m.b58*m.b11 + 37500*m.b58*m.b12 + 75000*m.b58*m.b13 + 52500*m.b58*m.b14
                        + 55000*m.b58*m.b22 + 44000*m.b58*m.b24 + 33000*m.b58*m.b25 + 27500*m.b58*m.b26 + 55000*m.b58*
                       m.b27 + 38500*m.b58*m.b28 + 37500*m.b58*m.b50 + 30000*m.b58*m.b52 + 22500*m.b58*m.b53 + 18750*
                       m.b58*m.b54 + 37500*m.b58*m.b55 + 26250*m.b58*m.b56 + 35000*m.b58*m.b64 + 28000*m.b58*m.b66 + 
                       21000*m.b58*m.b67 + 17500*m.b58*m.b68 + 35000*m.b58*m.b69 + 24500*m.b58*m.b70 + 25000*m.b58*m.b92
                        + 20000*m.b58*m.b94 + 15000*m.b58*m.b95 + 12500*m.b58*m.b96 + 25000*m.b58*m.b97 + 17500*m.b58*
                       m.b98 + 112500*m.b59*m.b8 + 60000*m.b59*m.b9 + 52500*m.b59*m.b11 + 90000*m.b59*m.b12 + 52500*
                       m.b59*m.b13 + 75000*m.b59*m.b14 + 82500*m.b59*m.b22 + 44000*m.b59*m.b23 + 38500*m.b59*m.b25 + 
                       66000*m.b59*m.b26 + 38500*m.b59*m.b27 + 55000*m.b59*m.b28 + 56250*m.b59*m.b50 + 30000*m.b59*m.b51
                        + 26250*m.b59*m.b53 + 45000*m.b59*m.b54 + 26250*m.b59*m.b55 + 37500*m.b59*m.b56 + 52500*m.b59*
                       m.b64 + 28000*m.b59*m.b65 + 24500*m.b59*m.b67 + 42000*m.b59*m.b68 + 24500*m.b59*m.b69 + 35000*
                       m.b59*m.b70 + 37500*m.b59*m.b92 + 20000*m.b59*m.b93 + 17500*m.b59*m.b95 + 30000*m.b59*m.b96 + 
                       17500*m.b59*m.b97 + 25000*m.b59*m.b98 + 75000*m.b60*m.b8 + 45000*m.b60*m.b9 + 52500*m.b60*m.b10
                        + 45000*m.b60*m.b12 + 75000*m.b60*m.b13 + 60000*m.b60*m.b14 + 55000*m.b60*m.b22 + 33000*m.b60*
                       m.b23 + 38500*m.b60*m.b24 + 33000*m.b60*m.b26 + 55000*m.b60*m.b27 + 44000*m.b60*m.b28 + 37500*
                       m.b60*m.b50 + 22500*m.b60*m.b51 + 26250*m.b60*m.b52 + 22500*m.b60*m.b54 + 37500*m.b60*m.b55 + 
                       30000*m.b60*m.b56 + 35000*m.b60*m.b64 + 21000*m.b60*m.b65 + 24500*m.b60*m.b66 + 21000*m.b60*m.b68
                        + 35000*m.b60*m.b69 + 28000*m.b60*m.b70 + 25000*m.b60*m.b92 + 15000*m.b60*m.b93 + 17500*m.b60*
                       m.b94 + 15000*m.b60*m.b96 + 25000*m.b60*m.b97 + 20000*m.b60*m.b98 + 37500*m.b61*m.b8 + 37500*
                       m.b61*m.b9 + 90000*m.b61*m.b10 + 45000*m.b61*m.b11 + 60000*m.b61*m.b13 + 75000*m.b61*m.b14 + 
                       27500*m.b61*m.b22 + 27500*m.b61*m.b23 + 66000*m.b61*m.b24 + 33000*m.b61*m.b25 + 44000*m.b61*m.b27
                        + 55000*m.b61*m.b28 + 18750*m.b61*m.b50 + 18750*m.b61*m.b51 + 45000*m.b61*m.b52 + 22500*m.b61*
                       m.b53 + 30000*m.b61*m.b55 + 37500*m.b61*m.b56 + 17500*m.b61*m.b64 + 17500*m.b61*m.b65 + 42000*
                       m.b61*m.b66 + 21000*m.b61*m.b67 + 28000*m.b61*m.b69 + 35000*m.b61*m.b70 + 12500*m.b61*m.b92 + 
                       12500*m.b61*m.b93 + 30000*m.b61*m.b94 + 15000*m.b61*m.b95 + 20000*m.b61*m.b97 + 25000*m.b61*m.b98
                        + 60000*m.b62*m.b8 + 75000*m.b62*m.b9 + 52500*m.b62*m.b10 + 75000*m.b62*m.b11 + 60000*m.b62*
                       m.b12 + 52500*m.b62*m.b14 + 44000*m.b62*m.b22 + 55000*m.b62*m.b23 + 38500*m.b62*m.b24 + 55000*
                       m.b62*m.b25 + 44000*m.b62*m.b26 + 38500*m.b62*m.b28 + 30000*m.b62*m.b50 + 37500*m.b62*m.b51 + 
                       26250*m.b62*m.b52 + 37500*m.b62*m.b53 + 30000*m.b62*m.b54 + 26250*m.b62*m.b56 + 28000*m.b62*m.b64
                        + 35000*m.b62*m.b65 + 24500*m.b62*m.b66 + 35000*m.b62*m.b67 + 28000*m.b62*m.b68 + 24500*m.b62*
                       m.b70 + 20000*m.b62*m.b92 + 25000*m.b62*m.b93 + 17500*m.b62*m.b94 + 25000*m.b62*m.b95 + 20000*
                       m.b62*m.b96 + 17500*m.b62*m.b98 + 67500*m.b63*m.b8 + 52500*m.b63*m.b9 + 75000*m.b63*m.b10 + 60000
                       *m.b63*m.b11 + 75000*m.b63*m.b12 + 52500*m.b63*m.b13 + 49500*m.b63*m.b22 + 38500*m.b63*m.b23 + 
                       55000*m.b63*m.b24 + 44000*m.b63*m.b25 + 55000*m.b63*m.b26 + 38500*m.b63*m.b27 + 33750*m.b63*m.b50
                        + 26250*m.b63*m.b51 + 37500*m.b63*m.b52 + 30000*m.b63*m.b53 + 37500*m.b63*m.b54 + 26250*m.b63*
                       m.b55 + 31500*m.b63*m.b64 + 24500*m.b63*m.b65 + 35000*m.b63*m.b66 + 28000*m.b63*m.b67 + 35000*
                       m.b63*m.b68 + 24500*m.b63*m.b69 + 22500*m.b63*m.b92 + 17500*m.b63*m.b93 + 25000*m.b63*m.b94 + 
                       20000*m.b63*m.b95 + 25000*m.b63*m.b96 + 17500*m.b63*m.b97 + 20000*m.b64*m.b16 + 30000*m.b64*m.b17
                        + 20000*m.b64*m.b18 + 10000*m.b64*m.b19 + 16000*m.b64*m.b20 + 18000*m.b64*m.b21 + 30000*m.b64*
                       m.b30 + 45000*m.b64*m.b31 + 30000*m.b64*m.b32 + 15000*m.b64*m.b33 + 24000*m.b64*m.b34 + 27000*
                       m.b64*m.b35 + 60000*m.b64*m.b37 + 90000*m.b64*m.b38 + 60000*m.b64*m.b39 + 30000*m.b64*m.b40 + 
                       48000*m.b64*m.b41 + 54000*m.b64*m.b42 + 25000*m.b64*m.b44 + 37500*m.b64*m.b45 + 25000*m.b64*m.b46
                        + 12500*m.b64*m.b47 + 20000*m.b64*m.b48 + 22500*m.b64*m.b49 + 97500*m.b64*m.b58 + 146250*m.b64*
                       m.b59 + 97500*m.b64*m.b60 + 48750*m.b64*m.b61 + 78000*m.b64*m.b62 + 87750*m.b64*m.b63 + 50000*
                       m.b64*m.b79 + 75000*m.b64*m.b80 + 50000*m.b64*m.b81 + 25000*m.b64*m.b82 + 40000*m.b64*m.b83 + 
                       45000*m.b64*m.b84 + 25000*m.b64*m.b107 + 37500*m.b64*m.b108 + 25000*m.b64*m.b109 + 12500*m.b64*
                       m.b110 + 20000*m.b64*m.b111 + 22500*m.b64*m.b112 + 20000*m.b65*m.b15 + 16000*m.b65*m.b17 + 12000*
                       m.b65*m.b18 + 10000*m.b65*m.b19 + 20000*m.b65*m.b20 + 14000*m.b65*m.b21 + 30000*m.b65*m.b29 + 
                       24000*m.b65*m.b31 + 18000*m.b65*m.b32 + 15000*m.b65*m.b33 + 30000*m.b65*m.b34 + 21000*m.b65*m.b35
                        + 60000*m.b65*m.b36 + 48000*m.b65*m.b38 + 36000*m.b65*m.b39 + 30000*m.b65*m.b40 + 60000*m.b65*
                       m.b41 + 42000*m.b65*m.b42 + 25000*m.b65*m.b43 + 20000*m.b65*m.b45 + 15000*m.b65*m.b46 + 12500*
                       m.b65*m.b47 + 25000*m.b65*m.b48 + 17500*m.b65*m.b49 + 97500*m.b65*m.b57 + 78000*m.b65*m.b59 + 
                       58500*m.b65*m.b60 + 48750*m.b65*m.b61 + 97500*m.b65*m.b62 + 68250*m.b65*m.b63 + 50000*m.b65*m.b78
                        + 40000*m.b65*m.b80 + 30000*m.b65*m.b81 + 25000*m.b65*m.b82 + 50000*m.b65*m.b83 + 35000*m.b65*
                       m.b84 + 25000*m.b65*m.b106 + 20000*m.b65*m.b108 + 15000*m.b65*m.b109 + 12500*m.b65*m.b110 + 25000
                       *m.b65*m.b111 + 17500*m.b65*m.b112 + 30000*m.b66*m.b15 + 16000*m.b66*m.b16 + 14000*m.b66*m.b18 + 
                       24000*m.b66*m.b19 + 14000*m.b66*m.b20 + 20000*m.b66*m.b21 + 45000*m.b66*m.b29 + 24000*m.b66*m.b30
                        + 21000*m.b66*m.b32 + 36000*m.b66*m.b33 + 21000*m.b66*m.b34 + 30000*m.b66*m.b35 + 90000*m.b66*
                       m.b36 + 48000*m.b66*m.b37 + 42000*m.b66*m.b39 + 72000*m.b66*m.b40 + 42000*m.b66*m.b41 + 60000*
                       m.b66*m.b42 + 37500*m.b66*m.b43 + 20000*m.b66*m.b44 + 17500*m.b66*m.b46 + 30000*m.b66*m.b47 + 
                       17500*m.b66*m.b48 + 25000*m.b66*m.b49 + 146250*m.b66*m.b57 + 78000*m.b66*m.b58 + 68250*m.b66*
                       m.b60 + 117000*m.b66*m.b61 + 68250*m.b66*m.b62 + 97500*m.b66*m.b63 + 75000*m.b66*m.b78 + 40000*
                       m.b66*m.b79 + 35000*m.b66*m.b81 + 60000*m.b66*m.b82 + 35000*m.b66*m.b83 + 50000*m.b66*m.b84 + 
                       37500*m.b66*m.b106 + 20000*m.b66*m.b107 + 17500*m.b66*m.b109 + 30000*m.b66*m.b110 + 17500*m.b66*
                       m.b111 + 25000*m.b66*m.b112 + 20000*m.b67*m.b15 + 12000*m.b67*m.b16 + 14000*m.b67*m.b17 + 12000*
                       m.b67*m.b19 + 20000*m.b67*m.b20 + 16000*m.b67*m.b21 + 30000*m.b67*m.b29 + 18000*m.b67*m.b30 + 
                       21000*m.b67*m.b31 + 18000*m.b67*m.b33 + 30000*m.b67*m.b34 + 24000*m.b67*m.b35 + 60000*m.b67*m.b36
                        + 36000*m.b67*m.b37 + 42000*m.b67*m.b38 + 36000*m.b67*m.b40 + 60000*m.b67*m.b41 + 48000*m.b67*
                       m.b42 + 25000*m.b67*m.b43 + 15000*m.b67*m.b44 + 17500*m.b67*m.b45 + 15000*m.b67*m.b47 + 25000*
                       m.b67*m.b48 + 20000*m.b67*m.b49 + 97500*m.b67*m.b57 + 58500*m.b67*m.b58 + 68250*m.b67*m.b59 + 
                       58500*m.b67*m.b61 + 97500*m.b67*m.b62 + 78000*m.b67*m.b63 + 50000*m.b67*m.b78 + 30000*m.b67*m.b79
                        + 35000*m.b67*m.b80 + 30000*m.b67*m.b82 + 50000*m.b67*m.b83 + 40000*m.b67*m.b84 + 25000*m.b67*
                       m.b106 + 15000*m.b67*m.b107 + 17500*m.b67*m.b108 + 15000*m.b67*m.b110 + 25000*m.b67*m.b111 + 
                       20000*m.b67*m.b112 + 10000*m.b68*m.b15 + 10000*m.b68*m.b16 + 24000*m.b68*m.b17 + 12000*m.b68*
                       m.b18 + 16000*m.b68*m.b20 + 20000*m.b68*m.b21 + 15000*m.b68*m.b29 + 15000*m.b68*m.b30 + 36000*
                       m.b68*m.b31 + 18000*m.b68*m.b32 + 24000*m.b68*m.b34 + 30000*m.b68*m.b35 + 30000*m.b68*m.b36 + 
                       30000*m.b68*m.b37 + 72000*m.b68*m.b38 + 36000*m.b68*m.b39 + 48000*m.b68*m.b41 + 60000*m.b68*m.b42
                        + 12500*m.b68*m.b43 + 12500*m.b68*m.b44 + 30000*m.b68*m.b45 + 15000*m.b68*m.b46 + 20000*m.b68*
                       m.b48 + 25000*m.b68*m.b49 + 48750*m.b68*m.b57 + 48750*m.b68*m.b58 + 117000*m.b68*m.b59 + 58500*
                       m.b68*m.b60 + 78000*m.b68*m.b62 + 97500*m.b68*m.b63 + 25000*m.b68*m.b78 + 25000*m.b68*m.b79 + 
                       60000*m.b68*m.b80 + 30000*m.b68*m.b81 + 40000*m.b68*m.b83 + 50000*m.b68*m.b84 + 12500*m.b68*
                       m.b106 + 12500*m.b68*m.b107 + 30000*m.b68*m.b108 + 15000*m.b68*m.b109 + 20000*m.b68*m.b111 + 
                       25000*m.b68*m.b112 + 16000*m.b69*m.b15 + 20000*m.b69*m.b16 + 14000*m.b69*m.b17 + 20000*m.b69*
                       m.b18 + 16000*m.b69*m.b19 + 14000*m.b69*m.b21 + 24000*m.b69*m.b29 + 30000*m.b69*m.b30 + 21000*
                       m.b69*m.b31 + 30000*m.b69*m.b32 + 24000*m.b69*m.b33 + 21000*m.b69*m.b35 + 48000*m.b69*m.b36 + 
                       60000*m.b69*m.b37 + 42000*m.b69*m.b38 + 60000*m.b69*m.b39 + 48000*m.b69*m.b40 + 42000*m.b69*m.b42
                        + 20000*m.b69*m.b43 + 25000*m.b69*m.b44 + 17500*m.b69*m.b45 + 25000*m.b69*m.b46 + 20000*m.b69*
                       m.b47 + 17500*m.b69*m.b49 + 78000*m.b69*m.b57 + 97500*m.b69*m.b58 + 68250*m.b69*m.b59 + 97500*
                       m.b69*m.b60 + 78000*m.b69*m.b61 + 68250*m.b69*m.b63 + 40000*m.b69*m.b78 + 50000*m.b69*m.b79 + 
                       35000*m.b69*m.b80 + 50000*m.b69*m.b81 + 40000*m.b69*m.b82 + 35000*m.b69*m.b84 + 20000*m.b69*
                       m.b106 + 25000*m.b69*m.b107 + 17500*m.b69*m.b108 + 25000*m.b69*m.b109 + 20000*m.b69*m.b110 + 
                       17500*m.b69*m.b112 + 18000*m.b70*m.b15 + 14000*m.b70*m.b16 + 20000*m.b70*m.b17 + 16000*m.b70*
                       m.b18 + 20000*m.b70*m.b19 + 14000*m.b70*m.b20 + 27000*m.b70*m.b29 + 21000*m.b70*m.b30 + 30000*
                       m.b70*m.b31 + 24000*m.b70*m.b32 + 30000*m.b70*m.b33 + 21000*m.b70*m.b34 + 54000*m.b70*m.b36 + 
                       42000*m.b70*m.b37 + 60000*m.b70*m.b38 + 48000*m.b70*m.b39 + 60000*m.b70*m.b40 + 42000*m.b70*m.b41
                        + 22500*m.b70*m.b43 + 17500*m.b70*m.b44 + 25000*m.b70*m.b45 + 20000*m.b70*m.b46 + 25000*m.b70*
                       m.b47 + 17500*m.b70*m.b48 + 87750*m.b70*m.b57 + 68250*m.b70*m.b58 + 97500*m.b70*m.b59 + 78000*
                       m.b70*m.b60 + 97500*m.b70*m.b61 + 68250*m.b70*m.b62 + 45000*m.b70*m.b78 + 35000*m.b70*m.b79 + 
                       50000*m.b70*m.b80 + 40000*m.b70*m.b81 + 50000*m.b70*m.b82 + 35000*m.b70*m.b83 + 22500*m.b70*
                       m.b106 + 17500*m.b70*m.b107 + 25000*m.b70*m.b108 + 20000*m.b70*m.b109 + 25000*m.b70*m.b110 + 
                       17500*m.b70*m.b111 + 30000*m.b71*m.b2 + 45000*m.b71*m.b3 + 30000*m.b71*m.b4 + 15000*m.b71*m.b5 + 
                       24000*m.b71*m.b6 + 27000*m.b71*m.b7 + 32500*m.b71*m.b51 + 48750*m.b71*m.b52 + 32500*m.b71*m.b53
                        + 16250*m.b71*m.b54 + 26000*m.b71*m.b55 + 29250*m.b71*m.b56 + 35000*m.b71*m.b58 + 52500*m.b71*
                       m.b59 + 35000*m.b71*m.b60 + 17500*m.b71*m.b61 + 28000*m.b71*m.b62 + 31500*m.b71*m.b63 + 40000*
                       m.b71*m.b79 + 60000*m.b71*m.b80 + 40000*m.b71*m.b81 + 20000*m.b71*m.b82 + 32000*m.b71*m.b83 + 
                       36000*m.b71*m.b84 + 30000*m.b72*m.b1 + 24000*m.b72*m.b3 + 18000*m.b72*m.b4 + 15000*m.b72*m.b5 + 
                       30000*m.b72*m.b6 + 21000*m.b72*m.b7 + 32500*m.b72*m.b50 + 26000*m.b72*m.b52 + 19500*m.b72*m.b53
                        + 16250*m.b72*m.b54 + 32500*m.b72*m.b55 + 22750*m.b72*m.b56 + 35000*m.b72*m.b57 + 28000*m.b72*
                       m.b59 + 21000*m.b72*m.b60 + 17500*m.b72*m.b61 + 35000*m.b72*m.b62 + 24500*m.b72*m.b63 + 40000*
                       m.b72*m.b78 + 32000*m.b72*m.b80 + 24000*m.b72*m.b81 + 20000*m.b72*m.b82 + 40000*m.b72*m.b83 + 
                       28000*m.b72*m.b84 + 45000*m.b73*m.b1 + 24000*m.b73*m.b2 + 21000*m.b73*m.b4 + 36000*m.b73*m.b5 + 
                       21000*m.b73*m.b6 + 30000*m.b73*m.b7 + 48750*m.b73*m.b50 + 26000*m.b73*m.b51 + 22750*m.b73*m.b53
                        + 39000*m.b73*m.b54 + 22750*m.b73*m.b55 + 32500*m.b73*m.b56 + 52500*m.b73*m.b57 + 28000*m.b73*
                       m.b58 + 24500*m.b73*m.b60 + 42000*m.b73*m.b61 + 24500*m.b73*m.b62 + 35000*m.b73*m.b63 + 60000*
                       m.b73*m.b78 + 32000*m.b73*m.b79 + 28000*m.b73*m.b81 + 48000*m.b73*m.b82 + 28000*m.b73*m.b83 + 
                       40000*m.b73*m.b84 + 30000*m.b74*m.b1 + 18000*m.b74*m.b2 + 21000*m.b74*m.b3 + 18000*m.b74*m.b5 + 
                       30000*m.b74*m.b6 + 24000*m.b74*m.b7 + 32500*m.b74*m.b50 + 19500*m.b74*m.b51 + 22750*m.b74*m.b52
                        + 19500*m.b74*m.b54 + 32500*m.b74*m.b55 + 26000*m.b74*m.b56 + 35000*m.b74*m.b57 + 21000*m.b74*
                       m.b58 + 24500*m.b74*m.b59 + 21000*m.b74*m.b61 + 35000*m.b74*m.b62 + 28000*m.b74*m.b63 + 40000*
                       m.b74*m.b78 + 24000*m.b74*m.b79 + 28000*m.b74*m.b80 + 24000*m.b74*m.b82 + 40000*m.b74*m.b83 + 
                       32000*m.b74*m.b84 + 15000*m.b75*m.b1 + 15000*m.b75*m.b2 + 36000*m.b75*m.b3 + 18000*m.b75*m.b4 + 
                       24000*m.b75*m.b6 + 30000*m.b75*m.b7 + 16250*m.b75*m.b50 + 16250*m.b75*m.b51 + 39000*m.b75*m.b52
                        + 19500*m.b75*m.b53 + 26000*m.b75*m.b55 + 32500*m.b75*m.b56 + 17500*m.b75*m.b57 + 17500*m.b75*
                       m.b58 + 42000*m.b75*m.b59 + 21000*m.b75*m.b60 + 28000*m.b75*m.b62 + 35000*m.b75*m.b63 + 20000*
                       m.b75*m.b78 + 20000*m.b75*m.b79 + 48000*m.b75*m.b80 + 24000*m.b75*m.b81 + 32000*m.b75*m.b83 + 
                       40000*m.b75*m.b84 + 24000*m.b76*m.b1 + 30000*m.b76*m.b2 + 21000*m.b76*m.b3 + 30000*m.b76*m.b4 + 
                       24000*m.b76*m.b5 + 21000*m.b76*m.b7 + 26000*m.b76*m.b50 + 32500*m.b76*m.b51 + 22750*m.b76*m.b52
                        + 32500*m.b76*m.b53 + 26000*m.b76*m.b54 + 22750*m.b76*m.b56 + 28000*m.b76*m.b57 + 35000*m.b76*
                       m.b58 + 24500*m.b76*m.b59 + 35000*m.b76*m.b60 + 28000*m.b76*m.b61 + 24500*m.b76*m.b63 + 32000*
                       m.b76*m.b78 + 40000*m.b76*m.b79 + 28000*m.b76*m.b80 + 40000*m.b76*m.b81 + 32000*m.b76*m.b82 + 
                       28000*m.b76*m.b84 + 27000*m.b77*m.b1 + 21000*m.b77*m.b2 + 30000*m.b77*m.b3 + 24000*m.b77*m.b4 + 
                       30000*m.b77*m.b5 + 21000*m.b77*m.b6 + 29250*m.b77*m.b50 + 22750*m.b77*m.b51 + 32500*m.b77*m.b52
                        + 26000*m.b77*m.b53 + 32500*m.b77*m.b54 + 22750*m.b77*m.b55 + 31500*m.b77*m.b57 + 24500*m.b77*
                       m.b58 + 35000*m.b77*m.b59 + 28000*m.b77*m.b60 + 35000*m.b77*m.b61 + 24500*m.b77*m.b62 + 36000*
                       m.b77*m.b78 + 28000*m.b77*m.b79 + 40000*m.b77*m.b80 + 32000*m.b77*m.b81 + 40000*m.b77*m.b82 + 
                       28000*m.b77*m.b83 + 35000*m.b78*m.b2 + 52500*m.b78*m.b3 + 35000*m.b78*m.b4 + 17500*m.b78*m.b5 + 
                       28000*m.b78*m.b6 + 31500*m.b78*m.b7 + 30000*m.b78*m.b16 + 45000*m.b78*m.b17 + 30000*m.b78*m.b18
                        + 15000*m.b78*m.b19 + 24000*m.b78*m.b20 + 27000*m.b78*m.b21 + 125000*m.b78*m.b44 + 187500*m.b78*
                       m.b45 + 125000*m.b78*m.b46 + 62500*m.b78*m.b47 + 100000*m.b78*m.b48 + 112500*m.b78*m.b49 + 32500*
                       m.b78*m.b72 + 48750*m.b78*m.b73 + 32500*m.b78*m.b74 + 16250*m.b78*m.b75 + 26000*m.b78*m.b76 + 
                       29250*m.b78*m.b77 + 25000*m.b78*m.b93 + 37500*m.b78*m.b94 + 25000*m.b78*m.b95 + 12500*m.b78*m.b96
                        + 20000*m.b78*m.b97 + 22500*m.b78*m.b98 + 35000*m.b79*m.b1 + 28000*m.b79*m.b3 + 21000*m.b79*m.b4
                        + 17500*m.b79*m.b5 + 35000*m.b79*m.b6 + 24500*m.b79*m.b7 + 30000*m.b79*m.b15 + 24000*m.b79*m.b17
                        + 18000*m.b79*m.b18 + 15000*m.b79*m.b19 + 30000*m.b79*m.b20 + 21000*m.b79*m.b21 + 125000*m.b79*
                       m.b43 + 100000*m.b79*m.b45 + 75000*m.b79*m.b46 + 62500*m.b79*m.b47 + 125000*m.b79*m.b48 + 87500*
                       m.b79*m.b49 + 32500*m.b79*m.b71 + 26000*m.b79*m.b73 + 19500*m.b79*m.b74 + 16250*m.b79*m.b75 + 
                       32500*m.b79*m.b76 + 22750*m.b79*m.b77 + 25000*m.b79*m.b92 + 20000*m.b79*m.b94 + 15000*m.b79*m.b95
                        + 12500*m.b79*m.b96 + 25000*m.b79*m.b97 + 17500*m.b79*m.b98 + 52500*m.b80*m.b1 + 28000*m.b80*
                       m.b2 + 24500*m.b80*m.b4 + 42000*m.b80*m.b5 + 24500*m.b80*m.b6 + 35000*m.b80*m.b7 + 45000*m.b80*
                       m.b15 + 24000*m.b80*m.b16 + 21000*m.b80*m.b18 + 36000*m.b80*m.b19 + 21000*m.b80*m.b20 + 30000*
                       m.b80*m.b21 + 187500*m.b80*m.b43 + 100000*m.b80*m.b44 + 87500*m.b80*m.b46 + 150000*m.b80*m.b47 + 
                       87500*m.b80*m.b48 + 125000*m.b80*m.b49 + 48750*m.b80*m.b71 + 26000*m.b80*m.b72 + 22750*m.b80*
                       m.b74 + 39000*m.b80*m.b75 + 22750*m.b80*m.b76 + 32500*m.b80*m.b77 + 37500*m.b80*m.b92 + 20000*
                       m.b80*m.b93 + 17500*m.b80*m.b95 + 30000*m.b80*m.b96 + 17500*m.b80*m.b97 + 25000*m.b80*m.b98 + 
                       35000*m.b81*m.b1 + 21000*m.b81*m.b2 + 24500*m.b81*m.b3 + 21000*m.b81*m.b5 + 35000*m.b81*m.b6 + 
                       28000*m.b81*m.b7 + 30000*m.b81*m.b15 + 18000*m.b81*m.b16 + 21000*m.b81*m.b17 + 18000*m.b81*m.b19
                        + 30000*m.b81*m.b20 + 24000*m.b81*m.b21 + 125000*m.b81*m.b43 + 75000*m.b81*m.b44 + 87500*m.b81*
                       m.b45 + 75000*m.b81*m.b47 + 125000*m.b81*m.b48 + 100000*m.b81*m.b49 + 32500*m.b81*m.b71 + 19500*
                       m.b81*m.b72 + 22750*m.b81*m.b73 + 19500*m.b81*m.b75 + 32500*m.b81*m.b76 + 26000*m.b81*m.b77 + 
                       25000*m.b81*m.b92 + 15000*m.b81*m.b93 + 17500*m.b81*m.b94 + 15000*m.b81*m.b96 + 25000*m.b81*m.b97
                        + 20000*m.b81*m.b98 + 17500*m.b82*m.b1 + 17500*m.b82*m.b2 + 42000*m.b82*m.b3 + 21000*m.b82*m.b4
                        + 28000*m.b82*m.b6 + 35000*m.b82*m.b7 + 15000*m.b82*m.b15 + 15000*m.b82*m.b16 + 36000*m.b82*
                       m.b17 + 18000*m.b82*m.b18 + 24000*m.b82*m.b20 + 30000*m.b82*m.b21 + 62500*m.b82*m.b43 + 62500*
                       m.b82*m.b44 + 150000*m.b82*m.b45 + 75000*m.b82*m.b46 + 100000*m.b82*m.b48 + 125000*m.b82*m.b49 + 
                       16250*m.b82*m.b71 + 16250*m.b82*m.b72 + 39000*m.b82*m.b73 + 19500*m.b82*m.b74 + 26000*m.b82*m.b76
                        + 32500*m.b82*m.b77 + 12500*m.b82*m.b92 + 12500*m.b82*m.b93 + 30000*m.b82*m.b94 + 15000*m.b82*
                       m.b95 + 20000*m.b82*m.b97 + 25000*m.b82*m.b98 + 28000*m.b83*m.b1 + 35000*m.b83*m.b2 + 24500*m.b83
                       *m.b3 + 35000*m.b83*m.b4 + 28000*m.b83*m.b5 + 24500*m.b83*m.b7 + 24000*m.b83*m.b15 + 30000*m.b83*
                       m.b16 + 21000*m.b83*m.b17 + 30000*m.b83*m.b18 + 24000*m.b83*m.b19 + 21000*m.b83*m.b21 + 100000*
                       m.b83*m.b43 + 125000*m.b83*m.b44 + 87500*m.b83*m.b45 + 125000*m.b83*m.b46 + 100000*m.b83*m.b47 + 
                       87500*m.b83*m.b49 + 26000*m.b83*m.b71 + 32500*m.b83*m.b72 + 22750*m.b83*m.b73 + 32500*m.b83*m.b74
                        + 26000*m.b83*m.b75 + 22750*m.b83*m.b77 + 20000*m.b83*m.b92 + 25000*m.b83*m.b93 + 17500*m.b83*
                       m.b94 + 25000*m.b83*m.b95 + 20000*m.b83*m.b96 + 17500*m.b83*m.b98 + 31500*m.b84*m.b1 + 24500*
                       m.b84*m.b2 + 35000*m.b84*m.b3 + 28000*m.b84*m.b4 + 35000*m.b84*m.b5 + 24500*m.b84*m.b6 + 27000*
                       m.b84*m.b15 + 21000*m.b84*m.b16 + 30000*m.b84*m.b17 + 24000*m.b84*m.b18 + 30000*m.b84*m.b19 + 
                       21000*m.b84*m.b20 + 112500*m.b84*m.b43 + 87500*m.b84*m.b44 + 125000*m.b84*m.b45 + 100000*m.b84*
                       m.b46 + 125000*m.b84*m.b47 + 87500*m.b84*m.b48 + 29250*m.b84*m.b71 + 22750*m.b84*m.b72 + 32500*
                       m.b84*m.b73 + 26000*m.b84*m.b74 + 32500*m.b84*m.b75 + 22750*m.b84*m.b76 + 22500*m.b84*m.b92 + 
                       17500*m.b84*m.b93 + 25000*m.b84*m.b94 + 20000*m.b84*m.b95 + 25000*m.b84*m.b96 + 17500*m.b84*m.b97
                        + 50000*m.b85*m.b9 + 75000*m.b85*m.b10 + 50000*m.b85*m.b11 + 25000*m.b85*m.b12 + 40000*m.b85*
                       m.b13 + 45000*m.b85*m.b14 + 15000*m.b85*m.b16 + 22500*m.b85*m.b17 + 15000*m.b85*m.b18 + 7500*
                       m.b85*m.b19 + 12000*m.b85*m.b20 + 13500*m.b85*m.b21 + 55000*m.b85*m.b30 + 82500*m.b85*m.b31 + 
                       55000*m.b85*m.b32 + 27500*m.b85*m.b33 + 44000*m.b85*m.b34 + 49500*m.b85*m.b35 + 75000*m.b85*m.b51
                        + 112500*m.b85*m.b52 + 75000*m.b85*m.b53 + 37500*m.b85*m.b54 + 60000*m.b85*m.b55 + 67500*m.b85*
                       m.b56 + 25000*m.b85*m.b65 + 37500*m.b85*m.b66 + 25000*m.b85*m.b67 + 12500*m.b85*m.b68 + 20000*
                       m.b85*m.b69 + 22500*m.b85*m.b70 + 40000*m.b85*m.b107 + 60000*m.b85*m.b108 + 40000*m.b85*m.b109 + 
                       20000*m.b85*m.b110 + 32000*m.b85*m.b111 + 36000*m.b85*m.b112 + 50000*m.b86*m.b8 + 40000*m.b86*
                       m.b10 + 30000*m.b86*m.b11 + 25000*m.b86*m.b12 + 50000*m.b86*m.b13 + 35000*m.b86*m.b14 + 15000*
                       m.b86*m.b15 + 12000*m.b86*m.b17 + 9000*m.b86*m.b18 + 7500*m.b86*m.b19 + 15000*m.b86*m.b20 + 10500
                       *m.b86*m.b21 + 55000*m.b86*m.b29 + 44000*m.b86*m.b31 + 33000*m.b86*m.b32 + 27500*m.b86*m.b33 + 
                       55000*m.b86*m.b34 + 38500*m.b86*m.b35 + 75000*m.b86*m.b50 + 60000*m.b86*m.b52 + 45000*m.b86*m.b53
                        + 37500*m.b86*m.b54 + 75000*m.b86*m.b55 + 52500*m.b86*m.b56 + 25000*m.b86*m.b64 + 20000*m.b86*
                       m.b66 + 15000*m.b86*m.b67 + 12500*m.b86*m.b68 + 25000*m.b86*m.b69 + 17500*m.b86*m.b70 + 40000*
                       m.b86*m.b106 + 32000*m.b86*m.b108 + 24000*m.b86*m.b109 + 20000*m.b86*m.b110 + 40000*m.b86*m.b111
                        + 28000*m.b86*m.b112 + 75000*m.b87*m.b8 + 40000*m.b87*m.b9 + 35000*m.b87*m.b11 + 60000*m.b87*
                       m.b12 + 35000*m.b87*m.b13 + 50000*m.b87*m.b14 + 22500*m.b87*m.b15 + 12000*m.b87*m.b16 + 10500*
                       m.b87*m.b18 + 18000*m.b87*m.b19 + 10500*m.b87*m.b20 + 15000*m.b87*m.b21 + 82500*m.b87*m.b29 + 
                       44000*m.b87*m.b30 + 38500*m.b87*m.b32 + 66000*m.b87*m.b33 + 38500*m.b87*m.b34 + 55000*m.b87*m.b35
                        + 112500*m.b87*m.b50 + 60000*m.b87*m.b51 + 52500*m.b87*m.b53 + 90000*m.b87*m.b54 + 52500*m.b87*
                       m.b55 + 75000*m.b87*m.b56 + 37500*m.b87*m.b64 + 20000*m.b87*m.b65 + 17500*m.b87*m.b67 + 30000*
                       m.b87*m.b68 + 17500*m.b87*m.b69 + 25000*m.b87*m.b70 + 60000*m.b87*m.b106 + 32000*m.b87*m.b107 + 
                       28000*m.b87*m.b109 + 48000*m.b87*m.b110 + 28000*m.b87*m.b111 + 40000*m.b87*m.b112 + 50000*m.b88*
                       m.b8 + 30000*m.b88*m.b9 + 35000*m.b88*m.b10 + 30000*m.b88*m.b12 + 50000*m.b88*m.b13 + 40000*m.b88
                       *m.b14 + 15000*m.b88*m.b15 + 9000*m.b88*m.b16 + 10500*m.b88*m.b17 + 9000*m.b88*m.b19 + 15000*
                       m.b88*m.b20 + 12000*m.b88*m.b21 + 55000*m.b88*m.b29 + 33000*m.b88*m.b30 + 38500*m.b88*m.b31 + 
                       33000*m.b88*m.b33 + 55000*m.b88*m.b34 + 44000*m.b88*m.b35 + 75000*m.b88*m.b50 + 45000*m.b88*m.b51
                        + 52500*m.b88*m.b52 + 45000*m.b88*m.b54 + 75000*m.b88*m.b55 + 60000*m.b88*m.b56 + 25000*m.b88*
                       m.b64 + 15000*m.b88*m.b65 + 17500*m.b88*m.b66 + 15000*m.b88*m.b68 + 25000*m.b88*m.b69 + 20000*
                       m.b88*m.b70 + 40000*m.b88*m.b106 + 24000*m.b88*m.b107 + 28000*m.b88*m.b108 + 24000*m.b88*m.b110
                        + 40000*m.b88*m.b111 + 32000*m.b88*m.b112 + 25000*m.b89*m.b8 + 25000*m.b89*m.b9 + 60000*m.b89*
                       m.b10 + 30000*m.b89*m.b11 + 40000*m.b89*m.b13 + 50000*m.b89*m.b14 + 7500*m.b89*m.b15 + 7500*m.b89
                       *m.b16 + 18000*m.b89*m.b17 + 9000*m.b89*m.b18 + 12000*m.b89*m.b20 + 15000*m.b89*m.b21 + 27500*
                       m.b89*m.b29 + 27500*m.b89*m.b30 + 66000*m.b89*m.b31 + 33000*m.b89*m.b32 + 44000*m.b89*m.b34 + 
                       55000*m.b89*m.b35 + 37500*m.b89*m.b50 + 37500*m.b89*m.b51 + 90000*m.b89*m.b52 + 45000*m.b89*m.b53
                        + 60000*m.b89*m.b55 + 75000*m.b89*m.b56 + 12500*m.b89*m.b64 + 12500*m.b89*m.b65 + 30000*m.b89*
                       m.b66 + 15000*m.b89*m.b67 + 20000*m.b89*m.b69 + 25000*m.b89*m.b70 + 20000*m.b89*m.b106 + 20000*
                       m.b89*m.b107 + 48000*m.b89*m.b108 + 24000*m.b89*m.b109 + 32000*m.b89*m.b111 + 40000*m.b89*m.b112
                        + 40000*m.b90*m.b8 + 50000*m.b90*m.b9 + 35000*m.b90*m.b10 + 50000*m.b90*m.b11 + 40000*m.b90*
                       m.b12 + 35000*m.b90*m.b14 + 12000*m.b90*m.b15 + 15000*m.b90*m.b16 + 10500*m.b90*m.b17 + 15000*
                       m.b90*m.b18 + 12000*m.b90*m.b19 + 10500*m.b90*m.b21 + 44000*m.b90*m.b29 + 55000*m.b90*m.b30 + 
                       38500*m.b90*m.b31 + 55000*m.b90*m.b32 + 44000*m.b90*m.b33 + 38500*m.b90*m.b35 + 60000*m.b90*m.b50
                        + 75000*m.b90*m.b51 + 52500*m.b90*m.b52 + 75000*m.b90*m.b53 + 60000*m.b90*m.b54 + 52500*m.b90*
                       m.b56 + 20000*m.b90*m.b64 + 25000*m.b90*m.b65 + 17500*m.b90*m.b66 + 25000*m.b90*m.b67 + 20000*
                       m.b90*m.b68 + 17500*m.b90*m.b70 + 32000*m.b90*m.b106 + 40000*m.b90*m.b107 + 28000*m.b90*m.b108 + 
                       40000*m.b90*m.b109 + 32000*m.b90*m.b110 + 28000*m.b90*m.b112 + 45000*m.b91*m.b8 + 35000*m.b91*
                       m.b9 + 50000*m.b91*m.b10 + 40000*m.b91*m.b11 + 50000*m.b91*m.b12 + 35000*m.b91*m.b13 + 13500*
                       m.b91*m.b15 + 10500*m.b91*m.b16 + 15000*m.b91*m.b17 + 12000*m.b91*m.b18 + 15000*m.b91*m.b19 + 
                       10500*m.b91*m.b20 + 49500*m.b91*m.b29 + 38500*m.b91*m.b30 + 55000*m.b91*m.b31 + 44000*m.b91*m.b32
                        + 55000*m.b91*m.b33 + 38500*m.b91*m.b34 + 67500*m.b91*m.b50 + 52500*m.b91*m.b51 + 75000*m.b91*
                       m.b52 + 60000*m.b91*m.b53 + 75000*m.b91*m.b54 + 52500*m.b91*m.b55 + 22500*m.b91*m.b64 + 17500*
                       m.b91*m.b65 + 25000*m.b91*m.b66 + 20000*m.b91*m.b67 + 25000*m.b91*m.b68 + 17500*m.b91*m.b69 + 
                       36000*m.b91*m.b106 + 28000*m.b91*m.b107 + 40000*m.b91*m.b108 + 32000*m.b91*m.b109 + 40000*m.b91*
                       m.b110 + 28000*m.b91*m.b111 + 50000*m.b92*m.b16 + 75000*m.b92*m.b17 + 50000*m.b92*m.b18 + 25000*
                       m.b92*m.b19 + 40000*m.b92*m.b20 + 45000*m.b92*m.b21 + 50000*m.b92*m.b44 + 75000*m.b92*m.b45 + 
                       50000*m.b92*m.b46 + 25000*m.b92*m.b47 + 40000*m.b92*m.b48 + 45000*m.b92*m.b49 + 37500*m.b92*m.b51
                        + 56250*m.b92*m.b52 + 37500*m.b92*m.b53 + 18750*m.b92*m.b54 + 30000*m.b92*m.b55 + 33750*m.b92*
                       m.b56 + 35000*m.b92*m.b65 + 52500*m.b92*m.b66 + 35000*m.b92*m.b67 + 17500*m.b92*m.b68 + 28000*
                       m.b92*m.b69 + 31500*m.b92*m.b70 + 20000*m.b92*m.b86 + 30000*m.b92*m.b87 + 20000*m.b92*m.b88 + 
                       10000*m.b92*m.b89 + 16000*m.b92*m.b90 + 18000*m.b92*m.b91 + 50000*m.b92*m.b100 + 75000*m.b92*
                       m.b101 + 50000*m.b92*m.b102 + 25000*m.b92*m.b103 + 40000*m.b92*m.b104 + 45000*m.b92*m.b105 + 
                       50000*m.b93*m.b15 + 40000*m.b93*m.b17 + 30000*m.b93*m.b18 + 25000*m.b93*m.b19 + 50000*m.b93*m.b20
                        + 35000*m.b93*m.b21 + 50000*m.b93*m.b43 + 40000*m.b93*m.b45 + 30000*m.b93*m.b46 + 25000*m.b93*
                       m.b47 + 50000*m.b93*m.b48 + 35000*m.b93*m.b49 + 37500*m.b93*m.b50 + 30000*m.b93*m.b52 + 22500*
                       m.b93*m.b53 + 18750*m.b93*m.b54 + 37500*m.b93*m.b55 + 26250*m.b93*m.b56 + 35000*m.b93*m.b64 + 
                       28000*m.b93*m.b66 + 21000*m.b93*m.b67 + 17500*m.b93*m.b68 + 35000*m.b93*m.b69 + 24500*m.b93*m.b70
                        + 20000*m.b93*m.b85 + 16000*m.b93*m.b87 + 12000*m.b93*m.b88 + 10000*m.b93*m.b89 + 20000*m.b93*
                       m.b90 + 14000*m.b93*m.b91 + 50000*m.b93*m.b99 + 40000*m.b93*m.b101 + 30000*m.b93*m.b102 + 25000*
                       m.b93*m.b103 + 50000*m.b93*m.b104 + 35000*m.b93*m.b105 + 75000*m.b94*m.b15 + 40000*m.b94*m.b16 + 
                       35000*m.b94*m.b18 + 60000*m.b94*m.b19 + 35000*m.b94*m.b20 + 50000*m.b94*m.b21 + 75000*m.b94*m.b43
                        + 40000*m.b94*m.b44 + 35000*m.b94*m.b46 + 60000*m.b94*m.b47 + 35000*m.b94*m.b48 + 50000*m.b94*
                       m.b49 + 56250*m.b94*m.b50 + 30000*m.b94*m.b51 + 26250*m.b94*m.b53 + 45000*m.b94*m.b54 + 26250*
                       m.b94*m.b55 + 37500*m.b94*m.b56 + 52500*m.b94*m.b64 + 28000*m.b94*m.b65 + 24500*m.b94*m.b67 + 
                       42000*m.b94*m.b68 + 24500*m.b94*m.b69 + 35000*m.b94*m.b70 + 30000*m.b94*m.b85 + 16000*m.b94*m.b86
                        + 14000*m.b94*m.b88 + 24000*m.b94*m.b89 + 14000*m.b94*m.b90 + 20000*m.b94*m.b91 + 75000*m.b94*
                       m.b99 + 40000*m.b94*m.b100 + 35000*m.b94*m.b102 + 60000*m.b94*m.b103 + 35000*m.b94*m.b104 + 50000
                       *m.b94*m.b105 + 50000*m.b95*m.b15 + 30000*m.b95*m.b16 + 35000*m.b95*m.b17 + 30000*m.b95*m.b19 + 
                       50000*m.b95*m.b20 + 40000*m.b95*m.b21 + 50000*m.b95*m.b43 + 30000*m.b95*m.b44 + 35000*m.b95*m.b45
                        + 30000*m.b95*m.b47 + 50000*m.b95*m.b48 + 40000*m.b95*m.b49 + 37500*m.b95*m.b50 + 22500*m.b95*
                       m.b51 + 26250*m.b95*m.b52 + 22500*m.b95*m.b54 + 37500*m.b95*m.b55 + 30000*m.b95*m.b56 + 35000*
                       m.b95*m.b64 + 21000*m.b95*m.b65 + 24500*m.b95*m.b66 + 21000*m.b95*m.b68 + 35000*m.b95*m.b69 + 
                       28000*m.b95*m.b70 + 20000*m.b95*m.b85 + 12000*m.b95*m.b86 + 14000*m.b95*m.b87 + 12000*m.b95*m.b89
                        + 20000*m.b95*m.b90 + 16000*m.b95*m.b91 + 50000*m.b95*m.b99 + 30000*m.b95*m.b100 + 35000*m.b95*
                       m.b101 + 30000*m.b95*m.b103 + 50000*m.b95*m.b104 + 40000*m.b95*m.b105 + 25000*m.b96*m.b15 + 25000
                       *m.b96*m.b16 + 60000*m.b96*m.b17 + 30000*m.b96*m.b18 + 40000*m.b96*m.b20 + 50000*m.b96*m.b21 + 
                       25000*m.b96*m.b43 + 25000*m.b96*m.b44 + 60000*m.b96*m.b45 + 30000*m.b96*m.b46 + 40000*m.b96*m.b48
                        + 50000*m.b96*m.b49 + 18750*m.b96*m.b50 + 18750*m.b96*m.b51 + 45000*m.b96*m.b52 + 22500*m.b96*
                       m.b53 + 30000*m.b96*m.b55 + 37500*m.b96*m.b56 + 17500*m.b96*m.b64 + 17500*m.b96*m.b65 + 42000*
                       m.b96*m.b66 + 21000*m.b96*m.b67 + 28000*m.b96*m.b69 + 35000*m.b96*m.b70 + 10000*m.b96*m.b85 + 
                       10000*m.b96*m.b86 + 24000*m.b96*m.b87 + 12000*m.b96*m.b88 + 16000*m.b96*m.b90 + 20000*m.b96*m.b91
                        + 25000*m.b96*m.b99 + 25000*m.b96*m.b100 + 60000*m.b96*m.b101 + 30000*m.b96*m.b102 + 40000*m.b96
                       *m.b104 + 50000*m.b96*m.b105 + 40000*m.b97*m.b15 + 50000*m.b97*m.b16 + 35000*m.b97*m.b17 + 50000*
                       m.b97*m.b18 + 40000*m.b97*m.b19 + 35000*m.b97*m.b21 + 40000*m.b97*m.b43 + 50000*m.b97*m.b44 + 
                       35000*m.b97*m.b45 + 50000*m.b97*m.b46 + 40000*m.b97*m.b47 + 35000*m.b97*m.b49 + 30000*m.b97*m.b50
                        + 37500*m.b97*m.b51 + 26250*m.b97*m.b52 + 37500*m.b97*m.b53 + 30000*m.b97*m.b54 + 26250*m.b97*
                       m.b56 + 28000*m.b97*m.b64 + 35000*m.b97*m.b65 + 24500*m.b97*m.b66 + 35000*m.b97*m.b67 + 28000*
                       m.b97*m.b68 + 24500*m.b97*m.b70 + 16000*m.b97*m.b85 + 20000*m.b97*m.b86 + 14000*m.b97*m.b87 + 
                       20000*m.b97*m.b88 + 16000*m.b97*m.b89 + 14000*m.b97*m.b91 + 40000*m.b97*m.b99 + 50000*m.b97*
                       m.b100 + 35000*m.b97*m.b101 + 50000*m.b97*m.b102 + 40000*m.b97*m.b103 + 35000*m.b97*m.b105 + 
                       45000*m.b98*m.b15 + 35000*m.b98*m.b16 + 50000*m.b98*m.b17 + 40000*m.b98*m.b18 + 50000*m.b98*m.b19
                        + 35000*m.b98*m.b20 + 45000*m.b98*m.b43 + 35000*m.b98*m.b44 + 50000*m.b98*m.b45 + 40000*m.b98*
                       m.b46 + 50000*m.b98*m.b47 + 35000*m.b98*m.b48 + 33750*m.b98*m.b50 + 26250*m.b98*m.b51 + 37500*
                       m.b98*m.b52 + 30000*m.b98*m.b53 + 37500*m.b98*m.b54 + 26250*m.b98*m.b55 + 31500*m.b98*m.b64 + 
                       24500*m.b98*m.b65 + 35000*m.b98*m.b66 + 28000*m.b98*m.b67 + 35000*m.b98*m.b68 + 24500*m.b98*m.b69
                        + 18000*m.b98*m.b85 + 14000*m.b98*m.b86 + 20000*m.b98*m.b87 + 16000*m.b98*m.b88 + 20000*m.b98*
                       m.b89 + 14000*m.b98*m.b90 + 45000*m.b98*m.b99 + 35000*m.b98*m.b100 + 50000*m.b98*m.b101 + 40000*
                       m.b98*m.b102 + 50000*m.b98*m.b103 + 35000*m.b98*m.b104 + 50000*m.b99*m.b2 + 75000*m.b99*m.b3 + 
                       50000*m.b99*m.b4 + 25000*m.b99*m.b5 + 40000*m.b99*m.b6 + 45000*m.b99*m.b7 + 40000*m.b99*m.b23 + 
                       60000*m.b99*m.b24 + 40000*m.b99*m.b25 + 20000*m.b99*m.b26 + 32000*m.b99*m.b27 + 36000*m.b99*m.b28
                        + 50000*m.b99*m.b51 + 75000*m.b99*m.b52 + 50000*m.b99*m.b53 + 25000*m.b99*m.b54 + 40000*m.b99*
                       m.b55 + 45000*m.b99*m.b56 + 50000*m.b99*m.b93 + 75000*m.b99*m.b94 + 50000*m.b99*m.b95 + 25000*
                       m.b99*m.b96 + 40000*m.b99*m.b97 + 45000*m.b99*m.b98 + 50000*m.b100*m.b1 + 40000*m.b100*m.b3 + 
                       30000*m.b100*m.b4 + 25000*m.b100*m.b5 + 50000*m.b100*m.b6 + 35000*m.b100*m.b7 + 40000*m.b100*
                       m.b22 + 32000*m.b100*m.b24 + 24000*m.b100*m.b25 + 20000*m.b100*m.b26 + 40000*m.b100*m.b27 + 28000
                       *m.b100*m.b28 + 50000*m.b100*m.b50 + 40000*m.b100*m.b52 + 30000*m.b100*m.b53 + 25000*m.b100*m.b54
                        + 50000*m.b100*m.b55 + 35000*m.b100*m.b56 + 50000*m.b100*m.b92 + 40000*m.b100*m.b94 + 30000*
                       m.b100*m.b95 + 25000*m.b100*m.b96 + 50000*m.b100*m.b97 + 35000*m.b100*m.b98 + 75000*m.b101*m.b1
                        + 40000*m.b101*m.b2 + 35000*m.b101*m.b4 + 60000*m.b101*m.b5 + 35000*m.b101*m.b6 + 50000*m.b101*
                       m.b7 + 60000*m.b101*m.b22 + 32000*m.b101*m.b23 + 28000*m.b101*m.b25 + 48000*m.b101*m.b26 + 28000*
                       m.b101*m.b27 + 40000*m.b101*m.b28 + 75000*m.b101*m.b50 + 40000*m.b101*m.b51 + 35000*m.b101*m.b53
                        + 60000*m.b101*m.b54 + 35000*m.b101*m.b55 + 50000*m.b101*m.b56 + 75000*m.b101*m.b92 + 40000*
                       m.b101*m.b93 + 35000*m.b101*m.b95 + 60000*m.b101*m.b96 + 35000*m.b101*m.b97 + 50000*m.b101*m.b98
                        + 50000*m.b102*m.b1 + 30000*m.b102*m.b2 + 35000*m.b102*m.b3 + 30000*m.b102*m.b5 + 50000*m.b102*
                       m.b6 + 40000*m.b102*m.b7 + 40000*m.b102*m.b22 + 24000*m.b102*m.b23 + 28000*m.b102*m.b24 + 24000*
                       m.b102*m.b26 + 40000*m.b102*m.b27 + 32000*m.b102*m.b28 + 50000*m.b102*m.b50 + 30000*m.b102*m.b51
                        + 35000*m.b102*m.b52 + 30000*m.b102*m.b54 + 50000*m.b102*m.b55 + 40000*m.b102*m.b56 + 50000*
                       m.b102*m.b92 + 30000*m.b102*m.b93 + 35000*m.b102*m.b94 + 30000*m.b102*m.b96 + 50000*m.b102*m.b97
                        + 40000*m.b102*m.b98 + 25000*m.b103*m.b1 + 25000*m.b103*m.b2 + 60000*m.b103*m.b3 + 30000*m.b103*
                       m.b4 + 40000*m.b103*m.b6 + 50000*m.b103*m.b7 + 20000*m.b103*m.b22 + 20000*m.b103*m.b23 + 48000*
                       m.b103*m.b24 + 24000*m.b103*m.b25 + 32000*m.b103*m.b27 + 40000*m.b103*m.b28 + 25000*m.b103*m.b50
                        + 25000*m.b103*m.b51 + 60000*m.b103*m.b52 + 30000*m.b103*m.b53 + 40000*m.b103*m.b55 + 50000*
                       m.b103*m.b56 + 25000*m.b103*m.b92 + 25000*m.b103*m.b93 + 60000*m.b103*m.b94 + 30000*m.b103*m.b95
                        + 40000*m.b103*m.b97 + 50000*m.b103*m.b98 + 40000*m.b104*m.b1 + 50000*m.b104*m.b2 + 35000*m.b104
                       *m.b3 + 50000*m.b104*m.b4 + 40000*m.b104*m.b5 + 35000*m.b104*m.b7 + 32000*m.b104*m.b22 + 40000*
                       m.b104*m.b23 + 28000*m.b104*m.b24 + 40000*m.b104*m.b25 + 32000*m.b104*m.b26 + 28000*m.b104*m.b28
                        + 40000*m.b104*m.b50 + 50000*m.b104*m.b51 + 35000*m.b104*m.b52 + 50000*m.b104*m.b53 + 40000*
                       m.b104*m.b54 + 35000*m.b104*m.b56 + 40000*m.b104*m.b92 + 50000*m.b104*m.b93 + 35000*m.b104*m.b94
                        + 50000*m.b104*m.b95 + 40000*m.b104*m.b96 + 35000*m.b104*m.b98 + 45000*m.b105*m.b1 + 35000*
                       m.b105*m.b2 + 50000*m.b105*m.b3 + 40000*m.b105*m.b4 + 50000*m.b105*m.b5 + 35000*m.b105*m.b6 + 
                       36000*m.b105*m.b22 + 28000*m.b105*m.b23 + 40000*m.b105*m.b24 + 32000*m.b105*m.b25 + 40000*m.b105*
                       m.b26 + 28000*m.b105*m.b27 + 45000*m.b105*m.b50 + 35000*m.b105*m.b51 + 50000*m.b105*m.b52 + 40000
                       *m.b105*m.b53 + 50000*m.b105*m.b54 + 35000*m.b105*m.b55 + 45000*m.b105*m.b92 + 35000*m.b105*m.b93
                        + 50000*m.b105*m.b94 + 40000*m.b105*m.b95 + 50000*m.b105*m.b96 + 35000*m.b105*m.b97 + 50000*
                       m.b106*m.b9 + 75000*m.b106*m.b10 + 50000*m.b106*m.b11 + 25000*m.b106*m.b12 + 40000*m.b106*m.b13
                        + 45000*m.b106*m.b14 + 25000*m.b106*m.b16 + 37500*m.b106*m.b17 + 25000*m.b106*m.b18 + 12500*
                       m.b106*m.b19 + 20000*m.b106*m.b20 + 22500*m.b106*m.b21 + 25000*m.b106*m.b30 + 37500*m.b106*m.b31
                        + 25000*m.b106*m.b32 + 12500*m.b106*m.b33 + 20000*m.b106*m.b34 + 22500*m.b106*m.b35 + 20000*
                       m.b106*m.b44 + 30000*m.b106*m.b45 + 20000*m.b106*m.b46 + 10000*m.b106*m.b47 + 16000*m.b106*m.b48
                        + 18000*m.b106*m.b49 + 25000*m.b106*m.b65 + 37500*m.b106*m.b66 + 25000*m.b106*m.b67 + 12500*
                       m.b106*m.b68 + 20000*m.b106*m.b69 + 22500*m.b106*m.b70 + 40000*m.b106*m.b86 + 60000*m.b106*m.b87
                        + 40000*m.b106*m.b88 + 20000*m.b106*m.b89 + 32000*m.b106*m.b90 + 36000*m.b106*m.b91 + 50000*
                       m.b107*m.b8 + 40000*m.b107*m.b10 + 30000*m.b107*m.b11 + 25000*m.b107*m.b12 + 50000*m.b107*m.b13
                        + 35000*m.b107*m.b14 + 25000*m.b107*m.b15 + 20000*m.b107*m.b17 + 15000*m.b107*m.b18 + 12500*
                       m.b107*m.b19 + 25000*m.b107*m.b20 + 17500*m.b107*m.b21 + 25000*m.b107*m.b29 + 20000*m.b107*m.b31
                        + 15000*m.b107*m.b32 + 12500*m.b107*m.b33 + 25000*m.b107*m.b34 + 17500*m.b107*m.b35 + 20000*
                       m.b107*m.b43 + 16000*m.b107*m.b45 + 12000*m.b107*m.b46 + 10000*m.b107*m.b47 + 20000*m.b107*m.b48
                        + 14000*m.b107*m.b49 + 25000*m.b107*m.b64 + 20000*m.b107*m.b66 + 15000*m.b107*m.b67 + 12500*
                       m.b107*m.b68 + 25000*m.b107*m.b69 + 17500*m.b107*m.b70 + 40000*m.b107*m.b85 + 32000*m.b107*m.b87
                        + 24000*m.b107*m.b88 + 20000*m.b107*m.b89 + 40000*m.b107*m.b90 + 28000*m.b107*m.b91 + 75000*
                       m.b108*m.b8 + 40000*m.b108*m.b9 + 35000*m.b108*m.b11 + 60000*m.b108*m.b12 + 35000*m.b108*m.b13 + 
                       50000*m.b108*m.b14 + 37500*m.b108*m.b15 + 20000*m.b108*m.b16 + 17500*m.b108*m.b18 + 30000*m.b108*
                       m.b19 + 17500*m.b108*m.b20 + 25000*m.b108*m.b21 + 37500*m.b108*m.b29 + 20000*m.b108*m.b30 + 17500
                       *m.b108*m.b32 + 30000*m.b108*m.b33 + 17500*m.b108*m.b34 + 25000*m.b108*m.b35 + 30000*m.b108*m.b43
                        + 16000*m.b108*m.b44 + 14000*m.b108*m.b46 + 24000*m.b108*m.b47 + 14000*m.b108*m.b48 + 20000*
                       m.b108*m.b49 + 37500*m.b108*m.b64 + 20000*m.b108*m.b65 + 17500*m.b108*m.b67 + 30000*m.b108*m.b68
                        + 17500*m.b108*m.b69 + 25000*m.b108*m.b70 + 60000*m.b108*m.b85 + 32000*m.b108*m.b86 + 28000*
                       m.b108*m.b88 + 48000*m.b108*m.b89 + 28000*m.b108*m.b90 + 40000*m.b108*m.b91 + 50000*m.b109*m.b8
                        + 30000*m.b109*m.b9 + 35000*m.b109*m.b10 + 30000*m.b109*m.b12 + 50000*m.b109*m.b13 + 40000*
                       m.b109*m.b14 + 25000*m.b109*m.b15 + 15000*m.b109*m.b16 + 17500*m.b109*m.b17 + 15000*m.b109*m.b19
                        + 25000*m.b109*m.b20 + 20000*m.b109*m.b21 + 25000*m.b109*m.b29 + 15000*m.b109*m.b30 + 17500*
                       m.b109*m.b31 + 15000*m.b109*m.b33 + 25000*m.b109*m.b34 + 20000*m.b109*m.b35 + 20000*m.b109*m.b43
                        + 12000*m.b109*m.b44 + 14000*m.b109*m.b45 + 12000*m.b109*m.b47 + 20000*m.b109*m.b48 + 16000*
                       m.b109*m.b49 + 25000*m.b109*m.b64 + 15000*m.b109*m.b65 + 17500*m.b109*m.b66 + 15000*m.b109*m.b68
                        + 25000*m.b109*m.b69 + 20000*m.b109*m.b70 + 40000*m.b109*m.b85 + 24000*m.b109*m.b86 + 28000*
                       m.b109*m.b87 + 24000*m.b109*m.b89 + 40000*m.b109*m.b90 + 32000*m.b109*m.b91 + 25000*m.b110*m.b8
                        + 25000*m.b110*m.b9 + 60000*m.b110*m.b10 + 30000*m.b110*m.b11 + 40000*m.b110*m.b13 + 50000*
                       m.b110*m.b14 + 12500*m.b110*m.b15 + 12500*m.b110*m.b16 + 30000*m.b110*m.b17 + 15000*m.b110*m.b18
                        + 20000*m.b110*m.b20 + 25000*m.b110*m.b21 + 12500*m.b110*m.b29 + 12500*m.b110*m.b30 + 30000*
                       m.b110*m.b31 + 15000*m.b110*m.b32 + 20000*m.b110*m.b34 + 25000*m.b110*m.b35 + 10000*m.b110*m.b43
                        + 10000*m.b110*m.b44 + 24000*m.b110*m.b45 + 12000*m.b110*m.b46 + 16000*m.b110*m.b48 + 20000*
                       m.b110*m.b49 + 12500*m.b110*m.b64 + 12500*m.b110*m.b65 + 30000*m.b110*m.b66 + 15000*m.b110*m.b67
                        + 20000*m.b110*m.b69 + 25000*m.b110*m.b70 + 20000*m.b110*m.b85 + 20000*m.b110*m.b86 + 48000*
                       m.b110*m.b87 + 24000*m.b110*m.b88 + 32000*m.b110*m.b90 + 40000*m.b110*m.b91 + 40000*m.b111*m.b8
                        + 50000*m.b111*m.b9 + 35000*m.b111*m.b10 + 50000*m.b111*m.b11 + 40000*m.b111*m.b12 + 35000*
                       m.b111*m.b14 + 20000*m.b111*m.b15 + 25000*m.b111*m.b16 + 17500*m.b111*m.b17 + 25000*m.b111*m.b18
                        + 20000*m.b111*m.b19 + 17500*m.b111*m.b21 + 20000*m.b111*m.b29 + 25000*m.b111*m.b30 + 17500*
                       m.b111*m.b31 + 25000*m.b111*m.b32 + 20000*m.b111*m.b33 + 17500*m.b111*m.b35 + 16000*m.b111*m.b43
                        + 20000*m.b111*m.b44 + 14000*m.b111*m.b45 + 20000*m.b111*m.b46 + 16000*m.b111*m.b47 + 14000*
                       m.b111*m.b49 + 20000*m.b111*m.b64 + 25000*m.b111*m.b65 + 17500*m.b111*m.b66 + 25000*m.b111*m.b67
                        + 20000*m.b111*m.b68 + 17500*m.b111*m.b70 + 32000*m.b111*m.b85 + 40000*m.b111*m.b86 + 28000*
                       m.b111*m.b87 + 40000*m.b111*m.b88 + 32000*m.b111*m.b89 + 28000*m.b111*m.b91 + 45000*m.b112*m.b8
                        + 35000*m.b112*m.b9 + 50000*m.b112*m.b10 + 40000*m.b112*m.b11 + 50000*m.b112*m.b12 + 35000*
                       m.b112*m.b13 + 22500*m.b112*m.b15 + 17500*m.b112*m.b16 + 25000*m.b112*m.b17 + 20000*m.b112*m.b18
                        + 25000*m.b112*m.b19 + 17500*m.b112*m.b20 + 22500*m.b112*m.b29 + 17500*m.b112*m.b30 + 25000*
                       m.b112*m.b31 + 20000*m.b112*m.b32 + 25000*m.b112*m.b33 + 17500*m.b112*m.b34 + 18000*m.b112*m.b43
                        + 14000*m.b112*m.b44 + 20000*m.b112*m.b45 + 16000*m.b112*m.b46 + 20000*m.b112*m.b47 + 14000*
                       m.b112*m.b48 + 22500*m.b112*m.b64 + 17500*m.b112*m.b65 + 25000*m.b112*m.b66 + 20000*m.b112*m.b67
                        + 25000*m.b112*m.b68 + 17500*m.b112*m.b69 + 36000*m.b112*m.b85 + 28000*m.b112*m.b86 + 40000*
                       m.b112*m.b87 + 32000*m.b112*m.b88 + 40000*m.b112*m.b89 + 28000*m.b112*m.b90 + 20000*m.b1 + 23000*
                       m.b2 + 75000*m.b3 + 60000*m.b4 + 35000*m.b5 + 50000*m.b6 + 65000*m.b7 + 35000*m.b8 + 131500*m.b9
                        + 37000*m.b10 + 19000*m.b11 + 76000*m.b12 + 46700*m.b13 + 157500*m.b14 + 65000*m.b15 + 39500*
                       m.b16 + 59500*m.b17 + 29870*m.b18 + 45600*m.b19 + 42000*m.b20 + 120500*m.b21 + 35000*m.b22 + 
                       37500*m.b23 + 51500*m.b24 + 30000*m.b25 + 70000*m.b26 + 59000*m.b27 + 66000*m.b28 + 29500*m.b29
                        + 85000*m.b30 + 34500*m.b31 + 44500*m.b32 + 50000*m.b33 + 74000*m.b34 + 145000*m.b35 + 35000*
                       m.b36 + 57500*m.b37 + 29500*m.b38 + 65000*m.b39 + 110000*m.b40 + 53200*m.b41 + 39500*m.b42 + 
                       115000*m.b43 + 35000*m.b44 + 37500*m.b45 + 55000*m.b46 + 47000*m.b47 + 28900*m.b48 + 89000*m.b49
                        + 124500*m.b50 + 59500*m.b51 + 38500*m.b52 + 12000*m.b53 + 50000*m.b54 + 55000*m.b55 + 25700*
                       m.b56 + 125000*m.b57 + 34500*m.b58 + 13500*m.b59 + 78900*m.b60 + 23100*m.b61 + 43600*m.b62 + 
                       62000*m.b63 + 74500*m.b64 + 39500*m.b65 + 128500*m.b66 + 35000*m.b67 + 60000*m.b68 + 69000*m.b69
                        + 50000*m.b70 + 50500*m.b71 + 150000*m.b72 + 59000*m.b73 + 39000*m.b74 + 73000*m.b75 + 63400*
                       m.b76 + 127000*m.b77 + 58000*m.b78 + 25500*m.b79 + 70000*m.b80 + 34200*m.b81 + 45000*m.b82 + 
                       147600*m.b83 + 40900*m.b84 + 15000*m.b85 + 135000*m.b86 + 37500*m.b87 + 45000*m.b88 + 120000*
                       m.b89 + 39000*m.b90 + 52500*m.b91 + 67500*m.b92 + 39500*m.b93 + 58500*m.b94 + 92000*m.b95 + 
                       152000*m.b96 + 49000*m.b97 + 60000*m.b98 + 84500*m.b99 + 28500*m.b100 + 32500*m.b101 + 65000*
                       m.b102 + 150000*m.b103 + 139000*m.b104 + 35000*m.b105 + 123900*m.b106 + 88500*m.b107 + 55000*
                       m.b108 + 60500*m.b109 + 59500*m.b110 + 82900*m.b111 + 38600*m.b112 + 705902.944601174*(m.b1**2 - 
                       m.b1) + 415881.032639247*(m.b2**2 - m.b2) + 524977.397785667*(m.b3**2 - m.b3) + 512783.70514881*(
                       m.b4**2 - m.b4) + 631162.14154222*(m.b5**2 - m.b5) + 629059.295550614*(m.b6**2 - m.b6) + 
                       561559.507202091*(m.b7**2 - m.b7) + 685505.333961416*(m.b8**2 - m.b8) + 334573.146246055*(m.b9**2
                        - m.b9) + 344206.071647484*(m.b10**2 - m.b10) + 397402.39799408*(m.b11**2 - m.b11) + 
                       708313.703698634*(m.b12**2 - m.b12) + 606996.684999986*(m.b13**2 - m.b13) + 527460.055203747*(
                       m.b14**2 - m.b14) + 1011705.56788405*(m.b15**2 - m.b15) + 534085.012720653*(m.b16**2 - m.b16) + 
                       655311.649439268*(m.b17**2 - m.b17) + 657203.77872449*(m.b18**2 - m.b18) + 900479.843940693*(
                       m.b19**2 - m.b19) + 859652.989371721*(m.b20**2 - m.b20) + 772531.070605885*(m.b21**2 - m.b21) + 
                       497749.317058326*(m.b22**2 - m.b22) + 256783.25724574*(m.b23**2 - m.b23) + 309066.023256157*(
                       m.b24**2 - m.b24) + 316194.841649415*(m.b25**2 - m.b25) + 477303.804782653*(m.b26**2 - m.b26) + 
                       441435.206865085*(m.b27**2 - m.b27) + 373946.684154734*(m.b28**2 - m.b28) + 469463.753139056*(
                       m.b29**2 - m.b29) + 160211.571189861*(m.b30**2 - m.b30) + 182391.391565111*(m.b31**2 - m.b31) + 
                       245165.54948422*(m.b32**2 - m.b32) + 479713.851621847*(m.b33**2 - m.b33) + 442295.401118108*(
                       m.b34**2 - m.b34) + 347735.922871726*(m.b35**2 - m.b35) + 801898.133224546*(m.b36**2 - m.b36) + 
                       467311.263162963*(m.b37**2 - m.b37) + 526287.089671592*(m.b38**2 - m.b38) + 564659.526505596*(
                       m.b39**2 - m.b39) + 775422.269917528*(m.b40**2 - m.b40) + 704766.557343071*(m.b41**2 - m.b41) + 
                       603125.889528588*(m.b42**2 - m.b42) + 706459.645525809*(m.b43**2 - m.b43) + 385146.405927484*(
                       m.b44**2 - m.b44) + 482956.357894554*(m.b45**2 - m.b45) + 454572.614717891*(m.b46**2 - m.b46) + 
                       541479.668126925*(m.b47**2 - m.b47) + 532365.847641863*(m.b48**2 - m.b48) + 524143.834428913*(
                       m.b49**2 - m.b49) + 1109623.55666124*(m.b50**2 - m.b50) + 615998.66083545*(m.b51**2 - m.b51) + 
                       705374.127424487*(m.b52**2 - m.b52) + 674378.02221914*(m.b53**2 - m.b53) + 887279.086089204*(
                       m.b54**2 - m.b54) + 870144.480663628*(m.b55**2 - m.b55) + 765460.574348266*(m.b56**2 - m.b56) + 
                       870591.672222441*(m.b57**2 - m.b57) + 498461.395078405*(m.b58**2 - m.b58) + 570741.465149574*(
                       m.b59**2 - m.b59) + 596561.298045667*(m.b60**2 - m.b60) + 684504.679003345*(m.b61**2 - m.b61) + 
                       693499.761660314*(m.b62**2 - m.b62) + 642656.385187071*(m.b63**2 - m.b63) + 941183.311897458*(
                       m.b64**2 - m.b64) + 616772.640488021*(m.b65**2 - m.b65) + 790307.074522828*(m.b66**2 - m.b66) + 
                       674162.57081092*(m.b67**2 - m.b67) + 790497.743049128*(m.b68**2 - m.b68) + 799576.36099281*(m.b69
                       **2 - m.b69) + 738789.088523984*(m.b70**2 - m.b70) + 465612.461232027*(m.b71**2 - m.b71) + 
                       245619.221126961*(m.b72**2 - m.b72) + 250684.668154274*(m.b73**2 - m.b73) + 271922.758265667*(
                       m.b74**2 - m.b74) + 479511.346797839*(m.b75**2 - m.b75) + 429196.284841946*(m.b76**2 - m.b76) + 
                       355541.924015815*(m.b77**2 - m.b77) + 745558.597943778*(m.b78**2 - m.b78) + 420685.863908505*(
                       m.b79**2 - m.b79) + 528590.22354777*(m.b80**2 - m.b80) + 486223.787699005*(m.b81**2 - m.b81) + 
                       613598.749677787*(m.b82**2 - m.b82) + 692736.354036967*(m.b83**2 - m.b83) + 555631.304059963*(
                       m.b84**2 - m.b84) + 450795.528428325*(m.b85**2 - m.b85) + 277834.223808146*(m.b86**2 - m.b86) + 
                       271526.515117964*(m.b87**2 - m.b87) + 282290.721486065*(m.b88**2 - m.b88) + 474728.439668797*(
                       m.b89**2 - m.b89) + 381283.865673189*(m.b90**2 - m.b90) + 324364.460708303*(m.b91**2 - m.b91) + 
                       708815.043215264*(m.b92**2 - m.b92) + 338204.467533672*(m.b93**2 - m.b93) + 416448.279513536*(
                       m.b94**2 - m.b94) + 459585.793402827*(m.b95**2 - m.b95) + 691904.737588996*(m.b96**2 - m.b96) + 
                       576775.487320642*(m.b97**2 - m.b97) + 491052.985263876*(m.b98**2 - m.b98) + 1019531.035443*(m.b99
                       **2 - m.b99) + 676038.431763055*(m.b100**2 - m.b100) + 800141.633081288*(m.b101**2 - m.b101) + 
                       772709.848079514*(m.b102**2 - m.b102) + 948047.405621052*(m.b103**2 - m.b103) + 944197.802643153*
                       (m.b104**2 - m.b104) + 803737.201477325*(m.b105**2 - m.b105) + 1014245.48026915*(m.b106**2 - 
                       m.b106) + 535393.883678675*(m.b107**2 - m.b107) + 573149.106537586*(m.b108**2 - m.b108) + 
                       643970.488722476*(m.b109**2 - m.b109) + 896488.907372663*(m.b110**2 - m.b110) + 858934.961881708*
                       (m.b111**2 - m.b111) + 688312.425676996*(m.b112**2 - m.b112), sense=minimize)

m.c2 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 == 1)

m.c3 = Constraint(expr=   m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 == 1)

m.c4 = Constraint(expr=   m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 == 1)

m.c5 = Constraint(expr=   m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 == 1)

m.c6 = Constraint(expr=   m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 == 1)

m.c7 = Constraint(expr=   m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 == 1)

m.c8 = Constraint(expr=   m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 == 1)

m.c9 = Constraint(expr=   m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 == 1)

m.c10 = Constraint(expr=   m.b57 + m.b58 + m.b59 + m.b60 + m.b61 + m.b62 + m.b63 == 1)

m.c11 = Constraint(expr=   m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 + m.b70 == 1)

m.c12 = Constraint(expr=   m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 == 1)

m.c13 = Constraint(expr=   m.b78 + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 + m.b84 == 1)

m.c14 = Constraint(expr=   m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 + m.b91 == 1)

m.c15 = Constraint(expr=   m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 == 1)

m.c16 = Constraint(expr=   m.b99 + m.b100 + m.b101 + m.b102 + m.b103 + m.b104 + m.b105 == 1)

m.c17 = Constraint(expr=   m.b106 + m.b107 + m.b108 + m.b109 + m.b110 + m.b111 + m.b112 == 1)

m.c18 = Constraint(expr=   70*m.b1 + 145*m.b8 + 125*m.b15 + 65*m.b22 + 120*m.b29 + 85*m.b36 + 40*m.b43 + 75*m.b50
                         + 60*m.b57 + 40*m.b64 + 105*m.b71 + 50*m.b78 + 60*m.b85 + 85*m.b92 + 50*m.b99 + 130*m.b106
                         <= 120)

m.c19 = Constraint(expr=   70*m.b2 + 145*m.b9 + 125*m.b16 + 65*m.b23 + 120*m.b30 + 85*m.b37 + 40*m.b44 + 75*m.b51
                         + 60*m.b58 + 40*m.b65 + 105*m.b72 + 50*m.b79 + 60*m.b86 + 85*m.b93 + 50*m.b100 + 130*m.b107
                         <= 270)

m.c20 = Constraint(expr=   70*m.b3 + 145*m.b10 + 125*m.b17 + 65*m.b24 + 120*m.b31 + 85*m.b38 + 40*m.b45 + 75*m.b52
                         + 60*m.b59 + 40*m.b66 + 105*m.b73 + 50*m.b80 + 60*m.b87 + 85*m.b94 + 50*m.b101 + 130*m.b108
                         <= 400)

m.c21 = Constraint(expr=   70*m.b4 + 145*m.b11 + 125*m.b18 + 65*m.b25 + 120*m.b32 + 85*m.b39 + 40*m.b46 + 75*m.b53
                         + 60*m.b60 + 40*m.b67 + 105*m.b74 + 50*m.b81 + 60*m.b88 + 85*m.b95 + 50*m.b102 + 130*m.b109
                         <= 180)

m.c22 = Constraint(expr=   70*m.b5 + 145*m.b12 + 125*m.b19 + 65*m.b26 + 120*m.b33 + 85*m.b40 + 40*m.b47 + 75*m.b54
                         + 60*m.b61 + 40*m.b68 + 105*m.b75 + 50*m.b82 + 60*m.b89 + 85*m.b96 + 50*m.b103 + 130*m.b110
                         <= 90)

m.c23 = Constraint(expr=   70*m.b6 + 145*m.b13 + 125*m.b20 + 65*m.b27 + 120*m.b34 + 85*m.b41 + 40*m.b48 + 75*m.b55
                         + 60*m.b62 + 40*m.b69 + 105*m.b76 + 50*m.b83 + 60*m.b90 + 85*m.b97 + 50*m.b104 + 130*m.b111
                         <= 115)

m.c24 = Constraint(expr=   70*m.b7 + 145*m.b14 + 125*m.b21 + 65*m.b28 + 120*m.b35 + 85*m.b42 + 40*m.b49 + 75*m.b56
                         + 60*m.b63 + 40*m.b70 + 105*m.b77 + 50*m.b84 + 60*m.b91 + 85*m.b98 + 50*m.b105 + 130*m.b112
                         <= 160)
