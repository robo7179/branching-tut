clc;
clear all;
%q3 a)
degrees=[2 3 4 5];
err=zeros(1,4);
syms x;
f(x)=(1+x)^6;
ind=1;
%degree 2
poly2(x)=x^0;
p2=1;
h2(x)=(1+x)^6;
for i=1:2
    h2=diff(h2,x);
    p2=p2*i;
    poly2(x)=poly2(x) + h2(0)*(x^i)/p2;
end
disp(poly2(0.2));
%error of degree 2 filled
err(ind)=abs(poly2(0.2)-f(0.2));
ind=ind+1;

%degree 3
poly3(x)=x^0;
p3=1;
h3(x)=(1+x)^6;
for i=1:3
    h3=diff(h3,x);
    p3=p3*i;
    poly3(x)=poly3(x) + h3(0)*(x^i)/p3;
end
disp(poly3(0.2));
%error of degree 3 filled
err(ind)=abs(poly3(0.2)-f(0.2));
ind=ind+1;

%degree 4
poly4(x)=x^0;
p4=1;
h4(x)=(1+x)^6;
for i=1:4
    h4=diff(h4,x);
    p4=p4*i;
    poly4(x)=poly4(x) + h4(0)*(x^i)/p4;
end
disp(poly4(0.2));
%error of degree 4 filled
err(ind)=abs(poly4(0.2)-f(0.2));
ind=ind+1;

%degree 5
poly5(x)=x^0;
p5=1;
h5(x)=(1+x)^6;
for i=1:5
    h5=diff(h5,x);
    p5=p5*i;
    poly5(x)=poly5(x) + h5(0)*(x^i)/p5;
end
disp(poly5(0.2));
%error of degree 5 filled
err(ind)=abs(poly5(0.2)-f(0.2));
ind=ind+1;

%q3 b)plot error array filled above
figure;
title("Degree vs Error");
xlabel("degree");
ylabel("error");

bar(degrees,err);
figure;
title("Degree vs Error");
xlabel("degree");
ylabel("error");

plot(degrees,err);
%we can see as degree increases error decreases as the taylor
%polynomial closely fits the function f(x)


