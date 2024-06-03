% Read image
img = imread('image.jpg');
subplot(1,3,1); imshow(img); title('Original Image');

% Flip left to right
flippedLR = fliplr(img);
subplot(1,3,2); imshow(flippedLR); title('Flipped Left to Right');

% Simple flip (upside down)
flippedUD = flipud(img);
subplot(1,3,3); imshow(flippedUD); title('Flipped Upside Down');
