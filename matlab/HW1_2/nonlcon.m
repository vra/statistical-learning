%% 
function [c, ceq] = nonlcon(x)
    % c stands for nonlinear inequalities
    c = x(1)^2 - x(2);
    
    % ceq stands for nonliear equantities
    ceq = [];
end
