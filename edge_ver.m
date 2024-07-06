function [new_image] =edge_ver(image)
mask=[0 1 0 ;0 0 0 ; 0 -1 0;];
new_image=imfilter(image,mask);

end