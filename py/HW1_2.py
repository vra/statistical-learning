from scipy.optimize import fmin_cobyla

def objective(x):
	return 10 - x[0]**2 - x[1]**2

def constra1(x):
	return -x[0]**2 + x[1]

def constra2(x):
	return x[0]+x[1]

# when run this function, error happend: reache the most iterate time of cobyla method
fmin_cobyla(objective, [-1/2,1/2], [constra1, constra2], rhoend=1e-17)