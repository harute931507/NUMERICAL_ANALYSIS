syms epsilon1 epsilon2 e1 e2;
epsilon1 = 1;
e1 = 0;
epsilon2 = 1;
e2 = 0;
while  1+epsilon1 > 1
    epsilon1 = epsilon1/2;
    e1 = e1 -1;
end
fprintf('epsilon1 is 2^%d\n',e1)

while epsilon2 > 0
    epsilon2 = epsilon2/2;
    e2 = e2 - 1;
end
fprintf('epsilon2 is 2^%d\n',e2)

