function sld_contrast(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'Contras',get(findobj('Tag','contrast'),'Value'));
src_prop_set.Contrast=get(findobj('Tag','contrast'),'Value')
apply_cam_props(src,src_prop_set,vid);
    end
