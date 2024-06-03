% Read image
img = imread('image.jpg');
subplot(2,2,1); imshow(img); title('Original Image');
subplot(2,2,2); imhist(img); title('Histogram');

% Histogram equalisation
eqImg = histeq(img);
subplot(2,2,3); imshow(eqImg); title('Equalised Image');
subplot(2,2,4); imhist(eqImg); title('Equalised Histogram');
