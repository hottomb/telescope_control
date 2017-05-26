function sld_exposure(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'Exposure',get(findobj('Tag','exposure'),'Value'));
src_prop_set.Exposure=get(findobj('Tag','exposure'),'Value')
apply_cam_props(src,src_prop_set,vid);
    end