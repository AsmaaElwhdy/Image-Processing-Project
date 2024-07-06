function [NI] = butter_worth(I,D0,index)
         [H W L]=size(I);
         filter=zeros(H,W,L);
         for j=1:H
             for k=1:W
                 dis=sqrt((j-(H/2)).^2 + (K-(W/2)).^2);
                 filter(j,k)=(1/(1+(D0/dis)^2));
                 if(dis <= D0)
                     filter(j,k)=1;
                 end
             end
         end
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         if(index==1)
             filter=filter+0;
         else
             filter=1-filter;
         end
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         fi=fft2(I);
         fi=fftshift(fi);
         reall=real(fi);
         imagin=imag(fi);
         nreall=filret.*reall;
         nimagin=filter.*imagin;
         NI=nreall(:,:) + i*nimagin(:,:);
         NI=fftshift(NI);
         NI=ifft2(NI);
         zz=mat2gray((abs(NI)));