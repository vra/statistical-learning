from scipy.optimize import minimize

# target function
fun = lambda x: 10 - x[0]**2 - x[1]**2

# constraints , NOTE: must change to the format of '>='
cons =(
	{'type':'ineq', 'fun': lambda x: -x[0]**2 + x[1] },
	{'type':'eq', 'fun': lambda x: x[0]+x[1]})

# In practise, this parameter is not used
#bnds = ((0, None), (0, None))

# the initial point is choosed randomly
res = minimize(fun, (-7,4), method = 'SLSQP',  constraints = cons)

print(res)