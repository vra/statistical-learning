
y =zeros(1,30);

for i = 2: 31
    y(i-1) = pi^(i/2) /(2^i * gamma(i/2));
end

plot(1:30, y);