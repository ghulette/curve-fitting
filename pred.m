function [ preds ] = pred(x, w)
m = length(w)-1;
preds = zeros(size(x));
for i = 1:length(x)
    xrep = ones(size(w)) * x(i);
    powers = (0:m)';
    a = (xrep .^ powers)';
    preds(i) =  a * w;
end
