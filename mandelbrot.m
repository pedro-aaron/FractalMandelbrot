iteraciones=20;

%numero de puntos por graficar
    m=800;

% límites de la gráficación
  x_max =   -0.75;
  x_min = - 1.5;
  y_max =   0.5;
  y_min = - 0.5;

% se crean la matriz de puntos por graficar  
x=linspace(x_min,x_max,m);
y=linspace(y_min,y_max,m);
[X,Y]=meshgrid(x,y);

%se crea las variables complejas
Z=zeros(m);
C=X+i*Y;

% se realiza Z = Z^2 + C
for k=1:iteraciones;
    Z=Z.^2+C;
end

% Funcion de escape, usada para colorear
W=exp(-abs(Z));

%graficación
figure;
colormap copper(256);
pcolor(W);
shading flat;
axis('square','equal','off');