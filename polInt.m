%Programa que calcula el polinomio interpolador con comentarios

n=9;    %  número de puntos 
syms x;  % define la variable simbólica para crear el polinomio
xn=[-5 -3 -2 -1 0 1 2 3 4 5];  % abscisas de los puntos a interpolar
yn=1./(1.+xn.^2);  % ordenadas de estas abscisas
plot(xn,yn,'*r')  %  dibuja los puntos a interpolar
hold on
p=0;  % inicializa el polinomio de interpolación que empezará a calcular
for i=1:n
    L=1;
    for j=1:n
        if j~=i
           L=L*(x-xn(j))/(xn(i)-xn(j));
        end
    end
    p=p+L*yn(i);  %  forma de Lagrange
end
p=simplify(p) 
     pretty(p)   %  muestra el polinomio en pantalla
x=-5:0.01:5;
f=1./(1+x.^2);
plot(x,f);  %  dibuja la función a interpolar