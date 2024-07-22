% Read the original RGB image
rgbImage = imread('chhota.jpg');

% Display the original image
subplot(3, 1, 1);
imshow(rgbImage);
title('Original Image');

% Convert RGB to grayscale
grayImage = rgb2gray(rgbImage);

% Display the grayscale image
subplot(3, 1, 2);
imshow(grayImage);
title('Grayscale Image');

% Convert grayscale to binary
binaryImage = im2bw(grayImage);

% Display the binary image
subplot(3, 1, 3);
imshow(binaryImage);
title('Binary Image');

% Save the binary image to a separate folder
binaryOutputFolder = 'BinaryImages2';
if ~exist(binaryOutputFolder, 'dir')
    mkdir(binaryOutputFolder);
end
[~, baseFileName, ~] = fileparts('chhota.jpg');
binaryImageFilename = fullfile(binaryOutputFolder, [baseFileName '_binary.png']);
binaryImage = uint8(binaryImage * 255);
imwrite(binaryImage, binaryImageFilename);
binaryVector = binaryImage(:);
csvwrite(fullfile(binaryOutputFolder, [baseFileName '_binary_vector.csv']), binaryVector);
foregroundPixels = sum(binaryVector == 1);
backgroundPixels = sum(binaryVector == 0);
disp('Pixel Counts:');
disp(['Foreground Pixels: ' num2str(foregroundPixels)]);
disp(['Background Pixels: ' num2str(backgroundPixels)]);
subsampleSize = 10;  % Adjust this as needed
numSubsamplesX = floor(size(binaryImage, 1) / subsampleSize);
numSubsamplesY = floor(size(binaryImage, 2) / subsampleSize);
subsampledMatrices = cell(numSubsamplesX, numSubsamplesY);
for i = 1:numSubsamplesX
    for j = 1:numSubsamplesY
        startX = (i - 1) * subsampleSize + 1;
        endX = min(i * subsampleSize, size(binaryImage, 1));       
        startY = (j - 1) * subsampleSize + 1;
        endY = min(j * subsampleSize, size(binaryImage, 2));       
        subsampledMatrix = binaryImage(startX:endX, startY:endY);
        subsampleCount = sum(subsampledMatrix(:) == 1);
        csvwrite(fullfile(binaryOutputFolder, ['subsample_' num2str(i) '_' num2str(j) '_count.csv']), subsampleCount);
    end
end


