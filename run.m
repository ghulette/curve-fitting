clear all;
M=9
N=10
testN=5000
x = 0:(1/N):1;
y = sin(2*pi()*x);
t = y + sqrt(0.1) * randn(size(x));
ws = wstar(x,t,M);
test = sort(rand(testN,1));
preds = pred(test,ws);
figure
hold
plot(x,y,'g');
plot(x,t,'b+');
plot(test,preds,'r');
