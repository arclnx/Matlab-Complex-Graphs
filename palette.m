function [color] = palette(t)
%UNTITLED Summary of this function goes here
a = [0.1 0.5 0.5];
b = [0.5 0.5 0.5];
c = [0.5 0.5 0.5];
d = [0.5 0.25 0.2];
color = a + b .* cos(2*pi.*(c.*t + d));
end