%% Comments
%
% Do not add unecessary field into fig. because the for-loop checks for 
% the number of field in fig structure
% 
% Based on the number of subplot in each figure, the array of the 
% xlabel,ylabel,title,xlim,ylim have to change accordingly
%
% [-inf,inf] will allow the plot to be set to default scale
%


%% Roll
fig.roll.flag = 1;
fig.roll.figname = 'Roll AP';
fig.roll.subplot_config = [3 1];

title = {'','',''}';
xlabel = {'Time [s]','Time [s]','Time [s]'}';
ylabel = {'Roll Angle [deg]','Roll Rate [deg/s]','DA [deg]'}';
xlim = [-inf,inf;-inf,inf;-inf,inf];
ylim = [-inf,inf;-inf,inf;-inf,inf];
linkX = [1;1;1];
fig.roll.subplot = table(title,xlabel,ylabel,xlim,ylim,linkX);
clear xlabel ylabel title xlim ylim linkX

%% Pitch
fig.pitch.flag = 1;
fig.pitch.figname = 'Pitch AP';
fig.pitch.subplot_config = [3 1];

title = {'','',''}';
xlabel = {'Time [s]','Time [s]','Time [s]'}';
ylabel = {'Pitch Angle [deg]','Pitch Rate [deg/s]','DE [deg]'}';
xlim = [-inf,inf;-inf,inf;-inf,inf];
ylim = [-inf,inf;-inf,inf;-inf,inf];
linkX = [1;1;1];
fig.pitch.subplot = table(title,xlabel,ylabel,xlim,ylim,linkX);
clear xlabel ylabel title xlim ylim linkX

%% Overview
fig.overview.flag = 1;
fig.overview.figname = 'Overview';
fig.overview.subplot_config = [3 3];

title = {'','',''...
    ,'','',''...
    ,'','',''}';
xlabel = {'Time [s]','Time [s]','Time [s]'...
    ,'Time [s]','Time [s]','Time [s]'...
    ,'Time [s]','Time [s]','Time [s]'}';
ylabel = {'Roll Angle [deg]','Pitch Angle [deg]','Yaw Angle [deg]'...
    'Roll Rate [deg/s]','Pitch Rate [deg/s]','Yaw Rate [deg/s]'...
    ,'DA [deg]','DE [deg]','DR [deg]'}';
xlim = [-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf];
ylim = [-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf...
    ;-inf,inf;-inf,inf;-inf,inf];
linkX = [1;1;1;
         1;1;1;
         1;1;1];
fig.overview.subplot = table(title,xlabel,ylabel,xlim,ylim,linkX);
clear xlabel ylabel title xlim ylim linkX

%% North - East
fig.latlon.flag = 1;
fig.latlon.figname = 'North-East';
fig.latlon.subplot_config = [1 1];

title = {''}';
xlabel = {'Latitude'}';
ylabel = {'Longitude'}';
xlim = [-inf,inf];
ylim = [-inf,inf];
linkX = [0]; % Purposely did not link this x-axis because its not time
fig.latlon.subplot = table(title,xlabel,ylabel,xlim,ylim,linkX);
clear xlabel ylabel title xlim ylim linkX