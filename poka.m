function poka( TEMP,series_length,prev )
%wyswietla podglad czesci zrobionych zdjec
im1=imresize(TEMP(:,:,:,1),0.2);
im2=imresize(TEMP(:,:,:,round(series_length/2)),0.2);
im3=imresize(TEMP(:,:,:,end),0.2);

POS=get(gca,'Position');
% subplot('Position',[POS(1) POS(2)+2*size(im1,2) size(im1,1) size(im1,2)]);
% subimage(YUY2toRGB(im1));
% subplot('Position',[POS(1) POS(2)+size(im1,2) size(im2,1) size(im2,2)]);
% subimage(YUY2toRGB(im2));
% subplot('Position',[POS(1) POS(2) size(im3,1) size(im3,2)]);
% subimage(YUY2toRGB(im3));
subplot(311);
subimage(YUY2toRGB(im1));
subplot(312);
subimage(YUY2toRGB(im2));
subplot(313);
subimage(YUY2toRGB(im3));


end

