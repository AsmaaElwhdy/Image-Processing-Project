function [fourier] = fourierTransform(img)
    fourier = fft2(img);
    fourier = fftshift(fourier);
    fourier = abs(fourier);
    fourier = log(1+fourier);
    fourier = mat2gray(fourier);
end

