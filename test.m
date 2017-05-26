clear all;close all; clc;

global TasksExecuted_SeriesLag; 
global series_max; 
global series_length;
TasksExecuted_SeriesLag=0; %do liczenia ilosci zdjec w serii
series_max=1;    %ilosc serii (po 'series_length' zdjec) w jednej paczce
series_length=5; %ilosc zdjec w jednej serii

exposures=100; %ilosc powtorzen serii zdjec z licznika timera

f=200;%Hz
fs=10^5;%Hz
duration=0.1;%s
timeline1=linspace(0,1,fs.*0.2);%w sekundach
timeline2=linspace(0,1,fs.*0.2);%w sekundach
deeq1=sin(2.*pi.*f.*timeline1);
deeq2=chirp(timeline2,100,timeline2(end),500);
p1=audioplayer(deeq1,fs);
chirp=audioplayer(deeq2,fs);


try
control;%zawiera config
catch
error('camera error, check connection');
end

info1=propinfo(vid);
xy=info1.VideoResolution.DefaultValue;%do okreslania wielkosci tablicy TEMP
TEMP=NaN(xy(2),xy(1),3,series_length,series_max);%akumulacja kilku serii zdjec po 10 sztuk

t = timer('StartDelay', 0, 'Period', 10, 'TasksToExecute', exposures, ...
          'ExecutionMode', 'fixedSpacing', 'BusyMode', 'queue');

%funkcja pic robi zdjecia i zapisuje serie do pliku
t.TimerFcn = {@pic, TEMP,vid,src,t,prev,p1,chirp};
start(t);









