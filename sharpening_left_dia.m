function [newImg] = sharpening_left_dia(oldImg)
mask = [0 0 -1, 0 1 0,  0 0]; 
newImg = imfilter(oldImg,mask);


end