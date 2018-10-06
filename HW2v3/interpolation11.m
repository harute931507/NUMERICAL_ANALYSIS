n1=11;
X=linspace(-5,5);
x = [-5:10/n1:5];
y = 1./(1+x.^2);
Y = polyval(polyfit(x,y,n1),X);
yy = spline(x,y,X);
plot(x,y,'ro',X,Y,'b-.',X,yy,'k.');
legend('original','Lagrange','spline','Location','best');