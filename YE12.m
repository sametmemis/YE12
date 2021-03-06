%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Citation:
% Enginoğlu, S., Memiş, S., 2018. A Review on Some Soft Decision-Making Methods,  
% International Conference on Mathematical Studies and Applications, M. Akgül, 
% İ. Yılmaz, and A. İpek, Eds. Karaman, Turkey: Karamanoğlu Mehmetbey
% University, 2018, pp. 437-442.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abbreviation of Journal Title: ICMSA2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% https://www.researchgate.net/publication/329972166
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% https://www.researchgate.net/profile/Serdar_Enginoglu2
% https://www.researchgate.net/profile/Samet_Memis2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Demo: 
% clc;
% clear all;
% % a is an fpfs-matrix
% % s is a score matrix
% % dm is a decision matrix
% % op is a optimum alternatives' matrix 
% a=rand(5,4);
% [s,dm,op]=YE12(a);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [s,dm,op]=YE12(a)
%% Step 1
[m,n]=size(a);
%% Step 2
s=zeros(m-1,1);
    for i=2:m
        for j=1:n
            s(i-1,1)=s(i-1,1)+a(1,j)*a(i,j);
        end
         s(i-1,1)=s(i-1,1)/sum(a(1,:));
    end
%% Step 3
    for i=1:m-1
        if max(s)~=0
            dm(i,1)=s(i,1)/max(s);
        else
            dm(i,1)=1;
        end
    end
count=1;
    for i=1:m-1        
        if(dm(i,1)==max(dm))
            op(count)=i;
            count=count+1;
        end
    end
end