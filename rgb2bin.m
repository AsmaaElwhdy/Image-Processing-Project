 function [binary] = rgb2bin(img,op,threshold)
[H W L]=size(img);

binary=im2double(zeros(H,W));

for i=1:H
    for j=1:W
        if op==1
        binary(i,j)=(img(i,j,1)+img(i,j,2)+img(i,j,3))/3;
        end
        if op==2
            binary(i,j)=(img(i,j,1)*0.3+img(i,j,2)* 0.2 +img(i,j,3)* 0.5);
        end
        if op==3
            binary(i,j)=img(i,j,1);
        end
        if op==4
            binary(i,j)=img(i,j,2);
        end
         if op==5
            binary(i,j)=img(i,j,3);
         end
          if(binary(i,j)<threshold)
                binary(i,j)=0;
            else
                binary(i,j)=1;
          end
        
    end
end
binary=logical(binary);


 
end
