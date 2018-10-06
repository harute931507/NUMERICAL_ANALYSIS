for time = 1:6
h=10/10^time;
x1=0;
x2=0;
x3=0;

%Start midpoint
for i = 0:h:1-h
    x1=x1+4/(1+(i+h/2)^2);
end
x1=x1*h;
fprintf('when h=1/%d \tuse midpoint:%f\n',10^time/10,x1);


%Start trapezoid
for i = 0:h:1-h
    x2=x2+4/(1+i^2)+4/(1+(i+h)^2);
end
x2=x2*h/2;
fprintf('when h=1/%d \tuse trapezoid:%f\n',10^time/10,x2);


%Start Simpson;
A=0:h:1;
A=4./(1+A.^2);
x3=h/3*(A(1)+A(end)+4*sum(A(2:2:end-1))+2*sum(A(3:2:end-1)));

fprintf('when h=1/%d \tuse Simpson:%f\n',10^time/10,x3);
end