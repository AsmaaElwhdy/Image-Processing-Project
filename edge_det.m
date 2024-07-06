function [new_image] = edge_det(image)
mask=[-1 -1 -1 ;-1 8 -1 ; -1 -1 -1;];
new_image=imfilter(image,mask);

end

