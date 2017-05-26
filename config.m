if ~exist('series_length','var')
    global series_length;
    series_length=6; %ilosc zdjec w jednej serii
end
% 'YUY2_640x480'
% 'FrameRate','30'

% 'YUY2_1280x1024'
% 'FrameRate','7.5'
vid = videoinput('winvideo',1,'YUY2_1280x1024');
src = getselectedsource(vid);

global src_prop_set; %zbior wlasciwosci kamerki
src_prop_set=struct('Gain',src.Gain,...
    'Gamma', src.Gamma,...
    'Exposure', src.Exposure,...
    'ExposureMode', src.ExposureMode,...
    'Brightness', src.Brightness,...
    'Saturation', src.Saturation,...
    'Contrast', src.Contrast,...
    'WhiteBalance', src.WhiteBalance);

p=propinfo(src,'Gain');
Gain_constrains=p.ConstraintValue;
p=propinfo(src,'Gamma');
Gamma_constrains=p.ConstraintValue;
p=propinfo(src,'Exposure');
Exposure_constrains=p.ConstraintValue;
p=propinfo(src,'Brightness');
Brightness_constrains=p.ConstraintValue;
p=propinfo(src,'Saturation');
Saturation_constrains=p.ConstraintValue;
p=propinfo(src,'Contrast');
Contrast_constrains=p.ConstraintValue;
p=propinfo(src,'WhiteBalance');
WhiteBalance_constrains=p.ConstraintValue;
% 
% info = imaqhwinfo('winvideo')
% info.DeviceInfo.SupportedFormats

set(src, 'FrameRate','7.5');
set(vid, 'FramesPerTrigger',series_length);



