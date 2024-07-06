function [niosedImg] = uniformNoise(img,a,b)
    [H, W, L]=size(img);
    img = double(img);
    num_of_pixel= round((1/(b-a))*W*H);
    
    for l=1:L
        for i=1:255      
            for x=1:num_of_pixel
                row = ceil(rand (1, 1)*H);
                column = ceil (rand (1, 1)*W);
                img(row, column, l) = img(row, column, l)+i;
            end
        end
    end
    niosedImg = uint8(img);
    niosedImg = contrastStretching(niosedImg,0,255);
end