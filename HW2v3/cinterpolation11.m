n1=11;
X=linspace(-5,5);
x = [-5:10/n1:5];
y = 1./(1+x.^2);
xc = 1/2*[(5-(-5))*cos((2*(1:n1+1)-1)*pi/(2*n1+2))-5+5];
yc = 1./(1+xc.^2);
Y = polyval(polyfit(xc,yc,n1),X);
yy = spline(xc,yc,X);
plot(x,y,'ro',X,Y,'b-.',X,yy,'k.');
legend('original','Lagrange','spline','Location','best');
