% Read image
img = imread('image.jpg');
subplot(1,2,1); imshow(img); title('Original Image');

% Write image
imwrite(img, 'output.jpg');
outputImg = imread('output.jpg');
subplot(1,2,2); imshow(outputImg); title('Written Image');
