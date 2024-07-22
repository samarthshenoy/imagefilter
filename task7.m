simage=imread('acq.jpg');
binaryimage=im2bw(simage);
subplot(2,2,1);
imshow(simage);
t1=im2bw(simage,0.1);
t2=im2bw(simage,0.4);
t3=im2bw(simage,0.8);

subplot(2,2,2);
imshow(t1);
subplot(2,2,3);
imshow(t2);
subplot(2,2,4);
imshow(t3);
