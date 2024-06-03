% Read image
img = imread('image.jpg');
subplot(1,2,1); imshow(img); title('Original Image');

% Convert to grayscale
grayImg = rgb2gray(img);

% Edge detection
edges = edge(grayImg, 'Canny');
subplot(1,2,2); imshow(edges); title('Edge Detection');
