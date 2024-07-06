function [newImg] = sharpening(oldImg)
mask = [0 -1 0, -1 5 -1, 0 -1 0]; 
newImg = imfilter(oldImg,mask);


end