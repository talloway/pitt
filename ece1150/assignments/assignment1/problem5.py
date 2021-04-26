from scipy.stats import binom


n = 120
p = 0.10
r_values = [10, 20, 30, 40, 60, 120]


dist = [binom.pmf(r, n, p) for r in r_values ]
mean, var = binom.stats(n, p)
# printing the table
print("r\tp(r)")
for i in range(len(r_values)):
    print(str(r_values[i]) + "\t" + str(dist[i]))
# printing mean and variance
print("mean = "+str(mean))
print("variance = "+str(var))