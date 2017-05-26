function btn_exposuremode(src)
        if strcmp(src.ExposureMode,'auto')
            set(src,'ExposureMode','manual');
            set(findobj('Tag','exposuremode'),'String','manual');
        else
            set(src,'ExposureMode','auto');
            set(findobj('Tag','exposuremode'),'String','auto');
            set(findobj('Tag','exposure'),'Value',src.Exposure);
        end
        
    end