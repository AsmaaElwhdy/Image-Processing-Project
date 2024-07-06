function [ new_image ] = FourierTransformv2( old_image )
[h,w,l] = size(old_image);
new_image = zeros(h,w);
fi = fft2(old_image);
fi = fftshift(fi);
new_image = mat2gray(log(1+abs(fi)));
end