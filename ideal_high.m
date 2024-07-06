function [NI] = ideal_high(I,D0)
         [H W L]=size(I);
         filter=zeros(H,W,L);
         for j=1:H
             for k=1:W
                 dis=sqrt((j-(H/2)).^2 + (K-(W/2)).^2);
                 if(dis <= D0)
                     filter(j,k)=1;
                 end
             end
             
         end
        filter=1-filter;
         fi=fft2(I);
         fi=fftshift(fi);
         reall=real(fi);
         imagin=imag(fi);
         nreall=filter.*reall;
         nimagin=filter.*imagin;
         NI=nreall(:,:) + I*nimagin(:,:);
         NI=fftshift(NI);
         NI=ifft2(NI);
         zz=mat2gray((abs(NI)));
end