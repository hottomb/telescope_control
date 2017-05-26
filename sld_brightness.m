function sld_brightness(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'Brightness',get(findobj('Tag','brightness'),'Value'));
src_prop_set.Brightness=get(findobj('Tag','brightness'),'Value')
apply_cam_props(src,src_prop_set,vid);
    end