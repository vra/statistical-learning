clear
clc

max_size = 7;

mu = 2.3;
sigma = 4;

m = zeros(1,max_size);
v = zeros(1,max_size);

for i = 1: max_size
    data=normrnd(mu, sigma, [100* 10^(i -1) 1]);
    m(i) = mean(data);
    v(i) = var(data);
    
end

figure;

subplot(1,2,1);
scatter(1:max_size, m); hold on;
plot([1, max_size], [mu,mu]);
xlabel('N');
ylabel('\mu');

subplot(1,2,2);
scatter(1:max_size, v); hold on;
plot([1, max_size], [sigma^2, sigma^2]);
xlabel('N');
ylabel('\sigma');
legend('figure4: N=7');