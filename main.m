clear
clc
% Constants
width = 1920;
height = 1080;

z = linspace(-16/9,16/9,width)' + 1i*linspace(-1,1,height);

tData = transform(z);

output = reshape(palette(tData(:)), [width height 3]);

imwrite(rot90(output), "test.png");
imshow(rot90(output))