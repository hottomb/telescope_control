function [TEMP] = pic (obj, event,TEMP,vid,src,t,prev,p1,chirp)
%function to drive picture execution

global src_prop_set;
global TasksExecuted_SeriesLag; 
global series_max;
global series_length;



    if ~isrunning(vid)  play(p1); start(vid);  end 
    [frames, timeStamp] = getdata(vid);
    size(frames) 
    TEMP(:,:,:,:,t.TasksExecuted-TasksExecuted_SeriesLag)=frames;
    stop(vid);%by mozna bylo zmienic ustawienia kamerki
    if ~(t.TasksExecuted-TasksExecuted_SeriesLag<series_max)
       TasksExecuted_SeriesLag=t.TasksExecuted; %global var, init. as 0
       tic;
        save(datestr(now, 30),'TEMP')
       toc;
       apply_cam_props(src,src_prop_set,vid);
       play(chirp);
%        figure(2);imshow(YUY2toRGB(imresize(TEMP(:,:,:,1,1),0.2)));
%        poka(TEMP,series_length,prev)%#################################
    end % licznik przepelnienia akumulatora zdjec i zapis do pliku

end