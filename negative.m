function [negative] = negative(img)

[H, W] = size(img);
img = im2double(img);

negative = im2double(zeros(H,W));


    for i=1:H
        for j=1:W
            negative(i,j)= max(max(img)) - img(i,j);
        end
    end
    
    negative = im2uint8(negative);
    
end
