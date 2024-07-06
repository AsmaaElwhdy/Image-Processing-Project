function [] = histogramm(img)
    [H, W, L] = size(img);
    
    for x = 1:L
        histArray = zeros(256,1);
        image = img(:,:,x);
        for i=1:H
            for j=1:W
                histArray(image(i,j)+1) =  histArray(image(i,j)+1)+1;
            end
        end
        bar(histArray);
    end
end
