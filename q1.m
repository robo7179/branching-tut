clc;
clear all;
%q1 a)
X=[0,2.5,5];
Y=[exp(0),exp(2.5),exp(5)];
syms x;
n=3;
poly(x)=x^0-1;
for i=1:n
    term(x)=x^0;
    for j=1:n
        if j~=i
            term(x)=term(x)*(x-X(j));
            term(x)=term(x)/(X(i)-X(j));
        end
    end
    poly(x)=poly(x)+term(x)*Y(i);
end
simplify(poly);

disp(poly(2));
disp(poly(4));

%q1 b)
X1=0:1:5;
hold on;
fplot(poly,[0,5]);
hold on;
plot(X1,poly(X1),Marker="o");
%xlim([0,7]);
%ylim([0,170]);
title("interpolate vs original points");

