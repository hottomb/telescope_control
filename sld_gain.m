function sld_gain(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'Gain',get(findobj('Tag','gain'),'Value'));
src_prop_set.Gain=get(findobj('Tag','gain'),'Value')
apply_cam_props(src,src_prop_set,vid);
end
    

