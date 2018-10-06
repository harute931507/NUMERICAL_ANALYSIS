n2=21;
X=linspace(-5,5);
x = [-5:10/n2:5];
y = 1./(1+x.^2);
Y = polyval(polyfit(x,y,n2),X);
yy = spline(x,y,X);
plot(x,y,'ro',X,Y,'b-.',X,yy,'k.');
legend('original','Lagrange','spline','Location','best');