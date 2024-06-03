% Read image
img = imread('image.jpg');
subplot(2,2,1); imshow(img); title('Original Image');

% Complement of colorful image
compColorImg = imcomplement(img);
subplot(2,2,2); imshow(compColorImg); title('Complement of Colorful Image');

% Complement of gray image
grayImg = rgb2gray(img);
compGrayImg = imcomplement(grayImg);
subplot(2,2,3); imshow(compGrayImg); title('Complement of Gray Image');
