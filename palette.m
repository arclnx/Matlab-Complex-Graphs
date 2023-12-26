function [color] = palette(t)
%UNTITLED Summary of this function goes here
a = [0.7,0.3,0.8];
b = [0.42,0.64,0.03];
c = [0.31,0.14,0.32];
d = [0.6,0.88,0.37];
color = a + b .* cos(2*pi.*(c.*t + d));
end