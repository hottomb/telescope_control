function sld_saturation(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'Saturation',get(findobj('Tag','saturation'),'Value'));
src_prop_set.Saturation=get(findobj('Tag','saturation'),'Value')
apply_cam_props(src,src_prop_set,vid);
    end
