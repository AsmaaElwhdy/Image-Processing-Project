function [new_image] =edge_left_dia(image)
mask=[0 0 1 ;0 0 0 ; -1 0 0;];
new_image=imfilter(image,mask);

end