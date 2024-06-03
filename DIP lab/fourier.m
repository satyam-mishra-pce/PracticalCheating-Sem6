% Read image
img = imread('image.jpg');
subplot(1,2,1); imshow(img); title('Original Image');

% Fourier transform
F = fft2(img);
F = fftshift(F); % Shift zero frequency components to the center of the spectrum
F = abs(F); % Get the magnitude
F = log(F+1); % Use log scale for better visualization
F = mat2gray(F); % Scale the image between 0 and 1
subplot(1,2,2); imshow(F); title('Fourier Transform');
