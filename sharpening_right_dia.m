function [newImg] = sharpening_right_dia(oldImg)
mask = [-1 0 0, 0 1 0, 0 0 1]; 
newImg = imfilter(oldImg,mask);


end