a=1.0/0.0, b=1.0/a, sin(a), sin(b), log(a), log(b)
c=0.0/0.0, d=1.0/c, sin(d)
%%
format long e
logspace(-301, -324, 24)'

%
%%
format short

delta1 = 1e20/1e16*0.815
1e20 + delta1 -1e20
1e20 + 1.01*delta1 -1e20

delta2 = 2e-16*1.1
2+delta2 -2
2+1.01*delta2 - 2


delta3 = 1e-20/1e16*0.75
1e-20 + delta3 -1e-20
1e-20 + 1.01*delta3 -1e-20

%%
format long
s1=0;
s2=0;
for i = 1:1000000.0
    s1 = s1 + 1/i;
    s2 = s2 + 1/(1000001-i);
end
s1
s2

% s2 is bigger than s1 because s2 start with small values but s1 start with big values and then rounds down for smaller values.

%%
%figure
hold on
x = 0.995:1e-4:1.005;
fx1 = (x-1).^6;
fx2 = 1-6*x+15*x.^2-20*x.^3+15*x.^4-6*x.^5+x.^6;
plot(x,fx1, 'red')
plot(x,fx2, 'blue')
%%
hold on
x = 0.995:1e-4:1.005;
fx1 = (x+1).^6;
fx2 = 1+6*x+15*x.^2+20*x.^3+15*x.^4+6*x.^5+x.^6;
plot(x,fx1, 'red')
plot(x,fx2, 'blue')
