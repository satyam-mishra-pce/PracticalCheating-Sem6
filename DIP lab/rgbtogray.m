% Read image
img = imread('image.jpg');
subplot(1,3,1); imshow(img); title('Original Image');

% Convert to grayscale
grayImg = rgb2gray(img)
subplot(1,3,2); imshow(grayImg); title('Grayscale Image');

% Convert to binary
binaryImg = imbinarize(grayImg);
subplot(1,3,3); imshow(binaryImg); title('Binary Image');
