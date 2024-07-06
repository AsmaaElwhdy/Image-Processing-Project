function [niosedImg] = gaussianNoise(img,v,m)
    [H, W, L]=size (img);
    img = double(img);

    for l=1:L
        for i=1:255
            num_of_pixel=(((exp(-((i-m)^2/(2*v*v))))/(sqrt (2*3.14*v*v)))*W*H);
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