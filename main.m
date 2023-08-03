clear
clc
% Constants
width = 1920;
height = 1080;

z = linspace(-16/9,16/9,width)' + 1i*linspace(-1,1,height);
output = zeros(width, height, 3);
p = 0 + .75i;
q = 0 - .75i;
u = -0.75 + 0i;
v = 0.75 + 0i;

for i = 1:width
    for j = 1:height
        output(i,j,:) = palette(imag( ...
            log((z(i,j) - p) / (z(i,j) - q)) * log((z(i,j) - u) / (z(i,j) - v))));
    end
end
imwrite(rot90(output), "test.png");
%image(rot90(output))