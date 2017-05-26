
function sld_gamma(src,src_prop_set,vid)
global src_prop_set;
%         set(src,'Gamma',get(findobj('Tag','gamma'),'Value'));
src_prop_set.Gamma=get(findobj('Tag','gamma'),'Value')
apply_cam_props(src,src_prop_set,vid);
    end
