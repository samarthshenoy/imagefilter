

a= imread('abc.jpg');
 b=a;
subplot(2,2,1);
imshow(a);
title('original image');

 a(:,:,2)=0;
 a(:,:,3)=0;
 subplot(2,2,2);
 imshow(a);
 title('red image');
a=b;
 a(:,:,1)=0;
 a(:,:,3)=0;
 subplot(2,2,3);
 imshow(a);
 title('green image');

 a=b;
  a(:,:,1)=0;
 a(:,:,2)=0;
 subplot(2,2,4);
 imshow(a);
 title('blue image');


