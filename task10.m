vimages=imread('20images/a1.jpeg');
subplot(3,2,1);
imshow(vimages);
title('original iamge');
grayimage=rgb2gray(vimages);
blurredimage=imgaussfilt(grayimage,1);
edges=edge(blurredimage,'canny');
edges1=edge(blurredimage,'sobel');
edges2=edge(blurredimage,'prewitt');
edges3=edge(blurredimage,'roberts');
subplot(3,2,2);
imshow(grayimage);
title('gray scale');
subplot(3,2,3);
imshow(edges);
title('canny edge detectio');
subplot(3,2,4);
imshow(edges1);
title('soble edge detection');
subplot(3,2,5);
imshow(edges2);
title('prewitt edge detection');
subplot(3,2,6);
imshow(edges3);
title('roberts edge detection');






