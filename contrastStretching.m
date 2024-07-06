function [contrastImg] = contrastStretching(img, newMin, newMax)
    oldMin = min(min(img));
    oldMax = max(max(img));

    [H, W, L] = size(img);
    contrastImg = double(zeros(H,W));

    for i=1:H
        for j=1:W
            value = img(i,j);
            contrastImg(i,j) = ((value-oldMin)/(oldMax-oldMin))*(newMax-newMin)+newMin;
        end
    end
    contrastImg = uint8(contrastImg);
end

