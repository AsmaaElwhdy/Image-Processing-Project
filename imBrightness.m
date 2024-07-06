function [brightness] = imBrightness(img, op, offset)
[H W] = size(img);
brightness =double(zeros(H,W));


    for i=1:H
        for j=1:W
            if(op == 1)
                brightness(i,j) = img(i,j) * offset;
            end
            if(op == 2)
                brightness(i,j) = img(i,j) + offset;
            end
            if(op == 3)
                brightness(i,j) = img(i,j) / offset;
            end
            if(op == 4)
                brightness(i,j) = img(i,j) - offset;
            end
        end
    end
    
    brightness=uint8(brightness);
end

