image=imread('ex1.jpg');
imshow(image);
mcimage=strel('disk',20);
background =imopen(image,mcimage);
subplot(2,1,1);
imshow(image);
subplot(2,1,2);
imshow(background);