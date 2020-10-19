using JuMP
ORIG = ["Seattle", "San-Diego"]
DEST = ["New-York", "Chicago", "Topeka"]
supply = [350, 600]
demand = [325, 300, 275]
cost = [
	2.5   1.7   1.8;
	2.5   1.8   1.4
]
F = 90
cost_f = [F * cost[i,j] / 1000 for i in 1:length(ORIG), j in 1:length(DEST)]
model = Model()
@variable(model, trans[1:length(ORIG), 1:length(DEST)] >= 0)
@objective(model, Min, sum(cost_f[i, j] * trans[i, j] for i in 1:length(ORIG), j in 1:length(DEST)))
@constraint(model, [i in 1:length(ORIG)],
	sum(trans[i, j] for j in 1:length(DEST)) <= supply[i])
@constraint(model, [j in 1:length(DEST)],
	sum(trans[i, j] for i in 1:length(ORIG)) >= demand[j])