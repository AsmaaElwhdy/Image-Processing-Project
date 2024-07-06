function [newImg] = sharpening_horizan(oldImg)
mask = [0 0 0, 1 1 -1, 0 0 0]; 
newImg = imfilter(oldImg,mask);


end