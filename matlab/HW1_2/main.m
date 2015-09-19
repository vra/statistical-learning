clear
clc

% initial point
X0 = [-1/2, 1/2];

% linear inequity contraint parameter of A * x < b
A = [];
b = [];

%linear equity constraint parameters of Aeq * x = beq
Aeq = [1 1];
beq = 0;

% low boundary and up boundary
lb = [];
ub = [];

fun = @f;
non = @nonlcon;
x = fmincon(fun, X0, A, b, Aeq, beq, lb, ub, non);

fprintf('The result is (%f, %f)\n', x(1),x(2));

