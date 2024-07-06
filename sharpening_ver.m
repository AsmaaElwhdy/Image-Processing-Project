function [newImg] = sharpening_ver(oldImg)
mask = [0 1 0, 0 1 -0, 0 -1 0]; 
newImg = imfilter(oldImg,mask);


end