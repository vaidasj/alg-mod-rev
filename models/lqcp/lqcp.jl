using JuMP, Gurobi

function test_cont5(n)
    @show n
    m  = n
    n1 = n-1
    m1 = m-1
    dx = 1/n
    T  = 1.58
    dt = T/m
    h2 = dx^2
    a  = 0.001
    yt = [0.5*(1 - (j*dx)^2) for j=0:n]
    
    mod = JuMP.direct_model(Gurobi.Optimizer())
    # Using automatic MOI mode is significantly slower
    # mod = Model(Gurobi.Optimizer) 

    set_optimizer_attribute(mod, "Presolve", 0)
    set_optimizer_attribute(mod, "TimeLimit", 0)

    @variable(mod,  0 <= y[0:m,0:n] <= 1)
    @variable(mod, -1 <= u[1:m] <= 1)

    @objective(mod, Min, 
        1/4*dx*(      (y[m,0] - yt[0+1])^2  +
                2*sum((y[m,j] - yt[j+1])^2 for j=1:n1) +
                      (y[m,n] - yt[n+1])^2) +
        1/4*a*dt*(2*sum(u[i]^2 for i=1:m1) + u[m]^2)
    )
    
    # PDE
    for i = 0:m1, j = 1:n1
        @constraint(mod, h2*(y[i+1,j] - y[i,j]) == 0.5*dt*(y[i,j-1] - 2*y[i,j] + y[i,j+1] + y[i+1,j-1] - 2*y[i+1,j] + y[i+1,j+1]) )
    end

    # IC
    for j = 0:n
        @constraint(mod, y[0,j] == 0)
    end

    # BC
    for i = 1:m
        @constraint(mod, y[i,  2] - 4*y[i, 1] + 3*y[i,0] == 0)
        @constraint(mod, y[i,n-2] - 4*y[i,n1] + 3*y[i,n] == (2*dx)*(u[i] - y[i,n]))
    end

    optimize!(mod)
end

test_cont5(parse(Int,ARGS[1]))
