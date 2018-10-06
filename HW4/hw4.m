h = 1/10^4;
N = 0:h:10;
L = length(N);

%Start euler
y1 = ones(2,L);
y1(:,1) = [1;0];
for n = 1:L
    y1(:,n+1) = [1,-h;h,1] * y1(:,n); 
end
E = sum( y1(:,n) .^ 2);

%Start Runge-Kutta
y2 = ones(2,L);
k1 = ones(2,L);
k2 = ones(2,L);
k3 = ones(2,L);
k4 = ones(2,L);
y2(:,1) = [1;0];
for i = 1:length(N)
    k1(:,i) = [0,-1 ; 1,0] * y2(:,i);
    k2(:,i) = k1(:,i) + h/2 .* k1(:,i);
    k3(:,i) = k1(:,i) + h/2 .* k2(:,i);
    k4(:,i) = k1(:,i) + h .* k3(:,i);
    y2(:,i+1) = y2(:,i) + h/6 .* ( k1(:,i) + k2(:,i) ./ 2 + k3(:,i) ./ 2 + k4(:,i) );
end
R = sum( y2(:,i) .^ 2);

fprintf('By Euler method %d\n',E);
fprintf('By Runge-Kutta method %d\n',R);