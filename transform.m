function [o] = transform(z)
%TRANSFORM Summary of this function goes here
%   Detailed explanation goes here
p = 0 + .5i;
q = 0 - .5i;
u = -0.5 + 0i;
v = 0.5 + 0i;

o = log((z - u) ./ (z - p));% + log((z - q) ./ (z - v));
o = imag(o);
end

