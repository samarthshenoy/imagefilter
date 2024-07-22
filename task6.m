clc
clear
rgbimage=imread('chhota.jpg');
csvFilePath='binary_image.csv';
csvwrite('binary_image.csv',rgbimage);
b=rgbimage;
subplot(3,1,1);
imshow(rgbimage);

title('original image');

%convert rgb to gray:
gimage=rgb2gray(rgbimage);
a(:,:,1)=0;
subplot(3,1,2);
imshow(gimage);
title(' gray scaled image');
rgbimage=b;
%conver rgb into binary:
binaryimage=im2bw(rgbimage);
a(:,:,1)=0;
subplot(3,1,3);

imshow(binaryimage);
title('binary iamge');


