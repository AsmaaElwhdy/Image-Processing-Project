function [new_image] =edge_right_dia(image)
mask=[1 0 0 ;0 0 0 ; 0 0 -1;];
new_image=imfilter(image,mask);

end