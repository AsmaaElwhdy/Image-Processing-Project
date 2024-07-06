function [ new_image ] = ideal_filter( old_image )
low_or_high  = str2double(inputdlg('Choose 1 for highpass filter and 0 for lowpass'));
D0 = str2double(inputdlg('Enter value of D0!'));
[h,w,l] = size(old_image);
new_filter = zeros(h,w,l);
if l==1
    for u= 1 : h 
        for v = 1 : w
            D = sqrt((u-(h/2))^2 + (v-(w/2))^2);
            if D <= D0 
                new_filter(u,v) = 1;
            end
        end
    end
    
    if low_or_high == 1
        new_filter = 1 -new_filter;
    end
    fi = fft2(old_image);
    fi = fftshift(fi);
    
    %to extract real nad imagin numbers
    ireal = real(fi);
    iimag = imag(fi);
    nreal = new_filter.*ireal;
    nimag = new_filter.*iimag;
    new_image = nreal(:,:) + 1i*nimag(:,:);
    new_image = fftshift(new_image);
    new_image = ifft2(new_image);
    new_image = mat2gray(abs(new_image));
else
    for u= 1 : h
        for v = 1 : w
            for k=1:3
                D = sqrt((u-(h/2))^2 + (v-(w/2))^2);
                if D <= D0
                    new_filter(u,v,k) = 1;
                else
                    new_filter(u,v,k) = 0;
                end
            end
        end
    end
    
    
    
    if low_or_high == 1
        new_filter = 1 -new_filter;
    end
    
    fi = fft2(double(old_image));
    fi = fftshift(fi);
    
    %to extract real nad imagin numbers
    ireal = real(fi);
    iimag = imag(fi);
    nreal = new_filter.*ireal;
    nimag = new_filter.*iimag;
    new_image= nreal(:,:,1:3) + 1i.*nimag(:,:,1:3);
    new_image = fftshift(new_image);
    new_image = ifft2(new_image);
    new_image = mat2gray(log(1+abs(new_image)));
    
end
end