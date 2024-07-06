function [niosedImg] = saltAndPepper(img, Ps,Pp)
    [H, W, L]=size (img);
    niosedImg = img;
    num_of_salt=round (Ps*W*H);
    num_of_pepr=round (Pp*W*H);

    for l=1:L
        for i=1:num_of_salt
            row=ceil(rand (1, 1) *H);
            column=ceil(rand (1, 1) *W);
            niosedImg(row, column, l)=255;
        end

        for i=1:num_of_pepr
            row=ceil(rand (1, 1) *H);
            column=ceil(rand (1, 1) *W);
            niosedImg(row, column, l)=0;
        end
    end
end

