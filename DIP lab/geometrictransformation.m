% Read image
img = imread('image.jpg');
subplot(2,2,1); imshow(img); title('Original Image');

% Scaling
scaledImg = imresize(img, 0.5); % scale by 50%
subplot(2,2,2); imshow(scaledImg); title('Scaled Image');

% Translation
T = [1 0 0; 0 1 0; 50 50 1]; % translate 50 pixels in both directions
tform = affine2d(T);
translatedImg = imwarp(img, tform);
subplot(2,2,3); imshow(translatedImg); title('Translated Image');

% Rotation
rotatedImg = imrotate(img, 45); % rotate 45 degrees counterclockwise
subplot(2,2,4); imshow(rotatedImg); title('Rotated Image');
