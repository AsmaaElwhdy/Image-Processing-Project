function [gray] = rgbtogray(img,op)
[H W L]=size(img);
gray=zeros(H,W);

gray=double(gray);

for i=1:H
    for j=1:W
        if op==1
        gray(i,j)=(img(i,j,1)+img(i,j,2)+img(i,j,3))/3;
        end
        if op==2
            gray(i,j)=(img(i,j,1)*0.3+img(i,j,2)* 0.2 +img(i,j,3)* 0.5);
        end
        if op==3
            gray(i,j)=img(i,j,1);
        end
        if op==4
            gray(i,j)=img(i,j,2);
        end
         if op==5
            gray(i,j)=img(i,j,3);
         end

    end
end
    gray=uint8(gray);
    

end

