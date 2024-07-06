function [img] = inverseFourierTransform(fourier)
    img = fftshift(fourier);
    img = ifft2(img);
    img = abs(img);
    img = log(img);
    img = mat2gray(img);
end

