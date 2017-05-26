function sld_whitebalance(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'WhiteBalance',get(findobj('Tag','whitebalance'),'Value'));

src_prop_set.WhiteBalance=get(findobj('Tag','whitebalance'),'Value')
apply_cam_props(src,src_prop_set,vid);
    end

