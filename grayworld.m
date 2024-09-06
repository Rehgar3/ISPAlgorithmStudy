clc
clear all

I=imread('./307267.jpg');
y=GrayWorld(I);
figure(1);imshow(I);
figure(2);imshow(y);
function y=GrayWorld(Image)
r=Image(:,:,1);
g=Image(:,:,2);
b=Image(:,:,3);
avgR = mean(mean(r));
avgG = mean(mean(g));
avgB = mean(mean(b));
avgRGB = [avgR avgG avgB];
grayValue = (avgR + avgG + avgB)/3;
scaleValue = grayValue./avgRGB;
newI(:,:,1) = scaleValue(1) * r;
newI(:,:,2) = scaleValue(2) * g;
newI(:,:,3) = scaleValue(3) * b;
y=newI;
end