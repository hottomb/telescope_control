load('20150322T151107.mat');
for i=1:size(TEMP,4)
A{i}=YUY2toRGB(TEMP(:,:,:,i));

end
A={'20150322T151107_1.png','20150322T151107_2.PNG','20150322T151107_3.PNG','20150322T151107_4.PNG','20150322T151107_5.PNG'};
expTimes = [0.1, 0.1000, 0.1, 0.1, 0.1];
 
hdr = makehdr(A, 'RelativeExposure', expTimes ./ expTimes(1));

rgb = tonemap(hdr);
figure; imshow(rgb)
