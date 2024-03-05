clc;
clear all;
%q2 a)
X=[1 3 5];
Y=[0 log(3) log(5)];
n=size(X,2);
A=zeros(n);

for i=1:n
    A(i,1)=Y(i);
end

for i=2:n
    for j=1:n-i+1
        diff = A(j,i-1)-A(j+1,i-1);
        A(j,i)=diff/(X(j)-X(j+i-1));
    end
end

syms x;
poly(x)=x^0-1;
term(x)=x^0;
for i=1:n
    poly(x)=poly(x) + A(i,1)*term(x);
    term(x)=term(x)*(x-X(i));
end
disp("f(2.5) for 2a)")
disp(poly(2.5));
err=abs(poly(2.5)-log(2.5));
disp("error for 2a)")
disp(err);

%q2 b)
X1=[1 2 3 4 5];
Y1=[0 log(2) log(3) log(4) log(5)];
n1=size(X1,2);
A1=zeros(n1);

for i=1:n
    A1(i,1)=Y1(i);
end

for i=2:n
    for j=1:n-i+1
        diff1 = A1(j,i-1)-A1(j+1,i-1);
        A1(j,i)=diff1/(X1(j)-X1(j+i-1));
    end
end

poly1(x)=x^0-1;
term1(x)=x^0;
for i=1:n
    poly1(x)=poly1(x) + A1(i,1)*term1(x);
    term1(x)=term1(x)*(x-X1(i));
end
disp("f(2.5) for 2b)")
disp(poly1(2.5));
err1=abs(poly1(2.5)-log(2.5));
disp("error  for 2b)")
disp(err1);
%case 2 has lesser error as we have used more node points

