function apply_cam_props(src,src_prop_set,vid)


    if ~isrunning(vid)
        set(src,'Gain',src_prop_set.Gain);
        set(src,'Gamma',src_prop_set.Gamma);
        set(src,'Exposure',src_prop_set.Exposure);
        set(src,'Brightness',src_prop_set.Brightness);
        set(src,'Saturation',src_prop_set.Saturation);
        set(src,'Contrast',src_prop_set.Contrast);
        set(src,'WhiteBalance',src_prop_set.WhiteBalance);
    end
end