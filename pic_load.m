% clear all;
%picture converter to .png

idx=find(LOP>0);
for dummy=1:length(idx)
    
    i=idx(dummy);
    pic=load(filenames(i).name);
    
    if exist('T','var') clear T; end
    T=NaN(size(pic.TEMP,1),size(pic.TEMP,2),3);
for s=1:size(pic.TEMP,4)
    for n=1:3
        
       T(:,:,n)=flipud(pic.TEMP(:,:,n,s));%?????
%      T(:,:,n)=flipud(pic.TEMP(:,:,n,1,s));%?????
    end
    imwrite(YUY2toRGB(T),strcat(filenames(i).name(1:end-4),'_',num2str(s),'.png'),'png'); 
end
end











